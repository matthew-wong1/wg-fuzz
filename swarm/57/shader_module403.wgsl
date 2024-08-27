struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: array<vec3<u32>, 11>;

var<private> global2: array<vec2<u32>, 13> = array<vec2<u32>, 13>(vec2<u32>(29495u, 3048u), vec2<u32>(14656u, 18044u), vec2<u32>(12714u, 102265u), vec2<u32>(73756u, 38034u), vec2<u32>(37294u, 4294967295u), vec2<u32>(58285u, 22910u), vec2<u32>(34777u, 4294967295u), vec2<u32>(22858u, 75465u), vec2<u32>(1u, 0u), vec2<u32>(52885u, 4294967295u), vec2<u32>(4294967295u, 40035u), vec2<u32>(21688u, 4294967295u), vec2<u32>(1u, 603u));

var<private> global3: array<vec4<bool>, 19> = array<vec4<bool>, 19>(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: u32) -> u32 {
    global3 = array<vec4<bool>, 19>();
    global2 = array<vec2<u32>, 13>();
    global3 = array<vec4<bool>, 19>();
    let var_0 = arg_0;
    global0 = !vec2<bool>(!global0.x, false);
    return arg_0.e;
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: f32) -> vec4<f32> {
    global0 = !vec2<bool>(global0.x, u_input.a.x >= _wgslsmith_dot_vec2_i32(-u_input.a.wx, vec2<i32>(u_input.a.x, u_input.e)));
    global2 = array<vec2<u32>, 13>();
    var var_0 = Struct_1(279f, _wgslsmith_f_op_f32(f32(-1f) * -237f), any(!select(vec2<bool>(arg_1, true), select(vec2<bool>(arg_1, global0.x), vec2<bool>(true, true), arg_1), global0.x)), ~arg_0.x >= select(~4294967295u, 55749u, 290f != _wgslsmith_div_f32(arg_2, arg_2)), ~(~func_3(Struct_1(arg_2, 612f, true, false, 7527u), vec4<i32>(u_input.a.x, 12911i, 2147483647i, u_input.a.x), ~arg_0.x)));
    global1 = array<vec3<u32>, 11>();
    let var_1 = u_input.a;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(max(arg_2, arg_2)), -1000f, _wgslsmith_f_op_f32(floor(arg_2)), 145f))) * vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -877f))), -946f, _wgslsmith_f_op_f32(round(var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, 119f, -881f, var_0.a)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a, -848f, var_0.b, arg_2)))))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_2(max(reverseBits(vec4<u32>(u_input.d, 41525u >> (u_input.c % 32u), firstTrailingBit(u_input.d), _wgslsmith_clamp_u32(2038u, u_input.d, 4294967295u))), vec4<u32>(1u, abs(u_input.d), u_input.d, u_input.d)), false, 279f));
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(10335i, 2147483647i, u_input.a.x), max(abs(~firstLeadingBit(vec3<i32>(u_input.e, u_input.e, 10738i))), _wgslsmith_mod_vec3_i32(~(-vec3<i32>(u_input.e, -2147483647i, -1084i)), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 0i, 1i), _wgslsmith_div_vec3_i32(vec3<i32>(44049i, u_input.e, 0i), vec3<i32>(u_input.e, u_input.a.x, u_input.e))))));
    var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, 674f, _wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(-813f + var_0.x))))))));
    var var_2 = -vec2<i32>(11671i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.a.x, u_input.e) << (~0u % 32u), u_input.e));
    let var_3 = vec4<u32>(_wgslsmith_div_u32(~u_input.d << (47053u % 32u), _wgslsmith_mult_u32(u_input.c << (u_input.c % 32u), ~9547u)), u_input.b << (u_input.c % 32u), u_input.c, ~_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(0u, 13u)], vec2<u32>(2370u, 75742u)) >> (4294967295u % 32u)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.b & 24788u, 0u), ~(~u_input.b), 1u, min(63969u, u_input.b ^ 18014u)), vec4<u32>(~select(u_input.d, 31081u, global0.x), u_input.c, _wgslsmith_add_u32(~u_input.d, u_input.d), u_input.d), select(select(vec4<u32>(u_input.d, 27329u, 0u, u_input.c) >> (vec4<u32>(u_input.d, 42502u, u_input.d, u_input.b) % vec4<u32>(32u)), vec4<u32>(0u, u_input.c, u_input.c, 22829u), select(global3[_wgslsmith_index_u32(0u, 19u)], global3[_wgslsmith_index_u32(u_input.d, 19u)], global3[_wgslsmith_index_u32(u_input.b, 19u)])), vec4<u32>(abs(u_input.d), 19742u, ~u_input.b, u_input.d ^ 1u), !(u_input.a.x < u_input.e)));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1271f * _wgslsmith_f_op_vec4_f32(func_2(vec4<u32>(u_input.c, 1u, 17980u, 0u), true, var_0.x)).x), _wgslsmith_f_op_f32(min(-675f, _wgslsmith_f_op_f32(trunc(var_0.x)))))), var_0.x, any(vec2<bool>(~u_input.a.x < 8371i, global0.x)), !all(select(select(vec2<bool>(true, false), vec2<bool>(global0.x, true), false), select(vec2<bool>(false, global0.x), vec2<bool>(false, true), vec2<bool>(global0.x, global0.x)), true)), _wgslsmith_mult_u32(~firstTrailingBit(var_3.x), ~10392u));
}

fn func_4(arg_0: Struct_1) -> u32 {
    global1 = array<vec3<u32>, 11>();
    var var_0 = vec3<bool>(!arg_0.d, any(!select(global3[_wgslsmith_index_u32(u_input.c, 19u)], select(vec4<bool>(arg_0.d, false, true, false), vec4<bool>(arg_0.c, false, arg_0.d, global0.x), true), arg_0.d)), true);
    global1 = array<vec3<u32>, 11>();
    let var_1 = Struct_1(arg_0.a, 1596f, any(vec2<bool>(func_1().d, all(!vec3<bool>(false, arg_0.d, true)))), select(false, global0.x, !var_0.x), max(66546u, ~u_input.d));
    global0 = vec2<bool>(arg_0.c, false);
    return u_input.d << (var_1.e % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!(!(!vec4<bool>(false, global0.x, false, false)))));
    var var_1 = global3[_wgslsmith_index_u32(func_4(func_1()), 19u)];
    let var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec4_f32(func_2(abs(vec4<u32>(u_input.b, 4294967295u, 1u, u_input.d) ^ vec4<u32>(u_input.c, u_input.c, u_input.b, u_input.c)) << (firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(51352u, u_input.c, u_input.d, 0u), vec4<u32>(1u, u_input.b, 58895u, 1u))) % vec4<u32>(32u)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)))).yz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(621f, 1752f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, 1f), vec2<f32>(-929f, 1723f))) * vec2<f32>(_wgslsmith_f_op_f32(trunc(-1693f)), -860f)))));
    let var_3 = func_1();
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(~vec4<u32>(4294967295u, 1u, var_3.e, 14166u), true, _wgslsmith_f_op_f32(min(var_3.a, -116f)))).x))), var_3.a);
    let var_5 = u_input.e;
    let var_6 = Struct_1(var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1453f)), _wgslsmith_f_op_f32(trunc(-594f))), !func_1().c, all(vec3<bool>(any(var_0), var_0.x, !var_1.x)) & false, _wgslsmith_dot_vec3_u32(select(global1[_wgslsmith_index_u32(1u, 11u)], firstTrailingBit(~vec3<u32>(var_3.e, 58822u, u_input.c)), select(!var_1.zyz, vec3<bool>(var_1.x, false, false), select(true, global0.x, true))), _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, u_input.d), 11u)], ~global1[_wgslsmith_index_u32(1u, 11u)]), global1[_wgslsmith_index_u32(0u, 11u)])));
    var var_7 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_6.a, var_3.a, 391f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.x, 200f, var_6.b))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-208f, var_6.b, var_6.b) + vec3<f32>(var_6.b, -373f, var_4.x)), var_0.x)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_6.b) - var_2.x), func_1().b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b) * -255f))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(690f, var_6.b, var_3.b)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.e, vec2<f32>(_wgslsmith_f_op_f32(-var_4.x), var_7.x), u_input.a.xw, select(firstTrailingBit(0u), var_6.e, global0.x), -_wgslsmith_dot_vec3_i32(max(-vec3<i32>(var_5, 29855i, u_input.e), vec3<i32>(17398i, 1i, var_5)), u_input.a.wyw ^ vec3<i32>(-7565i, var_5, u_input.a.x)));
}

