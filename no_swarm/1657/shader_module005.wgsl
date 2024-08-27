struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec4<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<bool>,
    c: vec2<i32>,
    d: f32,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 16>;

var<private> global1: Struct_4 = Struct_4(vec3<f32>(-178f, -231f, -652f), vec3<u32>(1u, 63475u, 0u), 1u, 4294967295u, vec4<bool>(false, false, false, true));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    global0 = array<vec2<u32>, 16>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x * _wgslsmith_f_op_f32(f32(-1f) * -373f))), u_input.e.x, vec4<f32>(1373f, _wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.a.x - global1.a.x)))), 1466f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2516f, global1.a.x, true)) + -583f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1230f, _wgslsmith_f_op_f32(global1.a.x * global1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1483f)))), ~global1.b.x);
    var var_1 = Struct_3(~(~(~_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(64271u, 16u)], global1.b.yz))), Struct_2(select(!(!global1.e.x), true, true), _wgslsmith_clamp_vec3_i32(u_input.e, -vec3<i32>(u_input.e.x, 2147483647i, var_0.b) >> (_wgslsmith_div_vec3_u32(u_input.c.zxz, global1.b) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(-u_input.e, firstLeadingBit(u_input.e))), var_0, var_0, all(select(!global1.e, select(global1.e, global1.e, global1.e), all(vec4<bool>(false, false, global1.e.x, false))))), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(global0[_wgslsmith_index_u32(reverseBits(13828u), 16u)], _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(global0[_wgslsmith_index_u32(global1.c, 16u)], u_input.c.yz, global1.b.zz), max(vec2<u32>(1u, 6693u), global0[_wgslsmith_index_u32(var_0.e, 16u)]))), ~(~u_input.c.zz)));
    var var_2 = -vec4<i32>(37153i, 45649i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.b.c.b, var_1.b.c.b, u_input.e.x, var_0.b), vec4<i32>(0i, 1i, var_1.b.d.b, var_0.b)), select(vec4<i32>(u_input.e.x, -11823i, -1i, 0i), vec4<i32>(u_input.e.x, 1i, var_1.b.c.b, var_0.b), vec4<bool>(var_1.b.a, global1.e.x, var_1.b.a, var_1.b.a))) & ~(-1i), var_1.b.c.b);
    let var_3 = Struct_2(true | (_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1495f - global1.a.x), -866f)) <= _wgslsmith_f_op_f32(floor(-1747f))), abs(~(-vec3<i32>(12697i, -2147483647i, var_1.b.b.x)) << (_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(var_0.e, global1.c, 1u)), vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u))), var_0, var_0, !any(select(global1.e.wz, !vec2<bool>(false, global1.e.x), select(vec2<bool>(global1.e.x, var_1.b.a), vec2<bool>(var_1.b.a, var_1.b.a), false))));
    return ~min(~_wgslsmith_dot_vec3_u32(select(u_input.b.wzx, global1.b, false), ~vec3<u32>(26136u, global1.b.x, global1.c)), 94188u);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: u32) -> f32 {
    let var_0 = vec3<u32>(func_3(), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~max(u_input.b.ywx, u_input.c.zxz), global1.b), _wgslsmith_mult_u32(u_input.a, 75034u)), firstTrailingBit(arg_0.e | firstLeadingBit(~arg_2)));
    let var_1 = global1.e;
    let var_2 = arg_0;
    let var_3 = vec2<f32>(global1.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1480f, arg_0.c.x)), _wgslsmith_f_op_f32(1116f - -1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-510f * -1022f))), true)))));
    let var_4 = ~(-58423i);
    return _wgslsmith_f_op_f32(floor(785f));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4, arg_2: f32) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.a.x)));
    let var_1 = arg_0.d.c;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.d.c.wzy) * global1.a) * vec3<f32>(-1065f, _wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_0.c, vec4<i32>(-2147483647i, -2147483647i, 0i, -1i), 25729u))))));
    var var_3 = u_input.e.x;
    var var_4 = _wgslsmith_clamp_i32(~arg_0.d.b, 0i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(-29232i, -u_input.e.x >> (firstLeadingBit(arg_1.d) % 32u)), -38021i));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_1.zxw)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.x, _wgslsmith_f_op_f32(func_2(Struct_1(602f, -2147483647i, vec4<f32>(arg_0.d.d.x, -1270f, 359f, 1069f), vec3<f32>(global1.a.x, 870f, var_1.x), 47498u), vec4<i32>(arg_0.b.x, -14116i, u_input.e.x, -2957i), 0u)), _wgslsmith_f_op_f32(-1067f * -1000f)))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: bool) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_0.c.a), -(~(u_input.e.x ^ arg_0.c.b) >> (30359u % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.c.c * vec4<f32>(arg_0.c.d.x, arg_1.x, arg_0.d.c.x, 490f)) - arg_0.d.c)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(arg_0.c.d * _wgslsmith_f_op_vec3_f32(-arg_1))))), arg_0.d.e);
    var var_1 = _wgslsmith_dot_vec4_u32(firstLeadingBit(u_input.c), firstLeadingBit(select(vec4<u32>(1u, _wgslsmith_clamp_u32(u_input.d, 0u, 39394u), 1034u, 4294967295u), min(vec4<u32>(40004u, 4294967295u, 4294967295u, var_0.e), u_input.c), select(!vec4<bool>(arg_2, arg_2, arg_2, arg_0.a), vec4<bool>(true, true, true, true), any(global1.e.zw)))));
    var var_2 = vec2<bool>(true, arg_0.a);
    var var_3 = ~var_0.e;
    let var_4 = ~select(vec4<i32>(arg_0.d.b, 27761i, -21735i, _wgslsmith_clamp_i32(u_input.e.x, 1i, -var_0.b)), ~(-vec4<i32>(arg_0.b.x, 0i, arg_0.d.b, -2147483647i)), !vec4<bool>(!arg_0.a, true, arg_2, any(vec2<bool>(false, false))));
    return Struct_2(!(!all(select(global1.e.zw, vec2<bool>(false, false), global1.e.zz))), ~var_4.wyz, Struct_1(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_div_i32(_wgslsmith_mod_i32(~(-49951i), var_4.x), ~_wgslsmith_dot_vec3_i32(arg_0.b, vec3<i32>(-35508i, var_0.b, var_0.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.a, 1958f, global1.a.x, -287f) * vec4<f32>(var_0.c.x, arg_1.x, arg_1.x, 839f))), vec3<f32>(363f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0.c.c.x)), _wgslsmith_f_op_f32(sign(arg_1.x))), arg_0.c.c.x), _wgslsmith_mod_u32(var_0.e & _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(30554u, 58450u, u_input.a, 13424u)), 2602u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.d.x))), var_4.x, arg_0.d.c, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1096f, global1.a.x) * var_0.d.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, arg_0.c.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1808f) + _wgslsmith_f_op_f32(464f - global1.a.x))), ~u_input.d), any(select(select(vec2<bool>(true, false), vec2<bool>(arg_2, false), any(vec3<bool>(true, true, arg_2))), select(global1.e.wz, global1.e.wy, vec2<bool>(false, false)), select(global1.e.zw, select(global1.e.yy, global1.e.xw, false), select(global1.e.yw, vec2<bool>(false, false), true)))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_5, arg_2: vec3<f32>) -> vec3<f32> {
    global0 = array<vec2<u32>, 16>();
    global1 = arg_1.a;
    global0 = array<vec2<u32>, 16>();
    global0 = array<vec2<u32>, 16>();
    var var_0 = Struct_3(0u, arg_0, ~vec2<u32>(arg_1.a.d, firstTrailingBit(global1.d)));
    return vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c.a * 636f), _wgslsmith_f_op_f32(arg_1.e.a.x - 1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -764f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(_wgslsmith_f_op_vec3_f32(func_5(func_4(Struct_2(true, reverseBits(vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x)), Struct_1(global1.a.x, u_input.e.x, vec4<f32>(-1000f, -231f, -842f, global1.a.x), global1.a, 1u), Struct_1(global1.a.x, u_input.e.x, vec4<f32>(-565f, 1000f, global1.a.x, 776f), vec3<f32>(global1.a.x, 1405f, 613f), 0u), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_2(global1.e.x, vec3<i32>(u_input.e.x, 885i, 9176i), Struct_1(644f, u_input.e.x, vec4<f32>(-160f, global1.a.x, -537f, global1.a.x), vec3<f32>(1000f, global1.a.x, global1.a.x), 30303u), Struct_1(global1.a.x, u_input.e.x, vec4<f32>(323f, global1.a.x, global1.a.x, global1.a.x), vec3<f32>(global1.a.x, -542f, global1.a.x), u_input.a), global1.e.x), Struct_4(global1.a, u_input.b.wyw, global1.b.x, global1.c, vec4<bool>(global1.e.x, global1.e.x, global1.e.x, global1.e.x)), global1.a.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, global1.a.x, -356f))), true), Struct_5(Struct_4(_wgslsmith_f_op_vec3_f32(func_1(Struct_2(global1.e.x, u_input.e, Struct_1(global1.a.x, u_input.e.x, vec4<f32>(-496f, 1000f, global1.a.x, global1.a.x), global1.a, u_input.b.x), Struct_1(377f, 17105i, vec4<f32>(-171f, 964f, -210f, global1.a.x), vec3<f32>(global1.a.x, global1.a.x, -1000f), 4294967295u), global1.e.x), Struct_4(vec3<f32>(global1.a.x, 1587f, -298f), vec3<u32>(u_input.b.x, global1.c, 55576u), 0u, 1u, vec4<bool>(true, true, global1.e.x, false)), -1000f)), select(vec3<u32>(14404u, global1.c, 0u), vec3<u32>(43824u, 4645u, 40022u), global1.e.wxy), global1.b.x, ~66376u, !global1.e), vec3<bool>(true, true, true), -(~u_input.e.yz), _wgslsmith_f_op_f32(global1.a.x * _wgslsmith_f_op_f32(-global1.a.x)), Struct_4(_wgslsmith_f_op_vec3_f32(global1.a * vec3<f32>(global1.a.x, global1.a.x, global1.a.x)), ~u_input.c.yyx, u_input.d, ~44103u, select(global1.e, global1.e, vec4<bool>(global1.e.x, global1.e.x, true, global1.e.x)))), vec3<f32>(141f, global1.a.x, global1.a.x))), u_input.c.yww, 69678u, 46736u | max(1u | global1.c, 10277u), global1.e);
    let var_0 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(reverseBits(abs(vec4<u32>(27885u, 1u, 4294967295u, 4294967295u))), u_input.b), global1.b.x) << (4294967295u % 32u);
    let var_1 = global1.e.xxy;
    global1 = Struct_4(global1.a, ~abs(~vec3<u32>(41295u, 21410u, 1u)) | _wgslsmith_div_vec3_u32(u_input.c.xwy, select(global1.b, u_input.c.wwz, true)), var_0 << (0u % 32u), global1.d, select(vec4<bool>(all(vec2<bool>(true, true)), var_1.x, false, var_1.x), global1.e, !vec4<bool>(!global1.e.x, true, true, true)));
    var var_2 = var_1.yy;
    var var_3 = vec3<bool>(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x + 1901f) - _wgslsmith_f_op_f32(-global1.a.x)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)), any(vec2<bool>(var_2.x, all(vec2<bool>(global1.e.x, var_1.x)))), !(!select(true, var_1.x, false))), global1.e.x, all(!select(vec3<bool>(global1.e.x, true, global1.e.x), vec3<bool>(false, var_2.x, true), global1.e.wwy)) | any(vec4<bool>(true, global1.e.x, true, true)));
    var var_4 = 4071u;
    var var_5 = var_3.xy;
    var_4 = _wgslsmith_add_u32(~var_0, _wgslsmith_dot_vec4_u32(vec4<u32>(25401u, _wgslsmith_mult_u32(global1.b.x, ~global1.d), _wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, 36082u), _wgslsmith_sub_u32(u_input.d, 1u)), ~u_input.d), ~vec4<u32>(0u, _wgslsmith_clamp_u32(22125u, u_input.a, 5235u), ~global1.d, var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~0u, ~_wgslsmith_dot_vec3_u32(abs(global1.b), _wgslsmith_sub_vec3_u32(u_input.c.ywz, vec3<u32>(0u, 58685u, global1.c))), reverseBits(_wgslsmith_mod_u32(_wgslsmith_mod_u32(41745u, u_input.a), _wgslsmith_dot_vec2_u32(global1.b.xy, global0[_wgslsmith_index_u32(global1.c, 16u)]))), u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.a.x, global1.a.x, -766f, 1231f), vec4<f32>(global1.a.x, -935f, global1.a.x, global1.a.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, global1.a.x, 797f, global1.a.x) * vec4<f32>(1709f, global1.a.x, -1000f, global1.a.x))))), vec2<u32>(~_wgslsmith_clamp_u32(23712u, ~u_input.a, ~u_input.d), global1.c), 1932f, u_input.c.x);
}

