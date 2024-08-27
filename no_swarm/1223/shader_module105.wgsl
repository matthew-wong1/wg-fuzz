struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-124f, 1340f, -129f)), vec3<f32>(554f, 467f, -771f), 1u > u_input.b.x))))), ~(u_input.b.x & ~_wgslsmith_mod_u32(1u, u_input.b.x)));
}

fn func_1() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-457f, 402f, 137f) - vec3<f32>(2352f, 2072f, -393f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-805f, 412f, -135f)))))), u_input.b.x);
    let var_1 = var_0.a.xy;
    let var_2 = !all(vec2<bool>(true, true));
    var var_3 = func_2();
    var_3 = var_0;
    return -375f;
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = func_2();
    var var_1 = 11947u;
    var var_2 = !select(select(vec3<bool>(true, true, true), vec3<bool>(false, any(vec3<bool>(true, false, false)), true), vec3<bool>(all(vec4<bool>(false, false, true, false)), all(vec4<bool>(true, true, true, false)), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !vec3<bool>(all(vec4<bool>(true, true, true, true)), arg_0.b < 0u, true));
    var_2 = select(vec3<bool>(-3447f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -175f) * _wgslsmith_f_op_f32(-var_0.a.x)), false, !var_2.x), select(vec3<bool>(false, all(!vec3<bool>(var_2.x, var_2.x, false)), true), !vec3<bool>(any(vec4<bool>(false, var_2.x, var_2.x, false)), !var_2.x, all(vec3<bool>(var_2.x, false, var_2.x))), !vec3<bool>(var_2.x, var_2.x, true)), vec3<bool>(var_2.x || (true & any(vec2<bool>(var_2.x, var_2.x))), !(var_2.x || false), true));
    var_2 = select(!vec3<bool>(~u_input.b.x > 89535u, all(select(vec2<bool>(var_2.x, false), vec2<bool>(false, false), var_2.x)), var_2.x), vec3<bool>(any(select(!vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_2.x, true, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)), !vec4<bool>(var_2.x, var_2.x, true, var_2.x))), true, !var_2.x), any(vec4<bool>(all(!var_2.xy), all(select(vec3<bool>(var_2.x, var_2.x, true), vec3<bool>(false, var_2.x, false), vec3<bool>(false, var_2.x, var_2.x))), var_2.x, true)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, var_0.a.x, arg_0.a.x) * arg_0.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a * vec3<f32>(var_0.a.x, 215f, 1000f)))), _wgslsmith_f_op_vec3_f32(arg_0.a - vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(trunc(arg_0.a.x)), _wgslsmith_f_op_f32(min(746f, 922f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -614f), _wgslsmith_f_op_f32(func_1()))))));
    let var_1 = _wgslsmith_f_op_f32(-func_2().a.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))), -1000f, _wgslsmith_f_op_f32(1274f * var_0.x))));
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec3<f32>(451f, var_2.x, 137f), u_input.b.x))))) - func_2().a)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec3<f32>(-1000f, -249f, var_2.x), u_input.b.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(116f, var_1, 1000f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -650f, var_2.x)), vec3<f32>(-946f, var_0.x, 1266f)) * vec3<f32>(_wgslsmith_f_op_f32(124f + -121f), -1536f, _wgslsmith_f_op_f32(max(404f, var_1))))));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1099f, var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -810f))));
    let var_3 = _wgslsmith_mod_vec4_u32(~(vec4<u32>(~1u, u_input.b.x, 15192u, 4294967295u) << (firstLeadingBit(vec4<u32>(20011u, u_input.b.x, u_input.b.x, u_input.b.x)) % vec4<u32>(32u))), select(vec4<u32>(~func_2().b, select(u_input.b.x, 1u, true), u_input.b.x, u_input.b.x), vec4<u32>(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(10621u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(26073u, 99143u, u_input.b.x, 32436u))), ~0u, firstTrailingBit(~u_input.b.x), min(1u, 23771u)), !((u_input.b.x == u_input.b.x) || true)));
    var_0 = var_2.xz;
    var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(func_2())), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(815f, -1400f, var_0.x), vec3<f32>(var_0.x, 406f, var_2.x)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1436f, 1000f, -542f))))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), var_1, var_1), vec3<bool>(true, true, any(vec4<bool>(true, false, true, true)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(select(1000f, -342f, true)), _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, 1755f, var_0.x) * vec3<f32>(var_2.x, 301f, var_0.x)) - vec3<f32>(var_1, var_0.x, 546f)) * vec3<f32>(1379f, _wgslsmith_div_f32(-131f, -1180f), 1023f)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec2<u32>(~(~var_3.x), 1u), vec2<u32>(select(1u, 10877u, all(vec2<bool>(true, true))), ~0u)), 1u);
}

