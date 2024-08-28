struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: Struct_2,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec3<u32>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<f32>,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 14>;

var<private> global1: Struct_1 = Struct_1(false, vec2<bool>(false, false), false, false, 1u);

var<private> global2: array<Struct_4, 26> = array<Struct_4, 26>(Struct_4(Struct_3(vec4<f32>(-605f, 438f, 1504f, -888f), -84612i, Struct_2(vec4<bool>(true, true, false, true), vec3<bool>(false, false, false), 0i, Struct_1(false, vec2<bool>(true, false), true, false, 70986u)), vec3<bool>(true, true, false)), 1u, vec3<u32>(58931u, 4294967295u, 24003u), true, vec3<u32>(0u, 0u, 1u)), Struct_4(Struct_3(vec4<f32>(613f, 578f, 963f, 671f), i32(-2147483648), Struct_2(vec4<bool>(true, false, false, false), vec3<bool>(true, false, true), -39677i, Struct_1(false, vec2<bool>(false, false), false, true, 4294967295u)), vec3<bool>(true, true, false)), 51354u, vec3<u32>(4294967295u, 11080u, 46756u), false, vec3<u32>(1u, 120646u, 1u)), Struct_4(Struct_3(vec4<f32>(-267f, 851f, 758f, 661f), 9306i, Struct_2(vec4<bool>(true, true, true, false), vec3<bool>(false, false, true), -38429i, Struct_1(true, vec2<bool>(true, false), false, true, 33185u)), vec3<bool>(true, true, true)), 4294967295u, vec3<u32>(1u, 1u, 88644u), true, vec3<u32>(0u, 3481u, 9355u)), Struct_4(Struct_3(vec4<f32>(1145f, -1034f, 342f, 230f), 0i, Struct_2(vec4<bool>(true, true, false, false), vec3<bool>(true, false, true), 13582i, Struct_1(true, vec2<bool>(false, false), false, false, 0u)), vec3<bool>(true, false, true)), 77353u, vec3<u32>(4294967295u, 9911u, 34929u), false, vec3<u32>(0u, 0u, 66463u)), Struct_4(Struct_3(vec4<f32>(-1299f, 835f, 121f, 756f), 27002i, Struct_2(vec4<bool>(false, false, false, true), vec3<bool>(false, true, true), -1i, Struct_1(true, vec2<bool>(true, false), false, false, 0u)), vec3<bool>(false, true, false)), 0u, vec3<u32>(78369u, 4294967295u, 15578u), false, vec3<u32>(49077u, 55504u, 1u)), Struct_4(Struct_3(vec4<f32>(-1691f, 648f, -566f, 1888f), 77570i, Struct_2(vec4<bool>(false, false, false, true), vec3<bool>(true, true, false), 15594i, Struct_1(false, vec2<bool>(false, true), true, true, 0u)), vec3<bool>(true, false, true)), 1u, vec3<u32>(1871u, 0u, 0u), false, vec3<u32>(3402u, 13959u, 0u)), Struct_4(Struct_3(vec4<f32>(-1233f, 1077f, -320f, -574f), 20688i, Struct_2(vec4<bool>(true, true, false, true), vec3<bool>(false, true, true), 48898i, Struct_1(true, vec2<bool>(true, false), true, false, 2196u)), vec3<bool>(true, false, false)), 74198u, vec3<u32>(1u, 0u, 0u), false, vec3<u32>(1u, 4294967295u, 41594u)), Struct_4(Struct_3(vec4<f32>(116f, -609f, -424f, 837f), 2147483647i, Struct_2(vec4<bool>(false, true, false, false), vec3<bool>(false, false, false), 0i, Struct_1(true, vec2<bool>(false, true), true, true, 14407u)), vec3<bool>(true, false, false)), 10676u, vec3<u32>(86963u, 110409u, 4294967295u), false, vec3<u32>(0u, 119017u, 4294967295u)), Struct_4(Struct_3(vec4<f32>(-547f, 385f, -140f, -220f), 15913i, Struct_2(vec4<bool>(false, true, false, false), vec3<bool>(false, true, false), 2147483647i, Struct_1(true, vec2<bool>(true, false), true, false, 11854u)), vec3<bool>(true, true, true)), 20373u, vec3<u32>(4294967295u, 4294967295u, 54535u), true, vec3<u32>(13626u, 49884u, 18026u)), Struct_4(Struct_3(vec4<f32>(-191f, -875f, -1000f, 580f), 2147483647i, Struct_2(vec4<bool>(true, true, true, true), vec3<bool>(true, false, false), -12551i, Struct_1(true, vec2<bool>(true, false), false, true, 4294967295u)), vec3<bool>(false, false, true)), 29185u, vec3<u32>(0u, 0u, 2281u), true, vec3<u32>(11333u, 4294967295u, 0u)), Struct_4(Struct_3(vec4<f32>(527f, 1939f, -1000f, 307f), -1i, Struct_2(vec4<bool>(true, true, false, false), vec3<bool>(true, false, false), 2147483647i, Struct_1(false, vec2<bool>(true, false), false, false, 3627u)), vec3<bool>(false, false, true)), 59113u, vec3<u32>(1u, 85250u, 74543u), true, vec3<u32>(47751u, 20113u, 87028u)), Struct_4(Struct_3(vec4<f32>(-563f, 1317f, 394f, 773f), i32(-2147483648), Struct_2(vec4<bool>(true, true, false, false), vec3<bool>(true, false, false), 30370i, Struct_1(false, vec2<bool>(true, true), false, false, 0u)), vec3<bool>(true, false, true)), 1u, vec3<u32>(4294967295u, 0u, 1u), true, vec3<u32>(4294967295u, 17015u, 20323u)), Struct_4(Struct_3(vec4<f32>(-1227f, -635f, 550f, 1057f), 0i, Struct_2(vec4<bool>(false, false, false, false), vec3<bool>(true, false, false), i32(-2147483648), Struct_1(false, vec2<bool>(true, false), false, true, 0u)), vec3<bool>(true, false, false)), 58649u, vec3<u32>(17124u, 57384u, 14896u), false, vec3<u32>(52032u, 0u, 1u)), Struct_4(Struct_3(vec4<f32>(1289f, -722f, -989f, 622f), 1i, Struct_2(vec4<bool>(false, false, true, false), vec3<bool>(true, false, true), 1i, Struct_1(true, vec2<bool>(false, false), true, true, 113222u)), vec3<bool>(false, true, true)), 4294967295u, vec3<u32>(0u, 69934u, 24846u), true, vec3<u32>(0u, 0u, 0u)), Struct_4(Struct_3(vec4<f32>(1208f, 2982f, 1091f, 552f), -1i, Struct_2(vec4<bool>(false, true, true, true), vec3<bool>(false, false, true), -67015i, Struct_1(true, vec2<bool>(false, false), true, false, 5386u)), vec3<bool>(true, false, false)), 4294967295u, vec3<u32>(1u, 4294967295u, 43889u), false, vec3<u32>(22584u, 9824u, 6463u)), Struct_4(Struct_3(vec4<f32>(473f, -1285f, 459f, 430f), -32364i, Struct_2(vec4<bool>(true, false, true, false), vec3<bool>(true, false, true), i32(-2147483648), Struct_1(false, vec2<bool>(false, true), true, false, 80091u)), vec3<bool>(true, true, false)), 36582u, vec3<u32>(72196u, 4294967295u, 4294967295u), false, vec3<u32>(20884u, 53806u, 4294967295u)), Struct_4(Struct_3(vec4<f32>(-876f, 677f, -1000f, 478f), -1i, Struct_2(vec4<bool>(true, true, true, false), vec3<bool>(true, false, true), i32(-2147483648), Struct_1(false, vec2<bool>(true, false), false, false, 0u)), vec3<bool>(false, false, false)), 62478u, vec3<u32>(20317u, 10858u, 4294967295u), false, vec3<u32>(0u, 1u, 25008u)), Struct_4(Struct_3(vec4<f32>(2423f, -518f, 732f, -332f), -30475i, Struct_2(vec4<bool>(false, true, false, true), vec3<bool>(true, false, false), -43465i, Struct_1(true, vec2<bool>(false, false), true, true, 14444u)), vec3<bool>(true, false, false)), 4294967295u, vec3<u32>(76574u, 4294967295u, 28207u), false, vec3<u32>(1u, 0u, 0u)), Struct_4(Struct_3(vec4<f32>(1436f, -1070f, 918f, -2443f), 53903i, Struct_2(vec4<bool>(false, false, false, true), vec3<bool>(true, true, false), 0i, Struct_1(true, vec2<bool>(false, false), false, true, 51339u)), vec3<bool>(false, true, true)), 0u, vec3<u32>(4294967295u, 43414u, 32661u), true, vec3<u32>(4294967295u, 5769u, 485u)), Struct_4(Struct_3(vec4<f32>(223f, 559f, -723f, 810f), 1i, Struct_2(vec4<bool>(true, false, true, true), vec3<bool>(false, false, false), -1i, Struct_1(false, vec2<bool>(false, true), false, false, 39939u)), vec3<bool>(true, false, true)), 0u, vec3<u32>(1u, 12055u, 87645u), false, vec3<u32>(4294967295u, 11704u, 84360u)), Struct_4(Struct_3(vec4<f32>(-612f, 138f, -495f, -261f), 1i, Struct_2(vec4<bool>(false, false, false, true), vec3<bool>(false, true, false), i32(-2147483648), Struct_1(false, vec2<bool>(true, false), true, false, 0u)), vec3<bool>(true, false, true)), 4294967295u, vec3<u32>(126u, 1u, 1u), false, vec3<u32>(64373u, 1u, 83272u)), Struct_4(Struct_3(vec4<f32>(-1000f, -431f, 1088f, 1394f), 1565i, Struct_2(vec4<bool>(true, false, false, false), vec3<bool>(false, false, true), -17253i, Struct_1(false, vec2<bool>(true, false), true, false, 49523u)), vec3<bool>(false, true, false)), 32020u, vec3<u32>(4294967295u, 0u, 4294967295u), true, vec3<u32>(3266u, 1u, 47970u)), Struct_4(Struct_3(vec4<f32>(365f, 496f, 679f, 1655f), 2147483647i, Struct_2(vec4<bool>(true, true, true, true), vec3<bool>(false, true, true), 18106i, Struct_1(false, vec2<bool>(true, false), false, false, 44591u)), vec3<bool>(false, false, true)), 4294967295u, vec3<u32>(4284u, 76267u, 0u), true, vec3<u32>(5317u, 4294967295u, 4294967295u)), Struct_4(Struct_3(vec4<f32>(-1632f, 1298f, 1000f, -1000f), 1i, Struct_2(vec4<bool>(true, true, false, false), vec3<bool>(true, false, true), -1i, Struct_1(true, vec2<bool>(false, true), false, false, 55315u)), vec3<bool>(true, false, true)), 4294967295u, vec3<u32>(36506u, 64018u, 1u), false, vec3<u32>(52743u, 20726u, 4294967295u)), Struct_4(Struct_3(vec4<f32>(-1000f, 2009f, -181f, -734f), -51197i, Struct_2(vec4<bool>(true, true, false, true), vec3<bool>(false, true, true), 76462i, Struct_1(true, vec2<bool>(true, false), true, true, 1u)), vec3<bool>(true, false, true)), 1u, vec3<u32>(4444u, 41745u, 7238u), false, vec3<u32>(1u, 48237u, 1u)), Struct_4(Struct_3(vec4<f32>(911f, 593f, -1569f, -1000f), -57055i, Struct_2(vec4<bool>(false, false, false, true), vec3<bool>(false, false, false), -19851i, Struct_1(true, vec2<bool>(true, true), false, false, 4294967295u)), vec3<bool>(true, true, false)), 0u, vec3<u32>(4294967295u, 50211u, 35133u), true, vec3<u32>(13340u, 1u, 46671u)));

var<private> global3: array<bool, 4> = array<bool, 4>(true, true, true, true);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_1(global3[_wgslsmith_index_u32(1u, 4u)], vec2<bool>((-38105i << (_wgslsmith_mult_u32(global1.e, u_input.c) % 32u)) == -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, 20613i)), true), select(u_input.b == -35836i, global1.e != global1.e, false), !global1.b.x, ((4294967295u << (u_input.a % 32u)) >> (u_input.c % 32u)) | (~(~global1.e) | ~max(global1.e, 4294967295u)));
    var var_1 = _wgslsmith_mod_i32(abs(u_input.b & 2147483647i) | _wgslsmith_mult_i32(u_input.b, _wgslsmith_add_i32(-2536i, 34765i)), ~(~(i32(-1i) * -1i))) > ~(-42438i);
    var var_2 = Struct_1(all(select(vec3<bool>(any(vec3<bool>(global3[_wgslsmith_index_u32(11284u, 4u)], false, true)), global3[_wgslsmith_index_u32(21995u, 4u)], true), vec3<bool>(true, !global1.d, true), true)), vec2<bool>(global3[_wgslsmith_index_u32(u_input.c, 4u)], false), !select(!global1.c, true, var_0.d), false, ~abs(_wgslsmith_clamp_u32(u_input.c, ~u_input.c, 4294967295u)));
    var_0 = Struct_1(true, vec2<bool>(-175f <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(482f - -1306f))), true), all(select(vec3<bool>(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(33363u, 55096u), 4u)], false, !global3[_wgslsmith_index_u32(global1.e, 4u)]), select(vec3<bool>(true, true, true), select(vec3<bool>(var_0.d, var_0.c, false), vec3<bool>(var_2.c, true, global1.d), global1.b.x), vec3<bool>(true, true, true)), (u_input.b ^ -51855i) > ~u_input.b)), !(!(var_0.d | (-56875i <= u_input.b))), var_2.e);
    let var_3 = Struct_2(select(vec4<bool>(true, all(vec3<bool>(false, global1.b.x, global3[_wgslsmith_index_u32(var_0.e, 4u)])), !var_0.d, any(!vec4<bool>(false, var_2.d, global1.c, global3[_wgslsmith_index_u32(4294967295u, 4u)]))), vec4<bool>(!any(vec4<bool>(global3[_wgslsmith_index_u32(var_2.e, 4u)], var_0.b.x, global1.a, global3[_wgslsmith_index_u32(u_input.c, 4u)])), false, var_2.e < var_0.e, !(var_0.a & true)), vec4<bool>(all(vec3<bool>(true, true, var_2.c)), !global3[_wgslsmith_index_u32(0u, 4u)] != all(vec3<bool>(true, false, false)), global1.a, !var_2.b.x)), select(vec3<bool>(true, all(vec3<bool>(global1.a, var_2.c, global1.b.x)) != var_2.c, false & all(vec3<bool>(false, var_2.b.x, global1.c))), vec3<bool>(!global1.d, var_2.e < _wgslsmith_add_u32(137099u, 0u), true), !global1.c), _wgslsmith_sub_i32(u_input.b, -16571i), Struct_1(true, select(select(select(global1.b, vec2<bool>(false, true), vec2<bool>(var_0.c, var_0.d)), global1.b, vec2<bool>(global3[_wgslsmith_index_u32(44406u, 4u)], var_0.c)), !select(var_2.b, var_0.b, vec2<bool>(false, false)), var_0.b), !global1.a && true, var_2.b.x, firstLeadingBit(0u)));
    return var_3.a;
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: i32) -> f32 {
    global0 = array<vec3<i32>, 14>();
    let var_0 = Struct_5(Struct_1(true, vec2<bool>(global1.e == global1.e, global1.a), global3[_wgslsmith_index_u32(~(0u | global1.e), 4u)], global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.c, 5659u), 4u)], _wgslsmith_dot_vec2_u32(countOneBits(~vec2<u32>(arg_1, 1u)), ~vec2<u32>(4294967295u, global1.e))), _wgslsmith_f_op_vec4_f32(-arg_0), arg_0, Struct_2(func_3(), !vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.a | u_input.a, 4u)], all(vec2<bool>(true, true))), _wgslsmith_sub_i32(~u_input.b, 1i), Struct_1(reverseBits(24651i) == u_input.b, global1.b, true, global3[_wgslsmith_index_u32(select(max(1204u, 15877u), ~1u, false), 4u)], arg_1)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -219f) - arg_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0.x, 375f)), arg_0.x))));
    let var_1 = var_0.d;
    var var_2 = vec4<u32>(1u, ~(countOneBits(var_1.d.e) & (u_input.c | 729u)) & firstLeadingBit(~max(u_input.a, arg_1)), 9472u, var_0.a.e >> (global1.e % 32u));
    var_2 = ~vec4<u32>(1u, _wgslsmith_sub_u32(firstLeadingBit(92969u), ~global1.e) >> (~(~0u) % 32u), _wgslsmith_add_u32(global1.e, _wgslsmith_add_u32(_wgslsmith_sub_u32(arg_1, var_0.a.e), 4294967295u)), 50674u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2718f, _wgslsmith_f_op_f32(-arg_0.x), !global3[_wgslsmith_index_u32(u_input.a, 4u)])));
}

fn func_1() -> Struct_5 {
    global3 = array<bool, 4>();
    global0 = array<vec3<i32>, 14>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(406f))))));
    let var_1 = ~(~u_input.a);
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1211f, 1000f, false)), 682f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(vec4<f32>(375f, -886f, -1407f, 1085f), u_input.a, -20055i)))) * 415f)) - vec2<f32>(-470f, _wgslsmith_f_op_f32(f32(-1f) * -283f)));
    return Struct_5(Struct_1(false, global1.b, global1.c, (countOneBits(u_input.b) >= _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 1i, 10437i), vec4<i32>(1i, 76011i, 0i, 0i))) && false, reverseBits(abs(~var_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(469f, 1472f, var_2.x, -1383f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, 115f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, -1000f, var_2.x, -2729f), vec4<f32>(var_2.x, var_2.x, 1196f, -739f)))) + vec4<f32>(-190f, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-186f - var_2.x), var_2.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, 1006f, 243f)))), Struct_2(func_3(), vec3<bool>(!global1.c, false, !global1.a), -36601i, Struct_1(true, vec2<bool>(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(21976u, var_1), 4u)], true), global1.a, all(select(vec4<bool>(global3[_wgslsmith_index_u32(3121u, 4u)], true, global1.a, global3[_wgslsmith_index_u32(55014u, 4u)]), vec4<bool>(global3[_wgslsmith_index_u32(global1.e, 4u)], true, global3[_wgslsmith_index_u32(u_input.a, 4u)], global1.b.x), global1.b.x)), ~(50309u | var_1))), 1285f);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_5, arg_2: vec4<i32>, arg_3: i32) -> Struct_5 {
    global2 = array<Struct_4, 26>();
    global2 = array<Struct_4, 26>();
    global0 = array<vec3<i32>, 14>();
    var var_0 = Struct_1(true, func_1().d.a.yx, !(_wgslsmith_clamp_u32(~22257u, 0u, 1u) > 1u), arg_0.x, 2496u);
    global2 = array<Struct_4, 26>();
    return func_1();
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_5, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec2_u32(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_3.d.e, 1u) & vec2<u32>(arg_3.d.e, 17514u), _wgslsmith_sub_vec2_u32(vec2<u32>(28134u, arg_3.d.e), vec2<u32>(arg_3.d.e, 115138u)))), ~_wgslsmith_div_vec2_u32(vec2<u32>(firstLeadingBit(global1.e), reverseBits(35005u)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, arg_1.a.e), vec2<u32>(u_input.c, global1.e))), ~vec2<u32>(40671u, 38064u));
    global2 = array<Struct_4, 26>();
    let var_1 = Struct_3(vec4<f32>(_wgslsmith_div_f32(arg_1.b.x, arg_1.e), -571f, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.c + vec4<f32>(arg_1.e, arg_1.c.x, -1398f, -652f)) - _wgslsmith_f_op_vec4_f32(step(arg_1.b, arg_1.b))), global1.e, arg_1.d.c >> (global1.e % 32u))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -559f))), arg_1.e))), _wgslsmith_add_i32(max(select(arg_3.c, ~u_input.b, true), select(-u_input.b, select(u_input.b, -2147483647i, false), true)), _wgslsmith_mod_i32(-_wgslsmith_add_i32(arg_3.c, arg_3.c), 1i)), arg_1.d, func_4(!vec4<bool>(true, all(vec4<bool>(global1.a, false, arg_3.b.x, true)), 896f > arg_1.c.x, true), func_4(select(select(vec4<bool>(true, true, arg_1.d.a.x, false), arg_3.a, global3[_wgslsmith_index_u32(1u, 4u)]), arg_3.a, all(vec2<bool>(arg_1.d.b.x, false))), func_4(!vec4<bool>(true, true, true, arg_3.d.a), func_1(), vec4<i32>(arg_3.c, arg_1.d.c, arg_1.d.c, -4970i), arg_2.x), vec4<i32>(countOneBits(u_input.b), _wgslsmith_sub_i32(arg_2.x, arg_2.x), arg_1.d.c, 1i), ~(-1i) & arg_3.c), -(-vec4<i32>(1i, 23408i, 0i, -2147483647i) & vec4<i32>(arg_2.x, arg_1.d.c, arg_1.d.c, -17520i)), 2147483647i).d.b);
    let var_2 = vec3<bool>(!(((var_1.c.d.c && false) | true) | false), _wgslsmith_mult_i32(arg_1.d.c << (57156u % 32u), firstLeadingBit(11326i)) > ~firstTrailingBit(45043i), all(vec4<bool>(false, any(!var_1.d), true, all(select(arg_1.d.b, arg_3.a.zxz, global3[_wgslsmith_index_u32(48038u, 4u)])))));
    global0 = array<vec3<i32>, 14>();
    return arg_1.d.d;
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: i32, arg_3: vec3<f32>) -> Struct_2 {
    global3 = array<bool, 4>();
    var var_0 = Struct_3(vec4<f32>(func_1().c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-510f - -846f)), _wgslsmith_f_op_f32(-arg_3.x), 1948f), ~1i, func_1().d, !(!func_1().d.b));
    var var_1 = Struct_5(var_0.c.d, vec4<f32>(arg_3.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(arg_3.x + -949f)))), _wgslsmith_f_op_f32(-var_0.a.x), arg_3.x), var_0.a, func_1().d, 800f);
    let var_2 = !vec3<bool>(any(func_3().xyy), arg_0.e >= _wgslsmith_add_u32(var_0.c.d.e & u_input.c, global1.e), false);
    var var_3 = ~u_input.a;
    return Struct_2(!select(!var_0.c.a, var_1.d.a, func_5(vec3<bool>(global1.b.x, arg_0.c, var_2.x), Struct_5(Struct_1(true, global1.b, false, false, 38581u), vec4<f32>(var_0.a.x, var_0.a.x, -650f, -810f), vec4<f32>(arg_3.x, -700f, var_0.a.x, var_1.c.x), Struct_2(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 4u)], true, false, false), var_2, 2147483647i, arg_0), var_1.c.x), vec3<i32>(var_1.d.c, 7821i, -2147483647i), Struct_2(vec4<bool>(global1.c, arg_0.d, false, false), vec3<bool>(var_0.d.x, var_2.x, false), -7202i, arg_0)).d && true), var_0.c.b, select(1i, ~0i, _wgslsmith_div_i32(var_1.d.c, 0i) >= -(12630i >> (u_input.c % 32u))), var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(659f, 728f, 580f, 2565f), vec4<f32>(-1806f, -1192f, 311f, 958f))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, 1223f, -978f, -490f)))))) * vec4<f32>(1f, 1f, 1f, 1f)), 2147483647i, func_6(func_5(select(vec3<bool>(true, true, true), !vec3<bool>(true, global3[_wgslsmith_index_u32(global1.e, 4u)], global1.c), select(vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.c, 4u)], global3[_wgslsmith_index_u32(1u, 4u)]), vec3<bool>(global3[_wgslsmith_index_u32(1u, 4u)], false, global1.b.x), false)), func_4(!vec4<bool>(global1.a, global3[_wgslsmith_index_u32(1u, 4u)], false, true), func_1(), reverseBits(vec4<i32>(u_input.b, u_input.b, u_input.b, 12175i)), func_1().d.c), global0[_wgslsmith_index_u32(~29093u, 14u)], func_1().d), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-422f, 904f)), u_input.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1114f - -773f), _wgslsmith_f_op_f32(func_2(vec4<f32>(-116f, 519f, 473f, -463f), 1u, -30440i)), func_1().e) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(600f, -979f, -950f)))))), vec3<bool>(true, false, global1.b.x));
    let var_1 = Struct_5(var_0.c.d, vec4<f32>(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-529f, 824f, global3[_wgslsmith_index_u32(global1.e, 4u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + 129f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-497f, _wgslsmith_f_op_f32(-var_0.a.x), var_0.b <= 3549i)) - _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(ceil(var_0.a.x))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1411f + _wgslsmith_div_f32(733f, var_0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-251f, var_0.a.x)) - 199f), 2569f, -1707f), var_0.c, _wgslsmith_f_op_f32(max(var_0.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a.x)) + -223f))))));
    let var_2 = vec4<i32>(0i, func_1().d.c, 12729i, _wgslsmith_sub_i32(29843i, 1i)) << (abs(~(~vec4<u32>(var_0.c.d.e, u_input.a, 4294967295u, 13854u)) << ((firstTrailingBit(vec4<u32>(var_1.d.d.e, 25824u, 15975u, 1u)) & (vec4<u32>(4294967295u, var_0.c.d.e, 4350u, 0u) << (vec4<u32>(2237u, 14123u, u_input.a, var_1.a.e) % vec4<u32>(32u)))) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_3 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(637f, var_1.b.x)), _wgslsmith_f_op_f32(floor(var_1.c.x)))) * -687f), 827f, _wgslsmith_div_f32(-1058f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -637f), var_1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.a.x, -1000f))))), -var_1.d.c, func_4(vec4<bool>(func_1().d.b.x, !(-852f > var_1.c.x), func_3().x, true), func_1(), ~_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.x, 2147483647i, var_1.d.c, -2147483647i), ~var_2), min(abs(_wgslsmith_dot_vec2_i32(var_2.xx, var_2.xw)), -u_input.b)).d, select(var_0.d, !func_1().d.b, all(select(vec2<bool>(true, global3[_wgslsmith_index_u32(41517u, 4u)]), vec2<bool>(var_0.c.b.x, true), func_4(vec4<bool>(true, var_0.d.x, global3[_wgslsmith_index_u32(4294967295u, 4u)], false), var_1, vec4<i32>(-38549i, 0i, var_2.x, 0i), var_2.x).a.b))));
    global0 = array<vec3<i32>, 14>();
    var var_4 = func_5(vec3<bool>(!func_5(select(var_3.c.a.wwz, vec3<bool>(true, false, global1.c), vec3<bool>(false, false, var_3.d.x)), var_1, vec3<i32>(4897i, 18118i, u_input.b), func_1().d).d, var_1.d.b.x, var_0.a.x <= -1000f), Struct_5(Struct_1(var_3.a.x != _wgslsmith_f_op_f32(-var_3.a.x), var_1.d.d.b, func_5(var_0.c.b, Struct_5(Struct_1(global1.c, var_1.a.b, true, false, 26701u), vec4<f32>(109f, 671f, -2088f, var_0.a.x), var_0.a, Struct_2(vec4<bool>(false, global3[_wgslsmith_index_u32(69333u, 4u)], var_0.c.a.x, var_3.d.x), var_1.d.a.yyz, var_0.b, var_1.d.d), -1091f), global0[_wgslsmith_index_u32(u_input.c, 14u)] >> (vec3<u32>(u_input.c, var_1.d.d.e, u_input.c) % vec3<u32>(32u)), var_1.d).b.x, var_0.c.d.c, u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, -1930f, var_0.a.x, 181f)) - var_1.b), _wgslsmith_f_op_vec4_f32(select(var_1.c, var_1.c, vec4<bool>(true, var_3.c.d.a, var_0.d.x, true))), Struct_2(func_4(vec4<bool>(true, var_3.d.x, false, true), var_1, firstLeadingBit(vec4<i32>(2147483647i, u_input.b, 1i, u_input.b)), var_2.x).d.a, vec3<bool>(true, true, true), -max(var_0.c.c, u_input.b), Struct_1(true, !vec2<bool>(var_0.d.x, global1.d), global1.d == var_3.d.x, any(vec2<bool>(true, true)), min(var_3.c.d.e, 71655u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.x - var_3.a.x)), _wgslsmith_div_f32(var_3.a.x, -1000f))), vec3<i32>(var_3.c.c, -12852i, 2147483647i), func_6(func_6(var_1.a, 1183f, _wgslsmith_add_i32(_wgslsmith_div_i32(var_2.x, 0i), min(var_0.c.c, 1i)), vec3<f32>(_wgslsmith_f_op_f32(var_1.c.x * -1405f), var_1.b.x, _wgslsmith_f_op_f32(-244f + 1357f))).d, var_1.e, ~abs(~(-12954i)), vec3<f32>(_wgslsmith_f_op_f32(floor(var_1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1223f, -1665f))), _wgslsmith_div_f32(var_0.a.x, -1238f)))).b;
    var var_5 = !(!(!var_1.d.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(843f - _wgslsmith_f_op_f32(step(var_1.b.x, var_1.b.x))) + var_0.a.x), ~_wgslsmith_div_u32(select(~16115u, reverseBits(4294967295u), true), ~(~63617u)));
}

