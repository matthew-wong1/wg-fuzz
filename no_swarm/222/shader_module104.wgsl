struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
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

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_3) -> f32 {
    var var_0 = Struct_1(!vec2<bool>(arg_0.a, arg_0.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(400f)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1525f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(abs(-481f)), 1f))) - vec2<f32>(765f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-716f, 846f, arg_0.a))))));
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(min(var_0.c.x, 1618f));
    var_1 = arg_0;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1360f)) - -1226f));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(-679f - _wgslsmith_f_op_f32(-var_0.b)))), _wgslsmith_div_f32(965f, -221f));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec2<f32>, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = arg_1.x;
    var_0 = countOneBits(1u);
    return !select(vec2<bool>(true, select(arg_0.d.a.x & arg_3.b.x, arg_0.d.a.x, !arg_3.d.a.x)), select(arg_3.a.a, select(arg_0.d.a, !arg_3.b.xy, arg_3.d.a), select(arg_3.b.zy, select(arg_3.a.a, arg_3.b.xz, arg_3.d.a), vec2<bool>(arg_0.b.x, arg_0.a.a.x))), true);
}

fn func_1(arg_0: i32) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(390f, 729f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, -1338f), vec2<f32>(-1000f, -530f))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1202f, -1000f)))))))));
    let var_1 = 48378u;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2352f * _wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2461f * 441f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_3(true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -194f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) * var_0.x)), _wgslsmith_f_op_f32(floor(-1487f)));
    let var_3 = Struct_1(select(func_3(Struct_2(Struct_1(vec2<bool>(false, true), var_0.x, var_2.yw), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), -38843i, Struct_1(vec2<bool>(true, true), -457f, vec2<f32>(var_0.x, var_2.x))), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, var_1, 4294967295u) & vec3<u32>(var_1, 1u, 0u), _wgslsmith_mult_vec3_u32(vec3<u32>(var_1, 502u, 1u), vec3<u32>(var_1, var_1, 27069u))), _wgslsmith_f_op_vec2_f32(-var_2.xy), Struct_2(Struct_1(vec2<bool>(false, false), var_0.x, vec2<f32>(-928f, 655f)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), 1i, Struct_1(vec2<bool>(false, false), 577f, var_2.wx))), select(vec2<bool>(true, true), vec2<bool>(true, arg_0 > -1i), all(vec4<bool>(false, false, false, true)) & true), (false || select(true, true, true)) != false), -2132f, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(var_2.yz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1069f, -687f))), var_2.xz)));
    let var_4 = firstTrailingBit(var_1 << (countOneBits(1u) % 32u));
    return StorageBuffer(vec3<u32>(countOneBits(~firstTrailingBit(0u)), ~var_1, _wgslsmith_mult_u32(min(_wgslsmith_mod_u32(63752u, var_1), ~1u), ~var_1)), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_1, var_4), vec2<u32>(var_4, var_4)), ~vec2<u32>(var_4, 92880u)) | ~(~vec2<u32>(var_1, var_4)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)));
    let x = u_input.a;
    s_output = func_1(min(_wgslsmith_mult_i32(17224i, -55579i), u_input.a.x) << (~(~14394u) % 32u));
}

