struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> u32 {
    let var_0 = -11175i;
    var var_1 = Struct_1(arg_0.a);
    var_1 = arg_0;
    var_1 = arg_0;
    let var_2 = arg_0;
    return 4294967295u;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> bool {
    var var_0 = func_3(arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1606f)))), -940f));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -197f), -632f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(240f + _wgslsmith_f_op_f32(568f * 1082f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-298f + 158f) * _wgslsmith_f_op_f32(-863f + _wgslsmith_f_op_f32(ceil(784f)))))));
    var_0 = u_input.b.x;
    var var_2 = Struct_1(vec4<i32>(_wgslsmith_clamp_i32(-u_input.d.x, min(arg_2.a.x, 2147483647i), arg_1.a.x), -(~arg_2.a.x), 25295i, ~_wgslsmith_mod_i32(-2147483647i, -17306i)) | _wgslsmith_sub_vec4_i32(select(-vec4<i32>(13511i, -27539i, 0i, arg_1.a.x), arg_1.a, !vec4<bool>(arg_0, true, false, arg_3)), vec4<i32>(~2271i, abs(-13785i), ~arg_1.a.x, min(3345i, arg_1.a.x))));
    var_0 = _wgslsmith_dot_vec2_u32(abs((abs(u_input.b.xz) & ~vec2<u32>(0u, 0u)) & max(~u_input.b.zz, ~u_input.b.yx)), vec2<u32>(u_input.b.x, 15259u));
    return !arg_0 | !arg_3;
}

fn func_1(arg_0: f32, arg_1: u32) -> Struct_1 {
    let var_0 = u_input.d;
    var var_1 = !select(vec3<bool>(true, false, any(vec2<bool>(true, true))), vec3<bool>(_wgslsmith_f_op_f32(arg_0 + -764f) == _wgslsmith_f_op_f32(arg_0 * -1000f), (arg_1 ^ u_input.b.x) <= ~arg_1, func_2(true, Struct_1(vec4<i32>(-20483i, -1i, 0i, var_0.x)), Struct_1(vec4<i32>(13986i, var_0.x, var_0.x, u_input.d.x)), true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 - 154f))) >= -2141f);
    var_1 = vec3<bool>(_wgslsmith_div_f32(arg_0, -1082f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - -1793f)), false, all(select(select(!vec3<bool>(var_1.x, false, var_1.x), !vec3<bool>(var_1.x, var_1.x, var_1.x), any(vec3<bool>(true, var_1.x, var_1.x))), vec3<bool>(true, true, !var_1.x), false)));
    let var_2 = Struct_1(min(-abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(-4261i, 2147483647i, var_0.x, var_0.x), vec4<i32>(3825i, u_input.d.x, 11248i, 16355i), vec4<i32>(u_input.a, -2147483647i, var_0.x, u_input.c))), -(-vec4<i32>(-4000i, u_input.d.x, var_0.x, 111i) << (~vec4<u32>(16463u, u_input.b.x, arg_1, arg_1) % vec4<u32>(32u)))));
    return Struct_1(~(var_2.a & ~vec4<i32>(u_input.d.x, -13889i, -1i, -2147483647i)) ^ var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(reverseBits(~(~(vec4<i32>(-2147483647i, u_input.d.x, u_input.d.x, 1i) >> (vec4<u32>(1633u, 61437u, u_input.b.x, 0u) % vec4<u32>(32u))))));
    let var_1 = 2147483647i;
    var_0 = func_1(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(122f)) + -2046f))), firstTrailingBit(u_input.b.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-816f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(121f, 1411f, true)) - 1147f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(415f * -163f))));
    var var_3 = vec3<bool>(true, (~34071u <= u_input.b.x) & false, any(!vec4<bool>(true, true, all(vec4<bool>(true, false, false, true)), var_2.x < var_2.x)));
    let var_4 = !(!select(select(vec4<bool>(var_3.x, false, true, var_3.x), select(vec4<bool>(false, var_3.x, false, true), vec4<bool>(var_3.x, var_3.x, false, var_3.x), true), !vec4<bool>(true, var_3.x, var_3.x, false)), select(vec4<bool>(false, var_3.x, false, false), !vec4<bool>(true, true, var_3.x, var_3.x), var_3.x), var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(390f, u_input.b);
}

