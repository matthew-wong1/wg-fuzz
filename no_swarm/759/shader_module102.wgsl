struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: bool,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec4<f32>;

var<private> global2: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(vec3<f32>(232f, 1962f, 815f), vec4<u32>(53392u, 16650u, 0u, 1u), vec4<i32>(-1i, 1i, 25061i, 43061i)), Struct_3(vec3<f32>(-411f, 920f, 2296f), vec4<u32>(4294967295u, 0u, 0u, 36258u), vec4<i32>(-31487i, 2147483647i, 0i, -11590i)), Struct_3(vec3<f32>(1603f, -1285f, -1000f), vec4<u32>(0u, 0u, 1u, 0u), vec4<i32>(-31200i, i32(-2147483648), i32(-2147483648), -29445i)), Struct_3(vec3<f32>(-940f, -1174f, 326f), vec4<u32>(0u, 1u, 84167u, 4294967295u), vec4<i32>(2147483647i, -1i, -1i, 0i)), Struct_3(vec3<f32>(-2695f, -170f, 1528f), vec4<u32>(0u, 0u, 0u, 0u), vec4<i32>(0i, -1i, 46944i, -1i)), Struct_3(vec3<f32>(-782f, -1068f, -866f), vec4<u32>(1u, 7951u, 1u, 1u), vec4<i32>(25871i, 0i, 23587i, -39266i)), Struct_3(vec3<f32>(708f, 1575f, -1601f), vec4<u32>(1u, 1u, 1u, 1u), vec4<i32>(7725i, -17183i, 0i, -1i)), Struct_3(vec3<f32>(-791f, 1000f, -324f), vec4<u32>(0u, 23757u, 41722u, 4294967295u), vec4<i32>(-51821i, -21175i, -41780i, 0i)), Struct_3(vec3<f32>(-1721f, -1660f, -614f), vec4<u32>(4294967295u, 7121u, 38736u, 1u), vec4<i32>(-5421i, 1i, 1i, -10126i)), Struct_3(vec3<f32>(-1000f, 820f, -1000f), vec4<u32>(55548u, 4294967295u, 1u, 58753u), vec4<i32>(-2223i, -50456i, 1i, -1i)), Struct_3(vec3<f32>(960f, -978f, -308f), vec4<u32>(1u, 4294967295u, 18265u, 1u), vec4<i32>(17449i, -1i, 0i, -9918i)));

var<private> global3: array<vec4<bool>, 31>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<u32> {
    let var_0 = 38474i;
    var var_1 = global2[_wgslsmith_index_u32(~global0.x, 11u)];
    var var_2 = _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.x)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a.x))))));
    let var_3 = -462f;
    let var_4 = 0i;
    return firstTrailingBit(~(~(~_wgslsmith_mult_vec3_u32(var_1.b.wxx, var_1.b.wyz))));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: vec3<f32>, arg_3: vec4<i32>) -> Struct_1 {
    global0 = func_3();
    global0 = ~vec3<u32>(_wgslsmith_div_u32(4294967295u, global0.x), _wgslsmith_add_u32(_wgslsmith_clamp_u32(global0.x ^ 70001u, ~u_input.a, 4294967295u), 17073u), global0.x);
    global3 = array<vec4<bool>, 31>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global1.x, -180f), global1.x, _wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1015f)), _wgslsmith_div_vec4_f32(vec4<f32>(-733f, -669f, 1106f, arg_2.x), vec4<f32>(-1000f, 392f, -1000f, global1.x))))));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(~(vec4<u32>(u_input.a, 26686u, 83818u, 19235u) & ~vec4<u32>(1u, u_input.a, u_input.a, 4294967295u)), vec4<u32>(2982u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, u_input.b) ^ vec4<u32>(u_input.a, global0.x, u_input.a, 37484u), min(vec4<u32>(u_input.b, 37567u, 4294967295u, 15968u), vec4<u32>(1u, 36463u, u_input.a, 8553u))), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(global0.x, global0.x, global0.x)), vec3<u32>(global0.x, global0.x, 67335u) & vec3<u32>(27021u, global0.x, u_input.a)), 59256u)), vec4<u32>(_wgslsmith_mod_u32(1u, global0.x), u_input.a, 58181u, u_input.b)), 11u)];
    return Struct_1(-min(vec3<i32>(select(arg_1, -2147483647i, false), -26294i, 2147483647i), vec3<i32>(-2147483647i | var_1.c.x, u_input.d.x, arg_1 >> (global0.x % 32u))), abs(var_1.c.yzz), all(global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(var_1.b.x, 4294967295u), 31u)]), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)) + -504f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x * global1.x), var_1.a.x) + _wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_div_u32(min(0u, u_input.a & 1u), u_input.b));
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> vec4<f32> {
    global0 = (vec3<u32>(~arg_0.a.e, u_input.b, _wgslsmith_clamp_u32(4294967295u, 1u, ~arg_0.b)) ^ min(vec3<u32>(_wgslsmith_sub_u32(0u, 0u), select(0u, global0.x, true), 0u), ~(vec3<u32>(20496u, global0.x, u_input.a) & vec3<u32>(global0.x, global0.x, 1u)))) << (min(max(~vec3<u32>(u_input.a, global0.x, global0.x), vec3<u32>(global0.x, arg_0.a.e, 1u) | vec3<u32>(u_input.b, u_input.b, 1u)) >> (vec3<u32>(~global0.x, ~72038u, 0u) % vec3<u32>(32u)), abs(vec3<u32>(u_input.b, global0.x, 0u)) ^ ~max(vec3<u32>(global0.x, 99595u, arg_0.b), vec3<u32>(58378u, 3930u, 20603u))) % vec3<u32>(32u));
    global2 = array<Struct_3, 11>();
    global0 = _wgslsmith_div_vec3_u32(~vec3<u32>(71472u, (global0.x >> (62594u % 32u)) & ~arg_0.a.e, global0.x), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.b & 26158u, 1u, global0.x), select(max(vec3<u32>(arg_0.b, 0u, 0u) ^ vec3<u32>(15908u, arg_0.a.e, 32172u), vec3<u32>(19890u, arg_0.b, u_input.a) | vec3<u32>(4294967295u, arg_0.a.e, arg_0.b)), _wgslsmith_div_vec3_u32(vec3<u32>(14855u, global0.x, arg_0.a.e) >> (vec3<u32>(global0.x, 1u, u_input.a) % vec3<u32>(32u)), ~vec3<u32>(arg_0.a.e, arg_0.a.e, arg_0.a.e)), any(!vec2<bool>(arg_1, arg_1)))));
    global3 = array<vec4<bool>, 31>();
    var var_0 = -_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(0i, -2617i) & vec2<i32>(0i, arg_0.a.b.x), ~u_input.c.yz), select(_wgslsmith_div_vec2_i32(vec2<i32>(23372i, 3148i), u_input.c.xy), u_input.d.xx, vec2<bool>(arg_1, arg_1))) | 2147483647i;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(509f, global1.x, global1.x, arg_0.a.d))))) + vec4<f32>(arg_0.a.d, _wgslsmith_f_op_f32(-arg_0.a.d), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(f32(-1f) * -525f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.d, global1.x, 1020f, global1.x) - vec4<f32>(global1.x, -960f, -221f, arg_0.a.d)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -826f, global1.x, global1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.d, arg_0.a.d, -1372f, 1000f)))))));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: Struct_2, arg_3: vec2<i32>) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_4(Struct_2(func_2(vec4<i32>(arg_3.x, -31150i, u_input.d.x, arg_3.x), -1i, global1.zww, vec4<i32>(4616i, arg_3.x, u_input.c.x, arg_3.x)), arg_2.b << (arg_2.a.e % 32u)), !(!arg_2.a.c))))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-755f, 1000f, -690f, arg_2.a.d))) - _wgslsmith_f_op_vec4_f32(func_4(Struct_2(arg_2.a, 0u), false))))));
    var var_0 = global2[_wgslsmith_index_u32(~(~0u), 11u)];
    var var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(arg_2.a.a.x, var_0.c.x, u_input.c.x, 4595i) ^ vec4<i32>(0i, arg_2.a.b.x, 19186i, -2147483647i)), ~(~var_0.c), firstTrailingBit(vec4<i32>(var_0.c.x, u_input.d.x, 1i, arg_3.x)) | var_0.c), vec4<i32>(~countOneBits(0i), firstLeadingBit(_wgslsmith_clamp_i32(u_input.d.x, u_input.d.x, 3761i)), u_input.d.x, arg_2.a.a.x)), -var_0.c.x & 6484i);
    let var_2 = ~(_wgslsmith_sub_i32(1i, _wgslsmith_div_i32(arg_3.x, arg_2.a.a.x)) << (1u % 32u)) & -2147483647i;
    var_0 = Struct_3(var_0.a, var_0.b, min((vec4<i32>(-2147483647i, var_2, -1i, 2147483647i) & var_0.c) | vec4<i32>(-2147483647i, 12650i, 22159i, 17981i), _wgslsmith_mod_vec4_i32(var_0.c, vec4<i32>(-1i, arg_3.x, 21204i, 1i) >> (vec4<u32>(31228u, global0.x, arg_0, u_input.b) % vec4<u32>(32u)))) << (_wgslsmith_mult_vec4_u32(var_0.b, vec4<u32>(_wgslsmith_mult_u32(54624u, arg_2.b), 88697u, 59228u, ~arg_2.a.e)) % vec4<u32>(32u)));
    return arg_2.a;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec2<bool>) -> Struct_1 {
    global2 = array<Struct_3, 11>();
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.a.x * _wgslsmith_f_op_f32(f32(-1f) * -1025f)))), _wgslsmith_f_op_f32(ceil(arg_2.a.x)), -1470f, 1190f));
    let var_0 = -1117f;
    var var_1 = arg_3.x && func_1(25649u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - arg_1.a.d))), Struct_2(arg_1.a, func_2(arg_2.c, -19449i, global1.xyy, arg_2.c).e & _wgslsmith_dot_vec4_u32(arg_2.b, arg_2.b)), _wgslsmith_mod_vec2_i32(arg_1.a.b.xx, abs(-arg_2.c.ww))).c;
    var var_2 = arg_1.a;
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_5(_wgslsmith_sub_vec3_u32(~max(vec3<u32>(u_input.b, 23386u, global0.x), vec3<u32>(u_input.b, global0.x, 0u)), _wgslsmith_mult_vec3_u32(vec3<u32>(75325u, global0.x, u_input.b), vec3<u32>(global0.x, 1u, global0.x))), Struct_2(func_1(4294967295u, -638f, Struct_2(Struct_1(u_input.d, u_input.d, false, global1.x, u_input.a), u_input.a), vec2<i32>(u_input.c.x, -54009i)), ~func_2(vec4<i32>(u_input.c.x, 52272i, u_input.c.x, u_input.d.x), u_input.d.x, global1.xwx, vec4<i32>(-1i, -1i, 2147483647i, u_input.c.x)).e), global2[_wgslsmith_index_u32(u_input.b & 0u, 11u)], vec2<bool>(true, any(vec4<bool>(true, false, true, false)))), _wgslsmith_div_u32(func_1(0u | _wgslsmith_sub_u32(global0.x, 1u), _wgslsmith_f_op_f32(round(-2226f)), Struct_2(func_1(global0.x, -526f, Struct_2(Struct_1(u_input.c, vec3<i32>(u_input.d.x, u_input.d.x, u_input.c.x), false, global1.x, u_input.b), global0.x), vec2<i32>(u_input.d.x, u_input.d.x)), ~u_input.a), u_input.d.yz).e, u_input.a));
    var var_1 = global1.yy;
    global2 = array<Struct_3, 11>();
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-905f, var_0.a.d)), global1.ww, !vec2<bool>(true, var_0.a.c))) + global1.ww))));
    var var_2 = !global3[_wgslsmith_index_u32(func_3().x, 31u)];
    var var_3 = ~_wgslsmith_add_u32(var_0.a.e, countOneBits(u_input.b) ^ (func_1(u_input.a, 1125f, var_0, vec2<i32>(2147483647i, var_0.a.a.x)).e & u_input.a));
    let var_4 = (true && any(vec4<bool>(!var_0.a.c, var_2.x, false, true))) && all(!select(vec2<bool>(true, true), vec2<bool>(var_2.x, var_0.a.c), var_2.wy));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, 0i, u_input.c.x, 1i), vec4<i32>(1i, -10221i, u_input.d.x, -25042i)), -vec4<i32>(1110i, u_input.c.x, u_input.c.x, u_input.c.x)), _wgslsmith_div_vec4_i32(-vec4<i32>(-26675i, -20981i, 6188i, var_0.a.b.x), vec4<i32>(u_input.c.x, 10894i, u_input.d.x, 2147483647i))) & (i32(-1i) * -u_input.c.x), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(f32(-1f) * -381f)), var_0.a.d, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.x + 2032f), global1.x, true)), _wgslsmith_f_op_f32(-global1.x)))), vec4<f32>(var_0.a.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -801f))), var_1.x, func_1(global0.x, _wgslsmith_f_op_f32(min(var_0.a.d, 1000f)), Struct_2(var_0.a, ~var_0.b), -_wgslsmith_div_vec2_i32(var_0.a.b.xz, vec2<i32>(48341i, var_0.a.a.x))).d));
}

