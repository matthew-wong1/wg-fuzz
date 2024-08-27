struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(0u, 1061f, 1i, vec3<i32>(-14429i, -1i, 28847i), 1u), Struct_1(12046u, -438f, i32(-2147483648), vec3<i32>(-8346i, -1i, i32(-2147483648)), 1u), Struct_1(1u, 1220f, 36191i, vec3<i32>(-42366i, -51951i, -37718i), 0u), Struct_1(4294967295u, -1193f, 21361i, vec3<i32>(5973i, -1i, 2147483647i), 11865u), Struct_1(0u, 128f, 1818i, vec3<i32>(2147483647i, 2147483647i, 42950i), 17349u), Struct_1(54894u, 257f, 7605i, vec3<i32>(2147483647i, 2147483647i, 18833i), 1u), Struct_1(0u, 1000f, -52550i, vec3<i32>(4052i, 0i, 31424i), 4294967295u), Struct_1(0u, 1910f, 2147483647i, vec3<i32>(2290i, -48836i, -39672i), 23065u), Struct_1(74264u, -3137f, -1i, vec3<i32>(2147483647i, 17093i, -25988i), 0u), Struct_1(1u, -285f, 37091i, vec3<i32>(0i, 0i, -22478i), 18299u), Struct_1(1u, -904f, i32(-2147483648), vec3<i32>(5555i, -8579i, 21560i), 146u), Struct_1(12932u, -1000f, -52933i, vec3<i32>(1i, i32(-2147483648), -1i), 62152u), Struct_1(18174u, 2083f, i32(-2147483648), vec3<i32>(36355i, -7737i, 31477i), 4294967295u), Struct_1(14101u, 257f, -4027i, vec3<i32>(35917i, 21268i, -1i), 30784u), Struct_1(45544u, 261f, -1i, vec3<i32>(-1i, -35750i, 78481i), 4294967295u), Struct_1(13353u, -640f, 17587i, vec3<i32>(-38289i, -1i, 32418i), 0u), Struct_1(4294967295u, -436f, 0i, vec3<i32>(1i, 2147483647i, 0i), 89016u), Struct_1(0u, -1091f, 15678i, vec3<i32>(i32(-2147483648), -27532i, -1619i), 4294967295u), Struct_1(89903u, 2951f, 0i, vec3<i32>(-14821i, 71791i, -89322i), 102774u), Struct_1(64227u, -1301f, 64514i, vec3<i32>(1i, -1i, 2147483647i), 8137u), Struct_1(4294967295u, -970f, -15746i, vec3<i32>(1i, 1i, -34129i), 1u), Struct_1(0u, 202f, -16348i, vec3<i32>(-34619i, 0i, -17724i), 4178u), Struct_1(4294967295u, 725f, -40872i, vec3<i32>(55907i, i32(-2147483648), -33766i), 1u), Struct_1(24856u, 886f, 2147483647i, vec3<i32>(-21887i, 18990i, 11772i), 137777u), Struct_1(84367u, -1622f, 6358i, vec3<i32>(i32(-2147483648), i32(-2147483648), 14476i), 50770u), Struct_1(26670u, 222f, 1i, vec3<i32>(1i, 21880i, 1i), 0u), Struct_1(1u, -2272f, -1i, vec3<i32>(2147483647i, -11068i, 47937i), 0u), Struct_1(4294967295u, 200f, 1i, vec3<i32>(-14516i, -38516i, 0i), 9937u), Struct_1(17213u, 199f, 2147483647i, vec3<i32>(31730i, 1i, 2147483647i), 1275u), Struct_1(1u, 1184f, -1i, vec3<i32>(-1i, 1i, -1i), 60109u), Struct_1(1u, -842f, -1i, vec3<i32>(-1i, 2147483647i, 2147483647i), 4294967295u), Struct_1(4294967295u, -1338f, -5984i, vec3<i32>(22251i, 1i, 20540i), 4294967295u));

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(1u, 1765f, -45550i, vec3<i32>(-16674i, -1i, i32(-2147483648)), 0u), Struct_1(1u, 981f, -46752i, vec3<i32>(1i, 24476i, i32(-2147483648)), 1u), Struct_1(31761u, -924f, i32(-2147483648), vec3<i32>(16679i, i32(-2147483648), 11014i), 42965u), Struct_1(4294967295u, 1000f, -1i, vec3<i32>(0i, -22039i, -18868i), 1u), Struct_1(67654u, 1131f, 1530i, vec3<i32>(1i, i32(-2147483648), -5111i), 1u), Struct_1(1u, -644f, -1i, vec3<i32>(-1i, 2147483647i, 1i), 4294967295u), Struct_1(42239u, 1596f, -1i, vec3<i32>(-8089i, 63558i, 5492i), 74413u), Struct_1(8285u, 1000f, 0i, vec3<i32>(2147483647i, -16813i, 0i), 15176u), Struct_1(0u, -189f, -56887i, vec3<i32>(-17051i, -2587i, 31755i), 141351u), Struct_1(0u, 525f, i32(-2147483648), vec3<i32>(1i, 44110i, 1i), 4294967295u), Struct_1(13028u, -587f, i32(-2147483648), vec3<i32>(0i, 0i, 2147483647i), 1u), Struct_1(1u, 657f, i32(-2147483648), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), 1u), Struct_1(29797u, -1192f, i32(-2147483648), vec3<i32>(40652i, i32(-2147483648), i32(-2147483648)), 0u), Struct_1(16146u, -1256f, -79561i, vec3<i32>(-1i, 27062i, i32(-2147483648)), 10057u), Struct_1(31090u, -1582f, -15824i, vec3<i32>(59384i, 5914i, -37511i), 1u), Struct_1(1u, -1155f, 9698i, vec3<i32>(-15776i, 28920i, -1i), 45222u), Struct_1(4294967295u, 1310f, 0i, vec3<i32>(i32(-2147483648), -1i, 2147483647i), 35764u), Struct_1(45332u, 485f, i32(-2147483648), vec3<i32>(0i, i32(-2147483648), 24544i), 13289u), Struct_1(70240u, -477f, 6156i, vec3<i32>(2147483647i, 2147483647i, 2147483647i), 4294967295u));

var<private> global2: Struct_1;

var<private> global3: array<bool, 25>;

var<private> global4: array<Struct_1, 10>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> u32 {
    var var_0 = global4[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 30723u, arg_0.x), vec3<u32>(1u, global2.e, 1u)), arg_0)), 10u)];
    var var_1 = _wgslsmith_clamp_u32(abs(arg_1.a), max(~global2.e & 1u, ~4294967295u), ~59291u);
    global4 = array<Struct_1, 10>();
    var var_2 = !(!(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-2954f, var_0.b), _wgslsmith_f_op_f32(489f * var_0.b), true)) < _wgslsmith_f_op_f32(-1441f - var_0.b)));
    let var_3 = abs(vec3<u32>(_wgslsmith_add_u32(4294967295u, min(global2.e, arg_0.x)), arg_1.a, 4294967295u)) | _wgslsmith_mult_vec3_u32(reverseBits(arg_0) & max(vec3<u32>(4294967295u, global2.e, arg_1.a), vec3<u32>(0u, 1u, var_0.a)), ~vec3<u32>(4294967295u | global2.a, 68259u, var_0.e));
    return ~(~4294967295u) >> (_wgslsmith_mod_u32(~abs(~var_3.x), max(var_0.e << (arg_1.a % 32u), 1u)) % 32u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = select(~select(arg_0.e, ~arg_1.e, all(!vec4<bool>(false, global3[_wgslsmith_index_u32(1u, 25u)], global3[_wgslsmith_index_u32(global2.a, 25u)], global3[_wgslsmith_index_u32(31307u, 25u)]))), 0u << ((firstTrailingBit(global2.e) << (u_input.a % 32u)) % 32u), any(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 25u)], global3[_wgslsmith_index_u32(global2.a, 25u)], true, arg_0.a == 36625u)));
    global3 = array<bool, 25>();
    global0 = array<Struct_1, 32>();
    global3 = array<bool, 25>();
    global4 = array<Struct_1, 10>();
    return -(~(-2147483647i)) << (u_input.a % 32u);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(~17322u, _wgslsmith_f_op_f32(step(global2.b, 864f)), ~(~global2.d.x), vec3<i32>(func_4(Struct_1(func_3(vec3<u32>(52283u, 21282u, global2.e), Struct_1(0u, global2.b, global2.d.x, global2.d, 0u)), _wgslsmith_f_op_f32(-global2.b), ~(-21565i), vec3<i32>(global2.c, 0i, -42988i), u_input.a ^ u_input.a), global1[_wgslsmith_index_u32(~(global2.e ^ u_input.a), 19u)]), global2.d.x, global2.c), ~min(29668u, ~0u));
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, 65057u), vec4<u32>(global2.e, global2.e, 0u, 39197u), vec4<u32>(var_0.a, 43063u, global2.e, 84180u)) | ~vec4<u32>(u_input.a, 22816u, 71460u, 0u), vec4<u32>(4294967295u & u_input.a, 25367u, 16753u, var_0.e)), global2.e >> (u_input.a % 32u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(13758u, global2.a, var_0.a, 175755u) ^ vec4<u32>(103946u, 1u, var_0.e, var_0.a)), firstTrailingBit(vec4<u32>(u_input.a, global2.a, var_0.a, var_0.a)) ^ vec4<u32>(31549u, 4294967295u, 1u, var_0.a))), 32u)];
    var_0 = global4[_wgslsmith_index_u32(4294967295u, 10u)];
    return Struct_1(16454u, _wgslsmith_f_op_f32(trunc(global2.b)), global2.c, global2.d, 1u);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: vec2<bool>, arg_3: u32) -> vec3<i32> {
    let var_0 = 0u;
    global3 = array<bool, 25>();
    let var_1 = func_2();
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~(~(u_input.a & var_0)) >> (global2.e % 32u)), 32u)];
    global0 = array<Struct_1, 32>();
    return _wgslsmith_mod_vec3_i32(~global2.d, vec3<i32>(1i, select(var_2.c, select(-68503i, -1i, true), !(!arg_1.x)), ~global2.d.x));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 32>();
    var var_0 = vec3<f32>(-328f, 1525f, _wgslsmith_f_op_f32(-1364f - func_2().b));
    let var_1 = ~abs(global2.d.x);
    let var_2 = -(~(-func_4(func_2(), global4[_wgslsmith_index_u32(4058u, 10u)])));
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(abs(_wgslsmith_sub_u32(~global2.e, 1u))), 28367u), 19u)];
    return Struct_1(u_input.a, _wgslsmith_f_op_f32(2349f + _wgslsmith_f_op_f32(trunc(1000f))), 2147483647i, vec3<i32>(_wgslsmith_mod_i32(i32(-1i) * -27707i, ~var_2) & _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_1, 1i, arg_1.c, 16114i), vec4<i32>(-1195i, arg_1.c, 0i, var_1)), _wgslsmith_div_vec4_i32(vec4<i32>(var_1, -1i, -40868i, 0i), vec4<i32>(arg_1.d.x, var_1, var_2, -2216i))), abs(-global2.c), -(_wgslsmith_dot_vec3_i32(global2.d, arg_1.d) & 0i)), func_2().a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(global2.a, 10u)];
    let var_1 = global2.d.zy;
    let var_2 = func_5(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(26163u, u_input.a), vec2<u32>(global2.a, 1u)), countOneBits(26461u)), firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(66511u, global2.a), vec2<u32>(1u, global2.a)))), ~vec2<u32>(1u, global2.e) >> (vec2<u32>(_wgslsmith_sub_u32(4294967295u, u_input.a), ~11903u) % vec2<u32>(32u))), Struct_1(10182u, var_0.b, -countOneBits(var_1.x >> (4294967295u % 32u)), firstLeadingBit(func_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.b, global2.b), vec2<f32>(126f, global2.b))), vec3<bool>(global3[_wgslsmith_index_u32(global2.a, 25u)], global3[_wgslsmith_index_u32(var_0.e, 25u)], global3[_wgslsmith_index_u32(u_input.a, 25u)]), select(vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 25u)], global3[_wgslsmith_index_u32(var_0.a, 25u)]), vec2<bool>(true, true), false), u_input.a & global2.e)), var_0.a));
    global3 = array<bool, 25>();
    global1 = array<Struct_1, 19>();
    var var_3 = ~func_2().c;
    global2 = global0[_wgslsmith_index_u32(~func_3(vec3<u32>(1u, 73879u, firstTrailingBit(global2.e)), var_2) | global2.e, 32u)];
    var_3 = 2147483647i;
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(func_2().b, _wgslsmith_f_op_f32(f32(-1f) * -647f)) - vec2<f32>(_wgslsmith_f_op_f32(select(-591f, _wgslsmith_f_op_f32(-var_0.b), any(vec2<bool>(false, global3[_wgslsmith_index_u32(1u, 25u)])))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(844f, 1012f)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, -1409f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, -104f))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2.b, -1000f)))))), !vec2<bool>(false, all(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 25u)], global3[_wgslsmith_index_u32(global2.a, 25u)], global3[_wgslsmith_index_u32(var_2.e, 25u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(var_0.a, u_input.a)))));
}

