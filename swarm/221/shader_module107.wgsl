struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec3<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
    d: vec3<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_1, 10>;

var<private> global2: u32;

var<private> global3: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(vec2<u32>(1u, 42958u), 0u, Struct_1(true), vec3<u32>(1u, 4294967295u, 1u), 39954u), Struct_4(vec2<u32>(21812u, 102057u), 32575u, Struct_1(false), vec3<u32>(0u, 5778u, 0u), 38228u), Struct_4(vec2<u32>(13794u, 0u), 11836u, Struct_1(true), vec3<u32>(0u, 4294967295u, 4294967295u), 54172u), Struct_4(vec2<u32>(9735u, 4294967295u), 16204u, Struct_1(false), vec3<u32>(14586u, 1u, 4294967295u), 16082u), Struct_4(vec2<u32>(22135u, 21948u), 23141u, Struct_1(false), vec3<u32>(4294967295u, 0u, 0u), 4294967295u), Struct_4(vec2<u32>(4294967295u, 61373u), 14670u, Struct_1(false), vec3<u32>(0u, 1186u, 34935u), 74375u), Struct_4(vec2<u32>(4294967295u, 17658u), 4294967295u, Struct_1(false), vec3<u32>(0u, 0u, 98503u), 4294967295u), Struct_4(vec2<u32>(4294967295u, 32032u), 4294967295u, Struct_1(true), vec3<u32>(52454u, 0u, 21998u), 4294967295u), Struct_4(vec2<u32>(4294967295u, 8943u), 4294967295u, Struct_1(false), vec3<u32>(38878u, 23145u, 26088u), 1u), Struct_4(vec2<u32>(28501u, 3866u), 1u, Struct_1(true), vec3<u32>(1u, 27571u, 1679u), 4294967295u), Struct_4(vec2<u32>(0u, 0u), 18273u, Struct_1(false), vec3<u32>(30516u, 35305u, 35739u), 4294967295u), Struct_4(vec2<u32>(1u, 1u), 21208u, Struct_1(false), vec3<u32>(0u, 0u, 12038u), 0u), Struct_4(vec2<u32>(4294967295u, 4294967295u), 21980u, Struct_1(true), vec3<u32>(10230u, 43652u, 87542u), 4294967295u), Struct_4(vec2<u32>(1u, 4294967295u), 0u, Struct_1(true), vec3<u32>(0u, 9836u, 4294967295u), 18602u), Struct_4(vec2<u32>(10934u, 0u), 54434u, Struct_1(true), vec3<u32>(0u, 50032u, 51915u), 52197u), Struct_4(vec2<u32>(1651u, 32985u), 18074u, Struct_1(true), vec3<u32>(2193u, 1u, 0u), 3563u), Struct_4(vec2<u32>(50156u, 25735u), 1u, Struct_1(true), vec3<u32>(19385u, 12204u, 41436u), 4294967295u), Struct_4(vec2<u32>(0u, 0u), 21464u, Struct_1(true), vec3<u32>(41567u, 0u, 0u), 1u), Struct_4(vec2<u32>(60864u, 33167u), 48682u, Struct_1(true), vec3<u32>(1u, 20983u, 23786u), 0u), Struct_4(vec2<u32>(38515u, 62454u), 76334u, Struct_1(false), vec3<u32>(53210u, 3768u, 44292u), 57050u), Struct_4(vec2<u32>(1u, 0u), 6944u, Struct_1(false), vec3<u32>(4294967295u, 36838u, 80602u), 23397u), Struct_4(vec2<u32>(13159u, 1u), 0u, Struct_1(false), vec3<u32>(63334u, 2307u, 0u), 4294967295u), Struct_4(vec2<u32>(4294967295u, 22675u), 1u, Struct_1(true), vec3<u32>(26093u, 4294967295u, 70852u), 3656u), Struct_4(vec2<u32>(77145u, 63539u), 47307u, Struct_1(false), vec3<u32>(1u, 106148u, 101407u), 13474u), Struct_4(vec2<u32>(37640u, 29055u), 5766u, Struct_1(true), vec3<u32>(41714u, 4294967295u, 4033u), 10495u), Struct_4(vec2<u32>(0u, 0u), 35978u, Struct_1(true), vec3<u32>(1u, 8465u, 1u), 18144u), Struct_4(vec2<u32>(16016u, 115749u), 1u, Struct_1(true), vec3<u32>(8550u, 83732u, 4809u), 1u));

var<private> global4: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    var var_0 = global4.a.a;
    let var_1 = Struct_3(global1[_wgslsmith_index_u32(max(abs(~(~28005u)), reverseBits(reverseBits(u_input.a.x))), 10u)], global4.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global4.c, global4.c) * _wgslsmith_f_op_vec3_f32(floor(global4.c))))));
    var var_2 = !(!vec2<bool>(any(global0.wwz) & true, var_1.a.a));
    let var_3 = u_input.c;
    global2 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(~1u, var_3.x), var_3.x, ~u_input.c.x, 0u) & u_input.c, var_3);
    return all(select(global0.yyx, !select(vec3<bool>(var_2.x, false, global0.x), global0.xzz, select(vec3<bool>(var_2.x, true, false), global0.wxy, global4.b)), !(global4.c.x <= global4.c.x) & false));
}

fn func_4(arg_0: f32, arg_1: vec4<i32>) -> bool {
    global3 = array<Struct_4, 27>();
    var var_0 = arg_1.x;
    global4 = Struct_3(global4.a, global0.x, _wgslsmith_f_op_vec3_f32(floor(global4.c)));
    let var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(countOneBits(3441u), ~4294967295u), _wgslsmith_mult_vec2_u32(~u_input.c.xy, vec2<u32>(max(u_input.c.x, 21158u), countOneBits(3333u)) ^ u_input.c.xz));
    var var_2 = select(vec4<bool>(global4.b == (false || global4.a.a), !all(vec2<bool>(false, global0.x)), true, any(!vec4<bool>(true, true, global0.x, true))), select(select(select(vec4<bool>(global4.b, false, false, global0.x), select(vec4<bool>(global0.x, global0.x, global4.a.a, global0.x), vec4<bool>(global4.b, global4.a.a, true, global4.a.a), global0.x), !vec4<bool>(global0.x, false, true, false)), !vec4<bool>(global0.x, false, global4.b, true), false), select(select(select(vec4<bool>(global4.b, true, global0.x, false), vec4<bool>(global4.b, false, global0.x, global4.b), global0.x), vec4<bool>(global4.b, global0.x, true, global4.b), global4.b), vec4<bool>(true, global0.x && false, true, true), vec4<bool>(all(vec4<bool>(false, true, true, global4.a.a)), false && global4.a.a, !global0.x, false)), true), !(!select(vec4<bool>(false, global0.x, false, global0.x), !vec4<bool>(global0.x, false, global0.x, false), false)));
    return ~(~(~var_1.x) & 63879u) < u_input.a.x;
}

fn func_5(arg_0: vec4<bool>, arg_1: bool, arg_2: i32) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1062f)) - 2237f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(857f, global4.c.x)))), global4.c.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global4.c.x, 1249f, global4.c.x, global4.c.x)))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(179f, -1000f) - 867f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.c.x * global4.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.c.x + _wgslsmith_f_op_f32(global4.c.x * global4.c.x))), _wgslsmith_f_op_f32(-global4.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global4.c.x))) + global4.c.x)));
    global1 = array<Struct_1, 10>();
    let var_1 = _wgslsmith_div_f32(-657f, global4.c.x);
    let var_2 = u_input.c;
    var var_3 = ~vec2<u32>(1u ^ var_2.x, select(var_2.x, 30134u, arg_0.x));
    return vec3<u32>(_wgslsmith_mult_u32(var_3.x, reverseBits(_wgslsmith_sub_u32(var_3.x, 68667u))), u_input.a.x, _wgslsmith_add_u32(1u, _wgslsmith_sub_u32(~var_2.x, 15093u))) << (var_2.xzx % vec3<u32>(32u));
}

fn func_2() -> Struct_3 {
    global1 = array<Struct_1, 10>();
    var var_0 = func_5(select(!vec4<bool>(true, !global0.x, global4.a.a, false), !select(vec4<bool>(true, true, false, global4.a.a), vec4<bool>(global0.x, false, true, global4.a.a), true), all(!(!vec4<bool>(global4.b, global4.b, true, true)))), func_4(global4.c.x, select(select(vec4<i32>(u_input.d.x, -1i, u_input.d.x, u_input.d.x), vec4<i32>(u_input.d.x, -2147483647i, u_input.d.x, 1i), global4.b), -vec4<i32>(u_input.b, u_input.b, -12662i, 2147483647i), func_3()) << (abs(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)) % vec4<u32>(32u))), -u_input.d.x);
    var var_1 = max(-vec3<i32>(-(u_input.d.x | u_input.d.x), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.d.x, -2147483647i, u_input.d.x)), select(vec3<i32>(u_input.d.x, u_input.b, u_input.b), vec3<i32>(-2147483647i, 33860i, u_input.d.x), true)), countOneBits(-2147483647i)), (countOneBits(vec3<i32>(106025i, u_input.d.x, 6613i)) | min(firstTrailingBit(vec3<i32>(-40770i, 1i, 16541i)), vec3<i32>(-2147483647i, u_input.b, u_input.d.x))) >> (vec3<u32>(u_input.a.x, var_0.x, _wgslsmith_clamp_u32(_wgslsmith_add_u32(67508u, 0u), select(var_0.x, 14480u, global0.x), ~u_input.c.x)) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_add_u32(0u, _wgslsmith_mod_u32(~func_5(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, global4.a.a, true), vec4<bool>(global0.x, global0.x, true, global0.x)), !global4.b, u_input.d.x >> (0u % 32u)).x, func_5(select(vec4<bool>(false, false, global4.a.a, global0.x), vec4<bool>(global0.x, false, global0.x, true), global0.x), global4.b, -var_1.x).x & 0u));
    let var_3 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.c.x, ~abs(var_2)), (u_input.a.x >> ((74858u & var_0.x) % 32u)) >> (34473u % 32u), _wgslsmith_div_u32(~var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, 4294967295u), vec4<u32>(23104u, var_0.x, 1u, var_0.x)))) != ~1u;
    return Struct_3(global4.a, true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(global4.c * vec3<f32>(global4.c.x, 164f, global4.c.x)))), _wgslsmith_f_op_vec3_f32(global4.c + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-694f, global4.c.x, global4.c.x)))))));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: f32) -> u32 {
    global4 = func_2();
    let var_0 = func_2().b;
    var var_1 = global0.x;
    global4 = Struct_3(Struct_1(98367u < ~_wgslsmith_dot_vec3_u32(vec3<u32>(49857u, u_input.a.x, u_input.a.x), u_input.a)), var_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-926f, 389f, arg_2) - global4.c)));
    global2 = ~(~(u_input.c.x >> (~u_input.a.x % 32u)));
    return _wgslsmith_mod_u32(_wgslsmith_mult_u32(max(1u, u_input.c.x), ~1u), u_input.a.x) | u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(~vec2<u32>(countOneBits(func_1(global4.c.x, vec3<i32>(u_input.b, u_input.b, -2147483647i), global4.c.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 18310u, 0u, 60202u), ~u_input.c)), 2842u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a, ~u_input.a), ~u_input.a), 10u)], _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a.x, _wgslsmith_sub_u32(u_input.c.x, u_input.c.x), _wgslsmith_clamp_u32(4294967295u, 7516u, u_input.a.x)), func_5(!select(vec4<bool>(global4.a.a, true, true, false), vec4<bool>(global4.b, true, global4.a.a, true), vec4<bool>(true, true, global0.x, global4.a.a)), global0.x, _wgslsmith_add_i32(1i, -u_input.d.x))), u_input.a.x);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.c.x * _wgslsmith_f_op_f32(global4.c.x * global4.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global4.c.x))))), u_input.d.x, func_2().a);
    let var_2 = vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-25545i, 2147483647i), vec2<i32>(u_input.d.x, u_input.d.x)), -50307i), countOneBits(u_input.d << (u_input.c.yy % vec2<u32>(32u)))), firstLeadingBit(1i) >> (var_0.a.x % 32u), abs(firstLeadingBit(0i) << (1u % 32u)), u_input.b & -4640i);
    var var_3 = vec2<f32>(751f, 1576f);
    var var_4 = Struct_1(!(!(true && var_0.c.a)));
    global2 = _wgslsmith_div_u32(firstLeadingBit(reverseBits(var_0.d.x)), func_1(_wgslsmith_f_op_f32(trunc(-351f)), var_2.zyw, 396f));
    var_0 = Struct_4(~firstTrailingBit(_wgslsmith_clamp_vec2_u32(var_0.d.xz | u_input.c.xw, var_0.a, countOneBits(u_input.c.yx))), 44914u, func_2().a, abs(vec3<u32>(4294967295u, var_0.a.x, 0u) << (abs(u_input.c.wzy) % vec3<u32>(32u))) >> (~(~vec3<u32>(28894u, 4294967295u, 15956u) ^ u_input.c.zxy) % vec3<u32>(32u)), abs(select(_wgslsmith_sub_u32(var_0.b, 98036u), 0u, var_1.c.a)) >> (select(u_input.a.x, var_0.d.x, global0.x) % 32u));
    global0 = vec4<bool>(all(global0.xwy), false, true, func_3());
    var_0 = Struct_4(min(var_0.d.zz, var_0.a), u_input.a.x, Struct_1(true), ~u_input.a, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, global4.c.xx, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.x))), var_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-342f)) + _wgslsmith_f_op_f32(select(-811f, -112f, global0.x)))))));
}

