struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: u32,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 23> = array<vec2<f32>, 23>(vec2<f32>(821f, -257f), vec2<f32>(377f, 116f), vec2<f32>(-724f, 818f), vec2<f32>(136f, -1531f), vec2<f32>(-688f, -1271f), vec2<f32>(200f, -852f), vec2<f32>(399f, 1043f), vec2<f32>(-113f, -565f), vec2<f32>(-1077f, -871f), vec2<f32>(151f, 471f), vec2<f32>(-1290f, -880f), vec2<f32>(-1236f, -155f), vec2<f32>(152f, -434f), vec2<f32>(-495f, 1283f), vec2<f32>(404f, -528f), vec2<f32>(-577f, -1221f), vec2<f32>(564f, 1122f), vec2<f32>(-643f, 192f), vec2<f32>(-1399f, -1197f), vec2<f32>(1088f, -237f), vec2<f32>(216f, 489f), vec2<f32>(-234f, 684f), vec2<f32>(-843f, 777f));

var<private> global1: Struct_1 = Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 1i), 1i, vec2<u32>(4294967295u, 4294967295u), true, 0i);

var<private> global2: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(Struct_1(vec3<i32>(10169i, 1i, 1i), 0i, vec2<u32>(20023u, 25011u), true, 1i), vec2<i32>(i32(-2147483648), 10024i), vec2<i32>(i32(-2147483648), -17739i), vec4<f32>(894f, 1000f, -570f, -379f), vec3<f32>(-1466f, 1584f, 1461f)), Struct_2(Struct_1(vec3<i32>(0i, 2147483647i, -29461i), 2147483647i, vec2<u32>(22540u, 4294967295u), true, -24737i), vec2<i32>(2147483647i, -6621i), vec2<i32>(1i, i32(-2147483648)), vec4<f32>(-371f, -1915f, -1000f, -1554f), vec3<f32>(-388f, -1061f, -368f)), Struct_2(Struct_1(vec3<i32>(-8794i, 1i, 19037i), -31251i, vec2<u32>(50948u, 0u), false, 1i), vec2<i32>(1i, 5366i), vec2<i32>(0i, 1i), vec4<f32>(663f, -1104f, 1405f, 1265f), vec3<f32>(1000f, -753f, 170f)), Struct_2(Struct_1(vec3<i32>(1649i, i32(-2147483648), i32(-2147483648)), 1i, vec2<u32>(33119u, 67659u), true, 2147483647i), vec2<i32>(38447i, 5064i), vec2<i32>(-27818i, -1i), vec4<f32>(1526f, -1455f, -443f, 695f), vec3<f32>(-1315f, -1000f, 801f)), Struct_2(Struct_1(vec3<i32>(23232i, -27779i, 2147483647i), 5549i, vec2<u32>(4294967295u, 18163u), false, 2147483647i), vec2<i32>(24697i, 1i), vec2<i32>(1i, 9647i), vec4<f32>(-1792f, -1017f, -187f, -969f), vec3<f32>(359f, -1000f, -1000f)), Struct_2(Struct_1(vec3<i32>(-70788i, 21402i, 16034i), i32(-2147483648), vec2<u32>(4294967295u, 83940u), true, 12458i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(0i, 65965i), vec4<f32>(980f, 819f, -392f, -404f), vec3<f32>(499f, -1000f, 2786f)), Struct_2(Struct_1(vec3<i32>(0i, -41539i, 54227i), 12287i, vec2<u32>(1u, 0u), false, 0i), vec2<i32>(-3648i, i32(-2147483648)), vec2<i32>(1i, -24684i), vec4<f32>(-376f, 143f, 1343f, -285f), vec3<f32>(-1083f, 988f, -480f)), Struct_2(Struct_1(vec3<i32>(1i, 5363i, -1i), i32(-2147483648), vec2<u32>(4294967295u, 1u), true, i32(-2147483648)), vec2<i32>(-13303i, 1i), vec2<i32>(-25341i, 0i), vec4<f32>(1718f, -207f, -917f, -350f), vec3<f32>(278f, -1175f, -406f)), Struct_2(Struct_1(vec3<i32>(29538i, 2147483647i, -1i), 1i, vec2<u32>(4294967295u, 30023u), true, -22185i), vec2<i32>(-31848i, -1i), vec2<i32>(17076i, 12004i), vec4<f32>(622f, -225f, 901f, 881f), vec3<f32>(-1233f, 427f, -104f)), Struct_2(Struct_1(vec3<i32>(58842i, 83387i, -1i), 9497i, vec2<u32>(0u, 97208u), true, 11737i), vec2<i32>(27966i, i32(-2147483648)), vec2<i32>(21620i, 2147483647i), vec4<f32>(251f, 146f, -2135f, 621f), vec3<f32>(200f, -522f, -1000f)));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>) -> bool {
    let var_0 = vec2<bool>(!(!select(global1.d || true, true, select(true, global1.d, false))), global1.d || any(vec4<bool>(global1.d, !global1.d, global1.d, !global1.d)));
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1194f, 656f), -294f, 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1082f, 793f, -160f) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(560f, 1053f, -114f), vec3<f32>(260f, 260f, -175f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(103f, -937f, 1244f), vec3<f32>(-1762f, -1291f, -1276f), vec3<bool>(global1.d, true, true)))), vec3<bool>(true, global1.d | var_0.x, global1.d)))));
    var var_2 = Struct_3(global2[_wgslsmith_index_u32(~min(23073u, u_input.a), 10u)], ~(reverseBits(vec4<u32>(global1.c.x, u_input.a, arg_0.x, u_input.a)) << (vec4<u32>(arg_0.x, 83027u, u_input.a, u_input.a) % vec4<u32>(32u))) & (~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 25684u, 0u, arg_0.x), vec4<u32>(21870u, arg_0.x, u_input.a, 36269u), vec4<u32>(arg_0.x, u_input.a, 4294967295u, u_input.a)) | ~select(vec4<u32>(15488u, u_input.a, global1.c.x, 92757u), vec4<u32>(0u, 1u, 4294967295u, u_input.a), vec4<bool>(false, global1.d, var_0.x, global1.d))), u_input.a, var_1.x, var_1.x);
    var_2 = Struct_3(Struct_2(var_2.a.a, -abs(var_2.a.a.a.xy >> (vec2<u32>(0u, global1.c.x) % vec2<u32>(32u))), u_input.e.wy, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-960f, _wgslsmith_div_f32(var_2.a.d.x, var_2.e), _wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(sign(var_2.e)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_2.a.e))))), vec4<u32>(firstTrailingBit(u_input.a) ^ (firstLeadingBit(arg_0.x) << (_wgslsmith_div_u32(60355u, 4294967295u) % 32u)), ~(global1.c.x | ~8851u), arg_0.x, firstLeadingBit(~arg_0.x)), u_input.a, _wgslsmith_f_op_f32(sign(var_1.x)), 1012f);
    let var_3 = var_2.a.a;
    return !(var_2.a.a.d & var_2.a.a.d) && all(vec4<bool>(select(var_3.d, var_3.d, var_2.a.a.d) & true, !var_2.a.a.d, all(vec4<bool>(global1.d, false, false, var_0.x)), !var_2.a.a.d));
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    var var_0 = func_3(~vec3<u32>(u_input.a, select(firstLeadingBit(global1.c.x), ~4294967295u, global1.d), _wgslsmith_clamp_u32(~13459u, min(22575u, u_input.a), 0u)));
    var var_1 = -2147483647i;
    var_1 = 28899i;
    var_0 = global1.d;
    global2 = array<Struct_2, 10>();
    return Struct_2(Struct_1(~vec3<i32>(global1.b, u_input.c & -2147483647i, i32(-1i) * -7738i), ~global1.b, global1.c, true && any(vec3<bool>(true, false, true)), i32(-1i) * -1i), _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b.yz, firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(26382i, u_input.c), vec2<i32>(global1.a.x, -26195i)))), global1.a.xz), u_input.b.yz, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(547f, -178f, 491f, -579f), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 1000f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.x, -317f, -526f, arg_0.x)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x, _wgslsmith_f_op_f32(exp2(arg_0.x)), 382f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 610f))), true)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(195f - 1016f) - _wgslsmith_f_op_f32(floor(arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * 1000f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1336f, arg_0.x, -1555f))), vec3<f32>(1903f, _wgslsmith_f_op_f32(-arg_0.x), -421f))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(func_2(vec3<f32>(arg_0.e.x, -1084f, arg_0.d.x)).e.x, 528f, _wgslsmith_f_op_f32(-arg_0.e.x), _wgslsmith_f_op_f32(-arg_0.d.x)))), arg_0.d, false)) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(arg_0.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(962f, arg_0.e.x, arg_0.e.x, arg_0.e.x) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(168f, arg_0.e.x, arg_0.e.x, arg_0.d.x)))), true)))));
    var var_1 = Struct_4(select(vec3<bool>(any(vec3<bool>(true, global1.d, false)), true, arg_1.x), arg_1, !select(select(vec3<bool>(true, global1.d, arg_1.x), vec3<bool>(false, global1.d, arg_0.a.d), arg_1.x), !vec3<bool>(true, arg_0.a.d, true), select(vec3<bool>(global1.d, true, arg_1.x), arg_1, arg_0.a.d))), Struct_1(firstLeadingBit(-global1.a), ~abs(global1.b), ~select(arg_0.a.c, ~global1.c, all(vec3<bool>(true, true, arg_0.a.d))), true | any(arg_1), global1.e), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1751f, var_0.x) + var_0.wwx) + _wgslsmith_f_op_vec3_f32(arg_0.d.xxz - _wgslsmith_f_op_vec3_f32(trunc(var_0.zxy))))), arg_0);
    var var_2 = vec3<u32>(select(1u, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(18847u, arg_0.a.c.x, var_1.d.a.c.x)), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.c.x, 1u, u_input.a), vec3<u32>(u_input.a, 36839u, arg_0.a.c.x)), vec3<u32>(global1.c.x, 0u, global1.c.x))), arg_0.a.d), arg_0.a.c.x, ~_wgslsmith_mod_u32((1u ^ var_1.c.a.c.x) << ((var_1.b.c.x << (arg_0.a.c.x % 32u)) % 32u), _wgslsmith_mult_u32(1u, ~25164u)));
    let var_3 = Struct_4(!var_1.a, arg_0.a, arg_0, arg_0);
    let var_4 = var_3.d.a;
    return Struct_2(Struct_1(vec3<i32>(-1i | _wgslsmith_add_i32(arg_0.b.x, -1i), 1i, _wgslsmith_div_i32(-var_1.c.c.x, _wgslsmith_dot_vec2_i32(u_input.e.ww, arg_0.a.a.yx))), var_3.c.a.e, abs(vec2<u32>(var_2.x ^ var_2.x, 57434u)), false, abs(1i << (_wgslsmith_mod_u32(4294967295u, var_3.b.c.x) % 32u))), vec2<i32>(6158i, min(~_wgslsmith_clamp_i32(7975i, -10738i, u_input.e.x), global1.b)), vec2<i32>(abs(0i), u_input.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.d.e.x, 2041f, arg_0.e.x, var_3.d.d.x), vec4<f32>(var_0.x, 1000f, var_0.x, arg_0.e.x)))) * _wgslsmith_div_vec4_f32(vec4<f32>(var_3.c.e.x, _wgslsmith_f_op_f32(-898f + var_1.c.d.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(select(-1447f, -501f, true))), var_1.d.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.c.e - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(138f, -607f, -1636f))))));
}

fn func_1(arg_0: bool) -> Struct_3 {
    var var_0 = (~2147483647i >> (u_input.a % 32u)) <= u_input.c;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1657f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-498f - 704f), 719f)), -1000f)));
    let var_2 = func_4(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(868f + -832f), _wgslsmith_f_op_f32(f32(-1f) * -681f), _wgslsmith_f_op_f32(max(523f, -277f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(781f, -189f, 369f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-908f, 1510f, 179f), vec3<f32>(1066f, -179f, -956f), vec3<bool>(true, arg_0, global1.d))), select(vec3<bool>(global1.d, true, true), vec3<bool>(arg_0, arg_0, true), global1.d))))), !select(vec3<bool>(false, true, all(vec3<bool>(arg_0, true, true))), select(vec3<bool>(true, global1.d, arg_0), vec3<bool>(arg_0, arg_0, true), true), arg_0));
    let var_3 = var_2.d.x;
    let var_4 = Struct_4(vec3<bool>(false, select(false, any(vec2<bool>(global1.d, global1.d)), var_2.a.d), true), var_2.a, func_2(_wgslsmith_f_op_vec3_f32(-var_2.d.zxz)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a.c.x, u_input.a, _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a, 4294967295u), ~var_2.a.c.x), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(54503u, var_2.a.c.x, 1u), vec3<u32>(u_input.a, global1.c.x, 1u)), select(75778u, var_2.a.c.x, arg_0))), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(var_2.a.c.x, 4294967295u, global1.c.x, u_input.a), vec4<u32>(0u, global1.c.x, u_input.a, 4294967295u)))), 10u)]);
    return Struct_3(Struct_2(Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(global1.a, vec3<i32>(u_input.c, var_2.c.x, global1.e)), abs(vec3<i32>(-55523i, u_input.c, -62005i))), _wgslsmith_add_i32(global1.b, ~2147483647i), ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_2.a.c.x, 38372u), vec2<u32>(global1.c.x, 1u)), all(select(var_4.a.zy, vec2<bool>(arg_0, false), true)), ~u_input.d.x), -func_2(var_4.d.e).a.a.yy, var_4.c.c >> (~var_4.b.c % vec2<u32>(32u)), var_2.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(func_2(vec3<f32>(var_3, 269f, var_3)).d.yyx)) * vec3<f32>(_wgslsmith_f_op_f32(round(-1067f)), func_4(Struct_2(Struct_1(vec3<i32>(var_2.b.x, 2147483647i, var_2.a.a.x), global1.e, var_4.d.a.c, false, 31712i), global1.a.xx, global1.a.zz, var_2.d, var_2.e), var_4.a).e.x, var_2.e.x))), _wgslsmith_add_vec4_u32(vec4<u32>(reverseBits(var_2.a.c.x), var_2.a.c.x >> (var_4.d.a.c.x % 32u), var_2.a.c.x | var_4.d.a.c.x, 59698u) >> (vec4<u32>(25419u, 1u, 10370u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(4294967295u, _wgslsmith_clamp_u32(u_input.a, ~u_input.a, ~26836u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, global1.c.x), vec3<u32>(24145u, var_2.a.c.x, 4294967295u)), 120761u)), _wgslsmith_add_u32(min(4294967295u, ~(~77528u)), 0u), var_3, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.d.e.x) * -447f)), _wgslsmith_f_op_f32(-2176f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1453f)), _wgslsmith_f_op_f32(2174f + var_4.d.e.x), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(1u != global1.c.x);
    var var_1 = func_4(func_2(var_0.a.e), select(!(!(!vec3<bool>(true, global1.d, var_0.a.a.d))), select(select(vec3<bool>(var_0.a.a.d, var_0.a.a.d, var_0.a.a.d), !vec3<bool>(true, var_0.a.a.d, var_0.a.a.d), !vec3<bool>(global1.d, true, global1.d)), vec3<bool>(true, true, !global1.d), select(!vec3<bool>(var_0.a.a.d, false, var_0.a.a.d), vec3<bool>(true, false, global1.d), !vec3<bool>(var_0.a.a.d, global1.d, var_0.a.a.d))), func_4(Struct_2(Struct_1(var_0.a.a.a, -2147483647i, vec2<u32>(25061u, var_0.c), false, var_0.a.b.x), _wgslsmith_add_vec2_i32(global1.a.yz, var_0.a.a.a.xx), _wgslsmith_clamp_vec2_i32(vec2<i32>(4394i, 17488i), vec2<i32>(global1.a.x, global1.e), var_0.a.c), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(460f, var_0.a.e.x, 855f, -1213f))), vec3<f32>(-580f, 513f, var_0.d)), vec3<bool>(true, global1.d & true, !var_0.a.a.d)).a.d)).d.x;
    global1 = Struct_1(vec3<i32>(-var_0.a.c.x, ~(~var_0.a.c.x), ~(-28913i)), 29659i << (_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a, global1.c.x << (global1.c.x % 32u)), ~45709u) % 32u), vec2<u32>(var_0.b.x, 1u) & ((vec2<u32>(u_input.a, var_0.c) >> (abs(vec2<u32>(global1.c.x, 1u)) % vec2<u32>(32u))) >> (vec2<u32>(_wgslsmith_dot_vec4_u32(var_0.b, var_0.b), select(global1.c.x, 21164u, false)) % vec2<u32>(32u))), true, ~(~_wgslsmith_add_i32(-14990i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1143i, u_input.e.x), vec3<i32>(-24049i, var_0.a.b.x, -23686i)))));
    let var_2 = true;
    let var_3 = global1.a.x;
    let var_4 = u_input.b;
    let var_5 = _wgslsmith_add_vec3_u32(~(~min(select(var_0.b.wwy, var_0.b.yzz, vec3<bool>(false, false, true)), firstTrailingBit(var_0.b.zxz))), var_0.b.xxx);
    var var_6 = reverseBits(-vec2<i32>(func_4(Struct_2(var_0.a.a, vec2<i32>(-29862i, -55549i), global1.a.yz, vec4<f32>(204f, var_0.e, -181f, var_0.a.d.x), vec3<f32>(var_0.e, -426f, var_0.d)), select(vec3<bool>(global1.d, global1.d, global1.d), vec3<bool>(false, var_0.a.a.d, false), global1.d)).a.b, 0i));
    let var_7 = global1.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, 19592u, var_5.x), 4294967295u), u_input.d.yx, reverseBits(select(reverseBits(~vec4<i32>(global1.b, var_4.x, u_input.b.x, 2147483647i)), -vec4<i32>(var_0.a.c.x, global1.a.x, var_0.a.b.x, var_4.x), true)), ~vec3<u32>(~48375u, _wgslsmith_mult_u32(u_input.a, 4294967295u) | ~0u, ~_wgslsmith_mod_u32(var_5.x, global1.c.x)));
}

