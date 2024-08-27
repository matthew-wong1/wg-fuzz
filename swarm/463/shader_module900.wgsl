struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(-1i, 20287i), 1u, vec4<bool>(true, true, true, false));

var<private> global1: Struct_1 = Struct_1(vec2<i32>(0i, -55613i), 0u, vec4<bool>(true, true, false, true));

var<private> global2: f32 = -932f;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: bool, arg_3: u32) -> i32 {
    global0 = arg_0;
    let var_0 = Struct_1(arg_0.a & firstLeadingBit(global1.a), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(13321u, 4294967295u, 20203u), vec3<u32>(u_input.b, 25239u, arg_0.b), global0.c.x), _wgslsmith_div_vec3_u32(vec3<u32>(0u, global1.b, arg_3), vec3<u32>(u_input.b, 1u, global1.b))), _wgslsmith_mult_u32(select(1724u, 0u, arg_2), 60802u | global0.b)), ~abs(min(u_input.a, vec2<u32>(1u, arg_0.b)))), select(vec4<bool>(true, true, true, abs(1u) >= _wgslsmith_mod_u32(global1.b, arg_0.b)), vec4<bool>(all(vec4<bool>(true, global0.c.x, arg_0.c.x, arg_2)) | global0.c.x, arg_0.c.x, true, false), vec4<bool>(!global1.c.x, false, all(vec3<bool>(arg_0.c.x, arg_2, false)), false)));
    let var_1 = select(vec3<i32>(_wgslsmith_mult_i32(0i, arg_0.a.x), -55105i, -62227i), ~arg_1, var_0.c.wwx) & arg_1;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-232f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1157f, 701f))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(263f - 180f))), _wgslsmith_f_op_f32(f32(-1f) * -393f))));
    var var_3 = any(select(vec3<bool>(arg_0.c.x, !arg_0.c.x, arg_0.c.x), !vec3<bool>(1u > arg_3, false, true), vec3<bool>(global1.c.x, any(select(arg_0.c.zz, arg_0.c.zz, true)), false)));
    return -1i;
}

fn func_2() -> i32 {
    return countOneBits(func_3(Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, u_input.c), vec2<i32>(u_input.c, u_input.c)), global1.a), ~_wgslsmith_mod_u32(u_input.b, u_input.b), !(!vec4<bool>(global0.c.x, global1.c.x, false, global1.c.x))), vec3<i32>(~countOneBits(0i), -1i, u_input.c), any(global1.c.zxz) & global1.c.x, 4294967295u));
}

fn func_1(arg_0: bool) -> vec3<u32> {
    let var_0 = ~(-_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global1.a.x, global1.a.x, global0.a.x, 31603i), -vec4<i32>(u_input.c, -8801i, global1.a.x, global1.a.x)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -15823i, u_input.c, 2147483647i), vec4<i32>(global0.a.x, global1.a.x, -2105i, 2147483647i)), _wgslsmith_add_i32(global1.a.x, global1.a.x), func_2(), global1.a.x >> (1u % 32u))));
    var var_1 = any(select(vec2<bool>(false, any(!vec3<bool>(true, true, global1.c.x))), global1.c.wx, global0.c.x));
    global1 = Struct_1(-(~firstTrailingBit(global1.a)), ~0u, !select(!vec4<bool>(false, true, false, arg_0), select(global0.c, !global0.c, select(arg_0, true, arg_0)), false));
    var var_2 = Struct_1(global0.a, u_input.a.x, !select(!(!global1.c), global1.c, abs(var_0) > ~(-2147483647i)));
    global0 = Struct_1(var_2.a, var_2.b, !var_2.c);
    return ~firstTrailingBit(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(42334u, global0.b, var_2.b), vec3<u32>(58225u, 30984u, var_2.b), select(vec3<bool>(false, false, var_2.c.x), global0.c.xxz, global0.c.xzz)), max(vec3<u32>(0u, 4294967295u, global0.b), abs(vec3<u32>(31401u, 1u, global1.b))), vec3<u32>(u_input.a.x, var_2.b, _wgslsmith_div_u32(u_input.a.x, 4294967295u))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), -2030f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(max(475f, 2064f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-473f, -457f, arg_0.x) + vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -813f))), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(step(arg_0.x, 1000f))), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(trunc(-326f))))));
    global1 = arg_2;
    global1 = arg_2;
    global0 = arg_2;
    let var_1 = 666f;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(302f, -224f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(902f, -1000f)) - _wgslsmith_div_vec2_f32(vec2<f32>(378f, -1445f), vec2<f32>(-572f, 1124f)))))), func_1(true) & ~select(vec3<u32>(global0.b, 4428u, u_input.a.x) ^ vec3<u32>(0u, 1u, global0.b), reverseBits(vec3<u32>(u_input.b, global1.b, global0.b)), all(global0.c.yz)), Struct_1(-(~vec2<i32>(global1.a.x, -2147483647i) | vec2<i32>(17877i, -1i)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, global1.b, 10060u) ^ vec3<u32>(0u, 4294967295u, 41915u), _wgslsmith_mod_vec3_u32(vec3<u32>(global1.b, 79629u, 0u), vec3<u32>(u_input.a.x, 10415u, u_input.a.x))), select(vec4<bool>(true, global1.c.x, any(vec4<bool>(false, global1.c.x, false, false)), false), vec4<bool>(any(vec4<bool>(global1.c.x, true, false, global0.c.x)), false, !global0.c.x, false), true)));
    var var_0 = vec2<u32>(~_wgslsmith_div_u32(~u_input.b, max(u_input.a.x, 1u)) & 37319u, global1.b & 14175u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(639f, 198f, -110f) - vec3<f32>(968f, -859f, -1330f)), vec3<f32>(800f, 169f, -799f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(507f, _wgslsmith_f_op_f32(select(1000f, 1760f, false)), -430f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1180f, -1070f, -448f))))), vec4<i32>(_wgslsmith_add_i32(~u_input.c, firstLeadingBit(global1.a.x)), 10945i, -54898i, firstTrailingBit(u_input.c) << (_wgslsmith_dot_vec4_u32(vec4<u32>(39127u, global0.b, u_input.a.x, 38755u), vec4<u32>(var_0.x, 7139u, 1u, global1.b)) % 32u)) & vec4<i32>(global1.a.x, -_wgslsmith_div_i32(-42598i, u_input.c), _wgslsmith_mult_i32(u_input.c, global0.a.x) | abs(global1.a.x), -10374i), _wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(1u | var_0.x, ~1u)), select(u_input.a, vec2<u32>(1u, ~60876u), func_4(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2054f, 697f))), abs(vec3<u32>(u_input.b, global1.b, 1u)), func_4(vec2<f32>(-1000f, -381f), vec3<u32>(31313u, global1.b, global0.b), Struct_1(global1.a, 0u, vec4<bool>(global1.c.x, false, true, global0.c.x)))).c.x)));
}

