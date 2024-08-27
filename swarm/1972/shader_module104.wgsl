struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(arg_0, arg_0))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2046f), _wgslsmith_f_op_f32(arg_0.x + arg_0.x), _wgslsmith_f_op_f32(arg_0.x + arg_0.x), arg_0.x)), any(vec3<bool>(true, true, true)))));
    var var_1 = Struct_2(5808u);
    let var_2 = u_input.b.x;
    var var_3 = -2147483647i;
    var_1 = Struct_2(_wgslsmith_mod_u32(4294967295u, var_1.a));
    return -412f;
}

fn func_2(arg_0: f32, arg_1: vec2<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_0, arg_1.x, arg_1.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, 798f, 362f))))))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(490f))))));
    return _wgslsmith_f_op_f32(abs(var_0));
}

fn func_1() -> f32 {
    var var_0 = vec4<bool>(true, true, true, true);
    let var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(step(1783f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1599f)) + 776f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-930f)) - _wgslsmith_f_op_f32(func_2(-1238f, vec2<f32>(-733f, 446f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(410f)), 409f)), -1000f, 347f));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.a.x * var_1.a.x), _wgslsmith_f_op_f32(-var_1.a.x))))) - 1226f);
    var_0 = vec4<bool>(!(!var_0.x), var_0.x, true, var_0.x);
    var var_2 = all(select(!vec3<bool>(var_0.x, false, var_0.x), select(select(var_0.wwy, vec3<bool>(false, var_0.x, false), var_1.a.x >= var_1.a.x), vec3<bool>(u_input.a.x == u_input.a.x, true & var_0.x, var_0.x), true), vec3<bool>(!var_0.x, true, false)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1774f - 1225f), -1130f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-755f * _wgslsmith_div_f32(641f, _wgslsmith_f_op_f32(-var_1.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1f * -180f))) + _wgslsmith_f_op_f32(func_1()));
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(744f, -1000f))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -366f), _wgslsmith_f_op_f32(func_1())))));
    let var_1 = Struct_5(vec3<i32>(u_input.b.x, _wgslsmith_clamp_i32(u_input.b.x, ~u_input.b.x, -2147483647i), u_input.b.x) | u_input.b.wzw, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(267f)) - _wgslsmith_f_op_f32(f32(-1f) * -1219f)), 1000f), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -235f)))));
    let var_2 = countOneBits(firstTrailingBit(var_1.a.zz));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) - -408f)))), -176f);
    let x = u_input.a;
    s_output = StorageBuffer(700f, u_input.a, min(~(reverseBits(u_input.a.x) | u_input.a.x), _wgslsmith_sub_u32(u_input.a.x, ~1u)));
}

