struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(vec3<bool>(false, false, true), vec2<bool>(false, false), 1u, Struct_1(vec4<f32>(700f, 1180f, -137f, -620f), vec4<f32>(429f, 159f, 2144f, 734f), vec4<f32>(-1476f, 991f, -242f, -459f), false, 413f), 2147483647i), Struct_2(vec3<bool>(true, false, true), vec2<bool>(true, true), 41366u, Struct_1(vec4<f32>(-1000f, 262f, -899f, 103f), vec4<f32>(2419f, 464f, -1000f, -942f), vec4<f32>(-1000f, -545f, -554f, 339f), false, -927f), 1i), Struct_2(vec3<bool>(true, false, false), vec2<bool>(true, false), 445u, Struct_1(vec4<f32>(-639f, -202f, -251f, -1121f), vec4<f32>(1563f, 574f, 744f, -928f), vec4<f32>(749f, 2258f, -1076f, -171f), false, 1128f), i32(-2147483648)), Struct_2(vec3<bool>(true, false, false), vec2<bool>(true, true), 0u, Struct_1(vec4<f32>(152f, -621f, -1000f, 1392f), vec4<f32>(1000f, 322f, 534f, -320f), vec4<f32>(-425f, 601f, -1000f, 1725f), true, 1454f), 2310i), Struct_2(vec3<bool>(true, false, false), vec2<bool>(false, false), 1u, Struct_1(vec4<f32>(-1116f, -415f, 161f, 1340f), vec4<f32>(1633f, 604f, 119f, -348f), vec4<f32>(1000f, -759f, 1000f, 386f), true, -557f), -1i), Struct_2(vec3<bool>(false, false, false), vec2<bool>(true, true), 20622u, Struct_1(vec4<f32>(122f, -1849f, -448f, -628f), vec4<f32>(-235f, -275f, 178f, -1000f), vec4<f32>(-1846f, 1550f, 146f, -615f), false, -897f), 1i), Struct_2(vec3<bool>(true, true, true), vec2<bool>(false, true), 1u, Struct_1(vec4<f32>(1379f, -1864f, 1479f, 511f), vec4<f32>(1000f, -1317f, -733f, -2353f), vec4<f32>(207f, 112f, -813f, -273f), true, 1741f), -1i), Struct_2(vec3<bool>(false, false, false), vec2<bool>(true, false), 7992u, Struct_1(vec4<f32>(-1519f, -175f, -690f, 333f), vec4<f32>(571f, -1000f, 846f, 1372f), vec4<f32>(273f, -914f, 857f, 736f), false, 178f), 18757i), Struct_2(vec3<bool>(false, true, true), vec2<bool>(false, true), 32398u, Struct_1(vec4<f32>(-798f, -881f, -327f, -114f), vec4<f32>(1386f, -572f, 153f, 1232f), vec4<f32>(-971f, -247f, 444f, -749f), true, 1035f), 8339i), Struct_2(vec3<bool>(false, true, true), vec2<bool>(true, true), 4294967295u, Struct_1(vec4<f32>(200f, -1000f, 1725f, 801f), vec4<f32>(758f, -1145f, -503f, -1019f), vec4<f32>(-2432f, 806f, -167f, 638f), true, 436f), -1i), Struct_2(vec3<bool>(false, true, true), vec2<bool>(true, true), 18963u, Struct_1(vec4<f32>(-2010f, -1892f, 1375f, 1722f), vec4<f32>(-1000f, 760f, 1849f, -1755f), vec4<f32>(1000f, -350f, 137f, -212f), true, -572f), -1i), Struct_2(vec3<bool>(false, true, false), vec2<bool>(true, false), 5519u, Struct_1(vec4<f32>(-805f, 739f, -1345f, -1000f), vec4<f32>(524f, -2093f, 315f, 1056f), vec4<f32>(296f, -2516f, -664f, 643f), true, 592f), 2147483647i), Struct_2(vec3<bool>(false, true, false), vec2<bool>(true, false), 1u, Struct_1(vec4<f32>(1202f, 808f, 858f, -1030f), vec4<f32>(-579f, -342f, 1045f, 1832f), vec4<f32>(-1050f, 1235f, -1485f, -1172f), false, 644f), 1i), Struct_2(vec3<bool>(false, false, false), vec2<bool>(false, true), 4294967295u, Struct_1(vec4<f32>(-365f, 1000f, -294f, -362f), vec4<f32>(471f, 771f, -628f, 759f), vec4<f32>(345f, -455f, 492f, 659f), false, -1537f), -580i), Struct_2(vec3<bool>(true, true, false), vec2<bool>(false, false), 5824u, Struct_1(vec4<f32>(647f, -1793f, 1002f, -1200f), vec4<f32>(995f, -1176f, -254f, 333f), vec4<f32>(-147f, -1000f, 258f, 679f), true, 1611f), 11543i), Struct_2(vec3<bool>(false, false, true), vec2<bool>(true, true), 19937u, Struct_1(vec4<f32>(-2421f, -1156f, 1739f, 408f), vec4<f32>(-388f, 164f, -363f, -596f), vec4<f32>(1000f, -1211f, 335f, 844f), true, 747f), -39330i), Struct_2(vec3<bool>(true, false, false), vec2<bool>(false, true), 4294967295u, Struct_1(vec4<f32>(-1000f, -315f, -1150f, -1243f), vec4<f32>(-185f, -671f, 2077f, 207f), vec4<f32>(-2524f, 991f, -291f, -1642f), true, -851f), -7329i), Struct_2(vec3<bool>(true, true, false), vec2<bool>(true, false), 4294967295u, Struct_1(vec4<f32>(593f, 636f, -867f, 975f), vec4<f32>(-198f, 662f, 171f, -334f), vec4<f32>(-1000f, 126f, 2035f, 1108f), true, -1524f), 20064i), Struct_2(vec3<bool>(false, false, true), vec2<bool>(false, true), 4294967295u, Struct_1(vec4<f32>(-1216f, 928f, -424f, 1103f), vec4<f32>(720f, 745f, 697f, 990f), vec4<f32>(1172f, 596f, -956f, 185f), false, -1850f), -1i), Struct_2(vec3<bool>(true, false, true), vec2<bool>(true, true), 0u, Struct_1(vec4<f32>(-301f, -618f, 332f, 1510f), vec4<f32>(996f, -510f, -631f, -364f), vec4<f32>(1715f, 933f, -1000f, 1279f), true, -1257f), -1i), Struct_2(vec3<bool>(true, true, false), vec2<bool>(false, true), 55470u, Struct_1(vec4<f32>(525f, -524f, 1140f, 701f), vec4<f32>(-569f, -796f, -1486f, -946f), vec4<f32>(333f, 1000f, 996f, 492f), true, -291f), -30603i));

var<private> global1: vec3<i32>;

var<private> global2: f32;

var<private> global3: array<bool, 9> = array<bool, 9>(false, true, false, true, false, false, false, false, true);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec2<f32>) -> vec4<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-633f, arg_1.x, 139f, arg_2.x)) - _wgslsmith_f_op_vec4_f32(trunc(arg_0.d.c)))))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1576f, arg_2.x, global3[_wgslsmith_index_u32(arg_0.c, 9u)])), arg_1.x), 1128f)), _wgslsmith_f_op_f32(-arg_1.x), arg_2.x, 1688f), _wgslsmith_f_op_vec4_f32(-arg_0.d.a), select(global3[_wgslsmith_index_u32(7331u, 9u)], 1u >= max(countOneBits(arg_0.c), ~arg_0.c), any(!select(vec4<bool>(false, true, global3[_wgslsmith_index_u32(60643u, 9u)], true), vec4<bool>(false, true, false, arg_0.d.d), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 9u)], true, arg_0.d.d, arg_0.d.d)))), arg_2.x);
    let var_1 = false;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - -1217f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_2.x, arg_1.x)), 1378f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(arg_0.d.a.x, arg_2.x))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_1.x))))), arg_2.x);
    return vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(527f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -273f))) + arg_1.x))), _wgslsmith_f_op_f32(-var_0.b.x), arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2510f, _wgslsmith_div_f32(var_0.e, var_2.x))) - -178f));
}

fn func_2(arg_0: u32, arg_1: bool) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(693f, 568f, 1005f, 954f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-129f, -777f, -494f, -1083f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(362f, 166f, -1036f, 952f))) * _wgslsmith_f_op_vec4_f32(func_3(global0[_wgslsmith_index_u32(68243u, 21u)], _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -750f, -629f), vec3<f32>(-2011f, -384f, 466f)), _wgslsmith_div_vec2_f32(vec2<f32>(-801f, 2077f), vec2<f32>(-1702f, 975f)))))));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> i32 {
    global1 = vec3<i32>(i32(-1i) * -select(arg_3.e >> (arg_2.c % 32u), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(arg_1.e, -2147483647i, arg_3.e, 2147483647i)), any(arg_1.a)), max(_wgslsmith_mult_i32(~(~0i), -34277i), max(~arg_0, ~(-arg_1.e))), 1i);
    global3 = array<bool, 9>();
    global0 = array<Struct_2, 21>();
    let var_0 = select(vec4<bool>(false, all(!vec2<bool>(false, global3[_wgslsmith_index_u32(0u, 9u)])), all(select(select(vec4<bool>(false, arg_2.a.x, false, true), vec4<bool>(true, arg_2.d.d, false, false), true), !vec4<bool>(false, false, true, arg_3.a.x), vec4<bool>(false, false, arg_3.d.d, false))), all(select(arg_2.b, select(vec2<bool>(arg_2.a.x, false), arg_3.a.zy, false), arg_2.a.x))), vec4<bool>(all(select(vec2<bool>(true, arg_2.d.d), vec2<bool>(true, true), true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, arg_2.a.x), !global3[_wgslsmith_index_u32(1u, 9u)])), global3[_wgslsmith_index_u32(~(~4294967295u), 9u)] == any(select(vec2<bool>(false, false), vec2<bool>(arg_3.a.x, true), arg_3.b)), !(!arg_3.a.x)), select(vec4<bool>(false, true, -arg_0 <= abs(arg_1.e), true), vec4<bool>(global3[_wgslsmith_index_u32(4856u, 9u)], false, true, true), select(select(vec4<bool>(true, true, false, global3[_wgslsmith_index_u32(arg_2.c, 9u)]), select(vec4<bool>(true, false, global3[_wgslsmith_index_u32(arg_2.c, 9u)], arg_2.d.d), vec4<bool>(arg_2.b.x, arg_3.b.x, true, true), global3[_wgslsmith_index_u32(arg_3.c, 9u)]), true), vec4<bool>(arg_1.b.x, all(vec2<bool>(arg_3.d.d, true)), true, true), select(select(vec4<bool>(false, false, true, arg_2.a.x), vec4<bool>(false, arg_1.b.x, true, arg_1.a.x), arg_1.d.d), vec4<bool>(arg_1.d.d, arg_2.a.x, arg_1.d.d, true), all(arg_3.a)))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-836f))) * _wgslsmith_f_op_f32(f32(-1f) * -1014f)), 335f);
    return arg_3.e;
}

fn func_1(arg_0: vec3<bool>) -> i32 {
    global2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1170f, 1429f)) - _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -215f))), -1648f));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-493f)))))) * 1f);
    global3 = array<bool, 9>();
    var var_1 = vec3<bool>(!any(vec3<bool>(false, all(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 9u)], false, arg_0.x)), false)), (_wgslsmith_dot_vec4_u32(min(vec4<u32>(0u, 0u, 0u, 1u), vec4<u32>(58175u, 4294967295u, 39996u, 0u)), vec4<u32>(1u, 1u, 1u, 1u)) != _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 15255u), _wgslsmith_mult_vec2_u32(vec2<u32>(41412u, 88389u), vec2<u32>(1u, 0u)))) || arg_0.x, 0i <= _wgslsmith_div_i32(_wgslsmith_add_i32(i32(-1i) * -2147483647i, global1.x), _wgslsmith_dot_vec3_i32(~vec3<i32>(0i, -1i, 1i), u_input.b)));
    let var_2 = -10989i;
    return func_4(abs(-_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, global1.x, u_input.b.x), vec4<i32>(-2147483647i, u_input.a.x, 0i, 27025i))), Struct_2(!arg_0, vec2<bool>(false, true), _wgslsmith_sub_u32(1u << (1u % 32u), countOneBits(reverseBits(0u))), Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1237f, var_0, -1019f, 519f), vec4<f32>(var_0, var_0, var_0, -1385f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-965f, var_0, -330f, var_0) * vec4<f32>(1450f, 1000f, var_0, var_0)))), _wgslsmith_f_op_vec4_f32(func_2(0u, all(vec4<bool>(true, true, global3[_wgslsmith_index_u32(1u, 9u)], true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2604f, 948f, 1792f, -194f), vec4<f32>(358f, -762f, var_0, var_0)))), _wgslsmith_f_op_f32(exp2(var_0)) > _wgslsmith_f_op_f32(-1411f + -724f), var_0), 1i), global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(select(~firstTrailingBit(abs(47844u)), _wgslsmith_clamp_u32(abs(_wgslsmith_mult_u32(82552u, 19195u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(25094u, 66944u, 1u), vec3<u32>(1u, 1u, 0u)), 43878u), var_1.x), 21u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    global1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(max(-(i32(-1i) * -2147483647i), 37125i), _wgslsmith_div_i32(func_1(select(vec3<bool>(var_0, false, true), vec3<bool>(true, false, global3[_wgslsmith_index_u32(1u, 9u)]), vec3<bool>(var_0, var_0, false))), -1i), ~global1.x), u_input.b, vec3<i32>(_wgslsmith_mult_i32(u_input.a.x ^ -6540i, _wgslsmith_sub_i32(-53i << (0u % 32u), ~u_input.a.x)), u_input.c.x, -_wgslsmith_dot_vec2_i32(select(vec2<i32>(global1.x, global1.x), vec2<i32>(global1.x, u_input.a.x), true), ~global1.xx)));
    let var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(26087u, 18644u, 4294967295u), vec3<u32>(0u, 10413u, 0u), vec3<u32>(80939u, 19071u, 1u)), vec3<u32>(0u, 0u, 1u)), global3[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(0u, 109917u)), 9u)])).x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(441f))))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-593f)) - -222f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-287f * 423f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(global0[_wgslsmith_index_u32(0u, 21u)], vec3<f32>(-1000f, -1000f, -1198f), vec2<f32>(1364f, 153f))).x + _wgslsmith_f_op_f32(floor(840f)))))));
    let var_4 = min(~(~vec4<u32>(4294967295u, 1u, 1u, 1u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(44244u, 18184u, 0u, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(5316u, 37388u, 0u, 32933u), vec4<u32>(29420u, 1u, 4294967295u, 54301u)))) << (_wgslsmith_sub_vec4_u32(~max(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(34995u, 104547u, 66602u, 14112u)), ~select(abs(vec4<u32>(0u, 21129u, 1u, 20500u)), vec4<u32>(0u, 313u, 20589u, 1u), false)) % vec4<u32>(32u));
    var_2 = _wgslsmith_f_op_f32(-872f - var_3);
    let var_5 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3))), var_3, _wgslsmith_f_op_f32(1865f - _wgslsmith_f_op_f32(var_3 * 777f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1098f, -1744f, var_3)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-315f, var_3, 1321f))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1411f, -1258f, 711f) + vec3<f32>(var_3, var_3, var_3))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-1282f, 1456f), ~(~37242u), vec4<u32>(~(var_4.x << (~1u % 32u)), ~firstLeadingBit(70579u) ^ reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(var_4.x, 0u), vec2<u32>(var_4.x, 1u))), var_4.x, ~0u), ~var_4.ww);
}

