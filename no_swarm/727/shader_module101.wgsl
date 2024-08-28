struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: i32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: vec3<f32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_4, arg_1: u32, arg_2: Struct_2) -> Struct_4 {
    global1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, 490f) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1062f, arg_2.c.e, 108f), vec3<f32>(-834f, arg_2.a, 1189f), arg_0.b))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) - vec3<f32>(-2207f, 218f, 1172f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -129f, 1618f)), vec3<f32>(_wgslsmith_f_op_f32(round(global1.x)), global1.x, -935f))))));
    let var_0 = Struct_3(countOneBits(countOneBits(1i)));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.e) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.x, 138f))), global1.x)), _wgslsmith_div_f32(669f, arg_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1235f, -1446f)) - _wgslsmith_div_f32(global1.x, arg_2.a)))));
    var var_1 = !vec2<bool>(true, all(!select(arg_0.b.zy, vec2<bool>(arg_2.c.a.x, arg_0.b.x), arg_0.b.x)));
    let var_2 = Struct_2(198f, arg_2.b, arg_2.c);
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_4) -> u32 {
    let var_0 = Struct_1(select(select(arg_0.a, vec4<bool>(true, all(arg_2.b), true, any(vec2<bool>(true, true))), true), vec4<bool>(any(vec3<bool>(arg_0.a.x, false, arg_0.a.x)), arg_0.a.x, all(arg_2.b), false), !all(vec4<bool>(true, false, arg_0.a.x, true)) || arg_0.a.x), u_input.b, _wgslsmith_clamp_i32(arg_1.x, max(arg_1.x, arg_1.x), countOneBits(_wgslsmith_add_i32(2147483647i, max(arg_2.a, arg_1.x)))), arg_1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(arg_0.e)))))));
    global0 = array<Struct_2, 18>();
    let var_1 = Struct_3(-arg_1.x);
    global0 = array<Struct_2, 18>();
    var var_2 = global0[_wgslsmith_index_u32(63581u, 18u)];
    return ~(~u_input.d);
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_3 {
    global0 = array<Struct_2, 18>();
    let var_0 = vec2<i32>(abs(arg_0), -7640i);
    global0 = array<Struct_2, 18>();
    var var_1 = ~_wgslsmith_mod_u32(u_input.c, func_3(Struct_1(vec4<bool>(false, true, false, true), u_input.b, var_0.x, 2147483647i, 1254f), u_input.a.zz, func_2(Struct_4(30234i, vec3<bool>(false, false, true), u_input.c), u_input.c, global0[_wgslsmith_index_u32(u_input.c, 18u)]))) | 677u;
    var_1 = 1u;
    return Struct_3(select(~countOneBits(arg_0), u_input.b, true | (~var_0.x <= (0i >> (0u % 32u)))));
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> Struct_4 {
    global0 = array<Struct_2, 18>();
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(745f, _wgslsmith_f_op_f32(-227f + 219f), -672f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -344f))))));
    var var_1 = ~(~(-3420i));
    global1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-607f, global1.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(953f - global1.x))))));
    var_1 = i32(-1i) * -42214i;
    return Struct_4(arg_0.a, vec3<bool>(!((arg_1 <= 2147483647i) || (var_0.x >= 1000f)), all(vec2<bool>(true, true)), (true | select(false, true, true)) || true), ~(~u_input.e));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: f32) -> Struct_3 {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-505f, arg_1.b.e, global1.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, arg_1.c.e, 769f) * vec3<f32>(global1.x, arg_1.b.e, 958f))) * vec3<f32>(arg_1.c.e, _wgslsmith_f_op_f32(exp2(global1.x)), -573f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -254f, -1250f) * vec3<f32>(-1091f, arg_1.c.e, 101f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-307f, -485f, -235f)))))));
    global0 = array<Struct_2, 18>();
    var var_0 = global1.x;
    global0 = array<Struct_2, 18>();
    let var_1 = true;
    return Struct_3(43360i);
}

fn func_6(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: vec2<bool>, arg_3: Struct_3) -> Struct_2 {
    let var_0 = 1i;
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(645f, arg_1.x, arg_1.x, arg_1.x), vec4<f32>(-338f, arg_1.x, global1.x, -972f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, arg_1.x, 951f, 467f) * vec4<f32>(543f, arg_1.x, global1.x, -543f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-957f, arg_1.x, 1000f, global1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(964f, -1281f, 798f, -361f))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-416f))), 366f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1222f + -256f) + -1690f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.x)))))));
    var var_2 = reverseBits(~reverseBits(vec4<u32>(abs(u_input.c), _wgslsmith_mult_u32(0u, u_input.c), ~22063u, abs(u_input.c))));
    var_2 = reverseBits(min(~vec4<u32>(var_2.x ^ 16097u, u_input.c, firstTrailingBit(var_2.x), abs(97773u)), vec4<u32>(u_input.d, u_input.e, func_3(Struct_1(vec4<bool>(true, arg_2.x, false, true), var_0, 10129i, arg_3.a, global1.x), _wgslsmith_clamp_vec2_i32(u_input.a.yy, vec2<i32>(-5728i, 3062i), u_input.a.yx), func_2(Struct_4(-9640i, vec3<bool>(arg_2.x, false, false), 60380u), 62041u, global0[_wgslsmith_index_u32(11723u, 18u)])), var_2.x)));
    var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(336f, _wgslsmith_f_op_f32(f32(-1f) * -858f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f - arg_1.x))), 2524f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1000f, -735f, arg_1.x) + vec4<f32>(540f, arg_1.x, -838f, var_1.x))))))));
    return global0[_wgslsmith_index_u32(u_input.d, 18u)];
}

fn func_7(arg_0: bool, arg_1: Struct_2, arg_2: bool) -> Struct_4 {
    let var_0 = arg_1.c.a.yy;
    var var_1 = u_input.e;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.c.e, arg_1.c.e, -403f, global1.x), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(636f, arg_1.c.e, -159f, -496f))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c.e, global1.x, -1907f, global1.x) - vec4<f32>(-813f, global1.x, -456f, arg_1.a))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -321f)), -530f, _wgslsmith_div_f32(303f, _wgslsmith_f_op_f32(-arg_1.b.e)), _wgslsmith_f_op_f32(arg_1.c.e * _wgslsmith_f_op_f32(-global1.x)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1417f, arg_1.b.e, 253f, global1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(883f, arg_1.c.e, arg_1.a, arg_1.a)))))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(557f, -153f, _wgslsmith_f_op_f32(-442f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-103f * var_2.x))), arg_1.a));
    global0 = array<Struct_2, 18>();
    return Struct_4(-38631i, vec3<bool>(_wgslsmith_div_u32(u_input.c, u_input.e) >= abs(~0u), true, true && !(4294967295u == u_input.e)), max(firstLeadingBit(func_3(func_6(Struct_3(u_input.b), vec2<f32>(1182f, var_2.x), arg_1.c.a.wx, Struct_3(-1i)).b, firstLeadingBit(u_input.a.zx), func_4(Struct_3(arg_1.b.d), -2147483647i))), firstLeadingBit(~63061u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(floor(129f)), _wgslsmith_f_op_f32(f32(-1f) * -159f), global1.x), vec3<f32>(585f, global1.x, 955f)));
    global0 = array<Struct_2, 18>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 1357f) * global1.zx), global1.zz, false))))));
    let var_1 = func_7(any(vec2<bool>(true, true)), func_6(func_5(func_4(func_1(688i, 1016f), abs(u_input.b)), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(47104u, u_input.d), 18u)], func_4(func_1(u_input.a.x, global1.x), 1i).b.zz, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(302f, var_0.x, true))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.x, -644f), global1.xx)))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(func_2(Struct_4(u_input.a.x, vec3<bool>(false, true, false), u_input.c), u_input.e, Struct_2(-194f, Struct_1(vec4<bool>(false, false, false, false), u_input.a.x, 2147483647i, 2755i, global1.x), Struct_1(vec4<bool>(false, true, true, true), 24387i, 17345i, u_input.a.x, var_0.x))).b.x, select(true, false, false)), true), func_5(func_2(func_4(Struct_3(u_input.a.x), u_input.b), 581u << (u_input.e % 32u), Struct_2(-1351f, Struct_1(vec4<bool>(true, true, true, false), u_input.a.x, -61518i, u_input.a.x, var_0.x), Struct_1(vec4<bool>(false, false, true, false), 19286i, u_input.a.x, 115i, var_0.x))), global0[_wgslsmith_index_u32(u_input.d, 18u)], vec2<bool>(true, true), var_0.x)), func_2(func_4(Struct_3(func_2(Struct_4(29669i, vec3<bool>(false, true, false), 4294967295u), u_input.c, global0[_wgslsmith_index_u32(u_input.c, 18u)]).a), 32835i), 4294967295u, Struct_2(var_0.x, func_6(Struct_3(25756i), _wgslsmith_f_op_vec2_f32(global1.yy * var_0), vec2<bool>(true, true), Struct_3(1i)).b, Struct_1(vec4<bool>(true, true, true, true), u_input.b, ~48725i, u_input.b ^ 23301i, _wgslsmith_f_op_f32(-1515f - var_0.x)))).b.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(-global1.zz);
    let var_3 = var_1;
    let var_4 = global0[_wgslsmith_index_u32(~6585u, 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.x, var_4.a, var_2.x))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-920f, global1.x, -529f), vec3<f32>(344f, 1196f, -516f), false))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.c.e, -1000f, var_4.a) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -1223f, 524f) * vec3<f32>(var_2.x, global1.x, 1000f))) * _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_2.x, 150f), vec3<f32>(global1.x, global1.x, -603f))), !all(var_1.b) | (true && !var_1.b.x))), _wgslsmith_f_op_f32(-546f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(184f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1311f, 1218f, _wgslsmith_f_op_f32(-1220f * _wgslsmith_f_op_f32(min(global1.x, -567f))))), _wgslsmith_sub_i32(u_input.b, -2147483647i));
}

