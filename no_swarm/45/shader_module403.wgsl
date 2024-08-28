struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: u32,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec3<i32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(abs(arg_1));
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0, arg_1, 165f, 630f), vec4<f32>(1937f, -1079f, 1037f, var_0))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, arg_1, -332f, arg_1) * vec4<f32>(1238f, var_0, arg_1, -1190f)))))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.zx), max(_wgslsmith_mod_vec4_i32(abs(u_input.b), u_input.b), _wgslsmith_div_vec4_i32(vec4<i32>(arg_0.b.x, -58779i, 1i, 1i) ^ min(u_input.b, vec4<i32>(arg_2.x, 15300i, u_input.c.x, 2147483647i)), countOneBits(_wgslsmith_add_vec4_i32(u_input.b, vec4<i32>(arg_0.b.x, arg_0.b.x, 30858i, u_input.b.x))))));
    let var_3 = var_2;
    var var_4 = var_3.b;
    return vec2<u32>(~u_input.a.x, 11984u);
}

fn func_2(arg_0: Struct_2) -> f32 {
    var var_0 = select(reverseBits(_wgslsmith_mod_vec2_u32(func_3(arg_0, -1000f, -vec3<i32>(u_input.b.x, u_input.c.x, arg_0.b.x)), u_input.a.yx)), vec2<u32>(max(u_input.a.x, ~u_input.a.x) << (u_input.a.x % 32u), u_input.a.x << (1u % 32u)), arg_0.a.x);
    var_0 = u_input.a.zx;
    let var_1 = -477f;
    var_0 = vec2<u32>(0u, var_0.x);
    var_0 = u_input.a.xy;
    return _wgslsmith_f_op_f32(-var_1);
}

fn func_1(arg_0: i32, arg_1: u32) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2(Struct_2(vec3<bool>(true, false, true), vec2<i32>(u_input.c.x, 38808i)))), _wgslsmith_f_op_f32(-1013f - 501f)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-594f, -979f) - vec2<f32>(-552f, -1551f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1676f, -156f) - vec2<f32>(-405f, 1578f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1065f, 1085f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2176f, 876f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(142f, -914f))) * vec2<f32>(1f, 1f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(func_1(1i, 0u)), abs(vec4<i32>(22683i, -u_input.b.x, -28149i, 2147483647i)));
    let var_1 = _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-278f, 1424f)), _wgslsmith_f_op_f32(-1438f * var_0.a.x)), -356f))) < var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~u_input.b.x)), _wgslsmith_add_vec4_i32(var_0.b, _wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.c.x, 0i, -2266i, var_0.b.x)), ~_wgslsmith_div_vec4_i32(var_0.b, vec4<i32>(50452i, 1i, 0i, u_input.c.x)))), abs(_wgslsmith_sub_u32(max(~u_input.a.x, ~u_input.a.x), ~0u)));
}

