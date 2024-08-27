struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true));

var<private> global1: f32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> i32 {
    let var_0 = arg_3;
    global0 = array<vec4<bool>, 2>();
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-820f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -652f))))));
    var var_1 = true;
    let var_2 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -78066i, arg_0.a, -arg_0.a) & vec3<i32>(~u_input.a, 1i, -1i), -countOneBits(vec3<i32>(arg_0.a, arg_0.a, u_input.a) << (vec3<u32>(1u, 0u, arg_2) % vec3<u32>(32u)))));
    return var_2.a;
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = ~_wgslsmith_dot_vec3_i32(~(~vec3<i32>(11997i, u_input.a, -51356i)) | _wgslsmith_mod_vec3_i32(~vec3<i32>(-18585i, arg_2.a, 0i), -vec3<i32>(-2147483647i, arg_2.a, -8268i)), ~abs(select(vec3<i32>(arg_0, arg_3.a, u_input.a), vec3<i32>(-32647i, arg_3.a, arg_2.a), false)));
    let var_1 = arg_3;
    var var_2 = arg_3;
    let var_3 = -reverseBits(-21202i);
    let var_4 = arg_0;
    return _wgslsmith_f_op_f32(trunc(-287f));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(~u_input.a);
    let var_1 = _wgslsmith_f_op_f32(func_4(-_wgslsmith_mod_i32(_wgslsmith_mult_i32(func_3(var_0, true, 47060u, Struct_1(-34283i)), 1i), 1390i), u_input.a, var_0, Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a, 60357i, u_input.a, _wgslsmith_mult_i32(-36894i, 1i)), vec4<i32>(-4524i, abs(var_0.a), _wgslsmith_sub_i32(14493i, -3039i), -26250i)))));
    var var_2 = all(vec2<bool>(!any(vec2<bool>(true, true)), false));
    let var_3 = arg_0;
    var var_4 = vec2<i32>(-39652i, -_wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(14270i), ~var_0.a), ~select(vec2<i32>(-1i, var_0.a), vec2<i32>(-1i, var_0.a), vec2<bool>(false, false))));
    return Struct_1(1266i);
}

fn func_1() -> Struct_1 {
    global0 = array<vec4<bool>, 2>();
    var var_0 = func_2(Struct_1(-2147483647i));
    let var_1 = u_input.b;
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-883f, _wgslsmith_f_op_f32(f32(-1f) * -1742f), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -621f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(792f, -1000f, 1164f, 118f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1648f, 117f, -1503f, -503f))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1411f, 846f, -305f, -1140f), vec4<f32>(1f, 1f, 1f, 1f))))), vec4<f32>(-956f, _wgslsmith_f_op_f32(func_4(u_input.a, u_input.a, func_2(Struct_1(var_0.a)), Struct_1(select(var_0.a, var_0.a, true)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -525f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1409f + -1272f) + -504f)))));
    let var_3 = func_2(func_2(Struct_1(-32175i)));
    return var_3;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    return Struct_1(arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(), func_2(Struct_1(firstTrailingBit(2147483647i))), true);
    let var_1 = ~(~((~vec2<i32>(u_input.a, -2147483647i) & -vec2<i32>(-17177i, 47328i)) >> (~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, 90452u)) % vec2<u32>(32u))));
    var var_2 = all(vec2<bool>(true, true));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -262f) * 494f);
    var_0 = Struct_1(func_1().a);
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-226f + -1316f))) - 477f)));
    var var_3 = vec3<i32>(u_input.a, func_3(func_1(), true, 0u, Struct_1(u_input.a)), u_input.a);
    global1 = -1411f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.b, ~u_input.b), u_input.b ^ u_input.b) >> (u_input.b % 32u), var_1.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(522f, 1322f, -658f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-452f, -1000f, 504f) + vec3<f32>(-1455f, 801f, -1164f))))), reverseBits(~firstLeadingBit(vec3<u32>(u_input.b, 4294967295u, u_input.b)) & ~abs(vec3<u32>(5553u, 39260u, u_input.b))), 45526i);
}

