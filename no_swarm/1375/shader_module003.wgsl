struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21> = array<f32, 21>(-154f, -363f, 2400f, 267f, 883f, 351f, 958f, -780f, 1999f, -323f, 133f, 433f, -992f, 666f, -1197f, 1000f, 973f, 281f, 556f, 851f, -2281f);

var<private> global1: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(4667u, 27387u, 1u), vec3<u32>(22694u, 58673u, 6191u), vec3<u32>(1u, 4294967295u, 52181u), vec3<u32>(1u, 0u, 32321u), vec3<u32>(18903u, 1u, 2367u), vec3<u32>(45068u, 0u, 63397u), vec3<u32>(22255u, 4294967295u, 9283u), vec3<u32>(1u, 80470u, 743u), vec3<u32>(61512u, 11761u, 1u), vec3<u32>(111856u, 0u, 37561u), vec3<u32>(29922u, 1u, 1u), vec3<u32>(38209u, 1u, 16588u), vec3<u32>(4294967295u, 4294967295u, 0u));

var<private> global2: i32;

var<private> global3: Struct_1 = Struct_1(-203f, false, vec3<u32>(4294967295u, 11406u, 4294967295u), vec3<u32>(18285u, 1u, 6089u), vec2<bool>(false, false));

var<private> global4: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(424f, true, vec3<u32>(16588u, 1u, 0u), vec3<u32>(4294967295u, 11972u, 28797u), vec2<bool>(true, true)), Struct_1(1150f, false, vec3<u32>(4294967295u, 77086u, 4294967295u), vec3<u32>(0u, 1u, 29570u), vec2<bool>(false, true)), Struct_1(-1000f, true, vec3<u32>(1u, 9325u, 0u), vec3<u32>(0u, 17616u, 18000u), vec2<bool>(false, true)), Struct_1(-338f, true, vec3<u32>(4294967295u, 18282u, 53892u), vec3<u32>(76400u, 30855u, 0u), vec2<bool>(true, false)), Struct_1(545f, true, vec3<u32>(51669u, 45367u, 28000u), vec3<u32>(0u, 4294967295u, 37362u), vec2<bool>(true, true)), Struct_1(1812f, true, vec3<u32>(1u, 1u, 0u), vec3<u32>(49907u, 37768u, 1u), vec2<bool>(true, true)), Struct_1(-1664f, false, vec3<u32>(30821u, 24180u, 1u), vec3<u32>(8574u, 4294967295u, 46368u), vec2<bool>(false, false)), Struct_1(333f, true, vec3<u32>(28937u, 36348u, 4162u), vec3<u32>(47830u, 48027u, 10086u), vec2<bool>(false, false)), Struct_1(-1139f, true, vec3<u32>(12516u, 33567u, 23902u), vec3<u32>(131918u, 59697u, 32356u), vec2<bool>(false, true)), Struct_1(114f, false, vec3<u32>(4294967295u, 28366u, 1u), vec3<u32>(0u, 41252u, 4294967295u), vec2<bool>(false, true)), Struct_1(-1035f, false, vec3<u32>(44996u, 1u, 13043u), vec3<u32>(21002u, 0u, 4294967295u), vec2<bool>(true, true)), Struct_1(333f, false, vec3<u32>(1u, 0u, 13664u), vec3<u32>(11101u, 4294967295u, 27643u), vec2<bool>(false, true)), Struct_1(-467f, true, vec3<u32>(21646u, 4294967295u, 1u), vec3<u32>(6821u, 34852u, 26544u), vec2<bool>(false, false)), Struct_1(615f, true, vec3<u32>(4294967295u, 14946u, 70249u), vec3<u32>(0u, 1u, 76695u), vec2<bool>(true, true)), Struct_1(1848f, true, vec3<u32>(0u, 35770u, 43512u), vec3<u32>(69720u, 541u, 34204u), vec2<bool>(true, true)), Struct_1(493f, true, vec3<u32>(0u, 53988u, 1u), vec3<u32>(19163u, 28955u, 4294967295u), vec2<bool>(true, true)), Struct_1(110f, false, vec3<u32>(4294967295u, 888u, 57796u), vec3<u32>(3366u, 0u, 26942u), vec2<bool>(false, true)), Struct_1(-190f, true, vec3<u32>(1u, 50589u, 0u), vec3<u32>(8965u, 4282u, 3771u), vec2<bool>(true, false)), Struct_1(895f, true, vec3<u32>(49948u, 1u, 17340u), vec3<u32>(0u, 36493u, 4294967295u), vec2<bool>(false, true)), Struct_1(-607f, true, vec3<u32>(1u, 4294967295u, 85153u), vec3<u32>(1344u, 82314u, 2231u), vec2<bool>(false, true)), Struct_1(312f, true, vec3<u32>(1u, 6754u, 0u), vec3<u32>(2443u, 4294967295u, 18834u), vec2<bool>(true, true)), Struct_1(1414f, true, vec3<u32>(1u, 38183u, 48039u), vec3<u32>(63u, 31999u, 1u), vec2<bool>(true, false)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-789f * _wgslsmith_f_op_f32(f32(-1f) * -2107f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(1f)))), 1f, 443f));
    global1 = array<vec3<u32>, 13>();
    global4 = array<Struct_1, 22>();
    var var_1 = vec4<u32>(~61716u, _wgslsmith_div_u32(_wgslsmith_sub_u32(~arg_1.d.x, _wgslsmith_mult_u32(countOneBits(74096u), 0u)), global3.d.x), ~firstTrailingBit(45343u) | arg_0.x, ~(~(~firstLeadingBit(global3.d.x))));
    global1 = array<vec3<u32>, 13>();
    return select(vec3<bool>(arg_2.e.x, _wgslsmith_f_op_f32(step(1050f, _wgslsmith_f_op_f32(abs(1156f)))) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-444f + global0[_wgslsmith_index_u32(83834u, 21u)]))), !(global3.e.x && any(arg_2.e))), vec3<bool>(!arg_1.b, true, any(vec4<bool>(true, true, any(vec3<bool>(arg_1.b, true, true)), true))), !(!select(!vec3<bool>(false, arg_2.e.x, false), vec3<bool>(global3.e.x, true, arg_1.b), any(vec2<bool>(arg_1.e.x, global3.e.x)))));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = !select(vec3<bool>(true, false, !(!arg_1.e.x)), select(select(func_3(vec2<u32>(8060u, arg_1.c.x), global4[_wgslsmith_index_u32(arg_0.x, 22u)], Struct_1(global0[_wgslsmith_index_u32(arg_0.x, 21u)], false, global3.c, global3.d, vec2<bool>(global3.e.x, false))), vec3<bool>(arg_1.e.x, false, global3.b), any(vec3<bool>(false, true, true))), !func_3(global3.c.zy, Struct_1(global3.a, global3.b, vec3<u32>(1u, arg_1.d.x, 1282u), arg_0.yyw, vec2<bool>(global3.b, false)), Struct_1(-1328f, true, global3.d, vec3<u32>(global3.c.x, 4294967295u, 0u), vec2<bool>(false, false))), !func_3(global3.d.xz, global4[_wgslsmith_index_u32(global3.d.x, 22u)], Struct_1(arg_1.a, arg_1.b, vec3<u32>(94194u, global3.c.x, global3.d.x), arg_0.wwy, global3.e))), select(select(func_3(arg_0.zy, arg_1, global4[_wgslsmith_index_u32(global3.c.x, 22u)]), func_3(vec2<u32>(arg_1.d.x, arg_1.d.x), Struct_1(1289f, global3.b, arg_0.yyy, vec3<u32>(arg_0.x, global3.c.x, 4294967295u), global3.e), Struct_1(global3.a, arg_1.e.x, vec3<u32>(arg_0.x, 83286u, arg_1.c.x), vec3<u32>(arg_1.c.x, 54789u, 1u), vec2<bool>(false, true))), !vec3<bool>(arg_1.b, true, arg_1.b)), select(vec3<bool>(global3.e.x, true, true), func_3(global3.d.yy, global4[_wgslsmith_index_u32(42691u, 22u)], global4[_wgslsmith_index_u32(1u, 22u)]), select(vec3<bool>(true, false, true), vec3<bool>(global3.e.x, false, global3.b), vec3<bool>(true, false, arg_1.e.x))), false));
    global1 = array<vec3<u32>, 13>();
    global4 = array<Struct_1, 22>();
    let var_1 = Struct_1(global3.a, arg_1.b, _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(abs(global1[_wgslsmith_index_u32(firstLeadingBit(42158u), 13u)]), vec3<u32>(1u, 1u, arg_1.d.x)), global1[_wgslsmith_index_u32(global3.d.x, 13u)]), ~(~vec3<u32>(_wgslsmith_clamp_u32(arg_0.x, arg_1.c.x, global3.c.x), 21395u, _wgslsmith_mod_u32(arg_0.x, 0u))), select(!vec2<bool>(true, var_0.x), select(select(select(global3.e, arg_1.e, arg_1.b), arg_1.e, vec2<bool>(global3.e.x, true)), vec2<bool>(!arg_1.b, !arg_1.b), global3.e), !var_0.xx));
    var var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(~global1[_wgslsmith_index_u32(0u, 13u)], ~vec3<u32>(arg_0.x, global3.d.x, 53037u)), vec3<u32>(1u, _wgslsmith_div_u32(~global3.c.x, ~1u), _wgslsmith_sub_u32(28274u, abs(global3.d.x)))), 21u)];
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> u32 {
    var var_0 = func_2(max(vec4<u32>(arg_1.c.x, select(global3.d.x, arg_1.c.x, global3.e.x), arg_0.c.x, 45613u) >> (vec4<u32>(arg_1.c.x, 0u, 12669u, 4294967295u) % vec4<u32>(32u)), firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(global3.c.x, arg_1.d.x, arg_0.c.x, global3.d.x), vec4<u32>(0u, global3.c.x, 4294967295u, 28663u) & vec4<u32>(arg_0.c.x, 40u, arg_1.d.x, 1340u)))), arg_1, ~(~(-_wgslsmith_div_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(0i, 6371i)))));
    global1 = array<vec3<u32>, 13>();
    let var_1 = global1[_wgslsmith_index_u32(4294967295u, 13u)];
    global4 = array<Struct_1, 22>();
    var var_2 = Struct_1(global3.a, true, vec3<u32>(max(609u, 29405u), global3.c.x | (2186u & reverseBits(arg_1.d.x)), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, arg_1.d.x, global3.c.x, 50503u), ~vec4<u32>(0u, 33963u, 1u, var_1.x)), ~(~96118u))), arg_1.c, select(vec2<bool>(!(arg_0.e.x == true), true), vec2<bool>(arg_0.e.x, all(vec3<bool>(false, true, false))), func_3(vec2<u32>(global3.c.x, ~global3.d.x), arg_1, Struct_1(arg_2, any(vec4<bool>(var_0.e.x, global3.e.x, global3.b, false)), func_2(vec4<u32>(global3.c.x, arg_0.d.x, arg_0.c.x, var_0.d.x), arg_0, vec2<i32>(43711i, 2147483647i)).c, vec3<u32>(17421u, arg_0.c.x, var_1.x), global3.e)).zx));
    return reverseBits(_wgslsmith_div_u32(firstLeadingBit(4294967295u) | _wgslsmith_dot_vec3_u32(global3.c | arg_1.d, vec3<u32>(7659u, global3.d.x, 9222u) >> (global1[_wgslsmith_index_u32(global3.c.x, 13u)] % vec3<u32>(32u))), 43556u));
}

fn func_1() -> StorageBuffer {
    var var_0 = -2147483647i;
    let var_1 = global3.c.xy;
    let var_2 = vec4<i32>(abs(_wgslsmith_mod_i32(u_input.b, _wgslsmith_mult_i32(firstTrailingBit(u_input.b), _wgslsmith_sub_i32(-8435i, u_input.a)))), _wgslsmith_sub_i32(-1i, u_input.a), _wgslsmith_div_i32(-2147483647i, u_input.a), firstLeadingBit(-countOneBits(38849i ^ u_input.b)));
    var var_3 = _wgslsmith_f_op_f32(round(298f));
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(254f))));
    return StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1186f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-251f, global3.a)) - -745f)), _wgslsmith_f_op_f32(global3.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global3.c.x, 21u)] * 3114f))), _wgslsmith_f_op_f32(-global3.a)), vec2<f32>(global0[_wgslsmith_index_u32(func_4(func_2(~vec4<u32>(global3.d.x, 32057u, global3.d.x, global3.c.x), Struct_1(global0[_wgslsmith_index_u32(0u, 21u)], global3.b, global1[_wgslsmith_index_u32(4294967295u, 13u)], vec3<u32>(var_1.x, 1u, global3.c.x), vec2<bool>(global3.b, global3.e.x)), vec2<i32>(var_2.x, var_2.x) >> (global3.d.zz % vec2<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(global3.a * 1840f), any(vec3<bool>(false, global3.e.x, global3.e.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(6072u, var_1.x, 791u), global1[_wgslsmith_index_u32(var_1.x, 13u)]), select(global1[_wgslsmith_index_u32(var_1.x, 13u)], vec3<u32>(global3.d.x, global3.d.x, 4294967295u), global3.b), vec2<bool>(global3.e.x, false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-518f - 1003f), _wgslsmith_f_op_f32(-global3.a))), 21u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.a, -895f) + _wgslsmith_div_f32(-908f, -1048f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(2608u, 21u)], global3.a) * _wgslsmith_div_f32(-650f, global0[_wgslsmith_index_u32(4294967295u, 21u)])) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 21u)])), _wgslsmith_div_f32(_wgslsmith_div_f32(func_2(vec4<u32>(28064u, global3.c.x, 20158u, 52572u), global4[_wgslsmith_index_u32(4294967295u, 22u)], vec2<i32>(u_input.a, -1i)).a, global3.a), 384f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3.a)) * _wgslsmith_f_op_f32(exp2(global3.a))), global0[_wgslsmith_index_u32(0u >> (select(global3.c.x, 37783u, global3.b) % 32u), 21u)]))), _wgslsmith_add_vec2_u32(vec2<u32>(1u | global3.d.x, countOneBits(25491u)), global3.c.yz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let var_1 = u_input.a;
    global0 = array<f32, 21>();
    global1 = array<vec3<u32>, 13>();
    let var_2 = false;
    let x = u_input.a;
    s_output = func_1();
}

