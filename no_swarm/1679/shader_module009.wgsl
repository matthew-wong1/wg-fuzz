struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23> = array<i32, 23>(-34580i, 1i, 1i, 1i, -28725i, i32(-2147483648), 8641i, 21438i, 2147483647i, -1i, i32(-2147483648), -17031i, 2147483647i, i32(-2147483648), 25907i, i32(-2147483648), i32(-2147483648), 2147483647i, 2147483647i, -3524i, 0i, 1i, 79331i);

var<private> global1: array<vec2<bool>, 7>;

var<private> global2: vec3<u32> = vec3<u32>(4294967295u, 60261u, 10408u);

var<private> global3: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec3<u32>(27804u, 0u, 4294967295u), 4294967295u, vec3<u32>(50508u, 1u, 0u), vec3<u32>(18586u, 53246u, 1u), vec2<bool>(false, true)), Struct_1(vec3<u32>(144298u, 4294967295u, 20723u), 7734u, vec3<u32>(8014u, 4294967295u, 0u), vec3<u32>(0u, 30777u, 10401u), vec2<bool>(true, false)), Struct_1(vec3<u32>(35379u, 3741u, 14211u), 4294967295u, vec3<u32>(32722u, 4294967295u, 4294967295u), vec3<u32>(0u, 1u, 1u), vec2<bool>(false, true)), Struct_1(vec3<u32>(1u, 0u, 0u), 0u, vec3<u32>(25511u, 1u, 1u), vec3<u32>(33679u, 1u, 1u), vec2<bool>(true, true)), Struct_1(vec3<u32>(60669u, 25621u, 52399u), 41475u, vec3<u32>(51202u, 12305u, 28543u), vec3<u32>(4294967295u, 42260u, 41010u), vec2<bool>(true, true)), Struct_1(vec3<u32>(38419u, 0u, 0u), 0u, vec3<u32>(122u, 0u, 3474u), vec3<u32>(94001u, 20179u, 21434u), vec2<bool>(true, false)), Struct_1(vec3<u32>(31533u, 77610u, 27196u), 4294967295u, vec3<u32>(6231u, 0u, 1u), vec3<u32>(25250u, 0u, 0u), vec2<bool>(true, true)), Struct_1(vec3<u32>(52105u, 84529u, 69205u), 1u, vec3<u32>(96013u, 1u, 82722u), vec3<u32>(1u, 21075u, 1u), vec2<bool>(false, false)), Struct_1(vec3<u32>(51956u, 13884u, 5108u), 1u, vec3<u32>(8436u, 18834u, 67276u), vec3<u32>(10076u, 16070u, 1u), vec2<bool>(false, false)), Struct_1(vec3<u32>(10587u, 33026u, 4294967295u), 12546u, vec3<u32>(26986u, 21260u, 41609u), vec3<u32>(0u, 32108u, 3982u), vec2<bool>(true, true)), Struct_1(vec3<u32>(37227u, 8552u, 1u), 0u, vec3<u32>(4731u, 32867u, 4294967295u), vec3<u32>(1u, 92782u, 45180u), vec2<bool>(false, true)), Struct_1(vec3<u32>(51698u, 18174u, 0u), 4294967295u, vec3<u32>(0u, 86559u, 19759u), vec3<u32>(49728u, 1u, 4294967295u), vec2<bool>(true, true)), Struct_1(vec3<u32>(45694u, 0u, 74528u), 81808u, vec3<u32>(0u, 2375u, 24894u), vec3<u32>(0u, 30305u, 79227u), vec2<bool>(true, false)), Struct_1(vec3<u32>(61531u, 4294967295u, 19391u), 2351u, vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 22362u, 0u), vec2<bool>(false, true)), Struct_1(vec3<u32>(31912u, 0u, 4294967295u), 958u, vec3<u32>(6947u, 9862u, 0u), vec3<u32>(145168u, 29552u, 1u), vec2<bool>(false, true)), Struct_1(vec3<u32>(48153u, 4294967295u, 112887u), 1u, vec3<u32>(4294967295u, 44540u, 4294967295u), vec3<u32>(0u, 0u, 43438u), vec2<bool>(true, true)), Struct_1(vec3<u32>(92449u, 1u, 0u), 13429u, vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(0u, 0u, 4294967295u), vec2<bool>(true, true)), Struct_1(vec3<u32>(14328u, 9436u, 1u), 73774u, vec3<u32>(3473u, 65677u, 0u), vec3<u32>(8447u, 0u, 55027u), vec2<bool>(true, false)), Struct_1(vec3<u32>(0u, 18946u, 24617u), 4294967295u, vec3<u32>(7859u, 1u, 44375u), vec3<u32>(1u, 0u, 81739u), vec2<bool>(false, true)), Struct_1(vec3<u32>(0u, 0u, 2350u), 3319u, vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 41911u, 4294967295u), vec2<bool>(true, false)), Struct_1(vec3<u32>(51038u, 8498u, 0u), 1u, vec3<u32>(4294967295u, 0u, 49579u), vec3<u32>(36623u, 1u, 0u), vec2<bool>(true, true)), Struct_1(vec3<u32>(4294967295u, 71037u, 0u), 3083u, vec3<u32>(0u, 45u, 7299u), vec3<u32>(4294967295u, 0u, 15024u), vec2<bool>(true, false)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 39940u), 0u, vec3<u32>(39737u, 67182u, 1u), vec3<u32>(15163u, 0u, 12997u), vec2<bool>(true, true)), Struct_1(vec3<u32>(18023u, 13284u, 21227u), 1u, vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(1u, 4294967295u, 1u), vec2<bool>(true, false)), Struct_1(vec3<u32>(0u, 1u, 102499u), 0u, vec3<u32>(20650u, 4500u, 0u), vec3<u32>(0u, 18209u, 48600u), vec2<bool>(false, true)), Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u), 34945u, vec3<u32>(23640u, 13480u, 0u), vec3<u32>(28914u, 50861u, 48766u), vec2<bool>(true, false)), Struct_1(vec3<u32>(28381u, 4294967295u, 18417u), 48467u, vec3<u32>(45022u, 688u, 4294967295u), vec3<u32>(4294967295u, 39140u, 22176u), vec2<bool>(false, false)), Struct_1(vec3<u32>(19837u, 24729u, 87358u), 20754u, vec3<u32>(0u, 5782u, 31463u), vec3<u32>(1u, 0u, 65803u), vec2<bool>(false, false)), Struct_1(vec3<u32>(1779u, 35715u, 4495u), 0u, vec3<u32>(0u, 4294967295u, 21612u), vec3<u32>(8608u, 65842u, 31047u), vec2<bool>(true, true)), Struct_1(vec3<u32>(0u, 4294967295u, 46234u), 35435u, vec3<u32>(33577u, 1u, 47822u), vec3<u32>(0u, 4825u, 21368u), vec2<bool>(true, false)));

var<private> global4: vec3<bool>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: bool) -> u32 {
    var var_0 = vec3<u32>(arg_0, _wgslsmith_sub_u32(firstLeadingBit(arg_0), arg_0), _wgslsmith_dot_vec4_u32(min(_wgslsmith_add_vec4_u32(vec4<u32>(global2.x, global2.x, global2.x, arg_0), ~vec4<u32>(global2.x, 3471u, arg_0, global2.x)), firstLeadingBit(vec4<u32>(global2.x, 59605u, arg_0, global2.x))), vec4<u32>(0u, ~global2.x, 0u, 17436u)));
    global3 = array<Struct_1, 30>();
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-634f, 227f, -1791f), vec3<f32>(-1534f, -2400f, -395f), false)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2536f, -1882f, -545f)))), vec3<f32>(-1960f, _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(845f + -1000f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, 932f, 1796f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(410f, -1078f, -1233f) + vec3<f32>(-568f, 1000f, -197f))))), vec4<u32>(firstLeadingBit(~var_0.x), ~abs(var_0.x), 1u, global2.x), global3[_wgslsmith_index_u32(20436u, 30u)], arg_1, Struct_1(vec3<u32>(~arg_0, global2.x >> (~var_0.x % 32u), _wgslsmith_clamp_u32(var_0.x ^ var_0.x, 1u, ~4294967295u)), 0u, ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, arg_0, var_0.x), vec3<u32>(arg_0, 4294967295u, 35054u))), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, 4294967295u) >> (global2.xx % vec2<u32>(32u)), vec2<u32>(4294967295u, global2.x)), ~_wgslsmith_add_u32(arg_0, 4294967295u), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, global2.x, arg_0, global2.x), vec4<u32>(global2.x, 0u, 58276u, 65558u)), abs(vec4<u32>(arg_0, global2.x, global2.x, arg_0)))), global1[_wgslsmith_index_u32(firstTrailingBit(global2.x) >> (~var_0.x % 32u), 7u)]));
    var var_2 = global2.x;
    return ~(~1u);
}

fn func_2() -> u32 {
    global0 = array<i32, 23>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(685f, 1575f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -819f), _wgslsmith_f_op_f32(min(135f, -1000f)))))), u_input.a, select(global2.x, func_3(countOneBits(~global2.x), true), !any(global4.yz)));
    global3 = array<Struct_1, 30>();
    global2 = ~select(vec3<u32>(global2.x, select(var_0.c, 82869u, global4.x), var_0.c) & _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.c, global2.x, global2.x), vec3<u32>(var_0.c, 2262u, 4294967295u)), vec3<u32>(global2.x, 14799u, var_0.c)), ~(vec3<u32>(var_0.c, 30885u, global2.x) << ((vec3<u32>(24849u, var_0.c, 1u) | vec3<u32>(global2.x, var_0.c, var_0.c)) % vec3<u32>(32u))), vec3<bool>(true, var_0.a >= -845f, global4.x));
    global2 = min(~_wgslsmith_clamp_vec3_u32(vec3<u32>(global2.x, 13283u, var_0.c) << (_wgslsmith_div_vec3_u32(vec3<u32>(global2.x, var_0.c, global2.x), vec3<u32>(global2.x, var_0.c, 4294967295u)) % vec3<u32>(32u)), select(vec3<u32>(var_0.c, global2.x, var_0.c), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.c, 0u, 37443u), vec3<u32>(var_0.c, 4294967295u, var_0.c)), !global4.x), _wgslsmith_div_vec3_u32(abs(vec3<u32>(60413u, 8167u, 0u)), ~vec3<u32>(49577u, var_0.c, 0u))), ~vec3<u32>(7248u, countOneBits(global2.x), 4294967295u));
    return _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~abs(~vec3<u32>(global2.x, global2.x, var_0.c)), ~vec3<u32>(_wgslsmith_mod_u32(var_0.c, global2.x), reverseBits(var_0.c), abs(0u))), firstTrailingBit(firstLeadingBit(vec3<u32>(global2.x, ~5575u, min(global2.x, var_0.c)))));
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: vec4<u32>) -> Struct_3 {
    global4 = select(!(!select(select(vec3<bool>(false, global4.x, arg_1.c.e.x), vec3<bool>(false, global4.x, false), false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, arg_1.c.e.x), global4.x), !vec3<bool>(global4.x, arg_1.c.e.x, arg_1.e.e.x))), !(!select(!vec3<bool>(false, false, global4.x), !vec3<bool>(arg_1.c.e.x, true, true), select(vec3<bool>(true, true, global4.x), vec3<bool>(arg_1.c.e.x, false, true), arg_1.c.e.x))), select(vec3<bool>(true, true, true), select(vec3<bool>(global4.x & arg_1.d, all(vec4<bool>(arg_1.e.e.x, false, arg_1.e.e.x, false)), true), select(select(vec3<bool>(true, false, false), vec3<bool>(global4.x, false, false), vec3<bool>(false, arg_1.d, true)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), select(vec3<bool>(false, global4.x, true), vec3<bool>(false, global4.x, false), arg_1.d)), vec3<bool>(true, true, true)), !(!(!vec3<bool>(arg_1.c.e.x, global4.x, global4.x)))));
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1240f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1226f, 1015f) - -1000f))), 1f));
    global3 = array<Struct_1, 30>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -412f)), any(global1[_wgslsmith_index_u32(~73270u, 7u)]))) + 1560f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_0, arg_1.a.x, false))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-598f, var_0) + _wgslsmith_f_op_f32(1326f + 347f)), arg_1.a.x))), _wgslsmith_f_op_f32(floor(899f)));
    let var_2 = 677f;
    return Struct_3(vec3<i32>(-global0[_wgslsmith_index_u32(32884u, 23u)], abs(arg_0), 23260i), _wgslsmith_div_vec4_u32(~arg_2, arg_1.b));
}

fn func_1(arg_0: u32, arg_1: u32) -> vec3<u32> {
    let var_0 = func_4(global0[_wgslsmith_index_u32(~(~min(func_2(), abs(global2.x))), 23u)], Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-938f, -161f, 755f)))), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(arg_0, global2.x, arg_0, 20118u)), abs(vec4<u32>(global2.x, 46233u, 8996u, 0u))), global3[_wgslsmith_index_u32(func_3(~min(arg_1, arg_0), true), 30u)], false, Struct_1(firstLeadingBit(~vec3<u32>(0u, 19909u, global2.x)), ~62732u, select(vec3<u32>(1u, 38103u, 1u), countOneBits(vec3<u32>(arg_0, 4294967295u, arg_0)), vec3<bool>(false, true, true)), ~select(vec3<u32>(0u, arg_0, arg_0), vec3<u32>(35371u, 96494u, global2.x), global4.x), vec2<bool>(true, false))), (~vec4<u32>(48118u, 0u, arg_1, arg_1) ^ firstLeadingBit(vec4<u32>(0u, global2.x, 1u, 33190u))) | abs(vec4<u32>(1u, global2.x, 4294967295u & arg_0, _wgslsmith_sub_u32(global2.x, 50829u))));
    global0 = array<i32, 23>();
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -269f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-420f, -911f) + 486f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1405f) * 1246f)))), ~firstLeadingBit(var_0.b), global3[_wgslsmith_index_u32(countOneBits(arg_1), 30u)], all(vec4<bool>(!global4.x | all(global4.xx), true, all(vec4<bool>(true, true, global4.x, false)) && !global4.x, all(!vec4<bool>(false, false, global4.x, global4.x)))), Struct_1(vec3<u32>(arg_1, 25707u, max(arg_0, max(1u, 18687u))), select(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(var_0.b, var_0.b), arg_0 & 60167u), ~74199u, global4.x), func_4((22600i >> (var_0.b.x % 32u)) | (i32(-1i) * -1i), Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1530f, 248f, 955f) + vec3<f32>(-1000f, -1071f, -268f)), ~vec4<u32>(var_0.b.x, 4606u, 80587u, arg_0), Struct_1(vec3<u32>(global2.x, 1u, 4294967295u), global2.x, var_0.b.zww, vec3<u32>(arg_1, 75596u, arg_1), global1[_wgslsmith_index_u32(arg_0, 7u)]), true, Struct_1(var_0.b.yyy, arg_0, var_0.b.yww, var_0.b.yzz, global1[_wgslsmith_index_u32(1u, 7u)])), select(~var_0.b, ~var_0.b, true)).b.ywx, _wgslsmith_sub_vec3_u32(var_0.b.xwy & var_0.b.yxw, vec3<u32>(17523u, global2.x, var_0.b.x)) >> (_wgslsmith_add_vec3_u32(~var_0.b.zwx, _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, arg_1, arg_0), vec3<u32>(10u, 5443u, var_0.b.x))) % vec3<u32>(32u)), vec2<bool>(true, global4.x)));
    var var_2 = var_0.a.x;
    global2 = _wgslsmith_mult_vec3_u32(var_1.e.a, ~vec3<u32>(1u, _wgslsmith_mult_u32(arg_1, 17253u), arg_1));
    return _wgslsmith_mod_vec3_u32(func_4(~abs(abs(u_input.a.x)), Struct_4(vec3<f32>(_wgslsmith_f_op_f32(select(-715f, var_1.a.x, true)), _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -535f)), _wgslsmith_add_vec4_u32(var_0.b | var_1.b, var_1.b), Struct_1(vec3<u32>(arg_0, arg_0, global2.x), _wgslsmith_clamp_u32(0u, arg_1, 27670u), vec3<u32>(1405u, global2.x, var_1.b.x), ~var_0.b.ywx, select(global4.xz, global4.yz, true)), !any(vec4<bool>(global4.x, global4.x, false, global4.x)), global3[_wgslsmith_index_u32(~1u, 30u)]), vec4<u32>(abs(40621u) | var_0.b.x, 108351u, global2.x, global2.x)).b.ywx, vec3<u32>(29196u, 21958u, _wgslsmith_dot_vec3_u32(~var_1.c.d, _wgslsmith_mult_vec3_u32(vec3<u32>(var_1.c.c.x, 15947u, 0u), vec3<u32>(58150u, global2.x, 0u))) | ~reverseBits(1u)));
}

fn func_5(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = vec3<i32>(func_4(_wgslsmith_mult_i32(~global0[_wgslsmith_index_u32(38013u, 23u)], 1i), Struct_4(vec3<f32>(591f, 515f, 347f), abs(vec4<u32>(global2.x, global2.x, 56297u, 4294967295u)), global3[_wgslsmith_index_u32(arg_0.d.x, 30u)], arg_0.b == 110577u, Struct_1(vec3<u32>(81318u, arg_0.d.x, global2.x), arg_0.d.x, vec3<u32>(36550u, arg_0.a.x, 4294967295u), arg_0.d, global4.zx)), vec4<u32>(~4294967295u, arg_0.b << (global2.x % 32u), global2.x, select(arg_0.a.x, 17355u, global4.x))).a.x >> (((~4294967295u & _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.d.x, 4294967295u, arg_0.c.x), vec4<u32>(22354u, 120487u, arg_0.d.x, 33172u))) >> (~global2.x % 32u)) % 32u), ~countOneBits(_wgslsmith_mult_i32(-2147483647i, u_input.a.x)), ~u_input.a.x);
    global3 = array<Struct_1, 30>();
    global2 = _wgslsmith_mod_vec3_u32(~arg_0.a, vec3<u32>(0u, arg_0.c.x, global2.x));
    var var_1 = vec3<bool>(true, !select(!arg_0.e.x, !any(vec2<bool>(false, global4.x)), ~global0[_wgslsmith_index_u32(38114u, 23u)] <= (var_0.x >> (arg_0.c.x % 32u))), true);
    var var_2 = Struct_2(-1405f, -vec2<i32>(var_0.x, -global0[_wgslsmith_index_u32(0u, 23u)] & -var_0.x), _wgslsmith_mult_u32(func_4(~var_0.x, Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1072f, 636f)), select(vec4<u32>(92606u, 1u, 0u, global2.x), vec4<u32>(31132u, arg_0.d.x, 1u, 34230u), vec4<bool>(arg_0.e.x, var_1.x, arg_0.e.x, false)), Struct_1(arg_0.c, 3648u, vec3<u32>(global2.x, global2.x, arg_0.d.x), vec3<u32>(3124u, 7346u, global2.x), var_1.xy), true, global3[_wgslsmith_index_u32(~1u, 30u)]), min(vec4<u32>(arg_0.d.x, global2.x, arg_0.b, 4294967295u), vec4<u32>(arg_0.c.x, arg_0.a.x, 19667u, 4294967295u) | vec4<u32>(4294967295u, 4294967295u, arg_0.b, 68293u))).b.x, ~10211u));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-358f, var_2.a, _wgslsmith_div_f32(565f, -587f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-255f, var_2.a, var_2.a) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.a, -639f, var_2.a)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(func_5(Struct_1(vec3<u32>(47425u, _wgslsmith_add_u32(44275u, global2.x), _wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, global2.x, global2.x), vec3<u32>(1u, 4294967295u, 31359u))), _wgslsmith_mod_u32(global2.x, ~1u), _wgslsmith_div_vec3_u32(vec3<u32>(global2.x, 4294967295u, global2.x), vec3<u32>(8317u, 4294967295u, global2.x)) ^ firstTrailingBit(vec3<u32>(0u, 0u, 1u)), func_1(0u, 4294967295u << (global2.x % 32u)), select(global4.yy, vec2<bool>(global4.x, global4.x), all(vec2<bool>(global4.x, true)))))), vec4<u32>(_wgslsmith_add_u32(39774u, reverseBits(_wgslsmith_mod_u32(5312u, global2.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, abs(0u), ~global2.x, 42313u << (1u % 32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global2.x, global2.x, global2.x) << (vec4<u32>(global2.x, global2.x, 87426u, global2.x) % vec4<u32>(32u)), min(vec4<u32>(0u, 1u, global2.x, 0u), vec4<u32>(global2.x, global2.x, 66607u, global2.x)))), global2.x, 59879u), Struct_1(vec3<u32>(~global2.x, 50391u, global2.x), ~firstLeadingBit(global2.x), vec3<u32>(global2.x, global2.x & 56663u, ~75812u), func_1(~(global2.x | 1u), select(global2.x, 31922u, global4.x)), global4.yz), any(select(!vec2<bool>(false, global4.x), !select(global1[_wgslsmith_index_u32(0u, 7u)], vec2<bool>(global4.x, false), vec2<bool>(global4.x, true)), global4.x)), global3[_wgslsmith_index_u32(~16359u, 30u)]);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_0.a.x)), var_0.a.x)))), reverseBits(firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -1614i), u_input.a, vec2<i32>(u_input.a.x, -6510i))) >> (~firstTrailingBit(var_0.c.c.zx) % vec2<u32>(32u))), 1u);
    var var_2 = ~var_0.b.wx << (vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(74584u, 0u, global2.x, 0u), vec4<u32>(0u, var_1.c, global2.x, global2.x)), ~4294967295u), select(global2.x, ~global2.x, any(vec3<bool>(false, true, true))) & 68223u) % vec2<u32>(32u));
    let var_3 = Struct_1(~min(var_0.c.d | vec3<u32>(var_1.c, var_2.x, var_0.e.a.x), select(var_0.b.yww, vec3<u32>(0u, var_0.b.x, 1u), select(global4.x, var_0.c.e.x, global4.x))), ~70330u, _wgslsmith_div_vec3_u32(~_wgslsmith_add_vec3_u32(var_0.c.d, ~vec3<u32>(var_1.c, 4294967295u, 19528u)), select(max(abs(vec3<u32>(global2.x, 0u, 23617u)), ~vec3<u32>(global2.x, var_0.b.x, var_1.c)), ~vec3<u32>(var_0.c.c.x, var_1.c, global2.x), _wgslsmith_f_op_f32(floor(583f)) < 1000f)), var_0.e.d, vec2<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.a.x - 1756f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-266f))), 0u <= _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 23345u, 3090u, global2.x), vec4<u32>(var_0.b.x, 21744u, var_1.c, global2.x)), vec4<u32>(var_1.c, 11868u, var_0.c.d.x, var_0.c.b))));
    global4 = vec3<bool>(var_0.e.e.x, 1i < -select(-2147483647i >> (var_2.x % 32u), global0[_wgslsmith_index_u32(func_1(1u, 4294967295u).x, 23u)], true), var_3.e.x);
    let var_4 = reverseBits(var_3.c);
    var var_5 = Struct_2(-1029f, vec2<i32>(-2147483647i, func_4(0i, Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-647f, 208f, -482f) * vec3<f32>(-1121f, 307f, var_0.a.x)), var_0.b, var_3, var_0.d, Struct_1(var_4, 57876u, var_4, vec3<u32>(65005u, 0u, var_1.c), vec2<bool>(true, var_3.e.x))), ~(~vec4<u32>(global2.x, 0u, 0u, var_2.x))).a.x), ~var_3.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(-59351i);
}

