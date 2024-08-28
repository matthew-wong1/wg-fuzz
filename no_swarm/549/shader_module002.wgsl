struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    var var_0 = 4294967295u;
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -584f), -395f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(883f, arg_2.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * -1000f)) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.b, 1000f, arg_2.b, arg_2.b), vec4<f32>(1365f, arg_2.b, -969f, arg_2.b), vec4<bool>(arg_1.a, true, false, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1973f, -1496f, 434f, arg_2.b)))), !(!vec4<bool>(arg_1.a, true, arg_1.a, arg_1.a)))))));
    var_0 = _wgslsmith_mult_u32(~u_input.b, ~_wgslsmith_div_u32(u_input.b, _wgslsmith_mod_u32(14671u, u_input.b) & 4294967295u));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1671f, 646f)))))));
    let var_3 = true;
    return !arg_1.a;
}

fn func_1() -> u32 {
    let var_0 = any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, all(vec2<bool>(true, true)) && true), vec3<bool>(func_2(-61281i, Struct_2(false), Struct_1(vec2<i32>(1i, u_input.d.x), 1300f, vec3<i32>(global0.x, -6060i, u_input.a))), any(vec4<bool>(true, true, true, true)), true)));
    let var_1 = Struct_1(-(~(firstTrailingBit(vec2<i32>(global0.x, -16061i)) | _wgslsmith_add_vec2_i32(u_input.d.yx, vec2<i32>(2147483647i, 17308i)))), _wgslsmith_f_op_f32(trunc(-1003f)), firstTrailingBit(u_input.d.wxy));
    let var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 3330u), vec3<u32>(57756u, u_input.b, 7577u))), select(~(~vec2<u32>(4294967295u, u_input.b)), vec2<u32>(firstLeadingBit(u_input.b), u_input.b << (0u % 32u)), var_0)) << (vec2<u32>(~(~max(1u, 1u)), u_input.b) % vec2<u32>(32u));
    var var_3 = u_input.d.zw;
    let var_4 = var_1.b != _wgslsmith_div_f32(1216f, _wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.b)) * _wgslsmith_f_op_f32(var_1.b - var_1.b))));
    return ~var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(443f)))))), _wgslsmith_f_op_f32(f32(-1f) * -514f), false));
    global0 = u_input.c;
    global0 = u_input.c & u_input.c;
    var var_1 = !(true == (all(vec2<bool>(true, true)) != true));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1060f, var_0, var_0, 1606f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1291f, var_0, 1000f, var_0))))) - vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0))), var_0, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1010f - var_0)))));
    var var_3 = _wgslsmith_div_vec4_i32(select(~u_input.d, u_input.d, !(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true)))), vec4<i32>(-8153i, _wgslsmith_div_i32(_wgslsmith_sub_i32(select(global0.x, 2147483647i, true), -1i), global0.x), countOneBits(max(1i, -16580i)), global0.x));
    let var_4 = vec2<u32>(func_1() ^ ~52606u, ~0u);
    let var_5 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0 * 1191f))))));
}

