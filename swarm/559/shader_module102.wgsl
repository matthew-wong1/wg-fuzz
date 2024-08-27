struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: u32,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 15>;

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec4<f32>(-1494f, 891f, -1735f, 165f), vec4<u32>(27613u, 4294967295u, 9426u, 72687u), 4294967295u, -852f, vec4<f32>(130f, -233f, 556f, -1627f)), Struct_1(vec4<f32>(-1119f, 182f, 169f, -420f), vec4<u32>(65370u, 65480u, 0u, 0u), 4294967295u, 2277f, vec4<f32>(575f, 1000f, -1565f, -2221f)), Struct_1(vec4<f32>(1453f, 252f, 1688f, 704f), vec4<u32>(4294967295u, 35810u, 0u, 4294967295u), 4294967295u, -1000f, vec4<f32>(-510f, -292f, -2456f, 705f)), Struct_1(vec4<f32>(1146f, 1000f, 133f, -405f), vec4<u32>(1u, 4294967295u, 16145u, 23198u), 94290u, 276f, vec4<f32>(-662f, 110f, -1742f, 556f)), Struct_1(vec4<f32>(-763f, -484f, -134f, -302f), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u), 52460u, 531f, vec4<f32>(-333f, -370f, -2861f, -362f)), Struct_1(vec4<f32>(-1000f, 634f, 277f, 132f), vec4<u32>(26538u, 64056u, 0u, 69157u), 23684u, -717f, vec4<f32>(-244f, -624f, 1609f, 736f)), Struct_1(vec4<f32>(-1001f, 660f, 394f, -532f), vec4<u32>(4294967295u, 1u, 51427u, 63483u), 1u, 1173f, vec4<f32>(1000f, 3094f, 186f, -313f)), Struct_1(vec4<f32>(234f, -318f, 1412f, -971f), vec4<u32>(1u, 62897u, 1u, 1u), 0u, -626f, vec4<f32>(-1000f, -1649f, 251f, -735f)), Struct_1(vec4<f32>(828f, 281f, 1308f, -1775f), vec4<u32>(0u, 1u, 90123u, 0u), 0u, 205f, vec4<f32>(-884f, -685f, -1000f, -1287f)), Struct_1(vec4<f32>(638f, -925f, -1110f, 1832f), vec4<u32>(0u, 13295u, 15379u, 0u), 0u, -1863f, vec4<f32>(1970f, 305f, 1693f, -230f)), Struct_1(vec4<f32>(-449f, 209f, -373f, -269f), vec4<u32>(52881u, 27908u, 37276u, 0u), 1u, -895f, vec4<f32>(599f, 568f, -745f, 1183f)), Struct_1(vec4<f32>(-920f, -769f, 446f, -690f), vec4<u32>(0u, 0u, 17599u, 4294967295u), 84246u, 1426f, vec4<f32>(903f, 444f, -1167f, -1097f)), Struct_1(vec4<f32>(-1989f, -2114f, 1229f, -1560f), vec4<u32>(0u, 40896u, 25591u, 0u), 4294967295u, 347f, vec4<f32>(-465f, -854f, -676f, -872f)), Struct_1(vec4<f32>(-1000f, 1746f, -382f, 1331f), vec4<u32>(45606u, 4180u, 1u, 0u), 4294967295u, 1683f, vec4<f32>(-196f, -1898f, 387f, -548f)), Struct_1(vec4<f32>(907f, 258f, 227f, -816f), vec4<u32>(4294967295u, 4294967295u, 1u, 0u), 87502u, -749f, vec4<f32>(1582f, -435f, 802f, 475f)), Struct_1(vec4<f32>(1107f, -374f, 287f, -1327f), vec4<u32>(0u, 51003u, 0u, 20686u), 4294967295u, 772f, vec4<f32>(-240f, -1000f, 1061f, -755f)), Struct_1(vec4<f32>(-1000f, 442f, 397f, -1831f), vec4<u32>(9427u, 62626u, 4294967295u, 0u), 25105u, -1000f, vec4<f32>(-422f, 359f, -520f, 379f)), Struct_1(vec4<f32>(-392f, -905f, -1139f, -1000f), vec4<u32>(168549u, 99335u, 12536u, 0u), 0u, 560f, vec4<f32>(-1317f, 1462f, 833f, 2794f)), Struct_1(vec4<f32>(-521f, 1088f, -1348f, 368f), vec4<u32>(42320u, 11670u, 0u, 88804u), 33709u, -1000f, vec4<f32>(-696f, -237f, -548f, 1231f)), Struct_1(vec4<f32>(1650f, -1000f, 1000f, 229f), vec4<u32>(0u, 0u, 26240u, 0u), 1u, -1000f, vec4<f32>(-138f, 684f, 561f, -262f)), Struct_1(vec4<f32>(221f, -759f, -1000f, 477f), vec4<u32>(0u, 11842u, 35177u, 1u), 0u, 436f, vec4<f32>(-3348f, -1435f, 863f, -127f)), Struct_1(vec4<f32>(-486f, 277f, -840f, 417f), vec4<u32>(56449u, 3602u, 22789u, 0u), 4294967295u, 863f, vec4<f32>(187f, 595f, -1262f, 1642f)), Struct_1(vec4<f32>(-658f, -1000f, -1418f, -413f), vec4<u32>(3752u, 16839u, 1u, 0u), 4294967295u, 1368f, vec4<f32>(-347f, -1354f, 887f, -638f)), Struct_1(vec4<f32>(778f, 405f, -621f, -615f), vec4<u32>(4294967295u, 13656u, 1u, 4294967295u), 42715u, -1000f, vec4<f32>(-2167f, 1028f, -1364f, 252f)), Struct_1(vec4<f32>(905f, -1156f, 683f, 630f), vec4<u32>(4294967295u, 0u, 1u, 1u), 0u, 1333f, vec4<f32>(-475f, 543f, -525f, 1872f)));

var<private> global3: vec2<i32> = vec2<i32>(-20414i, 40467i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(floor(global0.e));
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = false;
    global1 = array<Struct_2, 15>();
    var var_1 = select(reverseBits(abs(vec4<u32>(~arg_0.c.c, 1u, ~global0.b.x, 3277u))), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(arg_0.b.b, arg_0.c.b) << (reverseBits(vec4<u32>(1u, 50946u, 0u, u_input.c.x)) % vec4<u32>(32u)), select(arg_0.c.b, global0.b, vec4<bool>(global0.a.x > arg_0.b.e.x, true, false, true))), !select(vec4<bool>(any(vec2<bool>(false, false)), true, all(vec3<bool>(true, true, false)), true), vec4<bool>(true, true, true, true), all(vec3<bool>(true, false, false))));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1065f), -1282f, _wgslsmith_f_op_f32(abs(-1223f)), _wgslsmith_f_op_f32(-916f + -1720f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_0.c.e, global0.e) + _wgslsmith_f_op_vec4_f32(func_3(Struct_2(-15581i, Struct_1(vec4<f32>(arg_0.b.e.x, 1043f, 421f, global0.a.x), vec4<u32>(7956u, u_input.c.x, var_1.x, 4294967295u), 1u, arg_0.b.e.x, arg_0.c.a), global2[_wgslsmith_index_u32(0u, 25u)]), Struct_1(global0.e, global0.b, 4294967295u, 140f, global0.e), Struct_2(u_input.a.x, Struct_1(vec4<f32>(-1804f, arg_0.b.e.x, -238f, -2331f), global0.b, arg_0.b.b.x, global0.e.x, arg_0.c.e), global2[_wgslsmith_index_u32(arg_0.b.c, 25u)])))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(352f, arg_0.b.d, arg_0.b.d, arg_0.c.e.x), _wgslsmith_f_op_vec4_f32(select(arg_0.c.e, vec4<f32>(613f, 393f, -1360f, global0.d), vec4<bool>(false, true, true, true))))))), vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(15546u, 81177u, 1012u), vec3<u32>(1u, 1u, 1u)), global0.b.zyy), var_1.x, abs(arg_0.b.c), global0.c), 0u, _wgslsmith_f_op_f32(-1055f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_0.b.e.x))))), vec4<f32>(arg_0.c.e.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(281f, _wgslsmith_f_op_f32(-765f + arg_0.b.a.x), true)))), global0.a.x, -145f));
    return 18209u;
}

fn func_4(arg_0: vec3<u32>) -> vec4<f32> {
    let var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(global0.b.x, firstTrailingBit(~_wgslsmith_dot_vec2_u32(arg_0.yx, arg_0.xx))), 15u)];
    let var_1 = -6914i;
    global2 = array<Struct_1, 25>();
    var var_2 = select(vec3<bool>(!any(vec3<bool>(false, true, true)), any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -758f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x + global0.a.x) + 1f)), vec3<bool>(true, _wgslsmith_f_op_f32(select(338f, _wgslsmith_f_op_f32(f32(-1f) * -268f), true)) < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.c.a.x))), false), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), vec3<bool>(true, all(vec3<bool>(true, true, false)), false), false));
    let var_3 = min(17993u, u_input.b.x) >> (global0.c % 32u);
    return _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(-187f, var_0.b.a.x), 2250f, global0.e.x, _wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(-global0.e.x)))));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: i32) -> vec4<f32> {
    global2 = array<Struct_1, 25>();
    let var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(firstLeadingBit(~_wgslsmith_add_vec3_u32(u_input.b.zyz, arg_0.b.b.wyy)), vec3<u32>(~0u, 4743u, arg_0.b.b.x)), ~arg_0.c.b.ywz);
    var var_1 = _wgslsmith_f_op_vec4_f32(func_4(~_wgslsmith_mult_vec3_u32(~(vec3<u32>(arg_0.c.b.x, global0.c, 0u) << (arg_0.b.b.zwz % vec3<u32>(32u))), vec3<u32>(1u, func_2(global1[_wgslsmith_index_u32(0u, 15u)]), 4641u >> (arg_0.b.c % 32u)))));
    global0 = global2[_wgslsmith_index_u32(global0.b.x, 25u)];
    global1 = array<Struct_2, 15>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_vec4_f32(func_4(vec3<u32>(global0.c, u_input.b.x, 55933u))).x, _wgslsmith_f_op_f32(step(445f, arg_1.x)), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(ceil(global0.a.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, global0.e.x, -276f, global0.d) + global0.a) * _wgslsmith_f_op_vec4_f32(func_1(Struct_2(u_input.d.x, global2[_wgslsmith_index_u32(global0.b.x, 25u)], Struct_1(vec4<f32>(global0.a.x, global0.d, -1116f, -396f), vec4<u32>(0u, u_input.c.x, u_input.c.x, global0.c), 0u, 132f, global0.e)), _wgslsmith_f_op_vec2_f32(-global0.a.yz), max(global3.x, 0i))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f * global0.d))), -816f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -783f), _wgslsmith_f_op_f32(-global0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a.x)))) - vec4<f32>(1000f, 181f, -1173f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(178f, 884f)) - _wgslsmith_div_f32(-388f, -1537f)))));
    global3 = vec2<i32>(-57604i, 1i);
    var var_1 = vec4<f32>(802f, global0.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1105f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(3256f, global0.a.x)))), -168f);
    var var_2 = Struct_1(global0.e, ~reverseBits(~vec4<u32>(1u, 0u, global0.c, 4294967295u)), u_input.c.x, _wgslsmith_f_op_vec4_f32(func_1(Struct_2(i32(-1i) * -1i, global2[_wgslsmith_index_u32(~global0.c, 25u)], Struct_1(vec4<f32>(-776f, var_1.x, 493f, var_0.x), ~global0.b, 1u, _wgslsmith_f_op_vec4_f32(func_1(global1[_wgslsmith_index_u32(0u, 15u)], global0.a.xz, global3.x)).x, _wgslsmith_f_op_vec4_f32(-var_0))), global0.e.xz, _wgslsmith_dot_vec4_i32(~u_input.a, _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(global3.x, 0i, global3.x, global3.x)), vec4<i32>(u_input.d.x, global3.x, u_input.a.x, global3.x))))).x, _wgslsmith_f_op_vec4_f32(func_1(global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, global0.c), ~vec2<u32>(global0.b.x, global0.b.x))), 15u)], var_1.xz, u_input.d.x)));
    let var_3 = ~u_input.d.x >> ((1u << (~4294967295u % 32u)) % 32u);
    global3 = u_input.a.ww;
    global2 = array<Struct_1, 25>();
    var var_4 = ~(~(~(~abs(global0.b.wxx))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.e.zxz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(233f + global0.e.x)))));
}

