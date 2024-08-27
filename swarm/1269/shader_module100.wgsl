struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 24> = array<vec3<u32>, 24>(vec3<u32>(46426u, 1u, 6723u), vec3<u32>(1u, 1u, 0u), vec3<u32>(35525u, 15736u, 37054u), vec3<u32>(0u, 22668u, 33344u), vec3<u32>(39815u, 1u, 1u), vec3<u32>(43694u, 0u, 4294967295u), vec3<u32>(21944u, 15127u, 623u), vec3<u32>(6170u, 4294967295u, 39853u), vec3<u32>(71079u, 86320u, 24136u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(66469u, 42820u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(1u, 53324u, 0u), vec3<u32>(4294967295u, 1u, 80560u), vec3<u32>(0u, 9172u, 12217u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 10192u), vec3<u32>(4294967295u, 57640u, 49274u), vec3<u32>(20185u, 43055u, 77791u), vec3<u32>(0u, 0u, 0u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(28848u, 128733u, 48711u), vec3<u32>(11485u, 14396u, 0u), vec3<u32>(0u, 54953u, 8446u));

var<private> global1: array<vec2<bool>, 1>;

var<private> global2: array<i32, 26> = array<i32, 26>(901i, 20952i, 7891i, -2031i, -37357i, -12515i, 5101i, 22180i, -51804i, -1i, -1i, -61870i, 0i, i32(-2147483648), -1i, -1i, 18487i, 1i, 2147483647i, 57430i, 47418i, 4662i, 4270i, -31353i, 0i, 1i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = true;
    let var_1 = Struct_1(vec2<bool>(false, false));
    global1 = array<vec2<bool>, 1>();
    global0 = array<vec3<u32>, 24>();
    let var_2 = global2[_wgslsmith_index_u32(u_input.b | u_input.a, 26u)] | -18230i;
    return var_1;
}

fn func_3() -> f32 {
    let var_0 = func_1(vec2<bool>(true, true));
    global0 = array<vec3<u32>, 24>();
    let var_1 = ~reverseBits(vec4<i32>(firstLeadingBit(i32(-1i) * -1i), -global2[_wgslsmith_index_u32(u_input.b, 26u)], -2147483647i, global2[_wgslsmith_index_u32(27496u, 26u)]));
    let var_2 = var_0;
    var var_3 = -34717i;
    return 772f;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    global0 = array<vec3<u32>, 24>();
    global2 = array<i32, 26>();
    let var_0 = ~vec3<u32>(54157u, u_input.b, u_input.a);
    var var_1 = vec3<bool>(false, true, _wgslsmith_f_op_f32(func_3()) >= 128f);
    var var_2 = Struct_1(func_1(arg_2.a).a);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~global2[_wgslsmith_index_u32(1u, 26u)]);
    var var_1 = vec2<bool>(!select(all(vec3<bool>(true, false, true)), func_2(Struct_1(vec2<bool>(true, true)), func_1(vec2<bool>(false, false)), func_1(global1[_wgslsmith_index_u32(33341u, 1u)])), all(vec2<bool>(false, false)) | true), any(vec4<bool>(true, false, true, select(true, true, true))) || true);
    global1 = array<vec2<bool>, 1>();
    global0 = array<vec3<u32>, 24>();
    let var_2 = func_1(global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(firstLeadingBit(u_input.a), u_input.a), 1u)]);
    var var_3 = vec4<f32>(-1565f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1164f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1043f, -766f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1152f)))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-974f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), -730f))));
    var var_4 = Struct_1(vec2<bool>(true, true));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-(abs(vec3<i32>(global2[_wgslsmith_index_u32(u_input.b, 26u)], var_0, 2866i)) >> (countOneBits(global0[_wgslsmith_index_u32(0u, 24u)]) % vec3<u32>(32u)))), 1u, global0[_wgslsmith_index_u32(~1u, 24u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, _wgslsmith_f_op_f32(trunc(242f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), -967f))));
}

