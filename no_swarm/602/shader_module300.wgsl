struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_div_vec4_u32(~vec4<u32>(_wgslsmith_clamp_u32(~55469u, firstTrailingBit(17047u), max(u_input.c, 40902u)), countOneBits(~9444u), 1u, max(~u_input.c, _wgslsmith_mod_u32(u_input.c, u_input.c))), ~(~vec4<u32>(56776u, _wgslsmith_mult_u32(23063u, 0u), 23398u, _wgslsmith_add_u32(u_input.c, 17642u))));
    let var_1 = Struct_3(select(select(vec3<bool>(false, false, 7385i != u_input.a.x), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), true), vec3<bool>(true, false, true), all(!select(vec2<bool>(false, false), vec2<bool>(true, true), false))));
    var_0 = vec4<u32>(~1703u, ~_wgslsmith_dot_vec3_u32(var_0.zyy, vec3<u32>(0u, 14520u, 35532u)), u_input.c ^ 21526u, var_0.x) | countOneBits(_wgslsmith_sub_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 1u, 37087u, 8648u), vec4<u32>(var_0.x, u_input.c, var_0.x, 4294967295u)), select(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 24197u, var_0.x, u_input.c), vec4<u32>(7256u, 4294967295u, 4294967295u, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 0u, var_0.x, var_0.x), vec4<u32>(9663u, 9425u, 4294967295u, 1u)), var_1.a.x)));
    var var_2 = !(all(!vec3<bool>(var_1.a.x, false, var_1.a.x)) == true);
    let var_3 = any(!(!select(var_1.a.zx, vec2<bool>(false, var_1.a.x), true)));
    return _wgslsmith_f_op_f32(floor(-437f));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_1) -> f32 {
    let var_0 = vec3<u32>(~_wgslsmith_div_u32(7145u, abs(_wgslsmith_div_u32(arg_2.b.x, 92963u))), ~(~_wgslsmith_clamp_u32(u_input.c, arg_2.b.x, 1100u)) << (arg_2.c % 32u), _wgslsmith_mod_u32(7044u, 35066u));
    var var_1 = countOneBits(min(~(~4294967295u) | arg_2.c, u_input.c));
    let var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32((~vec4<i32>(arg_2.d.x, 30781i, arg_1.x, -9660i) & (u_input.a << (arg_2.b % vec4<u32>(32u)))) & vec4<i32>(max(0i, 1i), arg_1.x, _wgslsmith_mod_i32(-12382i, 15384i), arg_1.x), max(countOneBits(u_input.a), ~u_input.a << (vec4<u32>(arg_2.c, var_0.x, arg_2.c, 42309u) % vec4<u32>(32u)))), u_input.a);
    var_1 = _wgslsmith_clamp_u32(var_0.x, ~(~_wgslsmith_mod_u32(countOneBits(var_0.x), _wgslsmith_div_u32(4294967295u, var_0.x))), 74213u);
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-356f, arg_2.e), vec2<f32>(330f, -1000f)) + vec2<f32>(-570f, arg_2.e)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-100f, arg_2.e)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2.e, arg_2.e), vec2<f32>(-563f, 305f))))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.e), arg_2.e) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.e, arg_2.e) - vec2<f32>(arg_2.e, arg_2.e))))), vec2<f32>(_wgslsmith_f_op_f32(exp2(1f)), arg_2.e))), !any(vec2<bool>(false & arg_2.a, any(vec4<bool>(arg_0, arg_0, arg_2.a, true))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.e * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.e))))) * arg_2.e);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = !all(arg_1.wzw);
    var var_1 = arg_2.b.zy;
    let var_2 = var_1.x;
    let var_3 = Struct_1(false, arg_2.b, _wgslsmith_dot_vec2_u32(~abs(vec2<u32>(63557u, 4294967295u)), vec2<u32>(arg_2.c, _wgslsmith_dot_vec2_u32(vec2<u32>(85467u, var_1.x), arg_2.b.wx))) >> (arg_2.b.x % 32u), arg_2.d, _wgslsmith_f_op_f32(func_3(all(select(arg_1, !vec4<bool>(false, arg_2.a, arg_2.a, arg_2.a), all(vec4<bool>(true, false, arg_1.x, arg_2.a)))), select(u_input.a.zxy, vec3<i32>(u_input.a.x >> (4294967295u % 32u), arg_2.d.x, arg_2.d.x), any(vec2<bool>(arg_2.a, arg_1.x))), Struct_1(true, min(~vec4<u32>(4294967295u, 71397u, 64895u, 4294967295u), arg_2.b), ~(u_input.c | 0u), u_input.a.wx, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_f32(arg_2.e * 221f)))))));
    var_1 = arg_2.b.yz & ~(~(~vec2<u32>(4294967295u, var_3.b.x)));
    return arg_0.xy;
}

fn func_2() -> f32 {
    let var_0 = vec4<u32>(9375u, u_input.c, _wgslsmith_dot_vec2_u32(~abs(~vec2<u32>(u_input.c, u_input.c)), vec2<u32>(~(~u_input.c), ~(~5578u))), firstLeadingBit(63678u));
    var var_1 = 114f;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-173f, 664f, 894f, 101f), vec4<f32>(640f, -1248f, 2738f, -929f)))))), vec4<bool>(true, true, true, any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))), Struct_1(true, firstTrailingBit(vec4<u32>(var_0.x, var_0.x, 4294967295u, 4294967295u)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 1854u, 1u, 70201u), vec4<u32>(u_input.c, var_0.x, 0u, 64074u), var_0), _wgslsmith_mod_u32(var_0.x, 9962u), _wgslsmith_mod_vec2_i32(u_input.a.xw | u_input.a.xw, ~u_input.a.xw), _wgslsmith_f_op_f32(func_3(true, max(u_input.a.xzy, vec3<i32>(u_input.a.x, u_input.b, 796i)), Struct_1(false, var_0, u_input.c, vec2<i32>(49125i, u_input.b), 304f)))))) + vec2<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(495f + -738f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(false, vec3<i32>(u_input.a.x, -14475i, 27842i), Struct_1(false, var_0, 2561u, vec2<i32>(u_input.a.x, u_input.b), 1000f))))))));
    var_1 = var_2.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1359f, -110f)), vec2<f32>(475f, var_2.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, -1000f)))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - 765f)), _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(112f, 1456f, var_3.x, var_2.x) * vec4<f32>(-943f, 331f, var_3.x, var_3.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(445f, var_3.x, 1000f, var_3.x), vec4<f32>(1000f, var_3.x, -239f, -1170f), vec4<bool>(false, false, true, true)))))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), Struct_1(true, max(var_0, ~var_0), ~reverseBits(u_input.c), vec2<i32>(i32(-1i) * -1i, -2147483647i), -1107f))).x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var_0 = ~(~u_input.c ^ ~31820u);
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(254f + 1181f), _wgslsmith_f_op_f32(f32(-1f) * -108f), -753f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-533f, -1208f, -1000f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(398f, -145f, -1450f)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * -957f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(max(125f, var_1.x)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -130f, var_1.x)), vec3<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -478f))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(round(var_1.x)), var_1.x, _wgslsmith_f_op_f32(max(1012f, 461f)), _wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1509f), _wgslsmith_f_op_f32(f32(-1f) * -268f), -2204f))), select(vec4<bool>(true, true, u_input.a.x != -29404i, false), vec4<bool>(true, all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), all(select(vec2<bool>(true, true), vec2<bool>(false, false), true)), abs(u_input.a.x) > 9174i), select(select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), true))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec2<u32>(~39555u, u_input.c), vec2<u32>(u_input.c, 86897u), (u_input.c >= ~22914u) || (~u_input.b < u_input.b)), countOneBits(_wgslsmith_mult_vec2_i32(u_input.a.wy, ~(~vec2<i32>(u_input.b, u_input.b)))), vec2<u32>(_wgslsmith_add_u32(min(_wgslsmith_div_u32(u_input.c, 4294967295u), _wgslsmith_add_u32(u_input.c, 8968u)), ~(u_input.c >> (0u % 32u))), abs(~(~u_input.c))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-879f, 347f))))));
}

