struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 24>;

var<private> global1: array<bool, 8>;

var<private> global2: bool = true;

var<private> global3: Struct_4;

var<private> global4: i32 = -12409i;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec3<bool>) -> vec4<f32> {
    var var_0 = !(!(!(!(!vec4<bool>(global3.b, global1[_wgslsmith_index_u32(u_input.a, 8u)], global1[_wgslsmith_index_u32(u_input.a, 8u)], true)))));
    let var_1 = Struct_2(var_0.x, Struct_1(~0u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~u_input.d.xy, _wgslsmith_mod_vec2_u32(u_input.d.zx, u_input.d.xx), ~u_input.d.wx), ~vec2<u32>(1u, 34005u)), 8u)]), Struct_1(u_input.a, true), Struct_1(u_input.a, select(arg_0.x, any(select(vec3<bool>(true, global3.c, var_0.x), vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.d.x, 8u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 8u)], global1[_wgslsmith_index_u32(u_input.d.x, 8u)], var_0.x))), _wgslsmith_f_op_f32(-global3.a.x) <= _wgslsmith_f_op_f32(-265f * -1101f))), !(!all(var_0.yy)) && (!(global1[_wgslsmith_index_u32(24938u, 8u)] || false) || arg_0.x));
    global4 = 0i;
    global3 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(round(110f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.a.x))), 248f), firstLeadingBit(_wgslsmith_clamp_i32(1i, reverseBits(u_input.b.x), 48736i)) < max(max(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec3_i32(~u_input.b.zyz, vec3<i32>(19195i, -1i, u_input.b.x))), arg_0.x);
    global1 = array<bool, 8>();
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, -748f, 796f, global3.a.x)) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global3.a.x, global3.a.x, -1691f, -257f), vec4<f32>(global3.a.x, global3.a.x, global3.a.x, 244f)))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, 838f, global3.a.x, global3.a.x)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global3.a.x, 2746f, 356f, 300f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, 1509f, -1000f, 157f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, -908f, global3.a.x, -146f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.x, 592f, global3.a.x, -312f) - vec4<f32>(global3.a.x, -1051f, global3.a.x, -139f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global3.a.x, global3.a.x, -802f))))), select(select(select(select(vec4<bool>(var_1.c.b, var_0.x, true, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 8u)], false, var_1.e, var_0.x), false), vec4<bool>(false, arg_0.x, false, false), vec4<bool>(true, global3.b, false, true)), !select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(26264u, 8u)], var_0.x, global1[_wgslsmith_index_u32(var_1.c.a, 8u)]), vec4<bool>(var_1.b.b, var_0.x, true, false), vec4<bool>(global1[_wgslsmith_index_u32(0u, 8u)], global1[_wgslsmith_index_u32(5537u, 8u)], false, global1[_wgslsmith_index_u32(14901u, 8u)])), !select(vec4<bool>(true, var_0.x, global3.b, arg_0.x), vec4<bool>(true, global3.b, var_0.x, false), vec4<bool>(global3.c, var_0.x, global1[_wgslsmith_index_u32(4294967295u, 8u)], true))), !select(select(vec4<bool>(global3.b, var_0.x, false, false), vec4<bool>(true, false, false, arg_0.x), vec4<bool>(true, false, var_0.x, false)), !vec4<bool>(var_1.c.b, var_1.c.b, false, global1[_wgslsmith_index_u32(4294967295u, 8u)]), vec4<bool>(true, true, var_0.x, var_1.a)), !(any(vec3<bool>(false, arg_0.x, var_1.b.b)) | (16773i == u_input.b.x)))));
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: bool) -> i32 {
    var var_0 = _wgslsmith_dot_vec4_i32(-(u_input.b | vec4<i32>(countOneBits(2147483647i), u_input.b.x ^ u_input.b.x, _wgslsmith_sub_i32(2147483647i, u_input.b.x), reverseBits(u_input.b.x))), ~_wgslsmith_div_vec4_i32(-(~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 2147483647i)), ~u_input.b));
    var_0 = i32(-1i) * -15248i;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(max(1019f, arg_1.a.x)), _wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_div_f32(-1000f, arg_1.a.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(292f, global3.a.x, -1320f, 344f) + vec4<f32>(arg_1.a.x, 898f, arg_1.a.x, 2124f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(621f, 899f, global3.a.x, -1000f)))) * _wgslsmith_div_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(select(arg_1.a.x, arg_1.a.x, true)), _wgslsmith_f_op_f32(-global3.a.x), arg_1.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-876f, -2318f, arg_1.a.x, global3.a.x) * vec4<f32>(arg_1.a.x, global3.a.x, arg_1.a.x, global3.a.x)) - _wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(global3.b, arg_1.c, arg_1.b)))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1251f - -320f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-186f))), global3.a.x, -1358f)));
    var var_2 = u_input.d;
    let var_3 = u_input.b.x;
    return u_input.b.x >> ((_wgslsmith_dot_vec3_u32(countOneBits(u_input.d.wwx | u_input.d.yxz), vec3<u32>(~var_2.x, ~122670u, 0u)) << (0u % 32u)) % 32u);
}

fn func_1(arg_0: Struct_4) -> i32 {
    let var_0 = vec2<i32>(-func_2(9572u, arg_0, true), _wgslsmith_dot_vec3_i32(max(u_input.b.wwz, -u_input.b.xyw), vec3<i32>(_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, -1i), 2147483647i, ~u_input.b.x))) << (vec2<u32>(4294967295u, abs(1u)) % vec2<u32>(32u));
    let var_1 = Struct_2(!all(vec4<bool>(false, true, true, global3.c)), Struct_1(1u, true), Struct_1(_wgslsmith_dot_vec2_u32(select(~u_input.d.ww, ~vec2<u32>(1u, 20102u), true), u_input.d.wz >> (_wgslsmith_add_vec2_u32(u_input.d.zx, u_input.d.yw) % vec2<u32>(32u))), any(select(select(vec3<bool>(true, false, arg_0.b), vec3<bool>(false, false, arg_0.c), true), vec3<bool>(false, arg_0.b, true), false))), Struct_1(4294967295u, (~u_input.b.x << (1u % 32u)) <= 1i), all(!vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(48396u, u_input.d.x), 8u)], -1000f <= arg_0.a.x, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(143902u, 1u), 8u)])));
    var var_2 = false;
    let var_3 = Struct_2(false, Struct_1(var_1.c.a, true), var_1.d, Struct_1(~(~(~0u)), false), false);
    let var_4 = Struct_2(true, var_3.d, var_1.d, Struct_1(~(~firstTrailingBit(0u)), true), any(vec4<bool>(var_1.c.b, global3.a.x != global3.a.x, true, select(var_3.c.b, 1u < var_1.c.a, global1[_wgslsmith_index_u32(43006u, 8u)]))));
    return -98047i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_dot_vec2_i32(vec2<i32>(func_1(Struct_4(global3.a, true, false)), u_input.b.x), -u_input.b.xw) >= _wgslsmith_add_i32(func_1(Struct_4(_wgslsmith_f_op_vec3_f32(exp2(global3.a)), global3.c || global1[_wgslsmith_index_u32(1u, 8u)], global3.b)), 1i);
    let var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(~u_input.c ^ 1u, 0u), 8u)];
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.d.x, u_input.a, _wgslsmith_div_u32(1u, ~u_input.c >> (abs(4294967295u) % 32u))), max(u_input.a, abs(u_input.d.x)));
    global2 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, abs(0u), max(u_input.d.x, u_input.c), ~u_input.a), u_input.d), _wgslsmith_sub_u32(32239u, u_input.d.x)) < (_wgslsmith_sub_u32(~(~u_input.a), _wgslsmith_add_u32(70465u | u_input.a, select(u_input.d.x, u_input.d.x, false))) >> (u_input.d.x % 32u));
    var var_2 = global3.a.xz;
    let var_3 = Struct_2(true, Struct_1(28873u, any(!select(vec3<bool>(false, false, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 8u)], true, true), vec3<bool>(global1[_wgslsmith_index_u32(31447u, 8u)], global1[_wgslsmith_index_u32(1u, 8u)], false)))), Struct_1(u_input.d.x, all(vec3<bool>(select(global1[_wgslsmith_index_u32(0u, 8u)], global1[_wgslsmith_index_u32(94540u, 8u)], false), true, global1[_wgslsmith_index_u32(u_input.d.x, 8u)]))), Struct_1(1u, false), true);
    var var_4 = Struct_1(17921u, global1[_wgslsmith_index_u32(var_3.b.a, 8u)]);
    var var_5 = vec4<bool>(var_4.b, !(!(var_4.a == var_3.d.a)), 22744u <= ((_wgslsmith_mod_u32(var_4.a, 0u) ^ var_3.d.a) | u_input.d.x), all(select(select(vec2<bool>(global3.c, false), vec2<bool>(true, var_4.b), true), vec2<bool>(true, var_3.e), global3.b)) || !(-12005i == u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(global3.a.x)))))), u_input.b.x, u_input.d.yzz, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), global3.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1000f)))) + -168f), 2128f), _wgslsmith_sub_u32(var_3.c.a, abs(var_4.a)));
}

