struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: u32, arg_3: vec4<u32>) -> f32 {
    var var_0 = -1i;
    var var_1 = _wgslsmith_f_op_f32(floor(-1257f));
    var var_2 = arg_1.x;
    var var_3 = Struct_1(true, _wgslsmith_f_op_f32(f32(-1f) * -702f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1830f, 341f)));
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(724f, -392f, -467f, var_3.c.x)) * vec4<f32>(var_3.c.x, _wgslsmith_f_op_f32(ceil(var_3.c.x)), _wgslsmith_f_op_f32(trunc(var_3.c.x)), -1016f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1319f * var_3.c.x)), var_3.c.x, var_3.b) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(229f, -815f, var_3.c.x, var_3.c.x))), vec4<f32>(212f, 1604f, 1412f, var_3.c.x))))));
    return 592f;
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: vec2<u32>) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2835f)) + _wgslsmith_f_op_f32(func_2(75975i, vec2<i32>(-26389i, arg_0), 5802u, vec4<u32>(arg_2.x, arg_1.x, 1u, arg_2.x))))) >= -632f, _wgslsmith_f_op_f32(max(935f, _wgslsmith_div_f32(1035f, -176f))), vec2<f32>(_wgslsmith_f_op_f32(-680f + _wgslsmith_f_op_f32(select(-1791f, 390f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-854f - -852f) * -363f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1090f) * _wgslsmith_f_op_f32(f32(-1f) * -1092f)))));
    let var_1 = _wgslsmith_mod_u32(abs(9952u), arg_2.x << (4294967295u % 32u)) >= ~1u;
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -438f))));
    let var_3 = ~arg_2;
    let var_4 = reverseBits(-13822i);
    return !select(!select(!vec2<bool>(var_0.a, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), !var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1185f;
    var var_1 = vec2<bool>(all(!(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), false))), true);
    var var_2 = var_0;
    var_1 = !select(vec2<bool>(true, true), func_1(u_input.a, ~vec3<u32>(1u, 1u, 1u), _wgslsmith_mult_vec2_u32(max(vec2<u32>(4294967295u, 0u), vec2<u32>(9448u, 1u)), firstTrailingBit(vec2<u32>(10536u, 0u)))), !all(select(vec3<bool>(var_1.x, false, true), vec3<bool>(var_1.x, false, true), var_1.x)));
    var_1 = vec2<bool>(var_1.x == true, var_1.x | var_1.x);
    var var_3 = vec2<i32>(i32(-1i) * -u_input.a, select(_wgslsmith_clamp_i32(-2147483647i, -31102i, 55448i) ^ 1i, u_input.a, true) | -17508i);
    var_2 = _wgslsmith_f_op_f32(623f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1778f)));
    var_3 = -(_wgslsmith_div_vec2_i32(countOneBits(-vec2<i32>(-29190i, var_3.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.a), ~vec2<i32>(-17318i, 7648i))) ^ vec2<i32>(-2147483647i, abs(var_3.x | 41357i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(-384f, var_0)));
}

