struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31>;

var<private> global1: vec4<f32>;

var<private> global2: array<vec3<f32>, 11>;

var<private> global3: Struct_2 = Struct_2(vec2<u32>(4989u, 14494u));

var<private> global4: array<vec2<f32>, 23> = array<vec2<f32>, 23>(vec2<f32>(-457f, -383f), vec2<f32>(365f, 377f), vec2<f32>(-2073f, -420f), vec2<f32>(258f, 300f), vec2<f32>(1366f, -625f), vec2<f32>(-552f, -910f), vec2<f32>(-1125f, -817f), vec2<f32>(491f, 889f), vec2<f32>(-1392f, -529f), vec2<f32>(673f, 1424f), vec2<f32>(-126f, 1565f), vec2<f32>(-327f, 323f), vec2<f32>(-453f, 1249f), vec2<f32>(-653f, 546f), vec2<f32>(371f, -444f), vec2<f32>(-1640f, -792f), vec2<f32>(-1525f, 890f), vec2<f32>(1526f, -838f), vec2<f32>(-1224f, -1042f), vec2<f32>(-1029f, 1000f), vec2<f32>(1000f, -1122f), vec2<f32>(502f, 339f), vec2<f32>(1000f, -1009f));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(503f, 886f, global1.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, _wgslsmith_div_f32(global1.x, -179f)) * _wgslsmith_f_op_vec3_f32(global1.wzw * global1.wxz)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.x, global1.x, global1.x), _wgslsmith_f_op_vec3_f32(global1.ywx + vec3<f32>(global1.x, global1.x, global1.x)))) + global2[_wgslsmith_index_u32(u_input.c, 11u)])), !vec3<bool>(!any(vec2<bool>(false, true)), true, true)));
    global0 = array<Struct_2, 31>();
    var var_1 = !select(vec4<bool>(select(true, all(vec2<bool>(true, true)), true), !all(vec3<bool>(true, false, true)), true, true), !vec4<bool>(true, any(vec3<bool>(true, true, true)), all(vec2<bool>(false, false)), true), !vec4<bool>(all(vec2<bool>(true, true)), true, true, true));
    global3 = global0[_wgslsmith_index_u32(39148u, 31u)];
    global3 = Struct_2(vec2<u32>(_wgslsmith_sub_u32(~1u, 56630u), global3.a.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(-1000f - global1.x))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(205f * var_0.x)));
}

fn func_2() -> Struct_1 {
    global1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1109f - global1.x)) + 1f), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-1424f - _wgslsmith_f_op_f32(round(global1.x)))), global1.x)), -986f);
    let var_0 = Struct_1(global1.x, 1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global1.x + -829f), _wgslsmith_f_op_f32(f32(-1f) * -328f), global1.x, _wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-579f, global1.x, global1.x), _wgslsmith_f_op_vec3_f32(-global1.xyx)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.x, global1.x, -953f)))))), vec3<u32>(((u_input.b.x | 5841u) << (_wgslsmith_mult_u32(global3.a.x, u_input.b.x) % 32u)) ^ 1u, 27750u, (~u_input.d << ((global3.a.x << (4294967295u % 32u)) % 32u)) | ~global3.a.x));
    let var_1 = var_0.e.zx & vec2<u32>(~_wgslsmith_dot_vec3_u32(u_input.b & vec3<u32>(0u, global3.a.x, 1u), var_0.e), 0u << (~reverseBits(var_0.b) % 32u));
    let var_2 = _wgslsmith_mod_u32(13640u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a, 1u, _wgslsmith_mod_u32(global3.a.x, var_0.b), select(35390u, 1u, true))), vec4<u32>(abs(abs(1u)), u_input.b.x, var_0.b, 0u)));
    let var_3 = vec4<i32>(u_input.e, u_input.e, -22953i, -_wgslsmith_sub_i32(~0i, ~2147483647i)) & vec4<i32>(u_input.e, 33497i, _wgslsmith_dot_vec2_i32(-firstLeadingBit(vec2<i32>(64800i, u_input.e)), vec2<i32>(reverseBits(u_input.e), _wgslsmith_div_i32(u_input.e, 1i))), -1i);
    return Struct_1(_wgslsmith_f_op_f32(-1251f + _wgslsmith_f_op_f32(trunc(-422f))), firstLeadingBit(~(~u_input.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, var_0.d.x, var_0.c.x, -353f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(616f, _wgslsmith_f_op_f32(225f - global1.x), _wgslsmith_f_op_f32(max(global1.x, global1.x)), -751f) * var_0.c)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.d)), _wgslsmith_f_op_vec3_f32(ceil(var_0.d)))), ~(~(vec3<u32>(68079u, 0u, 23531u) << (var_0.e % vec3<u32>(32u)))) ^ _wgslsmith_mult_vec3_u32((vec3<u32>(var_1.x, 76944u, global3.a.x) | var_0.e) >> (vec3<u32>(1u, 0u, 23958u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(u_input.b, vec3<u32>(u_input.a, var_0.b, var_2) >> (var_0.e % vec3<u32>(32u)), vec3<u32>(var_2, 31026u, var_0.e.x))));
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> Struct_1 {
    let var_0 = (u_input.e <= u_input.e) & (arg_0.e.a == arg_0.c.d.x);
    global2 = array<vec3<f32>, 11>();
    var var_1 = vec2<bool>(true, true);
    global2 = array<vec3<f32>, 11>();
    var_1 = select(select(vec2<bool>(false, all(select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(var_0, arg_1, arg_1, true), false))), select(!vec2<bool>(false, arg_1), select(!vec2<bool>(arg_1, true), vec2<bool>(true, true), !vec2<bool>(arg_1, false)), vec2<bool>(true & arg_1, !var_1.x)), !var_1.x), !(!select(vec2<bool>(true, var_0), !vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, false))), vec2<bool>(true, true));
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -295f), 1u, _wgslsmith_f_op_vec4_f32(arg_0.a.c * arg_0.c.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.e.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.c.d.x, 208f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.c.d.x, -322f)) + _wgslsmith_f_op_f32(-arg_0.c.c.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e.a, _wgslsmith_f_op_f32(-global1.x), global1.x))), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, 12633u)), ~u_input.b.xy), arg_0.e.b), max(~global3.a.x, u_input.b.x), 4294967295u));
}

fn func_1() -> vec4<u32> {
    var var_0 = func_4(Struct_3(Struct_1(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(global1.x - global1.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), global3.a) | global3.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-2651f, global1.x, global1.x, global1.x), vec4<f32>(global1.x, -1728f, global1.x, 1722f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(968f, global1.x, global1.x, 947f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.x, 2250f, global1.x)))), ~vec3<u32>(1u, 0u, 10503u) << (vec3<u32>(38983u, global3.a.x, 2259u) % vec3<u32>(32u))), global0[_wgslsmith_index_u32(~1u, 31u)], func_2(), ~(4294967295u << (_wgslsmith_add_u32(39377u, u_input.d) % 32u)), func_2()), any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, false))), vec3<bool>(all(vec2<bool>(true, false)), any(vec3<bool>(true, false, true)), true), !all(vec4<bool>(false, true, false, false)))));
    var_0 = func_4(Struct_3(Struct_1(_wgslsmith_f_op_f32(global1.x + 2310f), 45125u, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(343f, -243f, 125f, 101f)))), func_4(Struct_3(Struct_1(global1.x, 5653u, vec4<f32>(var_0.d.x, global1.x, global1.x, -502f), var_0.d, vec3<u32>(40817u, 1u, 14313u)), global0[_wgslsmith_index_u32(4795u, 31u)], Struct_1(378f, global3.a.x, vec4<f32>(var_0.a, global1.x, var_0.a, global1.x), vec3<f32>(global1.x, var_0.a, global1.x), vec3<u32>(var_0.b, global3.a.x, 22901u)), var_0.b, Struct_1(global1.x, var_0.b, var_0.c, var_0.c.zxy, vec3<u32>(var_0.b, global3.a.x, var_0.b))), u_input.e != 16759i).d, vec3<u32>(global3.a.x, ~20052u, countOneBits(1u))), global0[_wgslsmith_index_u32(firstLeadingBit(19816u), 31u)], Struct_1(_wgslsmith_f_op_f32(var_0.a - 1000f), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.e.x, global3.a.x), global3.a), vec2<u32>(1u, 0u) ^ vec2<u32>(1u, var_0.e.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c)), _wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(u_input.c ^ 0u, 11u)] - global1.wxx), ~vec3<u32>(var_0.b, global3.a.x, var_0.b) | vec3<u32>(4294967295u, var_0.e.x, 0u)), 19577u, Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(149f)))), ~4294967295u, var_0.c, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(46038u), u_input.c), 11u)], vec3<u32>(~var_0.e.x, var_0.e.x, ~4294967295u))), true);
    var var_1 = Struct_3(Struct_1(-1256f, 4294967295u ^ global3.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, var_0.a, 1096f) * var_0.c)) + vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.c.x)), _wgslsmith_f_op_f32(global1.x - -688f), _wgslsmith_f_op_f32(f32(-1f) * -687f), 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(479f, global1.x, -1434f)), min(func_4(Struct_3(Struct_1(global1.x, 4294967295u, vec4<f32>(104f, global1.x, -665f, global1.x), vec3<f32>(-410f, var_0.d.x, -1296f), vec3<u32>(var_0.b, 68234u, global3.a.x)), global0[_wgslsmith_index_u32(0u, 31u)], Struct_1(-1784f, 1u, var_0.c, global2[_wgslsmith_index_u32(u_input.a, 11u)], var_0.e), var_0.b, Struct_1(var_0.d.x, global3.a.x, var_0.c, global2[_wgslsmith_index_u32(4294967295u, 11u)], var_0.e)), true).e, firstTrailingBit(~var_0.e))), global0[_wgslsmith_index_u32(20522u, 31u)], Struct_1(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1.x, var_0.d.x)))), min(var_0.b, abs(1u)), var_0.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, -963f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.www - vec3<f32>(var_0.c.x, 1000f, global1.x)) - global1.wxy)), min(vec3<u32>(1722u, ~global3.a.x, ~u_input.d), ~u_input.b)), 4294967295u, Struct_1(_wgslsmith_f_op_f32(max(var_0.c.x, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(sign(-402f))))), _wgslsmith_dot_vec2_u32(vec2<u32>(global3.a.x, _wgslsmith_add_u32(7899u, 37198u)), func_4(Struct_3(Struct_1(global1.x, var_0.b, vec4<f32>(global1.x, -361f, 663f, global1.x), vec3<f32>(global1.x, global1.x, -1408f), vec3<u32>(global3.a.x, 47004u, 71099u)), Struct_2(vec2<u32>(var_0.b, global3.a.x)), Struct_1(-877f, global3.a.x, var_0.c, var_0.c.zzy, var_0.e), global3.a.x, Struct_1(724f, var_0.e.x, var_0.c, vec3<f32>(var_0.c.x, 948f, -440f), var_0.e)), true).e.yz), _wgslsmith_f_op_vec4_f32(var_0.c - _wgslsmith_f_op_vec4_f32(min(var_0.c, var_0.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(global3.a.x, 11u)] * global2[_wgslsmith_index_u32(var_0.b, 11u)]))), func_4(Struct_3(Struct_1(217f, 1u, var_0.c, vec3<f32>(-288f, var_0.c.x, -480f), u_input.b), Struct_2(u_input.b.xy), func_2(), var_0.e.x, func_2()), any(vec2<bool>(true, false))).e));
    let var_2 = u_input.e;
    var var_3 = _wgslsmith_f_op_f32(func_4(Struct_3(var_1.e, global0[_wgslsmith_index_u32((71517u << (u_input.a % 32u)) & 4294967295u, 31u)], func_4(Struct_3(Struct_1(-579f, 85802u, var_0.c, global2[_wgslsmith_index_u32(16355u, 11u)], vec3<u32>(40847u, var_0.b, 89902u)), Struct_2(global3.a), var_1.a, 1u, var_1.e), -28009i == var_2), global3.a.x, func_2()), true).a * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_f_op_f32(trunc(var_0.a)))))));
    return ~_wgslsmith_mod_vec4_u32((~vec4<u32>(var_1.e.e.x, 4294967295u, 64765u, var_1.e.b) << (select(vec4<u32>(1u, 4294967295u, var_0.b, u_input.a), vec4<u32>(1u, 56214u, 1u, 4294967295u), vec4<bool>(false, false, false, true)) % vec4<u32>(32u))) | vec4<u32>(1u, 57564u, firstLeadingBit(global3.a.x), 82212u), vec4<u32>(global3.a.x, u_input.b.x, select(global3.a.x, min(global3.a.x, 9657u), true), ~max(120339u, var_0.e.x)));
}

fn func_5(arg_0: vec4<u32>, arg_1: f32) -> vec4<f32> {
    let var_0 = -465f;
    global4 = array<vec2<f32>, 23>();
    global2 = array<vec3<f32>, 11>();
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -1797f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(363f, -1197f)), _wgslsmith_f_op_f32(-func_2().d.x)));
    let var_1 = _wgslsmith_add_vec2_u32(arg_0.yy >> (u_input.b.xz % vec2<u32>(32u)), vec2<u32>(~arg_0.x, arg_0.x));
    return vec4<f32>(global1.x, -1000f, -1010f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(310f + -638f)) + global1.x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec2<f32>, 23>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_5(func_1(), _wgslsmith_f_op_f32(min(-740f, _wgslsmith_f_op_f32(round(1126f)))))));
    let var_1 = func_2();
    global2 = array<vec3<f32>, 11>();
    var var_2 = false;
    let var_3 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e & (~(59846i | u_input.e) >> (~var_3 % 32u)), vec4<i32>(-1i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(12078i, u_input.e, -44757i), vec3<i32>(u_input.e, u_input.e, 2147483647i)) & reverseBits(vec3<i32>(u_input.e, -1i, u_input.e)), (vec3<i32>(u_input.e, u_input.e, u_input.e) >> (vec3<u32>(0u, 1u, global3.a.x) % vec3<u32>(32u))) >> (func_4(Struct_3(var_1, Struct_2(vec2<u32>(var_1.e.x, 4294967295u)), Struct_1(-297f, u_input.b.x, var_1.c, vec3<f32>(603f, -516f, 682f), var_1.e), 56195u, var_1), true).e % vec3<u32>(32u))), i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, -45404i, 8218i, u_input.e), vec4<i32>(u_input.e, 35949i, u_input.e, u_input.e)), min(u_input.e, reverseBits(u_input.e) & firstLeadingBit(1i))), func_4(Struct_3(func_2(), Struct_2(global3.a), var_1, 0u, Struct_1(322f, 69332u, vec4<f32>(1057f, -390f, -338f, var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(6442u, 4294967295u, 4294967295u), u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-484f))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1095f)), _wgslsmith_f_op_f32(ceil(global1.x)))).d.yx, select(~(~_wgslsmith_sub_u32(var_1.b, var_1.b)), ~44951u, false));
}

