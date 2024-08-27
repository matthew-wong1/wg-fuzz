struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = select(true, true, ~(abs(u_input.a) >> (1u % 32u)) == ~(~(u_input.a | arg_0.a)));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(970f, -1000f, -101f), vec3<f32>(1867f, -137f, 591f)) - vec3<f32>(-364f, 949f, 419f))) * vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-674f)))), _wgslsmith_f_op_f32(step(-281f, _wgslsmith_div_f32(-1026f, -2005f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 933f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(394f * 1027f), _wgslsmith_f_op_f32(1482f - -830f), _wgslsmith_f_op_f32(-1150f * 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-585f, 1752f, 2031f)), select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(false, true, false), select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(true, var_0, false), true))))), var_0));
    var var_2 = _wgslsmith_clamp_vec2_i32(-(_wgslsmith_add_vec2_i32(max(vec2<i32>(0i, 58766i), vec2<i32>(arg_0.a, 2147483647i)), vec2<i32>(arg_0.a, -1i)) & vec2<i32>(u_input.a >> (u_input.b % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a, arg_0.a), vec2<i32>(-1i, u_input.a)))), vec2<i32>((i32(-1i) * -7263i) << (_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(16369u, 3561u, u_input.b, u_input.b), vec4<u32>(0u, 43657u, u_input.b, 15185u)), vec4<u32>(u_input.b, u_input.b, u_input.b, 1u) ^ vec4<u32>(u_input.b, u_input.b, 58584u, 9073u)) % 32u), arg_0.a), vec2<i32>(_wgslsmith_mod_i32(i32(-1i) * -6393i, u_input.a), _wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.a, arg_0.a, 1i, 1i), vec4<i32>(arg_0.a, 2147483647i, 2147483647i, arg_0.a))), vec4<i32>(5081i, arg_0.a, -48871i, 4788i))));
    var var_3 = -761f;
    let var_4 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), -1000f)), 282f, 1374f)))));
    return Struct_1(arg_0.a);
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = arg_0.x != !(abs(0u) > u_input.b);
    let var_1 = Struct_1(u_input.a);
    var_0 = arg_0.x;
    return func_2(Struct_1(1i));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = arg_1;
    let var_1 = func_2(func_2(var_0));
    let var_2 = func_2(func_2(Struct_1(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_1.a, var_0.a, -1i, arg_1.a), min(vec4<i32>(-20913i, -2147483647i, u_input.a, arg_0), vec4<i32>(-22334i, var_1.a, arg_0, -28040i))))));
    var var_3 = -(~26110i ^ (var_2.a | ~_wgslsmith_add_i32(-1i, 1i)));
    var var_4 = -(~(~abs(vec4<i32>(1i, u_input.a, -2147483647i, arg_1.a))));
    return vec3<i32>(var_4.x, _wgslsmith_add_i32(-24619i, 44530i), 1i);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = func_1(vec3<bool>(all(select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true))), 17705i >= -countOneBits(u_input.a), !any(vec4<bool>(true, true, true, true))));
    var var_1 = arg_0;
    var var_2 = -1i;
    let var_3 = func_1(vec3<bool>(~firstTrailingBit(arg_1.x) == 60202u, false, true));
    return Struct_1(-56671i);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> i32 {
    return -53350i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1170f - 783f));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1004f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -685f))) * _wgslsmith_f_op_f32(1f + -757f))));
    var var_1 = Struct_1(u_input.a);
    let var_2 = reverseBits(~func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(188f, -793f, 1712f) - vec3<f32>(-1442f, -404f, -1555f)) * _wgslsmith_div_vec3_f32(vec3<f32>(474f, -2227f, -191f), vec3<f32>(-1268f, 420f, 1338f))), func_4(func_1(vec3<bool>(false, true, false)), select(vec4<u32>(0u, 29311u, u_input.b, u_input.b), vec4<u32>(u_input.b, 29820u, 0u, u_input.b), false), func_3(u_input.a, Struct_1(-1i), Struct_1(-642i))), Struct_1(var_1.a), -1309f));
    var var_3 = false;
    var var_4 = func_2(Struct_1(var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1726f, -428f, -894f, 1084f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1495f, 1282f, 288f, -497f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1273f, -1853f, -850f, 775f))), false)), true))), -224f, 1u);
}

