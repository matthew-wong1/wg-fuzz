struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(-63936i, i32(-2147483648), 2147483647i, -32006i), vec4<i32>(75662i, -1i, 3767i, 0i), vec4<i32>(8028i, 1i, 29339i, -1i), vec4<i32>(1i, 0i, i32(-2147483648), -28227i), vec4<i32>(-9996i, i32(-2147483648), 12656i, 1i), vec4<i32>(0i, 36350i, 58312i, i32(-2147483648)), vec4<i32>(-45414i, 0i, 883i, 1i), vec4<i32>(2147483647i, i32(-2147483648), 5229i, -30084i), vec4<i32>(-28843i, -8290i, 66553i, -14024i), vec4<i32>(-19969i, 24123i, -11364i, 1i), vec4<i32>(1i, 16163i, i32(-2147483648), -18335i), vec4<i32>(-18854i, 12433i, 24769i, -51400i), vec4<i32>(0i, -16175i, -34269i, 2147483647i), vec4<i32>(0i, i32(-2147483648), 2147483647i, 2147483647i), vec4<i32>(-24575i, 2147483647i, -10183i, 0i), vec4<i32>(1i, 2147483647i, 16949i, 72593i), vec4<i32>(-7340i, 2147483647i, -1i, 33597i), vec4<i32>(-22380i, -1i, -2508i, -22270i), vec4<i32>(0i, -37350i, 0i, 1i), vec4<i32>(0i, -7718i, 9999i, 51169i), vec4<i32>(1i, 1i, -1i, -1i), vec4<i32>(20195i, 26076i, 18295i, 1i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec4<i32>, arg_1: bool, arg_2: u32) -> bool {
    var var_0 = Struct_1(true);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -2260f);
    var_0 = Struct_1(true);
    global0 = array<vec4<i32>, 22>();
    let var_2 = 1i;
    return (~(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 59556u, 21749u), vec3<u32>(u_input.a, 26878u, 0u)) << (~u_input.b.x % 32u)) << (~(~firstTrailingBit(arg_2)) % 32u)) == ~u_input.a;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: f32) -> bool {
    return arg_2.a;
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    return Struct_1(!(func_2(u_input.e, false, 1u) & func_3(Struct_1(false), _wgslsmith_f_op_vec4_f32(trunc(arg_0)), Struct_1(false), _wgslsmith_div_f32(-1000f, 1201f))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec4<f32> {
    return vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -630f), 1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-374f * -513f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-1032f)), _wgslsmith_div_f32(196f, -534f))) + _wgslsmith_f_op_f32(trunc(1185f)))), -196f);
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: bool, arg_3: vec2<f32>) -> vec2<bool> {
    let var_0 = arg_1;
    global0 = array<vec4<i32>, 22>();
    let var_1 = ~u_input.d.xy & u_input.d.yz;
    global0 = array<vec4<i32>, 22>();
    var var_2 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_4(func_1(arg_1), Struct_1(arg_2))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, arg_0.x, var_0.x, arg_0.x)), false))));
    return vec2<bool>(true, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(1000f, -426f);
    let var_1 = Struct_1(any(func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1340f, var_0.x, -149f))), _wgslsmith_f_op_vec4_f32(func_4(func_1(vec4<f32>(var_0.x, var_0.x, 1144f, var_0.x)), Struct_1(false))), !all(vec4<bool>(false, false, false, true)), var_0)));
    let var_2 = Struct_1(var_1.a);
    let var_3 = firstLeadingBit(min(firstTrailingBit(u_input.d.x) >> (~reverseBits(u_input.b.x) % 32u), ~(-2147483647i)));
    let var_4 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_4), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_4)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_4 + var_0.x)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(847f, _wgslsmith_div_f32(var_4, 137f), -463f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_4, 1770f, var_0.x)))))));
}

