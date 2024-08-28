struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(false, Struct_1(true, vec4<u32>(48907u, 4294967295u, 4294967295u, 4294967295u), 20121u, vec2<f32>(770f, 1000f)));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec4<i32>) -> bool {
    var var_0 = Struct_2(true, global0.b);
    return global0.a;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3) -> bool {
    global0 = arg_0;
    global0 = Struct_2(!arg_1.a, Struct_1(true, ~vec4<u32>(arg_1.b.x, ~arg_2.c, 36598u, abs(11684u)), _wgslsmith_dot_vec2_u32(~countOneBits(arg_1.b.xw), ~select(vec2<u32>(1u, arg_0.b.b.x), u_input.d, arg_1.a)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.d.x, 2020f)) - _wgslsmith_f_op_vec2_f32(floor(arg_1.d))), vec2<f32>(arg_0.b.d.x, _wgslsmith_f_op_f32(min(arg_0.b.d.x, global0.b.d.x)))))));
    var var_0 = Struct_3(-36177i, -arg_2.b, 1u);
    return arg_1.a || (select(select(false, global0.a, false) & !global0.b.a, !(u_input.a.x > 12165i), select(true, true && global0.b.a, true)) && true);
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    global0 = Struct_2(func_2(-(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.b, arg_0.b, 0i), vec4<i32>(2147483647i, u_input.b, arg_0.a, u_input.a.x)))), Struct_1((global0.b.a & any(vec2<bool>(global0.b.a, false))) | func_3(Struct_2(global0.b.a, Struct_1(global0.a, vec4<u32>(u_input.c, 0u, arg_0.c, global0.b.b.x), global0.b.b.x, vec2<f32>(global0.b.d.x, 1576f))), global0.b, arg_0), _wgslsmith_sub_vec4_u32(global0.b.b, _wgslsmith_add_vec4_u32(select(vec4<u32>(global0.b.c, 4294967295u, arg_0.c, u_input.d.x), vec4<u32>(arg_0.c, u_input.c, u_input.d.x, u_input.c), vec4<bool>(false, global0.a, global0.a, global0.a)), vec4<u32>(54117u, global0.b.b.x, 1u, u_input.c) ^ vec4<u32>(1u, 38731u, 0u, u_input.d.x))), abs(4294967295u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global0.b.d))) - global0.b.d)));
    let var_0 = Struct_1(!all(select(vec4<bool>(global0.b.a, global0.b.a, false, false), select(vec4<bool>(true, global0.b.a, global0.a, global0.a), vec4<bool>(true, global0.b.a, global0.b.a, false), global0.a), global0.b.a | global0.a)), global0.b.b, firstLeadingBit(~u_input.d.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global0.b.d, vec2<f32>(142f, _wgslsmith_f_op_f32(-global0.b.d.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -568f) - global0.b.d)));
    global0 = Struct_2(all(select(select(vec4<bool>(false, global0.b.a, true, true), !vec4<bool>(var_0.a, false, false, var_0.a), true), select(!vec4<bool>(true, var_0.a, true, var_0.a), vec4<bool>(true, global0.b.a, global0.b.a, false), select(vec4<bool>(false, true, var_0.a, var_0.a), vec4<bool>(global0.b.a, global0.a, true, global0.a), vec4<bool>(var_0.a, false, global0.b.a, global0.a))), select(vec4<bool>(true, true, true, true), vec4<bool>(global0.b.a, var_0.a, false, true), select(vec4<bool>(false, var_0.a, false, global0.a), vec4<bool>(true, true, global0.a, false), vec4<bool>(true, true, global0.b.a, true))))), global0.b);
    return Struct_2(true | func_3(Struct_2(!var_0.a, var_0), var_0, arg_0), Struct_1(true && (true && global0.a), countOneBits(var_0.b) ^ ~_wgslsmith_sub_vec4_u32(global0.b.b, global0.b.b), _wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, arg_0.c), 1u) << (0u % 32u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-560f, _wgslsmith_f_op_f32(-global0.b.d.x)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_4) -> Struct_1 {
    let var_0 = arg_2;
    var var_1 = min(~(vec3<i32>(-arg_1.a.b, firstTrailingBit(u_input.a.x), u_input.a.x ^ 7306i) << (abs(arg_0.b.b.zxw ^ arg_0.b.b.xxw) % vec3<u32>(32u))), ~u_input.a ^ -(vec3<i32>(arg_1.a.b, -822i, 2147483647i) << (arg_0.b.b.yzw % vec3<u32>(32u))));
    let var_2 = vec3<bool>(true, arg_0.b.a, func_1(Struct_3(~var_1.x, _wgslsmith_sub_i32(-21474i, -1i), 1u)).b.a & ((2180f > _wgslsmith_f_op_f32(sign(193f))) | func_3(Struct_2(global0.b.a, global0.b), Struct_1(false, global0.b.b, arg_0.b.b.x, arg_0.b.d), arg_1.a)));
    let var_3 = global0.b;
    let var_4 = arg_0.b.d.x;
    return Struct_1(var_3.a, (abs(_wgslsmith_mult_vec4_u32(var_3.b, vec4<u32>(0u, 10223u, 43644u, arg_2.a.c))) | reverseBits(~global0.b.b)) ^ vec4<u32>(u_input.d.x, var_3.c, _wgslsmith_mod_u32(~10025u, arg_1.a.c), _wgslsmith_sub_u32(17395u & arg_0.b.b.x, ~19138u)), arg_2.a.c, global0.b.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec3_i32(u_input.a, -(~_wgslsmith_mod_vec3_i32(select(u_input.a, vec3<i32>(u_input.a.x, u_input.b, -1i), vec3<bool>(global0.a, global0.b.a, global0.b.a)), firstTrailingBit(vec3<i32>(7405i, u_input.a.x, u_input.b)))));
    global0 = Struct_2(true, func_4(func_1(Struct_3(_wgslsmith_mult_i32(u_input.b, -2147483647i), 6810i, ~4294967295u)), Struct_4(Struct_3(_wgslsmith_mult_i32(u_input.a.x, -12901i), var_0.x, global0.b.c)), Struct_4(Struct_3(u_input.a.x, firstLeadingBit(u_input.b), ~61358u))));
    let var_1 = global0.b.b;
    global0 = Struct_2(false, global0.b);
    global0 = func_1(Struct_3(u_input.b, countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(19085i, u_input.a.x, u_input.a.x, u_input.a.x), ~vec4<i32>(var_0.x, var_0.x, var_0.x, 29836i))), global0.b.c));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global0.b.d.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.d.x)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.b.d.x * -1694f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -272f)))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(913f)))))));
    var var_3 = var_0;
    let var_4 = abs(firstLeadingBit(_wgslsmith_add_vec3_i32(abs(u_input.a), abs(firstTrailingBit(vec3<i32>(2147483647i, 16261i, 66928i))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(309f, 697f, var_2.x, var_2.x))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.b.d.x, -1751f, global0.b.d.x, global0.b.d.x), vec4<f32>(global0.b.d.x, var_2.x, var_2.x, var_2.x)))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.d.x, global0.b.d.x, var_2.x, global0.b.d.x)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(238f, 199f, var_2.x, var_2.x)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.x))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(822f)), _wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(601f + 278f) - _wgslsmith_f_op_f32(-508f + global0.b.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.b.d.x)) - var_2.x)));
}

