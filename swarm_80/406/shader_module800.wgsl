struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec2<bool>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<bool, 7>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    return u_input.d;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = -2147483647i;
    global0 = u_input.e;
    global1 = array<bool, 7>();
    let var_1 = Struct_3(select(!select(vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 7u)]), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.e, 7u)], true), !vec2<bool>(global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(arg_0.a, 7u)])), vec2<bool>(global1[_wgslsmith_index_u32(0u, 7u)], true), any(select(vec3<bool>(false, false, false), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.e, 7u)], false, global1[_wgslsmith_index_u32(u_input.e, 7u)]), global1[_wgslsmith_index_u32(func_3(), 7u)]))), arg_0, Struct_1(4294967295u & arg_0.a, _wgslsmith_clamp_vec2_i32(abs(~vec2<i32>(u_input.b.x, 1i)), vec2<i32>(arg_0.d, ~2147483647i), ~reverseBits(arg_0.b)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, u_input.a, 4294967295u), vec4<u32>(u_input.e, 26260u, arg_0.a, 1u)), u_input.a, ~_wgslsmith_clamp_u32(u_input.a, 79647u, arg_0.c.x)), _wgslsmith_div_i32(var_0, ~_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(86350i, arg_0.d, -1i, 2147483647i)))));
    var var_2 = var_1.b.b;
    return Struct_1(arg_0.c.x, u_input.b.yw, reverseBits(_wgslsmith_add_vec3_u32(~(~vec3<u32>(u_input.a, 0u, 111391u)), vec3<u32>(~arg_0.a, _wgslsmith_add_u32(1u, arg_0.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c.x, arg_0.a, 1u, arg_0.a), vec4<u32>(1u, arg_0.a, var_1.c.c.x, 14545u))))), var_0 | 0i);
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    global0 = ~47725u;
    var var_0 = Struct_3(!(!(!(!vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.d, 7u)])))), func_2(Struct_1(~arg_0.c.x, _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(arg_0.b, arg_0.b), max(vec2<i32>(u_input.b.x, -1i), arg_0.b)), arg_0.c, _wgslsmith_dot_vec2_i32(arg_0.b, vec2<i32>(arg_0.d, u_input.c)))), func_2(Struct_1(~(u_input.d | u_input.d), select(_wgslsmith_mod_vec2_i32(u_input.b.wy, vec2<i32>(arg_0.d, 0i)), func_2(arg_0).b, all(vec4<bool>(false, false, global1[_wgslsmith_index_u32(arg_0.c.x, 7u)], global1[_wgslsmith_index_u32(70029u, 7u)]))), ~arg_0.c, _wgslsmith_clamp_i32(i32(-1i) * -1i, u_input.c | 2147483647i, -2147483647i))));
    let var_1 = ~(~(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(44475u, var_0.b.c.x, var_0.b.a, var_0.c.c.x), vec4<u32>(var_0.c.c.x, var_0.b.c.x, u_input.d, 88036u), vec4<u32>(u_input.a, arg_0.a, 61558u, u_input.e)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -953f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1985f)), _wgslsmith_f_op_f32(-2102f * _wgslsmith_f_op_f32(-811f - 125f)))));
    var var_3 = _wgslsmith_f_op_f32(var_2 - var_2);
    return Struct_2(-2147483647i, var_0.a.x, vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 7u)], any(select(select(vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 7u)], false), vec3<bool>(var_0.a.x, false, false), vec3<bool>(var_0.a.x, global1[_wgslsmith_index_u32(u_input.a, 7u)], global1[_wgslsmith_index_u32(var_0.b.c.x, 7u)])), vec3<bool>(true, true, true), !vec3<bool>(global1[_wgslsmith_index_u32(arg_0.a, 7u)], var_0.a.x, var_0.a.x)))), arg_0.c.zz, 2147483647i);
}

fn func_5(arg_0: Struct_2) -> f32 {
    var var_0 = vec4<bool>(!any(vec4<bool>(true, arg_0.b && arg_0.b, all(vec3<bool>(true, arg_0.b, false)), true)), !(min(-2147483647i, -22790i) > arg_0.a), select(any(!vec2<bool>(true, global1[_wgslsmith_index_u32(8966u, 7u)])), all(select(vec4<bool>(arg_0.b, global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(59937u, 7u)], global1[_wgslsmith_index_u32(1u, 7u)]), !vec4<bool>(false, false, global1[_wgslsmith_index_u32(30672u, 7u)], arg_0.b), all(vec3<bool>(true, true, true)))), !arg_0.c.x || true), false);
    global1 = array<bool, 7>();
    global0 = ~(~159830u) | ~arg_0.d.x;
    global1 = array<bool, 7>();
    var var_1 = true;
    return 296f;
}

fn func_6(arg_0: vec3<i32>, arg_1: vec4<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(375f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * 1829f)), -564f))));
    var var_1 = vec2<u32>(6817u, 4294967295u);
    global1 = array<bool, 7>();
    var var_2 = true;
    var var_3 = _wgslsmith_sub_u32(u_input.a, 10585u);
    return _wgslsmith_mult_i32(u_input.b.x, arg_0.x);
}

fn func_1(arg_0: bool) -> i32 {
    var var_0 = select(vec4<bool>(global1[_wgslsmith_index_u32(~u_input.e, 7u)], arg_0, all(vec3<bool>(select(true, true, arg_0), true, any(vec2<bool>(true, true)))), arg_0), !select(vec4<bool>(true, !arg_0, !arg_0, u_input.a != u_input.a), vec4<bool>(false, !arg_0, all(vec2<bool>(true, arg_0)), !global1[_wgslsmith_index_u32(u_input.e, 7u)]), true), global1[_wgslsmith_index_u32(u_input.e, 7u)]);
    return func_6(reverseBits(_wgslsmith_div_vec3_i32((vec3<i32>(u_input.b.x, u_input.c, u_input.c) ^ vec3<i32>(-1i, -1i, u_input.b.x)) << (vec3<u32>(50497u, u_input.a, 36945u) % vec3<u32>(32u)), min(abs(vec3<i32>(u_input.b.x, -31848i, u_input.c)), -vec3<i32>(u_input.c, 38562i, u_input.c)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(175f, 454f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -290f) - _wgslsmith_f_op_f32(-235f + 612f)) + -1000f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -498f), -172f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1785f)) - _wgslsmith_f_op_f32(1000f * 761f))), _wgslsmith_f_op_f32(func_5(func_4(func_2(Struct_1(24343u, vec2<i32>(29220i, u_input.c), vec3<u32>(21295u, u_input.e, u_input.e), 31251i)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!global1[_wgslsmith_index_u32(abs(1u), 7u)]);
    let var_1 = -var_0;
    global1 = array<bool, 7>();
    let var_2 = ~(~(~16474u));
    var var_3 = 38337u;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -107f, 372f, -1215f))) - vec4<f32>(_wgslsmith_f_op_f32(-350f - 1510f), _wgslsmith_f_op_f32(sign(-1069f)), _wgslsmith_f_op_f32(round(1606f)), -211f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -520f), -730f, _wgslsmith_div_f32(978f, 857f), _wgslsmith_f_op_f32(229f + 108f))), any(!(!vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 7u)], true))))));
    var var_5 = func_2(Struct_1(4294967295u, vec2<i32>(_wgslsmith_sub_i32(~u_input.c, 0i), reverseBits(_wgslsmith_sub_i32(-1i, 2147483647i))), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(38423u, u_input.a, 28140u), ~vec3<u32>(110728u, 1u, u_input.d)), ~vec3<u32>(var_2, u_input.a, var_2)), var_1));
    let x = u_input.a;
    s_output = StorageBuffer(~(var_5.b | _wgslsmith_div_vec2_i32(min(vec2<i32>(2147483647i, -1i), u_input.b.ww), u_input.b.yx)), ~select(vec2<u32>(var_5.c.x ^ u_input.a, 0u), _wgslsmith_sub_vec2_u32(var_5.c.zy, countOneBits(vec2<u32>(1u, 63497u))), !(!vec2<bool>(global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(17857u, 7u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(194f))));
}

