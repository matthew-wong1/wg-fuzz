struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec2<f32>,
    d: vec4<u32>,
    e: bool,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 16>;

var<private> global1: vec4<bool>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    let var_0 = Struct_2(firstTrailingBit(u_input.a & ~(~u_input.a)), Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1873f, 898f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-355f, -407f) - vec2<f32>(-345f, -623f))))), _wgslsmith_clamp_u32(u_input.a.x, 1u, u_input.a.x & u_input.a.x) ^ u_input.a.x), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -768f))), 1000f), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1125f, -1024f) - vec2<f32>(910f, 1541f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(472f, -999f), vec2<f32>(1001f, 1174f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-345f, -1665f)))), u_input.a.x), -firstLeadingBit(vec2<i32>(-1i) * -vec2<i32>(0i, 2147483647i)));
    var var_1 = firstTrailingBit(25148u);
    let var_2 = global0[_wgslsmith_index_u32(~4294967295u, 16u)];
    var var_3 = _wgslsmith_div_u32(reverseBits(var_0.a.x), ~1u);
    var var_4 = vec3<bool>(true, true, global1.x);
    return u_input.b.x;
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: u32) -> f32 {
    var var_0 = Struct_4(min(firstTrailingBit(u_input.e), vec3<i32>(arg_2.x, ~9762i, countOneBits(-1i))), func_3(), ~vec2<i32>(_wgslsmith_sub_i32(~u_input.b.x, 2147483647i), -1i), arg_2.xx, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b, -u_input.e), arg_2.yzz));
    let var_1 = select(select(vec2<bool>(true, true), !select(select(global1.xw, global1.zy, global1.ww), global1.wz, global1.zx), global1.xz), select(!select(vec2<bool>(false, true), select(vec2<bool>(true, global1.x), vec2<bool>(true, true), false), !global1.x), vec2<bool>(true, select(true, global1.x, true)), !global1.x), vec2<bool>(all(select(global1.wz, select(global1.wy, vec2<bool>(global1.x, true), global1.x), true)), !global1.x));
    var var_2 = Struct_4(~vec3<i32>(26300i, ~23916i, var_0.d.x), u_input.c.x, arg_2.yx, vec2<i32>(~select(-1i, -12262i, true) ^ -_wgslsmith_add_i32(arg_2.x, u_input.d), arg_2.x), firstTrailingBit(var_0.d.x | _wgslsmith_add_i32(-2147483647i, 1i)));
    var_2 = Struct_4(var_2.a, var_0.c.x, u_input.e.yz, vec2<i32>(func_3(), var_0.e), -2147483647i);
    let var_3 = _wgslsmith_sub_i32(var_0.e, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(-1i, 0i, arg_2.x)), var_0.a) | _wgslsmith_add_vec3_i32(var_2.a | vec3<i32>(var_0.b, 2147483647i, -39036i), var_2.a), vec3<i32>(-2147483647i, _wgslsmith_sub_i32(arg_2.x, -2446i) << (~arg_1.x % 32u), u_input.b.x)));
    return _wgslsmith_f_op_f32(f32(-1f) * -660f);
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: f32) -> vec2<u32> {
    let var_0 = arg_1.zxz;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)), ~42546u);
    global0 = array<vec4<bool>, 16>();
    var var_2 = all(select(global1.xzz, select(vec3<bool>(all(global1.xz), false, true), !(!global1.wwz), global1.x), all(vec2<bool>(global1.x, false))));
    var_2 = -u_input.e.x != u_input.c.x;
    return vec2<u32>(21702u, var_0.x);
}

fn func_1(arg_0: Struct_4, arg_1: vec2<u32>) -> vec2<u32> {
    var var_0 = abs(~_wgslsmith_sub_i32(u_input.d, -1i));
    global1 = !select(global0[_wgslsmith_index_u32(~(~12854u), 16u)], global0[_wgslsmith_index_u32(1u, 16u)], all(vec4<bool>(true, true, true, true)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-354f, 728f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-501f, -1536f) - vec2<f32>(936f, 1000f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(2307f)), 1014f))), arg_1.x ^ ~(u_input.a.x << (arg_1.x % 32u)));
    let var_2 = global1.wy;
    var_0 = ~countOneBits(arg_0.d.x);
    return _wgslsmith_sub_vec2_u32(vec2<u32>(~var_1.b, 15452u), func_4(_wgslsmith_f_op_f32(func_2(arg_1.x, vec2<u32>(~var_1.b, arg_1.x), u_input.c, u_input.a.x)), min(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a.x, 6890u, arg_1.x), vec4<u32>(arg_1.x, u_input.a.x, 1u, u_input.a.x)), ~vec4<u32>(39481u, arg_1.x, 0u, arg_1.x)), var_1.a.x));
}

fn func_5(arg_0: vec2<u32>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(select(406f, -2574f, global1.x))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(890f, 131f) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(908f, -1000f))))))), _wgslsmith_sub_u32(35540u ^ abs(select(u_input.a.x, arg_0.x, false)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_mod_u32(4294967295u, 4294967295u)), 73966u, 65053u)));
    let var_1 = Struct_3(Struct_2(arg_0 ^ _wgslsmith_mult_vec2_u32(arg_0, _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.x, 29257u), vec2<u32>(arg_0.x, arg_0.x), vec2<u32>(var_0.b, u_input.a.x))), Struct_1(var_0.a, var_0.b ^ func_4(var_0.a.x, vec4<u32>(u_input.a.x, 3985u, u_input.a.x, u_input.a.x), var_0.a.x).x), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1087f, var_0.a.x), var_0.a)))))), Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_0.a))), func_1(Struct_4(vec3<i32>(-62157i, 23837i, u_input.e.x), -1i, vec2<i32>(-9008i, -1i), u_input.c.xw, -2147483647i), reverseBits(vec2<u32>(arg_0.x, 1u))).x), u_input.c.yz), any(!vec3<bool>(global1.x, global1.x, global1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_0.a.x, -1586f), _wgslsmith_f_op_f32(-var_0.a.x)))), min(vec4<u32>(arg_0.x ^ 33181u, 55372u, 1u, firstLeadingBit(var_0.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, arg_0.x, var_0.b, 32465u) | vec4<u32>(1496u, u_input.a.x, var_0.b, 61744u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, arg_0.x), vec4<u32>(0u, 1u, arg_0.x, u_input.a.x)))) ^ vec4<u32>(arg_0.x, var_0.b, arg_0.x, 1u), !global1.x);
    global1 = select(!global0[_wgslsmith_index_u32(~(~(~3724u)), 16u)], global0[_wgslsmith_index_u32(0u, 16u)], func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(4294967295u, vec2<u32>(1u, var_0.b), u_input.c, 6038u))), vec4<u32>(var_0.b, ~15413u, ~var_0.b, 51328u & var_0.b), var_0.a.x).x > 33049u);
    global0 = array<vec4<bool>, 16>();
    global0 = array<vec4<bool>, 16>();
    return ~(_wgslsmith_mod_u32(var_1.a.d.b, 24162u) << (~(~(~4294967295u)) % 32u));
}

fn func_6(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: u32) -> f32 {
    global1 = vec4<bool>(all(global0[_wgslsmith_index_u32(abs(arg_1.x) & ~0u, 16u)]), !(all(!global0[_wgslsmith_index_u32(u_input.a.x, 16u)]) && true), true, !any(!select(vec4<bool>(global1.x, global1.x, false, false), global0[_wgslsmith_index_u32(u_input.a.x, 16u)], false)));
    global0 = array<vec4<bool>, 16>();
    global0 = array<vec4<bool>, 16>();
    var var_0 = global1.yx;
    var var_1 = Struct_3(Struct_2(~vec2<u32>(0u, abs(78519u)), Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(arg_0.zx)), arg_0.zx)), 1u), arg_0.yy, Struct_1(vec2<f32>(-1891f, _wgslsmith_f_op_f32(1496f - 1281f)), arg_1.x), ~(~_wgslsmith_add_vec2_i32(u_input.b.yx, vec2<i32>(-2147483647i, 5143i)))), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(arg_0.zx, arg_0.xz)))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(arg_0.x - arg_0.x))))), ~(~firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, 4294967295u, arg_2, 29169u), vec4<u32>(u_input.a.x, 4294967295u, arg_2, 30785u)))), global1.x);
    return _wgslsmith_f_op_f32(f32(-1f) * -726f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_6(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1509f + -1000f), _wgslsmith_div_f32(-457f, -272f), _wgslsmith_f_op_f32(-1000f + -582f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, 717f, 2052f)))), select(global1.xxz, vec3<bool>(true, global1.x, true), !global1.xyy))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, -209f, 737f), vec3<f32>(-1000f, 337f, -825f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(828f, 199f, 432f))))), vec2<u32>(~func_5(func_1(Struct_4(vec3<i32>(u_input.b.x, -9209i, 2147483647i), -20i, vec2<i32>(-17630i, u_input.d), u_input.b.yy, -842i), u_input.a)), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(52815u, u_input.a.x, u_input.a.x), vec3<u32>(27867u, u_input.a.x, u_input.a.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 21744u, 1u, u_input.a.x), vec4<u32>(1u, 4294967295u, u_input.a.x, 0u))) >> (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 0u)), abs(vec4<u32>(u_input.a.x, u_input.a.x, 44367u, u_input.a.x))) % 32u)), ~func_4(_wgslsmith_div_f32(2509f, _wgslsmith_f_op_f32(round(899f))), max(vec4<u32>(u_input.a.x, u_input.a.x, 117135u, 4294967295u) ^ vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 69433u, 22640u)), _wgslsmith_div_f32(541f, _wgslsmith_f_op_f32(f32(-1f) * -292f))).x));
    global0 = array<vec4<bool>, 16>();
    let var_1 = ~u_input.a >> (~(~u_input.a) % vec2<u32>(32u));
    global1 = vec4<bool>(!any(!vec3<bool>(global1.x, global1.x, global1.x)), 0u < var_1.x, select(!global1.x, any(vec2<bool>(true, true)), u_input.a.x <= ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.a.x), vec3<u32>(u_input.a.x, 1u, u_input.a.x))), !global1.x);
    let var_2 = -15402i;
    global1 = !global0[_wgslsmith_index_u32(7804u, 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.zwz);
}

