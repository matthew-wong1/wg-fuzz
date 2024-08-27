struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(i32(-2147483648), -35012i, -1i, -51528i);

var<private> global1: u32 = 1u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<f32>) -> bool {
    global0 = array<i32, 4>();
    let var_0 = !select(_wgslsmith_mult_i32(u_input.a.x, global0[_wgslsmith_index_u32(1u, 4u)]) != -44094i, !any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(513f, arg_0.x)) > 1000f);
    var var_1 = false;
    var var_2 = ~65554u;
    return false;
}

fn func_2() -> bool {
    var var_0 = -601f;
    let var_1 = 4294967295u;
    var var_2 = select(select(vec3<bool>(any(vec3<bool>(true, true, true)), func_3(_wgslsmith_div_vec2_f32(vec2<f32>(-359f, -2152f), vec2<f32>(1845f, 1641f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-187f, -879f) + vec2<f32>(1690f, 857f))), select(true, true, 1u >= var_1)), select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(false, false)), any(vec3<bool>(false, false, false)), any(vec2<bool>(true, false))), !(u_input.a.x > -1i)), select(vec3<bool>(func_3(vec2<f32>(-321f, -434f), vec2<f32>(576f, -635f)), true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), select(all(vec3<bool>(true, true, false)), true, any(vec2<bool>(false, true))))), vec3<bool>(true, !select(true, any(vec4<bool>(false, false, true, false)), select(true, false, true)), false), all(select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(false, false, true), any(vec4<bool>(true, false, false, true))), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(185f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1588f), 701f)), any(select(vec2<bool>(var_2.x, false), var_2.zy, vec2<bool>(var_2.x, true)))))));
    var_2 = vec3<bool>(any(select(!select(vec3<bool>(true, true, var_2.x), vec3<bool>(var_2.x, false, var_2.x), false), !select(vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(var_2.x, true, var_2.x), var_2.x), select(select(vec3<bool>(var_2.x, var_2.x, true), vec3<bool>(var_2.x, false, false), vec3<bool>(true, var_2.x, true)), vec3<bool>(var_2.x, var_2.x, true), vec3<bool>(var_2.x, true, true)))), false, false);
    return false;
}

fn func_1(arg_0: u32, arg_1: f32) -> i32 {
    global0 = array<i32, 4>();
    var var_0 = Struct_3(Struct_1(vec3<bool>(!func_2(), false, !all(vec3<bool>(false, false, true))), vec3<bool>(false, true, true), u_input.a.x, vec4<i32>(-64654i, global0[_wgslsmith_index_u32(~arg_0, 4u)], i32(-1i) * -2147483647i, 1i)), Struct_2(vec4<u32>(abs(arg_0), 14163u, arg_0, _wgslsmith_mod_u32(arg_0, arg_0) << (_wgslsmith_sub_u32(arg_0, 4294967295u) % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 490f, -223f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(512f, 134f, -827f, arg_1)))))), Struct_1(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(-1i > global0[_wgslsmith_index_u32(31824u, 4u)], true, true), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-23651i, u_input.a.x), u_input.a.zw, vec2<i32>(u_input.a.x, 0i)), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(-15704i, u_input.a.x))), u_input.a)));
    global1 = var_0.b.a.x;
    global1 = 4294967295u;
    global0 = array<i32, 4>();
    return _wgslsmith_clamp_i32(2147483647i, -26715i, _wgslsmith_dot_vec4_i32(vec4<i32>(abs(global0[_wgslsmith_index_u32(var_0.b.a.x, 4u)]), firstLeadingBit(u_input.a.x), ~2147483647i, u_input.a.x & var_0.b.d.c), vec4<i32>(var_0.b.d.c, 1i, 2147483647i, var_0.a.d.x) << (min(vec4<u32>(1u, arg_0, arg_0, 75839u), vec4<u32>(arg_0, arg_0, var_0.b.a.x, var_0.b.a.x)) % vec4<u32>(32u))) & _wgslsmith_dot_vec2_i32(-var_0.b.d.d.yx, select(var_0.a.d.xw, u_input.a.zw, any(vec3<bool>(var_0.a.b.x, var_0.a.a.x, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i != func_1(_wgslsmith_add_u32(~firstLeadingBit(3122u), 1u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1985f - -1000f), 888f)));
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1u, 1u, 1u)), vec3<u32>(79235u, ~abs(0u), 1u)), _wgslsmith_clamp_u32(firstTrailingBit(45699u) ^ min(~1u, _wgslsmith_mult_u32(0u, 1u)), 1u, 23221u));
    var_0 = !all(select(vec4<bool>(all(vec4<bool>(true, false, true, true)), true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), select(false, false, false)), vec4<bool>(true, true, true, true)));
    var_0 = func_2();
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1539f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-135f * 1f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-668f, -1489f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(356f, 1097f))) + vec2<f32>(1f, 1f))));
    let x = u_input.a;
    s_output = StorageBuffer(~0u);
}

