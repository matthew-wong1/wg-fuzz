struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<f32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25> = array<i32, 25>(2147483647i, 0i, 3308i, -16776i, 38816i, 0i, -19425i, -1i, i32(-2147483648), -1i, 2147483647i, -36034i, 1i, 21811i, 0i, 2147483647i, -1i, 0i, i32(-2147483648), 16023i, 25266i, -1i, 1i, i32(-2147483648), 9800i);

var<private> global1: u32 = 1u;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec4<i32> {
    let var_0 = !any(select(vec2<bool>(true, false), vec2<bool>(all(vec4<bool>(false, false, false, true)), any(vec3<bool>(true, false, true))), select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)))));
    var var_1 = max(~(~reverseBits(vec4<i32>(-36584i, -1i, 0i, global0[_wgslsmith_index_u32(4294967295u, 25u)])) << (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(43553u, u_input.b, u_input.a.x, 0u), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 27308u)), u_input.b, _wgslsmith_clamp_u32(u_input.b, 22209u, u_input.a.x), max(u_input.b, u_input.b)) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(-vec4<i32>(-2147483647i, _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(43214u, 25u)], -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], 2147483647i, -51696i, -15650i), vec4<i32>(1i, global0[_wgslsmith_index_u32(u_input.b, 25u)], global0[_wgslsmith_index_u32(1u, 25u)], 0i)), abs(-25833i)), -_wgslsmith_add_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(47659u, 25u)], -4165i, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], global0[_wgslsmith_index_u32(u_input.b, 25u)]), -vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 25u)], 13128i, global0[_wgslsmith_index_u32(0u, 25u)], 31350i))));
    let var_2 = firstTrailingBit(~4294967295u);
    global0 = array<i32, 25>();
    return vec4<i32>(global0[_wgslsmith_index_u32(var_2, 25u)], var_1.x, ~(-2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(global0[_wgslsmith_index_u32(var_2, 25u)], 1i), firstTrailingBit(~(~vec2<i32>(var_1.x, global0[_wgslsmith_index_u32(var_2, 25u)])))));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_clamp_vec4_i32(func_3(), -firstTrailingBit(vec4<i32>(global0[_wgslsmith_index_u32(73112u, 25u)], 47738i, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], global0[_wgslsmith_index_u32(u_input.b, 25u)])) | ~select(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], -22652i, -10290i, -2147483647i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], 2147483647i, -1i, global0[_wgslsmith_index_u32(0u, 25u)]), false), -vec4<i32>(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(40676u, 25u)]), global0[_wgslsmith_index_u32(~0u, 25u)], _wgslsmith_dot_vec3_i32(vec3<i32>(-43953i, global0[_wgslsmith_index_u32(0u, 25u)], 0i), vec3<i32>(38449i, global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(0u, 25u)])), global0[_wgslsmith_index_u32(reverseBits(1u), 25u)])) ^ ~_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(-19911i, 0i, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], -1i), vec4<i32>(global0[_wgslsmith_index_u32(1u, 25u)], 2147483647i, global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(u_input.b, 25u)])), vec4<i32>(13932i, firstLeadingBit(-2147483647i), ~(-2147483647i), -1i));
    var var_1 = Struct_1(-2147483647i, all(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1084f, -499f, -119f), vec3<f32>(-2793f, -1293f, 211f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, 582f, -1000f), vec3<f32>(-691f, 757f, -1946f))) - vec3<f32>(249f, -1201f, -2615f))))), -1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(480f)))), _wgslsmith_f_op_f32(-1781f - _wgslsmith_f_op_f32(abs(-901f))))))));
    let var_2 = Struct_1(-49984i, !var_1.b, var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.e)))), var_1.c.x);
    var var_3 = Struct_2(max(_wgslsmith_dot_vec4_u32(max(u_input.a, u_input.a), _wgslsmith_mult_vec4_u32(firstLeadingBit(u_input.a), ~u_input.a)), firstLeadingBit(~(u_input.a.x << (5541u % 32u)))), true);
    global0 = array<i32, 25>();
    return 30529u;
}

fn func_1(arg_0: f32, arg_1: bool) -> f32 {
    var var_0 = ~u_input.a.yyy;
    var_0 = vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(var_0.x & u_input.b, _wgslsmith_mult_u32(50606u, 0u)), func_2()), 32763u, 1u) & u_input.a.xyw;
    var var_1 = select(select(vec3<bool>(arg_1 && all(vec4<bool>(true, arg_1, arg_1, false)), false, select(false, false, false) || arg_1), !(!vec3<bool>(arg_1, true, arg_1)), !vec3<bool>(any(vec4<bool>(false, false, arg_1, arg_1)), arg_1, arg_1)), select(select(select(!vec3<bool>(true, arg_1, true), select(vec3<bool>(false, arg_1, true), vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, true, arg_1)), vec3<bool>(arg_1, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(arg_1, true, arg_1), true), false), vec3<bool>(false, true, !select(arg_1, true, true)), any(vec3<bool>(arg_1, true, true))), select(vec3<bool>(all(select(vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(false, false, true, arg_1), vec4<bool>(arg_1, arg_1, true, false))), any(!vec2<bool>(arg_1, arg_1)), !(!arg_1)), select(vec3<bool>(arg_1, all(vec4<bool>(arg_1, arg_1, true, arg_1)), false), select(!vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(false, false, arg_1), vec3<bool>(false, arg_1, true)), vec3<bool>(true, true, true)), arg_1));
    var var_2 = countOneBits(vec4<i32>(~(~(-global0[_wgslsmith_index_u32(4294967295u, 25u)])), _wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], ~(-72614i & global0[_wgslsmith_index_u32(43106u, 25u)])), -9895i, global0[_wgslsmith_index_u32(u_input.b, 25u)] ^ global0[_wgslsmith_index_u32(var_0.x, 25u)]));
    let var_3 = Struct_4(_wgslsmith_add_vec2_i32(vec2<i32>(var_2.x, ~global0[_wgslsmith_index_u32(~u_input.b, 25u)]), _wgslsmith_mod_vec2_i32(var_2.yx, var_2.zx)), countOneBits(vec3<i32>(33334i, var_2.x, -(40683i >> (var_0.x % 32u)))));
    return -465f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(130f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2014f, -1000f, false)))) - _wgslsmith_f_op_f32(func_1(-157f, !all(vec4<bool>(true, false, false, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1148f)));
    var var_1 = vec4<bool>(all(vec4<bool>(any(vec2<bool>(true, true)), all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true))), -global0[_wgslsmith_index_u32(u_input.a.x, 25u)] >= -global0[_wgslsmith_index_u32(74849u, 25u)], false != any(vec2<bool>(false, true)))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true)) | all(vec4<bool>(true, true, any(vec2<bool>(true, true)), false)), ((~4294967295u >= firstTrailingBit(14710u)) || any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)))) | !(_wgslsmith_add_i32(-2147483647i, 0i) < global0[_wgslsmith_index_u32(0u, 25u)]), !select(any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(func_1(var_0.x, true)) == _wgslsmith_f_op_f32(var_0.x - var_0.x), false));
    var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, var_0.x))), vec2<f32>(_wgslsmith_f_op_f32(-900f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -548f), var_0.x)), var_0.x)));
    global0 = array<i32, 25>();
    let var_2 = var_1.x;
    global1 = _wgslsmith_add_u32(u_input.b, _wgslsmith_clamp_u32(8496u, func_2(), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 3373u), vec3<u32>(u_input.a.x, 52912u, 18296u)) | _wgslsmith_div_u32(u_input.b, 4294967295u)));
    let var_3 = vec4<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x ^ 31092u), firstTrailingBit(4294967295u), 81391u, u_input.b) >> ((vec4<u32>(~abs(4294967295u), 3911u, u_input.b, max(4294967295u, 14567u) | _wgslsmith_sub_u32(18811u, u_input.b)) & u_input.a) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-836f, 476f), -197f, -1000f, var_0.x) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, 1628f, var_0.x, -870f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -883f, var_0.x, 990f))))));
}

