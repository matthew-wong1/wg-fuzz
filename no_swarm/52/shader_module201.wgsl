struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec3<bool> {
    var var_0 = !(!(!vec2<bool>(u_input.a >= u_input.a, true)));
    var_0 = !select(vec2<bool>(true, var_0.x), !select(!vec2<bool>(false, var_0.x), !vec2<bool>(false, var_0.x), !var_0.x), all(vec3<bool>(true, var_0.x, false)) | true);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(select(-920f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1338f, -1282f))))), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1731f)), 539f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(696f)), _wgslsmith_f_op_f32(-1356f + -850f)))), -1000f)));
    let var_2 = var_0.x;
    var var_3 = !select(!var_0.x, false, abs(u_input.a) >= (~(-39577i) ^ firstTrailingBit(1238i)));
    return !select(vec3<bool>(true, var_0.x, var_0.x), !select(!vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, var_0.x, false), select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(false, false, var_0.x), var_0.x)), any(select(!vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(true, var_0.x, true), vec3<bool>(true, var_0.x, false))));
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = any(func_3());
    var_0 = true;
    var_0 = !(!((-1i == -u_input.a) && true));
    let var_1 = select(vec2<bool>(true, false), select(func_3().zz, vec2<bool>(true && any(vec3<bool>(false, true, false)), all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true))), !all(vec2<bool>(true, true))), any(!func_3()));
    var_0 = !any(select(vec4<bool>(!var_1.x, var_1.x | false, arg_0 < 158f, all(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))), !vec4<bool>(var_1.x, var_1.x, false, true), !(!vec4<bool>(var_1.x, var_1.x, true, false))));
    return abs(_wgslsmith_div_i32(~_wgslsmith_div_i32(-1i, u_input.a), u_input.a) << (1u % 32u));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<u32>) -> vec2<bool> {
    var var_0 = u_input.a;
    var_0 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(~(-2147483647i), _wgslsmith_add_i32(15678i, func_2(258f)), -u_input.a), abs(_wgslsmith_mod_i32(min(u_input.a, -44696i), ~(-59429i)) | -(i32(-1i) * -1i)));
    let var_1 = firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(reverseBits(_wgslsmith_sub_u32(70868u, arg_1.x)), 0u), ~(~(~vec2<u32>(9329u, 0u)))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -794f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-669f, 1943f)), _wgslsmith_f_op_f32(floor(527f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(708f * -130f))) * -123f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1662f)))), -1002f);
    var_0 = 2204i;
    return !arg_0.xw;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec3<bool>(false, any(func_1(vec4<bool>(false, false, true, true), ~vec4<u32>(15551u, 1u, 0u, 1u))), true));
    var var_1 = Struct_1(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -266f) * 1303f))), ~vec2<i32>(u_input.a, _wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(13045i, 6251i)), firstLeadingBit(vec2<i32>(u_input.a, u_input.a)))), ~(_wgslsmith_div_vec3_i32(-vec3<i32>(-9382i, u_input.a, u_input.a), reverseBits(vec3<i32>(-40937i, -10230i, u_input.a))) ^ ~firstTrailingBit(vec3<i32>(2147483647i, 0i, u_input.a))), u_input.a);
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2309f - _wgslsmith_f_op_f32(f32(-1f) * -1722f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(547f, -398f))) + 925f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-539f - _wgslsmith_f_op_f32(351f - 1017f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(750f)) - _wgslsmith_f_op_f32(154f + 884f)))));
    var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(594f + 775f), _wgslsmith_f_op_f32(f32(-1f) * -659f), 209f), vec3<f32>(-1234f, var_2.x, -580f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(1374f, var_2.x), var_2.x, _wgslsmith_f_op_f32(-var_2.x)), vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), -1188f, _wgslsmith_f_op_f32(var_2.x + var_2.x)))), vec3<bool>(var_0, !all(vec2<bool>(true, false)), all(vec4<bool>(true, true, true, true)))))));
    var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -2554f, -1000f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.x, 516f, -165f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.x, var_2.x, -386f), vec3<f32>(var_2.x, var_2.x, var_2.x), vec3<bool>(false, true, var_0))) - vec3<f32>(-756f, var_2.x, var_2.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(var_2.x)), _wgslsmith_f_op_f32(var_2.x - -647f), 587f, _wgslsmith_div_f32(var_2.x, 1000f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-266f, -1550f, var_2.x, var_2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -576f, -591f, 2407f)))), select(vec4<bool>(true, var_0, var_0, false), vec4<bool>(true, false, var_0, var_0), func_1(vec4<bool>(true, false, var_0, var_0), vec4<u32>(0u, 4294967295u, 63369u, 34468u)).x))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-585f)), _wgslsmith_f_op_f32(var_2.x - var_2.x)), 221f, var_2.x, var_2.x)), -_wgslsmith_add_i32(_wgslsmith_div_i32(~var_1.d, select(61489i, 23022i, false)), var_1.d), 1i, -(_wgslsmith_add_vec4_i32(vec4<i32>(-49600i, u_input.a, var_1.c.x, var_1.b.x) ^ vec4<i32>(-2147483647i, var_1.b.x, 10392i, u_input.a), vec4<i32>(u_input.a, var_1.b.x, -3936i, var_1.a) & vec4<i32>(34960i, 0i, 2147483647i, 28130i)) & _wgslsmith_add_vec4_i32(vec4<i32>(13764i, -2147483647i, 11962i, u_input.a), vec4<i32>(u_input.a, 1i, 1i, -33752i) | vec4<i32>(u_input.a, u_input.a, -20147i, u_input.a))));
}

