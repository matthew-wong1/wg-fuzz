struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_1 {
    let var_0 = _wgslsmith_add_i32(-(i32(-1i) * -37978i), u_input.b);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, 141f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(arg_0)))))));
    let var_2 = Struct_1(vec4<bool>(arg_1, var_0 == ~(-36763i), true, arg_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, _wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(-var_1.x), 1009f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 750f, arg_0, var_1.x) * vec4<f32>(var_1.x, arg_0, var_1.x, var_1.x))))))));
    let var_3 = 0u;
    let var_4 = Struct_1(!var_2.a, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_2.b, var_2.b))), vec4<f32>(_wgslsmith_f_op_f32(step(var_1.x, -680f)), var_1.x, 685f, 733f)));
    return var_2;
}

fn func_3(arg_0: u32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(278f)) + -1193f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-646f + -2948f) - _wgslsmith_f_op_f32(step(1358f, -1000f)))), _wgslsmith_f_op_f32(abs(-1507f))) + _wgslsmith_f_op_f32(f32(-1f) * -571f));
    let var_1 = vec2<bool>(func_1(-1390f, true).a.x & (firstLeadingBit(u_input.b) > (u_input.b & (i32(-1i) * -6771i))), !all(select(vec2<bool>(true, true), vec2<bool>(true, true), func_1(var_0, true).a.zy)));
    let var_2 = vec2<u32>(15782u, ~(~1865u) << (_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 4294967295u, u_input.a.x) << (u_input.a % vec3<u32>(32u)), vec3<u32>(u_input.a.x, arg_0, arg_0)), 1u >> (~arg_0 % 32u)) % 32u));
    var var_3 = u_input.b;
    let var_4 = (arg_0 & 7400u) >= var_2.x;
    return vec3<bool>(true, true, var_4);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = vec2<bool>(true, any(!func_3(_wgslsmith_mod_u32(2217u, u_input.a.x))));
    var_0 = vec2<bool>(!(!(_wgslsmith_f_op_f32(ceil(-128f)) != _wgslsmith_div_f32(arg_0.b.x, arg_0.b.x))), !var_0.x);
    var_0 = vec2<bool>(false, !select(false, arg_0.a.x, true));
    let var_1 = Struct_1(!vec4<bool>(807f < arg_1.x, !arg_0.a.x, true, any(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(arg_0.a.x, arg_0.a.x, true), var_0.x))), arg_0.b);
    var_0 = vec2<bool>(true, var_0.x);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(func_1(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(381f)) + _wgslsmith_f_op_f32(floor(-475f)))), !((u_input.a.x == u_input.a.x) || false)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1655f, 1447f, -169f, 2367f))))));
    let var_1 = _wgslsmith_div_f32(-1000f, -1044f);
    let var_2 = u_input.b;
    let var_3 = var_0.b.x;
    var var_4 = _wgslsmith_f_op_vec4_f32(-var_0.b);
    var var_5 = vec2<bool>(false, true);
    let var_6 = !var_5.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(-3435i, 1i, -30456i) ^ select(vec3<i32>(var_2, u_input.b, 47226i), vec3<i32>(-30910i, u_input.b, 1i), var_5.x), -vec3<i32>(-1i, 22691i, -1i))), 1000f, ~vec2<u32>(~1u, _wgslsmith_mod_u32(~u_input.a.x, firstTrailingBit(2824u))), ~(~var_2));
}

