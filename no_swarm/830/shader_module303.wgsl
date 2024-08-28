struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec4<u32>(0u, 4294967295u, 33542u, 4294967295u), false, 1i, vec2<i32>(28648i, 1i)));

var<private> global1: array<Struct_4, 30> = array<Struct_4, 30>(Struct_4(4294967295u, Struct_3(-429f, Struct_1(vec4<u32>(30919u, 7822u, 34359u, 4294967295u), false, 0i, vec2<i32>(i32(-2147483648), i32(-2147483648)))), vec4<u32>(39157u, 0u, 0u, 46819u), vec3<u32>(1u, 1u, 4294967295u)), Struct_4(132426u, Struct_3(-798f, Struct_1(vec4<u32>(0u, 4294967295u, 25588u, 48758u), false, -31019i, vec2<i32>(27944i, 6704i))), vec4<u32>(31182u, 27515u, 39173u, 1u), vec3<u32>(23036u, 17568u, 18408u)), Struct_4(4294967295u, Struct_3(-1000f, Struct_1(vec4<u32>(42153u, 0u, 0u, 4294967295u), false, i32(-2147483648), vec2<i32>(321i, 18367i))), vec4<u32>(62478u, 34272u, 0u, 11281u), vec3<u32>(8266u, 4294967295u, 36580u)), Struct_4(1u, Struct_3(822f, Struct_1(vec4<u32>(72247u, 4294967295u, 286u, 13573u), false, -10090i, vec2<i32>(-8775i, 65769i))), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), vec3<u32>(0u, 23934u, 1u)), Struct_4(4294967295u, Struct_3(-615f, Struct_1(vec4<u32>(76915u, 4294967295u, 0u, 4294967295u), true, -46673i, vec2<i32>(-7779i, 1i))), vec4<u32>(232u, 0u, 1u, 73083u), vec3<u32>(9657u, 52052u, 29101u)), Struct_4(4294967295u, Struct_3(381f, Struct_1(vec4<u32>(13927u, 4294967295u, 9118u, 14078u), true, -26101i, vec2<i32>(0i, 12367i))), vec4<u32>(0u, 1u, 29989u, 45252u), vec3<u32>(0u, 31100u, 75347u)), Struct_4(0u, Struct_3(-1812f, Struct_1(vec4<u32>(33897u, 0u, 42283u, 14361u), false, -1i, vec2<i32>(-4551i, i32(-2147483648)))), vec4<u32>(1u, 78197u, 0u, 4294967295u), vec3<u32>(1u, 73450u, 39135u)), Struct_4(4294967295u, Struct_3(-1571f, Struct_1(vec4<u32>(8531u, 339u, 31186u, 16380u), false, i32(-2147483648), vec2<i32>(0i, 2147483647i))), vec4<u32>(1u, 51675u, 53202u, 4294967295u), vec3<u32>(4294967295u, 1u, 0u)), Struct_4(0u, Struct_3(1000f, Struct_1(vec4<u32>(36862u, 54513u, 993u, 60619u), false, -1i, vec2<i32>(-30339i, -1i))), vec4<u32>(29221u, 1u, 1u, 51805u), vec3<u32>(4294967295u, 0u, 100284u)), Struct_4(1u, Struct_3(604f, Struct_1(vec4<u32>(31998u, 47248u, 1u, 77095u), false, 1i, vec2<i32>(0i, 19152i))), vec4<u32>(24314u, 0u, 0u, 1u), vec3<u32>(98127u, 86464u, 0u)), Struct_4(24532u, Struct_3(1697f, Struct_1(vec4<u32>(71386u, 1u, 1u, 4294967295u), false, 1i, vec2<i32>(0i, 24889i))), vec4<u32>(65073u, 10970u, 1u, 26730u), vec3<u32>(4294967295u, 79u, 1u)), Struct_4(1u, Struct_3(921f, Struct_1(vec4<u32>(68915u, 20622u, 4294967295u, 4294967295u), true, 8705i, vec2<i32>(2147483647i, 0i))), vec4<u32>(4294967295u, 1u, 13357u, 4294967295u), vec3<u32>(81540u, 1u, 17957u)), Struct_4(77860u, Struct_3(-1428f, Struct_1(vec4<u32>(10214u, 4294967295u, 0u, 4294967295u), false, 2147483647i, vec2<i32>(-10121i, 14168i))), vec4<u32>(3436u, 51978u, 147344u, 52550u), vec3<u32>(0u, 1u, 4294967295u)), Struct_4(2702u, Struct_3(-599f, Struct_1(vec4<u32>(1u, 55108u, 43566u, 58889u), false, 14880i, vec2<i32>(40032i, i32(-2147483648)))), vec4<u32>(0u, 57391u, 11436u, 4294967295u), vec3<u32>(18591u, 6287u, 4294967295u)), Struct_4(354u, Struct_3(854f, Struct_1(vec4<u32>(15020u, 40370u, 0u, 26146u), false, 10391i, vec2<i32>(2147483647i, 49222i))), vec4<u32>(0u, 22799u, 1u, 1u), vec3<u32>(1u, 1u, 15020u)), Struct_4(4294967295u, Struct_3(-1600f, Struct_1(vec4<u32>(4294967295u, 105581u, 4100u, 26322u), true, 2147483647i, vec2<i32>(i32(-2147483648), -27589i))), vec4<u32>(2338u, 1u, 10488u, 1u), vec3<u32>(0u, 1u, 12962u)), Struct_4(13826u, Struct_3(1000f, Struct_1(vec4<u32>(0u, 1u, 15154u, 1u), true, -7537i, vec2<i32>(-1i, i32(-2147483648)))), vec4<u32>(4294967295u, 13730u, 28650u, 45997u), vec3<u32>(16744u, 0u, 1u)), Struct_4(1u, Struct_3(-1000f, Struct_1(vec4<u32>(0u, 6252u, 0u, 1u), false, 0i, vec2<i32>(2147483647i, -3303i))), vec4<u32>(0u, 37701u, 66322u, 4294967295u), vec3<u32>(12107u, 4294967295u, 27437u)), Struct_4(82025u, Struct_3(418f, Struct_1(vec4<u32>(1u, 0u, 37775u, 49635u), false, 41181i, vec2<i32>(-29211i, 23177i))), vec4<u32>(22597u, 458u, 1u, 15402u), vec3<u32>(1u, 4294967295u, 0u)), Struct_4(1u, Struct_3(870f, Struct_1(vec4<u32>(34365u, 1u, 35652u, 1u), false, i32(-2147483648), vec2<i32>(-19757i, 5802i))), vec4<u32>(21486u, 0u, 38579u, 1158u), vec3<u32>(0u, 1u, 65955u)), Struct_4(29116u, Struct_3(-198f, Struct_1(vec4<u32>(67691u, 4294967295u, 0u, 11596u), false, 5473i, vec2<i32>(77638i, 2147483647i))), vec4<u32>(1u, 38379u, 5685u, 0u), vec3<u32>(11610u, 4294967295u, 12855u)), Struct_4(114862u, Struct_3(158f, Struct_1(vec4<u32>(9631u, 24078u, 4294967295u, 41026u), true, 1i, vec2<i32>(1i, 1i))), vec4<u32>(0u, 120608u, 67311u, 1u), vec3<u32>(1u, 14436u, 1u)), Struct_4(65419u, Struct_3(1509f, Struct_1(vec4<u32>(15024u, 1u, 144336u, 0u), false, -25168i, vec2<i32>(i32(-2147483648), -17587i))), vec4<u32>(88632u, 4294967295u, 33395u, 0u), vec3<u32>(4294967295u, 57525u, 1u)), Struct_4(0u, Struct_3(1589f, Struct_1(vec4<u32>(75907u, 24931u, 41403u, 1u), false, -1i, vec2<i32>(0i, -13149i))), vec4<u32>(20497u, 1u, 66642u, 1u), vec3<u32>(4294967295u, 42529u, 0u)), Struct_4(1u, Struct_3(-659f, Struct_1(vec4<u32>(4294967295u, 953u, 1u, 5089u), true, -1i, vec2<i32>(18832i, -1i))), vec4<u32>(0u, 2326u, 70792u, 4294967295u), vec3<u32>(1u, 0u, 4294967295u)), Struct_4(1u, Struct_3(-1000f, Struct_1(vec4<u32>(44403u, 0u, 63497u, 44339u), true, 2147483647i, vec2<i32>(i32(-2147483648), 0i))), vec4<u32>(49635u, 1u, 4294967295u, 1u), vec3<u32>(4294967295u, 0u, 20116u)), Struct_4(0u, Struct_3(855f, Struct_1(vec4<u32>(1u, 66729u, 6104u, 0u), true, i32(-2147483648), vec2<i32>(11229i, i32(-2147483648)))), vec4<u32>(0u, 23856u, 4294967295u, 84478u), vec3<u32>(50983u, 4294967295u, 6994u)), Struct_4(1u, Struct_3(450f, Struct_1(vec4<u32>(0u, 81092u, 4294967295u, 73220u), false, 1i, vec2<i32>(-32143i, -4256i))), vec4<u32>(4294967295u, 40586u, 0u, 0u), vec3<u32>(0u, 57616u, 6090u)), Struct_4(89871u, Struct_3(1652f, Struct_1(vec4<u32>(1u, 1u, 1u, 18408u), false, 2147483647i, vec2<i32>(2147483647i, 0i))), vec4<u32>(0u, 32435u, 0u, 1u), vec3<u32>(7845u, 4294967295u, 17913u)), Struct_4(81363u, Struct_3(-1000f, Struct_1(vec4<u32>(1u, 29296u, 0u, 1u), true, 6718i, vec2<i32>(1i, i32(-2147483648)))), vec4<u32>(40735u, 83436u, 32352u, 80458u), vec3<u32>(43578u, 34559u, 1u)));

var<private> global2: vec4<u32>;

var<private> global3: vec3<u32>;

var<private> global4: vec2<f32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1636f, 1000f, global4.x, -1000f) - vec4<f32>(1000f, global4.x, 1225f, -811f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1355f, global4.x, 727f, global4.x), vec4<f32>(-1158f, 955f, -394f, global4.x))))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, global4.x, global4.x, 415f))))));
    let var_1 = Struct_4(_wgslsmith_div_u32(_wgslsmith_mult_u32(firstTrailingBit(global2.x), global3.x) ^ 1u, _wgslsmith_mod_u32(_wgslsmith_add_u32(61651u, u_input.a) | ~global2.x, 1751u)), Struct_3(var_0.x, global0[_wgslsmith_index_u32(~max(_wgslsmith_mult_u32(u_input.a, global2.x), 5297u), 1u)]), reverseBits(~(~vec4<u32>(global3.x, 4294967295u, 8714u, global3.x) >> (~vec4<u32>(4294967295u, global3.x, global3.x, 0u) % vec4<u32>(32u)))), _wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(_wgslsmith_mod_u32(0u, u_input.a), global3.x >> (global2.x % 32u), global3.x)), vec3<u32>(firstLeadingBit(1u), global3.x ^ global3.x, 0u)));
    global3 = var_1.b.b.a.www;
    return 0u;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_3, arg_2: u32, arg_3: vec4<bool>) -> Struct_4 {
    var var_0 = !vec3<bool>(true, true, !(false == arg_0.b.b.b) && arg_3.x);
    global2 = abs(max(abs(vec4<u32>(42043u, 4294967295u, 51332u, global3.x)), vec4<u32>(func_3(), ~arg_1.b.a.x, ~global3.x, 28526u))) | ~_wgslsmith_div_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, arg_0.c.x, arg_1.b.a.x, 51164u), arg_0.b.b.a), vec4<u32>(_wgslsmith_div_u32(arg_0.b.b.a.x, arg_2), ~23770u, ~0u, ~arg_1.b.a.x));
    let var_1 = ~u_input.a;
    var var_2 = ~(~_wgslsmith_sub_vec3_i32(~(~vec3<i32>(arg_0.b.b.c, arg_1.b.d.x, 2147483647i)), -countOneBits(vec3<i32>(-14686i, arg_0.b.b.d.x, 2147483647i))));
    var var_3 = var_2.x;
    return arg_0;
}

fn func_4(arg_0: Struct_4) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.a)));
    global2 = _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(max(~_wgslsmith_div_vec4_u32(vec4<u32>(25960u, u_input.a, global3.x, global3.x), arg_0.b.b.a), ~max(arg_0.b.b.a, arg_0.c)), vec4<u32>(91105u, select(0u, global2.x, true), _wgslsmith_mod_u32(global2.x << (global3.x % 32u), 0u), ~arg_0.d.x)), vec4<u32>(~(~0u) ^ ~arg_0.a, min(0u, abs(_wgslsmith_add_u32(arg_0.a, 1u))), ~_wgslsmith_clamp_u32(60459u << (global3.x % 32u), 1u, _wgslsmith_sub_u32(global3.x, 41171u)), select(_wgslsmith_sub_u32(~global3.x, _wgslsmith_dot_vec4_u32(arg_0.b.b.a, vec4<u32>(1u, u_input.a, global3.x, global3.x))), global2.x, arg_0.b.b.b)));
    global4 = vec2<f32>(809f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    global1 = array<Struct_4, 30>();
    global3 = ~(~reverseBits(arg_0.b.b.a.wyw) << (~global2.zyx % vec3<u32>(32u))) << (min(~(~global2.xzy), ~min(firstLeadingBit(vec3<u32>(global2.x, 22167u, u_input.a)), ~vec3<u32>(1u, 8574u, global3.x))) % vec3<u32>(32u));
    return !(!vec3<bool>(!arg_0.b.b.b, all(vec3<bool>(arg_0.b.b.b, true, true)), true));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: vec2<f32>, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = Struct_3(global4.x, Struct_1(arg_1, !(1u != global3.x), arg_3.c.d.x, arg_3.b.d));
    return !(!select(func_4(func_2(Struct_4(88241u, var_0, var_0.b.a, vec3<u32>(var_0.b.a.x, 4294967295u, u_input.a)), Struct_3(-1763f, Struct_1(arg_3.b.a, var_0.b.b, arg_3.b.c, vec2<i32>(var_0.b.d.x, var_0.b.d.x))), 726u, vec4<bool>(false, arg_3.b.b, false, true))), !vec3<bool>(false, var_0.b.b, arg_3.b.b), var_0.b.b));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~vec4<u32>(global3.x, select(min(1u, u_input.a), select(global2.x, global2.x, any(vec4<bool>(false, false, false, true))), any(vec4<bool>(true, true, true, true))), 19426u << (u_input.a % 32u), 0u);
    let var_0 = select(select(func_1(vec3<f32>(255f, -1611f, _wgslsmith_f_op_f32(-global4.x)), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 11232u, 48826u), select(vec4<u32>(17356u, 2335u, u_input.a, 7958u), vec4<u32>(4294967295u, 0u, 20858u, 0u), false)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, global4.x) - vec2<f32>(-245f, 738f)), vec2<f32>(global4.x, global4.x)), Struct_2(global4.x, global0[_wgslsmith_index_u32(~0u, 1u)], Struct_1(vec4<u32>(global2.x, u_input.a, 1u, 1u), false, 6690i, vec2<i32>(-1i, -10717i)), 1i)), !(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), func_4(func_2(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 20134u), 30u)], Struct_3(1000f, Struct_1(vec4<u32>(global3.x, global3.x, 34699u, 0u), false, 7430i, vec2<i32>(47325i, -30494i))), ~global3.x, vec4<bool>(false, false, true, true)))), select(select(vec3<bool>(-976f == global4.x, func_1(vec3<f32>(global4.x, -250f, global4.x), vec4<u32>(u_input.a, 1u, global3.x, global2.x), vec2<f32>(841f, global4.x), Struct_2(428f, global0[_wgslsmith_index_u32(global2.x, 1u)], Struct_1(vec4<u32>(4294967295u, 9699u, 1u, u_input.a), false, -25884i, vec2<i32>(3497i, -1i)), -1i)).x, func_2(global1[_wgslsmith_index_u32(19194u, 30u)], Struct_3(-1521f, Struct_1(vec4<u32>(16622u, 1u, global3.x, 10923u), true, -43042i, vec2<i32>(2147483647i, -1i))), global3.x, vec4<bool>(true, false, false, true)).b.b.b), vec3<bool>(false, true, true), vec3<bool>(func_4(Struct_4(0u, Struct_3(689f, Struct_1(vec4<u32>(80041u, u_input.a, 0u, 1u), false, -17155i, vec2<i32>(-31788i, 14507i))), vec4<u32>(1u, 1u, u_input.a, global2.x), global2.yyx)).x, true, select(true, true, true))), select(vec3<bool>(17876u != global2.x, false, true), select(vec3<bool>(false, false, false), func_1(vec3<f32>(1743f, global4.x, -261f), vec4<u32>(global2.x, global2.x, 2663u, 44296u), vec2<f32>(1425f, 1000f), Struct_2(-632f, Struct_1(vec4<u32>(global2.x, 54952u, 0u, u_input.a), false, 1i, vec2<i32>(1i, -51938i)), global0[_wgslsmith_index_u32(0u, 1u)], 1i)), func_1(vec3<f32>(global4.x, global4.x, 979f), vec4<u32>(34866u, global3.x, global3.x, global3.x), vec2<f32>(321f, global4.x), Struct_2(729f, global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(global3.x, 1u)], -10299i))), func_2(func_2(Struct_4(1u, Struct_3(1058f, global0[_wgslsmith_index_u32(global3.x, 1u)]), vec4<u32>(22037u, u_input.a, 4294967295u, u_input.a), vec3<u32>(global3.x, global3.x, 98568u)), Struct_3(global4.x, global0[_wgslsmith_index_u32(global2.x, 1u)]), u_input.a, vec4<bool>(true, true, true, true)), func_2(Struct_4(u_input.a, Struct_3(157f, Struct_1(vec4<u32>(1u, global2.x, 4294967295u, global2.x), true, -2147483647i, vec2<i32>(-2147483647i, -11214i))), vec4<u32>(u_input.a, global3.x, u_input.a, 55256u), vec3<u32>(4294967295u, 0u, 112519u)), Struct_3(-463f, global0[_wgslsmith_index_u32(u_input.a, 1u)]), global2.x, vec4<bool>(true, true, false, true)).b, ~global3.x, vec4<bool>(false, false, false, false)).b.b.b), !(!func_1(vec3<f32>(1000f, 2075f, 571f), vec4<u32>(1u, 4294967295u, 79505u, 51459u), vec2<f32>(global4.x, global4.x), Struct_2(global4.x, Struct_1(vec4<u32>(global3.x, u_input.a, 4294967295u, 1421u), true, -1i, vec2<i32>(-1i, -13569i)), global0[_wgslsmith_index_u32(u_input.a, 1u)], 42156i)))), vec3<bool>(true, true, true));
    let var_1 = Struct_2(-443f, func_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~reverseBits(vec3<u32>(u_input.a, u_input.a, global2.x)), select(_wgslsmith_mult_vec3_u32(global2.yxx, vec3<u32>(global3.x, 1u, 0u)), vec3<u32>(global3.x, global2.x, global3.x), true)), 30u)], Struct_3(global4.x, func_2(Struct_4(global2.x, Struct_3(global4.x, Struct_1(vec4<u32>(40540u, global2.x, global3.x, global2.x), var_0.x, -30832i, vec2<i32>(-1i, -39764i))), vec4<u32>(62649u, global3.x, u_input.a, 1u), global2.xww), func_2(Struct_4(1969u, Struct_3(-1980f, Struct_1(vec4<u32>(55066u, u_input.a, 11233u, 4294967295u), var_0.x, 2147483647i, vec2<i32>(1i, -2147483647i))), vec4<u32>(global2.x, u_input.a, global3.x, u_input.a), vec3<u32>(1u, 73759u, 4294967295u)), Struct_3(1631f, global0[_wgslsmith_index_u32(global3.x, 1u)]), u_input.a, vec4<bool>(true, true, var_0.x, true)).b, u_input.a, vec4<bool>(true, false, true, true)).b.b), ~_wgslsmith_div_u32(u_input.a, 31101u) >> (global2.x % 32u), select(select(vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(false, true, true, var_0.x), !vec4<bool>(var_0.x, var_0.x, false, var_0.x)), select(select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(true, var_0.x, false, false), true), select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(var_0.x, false, false, var_0.x)), all(vec4<bool>(false, var_0.x, var_0.x, false))), select(select(vec4<bool>(false, true, var_0.x, true), vec4<bool>(var_0.x, true, var_0.x, false), true), !vec4<bool>(var_0.x, false, var_0.x, var_0.x), !vec4<bool>(var_0.x, true, false, var_0.x)))).b.b, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2.x, ~abs(~u_input.a), _wgslsmith_mult_u32(~select(0u, u_input.a, var_0.x), global3.x)), 1u)], 2147483647i);
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1130f, global4.x), vec2<f32>(_wgslsmith_f_op_f32(max(var_1.a, _wgslsmith_f_op_f32(step(358f, global4.x)))), _wgslsmith_f_op_f32(-var_1.a)), func_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.a, var_1.a, -647f))), abs(func_2(global1[_wgslsmith_index_u32(global2.x, 30u)], Struct_3(global4.x, Struct_1(var_1.b.a, true, var_1.d, vec2<i32>(var_1.d, 3157i))), 1u, vec4<bool>(false, false, true, var_1.c.b)).b.b.a), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1157f, -1269f), vec2<f32>(-1916f, var_1.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-552f, -462f)), vec2<bool>(true, true))), Struct_2(var_1.a, Struct_1(vec4<u32>(u_input.a, var_1.c.a.x, 4294967295u, u_input.a), false, 0i, var_1.b.d), func_2(global1[_wgslsmith_index_u32(global3.x, 30u)], Struct_3(var_1.a, var_1.c), 1u, vec4<bool>(var_0.x, false, var_0.x, false)).b.b, -13365i)).zy))));
    global2 = vec4<u32>(~(26299u >> (~firstTrailingBit(14848u) % 32u)), firstLeadingBit(global3.x), abs(40515u), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(global3.x);
}

