struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-400f, -222f);

var<private> global1: vec3<i32> = vec3<i32>(0i, -3565i, 53365i);

var<private> global2: array<f32, 20>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3) -> vec3<bool> {
    var var_0 = (_wgslsmith_mod_u32(1u, ~(u_input.c.x >> (u_input.c.x % 32u))) != _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.c, ~u_input.c), select(u_input.c, ~vec3<u32>(u_input.c.x, 1u, u_input.c.x), select(vec3<bool>(arg_2.d.b, true, arg_2.e), vec3<bool>(false, arg_1.c.x, arg_1.e), true)))) || (1u == abs(u_input.c.x));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(-arg_2.d.a.x)) - arg_1.d.a.yy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.d.a.yz - _wgslsmith_f_op_vec2_f32(min(arg_2.d.a.xz, vec2<f32>(1034f, 1165f))))))) * arg_1.d.a.xy);
    var var_1 = -1000f;
    var var_2 = Struct_4(21043u, Struct_1(vec3<f32>(global0.x, _wgslsmith_f_op_f32(arg_1.d.d + _wgslsmith_f_op_f32(471f + -1000f)), -737f), arg_2.a, vec3<bool>(true, arg_1.e, select(any(arg_1.d.c), true, global1.x <= -39248i)), -966f));
    let var_3 = u_input.c;
    return vec3<bool>(true, !(!(!(arg_2.d.c.x & false))), !(!(!(arg_1.a || false))));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: Struct_3) -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(step(-622f, arg_2.d.a.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(215f)))), 438f) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -499f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - 730f)), arg_1.b.a.x)), arg_2.e, vec3<bool>(4294967295u <= abs(arg_1.a), select(true, arg_2.d.c.x, true), false), _wgslsmith_div_f32(arg_2.d.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.a.x) * global0.x), _wgslsmith_f_op_f32(-global0.x))));
    let var_1 = arg_1.b.c.xz;
    let var_2 = select(select(arg_1.b.c, arg_2.d.c, var_0.c), vec3<bool>(_wgslsmith_f_op_f32(floor(1000f)) >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(-150f, 295f) + -1391f), true, true), vec3<bool>(abs(arg_1.a) <= ~38400u, var_0.b | all(vec3<bool>(true, arg_2.a, true)), false));
    var var_3 = _wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.c.x, 20u)], -1177f);
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1298f, 755f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1875f)), var_0.a.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(arg_1.b.a - vec3<f32>(arg_1.b.a.x, 855f, 436f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, global0.x, arg_1.b.a.x) - vec3<f32>(310f, global2[_wgslsmith_index_u32(1u, 20u)], 259f)))), _wgslsmith_div_vec3_f32(arg_2.d.a, arg_1.b.a)), false)), any(arg_2.c), arg_2.c.yzz, -1423f);
    return u_input.c;
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: vec3<f32>) -> Struct_4 {
    global1 = vec3<i32>(_wgslsmith_sub_i32(arg_1, arg_1), firstLeadingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-53975i, global1.x), global1.xy), u_input.b.ww)), u_input.b.x) >> (func_4(1u, Struct_4(~arg_0.x, Struct_1(_wgslsmith_f_op_vec3_f32(floor(arg_2)), true, func_3(886f, Struct_3(true, Struct_2(vec3<i32>(arg_1, 76705i, u_input.b.x)), vec4<bool>(true, false, false, false), Struct_1(arg_2, false, vec3<bool>(false, true, false), -682f), true), Struct_3(true, Struct_2(u_input.b.wzz), vec4<bool>(true, true, true, false), Struct_1(arg_2, false, vec3<bool>(true, false, true), global0.x), false)), -500f)), Struct_3(true, Struct_2(vec3<i32>(global1.x, global1.x, -1i)), vec4<bool>(any(vec2<bool>(true, true)), false, true, true), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global0.x, global0.x) + vec3<f32>(836f, arg_2.x, arg_2.x)), true, select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), 1766f), 0u != ~arg_0.x)) % vec3<u32>(32u));
    var var_0 = _wgslsmith_div_vec2_i32(u_input.a.xy, u_input.b.xy);
    var var_1 = select(all(func_3(arg_2.x, Struct_3(false, Struct_2(vec3<i32>(-1i, -22572i, -52443i)), vec4<bool>(false, false, false, false), Struct_1(vec3<f32>(global2[_wgslsmith_index_u32(5233u, 20u)], global2[_wgslsmith_index_u32(46523u, 20u)], 1000f), true, vec3<bool>(true, false, true), -620f), true), Struct_3(false, Struct_2(vec3<i32>(-1i, arg_1, 0i)), vec4<bool>(true, false, false, true), Struct_1(arg_2, true, vec3<bool>(true, false, true), -1008f), false)).zy), !func_3(_wgslsmith_f_op_f32(abs(1000f)), Struct_3(true, Struct_2(u_input.b.zww), vec4<bool>(false, true, false, false), Struct_1(vec3<f32>(arg_2.x, 724f, 272f), false, vec3<bool>(false, false, true), global2[_wgslsmith_index_u32(1u, 20u)]), false), Struct_3(true, Struct_2(vec3<i32>(11524i, u_input.d, 2718i)), vec4<bool>(false, true, true, false), Struct_1(vec3<f32>(global0.x, -100f, 2359f), true, vec3<bool>(true, true, true), global0.x), true)).x, true) || false;
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(arg_2 * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(621f * -1910f), _wgslsmith_f_op_f32(trunc(-1000f))), -447f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -335f), _wgslsmith_div_f32(1000f, global0.x))))));
    global1 = vec3<i32>(_wgslsmith_div_i32(-2147483647i, -arg_1), u_input.a.x, -global1.x);
    return Struct_4(4294967295u, Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(var_2)))), (firstLeadingBit(u_input.b.x) >= _wgslsmith_mult_i32(arg_1, 0i)) && (false == any(vec4<bool>(false, false, true, true))), vec3<bool>(!all(vec2<bool>(true, false)), arg_0.x < (u_input.c.x | arg_0.x), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(853f - _wgslsmith_f_op_f32(arg_2.x - arg_2.x)))));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: Struct_2) -> vec2<f32> {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(sign(arg_1.b.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1149f, arg_1.b.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.b.a.x)))));
    var var_0 = 0u;
    global1 = vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(2147483647i, arg_0.x), vec2<i32>(abs(u_input.d), firstLeadingBit(arg_0.x))), arg_0), 21262i, -1i);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b.a.x), -936f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_1.b.a.zy))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_1.b.a.yx)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_1.b.a.xz, vec2<f32>(arg_1.b.a.x, global0.x), arg_1.b.c.xx)))))));
    return arg_1.b.a.yy;
}

fn func_1(arg_0: vec3<u32>) -> vec2<bool> {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), vec2<f32>(global2[_wgslsmith_index_u32(45042u, 20u)], -355f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1000f))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(126f, global2[_wgslsmith_index_u32(u_input.c.x, 20u)])))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(u_input.b.yy & vec2<i32>(1i, u_input.a.x), func_2(arg_0, 0i, vec3<f32>(global2[_wgslsmith_index_u32(43058u, 20u)], global0.x, -867f)), Struct_2(u_input.a))) + vec2<f32>(_wgslsmith_f_op_f32(909f * 495f), global0.x)), vec2<bool>(any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false))), !select(true, false, true)))));
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-855f, global2[_wgslsmith_index_u32(0u, 20u)], global0.x) - vec3<f32>(global2[_wgslsmith_index_u32(68292u, 20u)], global2[_wgslsmith_index_u32(arg_0.x, 20u)], global2[_wgslsmith_index_u32(u_input.c.x, 20u)])), _wgslsmith_div_vec3_f32(vec3<f32>(-1290f, global2[_wgslsmith_index_u32(arg_0.x, 20u)], 164f), vec3<f32>(-129f, -1105f, global0.x))) + vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(12096u, 20u)] + global2[_wgslsmith_index_u32(u_input.c.x, 20u)]), 900f)), vec3<f32>(-1089f, -546f, _wgslsmith_f_op_f32(ceil(-1210f))))), func_2(u_input.c, -1i, vec3<f32>(_wgslsmith_f_op_f32(1000f * global2[_wgslsmith_index_u32(19734u, 20u)]), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 20u)] + global0.x)), _wgslsmith_f_op_f32(-global0.x))).b.c.x, vec3<bool>(func_3(_wgslsmith_f_op_f32(-global0.x), Struct_3(true, Struct_2(u_input.a), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), false), func_2(arg_0, global1.x, vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(0u, 20u)], -493f)).b, true), Struct_3(true, Struct_2(vec3<i32>(0i, -1i, 76762i)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true)), func_2(u_input.c, 11735i, vec3<f32>(1000f, global0.x, 1190f)).b, true)).x, false, true), global0.x);
    let var_1 = ~(~_wgslsmith_dot_vec2_i32(~(~u_input.a.zx), -abs(global1.yy)));
    global2 = array<f32, 20>();
    var_0 = func_2(select(vec3<u32>(~_wgslsmith_mult_u32(1u, 4294967295u), arg_0.x, _wgslsmith_dot_vec2_u32(arg_0.zx | vec2<u32>(arg_0.x, 3689u), firstTrailingBit(vec2<u32>(40101u, arg_0.x)))), max(_wgslsmith_clamp_vec3_u32(~u_input.c, vec3<u32>(0u, arg_0.x, 0u), arg_0), _wgslsmith_div_vec3_u32(abs(vec3<u32>(arg_0.x, arg_0.x, u_input.c.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 25004u), arg_0))), vec3<bool>(any(func_3(global0.x, Struct_3(false, Struct_2(vec3<i32>(u_input.b.x, u_input.d, global1.x)), vec4<bool>(true, true, var_0.c.x, false), Struct_1(vec3<f32>(-1345f, var_0.a.x, global0.x), true, vec3<bool>(true, var_0.c.x, var_0.b), global2[_wgslsmith_index_u32(u_input.c.x, 20u)]), true), Struct_3(true, Struct_2(u_input.b.zyz), vec4<bool>(var_0.c.x, false, true, true), Struct_1(var_0.a, true, vec3<bool>(var_0.c.x, true, var_0.b), -933f), true))), func_3(-621f, Struct_3(var_0.c.x, Struct_2(vec3<i32>(-1i, -2147483647i, global1.x)), vec4<bool>(var_0.c.x, var_0.b, var_0.c.x, true), Struct_1(vec3<f32>(global0.x, var_0.d, global2[_wgslsmith_index_u32(arg_0.x, 20u)]), false, vec3<bool>(var_0.b, var_0.c.x, var_0.c.x), 1897f), true), Struct_3(true, Struct_2(u_input.a), vec4<bool>(true, var_0.b, var_0.c.x, false), Struct_1(vec3<f32>(-176f, 1610f, 291f), false, vec3<bool>(false, true, false), 2487f), false)).x, (-25771i > global1.x) && any(vec2<bool>(var_0.b, false)))), -31598i, _wgslsmith_f_op_vec3_f32(var_0.a + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1348f, global2[_wgslsmith_index_u32(4294967295u, 20u)], -101f) + vec3<f32>(-880f, 862f, -433f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-444f, global2[_wgslsmith_index_u32(4294967295u, 20u)], 518f) - vec3<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 20u)], 2733f, -534f)), 14493u <= arg_0.x))))).b;
    return !select(var_0.c.yy, var_0.c.yz, true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 20>();
    let var_0 = select(!func_1((vec3<u32>(u_input.c.x, 0u, u_input.c.x) >> (u_input.c % vec3<u32>(32u))) ^ u_input.c), func_2(~_wgslsmith_div_vec3_u32(u_input.c ^ vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, 42627u, u_input.c.x)), ~_wgslsmith_clamp_i32(firstTrailingBit(u_input.d), -u_input.b.x, u_input.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(859f, global2[_wgslsmith_index_u32(31781u, 20u)], -386f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(3543u, 20u)], global2[_wgslsmith_index_u32(u_input.c.x, 20u)], global2[_wgslsmith_index_u32(1u, 20u)])))) + vec3<f32>(-1191f, _wgslsmith_f_op_f32(-1339f * global2[_wgslsmith_index_u32(33280u, 20u)]), -797f))).b.c.zx, _wgslsmith_add_u32(u_input.c.x, ~47123u) < 14497u);
    global2 = array<f32, 20>();
    global1 = max(~u_input.b.yxy, vec3<i32>(global1.x, reverseBits(global1.x), global1.x));
    let var_1 = _wgslsmith_div_i32(-10530i, u_input.b.x);
    var var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.x, min(vec3<i32>(37731i, u_input.d, _wgslsmith_dot_vec2_i32(-vec2<i32>(18188i, u_input.a.x), global1.xz)), _wgslsmith_mod_vec3_i32(u_input.b.xwz, vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.b.yzy, u_input.a), 34756i, 0i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(117f, global0.x, 152f))))), vec3<u32>(firstTrailingBit(abs(reverseBits(1712u))), 41056u, ~76947u), -962f);
}

