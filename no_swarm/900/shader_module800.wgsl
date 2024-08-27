struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 22>;

var<private> global1: array<vec4<f32>, 31> = array<vec4<f32>, 31>(vec4<f32>(683f, -345f, 1743f, -463f), vec4<f32>(-173f, -2112f, -881f, -191f), vec4<f32>(1301f, -723f, -107f, -103f), vec4<f32>(1369f, -2045f, -1360f, -293f), vec4<f32>(1000f, -624f, 817f, 408f), vec4<f32>(-183f, 219f, 1448f, 1060f), vec4<f32>(393f, -123f, -2412f, -125f), vec4<f32>(-245f, 1353f, -1378f, -751f), vec4<f32>(-297f, -962f, -1456f, -670f), vec4<f32>(755f, -1269f, 496f, 1000f), vec4<f32>(-733f, -937f, 100f, 1408f), vec4<f32>(1684f, 1724f, 618f, -1396f), vec4<f32>(-770f, -1123f, 942f, -1074f), vec4<f32>(-1074f, 443f, 1417f, 529f), vec4<f32>(-267f, 1090f, -1336f, 894f), vec4<f32>(1002f, 263f, 884f, -576f), vec4<f32>(656f, -1235f, -613f, 802f), vec4<f32>(-1000f, -691f, -547f, -1000f), vec4<f32>(-600f, 978f, -1569f, 2091f), vec4<f32>(-1000f, 1000f, 1087f, 474f), vec4<f32>(305f, -1009f, -212f, -1165f), vec4<f32>(-1986f, 564f, -1232f, -1550f), vec4<f32>(1000f, -1586f, 294f, -1000f), vec4<f32>(426f, 976f, 306f, -685f), vec4<f32>(812f, 1155f, -579f, -971f), vec4<f32>(-1623f, -116f, 754f, -663f), vec4<f32>(-329f, -195f, 1306f, -452f), vec4<f32>(1759f, 846f, -827f, -225f), vec4<f32>(1148f, -1547f, 1390f, 704f), vec4<f32>(1000f, -418f, -1000f, 562f), vec4<f32>(1193f, 1000f, 1000f, 1000f));

var<private> global2: array<vec2<f32>, 8> = array<vec2<f32>, 8>(vec2<f32>(883f, -473f), vec2<f32>(-902f, 1004f), vec2<f32>(1326f, -401f), vec2<f32>(949f, -1159f), vec2<f32>(-773f, -1363f), vec2<f32>(324f, -608f), vec2<f32>(610f, -778f), vec2<f32>(-419f, -1372f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(_wgslsmith_add_u32(0u, _wgslsmith_dot_vec3_u32(firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 4294967295u, u_input.a))), min(~vec3<u32>(u_input.a, 31114u, 80273u), firstLeadingBit(vec3<u32>(u_input.a, u_input.a, 32104u))))), vec4<u32>(~51356u >> (min(reverseBits(u_input.a), u_input.a) % 32u), _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a, 4294967295u), _wgslsmith_mult_u32(17953u, 46781u)), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 17697u), vec2<u32>(1u, 13942u)))), 69570u, firstTrailingBit(u_input.a)), vec3<u32>(_wgslsmith_div_u32(abs(1u), ~u_input.a), 39313u, u_input.a << (u_input.a % 32u)) & _wgslsmith_div_vec3_u32(firstTrailingBit(abs(vec3<u32>(u_input.a, u_input.a, u_input.a))), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 1u, 47629u), ~vec3<u32>(u_input.a, 110491u, u_input.a))));
    var_0 = Struct_1(u_input.a, _wgslsmith_sub_vec4_u32(vec4<u32>(~0u, ~19642u, 16174u >> (var_0.c.x % 32u), 9997u), var_0.b) | ~(~(~var_0.b)), vec3<u32>(var_0.a, 42285u, 21185u));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1850f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(666f + -1580f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2163f, -1238f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1537f))))), 1202f);
    let var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(-41202i, 4385i, 58197i, 22971i), vec4<i32>(-42436i, -1i, 1794i, -5964i))), vec4<i32>(-1i) * -(~vec4<i32>(-1i, 44933i, 0i, 12613i))), _wgslsmith_mult_i32(_wgslsmith_mult_i32(1i, firstLeadingBit(~0i)), _wgslsmith_sub_i32(1i, _wgslsmith_mod_i32(abs(1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(-1i, 9051i))))), ~1321i | (~1i >> (~(~u_input.a) % 32u)), 1i);
    global2 = array<vec2<f32>, 8>();
    return var_0.b.x;
}

fn func_2() -> Struct_3 {
    let var_0 = true;
    global1 = array<vec4<f32>, 31>();
    global0 = array<vec4<f32>, 22>();
    var var_1 = select(~1u, u_input.a, var_0 | var_0);
    let var_2 = Struct_2(Struct_1((~13846u ^ func_3()) ^ select(~u_input.a, u_input.a, var_0), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, ~u_input.a, ~85080u, 1u), ~(~vec4<u32>(1u, 21488u, 12806u, u_input.a))), firstTrailingBit(~(~vec3<u32>(u_input.a, 0u, u_input.a)))), ~28057u, firstLeadingBit(_wgslsmith_clamp_i32(select(_wgslsmith_div_i32(-3961i, -1i), -2147483647i >> (1u % 32u), true), ~(-6176i), 0i)));
    return Struct_3(!(!select(vec4<bool>(var_0, true, var_0, true), vec4<bool>(true, false, var_0, var_0), vec4<bool>(true, var_0, var_0, false))), func_3(), var_0);
}

fn func_1(arg_0: vec3<f32>) -> vec3<i32> {
    global1 = array<vec4<f32>, 31>();
    let var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-728f, 783f) - _wgslsmith_f_op_vec2_f32(-arg_0.xx))))), arg_0.zy, var_0.a.wx));
    let var_2 = vec4<i32>(-16693i, 1i, _wgslsmith_div_i32(0i, ~firstLeadingBit(41159i)), _wgslsmith_sub_i32(select(-5930i, 1i, true), ~(_wgslsmith_clamp_i32(-14528i, -1i, 23631i) & 1i)));
    global2 = array<vec2<f32>, 8>();
    return var_2.xyz | vec3<i32>(74725i, -2147483647i, var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(u_input.a, vec4<u32>(u_input.a, ~(~4294967295u), 28720u, firstLeadingBit(~u_input.a)), vec3<u32>(reverseBits(u_input.a), ~4294967295u, 1u)), u_input.a, countOneBits(0i) ^ _wgslsmith_dot_vec3_i32(-func_1(vec3<f32>(556f, 1029f, 168f)), select(~vec3<i32>(2147483647i, 1i, 14372i), ~vec3<i32>(27712i, 2147483647i, 0i), vec3<bool>(true, true, true))));
    global1 = array<vec4<f32>, 31>();
    var var_1 = ~_wgslsmith_sub_i32(var_0.c, -69414i);
    global2 = array<vec2<f32>, 8>();
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-634f - 469f))), 915f, true))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1272f * _wgslsmith_f_op_f32(ceil(-733f))), _wgslsmith_f_op_f32(floor(-1118f)), true)), _wgslsmith_f_op_f32(step(181f, 675f)))), -314f, _wgslsmith_f_op_f32(round(790f)));
    var var_3 = var_2.x;
    var_1 = reverseBits(firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_mod_i32(var_0.c, 2147483647i), -2147483647i))) << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 27745u, 66846u), vec3<u32>(_wgslsmith_add_u32(u_input.a, ~u_input.a), ~var_0.a.b.x & (u_input.a << (var_0.b % 32u)), firstTrailingBit(~u_input.a))) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(1280f, 46306u);
}

