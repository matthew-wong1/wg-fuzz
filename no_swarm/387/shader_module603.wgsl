struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec4<bool>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 16481u, 28180u, 1u);

var<private> global1: array<u32, 18>;

var<private> global2: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(1126f, 52677u, Struct_1(vec2<f32>(1103f, 1000f), vec2<f32>(-916f, 139f), vec4<bool>(true, false, true, true), 1i, false), i32(-2147483648), Struct_1(vec2<f32>(226f, -261f), vec2<f32>(217f, -239f), vec4<bool>(true, false, true, true), 2147483647i, false)), Struct_2(664f, 4294967295u, Struct_1(vec2<f32>(500f, 1673f), vec2<f32>(493f, -1000f), vec4<bool>(false, false, true, false), -372i, false), -15092i, Struct_1(vec2<f32>(3284f, 402f), vec2<f32>(323f, -665f), vec4<bool>(false, false, false, true), 25812i, true)), Struct_2(-684f, 4294967295u, Struct_1(vec2<f32>(1633f, 1000f), vec2<f32>(-297f, -141f), vec4<bool>(false, true, true, true), -71981i, false), 1i, Struct_1(vec2<f32>(-527f, -999f), vec2<f32>(-2434f, 3435f), vec4<bool>(false, false, true, false), -26565i, false)), Struct_2(532f, 0u, Struct_1(vec2<f32>(-451f, 869f), vec2<f32>(-1941f, -1215f), vec4<bool>(true, true, false, true), 23047i, true), 23377i, Struct_1(vec2<f32>(-114f, 1012f), vec2<f32>(-1119f, 526f), vec4<bool>(false, false, false, false), 9861i, true)), Struct_2(-211f, 24973u, Struct_1(vec2<f32>(-1922f, 300f), vec2<f32>(-207f, -1523f), vec4<bool>(true, false, false, true), -14630i, true), 4352i, Struct_1(vec2<f32>(538f, -630f), vec2<f32>(-815f, -311f), vec4<bool>(true, false, true, false), 38772i, false)), Struct_2(-2044f, 54470u, Struct_1(vec2<f32>(227f, -510f), vec2<f32>(-204f, -866f), vec4<bool>(true, true, false, false), -60892i, false), -7187i, Struct_1(vec2<f32>(412f, 533f), vec2<f32>(1108f, -464f), vec4<bool>(false, true, true, false), i32(-2147483648), true)), Struct_2(2536f, 4294967295u, Struct_1(vec2<f32>(-365f, 1337f), vec2<f32>(-816f, -796f), vec4<bool>(true, true, false, true), i32(-2147483648), true), 2147483647i, Struct_1(vec2<f32>(-380f, -1832f), vec2<f32>(1384f, 592f), vec4<bool>(false, true, false, true), -13488i, true)), Struct_2(-1190f, 1u, Struct_1(vec2<f32>(-789f, 2268f), vec2<f32>(-850f, -1000f), vec4<bool>(true, true, true, false), 2147483647i, false), 0i, Struct_1(vec2<f32>(-1021f, 756f), vec2<f32>(-1007f, -311f), vec4<bool>(false, true, true, false), i32(-2147483648), true)), Struct_2(244f, 1951u, Struct_1(vec2<f32>(-1848f, -1015f), vec2<f32>(-1000f, -2252f), vec4<bool>(true, true, false, false), -26534i, true), i32(-2147483648), Struct_1(vec2<f32>(1553f, -1286f), vec2<f32>(-418f, -518f), vec4<bool>(false, false, false, false), 35200i, true)), Struct_2(345f, 4294967295u, Struct_1(vec2<f32>(607f, 1780f), vec2<f32>(-675f, 1793f), vec4<bool>(false, true, false, false), -22710i, false), -8207i, Struct_1(vec2<f32>(1489f, -1546f), vec2<f32>(503f, -367f), vec4<bool>(false, true, false, true), 0i, true)), Struct_2(-269f, 39402u, Struct_1(vec2<f32>(-1318f, 388f), vec2<f32>(-235f, -971f), vec4<bool>(true, false, false, false), -14556i, true), i32(-2147483648), Struct_1(vec2<f32>(-1000f, -438f), vec2<f32>(1000f, 482f), vec4<bool>(false, true, true, true), 70326i, true)), Struct_2(-869f, 49992u, Struct_1(vec2<f32>(-1621f, 1000f), vec2<f32>(236f, 1000f), vec4<bool>(true, true, true, false), -1i, false), 47367i, Struct_1(vec2<f32>(-386f, -875f), vec2<f32>(1128f, -515f), vec4<bool>(false, false, true, false), 5324i, true)), Struct_2(643f, 16470u, Struct_1(vec2<f32>(-2005f, -993f), vec2<f32>(-647f, 1177f), vec4<bool>(false, true, true, false), 921i, true), -15427i, Struct_1(vec2<f32>(-214f, -1680f), vec2<f32>(522f, -467f), vec4<bool>(true, true, true, true), -7759i, true)), Struct_2(-292f, 1u, Struct_1(vec2<f32>(587f, -172f), vec2<f32>(967f, -996f), vec4<bool>(false, true, false, false), 24988i, true), -39010i, Struct_1(vec2<f32>(558f, -978f), vec2<f32>(-627f, -1021f), vec4<bool>(false, false, false, true), 2147483647i, true)), Struct_2(-1072f, 16446u, Struct_1(vec2<f32>(406f, -541f), vec2<f32>(1499f, -374f), vec4<bool>(true, false, false, true), 0i, false), 17144i, Struct_1(vec2<f32>(-2136f, -2214f), vec2<f32>(976f, -1226f), vec4<bool>(true, true, true, false), i32(-2147483648), true)), Struct_2(1175f, 1u, Struct_1(vec2<f32>(-942f, 900f), vec2<f32>(-1143f, -2182f), vec4<bool>(true, false, true, false), 14109i, true), -25810i, Struct_1(vec2<f32>(923f, -265f), vec2<f32>(-1120f, 459f), vec4<bool>(true, true, true, false), -19727i, false)), Struct_2(-1542f, 85381u, Struct_1(vec2<f32>(-2851f, 520f), vec2<f32>(1003f, 235f), vec4<bool>(true, true, true, true), 2164i, true), i32(-2147483648), Struct_1(vec2<f32>(-1271f, -1404f), vec2<f32>(1807f, 2783f), vec4<bool>(false, false, true, true), -1i, true)), Struct_2(-1000f, 31937u, Struct_1(vec2<f32>(434f, 1773f), vec2<f32>(-174f, -1153f), vec4<bool>(true, false, false, false), 29186i, false), -32940i, Struct_1(vec2<f32>(-137f, 418f), vec2<f32>(1060f, -1940f), vec4<bool>(true, true, false, true), -1i, true)), Struct_2(-1306f, 0u, Struct_1(vec2<f32>(1325f, -190f), vec2<f32>(-152f, -418f), vec4<bool>(true, true, false, false), 64094i, true), 2147483647i, Struct_1(vec2<f32>(-978f, -622f), vec2<f32>(2177f, -1000f), vec4<bool>(true, true, true, false), -32477i, false)), Struct_2(1274f, 27893u, Struct_1(vec2<f32>(1200f, -1522f), vec2<f32>(639f, 1503f), vec4<bool>(false, true, true, false), 65818i, false), 51756i, Struct_1(vec2<f32>(1202f, 138f), vec2<f32>(1206f, 756f), vec4<bool>(true, true, true, false), i32(-2147483648), false)), Struct_2(584f, 1u, Struct_1(vec2<f32>(2014f, -212f), vec2<f32>(1396f, -674f), vec4<bool>(true, true, false, true), 1i, true), 4080i, Struct_1(vec2<f32>(-239f, -238f), vec2<f32>(-2013f, -514f), vec4<bool>(false, true, false, true), 47468i, false)), Struct_2(-765f, 0u, Struct_1(vec2<f32>(-1741f, 1363f), vec2<f32>(1208f, -1364f), vec4<bool>(false, true, false, false), -23937i, true), 1i, Struct_1(vec2<f32>(352f, 1151f), vec2<f32>(131f, -1263f), vec4<bool>(true, false, false, false), 1i, true)));

var<private> global3: i32;

var<private> global4: array<u32, 15>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = i32(-1i) * -2147483647i;
    var var_1 = 1u;
    return -353f;
}

fn func_3(arg_0: f32) -> Struct_1 {
    let var_0 = -881f;
    global1 = array<u32, 18>();
    global1 = array<u32, 18>();
    global0 = vec4<u32>(~(~max(_wgslsmith_dot_vec2_u32(u_input.c.zz, u_input.c.yx), 59582u)), max(_wgslsmith_clamp_u32(0u, u_input.c.x << (_wgslsmith_mod_u32(1u, 4294967295u) % 32u), global1[_wgslsmith_index_u32(~abs(global4[_wgslsmith_index_u32(7704u, 15u)]), 18u)]), 1u), 58175u, countOneBits(4294967295u | (~global0.x ^ 4294967295u)));
    let var_1 = global2[_wgslsmith_index_u32(4294967295u, 22u)];
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.c.b, _wgslsmith_div_vec2_f32(vec2<f32>(var_0, var_1.c.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.e.a.x, 978f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_1.e.a)), _wgslsmith_f_op_vec2_f32(select(var_1.e.b, var_1.e.b, true)))))), var_1.c.c, u_input.a.x, false);
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: f32) -> Struct_1 {
    let var_0 = !(!select(!vec4<bool>(true, arg_1, true, arg_1), vec4<bool>(arg_1, true, !arg_1, arg_1), vec4<bool>(true, select(true, arg_1, false), false, arg_2 >= arg_2)));
    var var_1 = func_3(_wgslsmith_f_op_f32(func_2(65769u)));
    return func_3(arg_2);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> vec4<u32> {
    global0 = arg_0;
    global4 = array<u32, 15>();
    var var_0 = !arg_1.e;
    var var_1 = arg_0.x;
    var var_2 = _wgslsmith_clamp_vec3_u32(countOneBits(~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 0u, _wgslsmith_clamp_u32(global0.x, 0u, u_input.c.x))), global0.yxy, firstTrailingBit(arg_0.wzw));
    return ~(reverseBits((vec4<u32>(55434u, var_2.x, var_2.x, global1[_wgslsmith_index_u32(global0.x, 18u)]) >> (arg_0 % vec4<u32>(32u))) << (min(vec4<u32>(arg_0.x, var_2.x, 0u, global4[_wgslsmith_index_u32(1u, 15u)]), arg_0) % vec4<u32>(32u))) ^ arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<u32, 15>();
    global0 = reverseBits(_wgslsmith_div_vec4_u32(~reverseBits(vec4<u32>(6182u, global4[_wgslsmith_index_u32(33350u, 15u)], 3040u, 4294967295u)) | func_4(vec4<u32>(11805u, 57658u, 50582u, 62132u), func_1(vec2<u32>(0u, 33956u), false, 358f)), vec4<u32>(~(~63758u), 11913u, global1[_wgslsmith_index_u32(firstLeadingBit(1u), 18u)], ~31917u & global0.x)));
    var var_0 = global2[_wgslsmith_index_u32(0u, 22u)];
    var var_1 = Struct_3(var_0.e, Struct_1(vec2<f32>(func_1(u_input.c.xz ^ vec2<u32>(4294967295u, global4[_wgslsmith_index_u32(83711u, 15u)]), all(vec2<bool>(false, false)), var_0.a).b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.e.a.x)) - _wgslsmith_f_op_f32(-var_0.c.a.x))), var_0.c.a, vec4<bool>(true, all(vec4<bool>(true, false, var_0.e.c.x, var_0.c.e)), !(!var_0.e.c.x), true && var_0.e.c.x), -58498i, var_0.c.c.x), vec2<u32>(abs(~_wgslsmith_div_u32(global4[_wgslsmith_index_u32(global0.x, 15u)], 0u)), _wgslsmith_mult_u32(firstTrailingBit(u_input.b), global1[_wgslsmith_index_u32(countOneBits(11347u), 18u)])), _wgslsmith_dot_vec3_i32(max(-vec3<i32>(1i, -19351i, 12908i), ~(~u_input.a)), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.c.d, abs(-2147483647i), -54511i), -reverseBits(u_input.a))));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, _wgslsmith_div_f32(var_0.e.a.x, var_1.a.b.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~4294967295u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_0.c.a.x, 1717f, any(vec3<bool>(var_0.e.e, true, var_0.c.c.x)) | false)))), 4294967295u);
}

