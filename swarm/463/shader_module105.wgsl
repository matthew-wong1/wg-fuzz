struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 31> = array<Struct_4, 31>(Struct_4(vec3<f32>(579f, -524f, 1163f), vec3<f32>(-313f, -650f, 961f), Struct_2(vec3<i32>(17837i, -26661i, 18138i), 50441u)), Struct_4(vec3<f32>(2227f, -473f, 2179f), vec3<f32>(-602f, -237f, -702f), Struct_2(vec3<i32>(20872i, 32428i, 27063i), 0u)), Struct_4(vec3<f32>(493f, -482f, 1025f), vec3<f32>(875f, 1387f, -1801f), Struct_2(vec3<i32>(0i, i32(-2147483648), -1i), 33665u)), Struct_4(vec3<f32>(303f, 907f, 975f), vec3<f32>(-621f, 2161f, 907f), Struct_2(vec3<i32>(2703i, i32(-2147483648), 2413i), 16821u)), Struct_4(vec3<f32>(2050f, -1576f, 877f), vec3<f32>(-1000f, -1038f, 243f), Struct_2(vec3<i32>(-9686i, 3447i, 0i), 4294967295u)), Struct_4(vec3<f32>(574f, 819f, -114f), vec3<f32>(266f, -485f, -1000f), Struct_2(vec3<i32>(-2353i, 152i, -1i), 62609u)), Struct_4(vec3<f32>(928f, -341f, -1124f), vec3<f32>(280f, 795f, 302f), Struct_2(vec3<i32>(1i, 35256i, 0i), 0u)), Struct_4(vec3<f32>(-1000f, -1000f, -634f), vec3<f32>(-1766f, -293f, -539f), Struct_2(vec3<i32>(1721i, 24618i, 38427i), 4294967295u)), Struct_4(vec3<f32>(-1127f, 259f, -284f), vec3<f32>(872f, -520f, 767f), Struct_2(vec3<i32>(1i, 60189i, 2147483647i), 0u)), Struct_4(vec3<f32>(554f, 1363f, -1621f), vec3<f32>(530f, 697f, -986f), Struct_2(vec3<i32>(52961i, 12300i, i32(-2147483648)), 4294967295u)), Struct_4(vec3<f32>(-1000f, 809f, 1249f), vec3<f32>(482f, -835f, 1000f), Struct_2(vec3<i32>(-52107i, 2147483647i, 48074i), 4294967295u)), Struct_4(vec3<f32>(-1000f, 1589f, -287f), vec3<f32>(-526f, 1140f, 376f), Struct_2(vec3<i32>(24599i, i32(-2147483648), 0i), 22304u)), Struct_4(vec3<f32>(-405f, 1000f, 522f), vec3<f32>(-586f, 1272f, 948f), Struct_2(vec3<i32>(-13513i, 0i, -41385i), 1u)), Struct_4(vec3<f32>(-2042f, -1467f, -1000f), vec3<f32>(-1220f, 935f, -140f), Struct_2(vec3<i32>(-18467i, 0i, 2147483647i), 4294967295u)), Struct_4(vec3<f32>(-357f, 294f, -1145f), vec3<f32>(1058f, 825f, -410f), Struct_2(vec3<i32>(-1i, 2190i, 29265i), 0u)), Struct_4(vec3<f32>(1266f, -1244f, -917f), vec3<f32>(-526f, 184f, -1539f), Struct_2(vec3<i32>(64086i, 3399i, 22033i), 41492u)), Struct_4(vec3<f32>(-271f, -460f, -352f), vec3<f32>(1173f, -280f, 2030f), Struct_2(vec3<i32>(-1i, 5993i, 46730i), 52411u)), Struct_4(vec3<f32>(1513f, 1089f, 1070f), vec3<f32>(1001f, -1331f, -690f), Struct_2(vec3<i32>(0i, -1i, 2147483647i), 4450u)), Struct_4(vec3<f32>(281f, 130f, -1000f), vec3<f32>(-1064f, 1430f, -289f), Struct_2(vec3<i32>(0i, 0i, -64099i), 1u)), Struct_4(vec3<f32>(-1000f, -288f, 3156f), vec3<f32>(412f, 1710f, 258f), Struct_2(vec3<i32>(-1673i, 1i, -12406i), 2281u)), Struct_4(vec3<f32>(-1485f, -199f, 475f), vec3<f32>(766f, -1592f, -504f), Struct_2(vec3<i32>(17607i, 60314i, i32(-2147483648)), 1u)), Struct_4(vec3<f32>(427f, 621f, -1574f), vec3<f32>(551f, 1321f, -1579f), Struct_2(vec3<i32>(-12046i, 8707i, 1i), 106837u)), Struct_4(vec3<f32>(1000f, 1966f, -867f), vec3<f32>(1382f, -491f, 335f), Struct_2(vec3<i32>(-44758i, -1i, 1i), 11659u)), Struct_4(vec3<f32>(744f, 386f, -645f), vec3<f32>(-1000f, -2558f, -1538f), Struct_2(vec3<i32>(2147483647i, 0i, -1i), 0u)), Struct_4(vec3<f32>(1227f, -591f, 837f), vec3<f32>(523f, 394f, 858f), Struct_2(vec3<i32>(-82086i, 57773i, 1i), 0u)), Struct_4(vec3<f32>(1000f, -952f, 441f), vec3<f32>(352f, 342f, 707f), Struct_2(vec3<i32>(1i, -38347i, 30083i), 1u)), Struct_4(vec3<f32>(198f, -1000f, 1281f), vec3<f32>(669f, -291f, 547f), Struct_2(vec3<i32>(7351i, -11872i, -56267i), 57259u)), Struct_4(vec3<f32>(1102f, -104f, -901f), vec3<f32>(-934f, 578f, 975f), Struct_2(vec3<i32>(3409i, i32(-2147483648), -42257i), 42042u)), Struct_4(vec3<f32>(-694f, 332f, -1148f), vec3<f32>(1173f, 857f, 665f), Struct_2(vec3<i32>(1i, -1i, 58655i), 1u)), Struct_4(vec3<f32>(834f, 1000f, -336f), vec3<f32>(-215f, -869f, 827f), Struct_2(vec3<i32>(8961i, -14718i, 26017i), 1u)), Struct_4(vec3<f32>(-133f, -1062f, -810f), vec3<f32>(-871f, -455f, -316f), Struct_2(vec3<i32>(i32(-2147483648), 7066i, 1i), 4294967295u)));

var<private> global1: array<vec4<bool>, 21> = array<vec4<bool>, 21>(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: u32, arg_1: vec2<f32>) -> vec2<bool> {
    let var_0 = Struct_5(true, abs(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, _wgslsmith_mod_u32(4294967295u, u_input.a), ~arg_0), ~firstTrailingBit(vec4<u32>(0u, u_input.a, 0u, 1u)))));
    let var_1 = Struct_1(arg_0, 741f);
    global1 = array<vec4<bool>, 21>();
    let var_2 = -(_wgslsmith_dot_vec3_i32(~vec3<i32>(0i, -1i, -29802i), vec3<i32>(-1i) * -vec3<i32>(-2147483647i, 2147483647i, 1i)) >> (~(var_0.b.x ^ abs(arg_0)) % 32u));
    global0 = array<Struct_4, 31>();
    return vec2<bool>(var_0.a, true);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: bool) -> bool {
    var var_0 = vec4<i32>(firstTrailingBit(arg_1.c.a.x), abs(0i), -2147483647i, ~(46547i >> (~(u_input.b >> (arg_0.a.x % 32u)) % 32u)));
    var var_1 = select(_wgslsmith_div_i32(var_0.x, 1i), 1i, arg_2);
    var var_2 = arg_0.b.a.x;
    global0 = array<Struct_4, 31>();
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -597f))), arg_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) - _wgslsmith_f_op_f32(select(arg_1.a.x, arg_1.a.x, false))) - -396f), 1000f));
    return true;
}

fn func_1() -> f32 {
    global0 = array<Struct_4, 31>();
    let var_0 = vec4<i32>(max(54042i, i32(-1i) * -39536i), max(0i, 1i), select(16339i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(-40134i, -30825i), vec2<i32>(-23749i, 1858i)), -min(19675i, -1i)), false), 25916i);
    var var_1 = vec4<bool>(!any(select(func_2(0u, vec2<f32>(355f, -1619f)), select(vec2<bool>(false, false), vec2<bool>(false, true), false), false)), !func_3(Struct_3(vec2<u32>(u_input.b, 4294967295u) ^ vec2<u32>(25087u, u_input.a), Struct_2(var_0.yxw, u_input.a)), global0[_wgslsmith_index_u32(1u, 31u)], all(vec2<bool>(true, true))), select(!select(any(vec4<bool>(true, true, true, false)), true, all(vec2<bool>(false, false))), true, any(vec2<bool>(true, true))), true | func_2(1u, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(380f, -906f))))).x);
    global0 = array<Struct_4, 31>();
    global1 = array<vec4<bool>, 21>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1468f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-501f + 1582f))) * _wgslsmith_f_op_f32(-460f + _wgslsmith_f_op_f32(min(-253f, -781f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2878f - 996f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(561f, 1239f, true)) * -1391f))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 21>();
    global0 = array<Struct_4, 31>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-371f * -775f)) - 806f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(388f, _wgslsmith_f_op_f32(-719f * 806f))))));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -694f, var_0.x))), vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-442f + var_0.x)), false)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(449f, _wgslsmith_f_op_f32(abs(var_0.x)), -597f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, var_0.x, -724f), vec3<f32>(-129f, -877f, 236f))))), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, false, false), false))));
    var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1814f, var_0.x)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(335f, 827f, -610f), vec3<f32>(1092f, 106f, 552f), false))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(-504f, var_0.x, 1933f))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, var_0.x, 1319f), vec3<f32>(var_0.x, var_0.x, -456f))))))));
    global0 = array<Struct_4, 31>();
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), 869f)) - _wgslsmith_f_op_f32(func_1()))), 1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), 2023f)));
    let var_1 = Struct_3(~countOneBits(~select(vec2<u32>(0u, 0u), vec2<u32>(0u, u_input.b), true)), Struct_2(vec3<i32>(1i, 1i, 1i), 1u));
    var var_2 = var_1.b.a.xx;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_1.a.x, u_input.a), var_1.a);
}

