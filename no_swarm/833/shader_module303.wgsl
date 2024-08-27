struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> i32 {
    let var_0 = vec2<f32>(arg_1.a, arg_1.a);
    return -u_input.b;
}

fn func_2(arg_0: vec3<bool>, arg_1: u32) -> vec3<i32> {
    var var_0 = vec4<u32>(_wgslsmith_mod_u32(~(~104794u), 85366u | ~arg_1), ~0u, _wgslsmith_mult_u32(~(~_wgslsmith_div_u32(arg_1, u_input.a)), _wgslsmith_dot_vec3_u32(~select(vec3<u32>(arg_1, u_input.a, 225u), vec3<u32>(u_input.a, arg_1, 7273u), arg_0), vec3<u32>(4294967295u ^ arg_1, firstLeadingBit(u_input.a), u_input.a))), arg_1);
    return _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.b), vec2<i32>(2147483647i, u_input.b))), abs(i32(-1i) * -2147483647i)), u_input.b, u_input.b), ~vec3<i32>(firstTrailingBit(0i) & u_input.b, func_3(arg_0.x, Struct_1(-554f, arg_0.x), reverseBits(vec4<u32>(1u, arg_1, 1u, arg_1)), Struct_1(-574f, true)), ~_wgslsmith_add_i32(-58632i, u_input.b)));
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = u_input.b;
    var var_1 = -1i;
    var var_2 = _wgslsmith_dot_vec3_i32((firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.b, u_input.b), vec3<i32>(1i, u_input.b, u_input.b))) & vec3<i32>(_wgslsmith_sub_i32(u_input.b, 0i), _wgslsmith_sub_i32(u_input.b, -2147483647i), firstTrailingBit(2147483647i))) ^ -vec3<i32>(u_input.b << (57970u % 32u), 1i, -2147483647i), ~func_2(vec3<bool>(all(vec3<bool>(true, false, false)), !arg_0.b, arg_0.b), u_input.a));
    var_2 = _wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, u_input.b, -17510i, -2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(38319i, -1i, -1i, -21124i), vec4<i32>(u_input.b, u_input.b, 9368i, -79255i))), vec4<i32>(select(u_input.b, u_input.b, arg_0.b), -u_input.b, reverseBits(u_input.b), -21259i)), firstTrailingBit(-vec4<i32>(u_input.b, _wgslsmith_sub_i32(0i, u_input.b), -32582i, func_3(arg_0.b, Struct_1(1000f, arg_0.b), vec4<u32>(28624u, u_input.a, 57951u, 1u), Struct_1(arg_0.a, false)))));
    let var_3 = abs(1u);
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~firstTrailingBit(vec2<u32>(4294967295u, ~64849u)));
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(func_1(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, -585f)))), !var_1)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -257f)) - 649f), !var_1);
    let var_4 = var_3;
    var var_5 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -718f), any(vec4<bool>(true, true, _wgslsmith_add_i32(u_input.b, u_input.b) > -1i, false || !var_1)));
    var var_6 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a, 421f, var_3.a, var_4.a)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2, var_4.a, var_2, 196f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.a, var_3.a, var_5.a, -1429f) * vec4<f32>(-1513f, -881f, -556f, var_5.a)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a, var_5.a, -260f, var_3.a)))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-var_4.a), -1010f, var_2, _wgslsmith_f_op_f32(trunc(628f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3.a, var_4.a, -558f, var_3.a), vec4<f32>(383f, var_5.a, var_3.a, -159f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.a, var_2, -678f, var_2), vec4<f32>(var_5.a, -1255f, -437f, var_4.a), var_5.b)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -992f), var_2, -150f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_2, 591f)), var_4.a))), u_input.b < u_input.b));
    var_6 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2772f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a + _wgslsmith_f_op_f32(536f * var_6.x)))), 1533f, var_3.a, var_4.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, u_input.b, u_input.b, abs(-vec4<i32>(-2147483647i | u_input.b, -55211i, max(57934i, u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, -15045i), vec4<i32>(u_input.b, 10974i, 49271i, u_input.b)))));
}

