struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<bool>,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: u32) -> vec3<bool> {
    var var_0 = Struct_3(Struct_1(u_input.a, u_input.b, !select(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x), !vec3<bool>(arg_0.x, false, arg_1.b), arg_1.b), arg_1.a.wwx, select(!vec3<bool>(arg_0.x, true, arg_1.b), !vec3<bool>(false, arg_0.x, arg_0.x), arg_1.b)), select(!select(vec4<bool>(true, arg_0.x, arg_0.x, false), !vec4<bool>(true, true, false, arg_1.b), vec4<bool>(false, arg_1.b, arg_1.b, false)), select(vec4<bool>(false, true, all(vec4<bool>(true, true, false, arg_1.b)), false), !vec4<bool>(false, false, arg_0.x, arg_0.x), arg_1.b), !(!arg_0.x)), arg_1);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    var var_2 = select(max(_wgslsmith_sub_vec4_i32(countOneBits(-vec4<i32>(-1i, var_0.a.a, var_0.a.b, 1i)), vec4<i32>(firstLeadingBit(var_0.a.b), u_input.b, ~8974i, var_0.a.a)), firstLeadingBit(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.b, 43106i, u_input.a, var_0.a.b), min(vec4<i32>(-2147483647i, var_0.a.b, -5981i, 56905i), vec4<i32>(-2147483647i, u_input.a, -32789i, u_input.b))))), vec4<i32>(~min(var_0.a.a, var_0.a.a), firstTrailingBit(u_input.a ^ countOneBits(-17099i)), -33331i, ~(-34760i | _wgslsmith_sub_i32(-7493i, u_input.b))), select(var_0.b, select(vec4<bool>(any(var_0.b.zxx), true, arg_1.b, !var_0.c.b), vec4<bool>(true && var_0.a.e.x, arg_0.x & false, arg_0.x, true), vec4<bool>(arg_1.b, arg_0.x, var_0.c.b, arg_0.x)), select(select(var_0.b, var_0.b, true), vec4<bool>(any(vec2<bool>(var_0.b.x, true)), arg_0.x, true, !var_0.c.b), select(select(vec4<bool>(true, false, false, arg_1.b), vec4<bool>(true, arg_1.b, var_0.a.e.x, false), var_0.b.x), !vec4<bool>(arg_0.x, arg_0.x, true, true), vec4<bool>(arg_1.b, true, arg_1.b, false)))));
    var_2 = ~select(vec4<i32>(-1i) * -(~vec4<i32>(-2147483647i, var_0.a.b, var_2.x, 22725i)), ~(~(vec4<i32>(4956i, u_input.a, var_0.a.a, u_input.a) >> (arg_1.a % vec4<u32>(32u)))), true);
    var_0 = Struct_3(var_0.a, select(vec4<bool>(true, true, arg_2 != _wgslsmith_clamp_u32(0u, 0u, 1u), all(var_0.a.c)), vec4<bool>((3272i == var_2.x) && (15575i < var_2.x), false, !(!var_0.a.e.x), true), arg_0.x), Struct_2(arg_1.a, any(vec3<bool>(true, true, true))));
    return var_0.a.c;
}

fn func_2(arg_0: Struct_2) -> vec3<bool> {
    return select(vec3<bool>(false, !arg_0.b, !select(arg_0.b, false, true)), !(!func_3(vec2<bool>(arg_0.b, arg_0.b), Struct_2(vec4<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, 20178u), true), 0u)), arg_0.b);
}

fn func_4(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_clamp_i32(-u_input.a, 1i, max(-27495i, u_input.b >> (49969u % 32u))), u_input.b, !(!(!vec3<bool>(arg_0.x, arg_0.x, true))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(0u, 25465u, 1u)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), vec3<bool>(true, true, true)), !vec4<bool>(all(arg_0) & true, arg_0.x, true, true), Struct_2(vec4<u32>(1u, 1u, 1u, 1u), true));
    let var_1 = Struct_2(~(~_wgslsmith_add_vec4_u32(var_0.c.a, vec4<u32>(var_0.a.d.x, var_0.a.d.x, var_0.a.d.x, var_0.c.a.x)) & vec4<u32>(var_0.c.a.x, 8635u, ~var_0.c.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.a.d.x, var_0.c.a.x, var_0.c.a.x), vec4<u32>(var_0.c.a.x, 0u, 0u, var_0.c.a.x)))), func_2(var_0.c).x);
    let var_2 = any(select(vec4<bool>((var_0.b.x | var_0.a.c.x) & true, !func_2(Struct_2(var_0.c.a, true)).x, func_2(Struct_2(var_0.c.a, var_0.c.b)).x, true), var_0.b, true));
    let var_3 = var_1;
    var var_4 = 0i;
    return Struct_1(i32(-1i) * -43491i, var_0.a.a, vec3<bool>(false, true, true), countOneBits(var_3.a.yyz), !(!var_0.a.e));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1) -> f32 {
    let var_0 = !arg_1.c.xx;
    return _wgslsmith_f_op_f32(-arg_0.x);
}

fn func_1(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(func_5(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-470f)) * -380f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(590f - 174f) + _wgslsmith_f_op_f32(-224f * -339f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -752f), 727f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(2458f)), _wgslsmith_div_f32(403f, -1201f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1081f, -1057f)))))), func_4(vec2<bool>(all(func_2(arg_0)), arg_0.b))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(437f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-625f + 968f))));
    let var_2 = Struct_3(func_4(vec2<bool>(arg_0.b, !arg_0.b)), !vec4<bool>(!arg_0.b & true, arg_0.a.x != ~1u, true, !(arg_0.a.x < 1u)), arg_0);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1931f, -743f)), var_0))));
    var var_4 = var_2.a.d;
    return vec3<bool>(arg_0.b, var_2.a.c.x, arg_0.b);
}

fn func_6(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-706f, -1032f, -1040f) - vec3<f32>(-908f, -1077f, -1786f)))))));
    let var_1 = vec4<bool>(arg_0.e.x, !((any(vec3<bool>(arg_0.c.x, arg_0.c.x, true)) != true) || true), !(!any(vec2<bool>(arg_0.c.x, arg_0.e.x))), true);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1639f) - var_0.x);
    let var_3 = Struct_2(~(max(vec4<u32>(arg_0.d.x, arg_0.d.x, 20385u, 24581u), vec4<u32>(arg_0.d.x, arg_0.d.x, 4294967295u, 4294967295u) >> (vec4<u32>(arg_0.d.x, 0u, 39836u, arg_0.d.x) % vec4<u32>(32u))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1234u, arg_0.d.x, 4294967295u), vec4<u32>(0u, arg_0.d.x, 27313u, arg_0.d.x)) % vec4<u32>(32u))), !func_3(func_1(Struct_2(vec4<u32>(arg_0.d.x, arg_0.d.x, 0u, arg_0.d.x), true)).xy, Struct_2(abs(vec4<u32>(47262u, 1u, arg_0.d.x, arg_0.d.x)), var_1.x), arg_0.d.x).x);
    var var_4 = var_3.a.x;
    return func_4(vec2<bool>(any(vec4<bool>(var_3.b | var_3.b, true, var_3.b, var_3.b)), !any(vec2<bool>(arg_0.c.x, false))));
}

fn func_7(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: u32) -> Struct_1 {
    let var_0 = abs(~(max(_wgslsmith_mod_u32(24676u, 576u), _wgslsmith_mult_u32(10460u, arg_2)) << (arg_2 % 32u)));
    let var_1 = arg_1.b;
    var var_2 = !(!func_1(arg_1.c));
    var var_3 = Struct_2(vec4<u32>(firstLeadingBit(105427u), 28750u, 127020u, ~(~(~19380u))), all(var_1));
    var_2 = var_1.wyw;
    return func_6(arg_1.a, -max(-reverseBits(vec3<i32>(-1i, u_input.b, arg_1.a.b)), arg_0.yyw));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1560f * -729f), _wgslsmith_f_op_f32(select(865f, -189f, true))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(804f)))), _wgslsmith_f_op_f32(783f - _wgslsmith_f_op_f32(step(-1354f, _wgslsmith_f_op_f32(floor(1496f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1227f - _wgslsmith_div_f32(-316f, 848f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-640f + -1035f), -855f)) + vec4<f32>(1060f, _wgslsmith_f_op_f32(f32(-1f) * -261f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1335f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -1009f)))));
    let var_1 = vec4<i32>(-1i) * -(vec4<i32>(u_input.b >> (4294967295u % 32u), ~7160i, u_input.b, u_input.b) | ~(~vec4<i32>(u_input.b, -10631i, u_input.b, u_input.a)));
    var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 656f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(f32(-1f) * -2786f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-752f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-676f, var_0.x), var_0.x))))));
    let var_2 = func_7(-_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(var_1, var_1) & ~var_1, _wgslsmith_sub_vec4_i32(-var_1, var_1)), Struct_3(func_6(Struct_1(0i | u_input.b, -36268i, func_1(Struct_2(vec4<u32>(69281u, 33065u, 1u, 49154u), false)), ~vec3<u32>(1u, 40531u, 99028u), func_2(Struct_2(vec4<u32>(1u, 4294967295u, 1u, 4294967295u), false))), var_1.wyy), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false))), vec4<bool>(true, true, true, true), vec4<bool>(true, false, func_2(Struct_2(vec4<u32>(4294967295u, 36161u, 9427u, 1u), false)).x, false)), Struct_2(vec4<u32>(1u, 1u, 1u, 1u), u_input.b >= ~u_input.a)), 4294967295u);
    var var_3 = var_2.b;
    var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1772f, _wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(203f, 1550f)), _wgslsmith_f_op_f32(trunc(var_0.x)))))));
    let var_4 = var_2.d.zy;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mult_u32(var_2.d.x, 22565u), min(var_4.x, var_4.x), !func_1(Struct_2(vec4<u32>(var_2.d.x, var_2.d.x, var_4.x, var_4.x), var_2.e.x)).x));
}

