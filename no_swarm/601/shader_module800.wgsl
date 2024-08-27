struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: i32,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = vec4<bool>(23309i == arg_1.c, true, any(arg_0), all(select(!select(vec3<bool>(true, true, arg_1.b), vec3<bool>(true, false, true), vec3<bool>(arg_1.b, arg_0.x, arg_2.d)), !select(vec3<bool>(arg_1.b, true, arg_0.x), vec3<bool>(false, false, arg_2.d), arg_0.x), !(!vec3<bool>(arg_0.x, arg_1.b, arg_1.b)))));
    return vec2<bool>(all(!arg_0), true);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_1) -> bool {
    let var_0 = arg_3;
    let var_1 = arg_3.e;
    var var_2 = vec3<bool>(arg_3.b, all(func_3(select(vec2<bool>(arg_3.b, false), vec2<bool>(true, true), vec2<bool>(arg_3.b, true)), var_0, Struct_2(-u_input.d.x, _wgslsmith_f_op_f32(-var_1), var_0.c, true))), !(!arg_3.b));
    var_2 = !(!vec3<bool>(var_0.b, all(vec3<bool>(var_0.b, false, var_2.x)), true));
    var_2 = select(!select(vec3<bool>(var_0.b, true, any(vec3<bool>(true, true, true))), select(select(vec3<bool>(arg_3.b, true, arg_3.b), vec3<bool>(true, true, false), var_2.x), vec3<bool>(arg_3.b, arg_3.b, false), !vec3<bool>(arg_3.b, arg_3.b, var_2.x)), var_2.x), select(select(!select(vec3<bool>(arg_3.b, arg_3.b, true), vec3<bool>(arg_3.b, true, false), vec3<bool>(arg_3.b, true, true)), !select(vec3<bool>(arg_3.b, arg_3.b, var_0.b), vec3<bool>(true, false, arg_3.b), false), any(!vec4<bool>(false, false, var_0.b, true))), !vec3<bool>(var_1 == -1841f, true, !var_0.b), vec3<bool>(true, !arg_3.b, false)), !(!(!vec3<bool>(var_2.x, false, var_0.b))));
    return !any(var_2.xy);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<f32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_0.x)))) - -1000f));
    var var_1 = any(vec2<bool>(552f <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f + -1787f), 1548f, func_2(u_input.d.xw, vec4<u32>(0u, 0u, 68961u, 35095u), u_input.c, Struct_1(vec4<u32>(2783u, 24785u, u_input.b, u_input.a), false, u_input.d.x, vec2<f32>(695f, arg_1.x), arg_0.x)))), true));
    let var_2 = 2147483647i >> (~u_input.b % 32u);
    let var_3 = Struct_1(vec4<u32>(7187u, 65442u, _wgslsmith_dot_vec4_u32(vec4<u32>(70845u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.b, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.b, u_input.a)), firstTrailingBit(u_input.b), 1u), ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, u_input.a), vec4<u32>(0u, u_input.b, 4294967295u, u_input.b))), ~_wgslsmith_div_u32(~4294967295u, 57949u)), !func_2(select(u_input.d.xz, ~vec2<i32>(var_2, u_input.d.x), select(vec2<bool>(false, false), vec2<bool>(false, true), false)), vec4<u32>(1u, u_input.a, u_input.a, 1u), -51883i, Struct_1(firstTrailingBit(vec4<u32>(4294967295u, 0u, 0u, u_input.a)), true, var_2, _wgslsmith_f_op_vec2_f32(arg_1.yy - arg_0.xz), _wgslsmith_f_op_f32(456f + arg_0.x))), 2147483647i, arg_1.zy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.x))));
    var var_4 = func_3(vec2<bool>(false, var_3.b), var_3, Struct_2(countOneBits(0i), 1086f, 34847i, u_input.a >= var_3.a.x));
    return var_3.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_clamp_vec4_u32(arg_0.a, arg_0.a ^ arg_0.a, arg_0.a), arg_2.x, _wgslsmith_mod_i32(u_input.d.x, -1i) & u_input.d.x, _wgslsmith_div_vec2_f32(arg_0.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.x, -490f))) - arg_0.d)), -336f);
    var var_1 = u_input.a;
    let var_2 = Struct_1(vec4<u32>(1u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.b, u_input.a), _wgslsmith_dot_vec4_u32(var_0.a, arg_0.a)), _wgslsmith_clamp_u32(35178u, 95372u, _wgslsmith_add_u32(var_0.a.x, var_0.a.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 57173u), ~arg_0.a.zy)) >> (countOneBits(countOneBits(var_0.a)) % vec4<u32>(32u)), false, i32(-1i) * -_wgslsmith_sub_i32(u_input.d.x, firstTrailingBit(2147483647i)), vec2<f32>(_wgslsmith_f_op_f32(abs(453f)), var_0.d.x), arg_1.b);
    var var_3 = _wgslsmith_add_i32(arg_0.c, _wgslsmith_dot_vec2_i32(-vec2<i32>(arg_1.c, _wgslsmith_sub_i32(arg_0.c, u_input.d.x)), select(vec2<i32>(u_input.c, 44865i) ^ -u_input.d.zw, u_input.d.zy, !(!arg_2.zx))));
    var var_4 = select(u_input.d.xzx, select(max(~(-vec3<i32>(32026i, var_0.c, 4166i)), vec3<i32>(_wgslsmith_mult_i32(arg_1.c, -6051i), -1i, _wgslsmith_mult_i32(0i, -1i))), u_input.d.zyx, !(!arg_2.xxx)), any(arg_2));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(func_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1300f, -1000f, -2079f, 1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-135f, -480f, -664f, 1324f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(781f, 788f, 171f) + vec3<f32>(691f, 471f, -851f)))), any(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), true)), _wgslsmith_add_i32(u_input.c, _wgslsmith_mod_i32(~14386i, 1i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1389f, 287f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1758f)))))), Struct_2(u_input.d.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-888f, -1751f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(667f, 764f))))), u_input.c, func_3(vec2<bool>(select(false, false, false), any(vec3<bool>(true, true, true))), Struct_1(max(vec4<u32>(30870u, 9491u, 0u, 1u), vec4<u32>(u_input.b, 65145u, 1u, u_input.b)), all(vec3<bool>(false, true, true)), i32(-1i) * -68449i, _wgslsmith_div_vec2_f32(vec2<f32>(1000f, 1690f), vec2<f32>(-427f, -975f)), _wgslsmith_f_op_f32(step(944f, -677f))), Struct_2(abs(0i), 1177f, firstLeadingBit(u_input.d.x), true)).x), vec4<bool>(!all(vec3<bool>(false, false, true)), all(vec4<bool>(any(vec4<bool>(false, true, true, true)), true, true, all(vec4<bool>(false, true, false, false)))), true, true));
    let var_1 = min(var_0.a.x, var_0.a.x);
    var_0 = Struct_1(~var_0.a, !(!any(select(vec4<bool>(var_0.b, true, var_0.b, var_0.b), vec4<bool>(true, var_0.b, false, var_0.b), vec4<bool>(var_0.b, false, false, var_0.b)))), -_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.c, -2147483647i, -40044i)), max(vec3<i32>(u_input.d.x, -1i, u_input.c), u_input.d.yyy)), -14025i, max(countOneBits(var_0.c), 1i)), _wgslsmith_f_op_vec2_f32(step(var_0.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, _wgslsmith_f_op_f32(sign(1000f)))))), var_0.e);
    var_0 = func_4(func_4(Struct_1(vec4<u32>(0u, 0u, var_0.a.x, var_0.a.x) << (vec4<u32>(1u, 1u, 4294967295u, 19617u) % vec4<u32>(32u)), true, 1i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1412f, var_0.d.x), var_0.d)), vec2<f32>(-315f, -886f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.e, var_0.e))), Struct_2(-1i, _wgslsmith_div_f32(var_0.d.x, var_0.e), ~(-var_0.c), true), select(!vec4<bool>(var_0.b, var_0.b, false, var_0.b), !(!vec4<bool>(var_0.b, true, var_0.b, false)), all(vec3<bool>(var_0.b, var_0.b, var_0.b)))), Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(0i, var_0.c, 27324i), ~min(vec3<i32>(u_input.c, 1i, u_input.d.x), vec3<i32>(var_0.c, var_0.c, u_input.d.x))), _wgslsmith_f_op_f32(-517f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(610f)))), ~(-46732i), var_0.b), !(!select(!vec4<bool>(var_0.b, var_0.b, true, var_0.b), !vec4<bool>(false, var_0.b, false, false), false)));
    let var_2 = u_input.d.yz;
    var var_3 = any(!select(!(!vec3<bool>(var_0.b, var_0.b, false)), vec3<bool>(true, var_0.b != var_0.b, false), !(!vec3<bool>(var_0.b, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-194f, -1000f, var_0.d.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e, var_0.e, var_0.d.x)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.e, 469f, var_0.e))))))));
}

