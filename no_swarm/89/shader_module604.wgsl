struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 28>;

var<private> global1: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(21317u, 1u), vec2<u32>(46052u, 48472u), vec2<u32>(40813u, 4294967295u), vec2<u32>(0u, 55628u), vec2<u32>(4294967295u, 58323u), vec2<u32>(1u, 87557u), vec2<u32>(1u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 15324u), vec2<u32>(31316u, 45526u), vec2<u32>(0u, 0u), vec2<u32>(5147u, 27158u), vec2<u32>(4294967295u, 0u), vec2<u32>(31453u, 6179u), vec2<u32>(4294967295u, 11968u), vec2<u32>(4294967295u, 439u), vec2<u32>(0u, 15464u), vec2<u32>(11749u, 13330u), vec2<u32>(58216u, 56623u), vec2<u32>(28918u, 21107u), vec2<u32>(45220u, 41422u), vec2<u32>(55526u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 14313u), vec2<u32>(52721u, 0u), vec2<u32>(54027u, 0u), vec2<u32>(0u, 66502u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2() -> Struct_3 {
    global1 = array<vec2<u32>, 28>();
    var var_0 = _wgslsmith_add_vec2_i32(-countOneBits(u_input.c.yz & vec2<i32>(1i, 26533i)), vec2<i32>(u_input.a, ~(-2147483647i))) >> (min(vec2<u32>(u_input.d.x, 0u), vec2<u32>(u_input.d.x, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(4294967295u, 30433u, u_input.d.x, u_input.d.x)), vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, 4294967295u) | u_input.d))) % vec2<u32>(32u));
    let var_1 = -220f;
    let var_2 = -688f;
    global1 = array<vec2<u32>, 28>();
    return Struct_3(vec3<bool>(true, false, u_input.b.x >= firstTrailingBit(0i)));
}

fn func_3(arg_0: bool) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1000f, 348f) - vec3<f32>(2139f, 1f, _wgslsmith_f_op_f32(abs(-1292f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1322f, -1000f), -771f, _wgslsmith_f_op_f32(min(-422f, 112f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-825f, 1135f, 1563f))))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-var_0.x), Struct_1(arg_0), ~vec4<u32>(_wgslsmith_div_u32(~u_input.d.x, max(14212u, u_input.d.x)), ~select(u_input.d.x, u_input.d.x, arg_0), 0u, u_input.d.x ^ u_input.d.x), vec4<u32>(~u_input.d.x << (~14028u % 32u), ~abs(u_input.d.x), ~u_input.d.x, u_input.d.x) | vec4<u32>(u_input.d.x, 46731u, 0u, 4294967295u));
    let var_2 = Struct_1(!arg_0);
    global1 = array<vec2<u32>, 28>();
    var_1 = Struct_2(_wgslsmith_f_op_f32(3050f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + _wgslsmith_f_op_f32(floor(-1980f))))), var_2, ~(~vec4<u32>(~1u, 4294967295u, var_1.d.x, u_input.d.x)), ~firstTrailingBit(abs(~vec4<u32>(u_input.d.x, 10989u, 4294967295u, var_1.d.x))));
    return vec4<u32>(var_1.c.x, 1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_add_u32(1u, u_input.d.x), abs(80440u)), abs(select(vec2<u32>(u_input.d.x, u_input.d.x), ~global1[_wgslsmith_index_u32(4294967295u, 28u)], vec2<bool>(true, arg_0)))), ~(var_1.c.x | var_1.d.x));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1) -> vec3<f32> {
    global1 = array<vec2<u32>, 28>();
    global0 = array<vec3<u32>, 28>();
    global0 = array<vec3<u32>, 28>();
    var var_0 = false;
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1022f, 1042f, 1479f) * vec3<f32>(1002f, -1492f, 463f)), vec3<f32>(-1676f, -1662f, -126f), true)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-2108f, 1248f, 1747f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -104f), _wgslsmith_f_op_f32(-1000f + 204f), 170f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1904f, 572f, 1662f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(450f, -932f, -1383f) + vec3<f32>(1000f, 519f, -541f)))))));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>) -> vec3<f32> {
    global1 = array<vec2<u32>, 28>();
    var var_0 = vec4<i32>(firstLeadingBit(-u_input.a), ~u_input.a, u_input.a, u_input.b.x);
    var_0 = vec4<i32>(-2147483647i, 20409i, -_wgslsmith_dot_vec3_i32(var_0.wxz, u_input.c.ywx), u_input.b.x);
    var var_1 = func_2();
    let var_2 = global1[_wgslsmith_index_u32(27151u, 28u)];
    return _wgslsmith_f_op_vec3_f32(func_4(countOneBits(max(func_3(true), ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_2.x, 4294967295u, 4294967295u), u_input.d))), Struct_1(false), Struct_1(var_1.a.x)));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<f32>) -> vec4<i32> {
    let var_0 = func_2();
    var var_1 = arg_1.x;
    global0 = array<vec3<u32>, 28>();
    let var_2 = vec4<i32>(_wgslsmith_clamp_i32(-u_input.b.x, ~((u_input.e ^ u_input.a) << (~33311u % 32u)), countOneBits(-24264i)), u_input.c.x, ~(-2147483647i), 0i);
    var var_3 = u_input.d.x;
    return _wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.b.x, i32(-1i) * -1i, var_2.x, var_2.x), abs(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(reverseBits(u_input.c), vec4<i32>(var_2.x, var_2.x, var_2.x, u_input.a), ~vec4<i32>(18984i, var_2.x, 21132i, u_input.a)), min(max(u_input.c, vec4<i32>(var_2.x, 0i, 0i, u_input.c.x)), vec4<i32>(u_input.a, 0i, u_input.b.x, var_2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 28>();
    global0 = array<vec3<u32>, 28>();
    let var_0 = ~firstTrailingBit(vec3<u32>(~(~14954u), _wgslsmith_div_u32(32389u, u_input.d.x >> (u_input.d.x % 32u)), ~(u_input.d.x << (1u % 32u))));
    global0 = array<vec3<u32>, 28>();
    global0 = array<vec3<u32>, 28>();
    global0 = array<vec3<u32>, 28>();
    let var_1 = u_input.d;
    global1 = array<vec2<u32>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.d.x, 1u, 43584u, 61745u)), ~u_input.d, ~vec4<u32>(4294967295u, var_1.x, 85737u, 46146u))), ~25035i, func_5(_wgslsmith_f_op_vec3_f32(func_1(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-443f, -927f, -190f, -1580f)))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(563f * _wgslsmith_f_op_f32(ceil(-937f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -435f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-195f, -344f, -986f, -790f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-1330f, 206f, 1000f, -645f), vec4<f32>(1451f, 1048f, 1000f, 236f))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(476f, 395f, -987f, -227f) + vec4<f32>(-429f, -1496f, 1359f, 261f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(2029f, 291f, -772f, -1294f), vec4<f32>(261f, -524f, -819f, -1500f), true))), vec4<f32>(_wgslsmith_f_op_f32(185f * 2255f), _wgslsmith_div_f32(-1000f, 1493f), -617f, _wgslsmith_div_f32(820f, -732f)), true))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -450f) * 336f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(784f - -295f)))), _wgslsmith_f_op_f32(1f * -1019f)));
}

