struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: f32, arg_1: Struct_5, arg_2: Struct_4) -> bool {
    var var_0 = arg_1;
    var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(arg_1.a))))));
    var_0 = arg_1;
    var_0 = arg_1;
    var var_1 = arg_1.a.zzx;
    return true;
}

fn func_3(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(343f)), _wgslsmith_div_f32(-121f, -396f)) + -1498f)) - 1f);
    var var_1 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -594f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-705f - _wgslsmith_f_op_f32(-var_0)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(286f))))), -480f, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(max(var_0, 1545f)))))));
    var var_2 = -u_input.c.x;
    var var_3 = Struct_4(arg_0, vec2<i32>(-(~u_input.b), u_input.b), vec3<i32>(22563i, ~2147483647i << (_wgslsmith_mult_u32(0u, countOneBits(4294967295u)) % 32u), 81560i));
    let var_4 = Struct_5(_wgslsmith_div_vec4_f32(var_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(var_1.a - var_1.a))))));
    return Struct_2(vec4<i32>(-u_input.c.x, u_input.a, u_input.b, ~countOneBits(i32(-1i) * -2147483647i)));
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-201f + 2357f) + -1000f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-463f - -107f)))))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + var_0) * _wgslsmith_f_op_f32(max(var_0, var_0))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, var_0))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_f_op_f32(-var_0), !(true & all(vec3<bool>(false, false, true))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_f_op_f32(var_1.x - var_0), _wgslsmith_f_op_f32(236f + var_1.x))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-431f, 158f) + _wgslsmith_f_op_f32(f32(-1f) * -1239f)), -1239f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(440f + var_1.x) + _wgslsmith_f_op_f32(f32(-1f) * -585f))))));
    let var_2 = func_3(select(select(vec4<bool>(true, true, true, func_2(var_0, Struct_5(vec4<f32>(var_0, 983f, -2019f, var_1.x)), Struct_4(vec4<bool>(false, true, false, true), vec2<i32>(u_input.c.x, 2147483647i), u_input.c))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true), false));
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -115f)) * vec3<f32>(var_0, _wgslsmith_f_op_f32(max(var_0, -1229f)), -1608f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -436f, _wgslsmith_f_op_f32(var_0 * 182f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.x, var_0, var_1.x), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, var_0, 311f), vec3<f32>(1782f, var_0, 718f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, -1262f, -1787f))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-935f, var_1.x, -164f)))))));
    return select(!(_wgslsmith_div_u32(firstTrailingBit(0u), 1u) == 4294967295u), true, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(func_1() && false);
    let var_1 = select(select(vec3<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(17642u, 1u, 20282u, 63519u), vec4<u32>(0u, 1u, 4294967295u, 45068u)) != _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 74239u), vec2<u32>(18320u, 1u)), true, select(4294967295u, 4294967295u, false) == firstLeadingBit(4294967295u)), !vec3<bool>(all(vec2<bool>(true, true)), false, all(vec3<bool>(false, false, false))), false), vec3<bool>(select(any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true))), false, false), true, true), any(vec3<bool>(all(vec3<bool>(true, true, true)), true, false)));
    var var_2 = reverseBits(func_3(select(vec4<bool>(true, false, true, true), !select(vec4<bool>(false, var_1.x, false, false), vec4<bool>(var_1.x, true, true, false), var_1.x), !select(vec4<bool>(var_1.x, false, false, true), vec4<bool>(var_1.x, var_1.x, true, var_1.x), false))).a.yx);
    let var_3 = Struct_5(vec4<f32>(1f, 1f, 1f, 1f));
    var_2 = vec2<i32>(var_2.x, -var_2.x);
    var_0 = !var_1.x;
    var_0 = true;
    var_2 = -u_input.c.yz;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(144f + var_3.a.x), var_3.a.x), u_input.c.xx ^ -vec2<i32>(u_input.a, _wgslsmith_mult_i32(0i, 28681i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_3.a.x))));
}

