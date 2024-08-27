struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(false, vec4<u32>(0u, 1u, 3567u, 1u), false), Struct_1(true, vec4<u32>(41132u, 4294967295u, 39145u, 6327u), false), Struct_1(false, vec4<u32>(36580u, 0u, 0u, 28439u), true), Struct_1(false, vec4<u32>(40160u, 4294967295u, 5502u, 1u), true), Struct_1(true, vec4<u32>(1u, 21741u, 31505u, 64125u), true), Struct_1(false, vec4<u32>(4294967295u, 1u, 1u, 25879u), true), Struct_1(true, vec4<u32>(0u, 24339u, 49162u, 4294967295u), true), Struct_1(false, vec4<u32>(1u, 0u, 1u, 0u), false), Struct_1(true, vec4<u32>(7454u, 26756u, 41636u, 32121u), false), Struct_1(false, vec4<u32>(4294967295u, 44523u, 26061u, 4294967295u), true), Struct_1(true, vec4<u32>(0u, 4294967295u, 18912u, 1u), true), Struct_1(true, vec4<u32>(1u, 6740u, 33193u, 1u), false), Struct_1(true, vec4<u32>(1u, 4294967295u, 51326u, 0u), false), Struct_1(true, vec4<u32>(4294967295u, 4294967295u, 57923u, 0u), false), Struct_1(true, vec4<u32>(4294967295u, 4294967295u, 21421u, 3750u), true), Struct_1(false, vec4<u32>(43181u, 4294967295u, 23737u, 0u), false), Struct_1(true, vec4<u32>(1u, 47515u, 0u, 4294967295u), false), Struct_1(false, vec4<u32>(0u, 1u, 25765u, 4294967295u), true), Struct_1(false, vec4<u32>(6648u, 4294967295u, 11397u, 74127u), false), Struct_1(false, vec4<u32>(4294967295u, 4294967295u, 47202u, 8317u), false), Struct_1(false, vec4<u32>(22836u, 0u, 71458u, 4294967295u), true), Struct_1(false, vec4<u32>(2357u, 1u, 0u, 0u), false), Struct_1(true, vec4<u32>(44734u, 24460u, 48643u, 4294967295u), true), Struct_1(false, vec4<u32>(1u, 0u, 55614u, 0u), false), Struct_1(false, vec4<u32>(53456u, 1u, 4294967295u, 4294967295u), true), Struct_1(false, vec4<u32>(10549u, 1u, 9622u, 1u), true), Struct_1(true, vec4<u32>(0u, 81356u, 4294967295u, 4294967295u), true), Struct_1(true, vec4<u32>(20614u, 0u, 31410u, 0u), true), Struct_1(false, vec4<u32>(4294967295u, 28791u, 4294967295u, 4294967295u), true), Struct_1(true, vec4<u32>(99521u, 35357u, 0u, 45153u), false), Struct_1(false, vec4<u32>(83781u, 1u, 0u, 72716u), false), Struct_1(false, vec4<u32>(0u, 25354u, 102750u, 1u), true));

var<private> global1: array<Struct_1, 30>;

var<private> global2: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(false, vec4<u32>(4424u, 45843u, 4294967295u, 1359u), false), Struct_1(true, vec4<u32>(57223u, 7393u, 57276u, 23619u), false), Struct_1(true, vec4<u32>(4294967295u, 42028u, 72688u, 6994u), false), Struct_1(true, vec4<u32>(38977u, 3928u, 28198u, 1u), false), Struct_1(false, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), false), Struct_1(true, vec4<u32>(0u, 1u, 40150u, 27800u), false), Struct_1(false, vec4<u32>(24099u, 4294967295u, 55381u, 29493u), false), Struct_1(true, vec4<u32>(4294967295u, 37024u, 25945u, 7303u), true), Struct_1(false, vec4<u32>(0u, 1u, 42886u, 1u), true), Struct_1(true, vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), false), Struct_1(false, vec4<u32>(17657u, 26103u, 1u, 36167u), false), Struct_1(false, vec4<u32>(43463u, 0u, 4294967295u, 56285u), false), Struct_1(true, vec4<u32>(95483u, 92568u, 0u, 69745u), true), Struct_1(false, vec4<u32>(1u, 4294967295u, 0u, 1u), true), Struct_1(false, vec4<u32>(4294967295u, 1985u, 34189u, 4294967295u), false), Struct_1(true, vec4<u32>(4294967295u, 1u, 1u, 4294967295u), true), Struct_1(true, vec4<u32>(0u, 1u, 37773u, 16135u), false), Struct_1(false, vec4<u32>(5505u, 0u, 4294967295u, 13103u), false), Struct_1(true, vec4<u32>(4318u, 27845u, 1u, 28565u), false), Struct_1(false, vec4<u32>(1u, 1u, 4010u, 38836u), false), Struct_1(true, vec4<u32>(4294967295u, 1u, 0u, 1u), false), Struct_1(false, vec4<u32>(20041u, 9341u, 0u, 1u), false), Struct_1(false, vec4<u32>(12951u, 21668u, 0u, 4294967295u), false), Struct_1(false, vec4<u32>(4294967295u, 23335u, 42474u, 86759u), false), Struct_1(true, vec4<u32>(8073u, 4294967295u, 37131u, 45262u), true), Struct_1(true, vec4<u32>(46724u, 51494u, 1u, 4294967295u), true), Struct_1(true, vec4<u32>(54875u, 78204u, 16191u, 1u), false));

var<private> global3: array<vec4<f32>, 25>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = Struct_1(!(!all(select(vec2<bool>(true, false), vec2<bool>(true, false), false))), _wgslsmith_clamp_vec4_u32(~firstLeadingBit(vec4<u32>(4294967295u, 60769u, 5601u, 84755u)), abs(~vec4<u32>(9769u, 24867u, 6582u, 0u)), ~vec4<u32>(~1u, abs(4294967295u), max(0u, 38132u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 11831u)))), any(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true)), all(vec3<bool>(true, true, false)))));
    var var_1 = Struct_1(var_0.a, var_0.b, false);
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, 1238f) - vec3<f32>(arg_0, arg_0, arg_0)))))));
    global3 = array<vec4<f32>, 25>();
    var var_3 = !all(vec3<bool>(false, !var_1.a, any(select(vec4<bool>(false, false, var_1.c, var_1.c), vec4<bool>(var_0.a, var_0.c, true, true), false))));
    return var_1.c;
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: vec2<u32>) -> vec4<bool> {
    global3 = array<vec4<f32>, 25>();
    global1 = array<Struct_1, 30>();
    global1 = array<Struct_1, 30>();
    var var_0 = global2[_wgslsmith_index_u32(0u, 27u)];
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-167f - arg_0.x))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.x + 1263f))));
    return vec4<bool>(all(vec4<bool>(var_0.a, false, func_3(_wgslsmith_f_op_f32(round(arg_0.x))), all(select(vec3<bool>(var_0.c, var_0.c, true), vec3<bool>(var_0.c, var_0.c, var_0.c), var_0.a)))), all(vec4<bool>(true, var_0.a, func_3(_wgslsmith_f_op_f32(arg_0.x - arg_0.x)), any(vec4<bool>(var_0.a, false, var_0.a, var_0.c)))), var_0.c, arg_1 >= arg_1);
}

fn func_4(arg_0: vec4<bool>, arg_1: i32) -> bool {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32((firstTrailingBit(1u) | _wgslsmith_dot_vec2_u32(~vec2<u32>(42541u, 4294967295u), vec2<u32>(10120u, 31134u))) ^ 0u, ~min(71400u, _wgslsmith_add_u32(firstLeadingBit(35664u), 1u))), 32u)];
    let var_1 = ~_wgslsmith_sub_u32(29741u | var_0.b.x, _wgslsmith_mult_u32(var_0.b.x, ~_wgslsmith_mult_u32(7432u, var_0.b.x)));
    var var_2 = func_2(vec3<f32>(853f, _wgslsmith_f_op_f32(1986f - -2281f), 693f), _wgslsmith_mult_i32(~_wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(0i, u_input.a.x)), select(vec2<i32>(2455i, arg_1), u_input.a.zz, arg_0.xw)), 34438i), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(var_0.b, ~var_0.b), firstTrailingBit(max(var_0.b.x, 33623u))), ~_wgslsmith_add_vec2_u32(vec2<u32>(var_1, var_0.b.x), vec2<u32>(var_1, var_0.b.x) >> (vec2<u32>(74771u, var_1) % vec2<u32>(32u))))).yz;
    var_2 = !(!arg_0.wx);
    let var_3 = _wgslsmith_clamp_u32(abs(78218u), 1u, ~var_0.b.x ^ _wgslsmith_dot_vec3_u32(var_0.b.xyw | min(var_0.b.wyz, var_0.b.wxx), abs(var_0.b.xzy)));
    return -_wgslsmith_add_i32(~(u_input.a.x << (var_1 % 32u)), 41552i) < -2147483647i;
}

fn func_1(arg_0: u32, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = func_4(!select(!func_2(vec3<f32>(-1008f, 796f, 1042f), 31813i, vec2<u32>(4294967295u, 0u)), func_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(689f, 735f, -606f))), ~(-2147483647i), vec2<u32>(arg_0, 4294967295u)), true), _wgslsmith_div_i32(-63534i, arg_1.x));
    var var_1 = global2[_wgslsmith_index_u32(4294967295u, 27u)];
    var var_2 = vec4<bool>(!((~u_input.a.x | 0i) < _wgslsmith_add_i32(-u_input.a.x, 8353i)), true, !(true || any(vec2<bool>(var_1.a, false))), !var_1.a || var_1.a);
    let var_3 = countOneBits(arg_1.x);
    global2 = array<Struct_1, 27>();
    return global0[_wgslsmith_index_u32(min(arg_0, (arg_0 ^ ~(arg_0 | var_1.b.x)) << (_wgslsmith_dot_vec4_u32(var_1.b, _wgslsmith_mod_vec4_u32(var_1.b, ~var_1.b)) % 32u)), 32u)];
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_1(1u, u_input.a);
    let var_1 = !((_wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.a.x, -1i, u_input.a.x), vec3<i32>(-5840i, u_input.a.x, u_input.a.x)), -vec3<i32>(u_input.a.x, u_input.a.x, 60878i)) << (_wgslsmith_sub_u32(arg_0.b.x, ~4294967295u) % 32u)) <= -44082i);
    var var_2 = select(vec2<bool>(!var_0.c, select(u_input.a.x != -38545i, true, arg_0.a)), select(!func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1350f, -431f, 948f)), _wgslsmith_dot_vec2_i32(u_input.a.wx, u_input.a.xz), arg_0.b.yx).wx, func_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, 1265f, -408f), vec3<f32>(719f, -175f, -710f))), ~(~u_input.a.x), ~max(var_0.b.xw, vec2<u32>(var_0.b.x, 23404u))).yz, vec2<bool>(any(vec3<bool>(var_0.c, arg_0.a, true)), true)), any(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-626f, -1685f, -984f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(283f, 129f, 1005f))), _wgslsmith_clamp_i32(max(-4031i, u_input.a.x), 2147483647i, -u_input.a.x), abs(~var_0.b.wx))));
    var var_3 = Struct_1(true, vec4<u32>(15247u, _wgslsmith_dot_vec3_u32(firstTrailingBit(~vec3<u32>(arg_0.b.x, 75421u, var_0.b.x)), firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 56501u, var_0.b.x), arg_0.b.xwy))), arg_0.b.x, var_0.b.x), var_2.x);
    let var_4 = _wgslsmith_f_op_f32(-1f);
    return Struct_1(!all(vec3<bool>(true, any(vec2<bool>(false, var_0.c)), false)), arg_0.b, func_1(~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.b.x, 1u), vec3<u32>(var_3.b.x, 1u, arg_0.b.x)), 4294967295u), select(-(u_input.a >> (vec4<u32>(79392u, arg_0.b.x, 0u, 0u) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, 1i, u_input.a.x, 44360i), ~u_input.a), !vec4<bool>(true, var_0.a, var_3.a, false))).a);
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    global3 = array<vec4<f32>, 25>();
    global0 = array<Struct_1, 32>();
    var var_0 = vec4<bool>(all(select(select(select(vec2<bool>(arg_1.a, true), vec2<bool>(true, false), arg_1.c), vec2<bool>(true, true), vec2<bool>(arg_1.a, arg_1.a)), select(!vec2<bool>(arg_1.c, arg_1.a), vec2<bool>(true, true), arg_1.a), vec2<bool>(true, true))), false, !(any(vec2<bool>(arg_1.a, true)) || arg_1.a), (u_input.a.x | arg_0.x) >= ~(-max(arg_0.x, arg_0.x)));
    global1 = array<Struct_1, 30>();
    var var_1 = Struct_1(func_1(firstLeadingBit(~_wgslsmith_add_u32(4294967295u, arg_1.b.x)), vec4<i32>(arg_0.x, u_input.a.x, -1i, -_wgslsmith_dot_vec4_i32(u_input.a, u_input.a))).a, _wgslsmith_clamp_vec4_u32(~arg_1.b, firstLeadingBit(_wgslsmith_div_vec4_u32(arg_1.b, arg_1.b) << (~vec4<u32>(79289u, arg_1.b.x, arg_1.b.x, arg_1.b.x) % vec4<u32>(32u))), arg_1.b), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2, arg_2, -1484f), vec3<f32>(arg_2, 632f, -842f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(710f, -373f, arg_2))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(210f, arg_2, arg_2)))), -1i, arg_1.b.ww).x);
    return global0[_wgslsmith_index_u32(arg_1.b.x, 32u)];
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = !select(!(!select(vec4<bool>(false, arg_1.a, arg_3.c, arg_3.c), vec4<bool>(true, false, false, true), arg_2.a)), !vec4<bool>(arg_1.a, false, true, arg_0.a), u_input.a.x == u_input.a.x);
    global3 = array<vec4<f32>, 25>();
    let var_1 = arg_3;
    let var_2 = func_5(Struct_1(_wgslsmith_sub_i32(33673i, u_input.a.x) <= u_input.a.x, ~(~vec4<u32>(arg_0.b.x, arg_1.b.x, 11863u, arg_3.b.x)), false));
    var var_3 = -888f;
    return vec4<bool>(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1761f, 427f, -229f) - vec3<f32>(-596f, -143f, -959f)))), _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_sub_i32(firstLeadingBit(u_input.a.x), -1i)), var_2.b.yw).x, func_3(-1000f), !func_6(~vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), Struct_1(arg_1.a, vec4<u32>(arg_2.b.x, arg_2.b.x, var_2.b.x, arg_2.b.x), arg_3.a), _wgslsmith_f_op_f32(211f * 1864f)).a & (~arg_0.b.x > 72575u), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_7(Struct_1(true, vec4<u32>(~20960u, countOneBits(1u), ~10743u, 1u), true), func_6(u_input.a.wyw, func_5(func_1(48168u, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1166f))), func_5(func_6(min(u_input.a.xyz, vec3<i32>(17924i, u_input.a.x, 18274i)), Struct_1(false, vec4<u32>(69123u, 7626u, 60751u, 59896u), false), 2736f)), Struct_1(u_input.a.x != abs(2147483647i), _wgslsmith_sub_vec4_u32(func_6(u_input.a.xzx, Struct_1(false, vec4<u32>(86425u, 1u, 0u, 1u), true), 547f).b, countOneBits(vec4<u32>(4294967295u, 0u, 60825u, 0u))), select(true, select(false, true, false), false))), vec4<bool>(true, true, true, true), vec4<bool>(!(!(u_input.a.x == 1i)), true, any(vec2<bool>(true, true)), true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zxx, 80744u, abs(_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 1u, 1u), func_6(vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x) | u_input.a.xzy, Struct_1(var_0.x, vec4<u32>(2959u, 53286u, 1173u, 4294967295u), false), _wgslsmith_f_op_f32(f32(-1f) * -322f)).b.xww)));
}

