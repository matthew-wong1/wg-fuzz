struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: f32,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28> = array<u32, 28>(1u, 41653u, 1u, 0u, 4294967295u, 22764u, 74935u, 0u, 55898u, 0u, 0u, 4294967295u, 14201u, 0u, 4294967295u, 0u, 8897u, 4294967295u, 31757u, 4294967295u, 84475u, 4294967295u, 31976u, 7166u, 45837u, 1u, 6147u, 0u);

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec4<u32>(4294967295u, 56049u, 4294967295u, 60429u), vec3<f32>(-1099f, -905f, 1291f), -33871i, vec2<bool>(true, false)), Struct_1(vec4<u32>(1u, 0u, 59758u, 21793u), vec3<f32>(-625f, -248f, 624f), -712i, vec2<bool>(false, true)), Struct_1(vec4<u32>(4630u, 4294967295u, 0u, 4294967295u), vec3<f32>(2256f, -960f, 228f), -3035i, vec2<bool>(false, true)), Struct_1(vec4<u32>(4294967295u, 1u, 0u, 32536u), vec3<f32>(-1000f, 2690f, -1752f), -32089i, vec2<bool>(false, false)), Struct_1(vec4<u32>(1u, 7400u, 21089u, 4294967295u), vec3<f32>(-1008f, 423f, -360f), i32(-2147483648), vec2<bool>(false, false)), Struct_1(vec4<u32>(4294967295u, 18191u, 40053u, 0u), vec3<f32>(203f, 1000f, 274f), i32(-2147483648), vec2<bool>(false, false)), Struct_1(vec4<u32>(2120u, 4294967295u, 98334u, 4294967295u), vec3<f32>(321f, -1402f, 823f), 2147483647i, vec2<bool>(false, true)), Struct_1(vec4<u32>(35663u, 0u, 1u, 1u), vec3<f32>(-1201f, 438f, 1295f), -1427i, vec2<bool>(false, true)), Struct_1(vec4<u32>(1u, 1642u, 4294967295u, 72191u), vec3<f32>(1238f, 886f, -546f), -24425i, vec2<bool>(true, true)), Struct_1(vec4<u32>(1u, 45676u, 4294967295u, 1934u), vec3<f32>(-1918f, 1000f, 1443f), 2147483647i, vec2<bool>(false, true)), Struct_1(vec4<u32>(73209u, 1u, 8284u, 0u), vec3<f32>(1841f, -1002f, 428f), 10181i, vec2<bool>(false, true)), Struct_1(vec4<u32>(4294967295u, 1u, 0u, 41617u), vec3<f32>(230f, -1042f, 736f), i32(-2147483648), vec2<bool>(false, true)), Struct_1(vec4<u32>(78646u, 1u, 1u, 1u), vec3<f32>(540f, 1000f, 1000f), 22525i, vec2<bool>(true, true)), Struct_1(vec4<u32>(71976u, 64221u, 4294967295u, 4294967295u), vec3<f32>(916f, 959f, -1775f), -11490i, vec2<bool>(false, false)), Struct_1(vec4<u32>(4294967295u, 70500u, 0u, 4294967295u), vec3<f32>(-668f, 350f, -670f), 0i, vec2<bool>(false, true)), Struct_1(vec4<u32>(37629u, 0u, 8618u, 0u), vec3<f32>(-1361f, -232f, -1389f), -34559i, vec2<bool>(false, true)), Struct_1(vec4<u32>(0u, 36968u, 1u, 56842u), vec3<f32>(-524f, 383f, 647f), -16717i, vec2<bool>(true, true)), Struct_1(vec4<u32>(4294967295u, 48734u, 66035u, 0u), vec3<f32>(-481f, 1970f, 1000f), -4520i, vec2<bool>(false, false)), Struct_1(vec4<u32>(1u, 42506u, 19495u, 45020u), vec3<f32>(2623f, -333f, 1000f), 46876i, vec2<bool>(false, true)), Struct_1(vec4<u32>(4294967295u, 9041u, 4294967295u, 11253u), vec3<f32>(-214f, -1658f, 1000f), i32(-2147483648), vec2<bool>(true, true)), Struct_1(vec4<u32>(1u, 20365u, 41455u, 17799u), vec3<f32>(1936f, 1488f, 491f), -43338i, vec2<bool>(false, false)), Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), vec3<f32>(-1049f, 1029f, 883f), 12985i, vec2<bool>(false, true)), Struct_1(vec4<u32>(0u, 7232u, 4294967295u, 4294967295u), vec3<f32>(-350f, -281f, -422f), -22346i, vec2<bool>(true, true)), Struct_1(vec4<u32>(29456u, 4294967295u, 28776u, 52772u), vec3<f32>(121f, -2356f, 255f), 2147483647i, vec2<bool>(true, true)));

var<private> global3: vec3<i32>;

var<private> global4: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(Struct_1(vec4<u32>(4294967295u, 1u, 16340u, 15697u), vec3<f32>(944f, 1301f, -1894f), 0i, vec2<bool>(true, false)), vec2<bool>(true, false), -773f), Struct_3(Struct_1(vec4<u32>(1u, 4294967295u, 37731u, 0u), vec3<f32>(-744f, 377f, -2150f), -26754i, vec2<bool>(false, true)), vec2<bool>(false, false), -513f), Struct_3(Struct_1(vec4<u32>(4294967295u, 38832u, 0u, 4294967295u), vec3<f32>(1306f, -1706f, -418f), i32(-2147483648), vec2<bool>(true, false)), vec2<bool>(true, true), -133f), Struct_3(Struct_1(vec4<u32>(0u, 31267u, 45123u, 33719u), vec3<f32>(-1072f, 1458f, -2730f), 1i, vec2<bool>(true, false)), vec2<bool>(false, false), -341f), Struct_3(Struct_1(vec4<u32>(120550u, 1u, 0u, 4605u), vec3<f32>(-317f, 1503f, 667f), -4192i, vec2<bool>(true, false)), vec2<bool>(false, true), 1732f), Struct_3(Struct_1(vec4<u32>(0u, 49230u, 61415u, 4294967295u), vec3<f32>(590f, 1509f, -1000f), -1i, vec2<bool>(false, true)), vec2<bool>(false, false), 1345f), Struct_3(Struct_1(vec4<u32>(1u, 1u, 21535u, 0u), vec3<f32>(1052f, 1158f, 1587f), 2147483647i, vec2<bool>(false, false)), vec2<bool>(true, true), -722f), Struct_3(Struct_1(vec4<u32>(0u, 93946u, 4294967295u, 54078u), vec3<f32>(-789f, 886f, -592f), i32(-2147483648), vec2<bool>(true, false)), vec2<bool>(true, true), 1346f), Struct_3(Struct_1(vec4<u32>(1u, 28245u, 1u, 0u), vec3<f32>(-1192f, -626f, -818f), 2147483647i, vec2<bool>(true, false)), vec2<bool>(false, false), -1931f), Struct_3(Struct_1(vec4<u32>(4294967295u, 56845u, 30695u, 65501u), vec3<f32>(320f, 453f, 978f), 2147483647i, vec2<bool>(false, false)), vec2<bool>(false, true), -1870f), Struct_3(Struct_1(vec4<u32>(4294967295u, 101381u, 4294967295u, 4294967295u), vec3<f32>(2058f, -935f, 391f), -1i, vec2<bool>(true, false)), vec2<bool>(true, true), -180f), Struct_3(Struct_1(vec4<u32>(4294967295u, 41047u, 21129u, 4294967295u), vec3<f32>(1000f, -539f, 1000f), -51277i, vec2<bool>(true, true)), vec2<bool>(true, true), 1090f), Struct_3(Struct_1(vec4<u32>(95836u, 53099u, 29276u, 1u), vec3<f32>(-563f, -340f, 2397f), i32(-2147483648), vec2<bool>(true, true)), vec2<bool>(true, false), 1298f), Struct_3(Struct_1(vec4<u32>(0u, 4294967295u, 17196u, 15027u), vec3<f32>(-353f, 852f, 135f), -23369i, vec2<bool>(true, false)), vec2<bool>(false, false), -297f), Struct_3(Struct_1(vec4<u32>(15437u, 2860u, 23639u, 4294967295u), vec3<f32>(953f, 214f, -1000f), -26169i, vec2<bool>(false, true)), vec2<bool>(false, true), -541f), Struct_3(Struct_1(vec4<u32>(30046u, 8407u, 1u, 72563u), vec3<f32>(1088f, 780f, 847f), 37842i, vec2<bool>(false, true)), vec2<bool>(false, true), -802f), Struct_3(Struct_1(vec4<u32>(21335u, 6751u, 27577u, 4294967295u), vec3<f32>(-1269f, -111f, -401f), 0i, vec2<bool>(true, false)), vec2<bool>(true, true), 820f), Struct_3(Struct_1(vec4<u32>(25993u, 1u, 67761u, 26168u), vec3<f32>(-1218f, -431f, -175f), 2147483647i, vec2<bool>(true, true)), vec2<bool>(true, false), 231f), Struct_3(Struct_1(vec4<u32>(0u, 1u, 24154u, 1583u), vec3<f32>(1874f, -1824f, 218f), -13106i, vec2<bool>(true, true)), vec2<bool>(false, false), -547f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_2) -> u32 {
    let var_0 = Struct_2(select(vec2<bool>(all(vec4<bool>(arg_2.a.x, arg_2.a.x, true, true)), true), select(select(select(arg_2.a, vec2<bool>(arg_2.a.x, true), false), vec2<bool>(false, true), any(vec3<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x))), !arg_2.a, all(select(vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, false), vec4<bool>(arg_2.a.x, arg_2.a.x, false, arg_2.a.x), vec4<bool>(arg_2.a.x, false, true, arg_2.a.x)))), vec2<bool>(!(!arg_2.a.x), !(arg_2.a.x || false))), abs(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(arg_2.b, 1u, u_input.a.x, 4294967295u)) | ~4294967295u, 28u)], 28u)], firstLeadingBit(0u) | _wgslsmith_mod_u32(arg_2.b, global0[_wgslsmith_index_u32(22568u, 28u)]))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-388f, _wgslsmith_f_op_f32(-969f - arg_0))), 184f), _wgslsmith_f_op_f32(955f - 1000f), true)), 132f);
    global2 = array<Struct_1, 24>();
    global1 = vec4<i32>(_wgslsmith_dot_vec3_i32(select(_wgslsmith_add_vec3_i32(vec3<i32>(global3.x, arg_1, 19936i), -vec3<i32>(u_input.b.x, 0i, global3.x)), u_input.b, select(var_0.a.x == false, false, false)), max(vec3<i32>(-2147483647i, arg_1, global3.x), max(u_input.b, vec3<i32>(-1i, u_input.b.x, 2147483647i)))), _wgslsmith_sub_i32(-2147483647i, ~(-select(1i, u_input.b.x, arg_2.a.x))), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(arg_1, 1i, arg_1, -38949i), ~vec4<i32>(u_input.b.x, -1i, u_input.b.x, 0i)) | -abs(vec4<i32>(global3.x, arg_1, u_input.b.x, global1.x)), ~_wgslsmith_mult_vec4_i32(-vec4<i32>(global3.x, global1.x, -44160i, 3111i), firstTrailingBit(vec4<i32>(-36888i, arg_1, -1i, global3.x)))), _wgslsmith_dot_vec3_i32(u_input.b, u_input.b));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) + _wgslsmith_f_op_f32(arg_2.d + -1819f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, 1910f, var_0.a.x)) - 356f))));
    let var_2 = max(countOneBits(35948u), ~(~0u));
    return ~_wgslsmith_div_u32(~(~25434u), var_0.b);
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec2_i32(u_input.b.xy | _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, global1.x), ~vec2<i32>(u_input.b.x, -61534i)), ~countOneBits(vec2<i32>(global3.x, -7690i))) < global3.x;
    global3 = global1.yxx;
    var var_1 = 607f;
    let var_2 = abs(global0[_wgslsmith_index_u32(1u, 28u)]);
    var var_3 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(func_3(-866f, global1.x, Struct_2(!vec2<bool>(var_0, false), 41872u, -1000f, _wgslsmith_f_op_f32(641f - -661f))), global0[_wgslsmith_index_u32(firstTrailingBit(~u_input.a.x), 28u)], var_2 ^ global0[_wgslsmith_index_u32(~min(59402u, 0u), 28u)]) << (44278u % 32u), 19u)];
    return Struct_2(var_3.a.d, 1u, var_3.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -535f) * var_3.c));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> Struct_3 {
    var var_0 = func_2();
    var_0 = arg_1;
    var var_1 = select(!vec3<bool>(!select(true, arg_1.a.x, false), var_0.d == _wgslsmith_f_op_f32(abs(arg_1.c)), false), vec3<bool>(!any(vec3<bool>(arg_1.a.x, false, arg_1.a.x)), !(_wgslsmith_f_op_f32(arg_1.d + var_0.d) < _wgslsmith_f_op_f32(-var_0.c)), ~(~2973u) >= ~_wgslsmith_sub_u32(80229u, var_0.b)), any(arg_1.a));
    let var_2 = func_2().a.x;
    var var_3 = Struct_4(global2[_wgslsmith_index_u32(~(~min(arg_1.b, arg_0)), 24u)], ~select(~_wgslsmith_mult_vec3_u32(u_input.a.zwx, vec3<u32>(arg_1.b, arg_0, 4294967295u)), select(~vec3<u32>(var_0.b, u_input.a.x, 1u), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, arg_0), u_input.a.wwz), vec3<bool>(var_1.x, true, true)), !(!arg_1.a.x)));
    return Struct_3(Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(54173u, 637u, var_3.b.x, var_3.b.x), _wgslsmith_add_vec4_u32(var_3.a.a, u_input.a)), ~(~vec4<u32>(arg_3, 4294967295u, 1u, 4294967295u))), _wgslsmith_f_op_vec3_f32(var_3.a.b - _wgslsmith_f_op_vec3_f32(trunc(var_3.a.b))), -u_input.b.x, select(vec2<bool>(any(vec4<bool>(var_1.x, false, var_1.x, arg_1.a.x)), var_3.a.d.x), select(!vec2<bool>(false, var_1.x), select(vec2<bool>(var_0.a.x, var_2), arg_1.a, vec2<bool>(false, false)), arg_1.a), select(var_3.a.d, var_1.xx, var_0.a.x))), !var_1.xx, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -457f)))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_1(~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(arg_0.a.a, arg_0.a.a), arg_0.a.a) ^ (~(~arg_3.a) ^ u_input.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(func_2().c, arg_0.a.b.x, 1276f)), u_input.b.x, !(!func_2().a));
    global3 = firstLeadingBit(vec3<i32>(i32(-1i) * -2147483647i, 19121i, global3.x));
    var var_1 = global1.xzy;
    var_1 = vec3<i32>(-_wgslsmith_mod_i32(_wgslsmith_div_i32(min(2147483647i, global1.x), firstTrailingBit(arg_0.a.c)), arg_2.a.c), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c >> (u_input.a.x % 32u), ~var_1.x, -arg_0.a.c, countOneBits(2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(-9743i, 0i, 9102i, 9774i), firstLeadingBit(vec4<i32>(-45689i, -6077i, global1.x, var_0.c)))) & -13402i, abs(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(arg_0.a.c, var_0.c, global1.x) | (i32(-1i) * -96531i), ~_wgslsmith_clamp_i32(-14099i, global3.x, -2147483647i), global1.x)));
    let var_2 = Struct_4(Struct_1(firstTrailingBit(countOneBits(var_0.a) << (vec4<u32>(var_0.a.x, 46100u, 1u, 97749u) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(arg_2.a.b)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_3.b.x, -629f, var_0.b.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.a.b))), var_0.c, func_2().a), vec3<u32>(~arg_1.x, global0[_wgslsmith_index_u32(25010u, 28u)], _wgslsmith_div_u32(0u, ~36978u)));
    return arg_0.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1329f), 1514f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1168f, -438f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1530f))))));
    global1 = vec4<i32>(min(func_4(Struct_3(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u << (1u % 32u), 28u)], 24u)], vec2<bool>(true, true), _wgslsmith_f_op_f32(-var_0.x)), abs(vec3<u32>(0u, u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 28u)])) ^ abs(vec3<u32>(global0[_wgslsmith_index_u32(122561u, 28u)], 4294967295u, 1u)), func_1(126233u, Struct_2(vec2<bool>(true, true), u_input.a.x, var_0.x, var_0.x), _wgslsmith_f_op_f32(sign(var_0.x)), global0[_wgslsmith_index_u32(30309u, 28u)]), global2[_wgslsmith_index_u32(u_input.a.x, 24u)]), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(45316i, u_input.b.x, global1.x, -356i)), vec4<i32>(u_input.b.x, 1i, -1i, global1.x) & vec4<i32>(global1.x, u_input.b.x, global1.x, global1.x)), vec4<i32>(_wgslsmith_mult_i32(-11919i, global3.x), select(11608i, -2147483647i, true), abs(global1.x), -16693i))), -2147483647i, _wgslsmith_add_i32(global3.x, -(~u_input.b.x)), global1.x);
    global3 = -_wgslsmith_mod_vec3_i32(global1.zxy, _wgslsmith_clamp_vec3_i32(vec3<i32>(global3.x ^ 20892i, global1.x & -31550i, 3205i), max(global1.xwz, countOneBits(u_input.b)), vec3<i32>(17156i, -2147483647i, global1.x)));
    global3 = abs(max(vec3<i32>(~(~1i), -1i, _wgslsmith_add_i32(0i, min(u_input.b.x, 2147483647i))), ~(~vec3<i32>(-28314i, global1.x, -1i))));
    var var_1 = !any(select(vec3<bool>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], 28u)] >= 0u, any(vec2<bool>(true, false)), select(true, false, false)), vec3<bool>(true, true, true), true));
    var var_2 = ~(~(_wgslsmith_div_u32(52385u, 107316u) & _wgslsmith_div_u32(10963u, u_input.a.x))) >> ((func_1(1u, func_2(), var_0.x, global0[_wgslsmith_index_u32(reverseBits(global0[_wgslsmith_index_u32(u_input.a.x, 28u)] >> (u_input.a.x % 32u)), 28u)]).a.a.x >> (1u % 32u)) % 32u);
    var_2 = 0u;
    var var_3 = Struct_4(func_1(u_input.a.x, Struct_2(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), _wgslsmith_sub_u32(~1u, 0u), _wgslsmith_f_op_f32(floor(var_0.x)), 109f), _wgslsmith_f_op_f32(step(var_0.x, 212f)), 32194u).a, ~u_input.a.wxw);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1416f)), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_3.a.b.x)))))), -1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.a.b.x), _wgslsmith_f_op_f32(f32(-1f) * -231f))), -1501f))), u_input.a, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(var_3.a.b.xy)))));
}

