struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: bool,
    d: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec2<i32> {
    var var_0 = vec2<i32>(_wgslsmith_div_i32(arg_0.c.x, 2147483647i), arg_0.c.x);
    var var_1 = Struct_1(1942f, _wgslsmith_clamp_u32(~abs(~arg_1), 1u, arg_1), vec2<i32>(~arg_0.c.x, _wgslsmith_mult_i32(countOneBits(arg_0.c.x), -8849i)), ~_wgslsmith_mult_u32(~(~30920u), _wgslsmith_mult_u32(arg_0.b | 66461u, 1603u)));
    var_0 = max(-vec2<i32>(min(-2147483647i, arg_0.c.x ^ -12611i), ~(-var_1.c.x)), _wgslsmith_mod_vec2_i32(~abs(vec2<i32>(var_0.x, var_1.c.x)), ~vec2<i32>(_wgslsmith_mult_i32(var_0.x, var_1.c.x), -var_0.x)));
    let var_2 = arg_0;
    var var_3 = select(!(!vec3<bool>(any(vec2<bool>(false, true)), all(vec4<bool>(true, true, false, false)), true)), select(vec3<bool>(true, all(vec2<bool>(true, true)), all(vec2<bool>(true, true))), vec3<bool>(!all(vec2<bool>(true, true)), false, select(true, true, true)), true), false);
    return abs(vec2<i32>(_wgslsmith_clamp_i32(2147483647i, _wgslsmith_mult_i32(max(arg_0.c.x, arg_0.c.x), select(var_2.c.x, var_2.c.x, false)), -2147483647i), _wgslsmith_add_i32(2404i, abs(~26012i))));
}

fn func_2() -> Struct_2 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -111f), 1810f, _wgslsmith_f_op_f32(ceil(-1000f)), 1672f);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(825f, _wgslsmith_f_op_f32(step(-403f, var_0.x))), var_0.x, true)))), _wgslsmith_f_op_f32(-var_0.x));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1561f, var_1.b, var_0.x, 487f)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.a, -1319f, -2450f, var_0.x), vec4<f32>(-126f, var_0.x, -536f, var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -396f, 213f, -676f)))))), vec4<f32>(var_1.b, -800f, var_0.x, var_1.a));
    var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-831f, _wgslsmith_f_op_f32(-var_0.x), -402f, 297f)))));
    let var_2 = -min(~(~func_3(Struct_1(var_1.a, 4294967295u, vec2<i32>(627i, -43250i), 1136u), 1u)), firstTrailingBit(abs(~vec2<i32>(-6209i, -16133i))));
    return Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(var_1.b, var_0.x)), _wgslsmith_f_op_f32(-494f + -468f), _wgslsmith_div_f32(var_1.a, -108f), 327f)), vec4<f32>(var_0.x, -303f, var_1.a, var_1.a)), vec4<u32>(~reverseBits(~u_input.a), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.b.x, 12998u) << (u_input.e.x % 32u), firstLeadingBit(~u_input.e.x), 0u), u_input.d, countOneBits(u_input.b.x)), any(vec4<bool>(true, true, false, true)) | true, ~var_2);
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, 299f, 1000f))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x), var_0.a.xwy))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_0.a.xxz, var_0.a.wzz))) + vec3<f32>(func_2().a.x, 570f, _wgslsmith_f_op_f32(abs(-1004f)))));
    var var_2 = vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_sub_i32(var_0.d.x, func_3(Struct_1(_wgslsmith_f_op_f32(select(1000f, -374f, var_0.c)), _wgslsmith_div_u32(u_input.d, 4294967295u), vec2<i32>(var_0.d.x, -1i), 4294967295u), firstTrailingBit(countOneBits(var_0.b.x))).x));
    let var_3 = vec2<bool>(var_0.c, any(!vec4<bool>(var_0.b.x >= var_0.b.x, true, !var_0.c, true)));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, var_1.x, var_1.x) - _wgslsmith_f_op_vec4_f32(-var_0.a))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.x, -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * _wgslsmith_f_op_f32(var_0.a.x * -1385f)), _wgslsmith_f_op_f32(floor(1549f)), _wgslsmith_f_op_f32(ceil(var_0.a.x)))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-583f, -1000f, true)), 1215f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-899f, 1000f, -1128f, -237f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(671f, -1711f, -608f, _wgslsmith_f_op_f32(func_1(u_input.b.x))), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, true, true), true)))), u_input.e, !all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), vec2<i32>(1i, _wgslsmith_dot_vec3_i32(min(vec3<i32>(667i, -1i, 5838i), vec3<i32>(6792i, -16587i, 2147483647i)), ~vec3<i32>(0i, -30649i, -28689i)) >> (u_input.b.x % 32u)));
    let var_1 = func_2();
    var_0 = func_2();
    var_0 = func_2();
    let var_2 = -max(abs(var_0.d.x), var_0.d.x);
    var var_3 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(28356u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.a.x, var_1.a.x)))))) + vec2<f32>(1411f, _wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_vec2_f32(-var_0.a.ww), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.x), -1537f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-132f + 1033f)))), _wgslsmith_f_op_vec4_f32(var_0.a * var_0.a));
}

