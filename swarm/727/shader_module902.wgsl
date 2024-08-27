struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: bool,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17>;

var<private> global1: Struct_1;

var<private> global2: array<vec3<f32>, 27> = array<vec3<f32>, 27>(vec3<f32>(-1620f, -1454f, 1462f), vec3<f32>(591f, 826f, -243f), vec3<f32>(2059f, 2819f, -2645f), vec3<f32>(-680f, -961f, -817f), vec3<f32>(-1158f, -253f, -385f), vec3<f32>(-564f, -1953f, -1082f), vec3<f32>(-548f, 228f, -1108f), vec3<f32>(2051f, -1734f, 133f), vec3<f32>(1983f, -1000f, 1623f), vec3<f32>(-1879f, 2106f, -853f), vec3<f32>(248f, -593f, 1801f), vec3<f32>(1357f, -1070f, -225f), vec3<f32>(-651f, 1000f, 162f), vec3<f32>(1513f, 1068f, -1372f), vec3<f32>(515f, -1448f, 1000f), vec3<f32>(1489f, 1357f, 116f), vec3<f32>(-397f, 633f, -251f), vec3<f32>(-1000f, -1646f, 1044f), vec3<f32>(-124f, -1667f, -1822f), vec3<f32>(309f, -787f, -1663f), vec3<f32>(-1136f, 462f, 804f), vec3<f32>(2084f, -161f, 701f), vec3<f32>(121f, -526f, 684f), vec3<f32>(-404f, 1442f, 221f), vec3<f32>(-464f, 704f, -554f), vec3<f32>(639f, 466f, -874f), vec3<f32>(477f, -1858f, -374f));

var<private> global3: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec3<bool>(false, true, false), 70095u, true, vec2<i32>(-1i, 0i), vec4<f32>(355f, -306f, -1741f, -149f)), Struct_1(vec3<bool>(false, true, false), 9107u, true, vec2<i32>(1910i, 37801i), vec4<f32>(-2134f, -416f, 1769f, 600f)), Struct_1(vec3<bool>(false, false, false), 4294967295u, true, vec2<i32>(27531i, -6183i), vec4<f32>(1567f, -1573f, -221f, -502f)), Struct_1(vec3<bool>(true, false, false), 44678u, true, vec2<i32>(-1i, -1i), vec4<f32>(-1986f, 996f, 1454f, 442f)), Struct_1(vec3<bool>(false, false, false), 29435u, true, vec2<i32>(0i, -60195i), vec4<f32>(-1514f, -542f, 2563f, -2070f)), Struct_1(vec3<bool>(false, false, true), 44961u, false, vec2<i32>(-1i, -61925i), vec4<f32>(-516f, -207f, -1010f, 359f)), Struct_1(vec3<bool>(false, true, true), 0u, true, vec2<i32>(33019i, -21262i), vec4<f32>(-1334f, -908f, 1000f, 211f)), Struct_1(vec3<bool>(true, false, true), 4294967295u, false, vec2<i32>(2147483647i, -8678i), vec4<f32>(373f, -359f, -1016f, -1058f)), Struct_1(vec3<bool>(false, true, true), 4294967295u, true, vec2<i32>(i32(-2147483648), 2147483647i), vec4<f32>(-295f, -1167f, 1023f, 150f)), Struct_1(vec3<bool>(true, false, false), 85083u, false, vec2<i32>(53270i, 53862i), vec4<f32>(867f, -1000f, -1322f, 257f)), Struct_1(vec3<bool>(false, true, false), 4294967295u, true, vec2<i32>(-1i, 2147483647i), vec4<f32>(-1191f, 1357f, 190f, -1618f)), Struct_1(vec3<bool>(true, false, false), 15156u, true, vec2<i32>(i32(-2147483648), 1i), vec4<f32>(-314f, -1752f, -139f, 1000f)), Struct_1(vec3<bool>(true, true, false), 0u, true, vec2<i32>(-7986i, 35681i), vec4<f32>(709f, -1027f, 930f, 1793f)), Struct_1(vec3<bool>(false, false, false), 4294967295u, true, vec2<i32>(-1i, 21683i), vec4<f32>(-312f, 1966f, 1000f, -824f)), Struct_1(vec3<bool>(false, true, true), 1u, true, vec2<i32>(-26257i, -31790i), vec4<f32>(-1965f, 581f, 1311f, -1000f)), Struct_1(vec3<bool>(true, false, false), 66697u, true, vec2<i32>(2147483647i, -75821i), vec4<f32>(-1363f, 978f, -1368f, 733f)), Struct_1(vec3<bool>(true, false, false), 33726u, true, vec2<i32>(1i, -1i), vec4<f32>(267f, -1361f, 1656f, 1517f)), Struct_1(vec3<bool>(true, false, false), 0u, false, vec2<i32>(10015i, 0i), vec4<f32>(589f, 1712f, -946f, 1000f)), Struct_1(vec3<bool>(false, true, false), 4294967295u, true, vec2<i32>(i32(-2147483648), 17816i), vec4<f32>(1914f, -857f, -336f, 999f)), Struct_1(vec3<bool>(false, false, true), 15147u, true, vec2<i32>(-1i, 20817i), vec4<f32>(-1010f, -504f, -121f, 1145f)), Struct_1(vec3<bool>(true, false, true), 23244u, false, vec2<i32>(-2700i, -22686i), vec4<f32>(248f, 237f, 1051f, 864f)), Struct_1(vec3<bool>(false, false, true), 51484u, true, vec2<i32>(0i, -4080i), vec4<f32>(1000f, -498f, -686f, -1000f)), Struct_1(vec3<bool>(true, true, false), 107611u, true, vec2<i32>(-25277i, -1i), vec4<f32>(-355f, 1010f, -1698f, -1653f)), Struct_1(vec3<bool>(true, true, false), 4294967295u, true, vec2<i32>(31289i, -27532i), vec4<f32>(123f, -2059f, 613f, 1213f)), Struct_1(vec3<bool>(true, false, false), 0u, false, vec2<i32>(31629i, i32(-2147483648)), vec4<f32>(-847f, 1048f, -429f, -844f)));

var<private> global4: array<vec4<u32>, 11>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32) -> u32 {
    global2 = array<vec3<f32>, 27>();
    return _wgslsmith_mult_u32(1u << (_wgslsmith_mod_u32(select(_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(global1.b, global1.b, u_input.d.x)), ~u_input.d.x, !global1.a.x), _wgslsmith_div_u32(37687u, global1.b)) % 32u), global1.b);
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1) -> f32 {
    global2 = array<vec3<f32>, 27>();
    let var_0 = _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(sign(599f))));
    global1 = Struct_1(select(arg_2.a, arg_2.a, select(arg_2.a, arg_2.a, false)), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.b, 98468u, arg_2.b), u_input.d) << (~_wgslsmith_mult_u32(global1.b, 61596u) % 32u)), global0[_wgslsmith_index_u32(1u, 17u)], -min(~vec2<i32>(-21057i, 22729i), _wgslsmith_mult_vec2_i32(arg_2.d, vec2<i32>(-18727i, 0i))) ^ firstTrailingBit(_wgslsmith_add_vec2_i32(arg_2.d, global1.d)), _wgslsmith_f_op_vec4_f32(-global1.e));
    var var_1 = vec4<u32>(_wgslsmith_mod_u32(~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(global4[_wgslsmith_index_u32(1u, 11u)], global4[_wgslsmith_index_u32(arg_2.b, 11u)]), ~39013u), 4294967295u), arg_2.b, arg_1, arg_2.b);
    let var_2 = global3[_wgslsmith_index_u32(reverseBits(4294967295u & ~(func_3(297f) ^ ~51672u)), 25u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.e.x) + -238f) + _wgslsmith_f_op_f32(sign(var_0))), 149f)));
}

fn func_1() -> vec3<i32> {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(56345u, _wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, global1.b), u_input.b.x)), select(~_wgslsmith_div_u32(u_input.d.x, u_input.b.x), ~5745u, global1.a.x)), _wgslsmith_sub_vec2_u32(select(_wgslsmith_div_vec2_u32(vec2<u32>(global1.b, 5230u), u_input.b.xz), abs(firstTrailingBit(vec2<u32>(1u, 17655u))), global1.a.zy), select(vec2<u32>(u_input.b.x ^ global1.b, 1u), firstTrailingBit(firstLeadingBit(u_input.d.yz)), select(vec2<bool>(true, global1.c), select(vec2<bool>(global0[_wgslsmith_index_u32(34956u, 17u)], false), vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 17u)]), vec2<bool>(true, false)), all(vec4<bool>(false, false, global1.c, global0[_wgslsmith_index_u32(global1.b, 17u)])))))), 25u)];
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<u32>(1u, 1082u, global1.b), _wgslsmith_sub_u32(69597u, var_0.b), global3[_wgslsmith_index_u32(max(global1.b, 36653u), 25u)])))), global1.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.x)), -487f);
    let var_2 = true;
    let var_3 = select(!global1.a.zx, global1.a.yx, vec2<bool>(!(all(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 17u)], false)) | true), global1.c));
    let var_4 = Struct_1(!var_0.a, u_input.d.x, false, vec2<i32>(-1i) * -firstLeadingBit(vec2<i32>(-2147483647i, u_input.a)), var_1);
    return _wgslsmith_div_vec3_i32(-vec3<i32>(global1.d.x, u_input.a, 39453i), vec3<i32>(1i, ~u_input.c, -1i) & -select(vec3<i32>(-9518i, 0i, global1.d.x), vec3<i32>(20838i, -1i, global1.d.x), false)) >> (~(vec3<u32>(u_input.d.x, _wgslsmith_clamp_u32(var_0.b, 1u, 4294967295u), global1.b | global1.b) << (~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.b, global1.b, var_0.b), vec3<u32>(u_input.d.x, var_0.b, global1.b)) % vec3<u32>(32u))) % vec3<u32>(32u));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: f32) -> Struct_1 {
    var var_0 = !(!global0[_wgslsmith_index_u32(global1.b, 17u)]);
    let var_1 = Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(min(global4[_wgslsmith_index_u32(0u, 11u)], global4[_wgslsmith_index_u32(global1.b, 11u)])), firstTrailingBit(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, 0u), 11u)])), 17u)], !global1.a.x, !global1.a.x), _wgslsmith_div_u32(_wgslsmith_mod_u32(~(u_input.d.x & global1.b), _wgslsmith_dot_vec3_u32(~vec3<u32>(15387u, u_input.d.x, global1.b), vec3<u32>(26535u, 9723u, global1.b) & vec3<u32>(5631u, global1.b, global1.b))), 1u), global0[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(51934u, _wgslsmith_div_u32(global1.b, u_input.b.x) ^ 0u), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(24555u, u_input.b.x, global1.b)), vec3<u32>(u_input.b.x, global1.b, 4294967295u)), u_input.b)), 17u)], vec2<i32>(_wgslsmith_clamp_i32(global1.d.x, i32(-1i) * -55687i, firstLeadingBit(2147483647i)), 3127i) | arg_2.yy, global1.e);
    global2 = array<vec3<f32>, 27>();
    global4 = array<vec4<u32>, 11>();
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_1.x, 960f)), vec3<f32>(global1.e.x, -1261f, -304f)))))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!vec3<bool>(!global0[_wgslsmith_index_u32(u_input.b.x >> (9572u % 32u), 17u)], false, true), 66718u, _wgslsmith_f_op_f32(-122f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.e.x, global1.e.x)) + global1.e.x)) == _wgslsmith_div_f32(global1.e.x, _wgslsmith_div_f32(-1549f, _wgslsmith_f_op_f32(floor(819f)))), global1.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.e)), _wgslsmith_div_vec4_f32(vec4<f32>(global1.e.x, 1247f, 390f, global1.e.x), global1.e), all(vec3<bool>(global1.c, true, false)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global1.e, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.e.x, 1188f, global1.e.x, 801f))), true && global0[_wgslsmith_index_u32(0u, 17u)])), global1.e)));
    var var_1 = func_4(firstLeadingBit(var_0.d), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1817f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-122f, 1332f, global0[_wgslsmith_index_u32(var_0.b, 17u)])) - _wgslsmith_div_f32(-952f, var_0.e.x)))), _wgslsmith_f_op_f32(-global1.e.x)), ~abs(min(vec3<i32>(var_0.d.x, 70090i, u_input.a), vec3<i32>(-1i, u_input.c, -20777i))) & vec3<i32>(_wgslsmith_dot_vec3_i32(min(vec3<i32>(u_input.a, global1.d.x, var_0.d.x), vec3<i32>(-11880i, 2893i, -1i)), func_1()), global1.d.x, -833i), _wgslsmith_f_op_f32(global1.e.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -500f))))));
    var var_2 = -2147483647i;
    var var_3 = var_1.e.zzx;
    var var_4 = Struct_1(!vec3<bool>(u_input.d.x != func_3(var_0.e.x), false, var_1.c), abs(~4294967295u), false, vec2<i32>(-1i) * -((vec2<i32>(var_1.d.x, u_input.c) & vec2<i32>(u_input.c, global1.d.x)) >> (select(u_input.b.xx, u_input.d.xy, vec2<bool>(true, global1.c)) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_0.e), _wgslsmith_f_op_vec4_f32(exp2(var_0.e))))) - global1.e));
    var_1 = var_0;
    let var_5 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer((vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(-28631i, var_1.d.x, u_input.a, 17400i))) & vec4<i32>(var_1.d.x, -2147483647i, -17003i, ~(-var_0.d.x)));
}

