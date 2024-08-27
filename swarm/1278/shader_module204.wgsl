struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = vec2<i32>(-u_input.b.x, -23619i);
    let var_1 = arg_0.b.yz;
    var var_2 = var_0.x;
    let var_3 = -(~min(-58138i | _wgslsmith_dot_vec2_i32(u_input.b.yw, var_0), u_input.b.x >> (~43941u % 32u)));
    return var_1;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = Struct_1(arg_0.a, select(!select(!vec3<bool>(arg_0.b.x, false, false), !arg_1.b, arg_0.b.x & false), vec3<bool>(17227u >= u_input.a.x, !arg_0.b.x, all(vec4<bool>(arg_0.b.x, arg_1.b.x, true, arg_0.b.x))), arg_1.b), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -336f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1711f)) * _wgslsmith_f_op_f32(sign(376f))))));
    let var_1 = ~u_input.b.ywz;
    let var_2 = !any(select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_1.b.x, arg_1.b.x, var_0.b.x, true), !select(vec4<bool>(arg_0.b.x, arg_1.b.x, false, true), vec4<bool>(arg_0.b.x, var_0.b.x, true, arg_0.b.x), true)));
    var_0 = arg_0;
    let var_3 = arg_0.a;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.yz));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> bool {
    var var_0 = arg_0;
    let var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a), _wgslsmith_f_op_vec3_f32(-var_0.a)), !(!(!select(var_0.b, vec3<bool>(arg_0.b.x, true, var_0.b.x), vec3<bool>(true, var_0.b.x, arg_0.b.x)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.c, var_0.c) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec3<f32>(arg_0.a.x, -986f, var_0.a.x), var_0.b, arg_0.c), arg_0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_0.a.yz, vec2<f32>(125f, var_0.a.x))))))));
    var_0 = arg_0;
    let var_2 = _wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_mod_i32(-u_input.b.x, -u_input.b.x), ~u_input.b.x);
    let var_3 = !vec2<bool>(var_1.b.x, any(select(select(var_0.b.xy, var_1.b.xz, arg_0.b.xy), vec2<bool>(var_0.b.x, true), true)));
    return any(select(!vec4<bool>(true, true, select(false, false, false), var_0.b.x), !select(select(vec4<bool>(var_0.b.x, false, var_3.x, true), vec4<bool>(var_0.b.x, var_3.x, arg_0.b.x, arg_0.b.x), vec4<bool>(true, arg_0.b.x, var_3.x, var_1.b.x)), vec4<bool>(true, true, true, true), !vec4<bool>(var_3.x, var_3.x, false, false)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(420f, 405f, 523f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(995f, 103f, -689f), vec3<f32>(-992f, 471f, -304f), false)), vec3<f32>(-689f, 1000f, -484f))))), !vec3<bool>(all(vec2<bool>(false, false)), any(func_1(Struct_1(vec3<f32>(-1660f, -747f, -1188f), vec3<bool>(false, false, true), vec2<f32>(244f, 1000f)))), true), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(2224f + 779f))) * -594f), -1869f));
    var var_1 = 15269i << (_wgslsmith_div_u32(u_input.a.x, 4294967295u) % 32u);
    var var_2 = var_0;
    var_1 = u_input.b.x;
    var_2 = Struct_1(var_0.a, var_2.b, vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_2.a.x, var_2.a.x, true)))), var_2.a.x));
    var var_3 = vec2<bool>(!select(!(!var_0.b.x), any(vec3<bool>(true, true, true)), false), all(vec2<bool>(func_2(var_0, reverseBits(u_input.a.x)), true)));
    var_1 = 1i;
    var_1 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a, u_input.a), abs(u_input.a) | u_input.a), _wgslsmith_sub_u32(reverseBits(u_input.a.x), 4294967295u), u_input.b.x);
}

