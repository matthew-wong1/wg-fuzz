struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool;

var<private> global2: array<vec3<u32>, 9> = array<vec3<u32>, 9>(vec3<u32>(41462u, 1u, 21143u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(4294967295u, 0u, 42453u), vec3<u32>(31137u, 1u, 4294967295u), vec3<u32>(15867u, 1u, 104314u), vec3<u32>(17383u, 4294967295u, 70732u), vec3<u32>(0u, 7353u, 1u), vec3<u32>(1u, 23197u, 1u), vec3<u32>(1u, 4294967295u, 0u));

var<private> global3: array<vec3<u32>, 7>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> f32 {
    let var_0 = arg_1;
    var var_1 = u_input.d.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(arg_3.x, _wgslsmith_f_op_f32(ceil(-502f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.zx) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-593f, var_0.a))))) - vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-850f * arg_1.a)))), -853f));
    var var_3 = _wgslsmith_add_vec2_u32(max(_wgslsmith_div_vec2_u32(~arg_0.a.xy, firstLeadingBit(~vec2<u32>(15527u, arg_0.a.x))), vec2<u32>(_wgslsmith_add_u32(4294967295u, 0u), 0u)), vec2<u32>(4294967295u, ~(~(u_input.c.x >> (u_input.c.x % 32u)))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_3.x, arg_2.a, !(_wgslsmith_f_op_f32(max(var_2.x, var_0.a)) <= 240f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_2.x, var_0.a, arg_0.c)), _wgslsmith_f_op_f32(var_2.x * arg_2.a)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x));
}

fn func_2(arg_0: bool, arg_1: vec3<bool>) -> Struct_3 {
    let var_0 = Struct_3(Struct_2((select(u_input.d, u_input.c.zxw, vec3<bool>(arg_0, arg_0, arg_0)) ^ vec3<u32>(1386u, u_input.c.x, u_input.d.x)) | ~firstLeadingBit(global3[_wgslsmith_index_u32(4294967295u, 7u)]), min(u_input.d.x, u_input.c.x), arg_1.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -726f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1155f))) - 529f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(756f)) * _wgslsmith_f_op_f32(round(697f))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * -1404f)))), firstTrailingBit(11361i)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(839f, 817f, 907f, 1360f), vec4<f32>(-523f, 1307f, -743f, -629f), vec4<bool>(false, false, true, false))), vec4<f32>(1837f, 1816f, -485f, -507f))), vec4<f32>(_wgslsmith_f_op_f32(min(1f, _wgslsmith_div_f32(897f, 1000f))), _wgslsmith_f_op_f32(func_3(Struct_2(global2[_wgslsmith_index_u32(u_input.c.x, 9u)], u_input.d.x, true), Struct_1(133f, 18314i), Struct_1(1097f, 1i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1370f, -1000f, 1179f) - vec3<f32>(-228f, 412f, 573f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(288f, 1310f) * -1199f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(vec3<u32>(u_input.d.x, u_input.d.x, u_input.c.x), u_input.c.x, true), Struct_1(-1524f, 2147483647i), Struct_1(-307f, -1i), vec3<f32>(-1117f, -1967f, -740f))))), any(arg_1))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_0.c.a)), var_0.c.a)));
    let var_1 = ~vec2<i32>(-1i, _wgslsmith_add_i32(min(~1i, _wgslsmith_dot_vec2_i32(vec2<i32>(30334i, 1i), u_input.a.wx)), u_input.a.x));
    global1 = !(u_input.a.x >= -17519i);
    global1 = arg_1.x;
    return var_0;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec4<u32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1091f, arg_0.b.x, arg_0.c.a)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.x, arg_0.b.x, -2421f)))));
    global3 = array<vec3<u32>, 7>();
    let var_1 = !vec4<bool>(any(!select(vec3<bool>(arg_1.c, arg_0.a.c, arg_0.a.c), vec3<bool>(arg_1.c, false, false), arg_0.a.c)), all(select(select(vec2<bool>(arg_1.c, true), vec2<bool>(false, arg_1.c), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(arg_1.c, arg_1.c), arg_0.a.c), true)), func_2(any(!vec4<bool>(arg_1.c, arg_1.c, arg_0.a.c, true)), !select(vec3<bool>(arg_1.c, false, true), vec3<bool>(false, arg_0.a.c, false), vec3<bool>(true, false, arg_1.c))).a.c, true);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(180f, -506f)) + _wgslsmith_f_op_f32(func_3(Struct_2(vec3<u32>(4294967295u, 0u, 7335u), 4294967295u, var_1.x), Struct_1(535f, u_input.a.x), Struct_1(-927f, 1i), vec3<f32>(var_0.x, -312f, -620f))))))));
    var var_3 = -716f;
    return vec4<u32>(_wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_add_vec2_u32(arg_1.a.yx, arg_0.a.a.yz) | abs(vec2<u32>(arg_1.a.x, u_input.c.x))), abs(~(~arg_0.a.a.yy))), 4294967295u, arg_0.a.b, ~arg_0.a.a.x);
}

fn func_5(arg_0: vec4<u32>) -> Struct_3 {
    let var_0 = vec2<u32>(~_wgslsmith_add_u32(0u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(arg_0, arg_0), u_input.c)), arg_0.x);
    let var_1 = _wgslsmith_clamp_vec2_i32(u_input.a.yy, ~vec2<i32>(-51488i, 49287i) ^ select(u_input.a.xx, u_input.a.zx, !all(vec4<bool>(true, false, false, false))), u_input.a.wy);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1702f)) - 359f)))), _wgslsmith_sub_i32(11268i, ~0i) & u_input.b);
    let var_3 = true;
    let var_4 = -1120f;
    return Struct_3(Struct_2(arg_0.wwx, abs(~(~1u)), func_2(var_3, vec3<bool>(true, var_3, true)).a.c && true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-675f, var_4, 495f) + vec3<f32>(635f, -844f, var_4))))), Struct_1(_wgslsmith_f_op_f32(826f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_4)))), _wgslsmith_dot_vec2_i32(var_1, reverseBits(vec2<i32>(var_2.b, u_input.b)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-310f, _wgslsmith_f_op_f32(trunc(389f)))), 662f, _wgslsmith_f_op_f32(-1027f + _wgslsmith_f_op_f32(var_4 * 1969f)), _wgslsmith_f_op_f32(trunc(-728f)))));
}

fn func_1() -> u32 {
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(320f - -572f) - 690f), 418f, true && all(vec4<bool>(true, true, true, true))));
    var var_0 = func_5(~func_4(func_2(false, select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), Struct_2(u_input.c.yyw, reverseBits(u_input.c.x), true), firstLeadingBit(~global3[_wgslsmith_index_u32(0u, 7u)]), u_input.c >> (~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.c.x) % vec4<u32>(32u))));
    let var_1 = Struct_2(global2[_wgslsmith_index_u32(~(~func_5(select(vec4<u32>(u_input.c.x, var_0.a.a.x, 1u, 22998u), u_input.c, var_0.a.c)).a.a.x), 9u)], min(_wgslsmith_dot_vec3_u32(vec3<u32>(35497u, ~var_0.a.a.x, 1u), reverseBits(firstTrailingBit(vec3<u32>(u_input.c.x, 0u, var_0.a.a.x)))), ~max(var_0.a.a.x, 4294967295u)), true & func_2(all(!vec4<bool>(true, false, var_0.a.c, var_0.a.c)), select(!vec3<bool>(true, true, var_0.a.c), !vec3<bool>(var_0.a.c, false, false), select(vec3<bool>(false, var_0.a.c, true), vec3<bool>(var_0.a.c, false, var_0.a.c), vec3<bool>(true, false, false)))).a.c);
    global1 = 29188i >= u_input.b;
    let var_2 = _wgslsmith_f_op_f32(min(var_0.b.x, func_5(u_input.c).c.a));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x >> ((~u_input.d.x ^ ~var_0.a.b) % 32u), abs(~(~var_0.a.a.x))), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.d.zx, ~vec2<u32>(0u, 89051u)), min(select(u_input.c.wz, var_0.a.a.zx, true), _wgslsmith_mult_vec2_u32(vec2<u32>(var_1.a.x, 18962u), var_0.a.a.xx))), vec2<u32>(func_5(u_input.c).a.a.x, 4294967295u)));
}

fn func_6(arg_0: u32) -> vec2<u32> {
    var var_0 = any(!vec4<bool>(all(vec2<bool>(false, false)), func_5(_wgslsmith_div_vec4_u32(u_input.c, u_input.c)).a.c, true & all(vec2<bool>(false, false)), true));
    var_0 = all(select(vec3<bool>(true, !all(vec4<bool>(true, true, true, false)), true), vec3<bool>(~arg_0 != _wgslsmith_mod_u32(4294967295u, 52179u), !func_5(u_input.c).a.c, true), !any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)))));
    let var_1 = Struct_3(Struct_2(vec3<u32>(43709u, arg_0, ~(~4294967295u)), ~u_input.d.x, all(vec4<bool>(false, 2147483647i <= u_input.a.x, true, false))), vec3<f32>(-312f, _wgslsmith_f_op_f32(f32(-1f) * -1448f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-362f + -135f) * _wgslsmith_f_op_f32(func_3(Struct_2(vec3<u32>(u_input.d.x, u_input.c.x, arg_0), arg_0, false), Struct_1(1136f, u_input.b), Struct_1(-1057f, u_input.a.x), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1190f, 182f, 1713f))))))), func_5(u_input.c).c, func_5(vec4<u32>(22768u, u_input.d.x, reverseBits(1u), u_input.c.x) & vec4<u32>(1u, ~3804u, func_4(Struct_3(Struct_2(global2[_wgslsmith_index_u32(1u, 9u)], arg_0, true), vec3<f32>(1583f, 780f, 820f), Struct_1(-1000f, -4563i), vec4<f32>(-1000f, 2765f, 1000f, -917f)), Struct_2(u_input.c.zwx, 56167u, true), vec3<u32>(u_input.d.x, 57614u, 4717u), u_input.c).x, u_input.c.x)).d);
    var_0 = true;
    global2 = array<vec3<u32>, 9>();
    return ~vec2<u32>(38838u, ~var_1.a.b) ^ firstTrailingBit(_wgslsmith_clamp_vec2_u32(select(vec2<u32>(u_input.c.x, arg_0), func_5(u_input.c).a.a.xz, select(vec2<bool>(true, var_1.a.c), vec2<bool>(false, var_1.a.c), false)), ~var_1.a.a.yx, ~vec2<u32>(101140u, var_1.a.b)));
}

fn func_7(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: Struct_1) -> vec4<bool> {
    global1 = false;
    global0 = _wgslsmith_f_op_f32(arg_2.a * 785f);
    var var_0 = countOneBits(arg_2.b);
    global2 = array<vec3<u32>, 9>();
    global2 = array<vec3<u32>, 9>();
    return vec4<bool>(any(vec3<bool>(true, true, true)), true, !all(vec4<bool>(true, true, true, true)), all(vec2<bool>(4294967295u >= _wgslsmith_sub_u32(u_input.d.x, 4294967295u), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(~firstTrailingBit(func_6(func_1())), vec2<i32>(i32(-1i) * -_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), abs(countOneBits(u_input.a.x))), func_2(true, vec3<bool>(func_5(_wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(u_input.d.x, u_input.c.x, 0u, 41443u))).a.c, !any(vec3<bool>(true, false, false)), true)).c);
    var var_1 = func_2(all(select(vec3<bool>(true, !var_0.x, var_0.x & false), !vec3<bool>(var_0.x, true, var_0.x), false)), !var_0.yzy);
    global2 = array<vec3<u32>, 9>();
    var var_2 = Struct_3(var_1.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(1644f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1127f, var_1.d.x))), var_1.b.x) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(var_1.d.xxz, var_1.b, vec3<bool>(false, false, var_1.a.c))), _wgslsmith_f_op_vec3_f32(min(var_1.b, vec3<f32>(var_1.b.x, var_1.d.x, 796f)))))))), Struct_1(1873f, u_input.b), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(var_1.a, Struct_1(-341f, 0i), var_1.c, var_1.d.wxx))))), var_1.b.x, var_1.b.x, 100f));
    let var_3 = Struct_3(func_2(func_7(vec2<u32>(1u, 41915u << (u_input.d.x % 32u)), ~min(u_input.a.ww, u_input.a.xx), Struct_1(_wgslsmith_f_op_f32(var_1.c.a - var_1.d.x), abs(var_1.c.b))).x, vec3<bool>(any(var_0.yy), true, all(vec4<bool>(var_2.a.c, var_0.x, true, true)))).a, vec3<f32>(_wgslsmith_f_op_f32(floor(-1975f)), _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1000f, 1f))))), var_2.c, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(var_2.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2384f, var_1.d.x, 308f, var_1.b.x)))), _wgslsmith_div_vec4_f32(vec4<f32>(-606f, _wgslsmith_div_f32(var_1.b.x, var_1.b.x), _wgslsmith_f_op_f32(307f * -175f), var_1.b.x), vec4<f32>(_wgslsmith_f_op_f32(-458f - var_1.d.x), _wgslsmith_f_op_f32(max(2049f, var_2.c.a)), 849f, _wgslsmith_f_op_f32(-var_1.d.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yzw, u_input.a, _wgslsmith_f_op_f32(-var_3.d.x));
}

