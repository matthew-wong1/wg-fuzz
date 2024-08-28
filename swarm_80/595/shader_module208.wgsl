struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: Struct_2,
    d: vec2<f32>,
    e: bool,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(795f, vec2<bool>(true, true), vec4<bool>(true, false, true, false)), Struct_1(-324f, vec2<bool>(true, true), vec4<bool>(true, true, true, false)), Struct_1(-107f, vec2<bool>(false, false), vec4<bool>(true, true, true, false)), Struct_1(-754f, vec2<bool>(false, false), vec4<bool>(false, false, true, false)), Struct_1(-1119f, vec2<bool>(true, false), vec4<bool>(false, true, false, true)), Struct_1(-880f, vec2<bool>(false, false), vec4<bool>(true, true, true, true)), Struct_1(-1325f, vec2<bool>(true, true), vec4<bool>(false, true, false, true)), Struct_1(-296f, vec2<bool>(false, true), vec4<bool>(true, true, false, false)), Struct_1(-878f, vec2<bool>(false, true), vec4<bool>(true, false, true, false)), Struct_1(1557f, vec2<bool>(true, false), vec4<bool>(false, false, false, true)), Struct_1(1662f, vec2<bool>(false, true), vec4<bool>(false, false, false, true)), Struct_1(244f, vec2<bool>(true, true), vec4<bool>(false, false, false, false)), Struct_1(-265f, vec2<bool>(true, false), vec4<bool>(true, true, false, true)));

var<private> global1: array<vec4<bool>, 19> = array<vec4<bool>, 19>(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true));

var<private> global2: vec2<bool>;

var<private> global3: vec4<i32>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    let var_0 = Struct_4(select(~4294967295u, 3020u, false & (global2.x | all(vec2<bool>(false, true)))), _wgslsmith_sub_u32(4294967295u, select(_wgslsmith_clamp_u32(1u, 0u, _wgslsmith_sub_u32(4294967295u, 1142u)), 45681u, true)), Struct_2(vec2<u32>(~1u, _wgslsmith_div_u32(40827u, 36903u))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-855f, _wgslsmith_f_op_f32(sign(-646f)))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(trunc(-100f)), _wgslsmith_f_op_f32(-621f - 1512f))))), -u_input.a.x > -52674i);
    let var_1 = _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(var_0.b, 52576u, 49845u), ~(var_0.c.a.x >> (62641u % 32u)));
    var var_2 = _wgslsmith_add_vec2_u32(~var_0.c.a, var_0.c.a);
    global0 = array<Struct_1, 13>();
    var var_3 = Struct_3(global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, min(var_2.x, var_0.a), _wgslsmith_mod_u32(var_2.x, var_1), 4605u), abs(vec4<u32>(0u, 4294967295u, 39608u, 0u)) | select(vec4<u32>(0u, 19028u, 0u, var_0.a), vec4<u32>(4294967295u, var_2.x, 75508u, var_2.x), global1[_wgslsmith_index_u32(3200u, 19u)]))), 13u)]);
    return true;
}

fn func_2(arg_0: bool, arg_1: vec2<i32>) -> Struct_4 {
    let var_0 = Struct_2(vec2<u32>(1u, 1u));
    let var_1 = 1037f;
    global3 = select(vec4<i32>(global3.x, global3.x, -1i, arg_1.x), _wgslsmith_sub_vec4_i32(-u_input.a, ~u_input.a << (_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a.x, var_0.a.x, 0u, var_0.a.x), countOneBits(vec4<u32>(var_0.a.x, var_0.a.x, 79816u, var_0.a.x))) % vec4<u32>(32u))), false);
    global2 = vec2<bool>(any(select(vec4<bool>(!arg_0, global2.x, !arg_0, func_3()), vec4<bool>(arg_0, arg_0, arg_0 == global2.x, arg_1.x != 13362i), select(select(global1[_wgslsmith_index_u32(53721u, 19u)], global1[_wgslsmith_index_u32(4294967295u, 19u)], arg_0), vec4<bool>(false, arg_0, global2.x, arg_0), false))), !arg_0);
    let var_2 = vec4<u32>(_wgslsmith_mult_u32(var_0.a.x, countOneBits(var_0.a.x) & var_0.a.x), ~var_0.a.x, _wgslsmith_clamp_u32(~4294967295u, var_0.a.x << ((var_0.a.x | 4294967295u) % 32u), 48406u), ~_wgslsmith_sub_u32(4294967295u, abs(1u))) >> (~abs(vec4<u32>(4294967295u, _wgslsmith_mod_u32(30277u, var_0.a.x), _wgslsmith_div_u32(0u, var_0.a.x), ~var_0.a.x)) % vec4<u32>(32u));
    return Struct_4(_wgslsmith_clamp_u32(~abs(~1u), ~_wgslsmith_mult_u32(~0u, var_0.a.x & 44274u), ~var_0.a.x), var_0.a.x, var_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-217f, -810f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1179f, -959f) * vec2<f32>(var_1, 855f))))), arg_0);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_3) -> Struct_5 {
    let var_0 = !all(vec4<bool>(any(select(arg_2.a.c.ywx, arg_2.a.c.yzw, arg_2.a.c.yzw)), all(select(vec2<bool>(arg_0.e, false), arg_2.a.b, vec2<bool>(true, arg_0.e))), arg_0.e, false));
    let var_1 = Struct_1(func_2(false, -global3.xx).d.x, select(select(arg_2.a.c.yw, vec2<bool>(var_0, true), vec2<bool>(true, var_0)), vec2<bool>(true, false), select(arg_0.e, all(arg_2.a.c.yzw), false) | global2.x), vec4<bool>(any(select(vec3<bool>(true, true, var_0), arg_2.a.c.wxx, arg_2.a.c.wwx)), arg_2.a.c.x, global2.x, !var_0));
    var var_2 = countOneBits(_wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(46603u, arg_0.b, arg_1.a.x, arg_1.a.x), vec4<u32>(6u, 4294967295u, arg_0.b, arg_0.b)), abs(vec4<u32>(1u, arg_1.a.x, 0u, arg_1.a.x) | vec4<u32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x))) & reverseBits(vec4<u32>(~arg_1.a.x, abs(1u), 9780u, 9516u)));
    global1 = array<vec4<bool>, 19>();
    return Struct_5(any(!select(vec2<bool>(true, false), !vec2<bool>(true, global2.x), vec2<bool>(true, global2.x))), func_2(true, global3.yy | -(~u_input.a.xy)));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_3, arg_2: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.b.d.x, _wgslsmith_f_op_f32(arg_2 - arg_1.a.a)))) + vec2<f32>(534f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.d.x) - _wgslsmith_f_op_f32(f32(-1f) * -321f)))));
    let var_1 = Struct_1(arg_2, !(!vec2<bool>(true, global2.x)), select(vec4<bool>(global2.x, any(!global1[_wgslsmith_index_u32(arg_0.b.c.a.x, 19u)]), arg_0.b.e, true), vec4<bool>(true, !(arg_0.b.b < 4294967295u), any(arg_1.a.c), any(arg_1.a.c)), arg_1.a.b.x));
    var var_2 = true;
    let var_3 = vec2<bool>(true, !var_1.c.x);
    let var_4 = 0i;
    return firstTrailingBit(global3.x);
}

fn func_1() -> Struct_2 {
    global1 = array<vec4<bool>, 19>();
    global1 = array<vec4<bool>, 19>();
    let var_0 = firstLeadingBit(u_input.a.x) >= (func_5(func_4(func_2(global2.x, vec2<i32>(1i, u_input.a.x)), func_2(global2.x, u_input.a.wy).c, Struct_3(Struct_1(-271f, vec2<bool>(global2.x, global2.x), global1[_wgslsmith_index_u32(93920u, 19u)]))), Struct_3(Struct_1(577f, vec2<bool>(global2.x, global2.x), vec4<bool>(false, false, false, global2.x))), -627f) ^ global3.x);
    let var_1 = global0[_wgslsmith_index_u32(1u, 13u)];
    var var_2 = 70880u;
    return Struct_2(~(~vec2<u32>(max(91580u, 26782u), 235u)));
}

fn func_6(arg_0: Struct_2, arg_1: bool) -> Struct_2 {
    global1 = array<vec4<bool>, 19>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(sign(1f)), vec2<bool>(global2.x, false), !(!select(select(vec4<bool>(arg_1, true, global2.x, false), global1[_wgslsmith_index_u32(11674u, 19u)], arg_1), select(global1[_wgslsmith_index_u32(arg_0.a.x, 19u)], global1[_wgslsmith_index_u32(arg_0.a.x, 19u)], false), global3.x == -2147483647i)));
    var var_1 = u_input.a.yzw;
    var_0 = Struct_1(_wgslsmith_f_op_f32(min(func_4(func_2(false, vec2<i32>(62784i, global3.x)), func_2(true, -var_1.yy).c, Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.a.x, 19967u), 13u)])).b.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -832f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * var_0.a) + _wgslsmith_f_op_f32(var_0.a - -1000f))))), var_0.b, !(!vec4<bool>(global2.x & true, !var_0.c.x, true || var_0.b.x, false == var_0.b.x)));
    var var_2 = func_4(func_2(true, _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, _wgslsmith_mult_i32(1i, -1i)), vec2<i32>(1i, global3.x ^ 55107i))), Struct_2(arg_0.a), Struct_3(global0[_wgslsmith_index_u32(~arg_0.a.x, 13u)]));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(603f, -1001f, -1853f) + vec3<f32>(963f, 1132f, 273f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -769f, -862f) + vec3<f32>(-773f, -1811f, -151f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(591f, -536f, 695f)))))))));
    var var_1 = func_6(func_1(), global2.x | global2.x);
    var var_2 = ~(~func_6(Struct_2(var_1.a | vec2<u32>(var_1.a.x, var_1.a.x)), all(select(global1[_wgslsmith_index_u32(var_1.a.x, 19u)], vec4<bool>(false, false, true, global2.x), vec4<bool>(false, global2.x, global2.x, false)))).a.x);
    var_2 = _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(var_1.a.x >> (var_1.a.x % 32u), 1u ^ var_1.a.x), abs(reverseBits(1u))), abs(vec2<u32>(var_1.a.x, 28105u) >> (var_1.a % vec2<u32>(32u)))), 67970u);
    let var_3 = ~(~func_6(Struct_2(_wgslsmith_mult_vec2_u32(var_1.a, var_1.a)), !(global2.x && false)).a.x);
    global3 = u_input.a;
    var var_4 = func_4(func_4(func_2(global2.x, vec2<i32>(-1i, global3.x << (33728u % 32u))), Struct_2(var_1.a), Struct_3(Struct_1(_wgslsmith_f_op_f32(var_0.x - 1758f), select(vec2<bool>(false, global2.x), vec2<bool>(true, true), global2.x), select(vec4<bool>(global2.x, global2.x, true, true), vec4<bool>(global2.x, true, global2.x, global2.x), true)))).b, Struct_2(~vec2<u32>(~var_3, var_1.a.x)), Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(928f)) + var_0.x), !select(vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, false), true), vec4<bool>(true, global2.x, all(vec2<bool>(global2.x, false)), !global2.x)))).b;
    var var_5 = !select(vec3<bool>(all(!vec2<bool>(false, global2.x)), var_4.e, global2.x), select(vec3<bool>(global2.x, all(vec2<bool>(true, global2.x)), var_4.e), vec3<bool>(true, true, true), !select(vec3<bool>(true, global2.x, true), vec3<bool>(global2.x, global2.x, false), var_4.e)), vec3<bool>(var_4.e, all(global1[_wgslsmith_index_u32(abs(4294967295u), 19u)]), any(select(vec2<bool>(true, false), vec2<bool>(true, global2.x), vec2<bool>(false, global2.x)))));
    let var_6 = Struct_3(global0[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.x, 4294967295u), var_1.a)), func_6(var_4.c, false).a.x)), 13u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~var_4.c.a, 1569f);
}

