struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 5> = array<vec4<i32>, 5>(vec4<i32>(-90869i, i32(-2147483648), -22250i, -15833i), vec4<i32>(-33826i, 0i, -93696i, 2147483647i), vec4<i32>(-64726i, 4262i, 2147483647i, 2147483647i), vec4<i32>(-19727i, 0i, -7465i, 0i), vec4<i32>(0i, 1i, -39756i, i32(-2147483648)));

var<private> global1: array<bool, 9>;

var<private> global2: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec3<i32>(24667i, -1229i, 0i), Struct_1(vec3<f32>(-366f, -764f, -2633f), vec3<u32>(0u, 20095u, 13189u), 1478i)), Struct_2(vec3<i32>(-10040i, -3042i, 2147483647i), Struct_1(vec3<f32>(889f, 920f, -1390f), vec3<u32>(39382u, 4294967295u, 32123u), 1i)), Struct_2(vec3<i32>(i32(-2147483648), 74166i, -1i), Struct_1(vec3<f32>(155f, -1024f, 396f), vec3<u32>(48040u, 1u, 0u), i32(-2147483648))), Struct_2(vec3<i32>(-1i, 8791i, i32(-2147483648)), Struct_1(vec3<f32>(962f, -396f, 303f), vec3<u32>(50843u, 28676u, 19771u), 38269i)), Struct_2(vec3<i32>(578i, 0i, 70689i), Struct_1(vec3<f32>(1133f, -982f, 1263f), vec3<u32>(45930u, 4294967295u, 4294967295u), -509i)), Struct_2(vec3<i32>(-40832i, 0i, 17228i), Struct_1(vec3<f32>(736f, -231f, -1332f), vec3<u32>(49578u, 102925u, 56123u), 20561i)), Struct_2(vec3<i32>(-1i, i32(-2147483648), 18732i), Struct_1(vec3<f32>(754f, -1864f, 295f), vec3<u32>(0u, 36501u, 0u), 1i)), Struct_2(vec3<i32>(3953i, 1i, 2147483647i), Struct_1(vec3<f32>(718f, -1266f, 809f), vec3<u32>(4294967295u, 50324u, 1u), -54108i)), Struct_2(vec3<i32>(5004i, 44256i, 0i), Struct_1(vec3<f32>(-1084f, 1965f, -265f), vec3<u32>(0u, 22431u, 4294967295u), -13444i)), Struct_2(vec3<i32>(20213i, 1i, 47312i), Struct_1(vec3<f32>(-638f, 269f, 851f), vec3<u32>(71072u, 35725u, 0u), 1i)), Struct_2(vec3<i32>(0i, -1i, -13071i), Struct_1(vec3<f32>(-186f, -1185f, 102f), vec3<u32>(4294967295u, 23476u, 1u), -6741i)), Struct_2(vec3<i32>(-22450i, 13285i, -1i), Struct_1(vec3<f32>(1000f, 1047f, -1519f), vec3<u32>(75202u, 72932u, 9523u), 26043i)), Struct_2(vec3<i32>(-1i, i32(-2147483648), 213i), Struct_1(vec3<f32>(-2268f, -1082f, 1061f), vec3<u32>(1u, 8824u, 4294967295u), 1i)), Struct_2(vec3<i32>(-20586i, -1i, 1i), Struct_1(vec3<f32>(2557f, -2042f, -218f), vec3<u32>(124428u, 0u, 4294967295u), 0i)), Struct_2(vec3<i32>(-25944i, -17513i, 0i), Struct_1(vec3<f32>(-1000f, -1000f, -257f), vec3<u32>(5342u, 1u, 4294967295u), -45498i)), Struct_2(vec3<i32>(-1i, -18784i, -1i), Struct_1(vec3<f32>(550f, 1178f, -866f), vec3<u32>(0u, 992u, 47381u), 28591i)), Struct_2(vec3<i32>(2147483647i, 16935i, -1i), Struct_1(vec3<f32>(981f, -616f, 937f), vec3<u32>(47087u, 65825u, 0u), 2147483647i)), Struct_2(vec3<i32>(i32(-2147483648), -1i, 2147483647i), Struct_1(vec3<f32>(1000f, -1327f, 1748f), vec3<u32>(4294967295u, 1u, 23671u), i32(-2147483648))), Struct_2(vec3<i32>(25369i, 24393i, -76961i), Struct_1(vec3<f32>(-369f, -135f, -175f), vec3<u32>(1u, 4294967295u, 16963u), 25545i)), Struct_2(vec3<i32>(2147483647i, -42514i, 22834i), Struct_1(vec3<f32>(263f, 976f, -1062f), vec3<u32>(1u, 0u, 1175u), 11985i)), Struct_2(vec3<i32>(4835i, -17133i, -96411i), Struct_1(vec3<f32>(182f, 1000f, -299f), vec3<u32>(4294967295u, 1u, 4294967295u), -24534i)), Struct_2(vec3<i32>(15258i, -23371i, 2147483647i), Struct_1(vec3<f32>(1031f, -546f, -905f), vec3<u32>(1u, 2078u, 12u), 0i)), Struct_2(vec3<i32>(2147483647i, 26329i, 0i), Struct_1(vec3<f32>(-1087f, 262f, 1536f), vec3<u32>(0u, 1468u, 1384u), i32(-2147483648))), Struct_2(vec3<i32>(10580i, -23172i, -18369i), Struct_1(vec3<f32>(-3244f, -2179f, -602f), vec3<u32>(1u, 0u, 23211u), 0i)), Struct_2(vec3<i32>(53348i, -38476i, 58852i), Struct_1(vec3<f32>(1000f, -325f, 882f), vec3<u32>(0u, 0u, 7288u), i32(-2147483648))), Struct_2(vec3<i32>(15796i, 0i, -3231i), Struct_1(vec3<f32>(-354f, 431f, -918f), vec3<u32>(5432u, 62986u, 79446u), -1i)), Struct_2(vec3<i32>(-22528i, i32(-2147483648), 14504i), Struct_1(vec3<f32>(-416f, 448f, -606f), vec3<u32>(7615u, 30725u, 0u), -19185i)), Struct_2(vec3<i32>(-22333i, 67577i, -35024i), Struct_1(vec3<f32>(1511f, -753f, -1269f), vec3<u32>(44559u, 44521u, 4294967295u), -2909i)), Struct_2(vec3<i32>(-28267i, i32(-2147483648), i32(-2147483648)), Struct_1(vec3<f32>(-308f, 2024f, 496f), vec3<u32>(61778u, 75715u, 4294967295u), i32(-2147483648))), Struct_2(vec3<i32>(i32(-2147483648), 1i, 1i), Struct_1(vec3<f32>(-867f, -1141f, 399f), vec3<u32>(0u, 0u, 47381u), 72161i)), Struct_2(vec3<i32>(2147483647i, -28305i, 0i), Struct_1(vec3<f32>(1292f, -636f, 840f), vec3<u32>(68627u, 17636u, 0u), -15830i)));

var<private> global3: array<f32, 24> = array<f32, 24>(-1000f, 525f, -238f, 831f, -231f, -1050f, -786f, 582f, 511f, 154f, -542f, 1192f, 692f, 1568f, 944f, -967f, -228f, -2106f, 1000f, 1424f, -1011f, -1076f, 996f, -284f);

var<private> global4: vec3<u32> = vec3<u32>(12460u, 51891u, 4294967295u);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    global0 = array<vec4<i32>, 5>();
    global3 = array<f32, 24>();
    global4 = vec3<u32>(u_input.c.x, ~(_wgslsmith_dot_vec3_u32(vec3<u32>(67292u, 61650u, u_input.c.x) >> (vec3<u32>(91310u, global4.x, 1526u) % vec3<u32>(32u)), ~vec3<u32>(5984u, u_input.e.x, 1u)) & _wgslsmith_mod_u32(13560u, 4294967295u & u_input.a)), ~u_input.e.x);
    global0 = array<vec4<i32>, 5>();
    global0 = array<vec4<i32>, 5>();
    return _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, max(1u, ~1u), 70047u) >> (1u % 32u), 24u)]));
}

fn func_2(arg_0: vec4<f32>) -> Struct_2 {
    global0 = array<vec4<i32>, 5>();
    let var_0 = arg_0;
    let var_1 = ~global4.x;
    var var_2 = Struct_3(!select(select(select(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 9u)]), vec2<bool>(global1[_wgslsmith_index_u32(18707u, 9u)], true), vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 9u)])), select(vec2<bool>(global1[_wgslsmith_index_u32(16406u, 9u)], false), vec2<bool>(false, global1[_wgslsmith_index_u32(70450u, 9u)]), false), !vec2<bool>(global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(u_input.d, 9u)])), !vec2<bool>(global1[_wgslsmith_index_u32(1u, 9u)], false), all(!vec4<bool>(global1[_wgslsmith_index_u32(44389u, 9u)], true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1591f))))), Struct_2(vec3<i32>(~_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, -6681i, u_input.b.x)), u_input.b.x, min(u_input.b.x, u_input.b.x)), Struct_1(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(step(-343f, 133f))), ~vec3<u32>(67619u, 3290u, global4.x) >> (countOneBits(vec3<u32>(u_input.d, global4.x, var_1)) % vec3<u32>(32u)), max(min(1i, u_input.b.x), u_input.b.x))), Struct_2(vec3<i32>(i32(-1i) * -62933i, 30005i | u_input.b.x, ~u_input.b.x) ^ select(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b | u_input.b, vec3<bool>(global1[_wgslsmith_index_u32(39339u, 9u)], false, true)), Struct_1(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-970f + -1771f)), ~vec3<u32>(16006u, 67232u, 44643u) << (~vec3<u32>(u_input.e.x, u_input.c.x, u_input.d) % vec3<u32>(32u)), 2147483647i)));
    global1 = array<bool, 9>();
    return var_2.d;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec2<f32>, arg_3: vec4<i32>) -> Struct_3 {
    let var_0 = select(vec4<bool>(global1[_wgslsmith_index_u32(global4.x, 9u)], _wgslsmith_sub_i32(~u_input.b.x, -arg_3.x) != arg_3.x, arg_1.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -249f)), false), !(!vec4<bool>(global1[_wgslsmith_index_u32(~77249u, 9u)], false, arg_3.x != -97016i, any(vec3<bool>(false, global1[_wgslsmith_index_u32(global4.x, 9u)], false)))), vec4<bool>(false, any(!select(vec2<bool>(global1[_wgslsmith_index_u32(62651u, 9u)], true), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 9u)], false), global1[_wgslsmith_index_u32(0u, 9u)])), !(!global1[_wgslsmith_index_u32(arg_0.b.b.x, 9u)]) && global1[_wgslsmith_index_u32(u_input.d, 9u)], !select(true, true, global1[_wgslsmith_index_u32(arg_0.b.b.x, 9u)] | true)));
    let var_1 = firstTrailingBit(~25819u);
    let var_2 = func_2(vec4<f32>(_wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(109f * _wgslsmith_f_op_f32(arg_0.b.a.x * arg_1.x)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~global4.x, u_input.e.x), 9u)])), 220f, arg_1.x, _wgslsmith_f_op_f32(arg_0.b.a.x + arg_1.x)));
    global1 = array<bool, 9>();
    var var_3 = var_2.b;
    return Struct_3(vec2<bool>(select(var_0.x, var_0.x, var_0.x), any(var_0.zxw)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -945f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * 922f))), func_2(vec4<f32>(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(~5137u, 24u)], _wgslsmith_f_op_f32(-var_2.b.a.x)), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1, 52482u) ^ (var_2.b.b.x >> (arg_0.b.b.x % 32u)), 24u)], _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.b.a.x, arg_1.x)) + 621f))), var_2);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4, arg_2: f32, arg_3: Struct_3) -> u32 {
    global1 = array<bool, 9>();
    global4 = abs(~(~(~vec3<u32>(u_input.e.x, 4294967295u, 62680u))));
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(543f, -305f, -217f) - arg_3.c.b.a), vec3<f32>(-348f, -574f, -949f), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false)))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(644f, arg_3.c.b.a.x, -1284f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(0u, 24u)], arg_0.a.a.x, -1673f) + arg_0.a.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.a.x, 1954f, 937f)))), arg_3.a.x || !arg_3.a.x)), arg_1.a.b | ~_wgslsmith_mult_vec3_u32(arg_0.a.b, arg_3.c.b.b), _wgslsmith_sub_i32(u_input.b.x, i32(-1i) * -arg_0.a.c));
    let var_1 = Struct_3(select(select(select(vec2<bool>(false, global1[_wgslsmith_index_u32(arg_0.a.b.x, 9u)]), vec2<bool>(global1[_wgslsmith_index_u32(arg_3.d.b.b.x, 9u)], false), arg_3.a.x), !(!vec2<bool>(true, arg_3.a.x)), all(vec4<bool>(true, true, true, true))), !arg_3.a, true || !(!arg_3.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(-159f, func_4(Struct_2(u_input.b, arg_3.d.b), arg_1.a.a, arg_1.a.a.zz, vec4<i32>(0i, u_input.b.x, arg_1.a.c, arg_1.a.c)).b), arg_3.c.b.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_0.a.a.x, global3[_wgslsmith_index_u32(1u, 24u)]))))), arg_3.a.x)), arg_3.c, global2[_wgslsmith_index_u32(33851u, 31u)]);
    let var_2 = global1[_wgslsmith_index_u32(~(~1u), 9u)];
    return _wgslsmith_dot_vec2_u32(~var_1.d.b.b.yx, (arg_3.d.b.b.xy >> (_wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, arg_1.a.b.x), firstLeadingBit(vec2<u32>(85906u, global4.x)), ~vec2<u32>(8864u, u_input.a)) % vec2<u32>(32u))) & _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(31274u, 0u) << (vec2<u32>(var_0.b.x, 21264u) % vec2<u32>(32u)), reverseBits(vec2<u32>(751u, arg_0.a.b.x))), vec2<u32>(~arg_1.a.b.x, abs(arg_0.a.b.x))));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: f32) -> vec4<i32> {
    let var_0 = global2[_wgslsmith_index_u32(~(func_5(Struct_4(arg_0.d.b), Struct_4(Struct_1(vec3<f32>(-883f, 533f, 1015f), vec3<u32>(u_input.a, arg_0.d.b.b.x, u_input.e.x), u_input.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + -1000f), _wgslsmith_div_f32(-1058f, arg_2)), func_4(func_2(vec4<f32>(arg_2, 2832f, 1311f, arg_0.c.b.a.x)), vec3<f32>(1081f, arg_2, arg_2), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-451f, arg_2)), global0[_wgslsmith_index_u32(0u, 5u)])) ^ _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, global4.x, u_input.c.x, u_input.a), vec4<u32>(7432u, global4.x, u_input.d, 871u) << (vec4<u32>(3425u, 11368u, 42341u, arg_0.c.b.b.x) % vec4<u32>(32u))), ~0u)), 31u)];
    var var_1 = func_4(func_2(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_2, global3[_wgslsmith_index_u32(39676u, 24u)]))), 526f, 616f, _wgslsmith_f_op_f32(-1338f * arg_0.b))), arg_0.c.b.a, vec2<f32>(_wgslsmith_div_f32(1483f, arg_0.c.b.a.x), _wgslsmith_f_op_f32(select(var_0.b.a.x, _wgslsmith_f_op_f32(func_3()), !all(arg_0.a)))), ~vec4<i32>(min(-1i, 1i), var_0.a.x, ~(-20857i), 50961i) & (-(vec4<i32>(var_0.b.c, u_input.b.x, u_input.b.x, arg_1.x) >> (vec4<u32>(4294967295u, var_0.b.b.x, 1u, var_0.b.b.x) % vec4<u32>(32u))) << (~(vec4<u32>(4294967295u, 4294967295u, u_input.a, 1u) >> (vec4<u32>(var_0.b.b.x, 1u, arg_0.c.b.b.x, arg_0.d.b.b.x) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_2 = func_4(global2[_wgslsmith_index_u32(~(~var_0.b.b.x | 1u), 31u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1079f, -1076f, -593f)) * _wgslsmith_div_vec3_f32(var_0.b.a, arg_0.d.b.a)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.d.b.a))) + var_0.b.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.c.b.a.yz - vec2<f32>(1126f, -2043f))) + vec2<f32>(var_1.b, _wgslsmith_f_op_f32(f32(-1f) * -1893f)))), max(_wgslsmith_mult_vec4_i32(max(arg_1 | vec4<i32>(arg_0.d.b.c, u_input.b.x, var_0.a.x, 1i), arg_1), reverseBits(global0[_wgslsmith_index_u32(func_4(arg_0.d, var_1.c.b.a, var_1.c.b.a.xz, vec4<i32>(var_1.d.b.c, 14068i, -41568i, arg_0.d.a.x)).c.b.b.x, 5u)])), _wgslsmith_mod_vec4_i32(vec4<i32>(-var_1.c.a.x, var_1.c.a.x, firstTrailingBit(arg_1.x), var_1.d.a.x ^ 2147483647i), ~vec4<i32>(-1094i, 2147483647i, -7487i, 53769i) & vec4<i32>(var_0.b.c, -13710i, u_input.b.x, -2147483647i))));
    var var_3 = _wgslsmith_sub_vec2_i32(var_1.c.a.xy, ~(~(~vec2<i32>(var_0.a.x, 1i))));
    let var_4 = Struct_4(func_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d.b.a.x, -792f, var_1.c.b.a.x, -882f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -1079f, arg_2, global3[_wgslsmith_index_u32(var_1.c.b.b.x, 24u)]))))).b);
    return vec4<i32>(func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-917f, -847f, arg_2, arg_2)) + vec4<f32>(var_2.d.b.a.x, arg_2, var_2.b, arg_0.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.c.b.a.x, 2027f, arg_0.b, 865f), vec4<f32>(arg_0.d.b.a.x, 440f, arg_2, 956f), vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(62142u, 9u)]))) * vec4<f32>(346f, -577f, -325f, var_0.b.a.x)))).b.c, -firstLeadingBit(var_4.a.c), abs(-firstTrailingBit(-21473i)) | -var_2.c.b.c, var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec2_u32(u_input.c, ~(global4.zx << ((u_input.c >> (global4.xz % vec2<u32>(32u))) % vec2<u32>(32u))) & (~(~u_input.c) & (u_input.c ^ global4.xz)));
    let var_1 = countOneBits(-_wgslsmith_div_vec4_i32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(34053u, 1u) >> ((var_0.x << (276u % 32u)) % 32u), 5u)], func_1(Struct_3(vec2<bool>(global1[_wgslsmith_index_u32(u_input.d, 9u)], global1[_wgslsmith_index_u32(77894u, 9u)]), global3[_wgslsmith_index_u32(global4.x, 24u)], global2[_wgslsmith_index_u32(global4.x, 31u)], Struct_2(u_input.b, Struct_1(vec3<f32>(1221f, 1000f, global3[_wgslsmith_index_u32(1u, 24u)]), vec3<u32>(27828u, u_input.c.x, 28344u), u_input.b.x))), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 7811i, u_input.b.x, u_input.b.x), global0[_wgslsmith_index_u32(0u, 5u)]), _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(global4.x, 24u)])))));
    let var_2 = _wgslsmith_f_op_f32(func_3());
    let var_3 = func_4(Struct_2(-vec3<i32>(u_input.b.x, 44639i, u_input.b.x), func_4(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(18950u, 24u)], global3[_wgslsmith_index_u32(32326u, 24u)], global3[_wgslsmith_index_u32(global4.x, 24u)], global3[_wgslsmith_index_u32(1u, 24u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-248f, var_2, 337f) * vec3<f32>(global3[_wgslsmith_index_u32(76021u, 24u)], global3[_wgslsmith_index_u32(u_input.a, 24u)], global3[_wgslsmith_index_u32(u_input.c.x, 24u)]))), vec2<f32>(_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(0u, 24u)])), _wgslsmith_f_op_f32(max(-1890f, -1219f))), -var_1).c.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(global4.x, 24u)])))), 1438f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global3[_wgslsmith_index_u32(109943u, 24u)], -1649f, var_2), vec3<f32>(575f, var_2, global3[_wgslsmith_index_u32(var_0.x, 24u)])))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(var_2)), func_2(vec4<f32>(global3[_wgslsmith_index_u32(global4.x, 24u)], 257f, global3[_wgslsmith_index_u32(62048u, 24u)], var_2)).b.a.x))), firstLeadingBit(vec4<i32>(_wgslsmith_sub_i32(var_1.x, u_input.b.x), _wgslsmith_sub_i32(32808i, u_input.b.x), reverseBits(u_input.b.x), i32(-1i) * -1i)) & vec4<i32>(_wgslsmith_clamp_i32(min(1i, var_1.x), _wgslsmith_clamp_i32(var_1.x, 42193i, var_1.x), -23517i), 2147483647i, firstLeadingBit(firstLeadingBit(20114i)), func_4(func_4(Struct_2(vec3<i32>(u_input.b.x, 0i, -2147483647i), Struct_1(vec3<f32>(1192f, global3[_wgslsmith_index_u32(36266u, 24u)], 318f), vec3<u32>(var_0.x, 1u, 27733u), var_1.x)), vec3<f32>(var_2, var_2, var_2), vec2<f32>(var_2, var_2), vec4<i32>(82441i, var_1.x, 2147483647i, var_1.x)).c, _wgslsmith_div_vec3_f32(vec3<f32>(-1091f, global3[_wgslsmith_index_u32(u_input.e.x, 24u)], var_2), vec3<f32>(var_2, 775f, var_2)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(292f, 1000f))), select(vec4<i32>(26951i, 0i, u_input.b.x, 1009i), vec4<i32>(-2147483647i, u_input.b.x, 1i, u_input.b.x), vec4<bool>(true, false, global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(1u, 9u)]))).d.b.c)).c;
    let var_4 = u_input.b;
    let var_5 = _wgslsmith_mult_i32(min(_wgslsmith_add_i32(-u_input.b.x, _wgslsmith_mult_i32(0i, var_3.b.c)), ~(-19947i)), abs(max(44355i, -39578i)) | var_3.b.c) ^ -1i;
    let var_6 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_3.b.a))) + vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-340f - var_3.b.a.x), var_3.b.a.x)), 1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3.b.a.x * var_2), _wgslsmith_div_f32(var_3.b.a.x, var_2))))), func_4(global2[_wgslsmith_index_u32(31108u, 31u)], _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.b.a)), vec3<f32>(-210f, var_3.b.a.x, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(22692u, 24u)] - 114f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2559f, 439f)) - var_3.b.a.zz), vec2<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 24u)]), _wgslsmith_div_f32(-119f, global3[_wgslsmith_index_u32(var_3.b.b.x, 24u)])), !(0i == var_3.b.c))), global0[_wgslsmith_index_u32(70256u, 5u)]).c.b.b, func_1(func_4(func_4(func_4(var_3, vec3<f32>(var_2, global3[_wgslsmith_index_u32(global4.x, 24u)], var_3.b.a.x), vec2<f32>(-1282f, -192f), vec4<i32>(1i, -32377i, -18029i, 1i)).c, _wgslsmith_f_op_vec3_f32(round(var_3.b.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-672f, global3[_wgslsmith_index_u32(6857u, 24u)]) * vec2<f32>(var_2, var_3.b.a.x)), _wgslsmith_mod_vec4_i32(global0[_wgslsmith_index_u32(var_3.b.b.x, 5u)], vec4<i32>(var_1.x, 0i, -22566i, 24267i))).c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.b.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.b.a.xz)), var_1 | _wgslsmith_div_vec4_i32(vec4<i32>(-47964i, -13138i, 1i, -10078i), vec4<i32>(0i, var_1.x, var_3.a.x, var_1.x))), global0[_wgslsmith_index_u32(~21411u, 5u)], _wgslsmith_f_op_f32(abs(-172f))).x);
    global4 = _wgslsmith_mult_vec3_u32(var_6.b, var_6.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) - var_3.b.a.x), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(7737u, 1u), 24u)]))), 1112f, vec4<i32>(select(~var_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_5, var_6.c, 69361i, var_3.b.c), var_1), global1[_wgslsmith_index_u32(max(0u, 23159u), 9u)]), i32(-1i) * -1i, 0i, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 555f, var_2, var_6.a.x))).b.c) << (~(max(vec4<u32>(0u, 1u, 1u, 51451u), vec4<u32>(u_input.a, 13834u, 11412u, 2496u)) | ~vec4<u32>(var_0.x, var_3.b.b.x, var_0.x, u_input.c.x)) % vec4<u32>(32u)), vec4<i32>(1i, ~var_4.x, select(max(-1i, func_2(vec4<f32>(var_3.b.a.x, 1044f, var_2, 475f)).a.x), _wgslsmith_dot_vec2_i32(~u_input.b.zz, ~vec2<i32>(38901i, var_1.x)), all(vec4<bool>(global1[_wgslsmith_index_u32(global4.x, 9u)], true, false, false))), 33333i), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.b.a + var_6.a))))));
}

