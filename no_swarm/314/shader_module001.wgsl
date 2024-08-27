struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> u32 {
    return select(~reverseBits(firstLeadingBit(_wgslsmith_mod_u32(arg_0.a.x, arg_0.a.x))), 56411u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(322f)), -334f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(2318f)))))) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-212f + 138f), _wgslsmith_f_op_f32(1106f * 209f))))));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_sub_u32(~u_input.a.x, u_input.a.x | (~_wgslsmith_dot_vec2_u32(u_input.a.yy, u_input.a.wz) & ~u_input.a.x));
    let var_1 = all(vec3<bool>(true, true, true));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(334f, -944f, -378f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -2137f, 1000f), vec3<f32>(311f, -435f, -393f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(604f, 864f, -1000f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-563f, -1104f, -563f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1098f, 406f, -1528f) - vec3<f32>(409f, -802f, -966f)), select(vec3<bool>(var_1, true, var_1), vec3<bool>(var_1, true, var_1), true))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1155f, -1405f, -1431f) + vec3<f32>(274f, -1456f, 1046f))))));
    var var_3 = ~_wgslsmith_div_u32(1u, ~var_0);
    var_3 = func_3(Struct_1(~(vec4<u32>(var_0, 1u, 2068u, 4294967295u) | vec4<u32>(var_0, 18446u, 58054u, var_0)), vec2<i32>(1i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-38522i, -2147483647i), vec2<i32>(-12523i, -19587i)), vec2<i32>(45379i, -32091i))), abs(abs(-vec2<i32>(1i, -14663i))), vec4<i32>(-2147483647i, _wgslsmith_div_i32(1i, i32(-1i) * -35392i), -11195i, 1i), vec4<i32>(1i, 1i, 1i, 1i) << (select(u_input.a >> (u_input.a % vec4<u32>(32u)), u_input.a, !vec4<bool>(false, var_1, var_1, false)) % vec4<u32>(32u))), all(vec4<bool>(any(vec3<bool>(false, var_1, var_1)), var_1 | all(vec4<bool>(true, var_1, false, false)), var_1, true)));
    return -2147483647i;
}

fn func_1(arg_0: vec4<u32>, arg_1: f32) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(1323f - _wgslsmith_f_op_f32(-arg_1));
    let var_2 = var_0;
    var_1 = _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -1457f));
    var var_3 = Struct_1(vec4<u32>(0u, arg_0.x, ~min(arg_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(33595u, 163969u, u_input.a.x, 4294967295u), u_input.a)), ~arg_0.x), -vec2<i32>(firstTrailingBit(select(var_2, var_0, true)), max(var_0, -60993i) << ((4294967295u >> (1u % 32u)) % 32u)), vec2<i32>(_wgslsmith_mult_i32(var_2, firstLeadingBit(~455i)), var_0), vec4<i32>(max(min(var_2, var_2), var_0 | -40123i), var_0, var_2, _wgslsmith_div_i32(abs(var_2), 0i)) >> (vec4<u32>(~37686u, arg_0.x, 46397u, _wgslsmith_dot_vec3_u32(select(arg_0.xxw, vec3<u32>(arg_0.x, u_input.a.x, 1u), false), firstLeadingBit(vec3<u32>(4738u, u_input.a.x, 11971u)))) % vec4<u32>(32u)), vec4<i32>(-_wgslsmith_mod_i32(67419i ^ var_0, -8155i << (u_input.a.x % 32u)), -_wgslsmith_sub_i32(3959i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2, var_2), vec2<i32>(0i, -1i))), -1i & _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_2, var_2, -2147483647i), vec4<i32>(var_0, var_0, 0i, var_2)), ~var_2), _wgslsmith_div_i32(-1i, 1i)));
    return Struct_1(arg_0, var_3.c, firstLeadingBit(-(~vec2<i32>(19787i, var_0))), var_3.e, select(select(vec4<i32>(var_2, var_0, -6704i, var_0), vec4<i32>(var_2, var_0, var_3.e.x, var_3.c.x), vec4<bool>(true, true, true, true)), var_3.e, all(vec4<bool>(true, true, true, false)) || any(vec4<bool>(false, false, false, false))) & var_3.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f)))), func_1(u_input.a, 1600f), any(vec4<bool>(false, true, false, any(vec4<bool>(true, true, true, true)))), 580f);
    let var_1 = ~abs(~vec2<u32>(abs(0u), func_3(Struct_1(vec4<u32>(0u, u_input.a.x, 1030u, var_0.b.a.x), vec2<i32>(31677i, var_0.b.c.x), var_0.b.b, vec4<i32>(45783i, var_0.b.e.x, var_0.b.b.x, -2147483647i), var_0.b.d), var_0.c)));
    let var_2 = -vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-21556i, 47446i), vec2<i32>(12609i, -3895i))), i32(-1i) * -6363i, var_0.b.b.x, 17656i) >> (~vec4<u32>(1u, var_1.x, 21428u, ~(~4294967295u)) % vec4<u32>(32u));
    let var_3 = var_0.b;
    var var_4 = -vec3<i32>(~1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.c.x, var_3.b.x, 6906i, -2147483647i), vec4<i32>(-39690i, var_2.x, var_3.b.x, 2147483647i)) & var_0.b.c.x, _wgslsmith_div_i32(var_0.b.d.x, var_0.b.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(822f, 895f), vec2<f32>(-451f, var_0.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(104f, var_0.a)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1408f, 1292f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, -1450f))))), var_0.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -139f));
}

