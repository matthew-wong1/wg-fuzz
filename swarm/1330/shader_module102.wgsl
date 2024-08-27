struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(202f), vec2<f32>(-577f, 497f), vec2<f32>(-270f, -790f));

var<private> global1: vec3<bool>;

var<private> global2: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(1i, 28108i, 1i, -44830i), vec4<i32>(1i, 1i, 1i, -73593i), vec4<i32>(12207i, i32(-2147483648), -1i, 1i), vec4<i32>(29273i, 2147483647i, i32(-2147483648), -25020i), vec4<i32>(39030i, -67773i, 22998i, 1i), vec4<i32>(-1i, -1i, 35469i, 2147483647i), vec4<i32>(2147483647i, 2147483647i, -1i, -81985i), vec4<i32>(-17230i, -16939i, 18808i, i32(-2147483648)), vec4<i32>(1i, 27611i, 6496i, 0i), vec4<i32>(0i, 0i, 62167i, -2999i), vec4<i32>(28632i, i32(-2147483648), 55001i, -40962i), vec4<i32>(84021i, 2147483647i, 19743i, i32(-2147483648)), vec4<i32>(4155i, -33933i, 0i, 19256i), vec4<i32>(2147483647i, 1i, 26211i, 1i), vec4<i32>(-25594i, 1i, i32(-2147483648), -14026i), vec4<i32>(0i, -1i, -14025i, -24341i), vec4<i32>(0i, -29378i, 29738i, i32(-2147483648)), vec4<i32>(0i, -1i, 4271i, -21416i), vec4<i32>(-3385i, 6066i, 0i, 2147483647i), vec4<i32>(503i, 2147483647i, 1i, 18742i), vec4<i32>(2147483647i, 1i, 0i, -14081i), vec4<i32>(-23702i, i32(-2147483648), 2147483647i, i32(-2147483648)));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec3<f32>, arg_3: i32) -> vec3<f32> {
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))))), _wgslsmith_f_op_vec2_f32(-global0.b), arg_0.b);
    var var_0 = ~2604u;
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c.x, global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a)), arg_0.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1036f, arg_2.x)) - _wgslsmith_f_op_f32(arg_0.b.x - -1718f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(arg_2.x - global0.b.x)), _wgslsmith_f_op_f32(-arg_0.a.a), 616f)));
    var_0 = _wgslsmith_mod_u32(9002u, ~1u);
    var_1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-538f * _wgslsmith_f_op_f32(f32(-1f) * -152f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -945f) + -142f), _wgslsmith_div_f32(-419f, 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(472f * -416f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1602f, var_1.x, arg_0.c.x, arg_0.c.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2.x, -1756f, 279f, arg_2.x))))))));
    return arg_2;
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    global2 = array<vec4<i32>, 22>();
    global0 = arg_0;
    global2 = array<vec4<i32>, 22>();
    global2 = array<vec4<i32>, 22>();
    let var_0 = _wgslsmith_f_op_vec3_f32(func_3(arg_0, 1i, vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2072f + arg_0.c.x)))), _wgslsmith_f_op_f32(-global0.c.x), -462f), ~(-u_input.b)));
    return Struct_3(arg_0, global1.x, Struct_1(-329f));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_2) -> i32 {
    var var_0 = vec3<u32>(abs(4711u), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 25100u, 4294967295u, 4294967295u), vec4<u32>(abs(6131u), abs(56073u), select(4294967295u, 78309u, arg_0.b), min(0u, 93997u))), min(vec4<u32>(4294967295u, 4294967295u, 1u, abs(0u)), reverseBits(vec4<u32>(1u, 17646u, 14342u, 63829u) >> (vec4<u32>(1u, 0u, 0u, 1u) % vec4<u32>(32u))))), ~(~1u));
    global0 = func_2(arg_2).a;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global0.c.x, arg_0.c.a, 331f) - vec4<f32>(-352f, _wgslsmith_f_op_f32(global0.a.a - _wgslsmith_f_op_f32(551f + arg_2.a.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -233f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global0.b.x, -1448f)), 177f)))) + vec4<f32>(-732f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-364f)) + global0.b.x), global0.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-373f, arg_2.c.x)) + _wgslsmith_div_f32(748f, arg_2.a.a))), global0.a.a));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.c * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.a.a, global0.a.a) - arg_0.a.b))) - _wgslsmith_f_op_vec2_f32(select(arg_2.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)), global1.zz))) * arg_2.b);
    global1 = !select(select(select(select(vec3<bool>(true, arg_0.b, arg_0.b), vec3<bool>(false, global1.x, true), global1.x), vec3<bool>(arg_0.b, true, global1.x), !vec3<bool>(false, arg_0.b, true)), select(select(vec3<bool>(arg_0.b, global1.x, false), vec3<bool>(false, false, arg_0.b), true), select(vec3<bool>(true, global1.x, true), vec3<bool>(true, true, false), vec3<bool>(arg_0.b, arg_0.b, arg_0.b)), false), !(!vec3<bool>(global1.x, true, arg_0.b))), select(!vec3<bool>(global1.x, false, arg_0.b), vec3<bool>(false, true, true), !select(true, global1.x, false)), vec3<bool>(true, all(global1.xy), _wgslsmith_f_op_vec3_f32(func_3(arg_2, u_input.c, vec3<f32>(global0.c.x, 163f, -248f), -43391i)).x > _wgslsmith_f_op_f32(ceil(var_2.x))));
    return ~firstTrailingBit(_wgslsmith_mod_i32(2147483647i, u_input.c));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    var var_0 = (firstLeadingBit(1u << (select(21049u, 1u, global1.x) % 32u)) << (58318u % 32u)) & _wgslsmith_div_u32(min(countOneBits(~0u), 26730u ^ _wgslsmith_clamp_u32(1u, 34111u, 33206u)), ~countOneBits(~1u));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -236f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1300f, global0.a.a))) * 768f));
    var var_2 = -70i;
    var var_3 = Struct_3(func_2(arg_1).a, !all(!(!vec4<bool>(global1.x, false, false, true))), func_2(func_2(arg_1).a).a.a);
    let var_4 = firstLeadingBit(firstLeadingBit(vec2<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 59782u), vec3<u32>(17988u, 91551u, 50862u))))) & ~vec2<u32>(1u, 1u);
    return arg_1;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec2<bool>) -> f32 {
    global2 = array<vec4<i32>, 22>();
    global0 = func_5(_wgslsmith_add_vec4_i32(vec4<i32>(reverseBits(_wgslsmith_div_i32(u_input.b, 1i)), func_4(func_2(Struct_2(Struct_1(1056f), vec2<f32>(1718f, global0.a.a), global0.b)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.c), vec3<i32>(34165i, u_input.a.x, 0i), vec3<i32>(u_input.b, -2147483647i, u_input.a.x)), Struct_2(Struct_1(arg_1.a), global0.b, global0.c)), u_input.a.x, 1i), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(~global2[_wgslsmith_index_u32(4294967295u, 22u)], firstLeadingBit(global2[_wgslsmith_index_u32(33559u, 22u)])), -(~vec4<i32>(u_input.c, u_input.c, u_input.b, -1i)))), Struct_2(global0.a, _wgslsmith_f_op_vec2_f32(sign(global0.b)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.a, -707f), vec2<f32>(global0.b.x, -433f)) - global0.b), func_2(func_2(Struct_2(arg_1, vec2<f32>(1070f, 2878f), global0.b)).a).a.b))), Struct_1(-1407f));
    let var_0 = global0.b.x;
    var var_1 = func_2(func_5(global2[_wgslsmith_index_u32(1u, 22u)] << (select(abs(vec4<u32>(130298u, 68451u, 52977u, 4294967295u)), vec4<u32>(0u, 0u, 0u, 33529u), !vec4<bool>(true, arg_0, arg_0, arg_2.x)) % vec4<u32>(32u)), Struct_2(Struct_1(_wgslsmith_f_op_f32(-global0.a.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global0.b, vec2<f32>(arg_1.a, -1000f)) + _wgslsmith_f_op_vec2_f32(-global0.c)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(global0.a, vec2<f32>(153f, global0.b.x), global0.b), u_input.a.x, vec3<f32>(-1202f, arg_1.a, 950f), u_input.a.x)).yy))), Struct_1(-209f))).c;
    let var_2 = -min(-vec3<i32>(0i, u_input.c, select(-54703i, u_input.b, false)), ~vec3<i32>(-1i, 2147483647i, ~u_input.b));
    return -2561f;
}

fn func_6(arg_0: f32, arg_1: bool) -> Struct_3 {
    let var_0 = func_2(func_5(-vec4<i32>(abs(-2147483647i), func_4(Struct_3(Struct_2(Struct_1(-1873f), vec2<f32>(942f, 696f), vec2<f32>(763f, 329f)), arg_1, global0.a), vec3<i32>(2147483647i, u_input.a.x, -15374i), Struct_2(global0.a, vec2<f32>(-826f, arg_0), vec2<f32>(-593f, -1811f))), -69198i, u_input.b), Struct_2(global0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-277f, global0.b.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.a, global0.c.x) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, arg_0) + vec2<f32>(arg_0, 755f)))), Struct_1(-496f))).a;
    let var_1 = vec2<u32>(~countOneBits(1u), max(39068u, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 12606u), ~vec2<u32>(1u, 1u))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(exp2(global0.b.x)));
    let var_3 = var_1;
    let var_4 = _wgslsmith_add_vec3_u32(~_wgslsmith_mod_vec3_u32(~firstTrailingBit(vec3<u32>(4294967295u, var_1.x, 0u)), ~firstTrailingBit(vec3<u32>(2393u, var_3.x, var_1.x))), ~vec3<u32>(4294967295u, 30451u, var_3.x));
    return Struct_3(Struct_2(func_2(var_0).a.a, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.c.x)) + _wgslsmith_div_f32(-131f, arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1232f - var_0.a.a))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b * _wgslsmith_f_op_vec2_f32(-vec2<f32>(575f, var_2.a))), vec2<f32>(func_2(Struct_2(Struct_1(-1040f), vec2<f32>(var_2.a, var_2.a), vec2<f32>(975f, -980f))).a.b.x, _wgslsmith_f_op_f32(ceil(372f))))), any(vec3<bool>(false, true, func_5(global2[_wgslsmith_index_u32(0u, 22u)], var_0, global0.a).c.x <= _wgslsmith_f_op_f32(-global0.c.x))), func_5(global2[_wgslsmith_index_u32((_wgslsmith_add_u32(var_3.x, var_3.x) << (~25777u % 32u)) >> (~53361u % 32u), 22u)], var_0, var_2).a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_f_op_f32(func_1(false, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1034f - 652f))), select(!(!global1.xz), !vec2<bool>(global1.x, true), true))), false);
    global2 = array<vec4<i32>, 22>();
    global1 = select(vec3<bool>(true, !(!(!global1.x)), !var_0.b), select(!vec3<bool>(all(vec3<bool>(global1.x, false, false)), var_0.b, false), vec3<bool>(global1.x, false, func_6(103f, func_6(1136f, global1.x).b).b), !select(!vec3<bool>(true, global1.x, var_0.b), vec3<bool>(global1.x, global1.x, global1.x), select(var_0.b, true, true))), true);
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.a.a, 550f, 367f) * vec3<f32>(global0.a.a, -556f, global0.c.x)), vec3<f32>(-1883f, global0.a.a, global0.c.x)))))));
    var var_2 = var_0.c.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1759f, 1524f)) - vec2<f32>(_wgslsmith_f_op_f32(-var_0.c.a), var_1.x)) - global0.b), _wgslsmith_f_op_f32(-func_6(-1000f, any(vec2<bool>(true, true))).a.b.x), _wgslsmith_clamp_i32(~abs(-1i ^ u_input.c), _wgslsmith_mult_i32(-7581i, _wgslsmith_mult_i32(u_input.a.x, -10112i)), u_input.b), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(683f, -1000f, var_0.a.a.a)), _wgslsmith_div_vec3_f32(vec3<f32>(global0.c.x, 557f, 929f), vec3<f32>(var_1.x, var_0.a.c.x, global0.b.x))))), vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.c.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1395f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1283f))))), !select(!vec3<bool>(global1.x, true, var_0.b), !vec3<bool>(global1.x, global1.x, true), global1.x))));
}

