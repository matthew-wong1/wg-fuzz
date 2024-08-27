struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec4<bool>,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(116936u, vec4<i32>(i32(-2147483648), 0i, -1i, -20884i), 2147483647i, vec4<f32>(-942f, -396f, 346f, -439f)), Struct_1(17146u, vec4<i32>(-24722i, 1i, -12616i, -8130i), -10016i, vec4<f32>(1000f, -1208f, 1367f, -1625f)), Struct_1(0u, vec4<i32>(9699i, 19286i, 39989i, -9037i), 127194i, vec4<f32>(2444f, -524f, 221f, -707f)), Struct_1(27552u, vec4<i32>(2147483647i, 72814i, -47667i, -1i), i32(-2147483648), vec4<f32>(1146f, -862f, -2511f, -1000f)), Struct_1(20126u, vec4<i32>(1i, 11465i, -19433i, 0i), -1i, vec4<f32>(444f, -527f, 1491f, 888f)), Struct_1(46512u, vec4<i32>(0i, 54100i, 45548i, i32(-2147483648)), 0i, vec4<f32>(-673f, 160f, -1448f, -417f)), Struct_1(3545u, vec4<i32>(41227i, -1i, 1i, 9397i), -1i, vec4<f32>(-145f, -165f, -1655f, -604f)), Struct_1(1u, vec4<i32>(1i, 1065i, 461i, 0i), 1i, vec4<f32>(1173f, -146f, 900f, -486f)), Struct_1(38195u, vec4<i32>(0i, 55338i, 2147483647i, 1i), 2147483647i, vec4<f32>(107f, -1056f, -1081f, -298f)), Struct_1(14533u, vec4<i32>(1443i, 67901i, 1i, -1i), 13869i, vec4<f32>(-136f, 1000f, 275f, 324f)), Struct_1(98160u, vec4<i32>(1i, -2224i, 2147483647i, 12337i), 61634i, vec4<f32>(-1000f, -2239f, 458f, -1317f)), Struct_1(16967u, vec4<i32>(i32(-2147483648), 15237i, 1i, -34361i), -1i, vec4<f32>(1030f, 417f, -842f, 2994f)), Struct_1(33921u, vec4<i32>(82078i, 78073i, i32(-2147483648), -19416i), i32(-2147483648), vec4<f32>(-179f, 999f, 406f, -673f)), Struct_1(17763u, vec4<i32>(-51850i, 0i, -1i, 2147483647i), 7019i, vec4<f32>(1314f, 332f, -2349f, -405f)), Struct_1(1u, vec4<i32>(51908i, -1i, i32(-2147483648), -37324i), -14039i, vec4<f32>(-811f, 391f, 1432f, 1476f)), Struct_1(36925u, vec4<i32>(1i, 1i, 1i, i32(-2147483648)), -1i, vec4<f32>(547f, 220f, 644f, 479f)), Struct_1(5270u, vec4<i32>(i32(-2147483648), -1i, 0i, 1i), -15565i, vec4<f32>(-796f, -141f, 290f, -671f)), Struct_1(40637u, vec4<i32>(-18915i, 10474i, 1452i, 1i), -32644i, vec4<f32>(-1000f, 652f, -352f, -102f)), Struct_1(48897u, vec4<i32>(i32(-2147483648), 28315i, -35449i, -18196i), i32(-2147483648), vec4<f32>(-162f, 890f, 938f, 1420f)), Struct_1(49120u, vec4<i32>(1i, -1i, i32(-2147483648), -1855i), 2147483647i, vec4<f32>(-265f, -306f, -2039f, -749f)), Struct_1(10032u, vec4<i32>(i32(-2147483648), 0i, 35744i, -15068i), -1i, vec4<f32>(-1241f, -492f, 1124f, 484f)), Struct_1(4294967295u, vec4<i32>(2147483647i, 1i, -1i, -1i), 2147483647i, vec4<f32>(1534f, 2019f, -1000f, 1000f)), Struct_1(7247u, vec4<i32>(-776i, 0i, 2418i, -5465i), -10877i, vec4<f32>(-407f, 138f, -193f, 867f)));

var<private> global1: array<Struct_4, 10>;

var<private> global2: array<vec4<f32>, 5> = array<vec4<f32>, 5>(vec4<f32>(-1262f, 236f, 1279f, 1269f), vec4<f32>(111f, 635f, -639f, -596f), vec4<f32>(1000f, 677f, 229f, 951f), vec4<f32>(760f, -1000f, 416f, 404f), vec4<f32>(433f, -787f, -1136f, -508f));

var<private> global3: array<bool, 25>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: vec4<i32>) -> Struct_5 {
    let var_0 = !vec2<bool>(global3[_wgslsmith_index_u32(~(~max(15382u, 1u)), 25u)], ~arg_1.x > -32016i);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -860f)))) >= _wgslsmith_f_op_f32(-349f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-666f + -1718f), -1787f, true)))));
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    var var_2 = firstLeadingBit(vec4<u32>(~(~countOneBits(0u)), ~_wgslsmith_div_u32(_wgslsmith_sub_u32(19055u, 18471u), _wgslsmith_add_u32(4294967295u, 0u)), _wgslsmith_mult_u32(1u, 68577u), 1u));
    return Struct_5(-501f, Struct_3(3244u, _wgslsmith_f_op_f32(f32(-1f) * -659f), vec4<u32>(var_2.x >> (var_2.x % 32u), select(var_2.x, var_2.x & 1u, true), 82214u, var_2.x & ~var_2.x), Struct_1(_wgslsmith_sub_u32(abs(var_2.x), ~49717u), vec4<i32>(_wgslsmith_mod_i32(26497i, 1i), ~0i, arg_1.x, 0i), u_input.a.x, global2[_wgslsmith_index_u32(0u, 5u)])), global0[_wgslsmith_index_u32(~35267u, 23u)], !(var_0.x || !all(vec4<bool>(var_0.x, var_0.x, true, true))));
}

fn func_1(arg_0: bool, arg_1: Struct_4, arg_2: Struct_3) -> u32 {
    global2 = array<vec4<f32>, 5>();
    global3 = array<bool, 25>();
    let var_0 = func_2(37830i, max(arg_2.d.b, (select(vec4<i32>(-1573i, 0i, u_input.a.x, -1i), arg_2.d.b, global3[_wgslsmith_index_u32(37145u, 25u)]) ^ -arg_1.a.d.b) & arg_2.d.b));
    global2 = array<vec4<f32>, 5>();
    var var_1 = Struct_2(~arg_1.a.d.b.x, global0[_wgslsmith_index_u32(~arg_1.b, 23u)], func_2(countOneBits(arg_1.a.d.c), ~(-vec4<i32>(arg_2.d.b.x, arg_2.d.b.x, 31308i, var_0.b.d.b.x))).b.d, func_2(var_0.c.b.x, max(arg_1.a.d.b, select(-arg_2.d.b, vec4<i32>(19730i, 0i, arg_1.a.d.c, -2147483647i), arg_1.a.c.x >= 0u))).c, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_2.b * 247f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.c.d.x, -1000f, arg_1.c.x))), 620f), _wgslsmith_f_op_vec3_f32(-var_0.b.d.d.ywy)));
    return _wgslsmith_sub_u32((arg_2.d.a | (~var_1.c.a << (~0u % 32u))) ^ 53473u, _wgslsmith_sub_u32(4294967295u, 4294967295u));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: f32, arg_3: bool) -> u32 {
    let var_0 = true;
    var var_1 = select(vec2<bool>(false, !select(arg_3, false, func_2(u_input.a.x, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i)).d)), vec2<bool>(-180f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), any(vec3<bool>(true, arg_3 | true, var_0))), true);
    let var_2 = ~_wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(arg_1, 4294967295u, arg_1, 4294967295u)), reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(89184u, 67455u, arg_1, arg_1), vec4<u32>(30381u, arg_1, arg_1, 4294967295u), vec4<u32>(0u, 0u, arg_1, 32879u)))) ^ _wgslsmith_div_u32(20028u, ~0u);
    var var_3 = 71295u;
    let var_4 = select(~(abs(vec3<u32>(4294967295u, arg_1, arg_1)) << (vec3<u32>(48307u, var_2, arg_1) % vec3<u32>(32u))) >> (vec3<u32>(arg_1, _wgslsmith_dot_vec4_u32(func_2(0i, vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x)).b.c, vec4<u32>(arg_1, 0u, arg_1, arg_1)), ~0u >> (abs(arg_1) % 32u)) % vec3<u32>(32u)), ~abs(~(vec3<u32>(arg_1, 0u, arg_1) << (vec3<u32>(1u, 1u, 4294967295u) % vec3<u32>(32u)))), all(select(!vec4<bool>(true, var_0, var_0, false), select(!vec4<bool>(var_0, var_0, arg_3, arg_3), !vec4<bool>(global3[_wgslsmith_index_u32(0u, 25u)], false, false, false), select(vec4<bool>(var_1.x, var_0, true, arg_3), vec4<bool>(false, global3[_wgslsmith_index_u32(arg_1, 25u)], true, var_0), true)), vec4<bool>(!var_0, all(vec2<bool>(false, global3[_wgslsmith_index_u32(1u, 25u)])), var_1.x && true, true))));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(select(_wgslsmith_div_u32(64091u, _wgslsmith_add_u32(var_4.x, 0u)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_1, 4294967295u), ~arg_1), var_1.x & (arg_0.x != 194f)), 0u, 1u, 12572u), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(abs(_wgslsmith_div_vec4_u32(vec4<u32>(var_4.x, arg_1, 1u, arg_1), vec4<u32>(var_2, 1u, var_2, var_4.x))), abs(vec4<u32>(16862u, var_4.x, arg_1, var_4.x)) ^ ~vec4<u32>(arg_1, 1u, var_2, var_2)), vec4<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_1, 1u), var_4.xy, var_0), _wgslsmith_add_vec2_u32(var_4.yy, var_4.zx)), arg_1 ^ var_2, var_2, _wgslsmith_sub_u32(arg_1, var_2) & 77927u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~4294967295u < select(_wgslsmith_sub_u32(~(~25280u), countOneBits(func_1(true, Struct_4(Struct_3(0u, -536f, vec4<u32>(21744u, 1u, 78691u, 6977u), global0[_wgslsmith_index_u32(14923u, 23u)]), 12971u, vec4<bool>(global3[_wgslsmith_index_u32(25824u, 25u)], global3[_wgslsmith_index_u32(0u, 25u)], global3[_wgslsmith_index_u32(28478u, 25u)], true)), Struct_3(1156u, -580f, vec4<u32>(4294967295u, 0u, 77843u, 4294967295u), Struct_1(1u, vec4<i32>(u_input.a.x, u_input.a.x, -16584i, u_input.a.x), u_input.a.x, vec4<f32>(2520f, -1057f, 386f, 773f)))))), ~1u ^ (func_3(vec4<f32>(1986f, -388f, 1000f, 387f), 6694u, 1536f, global3[_wgslsmith_index_u32(0u, 25u)]) >> (57923u % 32u)), false);
    var var_1 = vec4<bool>(any(!(!select(vec2<bool>(global3[_wgslsmith_index_u32(11575u, 25u)], true), vec2<bool>(true, global3[_wgslsmith_index_u32(114348u, 25u)]), vec2<bool>(true, false)))), select(any(vec3<bool>(all(vec3<bool>(false, var_0, global3[_wgslsmith_index_u32(8107u, 25u)])), true, true)), all(vec2<bool>(var_0 || global3[_wgslsmith_index_u32(74173u, 25u)], true)), true != all(vec4<bool>(true, false, true, true))), var_0, true);
    let var_2 = Struct_2(-u_input.a.x, global0[_wgslsmith_index_u32(~(~1u), 23u)], Struct_1(func_2(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 1i, -19847i), vec3<i32>(32266i, u_input.a.x, 77136i)), firstLeadingBit(vec4<i32>(87979i, -23809i, u_input.a.x, -5249i)) >> (~vec4<u32>(0u, 1u, 4294967295u, 16055u) % vec4<u32>(32u))).c.a, max(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 60608i, u_input.a.x, 1i), ~vec4<i32>(u_input.a.x, u_input.a.x, -1i, 1i)), vec4<i32>(u_input.a.x, _wgslsmith_add_i32(u_input.a.x, u_input.a.x), _wgslsmith_mult_i32(55823i, u_input.a.x), -43427i)), _wgslsmith_dot_vec3_i32(-(~vec3<i32>(5383i, -2147483647i, u_input.a.x)), select(countOneBits(vec3<i32>(u_input.a.x, 36502i, 33820i)), -vec3<i32>(-30613i, u_input.a.x, -2147483647i), select(var_1.ywx, vec3<bool>(var_1.x, true, false), vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1222f, _wgslsmith_div_f32(838f, -566f), 1388f, _wgslsmith_f_op_f32(trunc(-223f))))), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 0u, 47184u), 23u)], _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-482f, 1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-265f, -1163f)))), -414f))));
    let var_3 = Struct_3(102305u, 1000f, min(abs(vec4<u32>(18021u, var_2.c.a, 1u, 2104u)), countOneBits(countOneBits(vec4<u32>(var_2.b.a, 37488u, var_2.b.a, 4763u)))) ^ (~(vec4<u32>(21354u, 24325u, var_2.b.a, 4294967295u) >> (vec4<u32>(30490u, var_2.b.a, 4294967295u, var_2.b.a) % vec4<u32>(32u))) & _wgslsmith_mod_vec4_u32(abs(vec4<u32>(4294967295u, var_2.d.a, 0u, var_2.b.a)), firstLeadingBit(vec4<u32>(var_2.b.a, 17342u, 59658u, var_2.d.a)))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(min(4294967295u, _wgslsmith_div_u32(_wgslsmith_add_u32(var_2.c.a, 34727u), var_2.b.a)), 10503u << (0u % 32u)), 23u)]);
    var var_4 = var_1.xzy;
    var var_5 = select(select(var_1.wwz, select(select(var_1.xxy, !var_1.wyw, var_1.yzy), !select(vec3<bool>(var_4.x, false, false), vec3<bool>(global3[_wgslsmith_index_u32(36986u, 25u)], var_4.x, true), false), func_2(_wgslsmith_add_i32(11308i, -44581i), firstLeadingBit(var_3.d.b)).d), !select(var_1.wxz, var_1.zww, var_0)), vec3<bool>(select(!var_1.x, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(52993u), var_2.d.a), 25u)], func_2(func_2(0i, var_2.d.b).c.b.x, vec4<i32>(var_2.b.b.x, 59821i, 0i, u_input.a.x)).d), true, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.b.a, 24979u, var_3.a, var_3.d.a) ^ var_3.c, vec4<u32>(4294967295u, 1u, 17730u, var_3.c.x)), vec4<u32>(4294967295u, 4294967295u, 1u << (var_3.a % 32u), _wgslsmith_add_u32(var_2.d.a, var_2.d.a))), 25u)]), var_1.zyw);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~_wgslsmith_mod_i32(var_3.d.c | 15787i, firstLeadingBit(u_input.a.x))), _wgslsmith_mult_vec4_u32(~var_3.c, var_3.c));
}

