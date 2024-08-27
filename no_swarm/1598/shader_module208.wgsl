struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>) -> i32 {
    return u_input.c.x;
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = arg_2;
    var var_1 = vec3<f32>(arg_2.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1))), -267f);
    var var_2 = select(!(!vec2<bool>(u_input.a.x > u_input.c.x, var_0.a)), !vec2<bool>(var_0.c, false), true);
    let var_3 = Struct_1(all(select(!vec4<bool>(true, false, true, arg_2.a), !vec4<bool>(false, var_0.a, true, true), true)), arg_2.b, false, 0u);
    var var_4 = firstLeadingBit(-2147483647i);
    return _wgslsmith_mod_vec3_i32(~arg_0.yxy, min(u_input.a.yxy, select(select(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.x, -2147483647i, 1i), vec3<i32>(arg_0.x, u_input.a.x, 92048i)), vec3<i32>(arg_0.x, u_input.a.x, 0i), any(vec4<bool>(var_2.x, var_0.c, var_2.x, true))), ~countOneBits(vec3<i32>(-1i, arg_0.x, -2147483647i)), var_2.x)));
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = Struct_1(all(vec4<bool>(select(true, arg_2.c, true), any(vec4<bool>(false, false, arg_2.c, arg_2.c)), true, any(vec4<bool>(arg_2.a, arg_2.c, false, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.b + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1786f, 2165f, -720f))))), any(select(select(!vec3<bool>(arg_2.c, false, arg_2.a), select(vec3<bool>(false, arg_2.c, arg_2.c), vec3<bool>(arg_2.a, false, true), true), select(vec3<bool>(true, false, false), vec3<bool>(false, arg_2.c, true), false)), vec3<bool>(all(vec2<bool>(false, arg_2.a)), arg_2.a, any(vec4<bool>(false, true, false, arg_2.a))), _wgslsmith_f_op_f32(step(1441f, arg_3)) <= arg_1)), 1u);
    let var_1 = Struct_1(select(_wgslsmith_add_i32(_wgslsmith_sub_i32(arg_0.x, arg_0.x), -1i) > 1i, any(select(vec4<bool>(arg_2.a, false, var_0.c, var_0.c), vec4<bool>(var_0.c, var_0.c, true, false), true)) && arg_2.a, var_0.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-252f, -476f, -223f), _wgslsmith_f_op_vec3_f32(var_0.b + vec3<f32>(arg_1, -738f, var_0.b.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 319f, -677f)))) + vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.b.x, 1742f), -504f, var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -670f))), all(!vec3<bool>(true, true, any(vec3<bool>(true, true, false)))), firstLeadingBit(_wgslsmith_clamp_u32(arg_2.d, countOneBits(arg_2.d), ~0u)) >> (var_0.d % 32u));
    var var_2 = Struct_1(false, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_1.b, _wgslsmith_div_vec3_f32(vec3<f32>(1351f, -1000f, 279f), vec3<f32>(arg_3, arg_3, arg_1))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_3, -181f, 1361f))), vec3<f32>(-435f, _wgslsmith_f_op_f32(856f - 863f), 335f)))), !select(arg_2.c, arg_2.a, all(select(vec3<bool>(true, var_0.c, var_1.a), vec3<bool>(arg_2.c, var_0.a, true), vec3<bool>(false, var_1.c, var_0.c)))), 0u);
    var var_3 = func_3(u_input.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) + _wgslsmith_f_op_f32(-arg_1)) - 270f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-893f)))) * _wgslsmith_f_op_f32(ceil(arg_2.b.x))), any(select(vec2<bool>(var_1.a, var_0.a), vec2<bool>(true, true), !arg_2.a)))), Struct_1(any(!(!vec3<bool>(var_2.a, var_1.c, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-185f, _wgslsmith_f_op_f32(min(arg_3, -194f)), 884f) * _wgslsmith_f_op_vec3_f32(trunc(var_0.b))), false, countOneBits(0u)));
    var var_4 = u_input.a.x;
    return arg_2;
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = func_4(vec3<i32>(~(~func_2(Struct_1(true, vec3<f32>(1577f, -488f, 370f), true, u_input.b.x), vec2<bool>(false, true))), _wgslsmith_dot_vec3_i32(-func_3(vec4<i32>(1i, u_input.a.x, arg_0, u_input.a.x), -2168f, Struct_1(true, vec3<f32>(283f, -411f, 654f), false, u_input.d.x)), -firstLeadingBit(u_input.a.yww)), _wgslsmith_mod_i32(firstLeadingBit(1i), (i32(-1i) * -22590i) >> (~u_input.b.x % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-338f, -505f), _wgslsmith_f_op_f32(floor(-664f)), true)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))))), Struct_1(u_input.c.x > u_input.a.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -733f)), 1003f, _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-507f + -1046f)))), true, _wgslsmith_mult_u32(~u_input.b.x >> (abs(1u) % 32u), ~(~1u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-321f)), -134f)));
    var var_1 = ~(~vec3<u32>(_wgslsmith_dot_vec2_u32(select(u_input.d.zz, u_input.b, false), ~u_input.d.xy), ~u_input.d.x, _wgslsmith_dot_vec2_u32(~u_input.d.xy, _wgslsmith_mod_vec2_u32(vec2<u32>(576u, u_input.d.x), vec2<u32>(1u, var_0.d)))));
    var_1 = ~firstTrailingBit(vec3<u32>(u_input.b.x, var_0.d, var_0.d));
    var_1 = ~_wgslsmith_add_vec3_u32(~(~(~u_input.d)), ~min(vec3<u32>(69223u, 18782u, var_1.x), vec3<u32>(var_0.d, 0u, 80485u)) ^ reverseBits(u_input.d));
    var_1 = select(firstLeadingBit(vec3<u32>(4294967295u, _wgslsmith_add_u32(u_input.b.x, var_1.x), _wgslsmith_div_u32(var_0.d, u_input.d.x)) & vec3<u32>(var_1.x, ~u_input.d.x, 1u)), select(~u_input.d, u_input.d, true), vec3<bool>(!(!var_0.c) || !(u_input.c.x >= u_input.c.x), var_0.a, !any(vec3<bool>(var_0.c, var_0.a, false)) & false));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_dot_vec4_i32(~u_input.a, u_input.a));
    var var_1 = vec2<bool>(var_0.c, (func_4(vec3<i32>(-24405i, 59571i, u_input.c.x), _wgslsmith_f_op_f32(var_0.b.x - var_0.b.x), Struct_1(var_0.c, var_0.b, false, var_0.d), _wgslsmith_f_op_f32(2252f - 1300f)).b.x != var_0.b.x) | any(select(vec4<bool>(true, var_0.a, false, var_0.a), select(vec4<bool>(true, var_0.a, true, var_0.c), vec4<bool>(var_0.c, var_0.c, false, var_0.a), var_0.a), select(vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c), vec4<bool>(var_0.a, var_0.c, var_0.c, false), vec4<bool>(var_0.a, false, false, false)))));
    var_1 = !(!select(vec2<bool>(func_1(-1i).a, !var_0.c), !(!vec2<bool>(var_0.a, var_1.x)), select(vec2<bool>(false, var_1.x), !vec2<bool>(var_1.x, false), select(vec2<bool>(var_1.x, var_0.c), vec2<bool>(var_0.c, true), true))));
    let var_2 = vec4<bool>(true, var_1.x, all(vec3<bool>(true, any(vec2<bool>(true, true)), var_1.x)), var_1.x);
    var var_3 = !(!var_2);
    var var_4 = _wgslsmith_mod_vec2_i32(~_wgslsmith_div_vec2_i32(u_input.a.xw, -u_input.a.xy), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-820f, var_0.b.x, -172f, var_0.b.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(207f, -299f, var_0.b.x, -653f)))))));
}

