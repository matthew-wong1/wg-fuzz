struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(2147483647i, -8266i, 0i);

var<private> global1: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(26434u, 1u), vec2<u32>(36508u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(21446u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(24523u, 0u), vec2<u32>(24581u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(18454u, 0u), vec2<u32>(77003u, 47567u), vec2<u32>(1u, 15847u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 45211u), vec2<u32>(27938u, 57816u), vec2<u32>(19214u, 79320u), vec2<u32>(1u, 0u), vec2<u32>(22978u, 62902u));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>) -> vec2<f32> {
    global1 = array<vec2<u32>, 17>();
    var var_0 = Struct_3(Struct_2(Struct_1(arg_1, _wgslsmith_f_op_f32(round(arg_1.x)) != 772f, 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))));
    var_0 = Struct_3(Struct_2(Struct_1(vec2<f32>(159f, -565f), true, firstLeadingBit(u_input.d.x) >> (_wgslsmith_dot_vec3_u32(u_input.d, u_input.d) % 32u), _wgslsmith_f_op_f32(-arg_1.x))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a.a.x, -1822f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1 + vec2<f32>(-1401f, var_0.a.a.a.x)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(arg_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-145f, -114f))))))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32, arg_3: vec4<u32>) -> vec3<bool> {
    var var_0 = Struct_4(countOneBits(abs(~firstTrailingBit(1u))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_2(1i, vec2<f32>(arg_1.a.x, arg_1.a.x))).x, _wgslsmith_f_op_f32(max(-708f, -1285f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(-2147483647i, vec2<f32>(arg_1.d, -578f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(755f, arg_1.d) + vec2<f32>(arg_1.d, -1164f)))), arg_1.b, arg_1.c, 1174f), ~vec3<u32>(_wgslsmith_div_u32(u_input.c, 13039u), 31138u, ~arg_1.c), ~(~firstLeadingBit(reverseBits(vec3<u32>(4294967295u, arg_3.x, arg_1.c)))));
    let var_1 = !(!select(select(vec3<bool>(true, true, var_0.b.b), !vec3<bool>(arg_1.b, false, var_0.b.b), any(vec3<bool>(arg_1.b, false, true))), !vec3<bool>(arg_1.b, var_0.b.b, arg_1.b), vec3<bool>(true, var_0.b.b != var_0.b.b, true)));
    global1 = array<vec2<u32>, 17>();
    let var_2 = _wgslsmith_f_op_f32(select(var_0.b.d, -470f, arg_1.b && all(vec3<bool>(arg_1.b, true, arg_1.b))));
    var_0 = Struct_4(32434u, var_0.b, abs(vec3<u32>(28231u, ~_wgslsmith_sub_u32(26175u, arg_3.x), max(1u, ~21619u))), _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(var_0.c.x, 31171u, 38253u)), _wgslsmith_add_vec3_u32(~u_input.d, arg_3.wzw), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(arg_1.c, var_0.a, arg_1.c)), vec3<u32>(1u, var_0.c.x, ~0u))));
    return select(!vec3<bool>(var_0.b.b, true, true), vec3<bool>(!all(vec2<bool>(var_1.x, false)), any(vec3<bool>(var_0.b.b, arg_1.b, arg_1.b)), all(!vec3<bool>(arg_1.b, false, true))), true);
}

fn func_1() -> f32 {
    global1 = array<vec2<u32>, 17>();
    let var_0 = select(!vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, false), true)), true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)))), func_3(-global0.yx, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(10475i, vec2<f32>(-1179f, 740f))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2213f, -1381f), vec2<f32>(-348f, -963f)))), select(all(vec2<bool>(false, true)), true, true), ~4294967295u & ~u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(479f - 119f))), global0.x, u_input.a), true);
    global0 = ~vec3<i32>(_wgslsmith_mod_i32(abs(-global0.x), 1i), _wgslsmith_dot_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(global0.x, -1i), vec2<i32>(global0.x, global0.x)), global0.zy), select(-(~6339i), global0.x, !var_0.x));
    var var_1 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -583f), 279f, var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -347f) + _wgslsmith_f_op_f32(515f - 529f))), vec2<f32>(_wgslsmith_f_op_f32(min(2188f, _wgslsmith_f_op_f32(f32(-1f) * -100f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(879f)) - _wgslsmith_f_op_f32(-1892f * 1080f)))), (!(!var_0.x) & !(!var_0.x)) == false, u_input.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-199f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -389f)))));
    var var_2 = select(select(select(!select(vec4<bool>(var_1.b, var_1.b, false, true), vec4<bool>(false, var_0.x, true, false), vec4<bool>(false, false, false, var_0.x)), !vec4<bool>(var_0.x, false, var_0.x, true), select(!vec4<bool>(var_0.x, false, var_1.b, var_1.b), select(vec4<bool>(false, var_1.b, var_1.b, var_1.b), vec4<bool>(var_0.x, var_1.b, var_0.x, var_0.x), vec4<bool>(var_1.b, var_0.x, false, var_0.x)), !var_0.x)), vec4<bool>(true, var_1.b, var_0.x, var_0.x), select(select(!vec4<bool>(var_1.b, var_1.b, var_1.b, true), !vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(true, var_0.x, false, true)), select(select(vec4<bool>(var_1.b, false, true, var_0.x), vec4<bool>(var_1.b, var_1.b, var_0.x, false), vec4<bool>(var_1.b, true, var_0.x, var_1.b)), select(vec4<bool>(true, var_0.x, false, false), vec4<bool>(var_1.b, var_1.b, false, var_0.x), true), !var_0.x), !select(vec4<bool>(var_1.b, var_1.b, var_1.b, false), vec4<bool>(var_1.b, var_1.b, true, var_0.x), var_1.b))), !vec4<bool>(!var_1.b, var_1.b, false || select(false, true, var_0.x), !var_0.x), false);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x * var_1.a.x) + -725f))), 471f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(max(163f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1951f, 2543f), _wgslsmith_f_op_f32(f32(-1f) * -1222f))), _wgslsmith_f_op_f32(ceil(-459f)), true)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -726f), _wgslsmith_f_op_f32(func_1())))));
    var var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, -746f), vec2<f32>(var_0.x, var_0.x))))), true, 1u, _wgslsmith_f_op_f32(-111f * 1148f))));
    global1 = array<vec2<u32>, 17>();
    var var_2 = var_1.a.a;
    var var_3 = global0.xx;
    global1 = array<vec2<u32>, 17>();
    var var_4 = _wgslsmith_mult_vec2_u32(global1[_wgslsmith_index_u32(20496u, 17u)], vec2<u32>(u_input.a.x, ~0u)) & u_input.a.xx;
    var var_5 = -(~vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(37758i, global0.x), var_3.x, global0.x), -(-43828i >> (0u % 32u))));
    var var_6 = var_1.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<u32>(min(_wgslsmith_mult_u32(66225u, 4422u), u_input.c), _wgslsmith_mult_u32(~u_input.c, _wgslsmith_add_u32(var_2.c, 13775u)), _wgslsmith_dot_vec3_u32(~u_input.a.wyz, vec3<u32>(var_6.c, 13981u, 41265u))), u_input.a.yyw, select(vec3<bool>(true, true, true), vec3<bool>(true, var_6.b, var_2.b && true), !all(vec2<bool>(var_6.b, var_1.a.a.b)))), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_add_i32(reverseBits(global0.x), i32(-1i) * -24259i), -(~(-1i)), _wgslsmith_div_i32(1i, -global0.x)), _wgslsmith_div_vec3_i32(vec3<i32>(reverseBits(var_5.x), var_3.x, _wgslsmith_add_i32(-1i, -40083i)), vec3<i32>(i32(-1i) * -2394i, var_3.x >> (1u % 32u), _wgslsmith_add_i32(var_5.x, 1i)))));
}

