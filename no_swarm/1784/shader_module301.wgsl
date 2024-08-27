struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<f32>, 32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: vec2<i32>, arg_3: i32) -> u32 {
    var var_0 = Struct_3(vec2<f32>(-670f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-540f - _wgslsmith_f_op_f32(f32(-1f) * -823f)))));
    global1 = array<vec3<f32>, 32>();
    global0 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(48716u, global0.a, abs(_wgslsmith_sub_u32(15805u, global0.a)), u_input.b), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, global0.a, u_input.d, u_input.c), vec4<u32>(840u, 4294967295u, u_input.b, u_input.d), vec4<u32>(global0.a, global0.a, u_input.b, 1u)), vec4<u32>(4294967295u, 4294967295u, 1u, global0.a)) | vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 12724u, 69817u), vec4<u32>(u_input.b, 0u, u_input.c, 65779u)), firstTrailingBit(global0.a), ~global0.a, min(76u, global0.a))));
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(abs(var_0.a)));
    return u_input.d;
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_2) -> vec3<bool> {
    global1 = array<vec3<f32>, 32>();
    global1 = array<vec3<f32>, 32>();
    let var_0 = -_wgslsmith_mod_vec4_i32(~u_input.a, ~vec4<i32>(u_input.a.x, arg_1.x, -18159i, arg_1.x)) >> (firstTrailingBit(vec4<u32>(9067u, abs(arg_0), 69770u, max(4294967295u, func_3(vec4<bool>(true, true, false, false), true, vec2<i32>(11893i, u_input.a.x), -1i)))) % vec4<u32>(32u));
    let var_1 = vec2<u32>(77133u, ~arg_0);
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.a)) * arg_2.a)), arg_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.a)) * _wgslsmith_f_op_f32(trunc(arg_2.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1477f), -941f)) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-728f, arg_2.a, _wgslsmith_f_op_f32(f32(-1f) * -640f), _wgslsmith_f_op_f32(-arg_2.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 977f, 101f, -746f))))))));
    return vec3<bool>(true, !(arg_1.x == (~u_input.a.x >> (u_input.c % 32u))), true);
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: Struct_1) -> bool {
    let var_0 = arg_3.a;
    let var_1 = select(vec4<bool>(true, true, true, true), vec4<bool>(false, firstTrailingBit(_wgslsmith_dot_vec3_i32(u_input.a.xwz, u_input.a.xzy)) <= firstTrailingBit(~u_input.a.x), any(select(vec3<bool>(true, true, true), func_2(u_input.d, vec2<i32>(2147483647i, -2147483647i), Struct_2(arg_1.a.x)), false)), false), true);
    let var_2 = vec3<f32>(-798f, _wgslsmith_f_op_f32(floor(arg_1.a.x)), 594f);
    let var_3 = arg_3;
    var var_4 = all(var_1.ywy) & (var_1.x || (437f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1493f + var_2.x))));
    return select(var_1.x, !any(!select(vec3<bool>(true, false, var_1.x), var_1.zxy, var_1.x)), false);
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: vec4<u32>, arg_3: vec2<f32>) -> u32 {
    var var_0 = Struct_4(vec3<i32>(-(_wgslsmith_mod_i32(2147483647i, u_input.a.x) & u_input.a.x), -8819i, u_input.a.x));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(min(arg_1.yz, arg_1.yy)));
    let var_2 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1593f)))), true)), 372f));
    var var_3 = arg_2;
    global0 = Struct_1(_wgslsmith_mod_u32(u_input.b, max(~17470u, (global0.a >> (4294967295u % 32u)) << (_wgslsmith_add_u32(0u, global0.a) % 32u))));
    return reverseBits(_wgslsmith_mult_u32(18708u, 3731u));
}

fn func_5(arg_0: u32, arg_1: vec3<i32>, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(602f, -1534f) + _wgslsmith_f_op_f32(round(2443f))) - 1597f) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(281f)) + _wgslsmith_f_op_f32(-1170f + -839f)), -289f), any(vec3<bool>(true, true, true)));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1171f + -443f), _wgslsmith_f_op_f32(trunc(749f))))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-229f)) * _wgslsmith_div_f32(1299f, 604f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1894f)))))));
    let var_2 = -39219i;
    global1 = array<vec3<f32>, 32>();
    let var_3 = global0.a;
    return Struct_1(_wgslsmith_div_u32(1870u, global0.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_4(func_1(_wgslsmith_div_i32(0i, u_input.a.x), Struct_3(vec2<f32>(1153f, -1237f)), vec2<i32>(0i, 1i), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.c, u_input.b), vec3<u32>(u_input.d, global0.a, u_input.c)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-168f, -165f, 377f), vec3<f32>(915f, -521f, 750f)) + _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(49017u, 32u)] - global1[_wgslsmith_index_u32(global0.a, 32u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1357f, -674f, -197f) + global1[_wgslsmith_index_u32(32637u, 32u)]))), ~(~vec4<u32>(41145u, 0u, global0.a, global0.a) << (~vec4<u32>(u_input.c, 54589u, global0.a, u_input.b) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1000f - 1028f), _wgslsmith_f_op_f32(-1983f - 1920f)) + vec2<f32>(_wgslsmith_f_op_f32(ceil(-559f)), _wgslsmith_f_op_f32(max(-740f, -250f))))), vec3<i32>(abs(1i), ~(~8837i), u_input.a.x) ^ u_input.a.wxw, reverseBits(_wgslsmith_div_vec4_i32(-(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x) >> (vec4<u32>(u_input.b, u_input.c, global0.a, 2221u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -31244i, u_input.a.x) ^ u_input.a, -u_input.a))));
    global0 = Struct_1(~_wgslsmith_mod_u32(func_5(u_input.b, u_input.a.xxw, vec4<i32>(-45016i, -2147483647i, 0i, 0i)).a, 1u) >> (_wgslsmith_sub_u32(1u, min(~u_input.c, 53674u | u_input.c)) % 32u));
    global0 = func_5(_wgslsmith_clamp_u32(~4294967295u, min(45703u, countOneBits(4294967295u)), ~u_input.d), firstLeadingBit(u_input.a.zxx), vec4<i32>(_wgslsmith_mult_i32(min(2147483647i, 0i), 19975i) >> (global0.a % 32u), ~min(41661i, ~u_input.a.x), _wgslsmith_dot_vec2_i32(select(u_input.a.xy, u_input.a.xy, vec2<bool>(true, true)) ^ _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-32148i, u_input.a.x)), -_wgslsmith_div_vec2_i32(u_input.a.zz, u_input.a.ww)), u_input.a.x));
    var var_0 = Struct_1(~countOneBits(abs(~u_input.c)));
    var var_1 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(-_wgslsmith_dot_vec2_i32(u_input.a.yz >> (vec2<u32>(global0.a, var_0.a) % vec2<u32>(32u)), vec2<i32>(u_input.a.x, -35872i))), u_input.a, ~countOneBits(global0.a));
}

