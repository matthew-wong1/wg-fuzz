struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<bool>, 2>;

var<private> global2: Struct_1;

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec4<bool> {
    global0 = Struct_1(global0.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x - 140f) * 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.x) - _wgslsmith_div_f32(global3.b.x, global3.b.x)) * _wgslsmith_f_op_f32(sign(global3.b.x)))));
    let var_0 = vec2<u32>(min(0u, u_input.b), u_input.b);
    let var_1 = -_wgslsmith_clamp_vec3_i32(reverseBits(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(27575i, global3.a.x, -2147483647i), vec3<i32>(-1i, global3.a.x, global3.a.x), vec3<i32>(-46873i, u_input.a, global0.a.x)))), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.a.x, 42113i, -1i, -35554i), vec4<i32>(-21151i, -1i, global0.a.x, -4319i)), ~global3.a.x, -1593i), vec3<i32>(-1i) * -vec3<i32>(global2.a.x, 18800i, -10051i), vec3<i32>(global0.a.x, -global0.a.x, _wgslsmith_add_i32(global0.a.x, u_input.a))), vec3<i32>(21492i, _wgslsmith_div_i32(-2147483647i, 2147483647i), -21553i));
    global3 = Struct_1(~abs(vec2<i32>(global3.a.x, -global3.a.x)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(global2.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.x, global2.b.x)) - _wgslsmith_div_vec2_f32(vec2<f32>(605f, global3.b.x), vec2<f32>(-215f, -1670f))))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(340f, global3.b.x, 1219f, -521f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-269f, global2.b.x, global3.b.x, global2.b.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, 620f, 1102f, -125f)))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(626f, 1527f, 936f, 253f), vec4<f32>(445f, 820f, -338f, global2.b.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(279f, global2.b.x, -476f, -913f) - vec4<f32>(global2.b.x, global2.b.x, global2.b.x, -1001f)), vec4<bool>(false, true, false, true)))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-410f, -1022f, global3.b.x, global3.b.x), vec4<f32>(global2.b.x, 1560f, -417f, 2128f)), vec4<f32>(_wgslsmith_f_op_f32(select(global2.b.x, 827f, false)), _wgslsmith_f_op_f32(sign(455f)), global0.b.x, _wgslsmith_f_op_f32(ceil(-1029f)))))));
    return vec4<bool>(select(any(vec2<bool>(true, true)), select(all(vec3<bool>(true, false, false)), all(vec4<bool>(false, true, false, true)), true), false) | (!(var_2.x != 428f) || true), false, true, false);
}

fn func_2() -> Struct_1 {
    var var_0 = vec4<bool>(true, true, !all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false)), func_3())), true);
    var var_1 = max(vec3<i32>(-1i) * -(vec3<i32>(global0.a.x, global2.a.x, global0.a.x) ^ -vec3<i32>(global0.a.x, 1i, global3.a.x)), vec3<i32>(~firstLeadingBit(_wgslsmith_div_i32(19428i, u_input.a)), 2147483647i, ~_wgslsmith_mult_i32(~global0.a.x, firstLeadingBit(global3.a.x))));
    var_0 = !func_3();
    global1 = array<vec2<bool>, 2>();
    var var_2 = ~_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(_wgslsmith_clamp_u32(u_input.b, 1u, 4294967295u), 27104u, u_input.b)), ~(~min(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b))));
    return Struct_1(vec2<i32>(_wgslsmith_sub_i32(1i, -(u_input.a << (15085u % 32u))), i32(-1i) * -31240i), _wgslsmith_f_op_vec2_f32(-global2.b));
}

fn func_1() -> u32 {
    global3 = func_2();
    return u_input.b << (~u_input.b % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(global2.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.x) - _wgslsmith_f_op_f32(-global3.b.x)), _wgslsmith_f_op_f32(floor(global2.b.x)))));
    var var_0 = Struct_1(~vec2<i32>(firstLeadingBit(~global2.a.x), _wgslsmith_dot_vec3_i32(min(vec3<i32>(1373i, global2.a.x, u_input.a), vec3<i32>(global3.a.x, -1i, u_input.a)), vec3<i32>(11162i, u_input.a, global3.a.x))), vec2<f32>(global3.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.b.x + global3.b.x), 1213f) + _wgslsmith_div_f32(_wgslsmith_div_f32(-471f, global2.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1368f)))));
    var var_1 = Struct_1(vec2<i32>(-10997i, _wgslsmith_div_i32(0i, (i32(-1i) * -1i) << (u_input.b % 32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(-1476f * var_0.b.x))))));
    var var_2 = func_1();
    var var_3 = var_0.b.x;
    var var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1222f), global0.b.x));
    let var_5 = global3.b.x;
    var var_6 = vec4<bool>(true, !any(global1[_wgslsmith_index_u32(~firstLeadingBit(u_input.b), 2u)]), false, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-845f, -488f, -1853f, var_0.b.x)) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1009f, var_0.b.x, -1007f, var_0.b.x), vec4<f32>(global0.b.x, var_0.b.x, global3.b.x, var_0.b.x))), vec4<f32>(global3.b.x, 861f, 825f, global2.b.x))))), _wgslsmith_f_op_f32(global0.b.x - -150f));
}

