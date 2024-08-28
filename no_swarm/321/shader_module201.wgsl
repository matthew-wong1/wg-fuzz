struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec3<u32>,
    d: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: bool,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: bool,
    d: Struct_3,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 7>;

var<private> global1: array<vec4<u32>, 25> = array<vec4<u32>, 25>(vec4<u32>(45576u, 0u, 40912u, 69946u), vec4<u32>(4294967295u, 0u, 50121u, 1u), vec4<u32>(0u, 36566u, 163417u, 6451u), vec4<u32>(1u, 1u, 1u, 66348u), vec4<u32>(5619u, 1207u, 45752u, 1u), vec4<u32>(45991u, 22912u, 85952u, 1u), vec4<u32>(0u, 7551u, 0u, 138102u), vec4<u32>(0u, 9341u, 61867u, 0u), vec4<u32>(4294967295u, 20805u, 52796u, 9791u), vec4<u32>(19845u, 19008u, 4294967295u, 4294967295u), vec4<u32>(1u, 16658u, 103560u, 61919u), vec4<u32>(41919u, 27164u, 4294967295u, 26501u), vec4<u32>(1u, 0u, 0u, 4294967295u), vec4<u32>(0u, 0u, 4294967295u, 53315u), vec4<u32>(40006u, 35638u, 1u, 4294967295u), vec4<u32>(5888u, 1u, 13754u, 4294967295u), vec4<u32>(4294967295u, 0u, 20794u, 0u), vec4<u32>(1u, 40801u, 1u, 0u), vec4<u32>(1u, 0u, 0u, 1u), vec4<u32>(4294967295u, 10765u, 20047u, 33798u), vec4<u32>(0u, 3300u, 0u, 1u), vec4<u32>(72919u, 4294967295u, 51269u, 1u), vec4<u32>(4294967295u, 44357u, 4294967295u, 79038u), vec4<u32>(0u, 39201u, 120570u, 64872u), vec4<u32>(0u, 78254u, 1u, 7119u));

var<private> global2: array<f32, 22> = array<f32, 22>(-206f, -908f, -1198f, -886f, -277f, -281f, -507f, -113f, 1731f, 235f, -2534f, 191f, -1099f, -581f, 752f, 1193f, -1250f, -1000f, 182f, 1121f, -1000f, 1354f);

var<private> global3: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(2192f, -1000f, 1026f, -183f), vec4<f32>(-532f, 1379f, -155f, -289f), vec4<f32>(161f, 603f, 599f, 1117f), vec4<f32>(1551f, 1125f, -1168f, 1000f), vec4<f32>(1212f, 670f, 660f, 696f), vec4<f32>(-832f, -234f, -375f, -1000f), vec4<f32>(-452f, 981f, -318f, -1000f), vec4<f32>(-1284f, 1069f, -1360f, 1167f), vec4<f32>(-2020f, 1032f, -1788f, -1029f), vec4<f32>(-158f, 651f, -990f, -1782f), vec4<f32>(407f, -856f, -219f, -2352f), vec4<f32>(966f, 1000f, 386f, -1806f), vec4<f32>(2647f, 1065f, -2074f, 1873f), vec4<f32>(1863f, -1524f, -453f, -1460f), vec4<f32>(-1000f, -3244f, 300f, 1430f), vec4<f32>(-134f, 475f, -812f, 1000f), vec4<f32>(-730f, -694f, -479f, -1260f), vec4<f32>(622f, 888f, -1484f, 1101f), vec4<f32>(-578f, -941f, 690f, 915f), vec4<f32>(165f, 705f, -729f, -960f), vec4<f32>(-303f, -1038f, -395f, -449f), vec4<f32>(286f, -1388f, 937f, -1000f), vec4<f32>(-238f, -1658f, 561f, -624f), vec4<f32>(-630f, -403f, -1363f, -1000f), vec4<f32>(-782f, -172f, -1549f, -434f), vec4<f32>(2848f, 959f, -1449f, -550f), vec4<f32>(-926f, -181f, -482f, 400f), vec4<f32>(-470f, -482f, -1000f, -374f), vec4<f32>(-259f, -2646f, 122f, 1470f), vec4<f32>(572f, 774f, -362f, 1313f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    global2 = array<f32, 22>();
    var var_0 = global3[_wgslsmith_index_u32(1u, 30u)];
    let var_1 = Struct_3(28024u, Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, min(u_input.a.x, 2147483647i), select(-u_input.a.x, ~2147483647i, true)), select(true, all(vec3<bool>(false, false, false)), true), ~(~vec3<u32>(76849u, 52142u, 13201u)), _wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(u_input.a.x), u_input.a.x, firstLeadingBit(1i)), min(u_input.a.xyw, u_input.a.zzy) >> (_wgslsmith_div_vec3_u32(vec3<u32>(48650u, 40101u, 12660u), global0[_wgslsmith_index_u32(4294967295u, 7u)]) % vec3<u32>(32u)))), firstLeadingBit(~(global0[_wgslsmith_index_u32(1u, 7u)] >> (global0[_wgslsmith_index_u32(~4294967295u, 7u)] % vec3<u32>(32u)))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(_wgslsmith_div_u32(4294967295u, 27578u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 0u, 4294967295u), global0[_wgslsmith_index_u32(1u, 7u)])), ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 0u)))), 22u)]);
    global3 = array<vec4<f32>, 30>();
    var var_2 = Struct_2(var_1.b.a, -firstLeadingBit(var_1.b.a.yxx), firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, -47778i, 35475i), u_input.a.zzz, vec3<i32>(-16244i, 12053i, u_input.a.x) | -u_input.a.wzz)), var_1.b);
    return _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.c.x, firstTrailingBit(~0u), abs(var_2.d.c.x), firstLeadingBit(select(var_2.d.c.x, var_2.d.c.x, true))), reverseBits(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_2.d.c.x, var_2.d.c.x, 1u), 25u)])) & var_1.b.c.x;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: f32) -> bool {
    let var_0 = global3[_wgslsmith_index_u32(func_3(), 30u)];
    global3 = array<vec4<f32>, 30>();
    global0 = array<vec3<u32>, 7>();
    var var_1 = vec2<bool>(all(select(vec4<bool>(true, true, false, false), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), false), true)), ~_wgslsmith_add_i32(1i, ~(-10468i)) <= ~reverseBits(_wgslsmith_add_i32(u_input.a.x, arg_0)));
    let var_2 = vec3<bool>(true, arg_0 == -max(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), u_input.a.zz)), !(!(!any(vec2<bool>(var_1.x, true)))));
    return any(select(vec4<bool>(true, var_2.x, false, true), vec4<bool>(all(var_2), var_2.x, var_1.x, all(select(vec4<bool>(false, false, var_1.x, var_1.x), vec4<bool>(var_2.x, var_1.x, var_1.x, var_2.x), false))), vec4<bool>(var_1.x, any(vec4<bool>(false, var_2.x, var_2.x, var_1.x)) | true, var_1.x, true)));
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: f32, arg_3: i32) -> vec4<f32> {
    global2 = array<f32, 22>();
    let var_0 = Struct_4(u_input.a | u_input.a, Struct_1(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, arg_3, 44833i, 2147483647i), u_input.a << (arg_0 % vec4<u32>(32u)))), true, vec3<u32>(select(arg_0.x, firstTrailingBit(33161u), true), 0u << (arg_0.x % 32u), ~(arg_0.x ^ 4294967295u)), arg_3), !(!all(vec3<bool>(true, true, true)) && select(-18030i < u_input.a.x, true, false)), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(3202i, u_input.a.x, 2147483647i), ~vec3<i32>(u_input.a.x, arg_3, u_input.a.x)) ^ _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -10369i, 1i), u_input.a.wxy), vec3<i32>(abs(max(u_input.a.x, arg_3)), 1i, -13634i)), Struct_1(_wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) & reverseBits(vec4<i32>(0i, arg_3, u_input.a.x, -22341i))), false, firstLeadingBit(~_wgslsmith_div_vec3_u32(arg_0.wxw, vec3<u32>(0u, arg_0.x, 49428u))), _wgslsmith_add_i32(i32(-1i) * -arg_3, _wgslsmith_clamp_i32(arg_3, -2147483647i, 2147483647i) & 7647i)));
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(163f, global2[_wgslsmith_index_u32(var_0.b.c.x, 22u)]), vec2<f32>(-201f, global2[_wgslsmith_index_u32(1u, 22u)]))), vec2<f32>(864f, 322f)) - vec2<f32>(-799f, _wgslsmith_div_f32(arg_1, global2[_wgslsmith_index_u32(var_0.e.c.x, 22u)]))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1025f), 367f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1015f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - arg_1))))));
    let var_2 = var_0.e.b;
    let var_3 = _wgslsmith_clamp_i32(-16203i, abs(_wgslsmith_dot_vec2_i32(-_wgslsmith_clamp_vec2_i32(var_0.d.zy, u_input.a.yw, vec2<i32>(21428i, 7464i)), -u_input.a.xx & (u_input.a.ww ^ vec2<i32>(-8409i, -33995i)))), _wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a.x, 2147483647i), vec3<i32>(var_0.a.x, u_input.a.x, var_0.d.x)), ~_wgslsmith_dot_vec2_i32(u_input.a.xx, var_0.e.a.wy)), ~_wgslsmith_div_i32(select(-1508i, arg_3, var_0.c), u_input.a.x)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(countOneBits(~firstLeadingBit(4294967295u)), 30u)] + _wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(var_0.e.c.yy, vec2<u32>(25523u, var_0.b.c.x)), 83047u), 30u)] * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(global3[_wgslsmith_index_u32(arg_0.x, 30u)]))))));
}

fn func_1() -> Struct_5 {
    global2 = array<f32, 22>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(select(~abs(vec4<u32>(4294967295u, 23765u, 49280u, 0u)), ~vec4<u32>(1u, 84430u, 33600u, 4294967295u), vec4<bool>(true, true, u_input.a.x > -2147483647i, func_2(-34621i, 1u, 1528f))), -578f, 333f, 2147483647i)));
    var var_1 = Struct_1(~vec4<i32>(reverseBits(_wgslsmith_mod_i32(u_input.a.x, 4395i)), -_wgslsmith_dot_vec3_i32(u_input.a.xxw, u_input.a.wwx), -firstLeadingBit(-37918i), abs(~u_input.a.x)), true, ~global0[_wgslsmith_index_u32(18239u, 7u)], firstLeadingBit(_wgslsmith_mult_i32(-9696i, 0i)));
    let var_2 = Struct_2(_wgslsmith_mod_vec4_i32(-var_1.a & var_1.a, vec4<i32>(1i, -18050i, ~select(var_1.a.x, -9210i, var_1.b), abs(9611i))), vec3<i32>(~u_input.a.x, u_input.a.x, var_1.d), u_input.a.xyy, Struct_1(firstTrailingBit(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, var_1.d, 0i, -2147483647i), u_input.a)), any(select(select(vec4<bool>(var_1.b, true, true, false), vec4<bool>(false, true, var_1.b, var_1.b), vec4<bool>(false, false, var_1.b, var_1.b)), vec4<bool>(true, var_1.b, var_1.b, var_1.b), false)), vec3<u32>(~1u, min(var_1.c.x, var_1.c.x), _wgslsmith_mult_u32(var_1.c.x, 87345u)), ~10847i));
    var var_3 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(-446f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(235f + 1363f), -643f)), global2[_wgslsmith_index_u32(~min(0u, var_2.d.c.x), 22u)], _wgslsmith_f_op_vec4_f32(func_4(global1[_wgslsmith_index_u32(countOneBits(var_1.c.x), 25u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-216f + global2[_wgslsmith_index_u32(var_2.d.c.x, 22u)]), _wgslsmith_f_op_f32(f32(-1f) * -220f))), -575f, -firstLeadingBit(var_1.d))).x)));
    return Struct_5(Struct_4(min(select(_wgslsmith_clamp_vec4_i32(u_input.a, var_1.a, u_input.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, var_2.b.x, var_2.a.x, var_2.a.x), vec4<i32>(1i, u_input.a.x, 1i, 20936i), vec4<i32>(u_input.a.x, u_input.a.x, 16875i, u_input.a.x)), !vec4<bool>(true, var_2.d.b, true, var_2.d.b)), abs(-vec4<i32>(u_input.a.x, 15957i, 17774i, 17220i))), Struct_1(~_wgslsmith_add_vec4_i32(var_1.a, u_input.a), all(vec3<bool>(true, var_2.d.b, false)), var_1.c, var_2.b.x), false, vec3<i32>(reverseBits(firstLeadingBit(2147483647i)), -2147483647i, -2147483647i), var_2.d), Struct_3(1u, Struct_1(-_wgslsmith_mult_vec4_i32(vec4<i32>(-68634i, 2147483647i, var_1.a.x, 27913i), u_input.a), var_2.d.b, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(41586u, 0u), var_2.d.c.zz >> (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))), 7u)], -34461i), vec3<u32>(4294967295u, ~var_1.c.x, var_1.c.x), 240f), all(select(!vec3<bool>(true, true, var_2.d.b), !vec3<bool>(var_1.b, var_2.d.b, true), select(vec3<bool>(var_2.d.b, true, var_1.b), vec3<bool>(var_2.d.b, true, false), true))) != true, Struct_3(var_1.c.x, var_2.d, firstTrailingBit(~var_2.d.c), global2[_wgslsmith_index_u32(~var_2.d.c.x, 22u)]), ~countOneBits(vec4<i32>(reverseBits(var_2.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(43442i, -1i), vec2<i32>(-3787i, -1i)), reverseBits(-44614i), ~1795i)));
}

fn func_5(arg_0: u32, arg_1: Struct_5) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -651f), global2[_wgslsmith_index_u32(33246u, 22u)], global2[_wgslsmith_index_u32(3684u, 22u)] >= -1137f)))));
    let var_1 = countOneBits(~func_1().e);
    let var_2 = vec2<u32>(~10901u, max(arg_0, ~_wgslsmith_dot_vec4_u32(vec4<u32>(6578u, arg_0, arg_0, 4294967295u), global1[_wgslsmith_index_u32(arg_0 >> (1u % 32u), 25u)])));
    global3 = array<vec4<f32>, 30>();
    let var_3 = !(!select(select(vec2<bool>(true, true), select(vec2<bool>(true, arg_1.b.b.b), vec2<bool>(false, true), true), true), select(!vec2<bool>(arg_1.b.b.b, true), select(vec2<bool>(arg_1.b.b.b, arg_1.c), vec2<bool>(arg_1.a.e.b, arg_1.d.b.b), true), select(vec2<bool>(true, false), vec2<bool>(arg_1.a.b.b, arg_1.b.b.b), arg_1.b.b.b)), !arg_1.a.e.b));
    return arg_1;
}

fn func_6(arg_0: Struct_5) -> Struct_2 {
    let var_0 = arg_0.b.b.b;
    var var_1 = i32(-1i) * -31932i;
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.d, 312f, global2[_wgslsmith_index_u32(arg_0.a.b.c.x, 22u)])) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(arg_0.a.e.c.x, 22u)], -2078f, 1266f))))))));
    let var_3 = vec3<bool>(53744i >= arg_0.b.b.d, !(any(vec2<bool>(var_0, false)) != (_wgslsmith_f_op_f32(trunc(249f)) <= func_1().b.d)), true);
    var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f))))), vec3<f32>(394f, 1203f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(sign(var_2.x)))))), true));
    return Struct_2(u_input.a, vec3<i32>(_wgslsmith_dot_vec4_i32((arg_0.b.b.a >> (global1[_wgslsmith_index_u32(arg_0.a.b.c.x, 25u)] % vec4<u32>(32u))) & reverseBits(vec4<i32>(arg_0.b.b.a.x, -1i, arg_0.b.b.d, -75106i)), _wgslsmith_sub_vec4_i32(func_5(0u, arg_0).b.b.a, u_input.a)), ~(~countOneBits(-1i)), ~_wgslsmith_mult_i32(abs(-2147483647i), countOneBits(u_input.a.x))), _wgslsmith_sub_vec3_i32(countOneBits(~vec3<i32>(u_input.a.x, arg_0.b.b.a.x, arg_0.a.e.a.x)), firstTrailingBit(arg_0.b.b.a.wwz & arg_0.b.b.a.yzz)), arg_0.a.e);
}

fn func_7(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_2) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1986f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~87773u, 22u)] + 518f), -1921f) * vec3<f32>(global2[_wgslsmith_index_u32(~arg_3.d.c.x, 22u)], global2[_wgslsmith_index_u32(2814u, 22u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(23087u, 22u)])))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(29437u, 22u)], global2[_wgslsmith_index_u32(45241u, 22u)])), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(1149u, 22u)])))), _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(arg_0.b.c.x, 22u)])))));
    var var_1 = Struct_3(~(~(~max(arg_3.d.c.x, 4294967295u))), Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(-u_input.a, firstTrailingBit(vec4<i32>(arg_3.b.x, 0i, arg_3.a.x, arg_2))), ~vec4<i32>(arg_2, u_input.a.x, 0i, 23304i)), global2[_wgslsmith_index_u32(~abs(0u), 22u)] >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_0.x, -260f, true)))), global0[_wgslsmith_index_u32(4294967295u, 7u)], min(max(2147483647i, arg_0.b.d) ^ arg_2, arg_0.b.d)), arg_3.d.c, func_1().b.d);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(~var_1.a, 30u)]))));
    var_2 = global3[_wgslsmith_index_u32(11619u, 30u)];
    let var_3 = var_2.yyx;
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-827f, -144f, var_1.d))) + _wgslsmith_f_op_vec3_f32(sign(var_2.xxy)))) + var_2.www)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec2<bool>(all(vec3<bool>(true, true, true)), true));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_7(Struct_4(vec4<i32>(u_input.a.x, -u_input.a.x, _wgslsmith_sub_i32(16598i, u_input.a.x), u_input.a.x), Struct_1(~vec4<i32>(-2147483647i, u_input.a.x, -8091i, 6940i), var_0.x, vec3<u32>(1u, 1u, 1u), -1i), !(!var_0.x), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), u_input.a.wyy), Struct_1(_wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, vec4<i32>(u_input.a.x, -2147483647i, 8312i, 2147483647i)), true | var_0.x, global0[_wgslsmith_index_u32(4294967295u, 7u)] >> (global0[_wgslsmith_index_u32(1u, 7u)] % vec3<u32>(32u)), -u_input.a.x)), var_0, _wgslsmith_mod_i32(u_input.a.x & 2147483647i, 1i), func_6(func_5(_wgslsmith_clamp_u32(1u, 88617u, 1u), func_1())))), vec3<f32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(global1[_wgslsmith_index_u32(4294967295u, 25u)], global1[_wgslsmith_index_u32(0u, 25u)]), global1[_wgslsmith_index_u32(1u, 25u)]), ~firstTrailingBit(global1[_wgslsmith_index_u32(0u, 25u)])), 22u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_7(Struct_4(u_input.a, Struct_1(u_input.a, false, vec3<u32>(0u, 29551u, 1u), u_input.a.x), var_0.x, u_input.a.xwy, Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), var_0.x, vec3<u32>(62345u, 4294967295u, 33347u), u_input.a.x)), var_0, ~1i, func_6(Struct_5(Struct_4(vec4<i32>(u_input.a.x, 9144i, -2147483647i, -17056i), Struct_1(u_input.a, false, global0[_wgslsmith_index_u32(2733u, 7u)], 0i), false, vec3<i32>(u_input.a.x, u_input.a.x, 1i), Struct_1(u_input.a, true, global0[_wgslsmith_index_u32(1u, 7u)], 85187i)), Struct_3(40473u, Struct_1(u_input.a, var_0.x, vec3<u32>(10239u, 4294967295u, 4294967295u), 0i), vec3<u32>(0u, 30344u, 4294967295u), -331f), true, Struct_3(68974u, Struct_1(u_input.a, false, global0[_wgslsmith_index_u32(0u, 7u)], u_input.a.x), global0[_wgslsmith_index_u32(4294967295u, 7u)], -708f), vec4<i32>(0i, u_input.a.x, -2147483647i, u_input.a.x))))).x), global2[_wgslsmith_index_u32(21445u, 22u)]));
    global0 = array<vec3<u32>, 7>();
    let var_2 = Struct_5(func_5(_wgslsmith_mult_u32(48671u, 0u), Struct_5(Struct_4(u_input.a, func_6(Struct_5(Struct_4(u_input.a, Struct_1(u_input.a, var_0.x, global0[_wgslsmith_index_u32(8973u, 7u)], u_input.a.x), var_0.x, u_input.a.yxy, Struct_1(u_input.a, var_0.x, global0[_wgslsmith_index_u32(4294967295u, 7u)], u_input.a.x)), Struct_3(29443u, Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 2147483647i), var_0.x, vec3<u32>(81964u, 0u, 0u), u_input.a.x), vec3<u32>(63213u, 4294967295u, 38101u), -1061f), true, Struct_3(76030u, Struct_1(u_input.a, true, global0[_wgslsmith_index_u32(0u, 7u)], -2147483647i), global0[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(31142u, 22u)]), vec4<i32>(u_input.a.x, 1i, u_input.a.x, 0i))).d, var_0.x && false, vec3<i32>(36403i, u_input.a.x, u_input.a.x), Struct_1(u_input.a, true, global0[_wgslsmith_index_u32(4294967295u, 7u)], u_input.a.x)), Struct_3(~29080u, func_1().a.b, vec3<u32>(5637u, 83663u, 33952u), _wgslsmith_f_op_f32(max(-995f, var_1.x))), true, Struct_3(_wgslsmith_add_u32(20497u, 1u), Struct_1(u_input.a, var_0.x, vec3<u32>(6977u, 4294967295u, 4294967295u), 2147483647i), countOneBits(vec3<u32>(1u, 1u, 4149u)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 22u)] + var_1.x)), firstLeadingBit(abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))))).a, Struct_3(0u, func_1().d.b, global0[_wgslsmith_index_u32(1u, 7u)], _wgslsmith_f_op_f32(select(540f, var_1.x, var_0.x || true))), !any(vec4<bool>(false, -1632f < global2[_wgslsmith_index_u32(33112u, 22u)], var_0.x, any(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)))), Struct_3(max(35773u, func_6(Struct_5(Struct_4(u_input.a, Struct_1(vec4<i32>(u_input.a.x, -2147483647i, -1i, u_input.a.x), true, vec3<u32>(1u, 4294967295u, 10089u), 1i), true, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), Struct_1(u_input.a, var_0.x, vec3<u32>(36904u, 58785u, 0u), u_input.a.x)), Struct_3(1u, Struct_1(u_input.a, true, global0[_wgslsmith_index_u32(22675u, 7u)], u_input.a.x), vec3<u32>(75205u, 1u, 1146u), -1561f), var_0.x, Struct_3(1u, Struct_1(u_input.a, true, global0[_wgslsmith_index_u32(50636u, 7u)], u_input.a.x), vec3<u32>(1u, 1u, 4294967295u), -1300f), u_input.a)).d.c.x), func_5(~1u, Struct_5(func_5(86265u, Struct_5(Struct_4(vec4<i32>(u_input.a.x, u_input.a.x, -19701i, u_input.a.x), Struct_1(u_input.a, true, global0[_wgslsmith_index_u32(0u, 7u)], -2147483647i), true, u_input.a.ywx, Struct_1(u_input.a, var_0.x, global0[_wgslsmith_index_u32(4294967295u, 7u)], -64097i)), Struct_3(13789u, Struct_1(vec4<i32>(u_input.a.x, -49721i, -2147483647i, -10529i), true, vec3<u32>(1u, 4294967295u, 8053u), u_input.a.x), vec3<u32>(52245u, 8155u, 0u), 2130f), var_0.x, Struct_3(14794u, Struct_1(vec4<i32>(-1i, u_input.a.x, -25053i, -1i), false, global0[_wgslsmith_index_u32(0u, 7u)], 38145i), global0[_wgslsmith_index_u32(4294967295u, 7u)], 595f), u_input.a)).a, Struct_3(4294967295u, Struct_1(u_input.a, var_0.x, global0[_wgslsmith_index_u32(1u, 7u)], 2147483647i), vec3<u32>(4294967295u, 1u, 12210u), 114f), var_0.x, func_5(1u, Struct_5(Struct_4(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), Struct_1(u_input.a, true, vec3<u32>(78035u, 43381u, 1811u), u_input.a.x), var_0.x, u_input.a.yzx, Struct_1(u_input.a, false, global0[_wgslsmith_index_u32(5156u, 7u)], u_input.a.x)), Struct_3(1u, Struct_1(vec4<i32>(u_input.a.x, 15233i, u_input.a.x, u_input.a.x), var_0.x, vec3<u32>(92574u, 51438u, 2022u), u_input.a.x), global0[_wgslsmith_index_u32(40725u, 7u)], -1716f), false, Struct_3(4294967295u, Struct_1(u_input.a, false, vec3<u32>(4294967295u, 4294967295u, 0u), 0i), vec3<u32>(0u, 36595u, 4294967295u), global2[_wgslsmith_index_u32(15009u, 22u)]), u_input.a)).d, u_input.a)).d.b, global0[_wgslsmith_index_u32(4294967295u, 7u)], _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(969f + var_1.x), _wgslsmith_f_op_f32(exp2(var_1.x)))))), ~u_input.a);
    let var_3 = vec2<i32>(min(~(-(i32(-1i) * -37787i)), 2147483647i), 1i);
    let var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1350f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.x - 563f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.x + var_2.d.d), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(38904u, 22u)]))), false)), _wgslsmith_f_op_f32(-400f * var_2.b.d)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1033f, -1296f, -138f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.x + -418f), _wgslsmith_f_op_f32(abs(-2374f)));
}

