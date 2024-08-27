struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(floor(1388f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1473f)) + 526f)), -287f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(203f, -1000f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1857f, 601f) + vec2<f32>(802f, -1483f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-3109f, 580f)), vec2<f32>(330f, 857f))))), arg_0);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(round(-859f)), _wgslsmith_f_op_f32(abs(var_0.b)), -422f)))));
    let var_2 = ~u_input.a;
    return var_0.b;
}

fn func_2(arg_0: vec2<bool>) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_3(vec3<bool>(arg_0.x && true, false, false))), _wgslsmith_div_f32(1127f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-141f * 202f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1332f, -2129f, true)) - _wgslsmith_div_f32(1000f, -536f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))))), vec3<bool>(any(select(select(vec3<bool>(arg_0.x, true, true), vec3<bool>(arg_0.x, arg_0.x, true), true), vec3<bool>(false, false, arg_0.x), select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(true, true, false), arg_0.x))), true, true));
    var var_1 = var_0.d.xy;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a + 823f) + -512f) - var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + _wgslsmith_f_op_f32(var_0.a - -304f))))), _wgslsmith_f_op_vec2_f32(trunc(var_0.c)), var_0.d);
    var var_3 = var_0;
    var_2 = var_0;
    return !vec2<bool>(var_0.d.x, _wgslsmith_f_op_f32(select(var_0.b, 794f, 1u < u_input.a)) != 1050f);
}

fn func_4(arg_0: u32, arg_1: vec2<bool>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1593f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1514f * _wgslsmith_f_op_f32(f32(-1f) * -2614f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(step(525f, 1000f)), -365f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-228f, 775f)) - vec2<f32>(-1509f, -145f)))), !select(!vec3<bool>(true, arg_1.x, true), select(vec3<bool>(true, true, true), select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(true, arg_1.x, true), vec3<bool>(arg_1.x, false, false)), select(vec3<bool>(arg_1.x, false, false), vec3<bool>(true, true, false), arg_1.x)), select(select(vec3<bool>(false, arg_1.x, arg_1.x), vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(false, true, true)), !vec3<bool>(arg_1.x, false, false), true)));
    let var_1 = firstLeadingBit(arg_0);
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(399f, var_0.a) - var_0.c) - _wgslsmith_f_op_vec2_f32(-var_0.c)))), vec2<f32>(_wgslsmith_div_f32(266f, -2414f), var_0.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, var_0.a) * vec2<f32>(767f, -217f)))) + _wgslsmith_f_op_vec2_f32(-var_0.c)));
    let var_3 = vec3<i32>(-39431i, _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(abs(1i), countOneBits(-1i), -2147483647i, ~(-1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-13956i, -7760i, -2147483647i, -1i), vec4<i32>(-57531i, 0i, 8822i, 2147483647i) << (vec4<u32>(16837u, var_1, arg_0, u_input.a) % vec4<u32>(32u))))), countOneBits(1i));
    var_2 = _wgslsmith_div_vec2_f32(var_0.c, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.x, -158f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-970f + _wgslsmith_f_op_f32(trunc(1502f))))));
    return var_2.x;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1) -> f32 {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(4294967295u, !func_2(vec2<bool>(arg_1.d.x, false)))) - -374f);
    let var_2 = _wgslsmith_f_op_f32(var_1 - -1533f);
    let var_3 = abs(abs(vec3<u32>(31578u, ~1u, 1u)));
    var var_4 = arg_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.c.x) - _wgslsmith_f_op_f32(366f - _wgslsmith_f_op_f32(-1236f * -996f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(min(82931u, var_3.x), func_2(vec2<bool>(true, var_4.d.x)))) - _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(round(366f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -444f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(_wgslsmith_div_vec3_f32(vec3<f32>(-1192f, -528f, -350f), vec3<f32>(282f, 609f, 1024f)), Struct_1(632f, -1000f, vec2<f32>(-688f, -422f), vec3<bool>(false, true, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1528f + -796f) + -333f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1189f, -224f), _wgslsmith_f_op_f32(f32(-1f) * -107f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-275f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(194f, -1668f)), 401f)), !(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(false, true, false))));
    var var_1 = var_0.d;
    var var_2 = u_input.a == (abs(u_input.a) << (u_input.a % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(0i, vec3<i32>(-select(max(1i, 2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(-14077i, 1i), vec2<i32>(6744i, -2147483647i)), all(vec3<bool>(true, var_0.d.x, var_0.d.x))), ~(~1i), -_wgslsmith_div_i32(_wgslsmith_mult_i32(59076i, 33066i), -14702i)));
}

