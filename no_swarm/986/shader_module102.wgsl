struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
    c: i32,
    d: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0u, vec4<u32>(0u, 0u, 14650u, 66994u), true, -1i, vec4<i32>(28852i, 0i, 2147483647i, 1i));

var<private> global1: array<vec4<u32>, 13> = array<vec4<u32>, 13>(vec4<u32>(31440u, 4824u, 22602u, 33613u), vec4<u32>(0u, 35588u, 4294967295u, 19138u), vec4<u32>(1u, 1u, 1u, 56784u), vec4<u32>(1u, 11880u, 4294967295u, 112656u), vec4<u32>(4294967295u, 20262u, 0u, 1u), vec4<u32>(55089u, 9801u, 5590u, 1u), vec4<u32>(23558u, 42374u, 0u, 11568u), vec4<u32>(0u, 28563u, 51406u, 18850u), vec4<u32>(4294967295u, 107u, 4294967295u, 4294967295u), vec4<u32>(1u, 39678u, 13450u, 0u), vec4<u32>(3662u, 10133u, 61489u, 0u), vec4<u32>(77525u, 0u, 3216u, 26754u), vec4<u32>(0u, 125u, 1u, 2152u));

var<private> global2: array<vec2<bool>, 6>;

var<private> global3: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(0u, vec4<u32>(1u, 2419u, 18341u, 6335u), false, 5206i, vec4<i32>(27173i, -45262i, -27681i, 2147483647i)), Struct_1(44834u, vec4<u32>(60875u, 4294967295u, 4294967295u, 4294967295u), true, -16186i, vec4<i32>(21491i, -56556i, i32(-2147483648), 36920i)), Struct_1(4682u, vec4<u32>(74625u, 4493u, 18382u, 4294967295u), false, 6828i, vec4<i32>(1i, -3158i, -35192i, 2147483647i)), Struct_1(6835u, vec4<u32>(2580u, 0u, 4294967295u, 53199u), false, 0i, vec4<i32>(2147483647i, 12183i, i32(-2147483648), 76637i)), Struct_1(33869u, vec4<u32>(62050u, 1u, 1u, 76011u), true, 1i, vec4<i32>(-15662i, 1i, 2015i, 0i)), Struct_1(4294967295u, vec4<u32>(16153u, 1u, 24085u, 20917u), true, -43272i, vec4<i32>(0i, 2147483647i, 11597i, -68049i)), Struct_1(4294967295u, vec4<u32>(42565u, 4294967295u, 4294967295u, 73556u), false, 7193i, vec4<i32>(-23718i, 18598i, 0i, -6328i)), Struct_1(0u, vec4<u32>(21354u, 27426u, 10829u, 28977u), true, 1i, vec4<i32>(-1i, 0i, -12400i, i32(-2147483648))), Struct_1(84593u, vec4<u32>(4294967295u, 0u, 1u, 72580u), false, -1i, vec4<i32>(-45198i, 1i, 13359i, -57232i)), Struct_1(13268u, vec4<u32>(1u, 32319u, 4294967295u, 5650u), false, 38445i, vec4<i32>(i32(-2147483648), -3616i, 1i, 1i)), Struct_1(24034u, vec4<u32>(2813u, 46183u, 22886u, 15085u), true, 3371i, vec4<i32>(-19959i, 3233i, 2147483647i, 10470i)), Struct_1(4294967295u, vec4<u32>(1u, 0u, 22702u, 1u), true, -13583i, vec4<i32>(0i, i32(-2147483648), 16161i, -51546i)), Struct_1(35675u, vec4<u32>(13335u, 1u, 37461u, 11126u), false, -38167i, vec4<i32>(17855i, -7618i, 1i, 12938i)), Struct_1(37283u, vec4<u32>(1u, 63321u, 30334u, 1u), false, 34969i, vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, 59672i)), Struct_1(4294967295u, vec4<u32>(1u, 1u, 58983u, 4002u), false, 12410i, vec4<i32>(0i, 1i, 2147483647i, -8221i)), Struct_1(10542u, vec4<u32>(50550u, 0u, 47405u, 4294967295u), true, 4030i, vec4<i32>(-1i, -7025i, 0i, -35011i)));

var<private> global4: vec3<u32> = vec3<u32>(4294967295u, 4294967295u, 1u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: vec4<u32>) -> vec4<i32> {
    var var_0 = Struct_2(arg_0, vec4<bool>(~(~1u) >= (max(4294967295u, arg_2.x) >> (global4.x % 32u)), any(select(!vec4<bool>(global0.c, global0.c, true, global0.c), !vec4<bool>(global0.c, global0.c, false, global0.c), vec4<bool>(false, global0.c, global0.c, false))), !global0.c, true));
    var var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(434f, -2505f) - vec2<f32>(998f, 1811f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(568f, 143f)))))))));
    let var_2 = global4.x | global4.x;
    global2 = array<vec2<bool>, 6>();
    return ~(global0.e ^ vec4<i32>(arg_1.x, global0.e.x, global0.e.x, arg_0));
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_2) -> f32 {
    let var_0 = arg_2;
    global4 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(min(abs(global0.b.x), global4.x), 19940u, global0.a), vec3<u32>(84950u, max(0u, _wgslsmith_sub_u32(67343u, 16385u)), abs(~arg_0)), firstTrailingBit(vec3<u32>(firstLeadingBit(global4.x), 1u, min(global0.b.x, 3058u))));
    global3 = array<Struct_1, 16>();
    let var_1 = Struct_3(countOneBits(global0.a), ~30129u, Struct_1(26752u, ~_wgslsmith_add_vec4_u32(global1[_wgslsmith_index_u32(global0.b.x, 13u)] & vec4<u32>(4294967295u, 0u, global0.b.x, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.a, 1u, global4.x, 1u), global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)])), any(global2[_wgslsmith_index_u32(52085u, 6u)]), max(~global0.d | arg_1.x, reverseBits(max(var_0.a, 2147483647i))), -arg_1), func_3(_wgslsmith_div_i32(-1i, firstLeadingBit(select(arg_2.a, 3981i, true))), global0.e.xx, vec4<u32>(1u, _wgslsmith_mult_u32(1u, global0.b.x) << (_wgslsmith_sub_u32(arg_0, arg_0) % 32u), 50708u, arg_0)));
    var var_2 = 0u;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2045f)) * _wgslsmith_f_op_f32(max(-139f, -1000f)))) * _wgslsmith_f_op_f32(-543f * _wgslsmith_f_op_f32(865f - _wgslsmith_f_op_f32(f32(-1f) * -262f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>) -> vec3<u32> {
    let var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.x, _wgslsmith_div_u32(global0.a, _wgslsmith_mod_u32(1u, 32579u)), firstLeadingBit(65880u)), abs(_wgslsmith_mult_vec3_u32(global0.b.wxx, vec3<u32>(global0.b.x, global0.b.x, 1u)))) | global0.b.xzy;
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2081f)), _wgslsmith_f_op_f32(f32(-1f) * -1160f), _wgslsmith_f_op_f32(809f * _wgslsmith_f_op_f32(-224f - 292f))) * vec3<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_mod_u32(var_0.x, var_0.x), func_3(13141i, vec2<i32>(-2147483647i, -43977i), vec4<u32>(0u, global4.x, var_0.x, 4294967295u)), Struct_2(u_input.a.x, arg_0.b))), -1034f, _wgslsmith_f_op_f32(func_4(~27959u, _wgslsmith_clamp_vec4_i32(vec4<i32>(28822i, 1i, global0.d, global0.d), vec4<i32>(global0.d, global0.e.x, arg_0.a, 2147483647i), global0.e), arg_0)))), vec3<f32>(_wgslsmith_f_op_f32(437f - _wgslsmith_f_op_f32(f32(-1f) * -1269f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -365f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -280f) - _wgslsmith_f_op_f32(-738f * -1000f))), -1563f));
    global0 = Struct_1(~(~countOneBits(arg_1.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(firstTrailingBit(~78200u), 0u, 1u, global0.a), max(select(global0.b, vec4<u32>(var_0.x, var_0.x, 1u, 63784u), arg_0.b) | _wgslsmith_mult_vec4_u32(global0.b, vec4<u32>(arg_1.x, 0u, arg_1.x, global0.a)), select(~vec4<u32>(var_0.x, arg_1.x, global0.b.x, 4294967295u), global1[_wgslsmith_index_u32(53169u, 13u)], true))), any(select(vec3<bool>(global0.c, true, arg_0.b.x), vec3<bool>(arg_0.b.x, true, false), any(vec4<bool>(global0.c, global0.c, true, true)))) == !(0u < (arg_1.x << (global0.a % 32u))), _wgslsmith_dot_vec3_i32(-(~vec3<i32>(global0.d, u_input.a.x, -24253i)), vec3<i32>(-13141i, 4004i, 37604i)), _wgslsmith_mult_vec4_i32(max(vec4<i32>(30719i, arg_0.a, 0i, 14571i), global0.e) & firstTrailingBit(global0.e), global0.e));
    var var_2 = var_1.x;
    var_2 = _wgslsmith_f_op_f32(trunc(var_1.x));
    return reverseBits(~vec3<u32>(countOneBits(global4.x << (4294967295u % 32u)), global0.a | 45428u, _wgslsmith_dot_vec3_u32(global0.b.wzy, var_0)));
}

fn func_1() -> u32 {
    global1 = array<vec4<u32>, 13>();
    global4 = _wgslsmith_mod_vec3_u32(select(vec3<u32>(_wgslsmith_mod_u32(~global4.x, global0.a), 19653u, 4309u), firstLeadingBit(~func_2(Struct_2(u_input.a.x, vec4<bool>(global0.c, false, global0.c, false)), global4.zx)), true), countOneBits(~firstLeadingBit(global0.b.xzz)) >> (~(~func_2(Struct_2(37772i, vec4<bool>(global0.c, false, true, true)), global4.zz)) % vec3<u32>(32u)));
    global0 = Struct_1(5462u, _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(~select(vec4<u32>(16253u, 33025u, 0u, global4.x), global0.b, false), global0.b), global0.b | global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global0.b.x, 4294967295u), 13u)]), !(select(global0.c, any(vec4<bool>(global0.c, true, false, false)), global0.c) && global0.c), ~(-(~(-u_input.a.x))), -_wgslsmith_add_vec4_i32(global0.e << ((global1[_wgslsmith_index_u32(77559u, 13u)] | global1[_wgslsmith_index_u32(57384u, 13u)]) % vec4<u32>(32u)), global0.e));
    global4 = vec3<u32>(global4.x, ~(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(global0.b, vec4<u32>(1u, global4.x, 6395u, 4294967295u)), max(0u, global0.b.x)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 1u, global4.x) >> (global1[_wgslsmith_index_u32(7844u, 13u)] % vec4<u32>(32u)), vec4<u32>(103456u, global4.x, 54824u, global0.a)) % 32u)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0.a, global0.a), vec3<u32>(global4.x, 16304u, global4.x)), 13u)], countOneBits(~vec4<u32>(global0.b.x, 1u, 27537u, global0.b.x))), abs(1u & global0.b.x), reverseBits(_wgslsmith_clamp_u32(~global4.x, _wgslsmith_dot_vec3_u32(global0.b.yyz, vec3<u32>(global4.x, global0.a, global4.x)), min(1u, 0u)))));
    let var_0 = ~global0.a;
    return ~var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = vec3<u32>(4294967295u, ~firstLeadingBit(global4.x ^ global0.a), 1u) | _wgslsmith_mod_vec3_u32(~_wgslsmith_mod_vec3_u32(~vec3<u32>(32110u, global0.b.x, global0.a), ~global0.b.wzw), vec3<u32>(func_1(), abs(28916u), ~global0.b.x) | ~global0.b.zwy);
    var var_0 = global0.b;
    var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, global4.x), 13u)];
    var var_1 = Struct_1(42546u, _wgslsmith_div_vec4_u32(~vec4<u32>(var_0.x, _wgslsmith_mult_u32(1u, var_0.x), ~44513u, _wgslsmith_dot_vec4_u32(global0.b, vec4<u32>(var_0.x, 0u, global4.x, var_0.x))), select(~(~global0.b), ~(vec4<u32>(30271u, global4.x, 1u, 46101u) | vec4<u32>(4294967295u, global4.x, 1u, 4294967295u)), !vec4<bool>(true, false, false, global0.c))), !(any(select(vec4<bool>(false, global0.c, global0.c, false), vec4<bool>(true, false, true, global0.c), vec4<bool>(global0.c, false, global0.c, true))) && global0.c), countOneBits(abs(u_input.a.x) >> (1u % 32u)), global0.e);
    global1 = array<vec4<u32>, 13>();
    global0 = global3[_wgslsmith_index_u32(~(~(1u & global0.b.x)), 16u)];
    var var_2 = select((vec3<i32>(-8202i, u_input.a.x, 2147483647i) & func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(12107i, var_1.d, global0.e.x, 22202i)), vec2<i32>(var_1.d, -2147483647i), var_1.b).xww) | -(_wgslsmith_add_vec3_i32(global0.e.zxx, u_input.a) >> (var_0.zww % vec3<u32>(32u))), -_wgslsmith_add_vec3_i32(~u_input.a, var_1.e.zyx), !((true & global0.c) & (false != any(vec3<bool>(true, global0.c, false)))));
    let var_3 = Struct_2(-25071i, vec4<bool>(true, !(-var_2.x == _wgslsmith_div_i32(var_1.d, -2147483647i)), var_1.c, global0.c));
    let var_4 = Struct_3(func_1(), global0.a, global3[_wgslsmith_index_u32(~(~(~firstLeadingBit(4063u))), 16u)], -firstTrailingBit(firstTrailingBit(var_1.e) | firstTrailingBit(vec4<i32>(-2147483647i, -82520i, -2147483647i, var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(141f, 872f), 1f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1845f, 986f, true)) - -986f), -1583f)), 1u);
}

