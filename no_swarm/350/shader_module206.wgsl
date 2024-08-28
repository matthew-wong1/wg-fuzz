struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    global0 = _wgslsmith_f_op_f32(-734f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1125f))));
    var var_0 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(arg_0.xz | arg_0.wy, arg_0.zw ^ arg_0.xz), arg_0.x), 0i), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(2147483647i, reverseBits(arg_0.x)), 25923i), firstLeadingBit(vec2<i32>(43635i, 1i)) & vec2<i32>(-2147483647i >> (u_input.a % 32u), ~arg_0.x)));
    let var_1 = Struct_1(arg_0.x, ~(u_input.c | 1i));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -894f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-1824f, -2182f)), _wgslsmith_f_op_f32(floor(2018f))))), -754f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2349f), -880f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -304f)))), _wgslsmith_f_op_f32(ceil(-741f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2667f, -1000f) + -792f))));
    var var_3 = vec4<i32>(~(-abs(countOneBits(1i))), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(arg_0, vec4<i32>(min(-1i, u_input.c), 2147483647i, ~arg_0.x, var_1.a)), -(vec4<i32>(-1i) * -vec4<i32>(var_0.x, u_input.c, 1i, var_0.x))), u_input.c, 0i);
    return _wgslsmith_f_op_f32(round(1374f));
}

fn func_2(arg_0: Struct_1) -> u32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(-1i, 1i, arg_0.b, -1i), -vec4<i32>(arg_0.b, arg_0.b, -2147483647i, -2147483647i)), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, arg_0.b), vec4<i32>(u_input.c, arg_0.b, -1i, arg_0.a)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, arg_0.b, arg_0.b, 2147483647i), vec4<i32>(13502i, -7211i, 2147483647i, 19189i)))))));
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1093f, -521f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(2207f, 718f)))))));
    var var_1 = -vec4<i32>(u_input.c, u_input.c, u_input.c, _wgslsmith_clamp_i32(arg_0.a, 1i, -25739i)) << (((vec4<u32>(22398u, ~4294967295u, ~u_input.d.x, u_input.a) & vec4<u32>(~4294967295u, u_input.d.x, _wgslsmith_sub_u32(u_input.a, u_input.a), 54951u)) >> (~min(~vec4<u32>(u_input.b, 0u, 1u, u_input.d.x), ~vec4<u32>(0u, u_input.a, u_input.e, 7779u)) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_2 = !vec2<bool>(all(vec3<bool>(true, true, false)) | true, !select(true, true, all(vec4<bool>(false, true, true, true))));
    let var_3 = !(any(vec2<bool>(true, var_0.x > var_0.x)) & true);
    return _wgslsmith_mult_u32(_wgslsmith_mult_u32(~1u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(reverseBits(u_input.b), _wgslsmith_add_u32(0u, 4294967295u), _wgslsmith_add_u32(u_input.e, 24415u)), u_input.a)), ~(~(~24553u)) << (u_input.a % 32u));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, -202f, 744f), vec3<f32>(arg_0, 1827f, 1222f), vec3<bool>(false, false, true))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0, 1654f, arg_0)))))), true || !((u_input.b >> (13960u % 32u)) != func_2(Struct_1(u_input.c, u_input.c))));
    var var_1 = _wgslsmith_f_op_vec3_f32(var_0.a + var_0.a);
    var var_2 = vec4<bool>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_2, arg_1, 4294967295u, 0u)), firstLeadingBit(select(vec4<u32>(4294967295u, 4294967295u, u_input.b, u_input.d.x), vec4<u32>(arg_2, 110760u, u_input.e, arg_2), true))) > ~u_input.b, true, any(!(!select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, var_0.b)))), var_0.b);
    let var_3 = vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1040f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-990f)), _wgslsmith_div_f32(var_0.a.x, var_1.x))))) + _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(select(524f, -937f, true))))), _wgslsmith_f_op_f32(func_3(_wgslsmith_sub_vec4_i32(min(vec4<i32>(u_input.c, 49099i, u_input.c, u_input.c) | vec4<i32>(2147483647i, u_input.c, u_input.c, u_input.c), _wgslsmith_add_vec4_i32(vec4<i32>(26115i, 1i, u_input.c, u_input.c), vec4<i32>(u_input.c, 0i, -8314i, -60658i))), -firstLeadingBit(vec4<i32>(u_input.c, u_input.c, 2147483647i, u_input.c))))));
    var_1 = vec3<f32>(304f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-785f, arg_0))));
    return Struct_1(-6086i, -1i);
}

fn func_4(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = func_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(432f, 465f), _wgslsmith_div_f32(-670f, -1003f)))))), 1u, min(u_input.e >> (firstLeadingBit(u_input.e) % 32u), ~u_input.b));
    global0 = 1625f;
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1178f - 1179f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1026f)))));
    var var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(395f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-542f - 1906f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-593f - 851f), 987f)), 1000f), any(vec2<bool>(true, true)));
    let var_2 = firstTrailingBit(u_input.b) >> (0u % 32u);
    return vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1.a.x, -1241f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~78538u;
    global0 = 1179f;
    global0 = -842f;
    var var_1 = Struct_2(vec3<f32>(1175f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1260f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -514f)))), -182f), true);
    var var_2 = vec3<bool>(!var_1.b, all(select(!select(vec4<bool>(false, var_1.b, false, false), vec4<bool>(var_1.b, false, var_1.b, var_1.b), vec4<bool>(var_1.b, var_1.b, var_1.b, true)), vec4<bool>(false, var_1.b, !var_1.b, var_0 > 0u), (u_input.c < u_input.c) && any(vec3<bool>(true, var_1.b, true)))), false);
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(func_1(-181f, u_input.a, 1u))) + var_1.a), var_1.b);
    var var_4 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, 0u, -1i);
}

