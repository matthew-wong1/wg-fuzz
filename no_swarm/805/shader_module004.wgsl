struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = reverseBits(4294967295u);
    let var_1 = arg_1;
    let var_2 = var_1;
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-142f, _wgslsmith_f_op_f32(-2654f + _wgslsmith_div_f32(var_2.a.x, _wgslsmith_f_op_f32(var_1.a.x - var_2.a.x)))));
    var var_4 = ~(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(62033u, 0u, 1u, arg_0.x), firstLeadingBit(arg_0)), reverseBits(~0u)));
    return select(vec2<bool>(-u_input.a != u_input.d, var_2.a.x <= -1043f), !select(vec2<bool>(-1520f == var_3.x, -1132f >= var_3.x), vec2<bool>(all(vec3<bool>(false, false, false)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(false, !(_wgslsmith_f_op_f32(trunc(875f)) > _wgslsmith_f_op_f32(var_1.a.x + arg_1.a.x))));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-410f, 1000f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1236f, 131f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-428f, -652f))))));
    let var_1 = !(u_input.c > _wgslsmith_div_u32(8277u, 42543u));
    var var_2 = Struct_1(var_0.a);
    var var_3 = ((i32(-1i) * -abs(0i)) | firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, -48550i, 28900i), ~vec3<i32>(u_input.a, u_input.a, arg_0)))) | arg_0;
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x - -672f), _wgslsmith_div_f32(314f, 549f))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-324f - -320f) - var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x * 441f)))));
    return _wgslsmith_f_op_f32(var_2.a.x - _wgslsmith_f_op_f32(sign(var_0.a.x)));
}

fn func_1() -> Struct_1 {
    let var_0 = !select(vec2<bool>(false, true), !select(vec2<bool>(true, true), func_2(vec4<u32>(1u, u_input.c, 31960u, u_input.b), Struct_1(vec2<f32>(1889f, 423f))), vec2<bool>(false, false)), vec2<bool>(true, ~33455i >= select(u_input.a, -2147483647i, true)));
    var var_1 = vec3<bool>(var_0.x, !all(vec4<bool>(true, var_0.x, !var_0.x, var_0.x)), func_2(abs(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.c, 0u), vec4<u32>(u_input.c, 1634u, u_input.b, u_input.b)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 28011u, 113233u, 56159u), vec4<u32>(55427u, u_input.c, 4294967295u, 5536u)))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(func_3(2147483647i, vec2<u32>(0u, u_input.c))), _wgslsmith_div_f32(2094f, 550f)))).x);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -629f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1376f, -727f)) - _wgslsmith_f_op_f32(-1178f - -188f))))));
    var var_3 = _wgslsmith_f_op_f32(-2074f + _wgslsmith_f_op_f32(-313f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(1i, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 66354u), vec2<u32>(4294967295u, u_input.c)))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-var_2), var_1.x)))));
    let var_4 = !select(vec4<bool>((0u << (u_input.c % 32u)) > _wgslsmith_mult_u32(75516u, u_input.c), !func_2(vec4<u32>(110574u, 0u, u_input.b, 1u), Struct_1(vec2<f32>(var_2, var_2))).x, all(!vec3<bool>(var_1.x, false, var_0.x)), all(vec3<bool>(true, true, true))), !select(vec4<bool>(false, false, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_0.x, true), true), select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(var_1.x, var_1.x, true, true), true), select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(var_1.x, var_1.x, var_0.x, true), var_0.x), var_1.x), vec4<bool>(any(vec3<bool>(var_1.x, var_0.x, var_0.x)), true, true, true), _wgslsmith_f_op_f32(-var_2) < _wgslsmith_f_op_f32(-567f * -389f)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(2363f, var_2), vec2<f32>(-1766f, -517f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-542f, var_2)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1664f, var_2))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = func_1();
    let var_2 = var_1;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(min(1375f, 1868f))), var_0.a)));
    let var_4 = !(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    let var_5 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x + var_1.a.x), 1f, _wgslsmith_f_op_f32(1243f - _wgslsmith_f_op_f32(max(431f, -638f)))))));
    let var_6 = _wgslsmith_f_op_f32(floor(1471f));
    let x = u_input.a;
    s_output = StorageBuffer(-2404f, u_input.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(522f + var_1.a.x)))), -275f, 28916i <= countOneBits(u_input.a))));
}

