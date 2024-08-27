struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 16>;

var<private> global1: array<bool, 2>;

var<private> global2: array<vec4<i32>, 24> = array<vec4<i32>, 24>(vec4<i32>(i32(-2147483648), -1i, -17050i, 11698i), vec4<i32>(-18349i, 1i, -10334i, i32(-2147483648)), vec4<i32>(-4495i, -2372i, 0i, i32(-2147483648)), vec4<i32>(-1i, 37794i, -19508i, -44747i), vec4<i32>(-30068i, -10821i, i32(-2147483648), 0i), vec4<i32>(1i, 0i, 8700i, 24028i), vec4<i32>(-26692i, 21856i, 4286i, -2353i), vec4<i32>(2147483647i, 2147483647i, 35817i, 54310i), vec4<i32>(2147483647i, 1i, -1i, -1i), vec4<i32>(15312i, 14487i, -2029i, 54507i), vec4<i32>(i32(-2147483648), 79884i, 2147483647i, -37694i), vec4<i32>(2147483647i, -29302i, -16180i, -6105i), vec4<i32>(2147483647i, -40442i, -37898i, -13489i), vec4<i32>(32812i, 2147483647i, -13812i, -1i), vec4<i32>(-29502i, -16638i, -1i, -1i), vec4<i32>(-17316i, i32(-2147483648), -17653i, -15813i), vec4<i32>(42619i, 23641i, -40438i, 0i), vec4<i32>(i32(-2147483648), -36916i, 43125i, -1i), vec4<i32>(0i, 1i, 10839i, -1i), vec4<i32>(-104652i, 25274i, i32(-2147483648), -14197i), vec4<i32>(i32(-2147483648), -15683i, 2147483647i, 1i), vec4<i32>(-1i, 40197i, 1i, 0i), vec4<i32>(20840i, 0i, -30946i, -1i), vec4<i32>(-14125i, 2147483647i, 0i, 2147483647i));

var<private> global3: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(0u, vec2<f32>(-561f, -2677f)), -88429i, false, vec3<bool>(false, false, true), Struct_1(12599u, vec2<f32>(-169f, -972f))), Struct_2(Struct_1(1279u, vec2<f32>(749f, -610f)), i32(-2147483648), false, vec3<bool>(false, true, false), Struct_1(0u, vec2<f32>(1000f, 666f))), Struct_2(Struct_1(78691u, vec2<f32>(-2693f, -215f)), 2147483647i, false, vec3<bool>(true, true, false), Struct_1(48619u, vec2<f32>(450f, 529f))), Struct_2(Struct_1(29081u, vec2<f32>(-1043f, 264f)), i32(-2147483648), true, vec3<bool>(false, false, false), Struct_1(31484u, vec2<f32>(335f, -655f))), Struct_2(Struct_1(1u, vec2<f32>(1504f, 1128f)), 1i, true, vec3<bool>(true, true, true), Struct_1(44052u, vec2<f32>(1000f, -905f))), Struct_2(Struct_1(54803u, vec2<f32>(-304f, -1000f)), 0i, false, vec3<bool>(false, false, false), Struct_1(4294967295u, vec2<f32>(-1090f, -681f))), Struct_2(Struct_1(1u, vec2<f32>(-1327f, -784f)), -19794i, true, vec3<bool>(false, true, false), Struct_1(27978u, vec2<f32>(711f, -1330f))), Struct_2(Struct_1(1u, vec2<f32>(740f, 1000f)), i32(-2147483648), false, vec3<bool>(true, true, true), Struct_1(4294967295u, vec2<f32>(-1247f, -2252f))));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    let var_0 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(292f, -1098f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(605f)) + -1000f)), 364f), Struct_2(Struct_1(8062u, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 2203f)), 18196i, true, select(select(!vec3<bool>(global1[_wgslsmith_index_u32(15331u, 2u)], global1[_wgslsmith_index_u32(55658u, 2u)], global1[_wgslsmith_index_u32(0u, 2u)]), select(vec3<bool>(true, false, false), vec3<bool>(global1[_wgslsmith_index_u32(65483u, 2u)], true, true), vec3<bool>(true, global1[_wgslsmith_index_u32(37688u, 2u)], false)), select(vec3<bool>(global1[_wgslsmith_index_u32(29370u, 2u)], global1[_wgslsmith_index_u32(1u, 2u)], false), vec3<bool>(global1[_wgslsmith_index_u32(87392u, 2u)], global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(22900u, 2u)]), global1[_wgslsmith_index_u32(1567u, 2u)])), vec3<bool>(global1[_wgslsmith_index_u32(35675u, 2u)], true, all(vec2<bool>(false, global1[_wgslsmith_index_u32(47950u, 2u)]))), !vec3<bool>(false, false, global1[_wgslsmith_index_u32(42494u, 2u)])), Struct_1(17593u, vec2<f32>(_wgslsmith_f_op_f32(-1189f * 1005f), -737f))));
    let var_1 = _wgslsmith_div_u32(16853u, _wgslsmith_dot_vec4_u32(select(~vec4<u32>(var_0.b.a.a, var_0.b.e.a, var_0.b.a.a, var_0.b.a.a), select(vec4<u32>(1u, var_0.b.e.a, var_0.b.a.a, 0u), vec4<u32>(var_0.b.e.a, var_0.b.a.a, var_0.b.a.a, var_0.b.a.a), vec4<bool>(false, false, global1[_wgslsmith_index_u32(var_0.b.a.a, 2u)], false)), select(vec4<bool>(false, true, false, true), vec4<bool>(var_0.b.d.x, global1[_wgslsmith_index_u32(var_0.b.a.a, 2u)], true, false), true)) | ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b.a.a, 1u, var_0.b.e.a, 4294967295u), vec4<u32>(var_0.b.e.a, var_0.b.a.a, var_0.b.a.a, var_0.b.e.a), vec4<u32>(4294967295u, 0u, 0u, var_0.b.a.a)), vec4<u32>(0u, 1u, firstLeadingBit(58569u), 1u)));
    var var_2 = global1[_wgslsmith_index_u32(var_0.b.a.a, 2u)] || all(vec2<bool>(select(select(false, global1[_wgslsmith_index_u32(101581u, 2u)], var_0.b.c), false || var_0.b.c, all(vec4<bool>(global1[_wgslsmith_index_u32(986u, 2u)], true, global1[_wgslsmith_index_u32(1u, 2u)], false))), true));
    global3 = array<Struct_2, 8>();
    var var_3 = Struct_3(var_0.b, global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(129681u, ~0u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(45429u, 4294967295u, var_0.b.a.a), vec3<u32>(var_1, 12322u, 1u)), countOneBits(countOneBits(var_0.b.a.a))), 8u)], _wgslsmith_add_u32(961u, var_0.b.a.a));
    return select(-(-31341i & _wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(4294967295u, 24u)], vec4<i32>(1i, var_0.b.b, -41699i, var_3.a.b))), 2147483647i, global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(112219u, select(var_0.b.e.a, var_1, var_0.b.c), _wgslsmith_div_u32(var_0.b.a.a, var_1)), 2u)]) | -20576i;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<u32>) -> bool {
    let var_0 = Struct_2(Struct_1(arg_1.x, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1097f), _wgslsmith_f_op_f32(round(-237f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1086f, 425f)))))), _wgslsmith_mod_i32(~(0i >> (_wgslsmith_mult_u32(arg_1.x, 1u) % 32u)), _wgslsmith_mod_i32(func_3(), ~abs(0i))), true, !vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(47751u, _wgslsmith_clamp_u32(arg_1.x, arg_0.x, 0u)), 2u)], !(!global1[_wgslsmith_index_u32(1u, 2u)]), true), Struct_1(max(_wgslsmith_div_u32(arg_1.x, countOneBits(1u)), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(26639u, arg_0.x), arg_1), firstTrailingBit(vec2<u32>(0u, 45430u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -363f)))));
    global1 = array<bool, 2>();
    var var_1 = global3[_wgslsmith_index_u32(abs(67068u), 8u)];
    var var_2 = ~2147483647i;
    let var_3 = arg_0.x;
    return all(var_0.d.xy);
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: bool, arg_3: u32) -> i32 {
    global0 = array<Struct_4, 16>();
    let var_0 = -vec2<i32>(min(abs(-1i), 1i ^ u_input.a.x) >> (abs(countOneBits(arg_3)) % 32u), 0i);
    global2 = array<vec4<i32>, 24>();
    var var_1 = ~_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(var_0.x, 1i, -1i, u_input.a.x)), vec4<i32>(0i, -2147483647i, var_0.x, -1i)), ~max(vec4<i32>(1455i, 0i, var_0.x, 3314i), global2[_wgslsmith_index_u32(1u, 24u)])), _wgslsmith_div_vec4_i32(global2[_wgslsmith_index_u32(~0u, 24u)], vec4<i32>(firstLeadingBit(var_0.x), _wgslsmith_add_i32(u_input.a.x, var_0.x), -var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, 37054i), vec3<i32>(10975i, u_input.a.x, 2147483647i)))));
    let var_2 = Struct_3(Struct_2(Struct_1(arg_3, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-266f, arg_0)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -409f) * vec2<f32>(-494f, arg_0)))), 27705i, arg_1.x, select(select(select(arg_1.xyx, arg_1.zxw, arg_2), arg_1.zwz, arg_2), !(!arg_1.xxz), any(vec3<bool>(true, arg_2, arg_1.x))), Struct_1(4294967295u ^ arg_3, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-380f, arg_0)))))), Struct_2(Struct_1(arg_3, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1350f, 861f))))), i32(-1i) * -var_0.x, all(vec4<bool>(all(arg_1.xzy), func_2(vec4<u32>(69012u, arg_3, arg_3, 8914u), vec2<u32>(arg_3, arg_3)), select(global1[_wgslsmith_index_u32(arg_3, 2u)], true, false), false)), !select(!arg_1.wxy, !vec3<bool>(true, arg_2, arg_1.x), arg_2), Struct_1(select(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3, 20740u), vec2<u32>(0u, 32278u)), !global1[_wgslsmith_index_u32(12876u, 2u)]), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -353f)))))), ~abs(arg_3));
    return 2147483647i;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4, arg_2: f32) -> u32 {
    global0 = array<Struct_4, 16>();
    global2 = array<vec4<i32>, 24>();
    global2 = array<vec4<i32>, 24>();
    var var_0 = vec2<i32>(func_4(_wgslsmith_f_op_f32(max(arg_0.b.x, arg_1.b.a.b.x)), select(vec4<bool>(any(vec3<bool>(arg_1.b.c, arg_1.b.c, arg_1.b.c)), true, global1[_wgslsmith_index_u32(~arg_1.b.a.a, 2u)], true), !vec4<bool>(global1[_wgslsmith_index_u32(arg_0.a, 2u)], true, global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)]), vec4<bool>(u_input.a.x >= -1i, all(vec4<bool>(false, true, global1[_wgslsmith_index_u32(arg_1.b.e.a, 2u)], arg_1.b.d.x)), arg_1.b.d.x, arg_0.b.x != -954f)), select(arg_1.b.c, func_2(vec4<u32>(arg_0.a, 0u, arg_1.b.e.a, 12369u), vec2<u32>(arg_0.a, arg_0.a)), (u_input.a.x <= -2147483647i) | global1[_wgslsmith_index_u32(reverseBits(arg_0.a), 2u)]), 23980u & select(countOneBits(0u), firstLeadingBit(arg_1.b.a.a), true)), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a.x, u_input.a.x)) | ((u_input.a.xx | vec2<i32>(31129i, -35780i)) << (abs(vec2<u32>(arg_1.b.e.a, 4294967295u)) % vec2<u32>(32u))), max(u_input.a.yz, ~vec2<i32>(2147483647i, 31890i))));
    let var_1 = 1u;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!vec4<bool>(global1[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 2u)], global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)] && global1[_wgslsmith_index_u32(27143u, 2u)], !global1[_wgslsmith_index_u32(63144u, 2u)])), vec4<bool>(global1[_wgslsmith_index_u32(~abs(0u), 2u)], !global1[_wgslsmith_index_u32(firstLeadingBit(20974u), 2u)] | (!global1[_wgslsmith_index_u32(73100u, 2u)] && global1[_wgslsmith_index_u32(func_1(Struct_1(0u, vec2<f32>(217f, 890f)), global0[_wgslsmith_index_u32(6020u, 16u)], 496f), 2u)]), global1[_wgslsmith_index_u32(1u, 2u)] && true, global1[_wgslsmith_index_u32(firstTrailingBit(~_wgslsmith_clamp_u32(1u, 0u, 4294967295u)), 2u)]), !(!(!vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(25380u, 2u)]))));
    global3 = array<Struct_2, 8>();
    let var_1 = Struct_2(Struct_1(_wgslsmith_add_u32(~(~1u), abs(44641u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(402f, 231f)) + vec2<f32>(742f, 552f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(385f, -255f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(926f, -894f), vec2<f32>(858f, 1000f)))))), ~abs(u_input.a.x), all(var_0.ww), select(!select(!vec3<bool>(false, true, global1[_wgslsmith_index_u32(4294967295u, 2u)]), !vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 2u)], true), vec3<bool>(var_0.x, global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(30479u, 2u)])), vec3<bool>(all(!var_0.yzz), any(!vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 2u)], true)), u_input.a.x < _wgslsmith_sub_i32(u_input.a.x, 0i)), select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, true, true), global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(4294967295u, 23540u), 2u)])), Struct_1(4294967295u, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1408f, 948f) + vec2<f32>(-438f, 1000f))))))));
    var var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(16019u, _wgslsmith_clamp_u32(21003u, min(4294967295u, var_1.e.a), _wgslsmith_mod_u32(5994u, var_1.a.a)), func_1(Struct_1(35930u, var_1.e.b), global0[_wgslsmith_index_u32(~11487u, 16u)], _wgslsmith_f_op_f32(abs(var_1.e.b.x))), _wgslsmith_sub_u32(1u, var_1.e.a)), _wgslsmith_mult_vec4_u32(max(vec4<u32>(var_1.e.a, 0u, var_1.a.a, 1u) << (vec4<u32>(var_1.a.a, 1u, var_1.e.a, var_1.a.a) % vec4<u32>(32u)), vec4<u32>(var_1.a.a, 25258u, 15951u, var_1.e.a)), ~(~vec4<u32>(var_1.a.a, var_1.a.a, var_1.e.a, var_1.a.a)))) ^ vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.a.a, var_1.e.a, 1u) | vec4<u32>(26417u, 47137u, var_1.e.a, 16829u), firstTrailingBit(vec4<u32>(var_1.e.a, 52699u, var_1.e.a, var_1.e.a))), ~(~24495u)), 29755u, var_1.a.a, var_1.e.a);
    var var_3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.e.b.x, var_1.a.b.x)) * var_1.a.b.x)), Struct_2(Struct_1(~(~0u), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.e.b.x, -802f))))), u_input.a.x, false, var_0.yyx, Struct_1(_wgslsmith_clamp_u32(var_1.e.a, select(var_1.e.a, 12741u, global1[_wgslsmith_index_u32(var_1.a.a, 2u)]), 90129u << (var_1.a.a % 32u)), var_1.e.b)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_2.x ^ ~4294967295u), _wgslsmith_mod_vec2_i32(u_input.a.yz, countOneBits(u_input.a.yx) ^ _wgslsmith_add_vec2_i32(u_input.a.yx, ~u_input.a.zz)));
}

