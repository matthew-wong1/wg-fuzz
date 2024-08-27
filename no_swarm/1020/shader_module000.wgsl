struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec2<i32>;

var<private> global2: Struct_2 = Struct_2(vec4<f32>(-559f, -307f, 1765f, 1000f), 76842i, vec4<i32>(4513i, -34876i, 2147483647i, 60332i));

var<private> global3: Struct_1 = Struct_1(vec2<i32>(i32(-2147483648), 14281i), 909f, 26261u, false, vec2<bool>(false, true));

var<private> global4: f32;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(global2.a, _wgslsmith_f_op_vec4_f32(select(global2.a, _wgslsmith_f_op_vec4_f32(-global2.a), !vec4<bool>(global3.e.x, true, false, false)))))), 31164i, (~global2.c >> (vec4<u32>(min(global3.c, 25786u), u_input.c, min(u_input.c, global3.c), min(u_input.c, u_input.c)) % vec4<u32>(32u))) ^ (~(-global2.c) & global2.c));
    var var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -253f), _wgslsmith_f_op_f32(global3.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b) + global3.b)), _wgslsmith_f_op_f32(select(var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -799f), global3.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.x))))), select(-19324i, max(abs(-20630i), _wgslsmith_mod_i32(-global2.b, -global3.a.x)), !(!global3.d)), firstLeadingBit(~global2.c));
    return _wgslsmith_f_op_f32(-var_0.a.x);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_2) -> vec2<i32> {
    let var_0 = u_input.b;
    var var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(global2.a.x - arg_1.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.x + 607f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), global2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1427f)) - arg_3.a.x))));
    var var_2 = countOneBits(vec2<u32>(arg_1.c | 106874u, 1u) ^ vec2<u32>(arg_1.c, 1u)) << (_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(~global3.c, 0u)), reverseBits(select(vec2<u32>(4294967295u, u_input.a), ~vec2<u32>(1u, 1919u), select(arg_1.e, arg_2, false)))) % vec2<u32>(32u));
    var var_3 = vec3<bool>(arg_2.x, select(!(!(!arg_2.x)), arg_1.d, arg_2.x), arg_2.x);
    let var_4 = min(-vec4<i32>(~(arg_3.c.x << (4294967295u % 32u)), global3.a.x, -2147483647i, ~(i32(-1i) * -20226i)), vec4<i32>(select(0i & var_0, 6937i, false), 0i, i32(-1i) * -arg_3.c.x, 2147483647i) ^ min(global2.c, abs(-arg_3.c)));
    return countOneBits(vec2<i32>(global1.x, global2.b));
}

fn func_1() -> Struct_2 {
    global1 = -_wgslsmith_mod_vec2_i32(min(vec2<i32>(global2.b, -17886i) & ~vec2<i32>(global1.x, global1.x), firstLeadingBit(-vec2<i32>(global1.x, global1.x))), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-3104i, -4550i, u_input.b, -18076i), global2.c), firstLeadingBit(-33391i)), func_2(105i, Struct_1(global3.a, global3.b, 55317u, true, vec2<bool>(true, global3.e.x)), vec2<bool>(true, true), Struct_2(vec4<f32>(-630f, 575f, -445f, -761f), global1.x, global2.c)) | _wgslsmith_mult_vec2_i32(global3.a, vec2<i32>(global1.x, global3.a.x))));
    var var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-1162f + -717f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(step(471f, 374f)))), -816f, 1000f), global1.x, vec4<i32>(reverseBits(min(~global2.b, func_2(-7846i, Struct_1(vec2<i32>(-13515i, 0i), -758f, 1u, false, global3.e), global3.e, Struct_2(vec4<f32>(global3.b, global2.a.x, global2.a.x, global3.b), global3.a.x, vec4<i32>(30255i, global3.a.x, u_input.b, global2.c.x))).x)), countOneBits(-max(44674i, global2.c.x)), u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, ~u_input.b), vec2<i32>(0i, _wgslsmith_dot_vec2_i32(global2.c.xx, vec2<i32>(-8053i, global1.x))))));
    global4 = 1292f;
    let var_1 = _wgslsmith_f_op_vec4_f32(-global2.a);
    var var_2 = 1i;
    return Struct_2(global2.a, _wgslsmith_mult_i32(max(32741i, u_input.b & global2.b), -select(u_input.b & var_0.c.x, ~var_0.b, all(vec3<bool>(true, global3.e.x, false)))), vec4<i32>(19556i, 1i, 1i, 8970i) << (~abs(select(vec4<u32>(22126u, global3.c, u_input.a, u_input.a), vec4<u32>(global3.c, 60276u, u_input.a, 46385u), vec4<bool>(true, true, false, false))) % vec4<u32>(32u)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2) -> f32 {
    var var_0 = Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-30293i, i32(-1i) * -49135i), i32(-1i) * -39351i), _wgslsmith_add_vec2_i32(vec2<i32>(func_2(-11238i, Struct_1(arg_1.c.yx, arg_1.a.x, 1u, true, global3.e), global3.e, arg_1).x, 44908i), arg_0.zx), _wgslsmith_mod_vec2_i32(global3.a, firstLeadingBit(vec2<i32>(0i, global2.b) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u))))), _wgslsmith_f_op_f32(194f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-122f, -631f)), global2.a.x))), u_input.c, !all(!vec4<bool>(true, true, global3.d, false)), vec2<bool>(global3.e.x, global3.d));
    global2 = func_1();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(763f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) + _wgslsmith_f_op_f32(-global3.b))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -343f))) - global2.a.x);
    var var_2 = Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.x, global2.b) >> (_wgslsmith_mod_vec2_u32(~vec2<u32>(21777u, 43396u), vec2<u32>(20052u, 13838u)) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(var_0.a.x, global1.x), -vec2<i32>(-2147483647i, -88721i) >> (~vec2<u32>(17434u, var_0.c) % vec2<u32>(32u))), global3.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-2093f, _wgslsmith_f_op_f32(-var_0.b))))) + -1292f), ~(~firstTrailingBit(var_0.c >> (var_0.c % 32u))), !any(select(select(vec4<bool>(var_0.e.x, true, global3.d, true), vec4<bool>(true, false, true, global3.e.x), var_0.d), select(vec4<bool>(global3.d, false, global3.d, global3.d), vec4<bool>(var_0.d, global3.d, global3.e.x, var_0.e.x), true), select(vec4<bool>(global3.e.x, global3.d, var_0.d, false), vec4<bool>(global3.e.x, global3.d, global3.e.x, global3.e.x), vec4<bool>(global3.e.x, false, true, false)))), global3.e);
    global2 = arg_1;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.a.x, 1000f) + _wgslsmith_f_op_f32(-global2.a.x)))), _wgslsmith_f_op_f32(func_1().a.x - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1443f) - _wgslsmith_f_op_f32(sign(423f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(min(abs(0u) ^ _wgslsmith_mod_u32(global3.c, 1u), firstLeadingBit(global3.c)), u_input.a);
    let var_1 = !(!vec3<bool>(global3.e.x && false, (global3.a.x ^ -3570i) > 1303i, true));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-369f, 303f, -1796f, -2274f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.a.x, 340f, global3.b, 176f), global2.a, vec4<bool>(var_1.x, true, true, false))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global2.a))), vec4<bool>(false, var_1.x, true, true)))), global3.a.x, -vec4<i32>(21758i, u_input.b, global3.a.x, (global2.c.x >> (22118u % 32u)) << (2641u % 32u)));
    var var_3 = Struct_1(global3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-555f * _wgslsmith_f_op_f32(func_4(~vec4<i32>(187i, 10309i, -46995i, 1i), func_1())))), _wgslsmith_add_u32((6881u << ((0u >> (var_0.x % 32u)) % 32u)) >> (34930u % 32u), countOneBits(4294967295u)), all(vec4<bool>(all(select(vec4<bool>(global3.d, global3.e.x, false, true), vec4<bool>(false, var_1.x, global3.e.x, global3.e.x), vec4<bool>(var_1.x, true, true, var_1.x))), any(vec2<bool>(false, false)), var_1.x, var_1.x)), !global3.e);
    let var_4 = Struct_2(_wgslsmith_div_vec4_f32(global2.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-540f, 880f, -408f, var_3.b)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.a) - var_2.a))), func_1().c.x, -_wgslsmith_sub_vec4_i32(~(~global2.c), global2.c));
    var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(756f * -1326f), _wgslsmith_f_op_f32(-global3.b), 1000f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b, -418f, 1996f, var_2.a.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global2.a.x, -1763f, var_4.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.a.x)) - _wgslsmith_f_op_f32(var_3.b + -1000f)), -611f, -1000f, _wgslsmith_f_op_f32(round(var_3.b))))), _wgslsmith_add_i32(global3.a.x, _wgslsmith_div_i32(global2.b, i32(-1i) * -global1.x)), reverseBits(-(~vec4<i32>(global1.x, global1.x, global2.b, -2740i)) | firstLeadingBit(vec4<i32>(0i, 14467i, var_3.a.x, u_input.b))));
    let var_5 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-36451i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_4.a.ywy))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1631f, -380f, -666f))))))), _wgslsmith_f_op_vec2_f32(trunc(var_4.a.xz)));
}

