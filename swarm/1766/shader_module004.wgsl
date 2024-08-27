struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: vec3<u32>) -> bool {
    global0 = _wgslsmith_f_op_f32(-644f - _wgslsmith_f_op_f32(-578f - -328f));
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1165f, -1000f, 1592f, 747f), vec4<f32>(691f, 1714f, 1615f, 302f), true))), vec4<f32>(-1016f, _wgslsmith_f_op_f32(round(470f)), _wgslsmith_f_op_f32(1000f - 546f), -738f))));
    var var_1 = Struct_1(u_input.a);
    let var_2 = var_0.zww;
    global0 = -441f;
    return var_1.a >= u_input.a;
}

fn func_3() -> i32 {
    let var_0 = countOneBits(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(min(vec3<u32>(u_input.a, 54090u, 2337u), vec3<u32>(u_input.a, 48112u, u_input.a)), ~vec3<u32>(1778u, 57928u, u_input.a)) | select(countOneBits(vec3<u32>(u_input.a, 0u, u_input.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 18518u, u_input.a), vec3<u32>(u_input.a, 0u, 4294967295u)), all(vec3<bool>(false, true, false))), ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 16236u, 4294967295u), vec3<u32>(5795u, 11955u, 29950u), vec3<u32>(24870u, 27652u, u_input.a)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 435f)), -180f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-607f)) + 1449f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -977f)), _wgslsmith_f_op_f32(892f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-888f, 242f)) + -333f))));
    let var_2 = Struct_1(4294967295u);
    global0 = var_1.x;
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1254f - var_1.x)) + var_1.x), true)), _wgslsmith_f_op_f32(floor(var_1.x))));
    return firstLeadingBit(~_wgslsmith_dot_vec2_i32(vec2<i32>(21202i, ~u_input.b.x), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, 0i), u_input.b.xx), u_input.b.xw)));
}

fn func_1() -> StorageBuffer {
    var var_0 = vec2<bool>(any(select(vec2<bool>(false, 4294967295u <= u_input.a), select(vec2<bool>(true, true), vec2<bool>(false, false), all(vec4<bool>(true, false, false, true))), any(vec2<bool>(false, false)))), true);
    let var_1 = ~vec2<u32>(~(~1u >> (u_input.a % 32u)), u_input.a);
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(634f, 1491f, true)))))))));
    let var_3 = select(select(!(!select(vec2<bool>(true, true), vec2<bool>(false, var_0.x), true)), vec2<bool>(true, true), vec2<bool>(!(u_input.a <= u_input.a), var_0.x || var_0.x)), !vec2<bool>(var_0.x, func_2(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, var_1.x, var_1.x), vec3<u32>(u_input.a, var_1.x, u_input.a), vec3<u32>(5139u, 4294967295u, 1u)))), var_0.x);
    var var_4 = !(!any(vec3<bool>(var_0.x, 38778u <= u_input.a, var_3.x)));
    return StorageBuffer(1000f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-278f, 225f, _wgslsmith_f_op_f32(435f * -942f), _wgslsmith_f_op_f32(1742f * 1397f)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1341f, 605f, 1000f, -2013f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1150f, -268f, 717f, 1000f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-961f, 407f, -485f, 1000f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-922f))))))), _wgslsmith_mod_i32(_wgslsmith_add_i32(~func_3(), abs(select(u_input.b.x, -1i, var_0.x))), u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1305f, _wgslsmith_f_op_f32(select(961f, -695f, false)))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2024f - -1000f) - _wgslsmith_f_op_f32(-1661f + 2333f))))) * -108f);
    let var_0 = -1063f;
    let var_1 = -_wgslsmith_mult_i32(u_input.b.x, u_input.b.x);
    global0 = 276f;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0), var_0)));
    let x = u_input.a;
    s_output = func_1();
}

