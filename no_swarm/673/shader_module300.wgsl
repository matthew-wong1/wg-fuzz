struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: vec4<u32>, arg_3: f32) -> u32 {
    var var_0 = _wgslsmith_dot_vec2_i32(max(countOneBits(arg_0), vec2<i32>(arg_0.x, ~abs(1i))), vec2<i32>(_wgslsmith_mod_i32(arg_1, arg_0.x), ~38358i));
    return _wgslsmith_div_u32(4294967295u, max(arg_2.x, arg_2.x));
}

fn func_2() -> f32 {
    var var_0 = ~vec4<u32>(~func_3(u_input.a << (vec2<u32>(1u, 24880u) % vec2<u32>(32u)), -16789i, ~vec4<u32>(21124u, 46811u, 5625u, 93499u), 1333f), 1u, 1u, 1u);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -660f)), _wgslsmith_f_op_f32(abs(806f)));
    let var_2 = var_1.x;
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-726f, var_1.x)))))), var_1.x);
    var var_3 = Struct_2(vec4<f32>(-391f, -406f, var_1.x, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(877f + _wgslsmith_f_op_f32(var_1.x + -627f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) + _wgslsmith_div_vec3_f32(vec3<f32>(-173f, var_1.x, var_1.x), vec3<f32>(var_1.x, 619f, 1000f))))), var_0.yww, _wgslsmith_mult_vec4_u32(~(~vec4<u32>(9040u, var_0.x, 0u, 48012u)) >> (_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(22446u, 11619u, var_0.x, 83802u), vec4<u32>(var_0.x, 0u, var_0.x, var_0.x)), firstLeadingBit(vec4<u32>(var_0.x, var_0.x, 71628u, var_0.x))) % vec4<u32>(32u)), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 4294967295u, var_0.x, 40188u), vec4<u32>(59016u, 662u, 99967u, var_0.x)))));
    return -436f;
}

fn func_1() -> StorageBuffer {
    var var_0 = vec4<u32>(1u, 1u, 1u, 1u);
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1071f, _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(trunc(1900f)), true)), 482f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * 765f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -348f) - _wgslsmith_f_op_f32(min(-1466f, 895f))), _wgslsmith_f_op_f32(1317f * 198f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1421f, 2410f)))), vec3<i32>(~select(0i, -2147483647i, true), _wgslsmith_mod_i32(_wgslsmith_sub_i32(2147483647i, 2147483647i) >> ((var_0.x | 25383u) % 32u), u_input.a.x), u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

