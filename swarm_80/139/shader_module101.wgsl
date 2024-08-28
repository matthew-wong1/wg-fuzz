struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7>;

var<private> global1: u32 = 19644u;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> vec2<u32> {
    let var_0 = 1u;
    var var_1 = Struct_4(_wgslsmith_clamp_vec2_u32(countOneBits(~reverseBits(u_input.c.yz)), vec2<u32>(countOneBits(29283u), select(4294967295u, var_0, true)), u_input.c.zw), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_div_vec4_f32(vec4<f32>(815f, 1996f, -1010f, -613f), vec4<f32>(1363f, -1010f, -1016f, 773f))) * vec4<f32>(_wgslsmith_f_op_f32(floor(-1547f)), _wgslsmith_f_op_f32(683f * -630f), 1517f, _wgslsmith_f_op_f32(374f * 2602f))))));
    global0 = array<Struct_2, 7>();
    let var_2 = arg_0.b.x;
    var_1 = Struct_4((u_input.a.zy >> (_wgslsmith_clamp_vec2_u32(var_1.a, select(vec2<u32>(var_1.a.x, 49867u), var_1.a, false), max(var_1.a, vec2<u32>(0u, var_0))) % vec2<u32>(32u))) & _wgslsmith_div_vec2_u32(~max(var_1.a, u_input.a.yy), ~max(u_input.c.xx, var_1.a)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -576f), _wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_div_f32(-875f, var_1.b.x), -414f, var_1.b.x));
    return abs(firstTrailingBit(firstLeadingBit(u_input.c.xy)));
}

fn func_2(arg_0: Struct_1) -> bool {
    global1 = _wgslsmith_dot_vec2_u32(func_3(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.b, reverseBits(u_input.a.x)), u_input.c.x), 7u)]), ~(u_input.a.zy >> (~max(vec2<u32>(1u, 1u), vec2<u32>(u_input.b, u_input.a.x)) % vec2<u32>(32u))));
    var var_0 = arg_0;
    let var_1 = countOneBits(vec4<i32>(0i | -u_input.d, u_input.d, -abs(143i), -arg_0.b.x));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1536f, -335f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-931f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), 1f);
    let var_3 = ~(~u_input.c.x);
    return true;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_3) -> vec3<u32> {
    global1 = (_wgslsmith_dot_vec2_u32(u_input.c.wz, vec2<u32>(~64219u, 16992u >> (u_input.c.x % 32u))) >> (~u_input.b % 32u)) ^ 1503u;
    let var_0 = _wgslsmith_f_op_f32(673f + 1002f);
    global0 = array<Struct_2, 7>();
    var var_1 = ~_wgslsmith_clamp_u32(abs(~(u_input.a.x & 0u)), _wgslsmith_mod_u32(abs(1u), ~u_input.c.x), (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 0u, 4294967295u), vec3<u32>(1u, 45839u, 1u)) & u_input.a.x) & max(4294967295u >> (u_input.b % 32u), abs(16091u)));
    let var_2 = -863f;
    return ~((abs(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)) << ((vec3<u32>(42036u, 4294967295u, 9799u) & vec3<u32>(u_input.b, 53384u, 4294967295u)) % vec3<u32>(32u))) ^ u_input.c.wzz);
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    var var_0 = vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b, 30339u), ~u_input.a.x), u_input.a.x, 0u), 713u, ~u_input.a.x);
    var var_1 = true | !(_wgslsmith_f_op_f32(-1102f - 174f) < _wgslsmith_f_op_f32(step(-1295f, _wgslsmith_f_op_f32(f32(-1f) * -522f))));
    var_0 = min(~vec3<u32>(1u, _wgslsmith_add_u32(~var_0.x, abs(var_0.x)), ~u_input.a.x), func_4(-2498f, func_2(Struct_1(vec4<bool>(arg_0.x, false, true, false), vec4<i32>(-20925i, -4347i, u_input.d, u_input.d), 16347i | u_input.d)), Struct_3(global0[_wgslsmith_index_u32(var_0.x, 7u)], -1487f)));
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(-453f, 1213f), 1382f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-239f, -1000f) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1322f, 227f), vec2<f32>(-450f, 1348f)))))))));
    var var_3 = vec3<bool>(any(!vec4<bool>(false, arg_0.x, arg_0.x, var_2.x >= var_2.x)), all(select(!(!vec3<bool>(true, arg_0.x, false)), !arg_0.wxw, arg_0.wwx)), 947f >= var_2.x);
    return ~0u;
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: vec3<bool>) -> StorageBuffer {
    var var_0 = _wgslsmith_mod_vec2_u32(~u_input.c.xz | abs(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, arg_0), vec2<u32>(arg_0, 26915u)) ^ vec2<u32>(0u, arg_0)), vec2<u32>(~(abs(u_input.b) & (arg_0 << (u_input.b % 32u))), arg_0));
    let var_1 = ~(u_input.a.xw & (func_4(arg_1.b, all(arg_2), Struct_3(Struct_2(arg_1.a.a, arg_1.a.a.b.yx, arg_1.a.c, Struct_1(vec4<bool>(arg_2.x, false, arg_2.x, true), arg_1.a.d.b, 1i), Struct_1(arg_1.a.d.a, arg_1.a.e.b, -56368i)), arg_1.b)).yy >> ((u_input.c.xy >> (u_input.c.zz % vec2<u32>(32u))) % vec2<u32>(32u))));
    global1 = u_input.a.x;
    var var_2 = arg_1.a.e;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b, _wgslsmith_f_op_f32(f32(-1f) * -610f)) - _wgslsmith_f_op_f32(sign(arg_1.b)));
    return StorageBuffer(~1u, arg_1.a.e.c, max(_wgslsmith_mod_vec3_u32(vec3<u32>(abs(var_0.x), _wgslsmith_div_u32(var_0.x, u_input.b), 51613u), ~vec3<u32>(11569u, var_1.x, 1u)), abs(vec3<u32>(min(23172u, 1u), firstTrailingBit(var_1.x), _wgslsmith_dot_vec4_u32(u_input.a, u_input.c)))), ~var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_1(vec4<bool>(all(vec3<bool>(false, false, false)), true, true, -2147483647i == u_input.d)) | 1u, Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, true, false), ~vec4<i32>(u_input.d, u_input.d, u_input.d, -1i), -1i), ~vec2<i32>(-76141i, -33691i) >> (~u_input.a.wz % vec2<u32>(32u)), Struct_1(vec4<bool>(true, false, false, false), abs(vec4<i32>(-56578i, -2147483647i, u_input.d, 10109i)), -u_input.d), Struct_1(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), true), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d), vec4<i32>(u_input.d, u_input.d, u_input.d, 41564i), vec4<i32>(0i, u_input.d, u_input.d, u_input.d)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.d, u_input.d), vec3<i32>(u_input.d, 2147483647i, u_input.d))), Struct_1(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false)), _wgslsmith_add_vec4_i32(vec4<i32>(33237i, u_input.d, u_input.d, 31839i), vec4<i32>(u_input.d, u_input.d, 1i, u_input.d)), abs(u_input.d))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-696f, 130f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1506f * 629f) - -471f), false))), vec3<bool>(true, any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false))), any(vec2<bool>(true, true)) | !any(vec4<bool>(false, true, false, true))));
}

