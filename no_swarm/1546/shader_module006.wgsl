struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<bool>,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>) -> f32 {
    return arg_1.x;
}

fn func_3(arg_0: f32, arg_1: vec3<f32>) -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))), arg_1.x, vec3<bool>(all(select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), false), u_input.b > 74759u)), any(select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), true)), all(vec3<bool>(true, true, true)) & (firstLeadingBit(u_input.b) != abs(1u))), _wgslsmith_f_op_vec2_f32(-arg_1.zz), max(-vec3<i32>(-11278i, u_input.a, min(-25397i, -6271i)), abs(~vec3<i32>(u_input.a, u_input.a, u_input.a))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * var_0.d.x) * var_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-559f)) - _wgslsmith_f_op_f32(f32(-1f) * -216f)), vec3<bool>(true, true != (abs(u_input.b) >= _wgslsmith_div_u32(u_input.b, 8218u)), true || !var_0.c.x), _wgslsmith_f_op_vec2_f32(round(var_0.d)), var_0.e);
    var var_2 = var_0;
    let var_3 = var_0;
    return select(vec3<bool>(any(vec4<bool>(var_3.c.x, any(var_0.c.xy), var_3.c.x, true)), var_2.c.x, var_1.c.x), !var_0.c, vec3<bool>(true, var_2.c.x, !(var_1.c.x && (true || var_2.c.x))));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> f32 {
    var var_0 = arg_0;
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.b)) - -162f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d.x)) + -220f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-823f - _wgslsmith_f_op_f32(ceil(var_0.b))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.b * arg_2.d.x), _wgslsmith_f_op_f32(-arg_2.d.x))))), vec3<bool>(var_0.c.x, true, false), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(744f + _wgslsmith_f_op_f32(sign(var_0.b)))), 176f), vec3<i32>(_wgslsmith_clamp_i32(9257i, arg_0.e.x, _wgslsmith_mod_i32(-1471i, -2580i)), firstTrailingBit(2147483647i), u_input.a) & firstLeadingBit(arg_0.e));
    let var_1 = func_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(var_0.c.x, vec2<f32>(arg_2.a, var_0.a))))))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -737f), _wgslsmith_f_op_f32(-var_0.d.x)), -1321f, arg_0.d.x))));
    let var_2 = arg_0;
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1171f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b))))), _wgslsmith_f_op_f32(min(-944f, _wgslsmith_f_op_f32(var_0.b * var_2.a))), arg_2.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_2.b) * vec2<f32>(1264f, 1000f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-736f, -990f)), _wgslsmith_f_op_vec2_f32(arg_2.d * var_2.d), true)))), vec3<i32>(_wgslsmith_clamp_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 9664i, 0i), vec3<i32>(var_0.e.x, var_0.e.x, -13597i)), _wgslsmith_dot_vec2_i32(~arg_0.e.yy, var_2.e.zy), u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(abs(2147483647i), arg_2.e.x, 0i), _wgslsmith_mod_vec3_i32(var_2.e, var_2.e)), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_2.e.x, -1i), vec3<i32>(u_input.a, u_input.a, var_0.e.x)) << (1u % 32u), _wgslsmith_clamp_i32(2147483647i, var_2.e.x, -6606i) << (countOneBits(arg_1) % 32u))));
    return _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.d.x))))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(782f, 1327f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, 1458f)) - _wgslsmith_f_op_f32(sign(var_0.b))), var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(1000f, -1803f, vec3<bool>(false, false, false), vec2<f32>(262f, 1090f), vec3<i32>(u_input.a, u_input.a, -22826i)), u_input.b, Struct_1(157f, -1366f, vec3<bool>(false, false, false), vec2<f32>(-1211f, 469f), vec3<i32>(-7942i, u_input.a, u_input.a))))))))), _wgslsmith_f_op_f32(trunc(-242f)), !vec3<bool>(firstLeadingBit(4294967295u) != ~u_input.b, true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(143f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(502f)) - _wgslsmith_f_op_f32(116f + -1037f)))), abs(vec3<i32>(-u_input.a, ~0i, u_input.a & -1553i)) | -(vec3<i32>(u_input.a, u_input.a, 46148i) ^ abs(vec3<i32>(-14713i, u_input.a, u_input.a))));
    var_0 = _wgslsmith_clamp_i32(var_1.e.x << (~u_input.b % 32u), u_input.a, ~(i32(-1i) * -u_input.a)) & _wgslsmith_div_i32(var_1.e.x, var_1.e.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -514f) * var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -435f))), 1050f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -847f) * _wgslsmith_f_op_f32(f32(-1f) * -1676f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(197f, var_1.b, var_1.d.x, var_1.d.x), vec4<f32>(-1665f, 2971f, -1108f, -863f)))), vec4<f32>(_wgslsmith_f_op_f32(select(var_1.b, var_1.d.x, true)), _wgslsmith_f_op_f32(max(-889f, 919f)), var_1.a, _wgslsmith_f_op_f32(min(var_1.d.x, var_1.d.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-107f, var_1.b, -693f, var_1.b))))), !vec4<bool>(true, true, true, func_3(var_1.b, vec3<f32>(1708f, var_1.b, -343f)).x)))));
    var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(firstTrailingBit(firstLeadingBit(vec2<i32>(u_input.a, -10536i))), var_1.e.xx, countOneBits(~var_1.e.yx)), vec2<i32>(_wgslsmith_mod_i32(firstLeadingBit(u_input.a), -2147483647i), -_wgslsmith_clamp_i32(u_input.a, 2147483647i, 2147483647i))), vec2<i32>(~2147483647i, -1i));
    let x = u_input.a;
    s_output = StorageBuffer(min(-_wgslsmith_div_vec4_i32(-vec4<i32>(-2147483647i, var_1.e.x, var_1.e.x, var_1.e.x), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.e.x, u_input.a, u_input.a, 1i), vec4<i32>(u_input.a, u_input.a, u_input.a, -4731i))), _wgslsmith_div_vec4_i32(vec4<i32>(countOneBits(-29865i), u_input.a, 1i, _wgslsmith_clamp_i32(var_1.e.x, var_1.e.x, -39950i)), vec4<i32>(var_1.e.x << (u_input.b % 32u), u_input.a, -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 11053i, var_1.e.x), var_1.e)))), _wgslsmith_div_u32(u_input.b, 1u) | _wgslsmith_mult_u32(1u | _wgslsmith_add_u32(u_input.b, u_input.b), select(43571u, max(48508u, 19953u), all(var_1.c))));
}

