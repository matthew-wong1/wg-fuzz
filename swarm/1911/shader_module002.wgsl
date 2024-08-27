struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: f32) -> bool {
    return false;
}

fn func_3(arg_0: u32) -> vec4<i32> {
    let var_0 = any(!(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), any(vec2<bool>(true, true)))));
    return u_input.a;
}

fn func_1() -> i32 {
    var var_0 = u_input.a.x;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 440f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(274f + -2232f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(506f, 1088f))))), 1079f, _wgslsmith_f_op_f32(sign(1000f)));
    var var_2 = true;
    var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(697f * var_1.x)))));
    let var_3 = var_1.x;
    return _wgslsmith_dot_vec4_i32(~func_3(u_input.b), firstLeadingBit(vec4<i32>(abs(abs(-18878i)), -(i32(-1i) * -72219i), 1i, i32(-1i) * -21300i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec4<bool>(true, !select(false, true, true), true, true));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-389f, -935f, -471f, 944f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(186f * -1095f), _wgslsmith_f_op_f32(step(294f, -580f)), _wgslsmith_f_op_f32(f32(-1f) * -1703f), 924f))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1306f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1f, -490f, true)) - 793f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-195f - _wgslsmith_f_op_f32(round(-650f)))), 867f));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), -1239f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1f + var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
    let var_2 = Struct_1(var_1.zxy, vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x >> (select(31937u, u_input.b, var_0.x) % 32u)), func_1(), ~33847i, u_input.a.x));
    let var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(879f * -769f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.a.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, var_2.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.x)) + -138f))), vec4<i32>(_wgslsmith_add_i32(firstTrailingBit(u_input.a.x) << (reverseBits(u_input.b) % 32u), firstTrailingBit(u_input.a.x)), u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, var_2.b.x), u_input.a.x >> (35945u % 32u), ~u_input.a.x, -414i), u_input.a), u_input.a.x));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-490f, -1078f)), var_2.a.x, -503f, -2764f)))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-674f)) * -981f), var_2.a.x, 1000f))));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_f_op_f32(max(var_3.a.x, -257f)), 23602u, (vec2<u32>(0u, 1u) << (~vec2<u32>(u_input.b, 38142u) % vec2<u32>(32u))) & _wgslsmith_div_vec2_u32(vec2<u32>(82460u, ~32752u), ~(~vec2<u32>(u_input.b, 1u))));
}

