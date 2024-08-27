struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    return true;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<bool>) -> bool {
    return func_3();
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_add_i32(-38567i, 1i);
    var var_1 = vec3<bool>(any(vec3<bool>(false, any(vec3<bool>(true, true, true)) || true, true)), all(vec3<bool>(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, arg_0.a.x, 109f, -320f) + vec4<f32>(arg_0.a.x, 2134f, arg_0.a.x, 320f)), vec2<bool>(true, true)), all(vec3<bool>(true, true, true)), true)), true);
    var_1 = vec3<bool>(all(!select(!vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, false, var_1.x, true), !var_1.x)), true, !(!((false && var_1.x) | (u_input.a.x >= 1u))));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(~(func_1(Struct_1(vec3<f32>(-1005f, -412f, -1327f))) ^ 4294967295u), countOneBits(u_input.b.x));
    var_0 = _wgslsmith_add_u32(~(u_input.a.x | _wgslsmith_mod_u32(18255u, _wgslsmith_add_u32(u_input.a.x, 0u))), ~(~u_input.a.x | ~_wgslsmith_div_u32(u_input.b.x, 20718u)));
    var var_1 = !(!select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true), any(vec3<bool>(false, true, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true), vec4<bool>(true, false, false, true), false), false | any(vec2<bool>(true, true))));
    var var_2 = _wgslsmith_div_i32(-u_input.e, ~_wgslsmith_add_i32(reverseBits(1i), 2147483647i));
    var var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -186f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -818f)), _wgslsmith_f_op_f32(f32(-1f) * -445f)));
    var_3 = Struct_1(vec3<f32>(1243f, var_3.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.x))))));
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-688f, _wgslsmith_div_f32(-710f, _wgslsmith_f_op_f32(1535f * var_3.a.x)), var_3.a.x), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a.x, -420f, -1601f) - vec3<f32>(var_3.a.x, var_3.a.x, var_3.a.x)))))));
    var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_4.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1154f, -695f, var_3.a.x)))))), !any(!var_1.xzz))));
    var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(505f, -882f, var_3.a.x)) - vec3<f32>(var_4.a.x, var_4.a.x, -885f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(268f, _wgslsmith_f_op_f32(var_4.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_3.a.x)))))), ~vec2<u32>(1u, firstTrailingBit(~1u)), func_1(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_3.a, vec3<f32>(var_3.a.x, -1000f, var_4.a.x))))), reverseBits(~min(4294967295u, u_input.b.x)), -220f);
}

