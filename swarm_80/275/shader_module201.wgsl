struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<f32>, 29> = array<vec4<f32>, 29>(vec4<f32>(888f, -1169f, -647f, 853f), vec4<f32>(1813f, 470f, -1496f, 1450f), vec4<f32>(-739f, -290f, 304f, 273f), vec4<f32>(-1257f, 443f, 1002f, -1698f), vec4<f32>(1202f, 603f, 600f, 669f), vec4<f32>(-720f, -205f, 1000f, 497f), vec4<f32>(-2047f, -673f, 1000f, -521f), vec4<f32>(-707f, 328f, -2102f, -508f), vec4<f32>(-1185f, 1814f, -773f, 942f), vec4<f32>(1000f, 399f, -2346f, 458f), vec4<f32>(-2297f, -590f, 494f, 1077f), vec4<f32>(-572f, -1054f, 427f, 514f), vec4<f32>(1234f, 961f, 542f, 2090f), vec4<f32>(467f, 583f, 1262f, -1338f), vec4<f32>(977f, -645f, 1700f, -1076f), vec4<f32>(1730f, 109f, 1430f, 1824f), vec4<f32>(207f, -1877f, 1000f, 715f), vec4<f32>(2143f, -1528f, 198f, -1664f), vec4<f32>(-212f, -1007f, -513f, 1472f), vec4<f32>(1003f, -489f, -1064f, -1000f), vec4<f32>(-210f, -1065f, -999f, -1000f), vec4<f32>(178f, -1573f, -521f, -123f), vec4<f32>(181f, -297f, 1000f, -1530f), vec4<f32>(862f, -1417f, -2291f, -361f), vec4<f32>(1008f, -496f, 815f, -491f), vec4<f32>(1848f, 1000f, 525f, 947f), vec4<f32>(-317f, -980f, 1000f, 1428f), vec4<f32>(623f, -3786f, 1048f, -291f), vec4<f32>(881f, 1202f, 578f, 1692f));

var<private> global2: bool = true;

var<private> global3: array<vec3<i32>, 24>;

var<private> global4: array<bool, 11>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = Struct_2(_wgslsmith_add_u32(~u_input.b.x, 65016u), Struct_1(~(~arg_1.a), _wgslsmith_clamp_i32(select(arg_2.b, arg_2.c.x, false), ~arg_2.c.x, arg_1.c.x) << (21225u % 32u), -_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, arg_2.b, arg_1.b) | vec3<i32>(arg_2.b, u_input.c.x, -53357i), arg_2.c)), true);
    global0 = u_input.c.x >> (0u % 32u);
    var var_1 = !(!(!(!(var_0.c | global4[_wgslsmith_index_u32(85535u, 11u)]))));
    var var_2 = 543f;
    var_1 = any(select(!(!select(vec4<bool>(global4[_wgslsmith_index_u32(arg_2.a, 11u)], global4[_wgslsmith_index_u32(1u, 11u)], true, global4[_wgslsmith_index_u32(0u, 11u)]), vec4<bool>(true, false, var_0.c, global4[_wgslsmith_index_u32(14940u, 11u)]), vec4<bool>(var_0.c, var_0.c, global4[_wgslsmith_index_u32(arg_2.a, 11u)], global4[_wgslsmith_index_u32(arg_1.a, 11u)]))), vec4<bool>(true, !global4[_wgslsmith_index_u32(27515u, 11u)], !(arg_0 >= 19693u), arg_1.c.x == ~7699i), true));
    return !vec3<bool>(global4[_wgslsmith_index_u32(~4294967295u, 11u)] & var_0.c, true, var_0.c);
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = !(!vec3<bool>(true, !any(vec2<bool>(false, true)), false));
    let var_1 = Struct_3(u_input.c.x << (~4294967295u % 32u), Struct_2(0u, Struct_1(_wgslsmith_clamp_u32(4294967295u, u_input.d, u_input.b.x) << (_wgslsmith_mod_u32(0u, 3467u) % 32u), (u_input.c.x >> (4294967295u % 32u)) ^ u_input.c.x, _wgslsmith_add_vec3_i32(global3[_wgslsmith_index_u32(u_input.d, 24u)] ^ global3[_wgslsmith_index_u32(48882u, 24u)], vec3<i32>(2147483647i, -2147483647i, 35538i))), !all(vec2<bool>(true, true))));
    var_0 = select(!func_3(_wgslsmith_sub_u32(var_1.b.b.a, ~var_1.b.b.a), Struct_1(u_input.d, u_input.c.x, vec3<i32>(-1i, u_input.c.x, -2147483647i) & vec3<i32>(var_1.b.b.c.x, 1i, 75986i)), var_1.b.b), vec3<bool>(!(true != global4[_wgslsmith_index_u32(var_1.b.b.a, 11u)]) & true, true || (select(var_0.x, global4[_wgslsmith_index_u32(4263u, 11u)], var_0.x) & (arg_0 == -403f)), true & all(var_0.zy)), vec3<bool>(true, true, true));
    var var_2 = Struct_3(-_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b.b.b, 2147483647i), vec2<i32>(-var_1.b.b.b, 40426i)), var_1.b);
    let var_3 = vec2<f32>(512f, _wgslsmith_f_op_f32(-arg_0));
    return reverseBits(1u);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_2 {
    global4 = array<bool, 11>();
    let var_0 = arg_0.b;
    let var_1 = Struct_1((min(1u, ~47158u) >> (abs(min(arg_0.b.a, u_input.d)) % 32u)) ^ ~arg_0.a, _wgslsmith_dot_vec2_i32(max(vec2<i32>(arg_2.c.x, 1i), vec2<i32>(_wgslsmith_clamp_i32(var_0.b, -2147483647i, 8611i), var_0.c.x)), max(select(firstTrailingBit(vec2<i32>(var_0.c.x, arg_0.b.c.x)), arg_2.c.yz, var_0.a != arg_1), -u_input.c)), _wgslsmith_div_vec3_i32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(select(vec3<u32>(arg_1, var_0.a, 45400u), arg_3, vec3<bool>(global4[_wgslsmith_index_u32(arg_2.a, 11u)], global4[_wgslsmith_index_u32(u_input.d, 11u)], global4[_wgslsmith_index_u32(var_0.a, 11u)])), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.a, arg_0.a, 75231u), vec3<u32>(arg_0.a, u_input.d, 23984u))), max(vec3<u32>(arg_3.x, arg_0.a, arg_3.x), vec3<u32>(8404u, 86886u, 19027u)) | (vec3<u32>(18771u, arg_0.b.a, arg_0.a) ^ arg_3)), 24u)], (global3[_wgslsmith_index_u32(0u, 24u)] << (arg_3 % vec3<u32>(32u))) << (max(_wgslsmith_mult_vec3_u32(arg_3, vec3<u32>(u_input.d, arg_0.b.a, 4294967295u)), vec3<u32>(4294967295u, arg_2.a, 152102u)) % vec3<u32>(32u))));
    global2 = any(select(vec2<bool>(global4[_wgslsmith_index_u32(arg_3.x, 11u)] || true, false), select(!(!vec2<bool>(false, global4[_wgslsmith_index_u32(1u, 11u)])), select(select(vec2<bool>(false, arg_0.c), vec2<bool>(false, true), vec2<bool>(arg_0.c, false)), vec2<bool>(arg_0.c, arg_0.c), global4[_wgslsmith_index_u32(1u, 11u)] || global4[_wgslsmith_index_u32(0u, 11u)]), vec2<bool>(false & arg_0.c, select(global4[_wgslsmith_index_u32(2709u, 11u)], global4[_wgslsmith_index_u32(arg_0.b.a, 11u)], global4[_wgslsmith_index_u32(var_0.a, 11u)]))), !select(vec2<bool>(arg_0.c, true), !vec2<bool>(arg_0.c, true), !vec2<bool>(global4[_wgslsmith_index_u32(25007u, 11u)], false))));
    var var_2 = firstLeadingBit(abs(arg_2.c.xz));
    return arg_0;
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(global1[_wgslsmith_index_u32(u_input.b.x, 29u)]));
    let var_1 = 1u;
    let var_2 = Struct_3(arg_0, func_4(Struct_2(~func_2(var_0.x), Struct_1(51675u << (1u % 32u), -arg_0, vec3<i32>(22907i, 0i, -26919i)), any(select(vec4<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 11u)], global4[_wgslsmith_index_u32(u_input.d, 11u)], false, global4[_wgslsmith_index_u32(var_1, 11u)]), vec4<bool>(true, global4[_wgslsmith_index_u32(80721u, 11u)], true, global4[_wgslsmith_index_u32(var_1, 11u)]), false))), 4294967295u, Struct_1(abs(countOneBits(4294967295u)), u_input.c.x, global3[_wgslsmith_index_u32(~59600u, 24u)]), ~select(vec3<u32>(18857u, 42037u, var_1), countOneBits(vec3<u32>(u_input.b.x, var_1, 61326u)), select(vec3<bool>(global4[_wgslsmith_index_u32(var_1, 11u)], true, global4[_wgslsmith_index_u32(62278u, 11u)]), vec3<bool>(global4[_wgslsmith_index_u32(0u, 11u)], true, false), false))));
    let var_3 = _wgslsmith_div_u32(firstTrailingBit(firstLeadingBit(_wgslsmith_clamp_u32(1u, 36141u, var_2.b.b.a))), 4294967295u) ^ abs(49115u);
    global1 = array<vec4<f32>, 29>();
    return var_2.b.b;
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: f32, arg_3: vec3<i32>) -> f32 {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(-531f, arg_2, -1590f, arg_2), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-218f)), arg_2, !arg_1.c)), arg_2, 1089f, _wgslsmith_f_op_f32(trunc(arg_2)))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1417f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1i;
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(u_input.a.x, Struct_2(_wgslsmith_mult_u32(select(0u, 14592u, false), 30669u), func_1(u_input.c.x, -1000f, _wgslsmith_f_op_f32(min(1000f, -751f))), true), 415f, vec3<i32>(select(_wgslsmith_div_i32(u_input.c.x, -7314i), -62600i, true), ~u_input.c.x, _wgslsmith_div_i32(u_input.c.x, firstTrailingBit(u_input.c.x))))) - -516f);
    let var_1 = _wgslsmith_f_op_f32(func_5(_wgslsmith_sub_u32(~_wgslsmith_mod_u32(0u >> (u_input.b.x % 32u), ~u_input.d), ~reverseBits(u_input.a.x)), func_4(Struct_2(~_wgslsmith_clamp_u32(0u, 0u, 33535u), Struct_1(u_input.a.x, -40498i, firstLeadingBit(vec3<i32>(60307i, -2147483647i, -2147483647i))), func_4(func_4(Struct_2(1u, Struct_1(u_input.a.x, u_input.c.x, vec3<i32>(-23160i, u_input.c.x, u_input.c.x)), global4[_wgslsmith_index_u32(27508u, 11u)]), 1u, Struct_1(u_input.d, -1i, global3[_wgslsmith_index_u32(u_input.b.x, 24u)]), vec3<u32>(u_input.a.x, 0u, 49936u)), ~1u, func_1(u_input.c.x, 402f, 646f), vec3<u32>(4294967295u, u_input.b.x, u_input.b.x) & vec3<u32>(u_input.d, u_input.d, 0u)).c), u_input.a.x, func_1(u_input.c.x, 786f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))), vec3<u32>(~61210u, 1u, 4294967295u)), -1118f, global3[_wgslsmith_index_u32(u_input.a.x, 24u)]));
    let var_2 = func_4(func_4(func_4(func_4(Struct_2(1u, Struct_1(32335u, u_input.c.x, global3[_wgslsmith_index_u32(36002u, 24u)]), true), u_input.b.x, Struct_1(1u, u_input.c.x, vec3<i32>(12417i, 2147483647i, u_input.c.x)), countOneBits(vec3<u32>(4294967295u, 4294967295u, u_input.b.x))), ~34134u, Struct_1(1u, i32(-1i) * -1i, vec3<i32>(-25808i, -1i, u_input.c.x)), ~abs(vec3<u32>(28651u, u_input.a.x, u_input.a.x))), ~firstLeadingBit(1u), func_1(min(u_input.c.x, u_input.c.x) ^ abs(u_input.c.x), _wgslsmith_f_op_f32(select(var_1, var_1, true)), _wgslsmith_f_op_f32(select(var_1, _wgslsmith_f_op_f32(abs(-1218f)), true))), max(~vec3<u32>(u_input.d, u_input.d, 102391u), vec3<u32>(84962u, 0u, u_input.b.x)) << (~firstTrailingBit(vec3<u32>(0u, 0u, 4294967295u)) % vec3<u32>(32u))), u_input.d, func_1(1i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), var_1, select(false & global4[_wgslsmith_index_u32(u_input.d, 11u)], true, global4[_wgslsmith_index_u32(10884u, 11u)] && false))), 626f), _wgslsmith_mod_vec3_u32(vec3<u32>(~(~4294967295u), 4294967295u, _wgslsmith_mult_u32(~86991u, func_4(Struct_2(11647u, Struct_1(0u, -2147483647i, global3[_wgslsmith_index_u32(105086u, 24u)]), global4[_wgslsmith_index_u32(68887u, 11u)]), u_input.b.x, Struct_1(u_input.d, u_input.c.x, vec3<i32>(-51499i, u_input.c.x, 2147483647i)), vec3<u32>(0u, 70531u, 1u)).b.a)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(106145u, u_input.a.x, 0u), vec3<u32>(0u, u_input.b.x, u_input.a.x), vec3<u32>(0u, 4294967295u, 55614u))));
    global1 = array<vec4<f32>, 29>();
    let var_3 = ~1u;
    let var_4 = Struct_3(1i, Struct_2(var_2.b.a, func_1(var_2.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - 1168f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1), 1435f))), true));
    let var_5 = firstTrailingBit(firstLeadingBit(_wgslsmith_clamp_i32(~7038i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.c.x, -2147483647i), -global3[_wgslsmith_index_u32(var_2.a, 24u)]), u_input.c.x)));
    global1 = array<vec4<f32>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.c.x, u_input.c.x);
}

