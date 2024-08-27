struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec4<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec4<u32>(4294967295u, 4294967295u, 65471u, 4294967295u), vec4<f32>(335f, 723f, 1000f, -1000f), Struct_1(vec2<i32>(11751i, 1i), vec2<u32>(4294967295u, 73179u), 1342f, 948f), Struct_1(vec2<i32>(-26323i, -11276i), vec2<u32>(117292u, 4294967295u), -580f, -751f), 52607u), Struct_2(vec4<u32>(6587u, 4294967295u, 19077u, 4294967295u), vec4<f32>(688f, -1863f, 1815f, 1277f), Struct_1(vec2<i32>(i32(-2147483648), 0i), vec2<u32>(22629u, 0u), -213f, 1239f), Struct_1(vec2<i32>(-8419i, -1i), vec2<u32>(25690u, 1u), -826f, 711f), 0u), Struct_2(vec4<u32>(0u, 1u, 29856u, 1u), vec4<f32>(-2251f, -145f, 566f, -368f), Struct_1(vec2<i32>(1i, -33949i), vec2<u32>(0u, 5085u), 1200f, -106f), Struct_1(vec2<i32>(1i, 2217i), vec2<u32>(24821u, 46298u), 1945f, -1101f), 4294967295u), Struct_2(vec4<u32>(4294967295u, 56027u, 87007u, 1u), vec4<f32>(109f, 784f, 1503f, 1238f), Struct_1(vec2<i32>(-25493i, -57548i), vec2<u32>(0u, 4114u), 1037f, -1417f), Struct_1(vec2<i32>(-29242i, 1i), vec2<u32>(77726u, 0u), -375f, -151f), 4294967295u), Struct_2(vec4<u32>(1u, 1u, 4294967295u, 4294967295u), vec4<f32>(125f, 425f, 538f, -174f), Struct_1(vec2<i32>(-13260i, 0i), vec2<u32>(86122u, 19967u), -1756f, 574f), Struct_1(vec2<i32>(14121i, i32(-2147483648)), vec2<u32>(1u, 27623u), -1840f, 302f), 1u), Struct_2(vec4<u32>(4294967295u, 1u, 1u, 80647u), vec4<f32>(234f, -1304f, -353f, 532f), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec2<u32>(4294967295u, 1u), 383f, 1329f), Struct_1(vec2<i32>(1i, 2147483647i), vec2<u32>(48727u, 0u), 677f, 262f), 4294967295u), Struct_2(vec4<u32>(1u, 4294967295u, 15188u, 3617u), vec4<f32>(-563f, -707f, -608f, -615f), Struct_1(vec2<i32>(-12565i, 53528i), vec2<u32>(4294967295u, 46106u), -137f, -1660f), Struct_1(vec2<i32>(0i, i32(-2147483648)), vec2<u32>(17063u, 0u), -1134f, 257f), 0u), Struct_2(vec4<u32>(38286u, 75510u, 0u, 0u), vec4<f32>(-1000f, 195f, 301f, 638f), Struct_1(vec2<i32>(62677i, 25578i), vec2<u32>(6455u, 146136u), 1069f, 162f), Struct_1(vec2<i32>(19973i, 2147483647i), vec2<u32>(1u, 38768u), -225f, 186f), 0u), Struct_2(vec4<u32>(32300u, 1u, 85037u, 15266u), vec4<f32>(491f, 1213f, 356f, -576f), Struct_1(vec2<i32>(-66281i, -34970i), vec2<u32>(1u, 32147u), -1744f, -631f), Struct_1(vec2<i32>(-27527i, 29346i), vec2<u32>(2961u, 20840u), -1071f, -920f), 28102u), Struct_2(vec4<u32>(0u, 0u, 1u, 1u), vec4<f32>(451f, 753f, -1554f, 641f), Struct_1(vec2<i32>(-10929i, -11854i), vec2<u32>(4294967295u, 23412u), 851f, 941f), Struct_1(vec2<i32>(24285i, 2147483647i), vec2<u32>(4294967295u, 4294967295u), -1037f, 1363f), 0u), Struct_2(vec4<u32>(1u, 0u, 8570u, 33589u), vec4<f32>(257f, 743f, 450f, 1334f), Struct_1(vec2<i32>(-59078i, -1051i), vec2<u32>(0u, 4294967295u), 763f, -1251f), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec2<u32>(66955u, 7475u), -520f, 727f), 0u), Struct_2(vec4<u32>(0u, 50467u, 1u, 35329u), vec4<f32>(1187f, 300f, 1017f, -1639f), Struct_1(vec2<i32>(625i, 12406i), vec2<u32>(9691u, 0u), 1765f, 1306f), Struct_1(vec2<i32>(-1i, 2147483647i), vec2<u32>(4294967295u, 0u), -1000f, 1118f), 0u), Struct_2(vec4<u32>(8410u, 0u, 4294967295u, 43229u), vec4<f32>(756f, 1284f, -1000f, 776f), Struct_1(vec2<i32>(1i, 0i), vec2<u32>(1u, 0u), -471f, -1557f), Struct_1(vec2<i32>(i32(-2147483648), 41554i), vec2<u32>(4294967295u, 1u), -824f, 1476f), 4021u));

var<private> global1: array<u32, 25> = array<u32, 25>(0u, 0u, 4294967295u, 7956u, 55554u, 0u, 4294967295u, 55032u, 1u, 39782u, 1u, 4294967295u, 0u, 16175u, 4294967295u, 1u, 61910u, 12658u, 4676u, 1u, 73771u, 4294967295u, 1u, 8325u, 0u);

var<private> global2: u32 = 5419u;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1(arg_0: Struct_3) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0.d.b.x)), arg_0.b.c.c), arg_0.b.d.d)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-233f * 1517f))) - _wgslsmith_f_op_f32(max(arg_0.b.d.c, _wgslsmith_f_op_f32(361f - -539f))))));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> vec2<u32> {
    global1 = array<u32, 25>();
    var var_0 = arg_1.yz;
    var_0 = select(vec2<bool>(var_0.x, var_0.x), select(!(!(!vec2<bool>(false, var_0.x))), select(!(!vec2<bool>(false, arg_1.x)), arg_1.xx, false), vec2<bool>(~u_input.c < (global1[_wgslsmith_index_u32(37888u, 25u)] & 4294967295u), arg_1.x)), true);
    global2 = u_input.c;
    global0 = array<Struct_2, 13>();
    return vec2<u32>(select(abs(41332u), ~830u, 50146i >= u_input.a.x), 4294967295u);
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: f32, arg_3: Struct_2) -> bool {
    var var_0 = Struct_3(21942i, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(u_input.c, 25u)], 1u), 13u)], -(~vec4<i32>(countOneBits(arg_3.d.a.x), 1i, arg_3.c.a.x >> (68203u % 32u), arg_3.c.a.x)), Struct_2(arg_3.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1801f, -974f, arg_2, arg_3.b.x) * vec4<f32>(-1040f, arg_3.b.x, arg_2, arg_2)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.b.x, -205f, arg_3.b.x, arg_2) - vec4<f32>(arg_3.d.c, 846f, arg_2, 1000f))) + _wgslsmith_f_op_vec4_f32(trunc(arg_3.b))), arg_3.c, Struct_1(~max(u_input.a, vec2<i32>(22679i, u_input.a.x)), vec2<u32>(arg_0 ^ arg_3.e, _wgslsmith_add_u32(55434u, 96496u)), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(sign(-1356f))), arg_0));
    let var_1 = Struct_3(0i, Struct_2(firstTrailingBit(arg_3.a), vec4<f32>(539f, 1505f, 2334f, -544f), Struct_1(firstTrailingBit(-var_0.c.ww), func_3(-57317i >> (var_0.d.e % 32u), vec3<bool>(false, arg_1, true)), _wgslsmith_f_op_f32(-1105f + _wgslsmith_f_op_f32(-arg_3.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -697f)), Struct_1(~select(vec2<i32>(0i, 1i), vec2<i32>(u_input.b.x, u_input.a.x), vec2<bool>(true, false)), ~(~vec2<u32>(1u, 23671u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2078f) - _wgslsmith_f_op_f32(-1681f * -488f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 - 825f) - _wgslsmith_f_op_f32(var_0.b.b.x * arg_2))), firstLeadingBit(min(1u, reverseBits(u_input.c)))), var_0.c, Struct_2(var_0.d.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.d.b) + arg_3.b), Struct_1(firstLeadingBit(vec2<i32>(u_input.b.x, arg_3.d.a.x)), ~vec2<u32>(1u, 47792u), _wgslsmith_f_op_f32(func_1(Struct_3(-25490i, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(69991u, 25u)], 25u)], 13u)], vec4<i32>(arg_3.d.a.x, -22309i, arg_3.d.a.x, u_input.b.x), global0[_wgslsmith_index_u32(8637u, 13u)]))), _wgslsmith_div_f32(590f, -1304f)), arg_3.d, arg_3.c.b.x));
    global1 = array<u32, 25>();
    let var_2 = var_0.b.d;
    global1 = array<u32, 25>();
    return -12200i > _wgslsmith_div_i32((abs(2147483647i) << (_wgslsmith_dot_vec3_u32(arg_3.a.wyy, arg_3.a.wyy) % 32u)) << ((_wgslsmith_dot_vec3_u32(vec3<u32>(17249u, 1u, 1u), var_0.b.a.zzw) & global1[_wgslsmith_index_u32(1u, 25u)]) % 32u), i32(-1i) * -12293i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(true, any(vec2<bool>(true, true)), any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true))))), vec3<bool>(~global1[_wgslsmith_index_u32(max(global1[_wgslsmith_index_u32(38282u, 25u)], 0u), 25u)] <= abs(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(34582u, 25u)], 25u)]), true, !func_2(global1[_wgslsmith_index_u32(u_input.c & global1[_wgslsmith_index_u32(9496u, 25u)], 25u)], false, _wgslsmith_f_op_f32(func_1(Struct_3(u_input.b.x, Struct_2(vec4<u32>(100882u, global1[_wgslsmith_index_u32(u_input.c, 25u)], 0u, 13110u), vec4<f32>(798f, -663f, 448f, 1239f), Struct_1(u_input.b.xy, vec2<u32>(u_input.c, 40291u), -653f, -165f), Struct_1(u_input.b.yz, vec2<u32>(21650u, 31376u), -2257f, -1346f), global1[_wgslsmith_index_u32(1u, 25u)]), vec4<i32>(u_input.b.x, 0i, u_input.b.x, u_input.b.x), Struct_2(vec4<u32>(4294967295u, 60173u, global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 25u)], 25u)]), vec4<f32>(-3346f, -257f, 473f, 572f), Struct_1(u_input.b.zw, vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(41613u, 25u)]), 884f, 932f), Struct_1(vec2<i32>(u_input.a.x, 0i), vec2<u32>(u_input.c, global1[_wgslsmith_index_u32(1u, 25u)]), -449f, -1221f), global1[_wgslsmith_index_u32(31360u, 25u)])))), Struct_2(vec4<u32>(u_input.c, 0u, 31654u, 35626u), vec4<f32>(-1445f, 1169f, 268f, -2515f), Struct_1(u_input.b.xy, vec2<u32>(9498u, u_input.c), 2182f, -608f), Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), vec2<u32>(0u, 0u), -721f, 522f), 1u))), select(!vec3<bool>(false, true, func_2(1u, true, 520f, Struct_2(vec4<u32>(u_input.c, 4294967295u, global1[_wgslsmith_index_u32(28065u, 25u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 25u)], 25u)]), vec4<f32>(769f, 558f, 1816f, -593f), Struct_1(u_input.b.xy, vec2<u32>(u_input.c, u_input.c), 1000f, 1000f), Struct_1(u_input.a, vec2<u32>(global1[_wgslsmith_index_u32(19894u, 25u)], 1u), -652f, 1669f), u_input.c))), select(vec3<bool>(true, true, true), vec3<bool>(select(true, false, false), true, select(true, false, true)), 0u != max(global1[_wgslsmith_index_u32(4294967295u, 25u)], 46292u)), vec3<bool>(true, true, true)));
    var var_1 = Struct_4(_wgslsmith_mod_u32(min(u_input.c, 1u >> (1u % 32u)), 0u) >> ((global1[_wgslsmith_index_u32(~0u << (0u % 32u), 25u)] ^ firstTrailingBit(~15344u)) % 32u), Struct_1(_wgslsmith_add_vec2_i32(select(vec2<i32>(u_input.a.x, -35958i), reverseBits(vec2<i32>(u_input.a.x, -24456i)), select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x), var_0.yz)), u_input.b.zz), ~vec2<u32>(8446u, global1[_wgslsmith_index_u32(136135u, 25u)]) | vec2<u32>(abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 25u)], 25u)], 25u)]), ~global1[_wgslsmith_index_u32(0u, 25u)]), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1736f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(843f, -2359f)))))));
    var var_2 = ~_wgslsmith_mod_i32(u_input.a.x, 1i) & _wgslsmith_clamp_i32(_wgslsmith_div_i32(3528i, max(var_1.b.a.x, 4561i)), u_input.b.x ^ -1i, max(_wgslsmith_div_i32(var_1.b.a.x, _wgslsmith_sub_i32(-29715i, u_input.b.x)), -21488i));
    var_1 = Struct_4(~(~global1[_wgslsmith_index_u32(~(4294967295u | var_1.b.b.x), 25u)]), Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(-32998i, -1i)), vec2<i32>(u_input.b.x, u_input.a.x)), -var_1.b.a), var_1.b.b, 1376f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.d))));
    var var_3 = vec3<bool>(true, var_0.x, var_0.x);
    let var_4 = _wgslsmith_div_u32(33948u, 1u | global1[_wgslsmith_index_u32(firstLeadingBit(~11192u & _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(66712u, 25u)], 25u)], 40215u)), 25u)]);
    global2 = ~(~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.xxw);
}

