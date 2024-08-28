struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec3<bool>,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec4<bool>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11>;

var<private> global1: f32;

var<private> global2: array<Struct_4, 32> = array<Struct_4, 32>(Struct_4(Struct_3(vec4<bool>(false, false, true, true), Struct_2(-27260i, false, vec3<u32>(42923u, 70635u, 0u)), vec3<bool>(false, true, false), 34284i), 0u, vec4<bool>(false, false, false, true), Struct_1(true, vec4<f32>(630f, 396f, 1263f, -228f)), 20306i), Struct_4(Struct_3(vec4<bool>(false, true, false, true), Struct_2(-1i, false, vec3<u32>(4294967295u, 4294967295u, 4294967295u)), vec3<bool>(true, true, false), 17497i), 21231u, vec4<bool>(false, true, false, true), Struct_1(false, vec4<f32>(1158f, -245f, 350f, -1503f)), 0i), Struct_4(Struct_3(vec4<bool>(true, true, true, true), Struct_2(-23936i, true, vec3<u32>(11849u, 1980u, 41590u)), vec3<bool>(true, false, true), 1i), 4294967295u, vec4<bool>(true, true, true, false), Struct_1(true, vec4<f32>(2527f, -632f, 669f, 707f)), 72324i), Struct_4(Struct_3(vec4<bool>(false, true, false, true), Struct_2(-46261i, true, vec3<u32>(4294967295u, 4294967295u, 4294967295u)), vec3<bool>(false, true, true), -11632i), 29592u, vec4<bool>(false, true, false, true), Struct_1(false, vec4<f32>(836f, 469f, -1000f, -543f)), 1i), Struct_4(Struct_3(vec4<bool>(false, true, true, false), Struct_2(-17298i, false, vec3<u32>(0u, 0u, 20849u)), vec3<bool>(true, false, true), i32(-2147483648)), 0u, vec4<bool>(false, true, true, true), Struct_1(false, vec4<f32>(-2033f, -390f, -812f, 1062f)), 0i), Struct_4(Struct_3(vec4<bool>(true, true, false, true), Struct_2(i32(-2147483648), false, vec3<u32>(28065u, 1u, 0u)), vec3<bool>(false, true, false), 2147483647i), 4294967295u, vec4<bool>(true, false, true, true), Struct_1(false, vec4<f32>(-164f, -192f, 1454f, -880f)), -23463i), Struct_4(Struct_3(vec4<bool>(false, true, true, true), Struct_2(2147483647i, true, vec3<u32>(0u, 4294967295u, 0u)), vec3<bool>(true, true, true), 0i), 20764u, vec4<bool>(false, true, true, true), Struct_1(false, vec4<f32>(-1000f, 603f, -1600f, -140f)), 2147483647i), Struct_4(Struct_3(vec4<bool>(true, true, false, false), Struct_2(-1i, false, vec3<u32>(4294967295u, 28271u, 51749u)), vec3<bool>(true, false, true), -1i), 4294967295u, vec4<bool>(true, false, true, false), Struct_1(false, vec4<f32>(-1000f, 1094f, 414f, -789f)), 1i), Struct_4(Struct_3(vec4<bool>(true, true, false, false), Struct_2(2147483647i, true, vec3<u32>(2878u, 4294967295u, 49773u)), vec3<bool>(true, true, false), 2147483647i), 919u, vec4<bool>(true, false, true, false), Struct_1(true, vec4<f32>(-1082f, 1102f, 857f, -1048f)), 3276i), Struct_4(Struct_3(vec4<bool>(true, true, false, true), Struct_2(0i, false, vec3<u32>(50290u, 4987u, 27574u)), vec3<bool>(false, true, true), -8873i), 4294967295u, vec4<bool>(true, true, false, false), Struct_1(true, vec4<f32>(823f, 488f, -1172f, -1266f)), -5805i), Struct_4(Struct_3(vec4<bool>(true, false, true, false), Struct_2(-23975i, false, vec3<u32>(57266u, 0u, 0u)), vec3<bool>(false, true, true), i32(-2147483648)), 25461u, vec4<bool>(false, true, true, false), Struct_1(false, vec4<f32>(-854f, 808f, 154f, 473f)), 1i), Struct_4(Struct_3(vec4<bool>(true, false, true, true), Struct_2(-32082i, false, vec3<u32>(1u, 48200u, 1u)), vec3<bool>(true, false, true), 42127i), 1u, vec4<bool>(false, false, true, false), Struct_1(false, vec4<f32>(1134f, -1778f, 1000f, 553f)), 13212i), Struct_4(Struct_3(vec4<bool>(false, true, true, false), Struct_2(-4808i, true, vec3<u32>(41899u, 0u, 0u)), vec3<bool>(true, true, false), 25802i), 0u, vec4<bool>(true, false, false, true), Struct_1(true, vec4<f32>(-601f, -1800f, 502f, 2015f)), 48576i), Struct_4(Struct_3(vec4<bool>(false, false, true, false), Struct_2(1i, true, vec3<u32>(13292u, 1u, 4294967295u)), vec3<bool>(true, false, false), i32(-2147483648)), 0u, vec4<bool>(false, false, false, false), Struct_1(false, vec4<f32>(1115f, 1507f, 1102f, -163f)), -25717i), Struct_4(Struct_3(vec4<bool>(true, true, true, false), Struct_2(3074i, true, vec3<u32>(23118u, 155751u, 4294967295u)), vec3<bool>(true, false, true), -49978i), 4294967295u, vec4<bool>(false, true, false, true), Struct_1(false, vec4<f32>(-775f, -192f, 101f, -495f)), 1i), Struct_4(Struct_3(vec4<bool>(false, true, false, false), Struct_2(0i, false, vec3<u32>(0u, 12965u, 0u)), vec3<bool>(true, false, true), 1i), 1u, vec4<bool>(true, true, false, false), Struct_1(true, vec4<f32>(1000f, 1000f, 268f, 609f)), 34495i), Struct_4(Struct_3(vec4<bool>(false, true, false, true), Struct_2(28686i, true, vec3<u32>(20084u, 0u, 18668u)), vec3<bool>(true, true, true), 1i), 1u, vec4<bool>(true, true, false, false), Struct_1(false, vec4<f32>(-473f, 472f, -1000f, 128f)), -26444i), Struct_4(Struct_3(vec4<bool>(false, true, true, false), Struct_2(-8747i, true, vec3<u32>(4294967295u, 8499u, 1u)), vec3<bool>(false, true, true), -266i), 4294967295u, vec4<bool>(true, true, true, false), Struct_1(false, vec4<f32>(-1842f, -1858f, -1162f, 776f)), -30433i), Struct_4(Struct_3(vec4<bool>(false, false, false, true), Struct_2(-25006i, false, vec3<u32>(1u, 0u, 1u)), vec3<bool>(false, true, true), 1i), 36032u, vec4<bool>(false, true, true, false), Struct_1(false, vec4<f32>(-805f, 675f, -869f, 208f)), -1i), Struct_4(Struct_3(vec4<bool>(true, false, false, false), Struct_2(-1i, false, vec3<u32>(42147u, 4294967295u, 52744u)), vec3<bool>(true, true, true), 2147483647i), 9220u, vec4<bool>(false, false, true, false), Struct_1(true, vec4<f32>(1557f, 1013f, -246f, 400f)), 0i), Struct_4(Struct_3(vec4<bool>(false, true, false, false), Struct_2(3733i, false, vec3<u32>(1u, 83225u, 4294967295u)), vec3<bool>(false, true, false), 0i), 1u, vec4<bool>(false, true, false, false), Struct_1(true, vec4<f32>(1091f, -1612f, 1143f, -1651f)), 15802i), Struct_4(Struct_3(vec4<bool>(false, true, false, true), Struct_2(-16113i, true, vec3<u32>(0u, 27662u, 0u)), vec3<bool>(false, false, true), 10354i), 55983u, vec4<bool>(false, true, true, false), Struct_1(false, vec4<f32>(750f, -1084f, -1150f, 491f)), i32(-2147483648)), Struct_4(Struct_3(vec4<bool>(true, true, false, false), Struct_2(-1i, false, vec3<u32>(4294967295u, 0u, 67449u)), vec3<bool>(true, true, false), 1i), 4294967295u, vec4<bool>(true, true, true, true), Struct_1(true, vec4<f32>(449f, 676f, 627f, 1063f)), 1i), Struct_4(Struct_3(vec4<bool>(true, false, false, true), Struct_2(1i, false, vec3<u32>(4294967295u, 0u, 91584u)), vec3<bool>(true, false, true), -33340i), 1u, vec4<bool>(false, false, true, false), Struct_1(false, vec4<f32>(-1684f, -890f, 1000f, -799f)), 1i), Struct_4(Struct_3(vec4<bool>(false, false, true, false), Struct_2(2147483647i, false, vec3<u32>(40354u, 25197u, 1u)), vec3<bool>(true, true, false), 2147483647i), 4294967295u, vec4<bool>(false, true, false, true), Struct_1(true, vec4<f32>(-617f, -369f, -1740f, 569f)), i32(-2147483648)), Struct_4(Struct_3(vec4<bool>(true, true, true, false), Struct_2(0i, true, vec3<u32>(42094u, 20847u, 4294967295u)), vec3<bool>(true, true, true), 2147483647i), 38652u, vec4<bool>(false, false, true, true), Struct_1(false, vec4<f32>(-980f, 284f, -402f, -1049f)), i32(-2147483648)), Struct_4(Struct_3(vec4<bool>(true, true, true, true), Struct_2(-9119i, false, vec3<u32>(1u, 4294967295u, 4294967295u)), vec3<bool>(false, true, true), 0i), 0u, vec4<bool>(true, true, false, false), Struct_1(true, vec4<f32>(-498f, 111f, 1504f, -447f)), 0i), Struct_4(Struct_3(vec4<bool>(true, true, false, false), Struct_2(-1i, true, vec3<u32>(29802u, 8733u, 4294967295u)), vec3<bool>(true, true, true), -3843i), 17754u, vec4<bool>(true, true, true, false), Struct_1(true, vec4<f32>(362f, -888f, -1730f, -1000f)), 0i), Struct_4(Struct_3(vec4<bool>(true, true, true, true), Struct_2(17505i, true, vec3<u32>(0u, 1u, 33936u)), vec3<bool>(false, false, false), 30413i), 0u, vec4<bool>(true, true, true, false), Struct_1(true, vec4<f32>(776f, 847f, -949f, 914f)), -10336i), Struct_4(Struct_3(vec4<bool>(true, true, false, true), Struct_2(0i, true, vec3<u32>(0u, 84185u, 0u)), vec3<bool>(true, true, true), 2253i), 0u, vec4<bool>(true, true, false, true), Struct_1(true, vec4<f32>(-331f, 1260f, 919f, 702f)), i32(-2147483648)), Struct_4(Struct_3(vec4<bool>(false, false, true, false), Struct_2(-1i, false, vec3<u32>(1u, 27149u, 0u)), vec3<bool>(true, false, true), -11221i), 0u, vec4<bool>(true, true, false, true), Struct_1(true, vec4<f32>(1480f, -327f, 423f, -1547f)), -14236i), Struct_4(Struct_3(vec4<bool>(true, true, true, true), Struct_2(-1077i, true, vec3<u32>(4294967295u, 4294967295u, 0u)), vec3<bool>(true, true, false), i32(-2147483648)), 0u, vec4<bool>(false, true, false, false), Struct_1(false, vec4<f32>(-395f, 822f, -257f, 1476f)), 15850i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = vec4<i32>(-18781i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(2147483647i, arg_0.a, arg_0.a, -40299i)), abs(vec4<i32>(-30465i, 0i, 1i, -46644i))), select(vec4<i32>(70766i, arg_0.a, 1i, arg_0.a) | vec4<i32>(arg_0.a, -21525i, 53862i, arg_0.a), vec4<i32>(17352i, 17422i, -2147483647i, 2147483647i) << (vec4<u32>(3948u, 69643u, 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 11u)]) % vec4<u32>(32u)), false)), arg_0.a, arg_0.a) & ~(~vec4<i32>(_wgslsmith_mult_i32(arg_0.a, arg_0.a), -arg_0.a, select(arg_0.a, arg_0.a, true), -17274i));
    let var_1 = vec2<f32>(1f, 767f);
    let var_2 = global2[_wgslsmith_index_u32(arg_0.c.x << (abs(arg_0.c.x) % 32u), 32u)];
    var var_3 = select(~(~(u_input.a.xw & (u_input.a.yy >> (vec2<u32>(arg_0.c.x, arg_0.c.x) % vec2<u32>(32u))))), _wgslsmith_mult_vec2_u32(~_wgslsmith_div_vec2_u32(~arg_0.c.xz, vec2<u32>(u_input.b.x, var_2.b)), u_input.a.wx), var_2.c.yy);
    return var_2.a.c.zy;
}

fn func_2(arg_0: Struct_2) -> vec4<bool> {
    global2 = array<Struct_4, 32>();
    let var_0 = Struct_3(vec4<bool>(true, arg_0.b, arg_0.b, arg_0.b | any(func_3(arg_0))), Struct_2(2147483647i, arg_0.b, u_input.a.yyx), vec3<bool>((_wgslsmith_dot_vec2_i32(vec2<i32>(-4514i, arg_0.a), vec2<i32>(arg_0.a, arg_0.a)) << (_wgslsmith_dot_vec4_u32(u_input.a, u_input.a) % 32u)) == abs(arg_0.a), !((arg_0.a != arg_0.a) && arg_0.b), (_wgslsmith_f_op_f32(1000f - -2047f) < _wgslsmith_f_op_f32(step(-1016f, -1331f))) || true), 2147483647i);
    var var_1 = Struct_2(var_0.b.a, any(!(!(!var_0.a.ww))), ~(~reverseBits(var_0.b.c) & arg_0.c));
    var var_2 = Struct_2(-9922i, 119586u <= arg_0.c.x, ~vec3<u32>(0u, ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 0u), vec2<u32>(var_0.b.c.x, arg_0.c.x)), 11u)], ~0u));
    var var_3 = 318f;
    return vec4<bool>(false, all(var_0.a.wxy), false, !(!any(var_0.c.zx)));
}

fn func_1() -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -870f))), _wgslsmith_div_f32(-1441f, 179f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-191f + -1000f), _wgslsmith_f_op_f32(select(1350f, 608f, true)))), 888f)));
    var var_1 = vec3<bool>(!any(select(vec4<bool>(true, true, true, true), func_2(Struct_2(-1i, false, u_input.a.yyw)), func_2(Struct_2(-13809i, false, vec3<u32>(global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 11u)], 11u)], 11u)], 1u))))), any(vec3<bool>(true, any(vec3<bool>(false, false, true)) || func_3(Struct_2(-6409i, false, u_input.b)).x, true)), all(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true))));
    var_1 = select(vec3<bool>(var_1.x, !var_1.x, any(!vec4<bool>(var_1.x, var_1.x, true, true))), !vec3<bool>(true, var_1.x, true), !vec3<bool>(false, true, !(!var_1.x)));
    let var_2 = false;
    global2 = array<Struct_4, 32>();
    return _wgslsmith_f_op_vec3_f32(sign(var_0.yyw));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-944f + _wgslsmith_f_op_f32(max(-490f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1073f - 1368f))))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -751f))), -773f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-222f - _wgslsmith_div_f32(-1333f, -488f)) - 1f)));
    global0 = array<u32, 11>();
    let var_0 = firstTrailingBit(abs(0i));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-317f, -137f, 431f) + vec3<f32>(-396f, -1113f, -831f)), vec3<f32>(2043f, 1000f, -149f)) * vec3<f32>(417f, _wgslsmith_f_op_f32(min(-226f, 1299f)), _wgslsmith_f_op_f32(floor(765f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-630f, _wgslsmith_f_op_f32(-1463f + 141f), _wgslsmith_f_op_f32(sign(-1619f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()) * vec3<f32>(-1497f, -2386f, 1602f))))));
    let var_2 = Struct_4(Struct_3(!vec4<bool>(false, var_0 >= var_0, select(true, false, true), true), Struct_2(-_wgslsmith_add_i32(-12901i, var_0), false, min(select(u_input.b, u_input.b, vec3<bool>(false, true, false)), abs(u_input.b))), vec3<bool>(true, true, true), var_0), ~60832u, vec4<bool>(true, true, true, true), Struct_1(!all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-374f, var_1.x, 355f, -963f) + vec4<f32>(248f, var_1.x, 875f, 1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -179f, var_1.x, -905f))))), -18969i);
    var var_3 = 1u;
    global0 = array<u32, 11>();
    global2 = array<Struct_4, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<u32>(~(~47351u), ~firstTrailingBit(4294967295u))), _wgslsmith_dot_vec4_u32(~(~u_input.a), u_input.a | vec4<u32>(select(49678u, 19355u, var_2.d.a), global0[_wgslsmith_index_u32(var_2.b << (var_2.b % 32u), 11u)], var_2.b << (global0[_wgslsmith_index_u32(39968u, 11u)] % 32u), u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1()).x), var_1.x) * _wgslsmith_f_op_f32(min(-700f, _wgslsmith_f_op_f32(1469f - _wgslsmith_f_op_f32(round(-548f)))))));
}

