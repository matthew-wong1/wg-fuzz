struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -239f;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    let var_0 = -_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, max(u_input.a, u_input.a)), -(reverseBits(vec2<i32>(u_input.a, -1i)) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(-1i, 1i))));
    global0 = -1089f;
    let var_1 = vec2<i32>(~(-29809i) | var_0.x, min(abs(u_input.a) << (~4294967295u % 32u), ~(~u_input.a) & ~abs(u_input.a)));
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(312f))));
    var var_2 = ~select(countOneBits(~vec4<u32>(0u, 4294967295u, 4294967295u, 1u)), vec4<u32>(1u, ~(~1u), reverseBits(_wgslsmith_sub_u32(4294967295u, 4294967295u)), 71868u), false);
    return _wgslsmith_f_op_f32(abs(1f));
}

fn func_2(arg_0: vec3<i32>) -> vec4<u32> {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(540f, 1000f))) * vec2<f32>(1000f, _wgslsmith_f_op_f32(func_3()))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-809f, 508f))) + -2070f), _wgslsmith_f_op_f32(1214f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-731f * 185f) - _wgslsmith_f_op_f32(f32(-1f) * -909f)))));
    let var_1 = Struct_1(!select(vec2<bool>(true, any(vec4<bool>(true, false, false, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), true));
    let var_2 = Struct_2(!(!(!select(vec3<bool>(false, false, true), vec3<bool>(var_1.a.x, false, var_1.a.x), vec3<bool>(var_1.a.x, false, false)))), 283f);
    var var_3 = ~(-33038i);
    let var_4 = _wgslsmith_mod_i32(min(arg_0.x, countOneBits(u_input.a)), 9633i);
    return ~firstLeadingBit(~abs(vec4<u32>(3165u, 17973u, 0u, 1u)));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec2<i32>) -> u32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-452f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_0))))));
    var var_0 = ~(~max(func_2(-vec3<i32>(-22863i, 21617i, 18280i)), vec4<u32>(4294967295u, _wgslsmith_sub_u32(arg_1.x, arg_1.x), 116193u, ~arg_1.x)));
    var var_1 = -_wgslsmith_mod_i32(1i, abs(_wgslsmith_mult_i32(23700i, -u_input.a)));
    let var_2 = Struct_1(vec2<bool>(select(true, arg_2.a.x, any(select(vec4<bool>(true, false, true, arg_2.a.x), vec4<bool>(arg_2.a.x, arg_2.a.x, true, arg_2.a.x), false))), true));
    let var_3 = var_2;
    return 40262u;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: bool, arg_3: Struct_2) -> f32 {
    let var_0 = ~min(22256u, ~arg_0.x);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b) + _wgslsmith_f_op_f32(min(arg_3.b, arg_3.b)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3.b)))));
    var var_1 = Struct_1(select(select(arg_1, arg_3.a.xx, vec2<bool>(true, true)), arg_1, any(select(select(arg_3.a.zx, vec2<bool>(true, true), arg_1.x), arg_3.a.yz, true))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-943f + -438f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_3.b + arg_3.b), _wgslsmith_f_op_f32(max(arg_3.b, 424f))))) * 3602f), _wgslsmith_f_op_f32(arg_3.b + -442f));
    var var_3 = Struct_1(arg_1);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_3.b, arg_3.b)) * _wgslsmith_f_op_f32(-206f * var_2)))) - 384f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec3_u32(vec3<u32>(select(func_1(812f, vec2<u32>(4294967295u, 4447u), Struct_2(vec3<bool>(false, false, true), -1000f), vec2<i32>(2147483647i, -6342i)), 1u, true), 39982u, 4294967295u), ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(28571u, 36993u, 39722u, 4294967295u), vec4<u32>(36051u, 47947u, 4294967295u, 8757u)), 4294967295u, _wgslsmith_sub_u32(4294967295u, 4294967295u))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)), select(true, false, any(vec2<bool>(true, false))))), true, Struct_2(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(select(1331f, 1f, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(_wgslsmith_add_vec2_i32(~vec2<i32>(0i, -23910i), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a), vec2<i32>(0i, 2147483647i)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2011f, 1061f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1427f, -143f)), true)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, 718f), vec2<f32>(-501f, 1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1826f) - vec2<f32>(1997f, -583f)), vec2<bool>(true, true)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(1013f)), -919f))));
}

