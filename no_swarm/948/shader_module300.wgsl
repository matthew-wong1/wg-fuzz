struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: u32,
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

var<private> global0: f32;

var<private> global1: array<u32, 16>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_1(arg_0: bool) -> bool {
    var var_0 = arg_0;
    var var_1 = ~select(_wgslsmith_mod_u32(~_wgslsmith_mult_u32(0u, 6468u), 58518u), ~u_input.e, false);
    let var_2 = ~(-_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c.x, -16035i), u_input.c.yz), select(u_input.d.zz, vec2<i32>(27276i, u_input.d.x), arg_0)), ~u_input.d.yy >> (u_input.b.wz % vec2<u32>(32u))));
    var var_3 = !any(!vec3<bool>(true, !arg_0, arg_0));
    let var_4 = -581f;
    return arg_0;
}

fn func_3(arg_0: vec4<u32>, arg_1: f32) -> bool {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1349f);
    let var_0 = vec2<f32>(arg_1, _wgslsmith_f_op_f32(-arg_1));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, 652f)), 1f, -581f, 1623f) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, -1148f, 1378f), vec4<f32>(var_0.x, arg_1, -822f, 729f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, arg_1, var_0.x, var_0.x) - vec4<f32>(151f, 1090f, 243f, -1142f)))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(var_0, _wgslsmith_f_op_vec2_f32(abs(var_0)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0 * _wgslsmith_f_op_vec2_f32(-var_0)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), vec2<f32>(var_0.x, 1817f)))))), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_add_i32(u_input.d.x, -1i), i32(-1i) * -47802i, _wgslsmith_mod_i32(-2147483647i, 13352i)), select(vec3<i32>(1i, u_input.d.x, 22309i), ~vec3<i32>(-2147483647i, u_input.c.x, u_input.d.x), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false))) << (_wgslsmith_clamp_vec3_u32(u_input.b.xzz, u_input.b.xwz, arg_0.zxy) % vec3<u32>(32u)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_1.a))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.x)), arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.b.x * arg_1))))), -firstTrailingBit(_wgslsmith_div_vec3_i32(-vec3<i32>(-5817i, u_input.c.x, 2147483647i), vec3<i32>(u_input.d.x, -53390i, u_input.d.x))));
    let var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(754f * arg_1))), -286f, var_0.x, _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_0)) + vec2<f32>(1000f, var_0.x)) * vec2<f32>(-705f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.a.x))))), vec3<i32>(~(-_wgslsmith_dot_vec3_i32(u_input.c.wwz, u_input.d)), var_1.c.x, ~57409i));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.b.x - var_3.b.x), _wgslsmith_f_op_f32(-var_2.a.x), true)) + -160f) * -890f) >= var_3.b.x;
}

fn func_2(arg_0: vec3<bool>) -> vec4<bool> {
    var var_0 = !(!(!select(select(vec4<bool>(arg_0.x, true, true, arg_0.x), vec4<bool>(true, false, arg_0.x, arg_0.x), vec4<bool>(false, true, arg_0.x, true)), select(vec4<bool>(arg_0.x, false, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, false, true), arg_0.x), select(vec4<bool>(true, arg_0.x, true, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), false))));
    var_0 = !select(!(!vec4<bool>(true, false, false, arg_0.x)), vec4<bool>(arg_0.x || (u_input.b.x <= global1[_wgslsmith_index_u32(u_input.a, 16u)]), true, u_input.e >= 44384u, all(vec2<bool>(false, false))), vec4<bool>(func_3(_wgslsmith_sub_vec4_u32(u_input.b, u_input.b), _wgslsmith_f_op_f32(round(359f))), all(vec3<bool>(arg_0.x, true, false)), !(!arg_0.x), true));
    let var_1 = u_input.d;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(442f - 724f), -326f, _wgslsmith_f_op_f32(trunc(-829f)), -1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1199f, -461f), vec2<f32>(-151f, 1317f)))))) - vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1000f, -2709f)), _wgslsmith_f_op_f32(max(854f, -1469f))), _wgslsmith_f_op_f32(f32(-1f) * -212f))), -_wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(-1i, 2147483647i, u_input.d.x)), vec3<i32>(abs(-2147483647i), -12675i, u_input.d.x << (global1[_wgslsmith_index_u32(1u, 16u)] % 32u))));
    global1 = array<u32, 16>();
    return select(select(!vec4<bool>(false, !arg_0.x, !arg_0.x, true), !(!vec4<bool>(var_0.x, var_0.x, true, false)), !vec4<bool>(all(vec2<bool>(false, true)), true, true, true)), vec4<bool>(func_1(false), (-458f < _wgslsmith_div_f32(var_2.b.x, var_2.a.x)) & func_1(arg_0.x), !(!(true & arg_0.x)), arg_0.x), func_3(select(vec4<u32>(u_input.e, u_input.e, 66335u, u_input.b.x), u_input.b, vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.a.x)) * _wgslsmith_f_op_f32(var_2.b.x * -423f))) | !any(!vec4<bool>(false, true, false, arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -818f), 734f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-227f + -1432f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-413f, 740f)))) - 323f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1447f)) - -983f), _wgslsmith_f_op_f32(trunc(981f)))), ~u_input.c.ywy);
    var var_1 = select(!(!select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), true))), select(vec4<bool>(max(5968i, -2147483647i) <= _wgslsmith_div_i32(u_input.d.x, 39872i), false, true, false), func_2(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_1(false))), vec4<bool>(_wgslsmith_div_f32(1153f, var_0.b.x) != _wgslsmith_f_op_f32(select(1000f, 821f, false)), func_1(4294967295u == global1[_wgslsmith_index_u32(1648u, 16u)]), false, !(var_0.c.x > 0i))), !((-2147483647i ^ max(u_input.c.x, u_input.c.x)) == var_0.c.x));
    var var_2 = _wgslsmith_sub_vec2_u32(u_input.b.xy, _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, 79491u), vec2<u32>(22976u, global1[_wgslsmith_index_u32(0u, 16u)]) | u_input.b.yz, ~u_input.b.zz), u_input.b.yw, _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.a), u_input.b.wz), ~vec2<u32>(4294967295u, u_input.a))) << (abs(_wgslsmith_mod_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], global1[_wgslsmith_index_u32(15526u, 16u)]), vec2<u32>(u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 16u)])) & ~u_input.b.wx) % vec2<u32>(32u)));
    var var_3 = Struct_1(var_0.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.b.x))) * _wgslsmith_f_op_vec2_f32(-var_0.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.xz), _wgslsmith_f_op_vec2_f32(var_0.b * vec2<f32>(1021f, var_0.b.x))) - var_0.a.yw)), ~var_0.c);
    let var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_3.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(980f))))) + -1224f), !any(!(!vec4<bool>(false, true, true, var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_4, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-422f * var_0.a.x))))), _wgslsmith_f_op_f32(abs(1000f)), var_3.a.x));
}

