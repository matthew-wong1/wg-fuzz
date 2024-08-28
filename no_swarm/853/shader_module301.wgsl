struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6> = array<i32, 6>(2147483647i, -39993i, -32024i, 2147483647i, -48823i, 1i);

var<private> global1: u32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1) -> bool {
    let var_0 = abs(abs(~(~arg_1.ww) >> (arg_1.xx % vec2<u32>(32u))));
    var var_1 = 1426f;
    let var_2 = vec3<i32>(2147483647i, -max(firstLeadingBit(_wgslsmith_mult_i32(-2147483647i, global0[_wgslsmith_index_u32(4294967295u, 6u)])), _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(arg_1.x, 6u)], -50155i, 2147483647i), vec3<i32>(21422i, u_input.a, global0[_wgslsmith_index_u32(40275u, 6u)]) >> (vec3<u32>(arg_1.x, var_0.x, arg_1.x) % vec3<u32>(32u)))), -1i);
    var var_3 = Struct_5(countOneBits(var_0.x ^ ~select(var_0.x, 1u, arg_0)), ~(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(arg_1.x, var_0.x), 6u)] & var_2.x), 51994u, !vec2<bool>(true, _wgslsmith_f_op_f32(round(arg_2.a)) >= _wgslsmith_f_op_f32(509f - 753f)));
    let var_4 = _wgslsmith_div_vec3_u32(arg_1.xwz ^ ~vec3<u32>(_wgslsmith_div_u32(16991u, 4294967295u), 18270u, reverseBits(var_3.c)), firstLeadingBit(vec3<u32>(firstLeadingBit(arg_1.x) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, 1u), arg_1.yy), var_3.a, arg_1.x)));
    return !(!(_wgslsmith_mod_u32(var_3.c, 1u) < ~arg_1.x)) && (-1i != global0[_wgslsmith_index_u32(33959u, 6u)]);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: vec4<bool>) -> u32 {
    let var_0 = countOneBits(vec3<u32>(~1u, _wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_mult_u32(0u, 0u)), 1u), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(14507u, 1u, 4294967295u, 1u)), ~(~0u))));
    let var_1 = Struct_3(all(!(!(!vec3<bool>(arg_2.x, arg_1.x, false)))), arg_2.x | !(6101i >= firstTrailingBit(global0[_wgslsmith_index_u32(4294967295u, 6u)])));
    var var_2 = ~(~_wgslsmith_dot_vec3_u32(~var_0, var_0));
    let var_3 = u_input.a;
    let var_4 = _wgslsmith_mult_vec2_u32(~countOneBits(_wgslsmith_mult_vec2_u32(~var_0.xz, min(vec2<u32>(var_0.x, 109893u), vec2<u32>(1u, 97511u)))), ~vec2<u32>(~var_0.x, ~(~var_0.x)));
    return 1u;
}

fn func_1() -> u32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -461f)), 643f)), vec4<bool>(true, true, true, !all(vec3<bool>(true, true, false)) & false));
    let var_1 = Struct_3(true, var_0.b.x);
    var var_2 = global0[_wgslsmith_index_u32(4294967295u, 6u)];
    var var_3 = true;
    let var_4 = true;
    return abs(func_3(var_0.b, vec3<bool>(!func_2(var_0.b.x, vec4<u32>(1u, 1u, 4294967295u, 45904u), Struct_1(-212f)), true, var_4), var_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = select(vec4<u32>(4294967295u, 1u, func_1(), func_3(vec4<bool>(true, true, true, true), !vec3<bool>(var_0, var_0, var_0), select(vec4<bool>(var_0, false, false, var_0), vec4<bool>(var_0, true, false, false), !vec4<bool>(var_0, false, var_0, var_0)))), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(func_1(), abs(29858u), abs(43668u), 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))), ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(4294967295u, 0u, 4294967295u)), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 47671u), vec2<u32>(21745u, 1992u)), ~58203u)), vec4<bool>(var_0, var_0, true, (!var_0 | !var_0) || true));
    global1 = var_1.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1114f - _wgslsmith_div_f32(-1291f, _wgslsmith_f_op_f32(f32(-1f) * -530f))) - -776f));
    var var_3 = Struct_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1134f) - 1001f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-249f, -966f, 596f, 582f), vec4<f32>(787f, 1813f, 1197f, -965f)) + vec4<f32>(_wgslsmith_div_f32(936f, 2130f), _wgslsmith_f_op_f32(-1948f * -648f), -1279f, -2048f)))), vec4<i32>(_wgslsmith_dot_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.a, 17729i, -2147483647i), vec4<i32>(-10864i, global0[_wgslsmith_index_u32(var_1.x, 6u)], u_input.a, u_input.a)), _wgslsmith_div_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(var_1.x, 6u)], 31846i, global0[_wgslsmith_index_u32(0u, 6u)], u_input.a), vec4<i32>(global0[_wgslsmith_index_u32(var_1.x, 6u)], 0i, global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(var_1.x, 6u)])), false), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -43679i, u_input.a, u_input.a), vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(var_1.x, 6u)], u_input.a, global0[_wgslsmith_index_u32(95181u, 6u)])), firstTrailingBit(vec4<i32>(1i, 29217i, -18698i, -62288i)))), _wgslsmith_add_i32(u_input.a, ~(-global0[_wgslsmith_index_u32(var_1.x, 6u)])), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(1i, -6322i, u_input.a)), vec3<i32>(global0[_wgslsmith_index_u32(1u, 6u)], 0i, global0[_wgslsmith_index_u32(var_1.x, 6u)])) >> (var_1.x % 32u), 69268i));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.x, var_1.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.b.wyy - var_3.b.xwx), vec3<f32>(_wgslsmith_f_op_f32(var_3.b.x - var_3.a.a), _wgslsmith_div_f32(1174f, var_3.a.a), _wgslsmith_f_op_f32(exp2(var_3.b.x))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.b.x * -675f), 989f)));
}

