struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17>;

var<private> global1: Struct_5 = Struct_5(vec3<i32>(-55758i, -1i, i32(-2147483648)), vec2<f32>(748f, 1106f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_5) -> i32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-321f, arg_0.b.x) + global1.b)))), ~(2147483647i | _wgslsmith_sub_i32(min(0i, arg_0.a.x), ~u_input.a)), global1.a, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(929f, -271f, -581f, -1327f), vec4<f32>(global1.b.x, -1444f, arg_0.b.x, 213f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, arg_0.b.x, global1.b.x, arg_0.b.x) - vec4<f32>(582f, global1.b.x, arg_0.b.x, global1.b.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-2231f, -602f, -396f, -478f) - vec4<f32>(global1.b.x, 1000f, arg_0.b.x, 464f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, global1.b.x, arg_0.b.x, global1.b.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-966f, -1583f, -224f, -1403f) - vec4<f32>(arg_0.b.x, global1.b.x, arg_0.b.x, global1.b.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, 589f, arg_0.b.x, global1.b.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(688f, arg_0.b.x, arg_0.b.x, -807f) + vec4<f32>(arg_0.b.x, 1418f, 734f, global1.b.x)))), ~u_input.b, u_input.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global1.b, vec2<f32>(global1.b.x, arg_0.b.x), false)) + vec2<f32>(_wgslsmith_f_op_f32(min(global1.b.x, -644f)), 558f))));
    let var_1 = select(~arg_0.a, firstLeadingBit(abs(select(vec3<i32>(-43380i, var_0.b, 0i), reverseBits(arg_0.a), true))), !(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), select(false, true, false))));
    global0 = array<u32, 17>();
    let var_2 = Struct_5(vec3<i32>(firstTrailingBit(abs(-2147483647i)), abs(-(~587i)), u_input.a), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1000f * -1152f), -156f) - vec2<f32>(-527f, var_0.d.e.x)))));
    let var_3 = abs(i32(-1i) * -2147483647i);
    return -firstLeadingBit(_wgslsmith_dot_vec2_i32((arg_0.a.xx & vec2<i32>(0i, -25992i)) >> (~vec2<u32>(u_input.b.x, 0u) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(countOneBits(var_2.a.xx), vec2<i32>(0i, var_0.c.x) | vec2<i32>(11754i, -2147483647i))));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool) -> Struct_1 {
    var var_0 = select(vec2<bool>(arg_1, !arg_1), vec2<bool>(false, arg_1), false);
    var var_1 = Struct_5(vec3<i32>(func_3(Struct_5(select(vec3<i32>(u_input.a, 0i, -22894i), global1.a, false), _wgslsmith_f_op_vec2_f32(exp2(global1.b)))), _wgslsmith_sub_i32(u_input.a & func_3(Struct_5(global1.a, global1.b)), u_input.a), _wgslsmith_div_i32(arg_0.x, arg_0.x)), _wgslsmith_f_op_vec2_f32(round(global1.b)));
    let var_2 = global1.a.x;
    var var_3 = select(arg_1, arg_1, true || var_0.x);
    var var_4 = Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.x, var_1.b.x) * vec2<f32>(global1.b.x, global1.b.x)))), _wgslsmith_mod_i32(countOneBits(countOneBits(-40517i)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.a, u_input.a), -27228i)), vec3<i32>(u_input.a, 1i, -1i), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(156f, var_1.b.x, -189f, 875f) - vec4<f32>(-1537f, var_1.b.x, global1.b.x, -317f))), _wgslsmith_div_vec4_f32(vec4<f32>(1652f, 129f, 1764f, var_1.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, global1.b.x, -2674f, -528f))), vec2<u32>(1u, 73383u >> (0u % 32u)), 0u, _wgslsmith_f_op_vec2_f32(-global1.b))), ~u_input.b);
    return var_4.a.d;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = arg_1.b.x;
    var_0 = 691f;
    global0 = array<u32, 17>();
    let var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1501f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x))), u_input.a << (arg_2.c.x % 32u), global1.a, func_2(_wgslsmith_div_vec2_i32(global1.a.xz, vec2<i32>(-1i) * -vec2<i32>(arg_0, arg_0)), false));
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.d.b.ww * arg_1.a.xz))))), ~0i, _wgslsmith_div_vec3_i32(~firstTrailingBit(-vec3<i32>(global1.a.x, 0i, var_1.c.x)), -vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.a.x, u_input.a), vec2<i32>(arg_0, global1.a.x)), global1.a.x, ~2147483647i)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_2.a))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_3.a.x)), _wgslsmith_f_op_f32(global1.b.x * arg_2.a.x), _wgslsmith_f_op_f32(min(var_1.d.e.x, 1266f)), func_2(global1.a.xx, true).a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_2.b))), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true)))), ~vec2<u32>(arg_2.c.x | var_1.d.d, global0[_wgslsmith_index_u32(~1u, 17u)]), arg_3.c.x, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(101f)), 289f), global1.b.x)));
    return _wgslsmith_f_op_f32(step(arg_3.b.x, -868f));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: f32, arg_3: vec4<u32>) -> f32 {
    global0 = array<u32, 17>();
    var var_0 = global1.b.x;
    var var_1 = vec4<f32>(_wgslsmith_div_f32(-493f, -628f), -658f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-430f, _wgslsmith_f_op_f32(-627f + -182f))), arg_2);
    global0 = array<u32, 17>();
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, global1.b.x, 1244f, arg_2), _wgslsmith_f_op_vec4_f32(vec4<f32>(543f, -1000f, _wgslsmith_f_op_f32(1000f - -640f), var_1.x) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(448f, arg_2, -822f, var_1.x) + vec4<f32>(-227f, -1836f, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-184f, 1000f, 1000f, global1.b.x)), !vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x)))))));
    return _wgslsmith_div_f32(-300f, arg_2);
}

fn func_5(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> vec3<i32> {
    var var_0 = true;
    let var_1 = _wgslsmith_add_u32(~reverseBits(global0[_wgslsmith_index_u32(arg_3, 17u)]) | arg_2.d, arg_2.c.x);
    var var_2 = vec4<bool>(!(!(!all(vec2<bool>(false, true)))), any(select(select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), false), true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), -2147483647i <= arg_0.x), select(false, false, false) && true)), select(true, false, true) & true, true);
    var var_3 = var_2.zyy;
    var_3 = vec3<bool>(var_3.x, true, !any(select(!vec4<bool>(var_3.x, true, false, var_3.x), vec4<bool>(true, var_3.x, true, var_3.x), !vec4<bool>(var_2.x, false, true, true))));
    return -firstTrailingBit(countOneBits(vec3<i32>(arg_0.x, -65307i, arg_0.x)) << (~(vec3<u32>(u_input.b.x, arg_2.d, 1u) ^ vec3<u32>(1u, 9635u, 0u)) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(func_5(vec4<i32>(1i | _wgslsmith_sub_i32(2147483647i, global1.a.x), 0i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a, u_input.a), reverseBits(63273i)), ~min(global1.a.x, u_input.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x - 1827f)), _wgslsmith_f_op_f32(func_4(vec4<u32>(4608u, global0[_wgslsmith_index_u32(55263u, 17u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 3826u), select(vec2<bool>(false, false), vec2<bool>(false, false), true), _wgslsmith_f_op_f32(func_1(11942i, Struct_1(vec4<f32>(global1.b.x, global1.b.x, global1.b.x, global1.b.x), vec4<f32>(global1.b.x, global1.b.x, global1.b.x, 1269f), u_input.b, 1u, global1.b), Struct_1(vec4<f32>(2327f, global1.b.x, 113f, -396f), vec4<f32>(global1.b.x, 734f, 296f, global1.b.x), u_input.b, u_input.b.x, vec2<f32>(874f, global1.b.x)), Struct_1(vec4<f32>(-715f, global1.b.x, global1.b.x, global1.b.x), vec4<f32>(-334f, global1.b.x, 635f, global1.b.x), u_input.b, global0[_wgslsmith_index_u32(0u, 17u)], global1.b))), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 23070u)))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1036f, global1.b.x, global1.b.x, 287f) - vec4<f32>(global1.b.x, 546f, global1.b.x, 1607f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, -1560f, global1.b.x, 545f)), vec2<u32>(0u, 1u), 7490u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(847f, 1222f) * vec2<f32>(723f, 644f)))), 0u), vec2<f32>(global1.b.x, _wgslsmith_f_op_f32(-1f)));
    let var_1 = Struct_5(~(-_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, global1.a.x, u_input.a), var_0.a)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_0.b + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.x, var_0.b.x))))))));
    var var_2 = func_2(~(-global1.a.yx), u_input.a > (((i32(-1i) * -1i) << (~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 17u)], 17u)] % 32u)) >> (global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 18561u, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, 1u, 1u))), 17u)] % 32u)));
    var var_3 = Struct_5(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(min(2147483647i, -1i), _wgslsmith_mod_i32(global1.a.x, -1i), -6478i), reverseBits(global1.a.x), 0i), var_0.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-219f, -174f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_1.b, var_1.b)) * _wgslsmith_f_op_vec2_f32(abs(var_1.b))))));
    var var_4 = select(!select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), true), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), select(select(select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true)), vec2<bool>(true, true), any(vec2<bool>(true, false))), vec2<bool>(true, (12998i & var_0.a.x) > var_0.a.x), ~(var_3.a.x | var_3.a.x) < select(u_input.a, _wgslsmith_mult_i32(var_1.a.x, 1i), all(vec4<bool>(true, false, true, false)))), vec2<bool>(false, select(select(1u, 54215u, true) <= (u_input.b.x | 4294967295u), any(vec4<bool>(false, false, false, true)), (0u << (u_input.b.x % 32u)) >= u_input.b.x)));
    var var_5 = ~(~u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b.x + -718f) * var_1.b.x) - _wgslsmith_f_op_f32(func_4(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, 25821u, 1u), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], var_2.c.x, global0[_wgslsmith_index_u32(0u, 17u)], 0u)), vec4<u32>(u_input.b.x, var_2.c.x, u_input.b.x, 46922u) ^ vec4<u32>(4294967295u, 39944u, 4294967295u, global0[_wgslsmith_index_u32(12089u, 17u)]), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], 24056u, var_2.d, u_input.b.x)), vec2<bool>(!var_4.x, false), -732f, ~(~vec4<u32>(global0[_wgslsmith_index_u32(var_2.d, 17u)], global0[_wgslsmith_index_u32(u_input.b.x, 17u)], 0u, 39454u))))), _wgslsmith_mod_i32((_wgslsmith_sub_i32(-2147483647i, global1.a.x) << (~6167u % 32u)) & _wgslsmith_add_i32(max(3927i, -1i), -97458i), ~var_1.a.x), ~_wgslsmith_mod_vec3_u32(min(vec3<u32>(u_input.b.x, u_input.b.x, 68352u), ~vec3<u32>(u_input.b.x, 41167u, 4294967295u)), reverseBits(vec3<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 17u)], u_input.b.x, 20847u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1307f, _wgslsmith_f_op_f32(f32(-1f) * -2397f))))));
}

