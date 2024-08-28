struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(true, vec2<bool>(false, false), -596f, vec3<bool>(false, true, true), 0u), Struct_1(false, vec2<bool>(false, true), 875f, vec3<bool>(false, true, false), 1u), Struct_1(true, vec2<bool>(true, true), -427f, vec3<bool>(true, true, true), 0u), Struct_1(false, vec2<bool>(true, true), 439f, vec3<bool>(true, false, false), 31537u), Struct_1(false, vec2<bool>(true, true), 1724f, vec3<bool>(true, true, true), 1u), Struct_1(true, vec2<bool>(true, true), -919f, vec3<bool>(false, true, false), 23926u), Struct_1(false, vec2<bool>(true, true), 2286f, vec3<bool>(false, false, false), 1u), Struct_1(true, vec2<bool>(false, true), 1151f, vec3<bool>(true, true, false), 0u), Struct_1(false, vec2<bool>(true, true), -930f, vec3<bool>(false, false, false), 0u), Struct_1(true, vec2<bool>(false, true), 356f, vec3<bool>(true, false, true), 4294967295u), Struct_1(true, vec2<bool>(false, true), 912f, vec3<bool>(false, true, true), 0u), Struct_1(false, vec2<bool>(true, true), 740f, vec3<bool>(true, true, false), 41462u), Struct_1(false, vec2<bool>(false, false), 327f, vec3<bool>(false, true, true), 0u), Struct_1(false, vec2<bool>(true, false), -1361f, vec3<bool>(false, false, false), 6888u));

var<private> global1: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(43310i), Struct_4(i32(-2147483648)), Struct_4(i32(-2147483648)), Struct_4(-1i), Struct_4(0i), Struct_4(44741i), Struct_4(51900i), Struct_4(1i), Struct_4(2147483647i), Struct_4(93086i), Struct_4(-55051i), Struct_4(19573i), Struct_4(18737i), Struct_4(15395i), Struct_4(-44957i), Struct_4(-46687i), Struct_4(0i));

var<private> global2: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(47636u, vec2<f32>(-117f, -1449f), vec3<u32>(31074u, 1u, 4294967295u), Struct_1(false, vec2<bool>(false, true), -2363f, vec3<bool>(false, true, false), 0u), 0u), Struct_3(20035u, vec2<f32>(1069f, -656f), vec3<u32>(1u, 0u, 0u), Struct_1(true, vec2<bool>(false, false), -1208f, vec3<bool>(false, true, false), 26775u), 45096u), Struct_3(4294967295u, vec2<f32>(567f, -1830f), vec3<u32>(0u, 3500u, 43350u), Struct_1(true, vec2<bool>(false, true), -1000f, vec3<bool>(true, false, false), 0u), 0u), Struct_3(0u, vec2<f32>(-1000f, -322f), vec3<u32>(1u, 25472u, 119613u), Struct_1(true, vec2<bool>(false, false), 188f, vec3<bool>(false, true, false), 1945u), 50594u), Struct_3(11161u, vec2<f32>(1073f, -1203f), vec3<u32>(4294967295u, 4294967295u, 1u), Struct_1(true, vec2<bool>(true, false), -1074f, vec3<bool>(true, true, true), 4294967295u), 4294967295u), Struct_3(4294967295u, vec2<f32>(-141f, -170f), vec3<u32>(0u, 77675u, 9039u), Struct_1(true, vec2<bool>(true, true), 121f, vec3<bool>(false, true, true), 0u), 1750u), Struct_3(33434u, vec2<f32>(1000f, -1279f), vec3<u32>(15038u, 33534u, 35583u), Struct_1(true, vec2<bool>(true, true), 1487f, vec3<bool>(false, true, true), 1u), 30234u), Struct_3(50936u, vec2<f32>(1015f, 219f), vec3<u32>(4294967295u, 13215u, 4294967295u), Struct_1(true, vec2<bool>(true, true), 1267f, vec3<bool>(true, false, true), 35065u), 4294967295u), Struct_3(1u, vec2<f32>(-1119f, 1146f), vec3<u32>(29795u, 4294967295u, 0u), Struct_1(false, vec2<bool>(true, false), -1250f, vec3<bool>(false, false, false), 0u), 58325u), Struct_3(1u, vec2<f32>(1307f, 110f), vec3<u32>(60055u, 37781u, 4385u), Struct_1(false, vec2<bool>(false, true), 472f, vec3<bool>(true, true, true), 38171u), 4294967295u), Struct_3(0u, vec2<f32>(394f, 1185f), vec3<u32>(4294967295u, 4294967295u, 114958u), Struct_1(false, vec2<bool>(false, false), 244f, vec3<bool>(false, true, false), 56069u), 1u), Struct_3(4294967295u, vec2<f32>(-894f, 347f), vec3<u32>(4294967295u, 2332u, 1u), Struct_1(true, vec2<bool>(true, true), 504f, vec3<bool>(true, false, false), 4294967295u), 58067u), Struct_3(4294967295u, vec2<f32>(416f, -764f), vec3<u32>(70696u, 53708u, 12618u), Struct_1(false, vec2<bool>(true, false), 1507f, vec3<bool>(true, false, true), 1545u), 0u), Struct_3(1u, vec2<f32>(-170f, -763f), vec3<u32>(4294967295u, 62906u, 0u), Struct_1(true, vec2<bool>(true, true), 2076f, vec3<bool>(true, false, false), 1u), 4294967295u), Struct_3(56078u, vec2<f32>(-1042f, -2007f), vec3<u32>(0u, 0u, 6801u), Struct_1(false, vec2<bool>(true, false), -1000f, vec3<bool>(false, false, true), 4294967295u), 1u), Struct_3(0u, vec2<f32>(-205f, -1050f), vec3<u32>(55247u, 0u, 1u), Struct_1(true, vec2<bool>(false, true), -105f, vec3<bool>(false, false, true), 4294967295u), 1u), Struct_3(20771u, vec2<f32>(1115f, -1000f), vec3<u32>(33105u, 4294967295u, 11283u), Struct_1(true, vec2<bool>(false, true), -1086f, vec3<bool>(true, false, false), 1u), 12484u), Struct_3(67261u, vec2<f32>(-512f, -437f), vec3<u32>(150257u, 30577u, 15478u), Struct_1(false, vec2<bool>(true, false), -1541f, vec3<bool>(false, false, true), 0u), 1u), Struct_3(4294967295u, vec2<f32>(-186f, -492f), vec3<u32>(1u, 1u, 4294967295u), Struct_1(false, vec2<bool>(false, false), -455f, vec3<bool>(false, true, true), 0u), 39030u), Struct_3(39273u, vec2<f32>(-1336f, 700f), vec3<u32>(61036u, 4294967295u, 0u), Struct_1(true, vec2<bool>(true, false), -369f, vec3<bool>(true, true, true), 3451u), 1u), Struct_3(69849u, vec2<f32>(1081f, -290f), vec3<u32>(4567u, 4294967295u, 64691u), Struct_1(false, vec2<bool>(true, false), 1764f, vec3<bool>(false, true, false), 5645u), 4294967295u), Struct_3(36494u, vec2<f32>(-638f, -2891f), vec3<u32>(1u, 46123u, 1u), Struct_1(false, vec2<bool>(true, false), 2276f, vec3<bool>(false, true, true), 2837u), 0u), Struct_3(0u, vec2<f32>(384f, 533f), vec3<u32>(4294967295u, 1668u, 0u), Struct_1(false, vec2<bool>(true, true), -1079f, vec3<bool>(false, false, true), 1u), 861u), Struct_3(4294967295u, vec2<f32>(654f, -445f), vec3<u32>(50880u, 0u, 14900u), Struct_1(false, vec2<bool>(true, true), -1608f, vec3<bool>(true, false, false), 4294967295u), 1u));

var<private> global3: bool = false;

var<private> global4: array<bool, 29>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: vec4<u32>) -> f32 {
    let var_0 = vec2<i32>(1i, ~3362i);
    let var_1 = ~(-u_input.b);
    global3 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, _wgslsmith_clamp_u32(16551u, 26063u, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.a, 0u, 0u, 1u) ^ ~arg_3, ~(~vec4<u32>(26705u, arg_3.x, arg_2.d.e, u_input.a.x))))), 29u)];
    global1 = array<Struct_4, 17>();
    global1 = array<Struct_4, 17>();
    return _wgslsmith_f_op_f32(sign(arg_1.x));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: f32, arg_3: f32) -> bool {
    global1 = array<Struct_4, 17>();
    global1 = array<Struct_4, 17>();
    global3 = min(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), u_input.a.x | u_input.a.x) ^ u_input.a.x, u_input.a.x) < abs(u_input.a.x);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1057f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1735f))), _wgslsmith_f_op_f32(floor(arg_0)))));
    return u_input.a.x < ~firstTrailingBit(select(4294967295u, u_input.a.x, true) | 4294967295u);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<i32>) -> u32 {
    global4 = array<bool, 29>();
    global3 = func_4(_wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - arg_0.x), 1460f, !global4[_wgslsmith_index_u32(u_input.a.x | 21911u, 29u)] && (u_input.a.x < u_input.a.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(Struct_4(~u_input.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1560f, -318f, -1371f)), global2[_wgslsmith_index_u32(6099u, 24u)], countOneBits(vec4<u32>(57472u, u_input.a.x, 1u, 22395u)))))), arg_0.x);
    var var_0 = arg_0.x;
    let var_1 = Struct_2(arg_1, Struct_1(any(vec3<bool>(true, global4[_wgslsmith_index_u32(~89538u, 29u)], global4[_wgslsmith_index_u32(u_input.a.x, 29u)] & false)), !vec2<bool>(false, all(vec3<bool>(true, global4[_wgslsmith_index_u32(68074u, 29u)], global4[_wgslsmith_index_u32(38190u, 29u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], arg_0, global2[_wgslsmith_index_u32(27182u, 24u)], vec4<u32>(14585u, 0u, 1u, 0u)))))), !vec3<bool>(global4[_wgslsmith_index_u32(37162u, 29u)] & true, true, !global4[_wgslsmith_index_u32(u_input.a.x, 29u)]), 4294967295u ^ u_input.a.x), true, Struct_1(global4[_wgslsmith_index_u32(~u_input.a.x, 29u)], select(select(!vec2<bool>(true, global4[_wgslsmith_index_u32(u_input.a.x, 29u)]), select(vec2<bool>(false, true), vec2<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 29u)], global4[_wgslsmith_index_u32(u_input.a.x, 29u)]), vec2<bool>(true, true)), global4[_wgslsmith_index_u32(u_input.a.x, 29u)] || global4[_wgslsmith_index_u32(4294967295u, 29u)]), !select(vec2<bool>(global4[_wgslsmith_index_u32(1u, 29u)], global4[_wgslsmith_index_u32(u_input.a.x, 29u)]), vec2<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 29u)], true), global4[_wgslsmith_index_u32(4294967295u, 29u)]), (u_input.a.x ^ 13709u) >= u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(u_input.a.x | 0u, 17u)], arg_0, global2[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 24u)], vec4<u32>(50536u, u_input.a.x, 62693u, u_input.a.x)))), select(select(!vec3<bool>(global4[_wgslsmith_index_u32(1u, 29u)], global4[_wgslsmith_index_u32(32797u, 29u)], true), select(vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 29u)], global4[_wgslsmith_index_u32(28723u, 29u)], global4[_wgslsmith_index_u32(u_input.a.x, 29u)]), vec3<bool>(global4[_wgslsmith_index_u32(0u, 29u)], global4[_wgslsmith_index_u32(30085u, 29u)], true), vec3<bool>(global4[_wgslsmith_index_u32(0u, 29u)], global4[_wgslsmith_index_u32(u_input.a.x, 29u)], global4[_wgslsmith_index_u32(u_input.a.x, 29u)])), !vec3<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 29u)], global4[_wgslsmith_index_u32(73652u, 29u)], global4[_wgslsmith_index_u32(u_input.a.x, 29u)])), select(!vec3<bool>(true, true, global4[_wgslsmith_index_u32(2234u, 29u)]), !vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.a.x, 29u)], global4[_wgslsmith_index_u32(4294967295u, 29u)]), all(vec4<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 29u)], global4[_wgslsmith_index_u32(u_input.a.x, 29u)], false, true))), true), 29883u));
    global4 = array<bool, 29>();
    return _wgslsmith_add_u32(1u, ~(~_wgslsmith_dot_vec2_u32(reverseBits(u_input.a.zz), ~u_input.a.ww)));
}

fn func_1() -> bool {
    var var_0 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, func_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(569f, 1441f, 1000f, 1000f))), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, u_input.b), -vec2<i32>(-18256i, u_input.b)))), ~(~vec2<u32>(u_input.a.x, 1u) & u_input.a.yz)), 29u)];
    var var_1 = !(!(!global4[_wgslsmith_index_u32(u_input.a.x, 29u)]));
    var var_2 = 2147483647i;
    var_1 = global4[_wgslsmith_index_u32(abs(firstTrailingBit(u_input.a.x)), 29u)];
    let var_3 = Struct_2(select(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.b, -2147483647i), vec3<i32>(u_input.b, u_input.c, 21583i)), _wgslsmith_clamp_i32(u_input.c, u_input.c, u_input.c)), vec2<i32>(-u_input.c, 27178i)), _wgslsmith_sub_vec2_i32(~min(vec2<i32>(u_input.c, u_input.b), vec2<i32>(-20604i, u_input.b)), vec2<i32>(_wgslsmith_mult_i32(14921i, u_input.b), u_input.c)), !vec2<bool>(true, global4[_wgslsmith_index_u32(min(u_input.a.x, 14922u), 29u)])), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(34302u & (max(u_input.a.x, 0u) | 42692u), countOneBits(~(~33211u))), 14u)], all(select(select(select(vec3<bool>(global4[_wgslsmith_index_u32(24775u, 29u)], global4[_wgslsmith_index_u32(64091u, 29u)], true), vec3<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 29u)], false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), true), !(!vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.a.x, 29u)], true)), !(!vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 29u)], global4[_wgslsmith_index_u32(4294967295u, 29u)], global4[_wgslsmith_index_u32(1u, 29u)])))), Struct_1(global4[_wgslsmith_index_u32(~(~u_input.a.x), 29u)] & false, select(!(!vec2<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 29u)], global4[_wgslsmith_index_u32(4294967295u, 29u)])), !vec2<bool>(global4[_wgslsmith_index_u32(16656u, 29u)], global4[_wgslsmith_index_u32(u_input.a.x, 29u)]), select(!vec2<bool>(true, global4[_wgslsmith_index_u32(u_input.a.x, 29u)]), !vec2<bool>(true, global4[_wgslsmith_index_u32(26111u, 29u)]), select(vec2<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 29u)], global4[_wgslsmith_index_u32(0u, 29u)]), vec2<bool>(true, global4[_wgslsmith_index_u32(u_input.a.x, 29u)]), vec2<bool>(true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-393f - -322f)), select(!vec3<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 29u)], global4[_wgslsmith_index_u32(u_input.a.x, 29u)], false), vec3<bool>(any(vec4<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 29u)], global4[_wgslsmith_index_u32(1u, 29u)], true, global4[_wgslsmith_index_u32(0u, 29u)])), true, global4[_wgslsmith_index_u32(u_input.a.x, 29u)]), !vec3<bool>(global4[_wgslsmith_index_u32(28680u, 29u)], true, true)), 0u | (4294967295u ^ ~u_input.a.x)));
    return u_input.b != 28617i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 17>();
    let var_0 = Struct_1(true, !(!vec2<bool>(1u >= u_input.a.x, func_1())), 1f, select(select(select(!vec3<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 29u)], true, false), select(vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.a.x, 29u)], false), vec3<bool>(false, true, global4[_wgslsmith_index_u32(u_input.a.x, 29u)]), global4[_wgslsmith_index_u32(u_input.a.x, 29u)]), global4[_wgslsmith_index_u32(min(u_input.a.x, 5271u), 29u)]), select(select(vec3<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 29u)], false, global4[_wgslsmith_index_u32(u_input.a.x, 29u)]), vec3<bool>(global4[_wgslsmith_index_u32(27343u, 29u)], global4[_wgslsmith_index_u32(u_input.a.x, 29u)], global4[_wgslsmith_index_u32(1u, 29u)]), false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, global4[_wgslsmith_index_u32(1791u, 29u)], global4[_wgslsmith_index_u32(0u, 29u)])), false), vec3<bool>(false, any(vec3<bool>(false, global4[_wgslsmith_index_u32(0u, 29u)], global4[_wgslsmith_index_u32(u_input.a.x, 29u)])), u_input.c > -75107i)), !vec3<bool>(!global4[_wgslsmith_index_u32(u_input.a.x, 29u)], !global4[_wgslsmith_index_u32(1u, 29u)], any(vec2<bool>(false, global4[_wgslsmith_index_u32(u_input.a.x, 29u)]))), all(!(!vec3<bool>(true, true, global4[_wgslsmith_index_u32(53464u, 29u)])))), ~(~abs(~0u)));
    global0 = array<Struct_1, 14>();
    var var_1 = Struct_3(~_wgslsmith_mod_u32(u_input.a.x, var_0.e), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.c, -582f))))) + vec2<f32>(_wgslsmith_f_op_f32(var_0.c + -562f), -416f))), _wgslsmith_clamp_vec3_u32(u_input.a.wxy ^ reverseBits(vec3<u32>(var_0.e, u_input.a.x, u_input.a.x)), ~vec3<u32>(69535u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 33813u), max(u_input.a.xxy, select(u_input.a.yxw, u_input.a.xzx, var_0.d) >> (~vec3<u32>(var_0.e, var_0.e, u_input.a.x) % vec3<u32>(32u)))), var_0, ~_wgslsmith_sub_u32(~var_0.e ^ 1u, 1060u << (var_0.e % 32u)));
    var var_2 = _wgslsmith_mod_vec2_i32(firstLeadingBit(~(vec2<i32>(u_input.c, -1i) ^ vec2<i32>(-2147483647i, u_input.b)) >> (vec2<u32>(var_1.a, _wgslsmith_mod_u32(u_input.a.x, 53628u)) % vec2<u32>(32u))), -vec2<i32>(countOneBits(-1i), -1i) | -(_wgslsmith_add_vec2_i32(vec2<i32>(4166i, u_input.c), vec2<i32>(u_input.c, 21902i)) & ~vec2<i32>(4677i, u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(1i, _wgslsmith_add_i32(~(-30342i), _wgslsmith_mod_i32(var_2.x, u_input.b)) & (abs(var_2.x) >> (var_1.a % 32u))), abs(abs(vec2<u32>(_wgslsmith_clamp_u32(1508u, var_0.e, 18881u), abs(50289u)))), _wgslsmith_mult_vec2_i32(vec2<i32>(var_2.x, countOneBits(firstTrailingBit(-2147483647i))), _wgslsmith_mod_vec2_i32(~firstTrailingBit(vec2<i32>(-18387i, var_2.x)), ~(-vec2<i32>(var_2.x, u_input.b)))));
}

