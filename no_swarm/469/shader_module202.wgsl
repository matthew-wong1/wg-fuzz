struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15>;

var<private> global1: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_2, 15>();
    let var_0 = -1723f;
    global0 = array<Struct_2, 15>();
    var var_1 = vec4<bool>(true, global1.b.x, !select(all(vec4<bool>(global1.c.x, global1.b.x, global1.c.x, global1.b.x)) & select(global1.b.x, global1.c.x, false), false, !all(global1.c)), any(!(!vec3<bool>(true, global1.c.x, true))));
    var_1 = vec4<bool>(global1.b.x, var_1.x, false, false);
    return Struct_1(~u_input.a, select(!select(!vec3<bool>(global1.c.x, false, true), !vec3<bool>(global1.c.x, false, false), var_1.x), vec3<bool>(var_1.x, !(6892i >= u_input.b.x), all(vec2<bool>(true, global1.b.x))), global1.b.x), vec3<bool>(_wgslsmith_f_op_f32(-var_0) < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0))), global1.b.x, u_input.b.x == 0i));
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    global1 = func_2();
    global0 = array<Struct_2, 15>();
    var var_0 = false;
    var var_1 = Struct_2(false, func_2());
    var_1 = Struct_2(any(vec3<bool>(true && global1.c.x, true, all(!var_1.b.b.xz))), func_2());
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = 13541i;
    var var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-2678f)), 130f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1628f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-301f + -773f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -573f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-726f, 221f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(969f)) + _wgslsmith_f_op_f32(-1559f + -500f)))));
    var var_2 = Struct_1(23846u, !(!arg_0.b.c), func_2().c);
    var var_3 = reverseBits(~(((arg_0.b.a ^ 66358u) << (func_2().a % 32u)) ^ _wgslsmith_sub_u32(_wgslsmith_div_u32(54614u, 9380u), u_input.a ^ arg_0.b.a)));
    var var_4 = func_2();
    return func_2();
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, (41749u & global1.a) << (firstTrailingBit(38276u) % 32u), func_2().a, 32344u) | vec4<u32>(41073u, ~_wgslsmith_add_u32(32814u, u_input.a), 4294967295u, _wgslsmith_sub_u32(4294967295u, 20562u)), ~vec4<u32>(_wgslsmith_mod_u32(5629u, _wgslsmith_mult_u32(arg_0.a, arg_0.a)), 30136u, _wgslsmith_clamp_u32(arg_0.a, 29110u, 78251u) >> (_wgslsmith_add_u32(1u, 15685u) % 32u), arg_0.a)), 15u)];
    global1 = Struct_1(~var_0.b.a ^ arg_0.a, vec3<bool>(arg_0.b.x, global1.b.x, true), vec3<bool>(!var_0.a, arg_0.b.x, !func_3(Struct_1(4294967295u, arg_0.c, global1.c)).b.x));
    var var_1 = vec4<i32>(max(~u_input.b.x, 0i & _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 1i), vec2<i32>(-50921i, -65042i))), _wgslsmith_dot_vec3_i32(u_input.b, reverseBits(vec3<i32>(-2147483647i, ~35080i, ~u_input.b.x))), _wgslsmith_dot_vec2_i32(select(~vec2<i32>(0i, u_input.b.x), -_wgslsmith_clamp_vec2_i32(u_input.b.zz, u_input.b.xz, u_input.b.zz), !(!arg_0.c.x)), select(vec2<i32>(-3321i, firstTrailingBit(-2147483647i)), u_input.b.xy, var_0.b.c.xy)), 1i);
    var var_2 = vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(-16897i, u_input.b.x, 1i), vec3<i32>(17471i, u_input.b.x, -11458i)), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(var_1.zxw, var_1.xxw), -var_1.wyw)), vec3<i32>(-_wgslsmith_mod_i32(-2147483647i, 1i), 60007i, _wgslsmith_add_i32(-25781i << (global1.a % 32u), -var_1.x))), -40999i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -max(vec4<i32>(-19118i, var_1.x, var_1.x, var_1.x), vec4<i32>(1i, 46018i, u_input.b.x, var_1.x)), vec4<i32>(1i, -_wgslsmith_mod_i32(-1i, -6130i), _wgslsmith_div_i32(max(var_1.x, 2147483647i), -var_1.x), ~reverseBits(40445i))), -2147483647i);
    var var_3 = Struct_1(~(~1u), vec3<bool>(true, global1.c.x, !(var_0.b.a < 4294967295u) & false), func_4(Struct_2(true, Struct_1(~38797u, func_2().c, func_3(var_0.b).b)), Struct_1(_wgslsmith_div_u32(~0u, func_4(Struct_2(global1.b.x, var_0.b), Struct_1(var_0.b.a, global1.c, global1.c), global1.a, vec2<u32>(0u, 28208u)).a), func_2().b, var_0.b.b), _wgslsmith_mult_u32(~1u ^ (u_input.a ^ 54609u), ~(~arg_0.a)), ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.b.a, 4294967295u), vec2<u32>(var_0.b.a, 4294967295u)))).b);
    return arg_0;
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: f32, arg_3: bool) -> vec3<bool> {
    var var_0 = vec4<i32>(-24596i, 1i, 1i, u_input.b.x);
    let var_1 = func_5(func_4(Struct_2(true, func_2()), func_3(Struct_1(arg_1.b.a, vec3<bool>(true, false, true), global1.c)), 38193u, _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.b.a, 36789u), vec2<u32>(u_input.a, 10051u), vec2<u32>(global1.a, arg_1.b.a)), ~(vec2<u32>(1u, 1u) << (vec2<u32>(0u, global1.a) % vec2<u32>(32u))))));
    let var_2 = vec4<i32>(59599i, u_input.b.x, ~u_input.b.x, var_0.x);
    let var_3 = 2160u < func_5(func_5(func_2())).a;
    var var_4 = -1i;
    return select(!global1.b, vec3<bool>(func_5(var_1).c.x, true, !(true & var_3)), global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global1.a, func_1(4294967295u | u_input.a, global0[_wgslsmith_index_u32(1u, 15u)], _wgslsmith_f_op_f32(654f - _wgslsmith_f_op_f32(select(-911f, -1723f, global1.c.x))), global1.b.x), vec3<bool>(func_2().c.x, !(!(!global1.c.x)), true));
    let var_1 = vec3<bool>(true, true, func_5(Struct_1(23295u, var_0.b, global1.b)).b.x);
    global1 = var_0;
    let var_2 = var_0.b.x;
    var var_3 = select(select(select(vec4<bool>(true, true, false, !var_2), vec4<bool>(var_1.x, global1.b.x, !var_0.b.x, true), true), select(!select(vec4<bool>(var_2, false, true, false), vec4<bool>(global1.c.x, var_1.x, var_2, false), vec4<bool>(var_0.c.x, var_0.b.x, global1.c.x, false)), select(!vec4<bool>(true, false, false, var_2), !vec4<bool>(var_2, false, var_2, var_1.x), global1.b.x), select(select(vec4<bool>(true, var_1.x, false, true), vec4<bool>(false, false, true, var_0.c.x), var_1.x), !vec4<bool>(var_0.b.x, var_1.x, false, false), var_1.x)), global1.b.x), select(vec4<bool>(true, all(vec2<bool>(true, global1.c.x)), !any(vec3<bool>(true, true, var_1.x)), all(select(vec4<bool>(global1.c.x, var_0.c.x, true, false), vec4<bool>(false, false, var_2, false), vec4<bool>(var_2, global1.c.x, var_0.c.x, true)))), vec4<bool>(true, global1.b.x, (var_2 || true) | all(vec4<bool>(false, true, global1.b.x, var_1.x)), false | !var_0.b.x), vec4<bool>(all(vec4<bool>(global1.b.x, var_1.x, true, true)), true, true, (var_0.c.x & false) & var_2)), true);
    global1 = Struct_1(~var_0.a, func_2().b, vec3<bool>(select(!(var_1.x & false), !(!var_0.b.x), true), func_2().b.x, global1.c.x));
    global0 = array<Struct_2, 15>();
    global1 = Struct_1(~var_0.a, var_1, vec3<bool>(false, var_0.c.x, true));
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(44334u) & var_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-960f, 222f, -714f, -651f) + vec4<f32>(-641f, -229f, 1022f, -1281f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(933f, 422f, 675f, 1000f), vec4<f32>(528f, 151f, 277f, 1088f), vec4<bool>(var_1.x, false, var_3.x, true))), select(vec4<bool>(var_0.b.x, true, true, false), vec4<bool>(var_2, global1.b.x, global1.b.x, var_1.x), vec4<bool>(false, true, true, global1.b.x)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-651f, 1190f, 874f, -903f), vec4<f32>(-418f, 1308f, 365f, 1772f), true)) - _wgslsmith_div_vec4_f32(vec4<f32>(475f, 245f, 548f, 349f), vec4<f32>(1000f, 630f, -1487f, -958f))))));
}

