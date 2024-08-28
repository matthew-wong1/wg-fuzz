struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec2<u32>,
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = Struct_3(~_wgslsmith_mult_vec4_u32(reverseBits(~vec4<u32>(18206u, 14539u, u_input.a, u_input.a)), _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(36182u, u_input.a, 0u, u_input.a)), vec4<u32>(u_input.a, 36584u, u_input.a, u_input.a) << (vec4<u32>(19616u, 4294967295u, 1u, 7023u) % vec4<u32>(32u)))));
    var var_1 = arg_0.c;
    let var_2 = select(arg_0.a, arg_0.a, select(arg_0.a, !arg_0.a, !(countOneBits(4294967295u) <= var_0.a.x)));
    var var_3 = min(i32(-1i) * -19057i, arg_0.c.b);
    var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-552f - var_1.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1096f * var_1.a.x), var_1.a.x)), _wgslsmith_f_op_f32(ceil(-967f)), -1165f), -13383i, arg_0.b.c);
    return vec2<bool>(arg_0.a.x, !(!(_wgslsmith_add_i32(0i, arg_0.c.b) < 2147483647i)));
}

fn func_2() -> i32 {
    var var_0 = Struct_2(select(select(vec4<bool>(true, any(vec2<bool>(false, false)), true, true), select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), false)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true)), !vec4<bool>(all(vec4<bool>(false, true, false, false)), true, true, true), true), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-158f, 449f, -218f, -893f) - vec4<f32>(-208f, -901f, 551f, 596f)))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(650f, 890f, 255f, 1178f))))), i32(-1i) * -36989i, 1701f), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2803f, -1857f, -214f, 471f))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(631f)), -1485f, _wgslsmith_f_op_f32(f32(-1f) * -561f), _wgslsmith_f_op_f32(ceil(-978f)))), 1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1248f, 106f) + -1215f))), !(!(!select(false, true, false))));
    let var_1 = func_3(Struct_2(var_0.a, var_0.c, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(var_0.b.a.x + 1000f), var_0.c.c, 870f, var_0.c.a.x), 0i, var_0.b.c), true));
    var_0 = Struct_2(var_0.a, Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.c.c, var_0.b.a.x, _wgslsmith_div_f32(2146f, var_0.b.a.x), -1768f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(var_0.b.a)), vec4<f32>(var_0.b.a.x, 145f, var_0.c.c, 1817f))))), var_0.b.b, var_0.b.a.x), var_0.c, var_1.x);
    var var_2 = !(!all(vec4<bool>(!var_0.a.x, true, var_0.a.x, true)));
    var_0 = Struct_2(!vec4<bool>(all(var_0.a.wwz), true, any(vec2<bool>(true, var_0.d)), !var_1.x), var_0.c, Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_0.b.a))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.b.a.x, 589f, -871f, var_0.b.a.x))))))), ~(-1i >> (1u % 32u)) & var_0.b.b, _wgslsmith_f_op_f32(f32(-1f) * -305f)), all(func_3(Struct_2(!vec4<bool>(false, true, var_0.a.x, true), Struct_1(var_0.b.a, var_0.c.b, 1000f), Struct_1(vec4<f32>(-351f, var_0.b.a.x, -708f, -261f), -2147483647i, var_0.c.c), var_0.a.x))));
    return 0i;
}

fn func_1(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.b, -1i, _wgslsmith_add_i32(abs(arg_0.b), arg_0.b), _wgslsmith_clamp_i32(-2147483647i, arg_0.b, -arg_0.b)), vec4<i32>(_wgslsmith_sub_i32(abs(func_2()), _wgslsmith_sub_i32(arg_0.b << (12186u % 32u), 25103i >> (u_input.a % 32u))), ~firstTrailingBit(-2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(63026i, 37883i) >> (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u)), abs(vec2<i32>(-2147483647i, arg_0.b)) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(8809u, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<u32>(33861u, u_input.a)) % vec2<u32>(32u))), _wgslsmith_clamp_i32(min(arg_0.b << (0u % 32u), _wgslsmith_add_i32(2147483647i, arg_0.b)), ~22971i, abs(arg_0.b) << (~u_input.a % 32u))));
    var var_1 = any(!vec4<bool>(true || (2147483647i > arg_0.b), true, true, true | func_3(Struct_2(vec4<bool>(true, false, false, true), arg_0, arg_0, false)).x));
    var_0 = ~firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-38648i, countOneBits(7717i), abs(-2147483647i), 77808i), firstLeadingBit(vec4<i32>(2147483647i, 0i, var_0.x, 0i)) ^ vec4<i32>(29429i, 1i, arg_0.b, arg_0.b)));
    var_1 = any(!vec4<bool>(true, func_3(Struct_2(vec4<bool>(false, false, true, true), Struct_1(vec4<f32>(338f, arg_0.c, -812f, -1894f), arg_0.b, arg_0.c), Struct_1(vec4<f32>(125f, 199f, arg_0.c, -947f), -1i, -1244f), false)).x, true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), false))));
    let var_2 = func_3(Struct_2(vec4<bool>(true, true, true, true), Struct_1(vec4<f32>(-369f, arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.a.x), -585f), max(arg_0.b, 1060i), _wgslsmith_div_f32(-683f, _wgslsmith_f_op_f32(step(-744f, -1018f)))), arg_0, !all(vec3<bool>(true, true, true)))).x;
    return vec3<bool>(!any(select(!vec4<bool>(var_2, true, var_2, true), select(vec4<bool>(var_2, true, var_2, var_2), vec4<bool>(true, var_2, false, var_2), vec4<bool>(true, true, var_2, true)), var_2)), true, var_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec3<bool>(!any(vec4<bool>(true, true, false, true)), !all(vec4<bool>(false, true, true, true)), true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), any(vec3<bool>(true, true, false))), vec3<bool>(true, true, true), all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)))), select(vec3<bool>(u_input.a > 26648u, select(false, false, true), all(vec2<bool>(false, false))), func_1(Struct_1(vec4<f32>(-688f, -1060f, 1065f, 834f), 2147483647i, -612f)), vec3<bool>(48148u > u_input.a, all(vec3<bool>(true, false, false)), true)));
    let var_1 = _wgslsmith_sub_vec4_u32(~(~_wgslsmith_mod_vec4_u32(~vec4<u32>(53121u, 1u, 30825u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), _wgslsmith_mult_vec4_u32(~vec4<u32>(~u_input.a, 0u, u_input.a, 1u), ~vec4<u32>(~1u, 92753u, _wgslsmith_clamp_u32(u_input.a, 97784u, u_input.a), u_input.a << (u_input.a % 32u))));
    let var_2 = vec2<bool>(true, false);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-115f)))), 289f)) * -985f);
    let var_4 = Struct_2(vec4<bool>(true, true & any(select(vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(var_2.x, true, var_0.x), var_2.x)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(280f, var_3), _wgslsmith_div_f32(var_3, var_3))) >= _wgslsmith_f_op_f32(ceil(-642f)), var_2.x), Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-854f, var_3, var_3, 1632f) + vec4<f32>(1000f, var_3, var_3, 1143f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3, var_3, -102f, var_3)))))), 81887i, -633f), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3, var_3, 791f, 1252f))))), 26382i, _wgslsmith_div_f32(var_3, -684f)), var_3 <= var_3);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(vec3<u32>(abs(~78837u), 90111u, min(_wgslsmith_dot_vec2_u32(var_1.yz, vec2<u32>(var_1.x, 1u)), u_input.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.x, u_input.a, var_1.x) | var_1.xxz, var_1.zxy)), var_1.wyx, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(918f, -979f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(591f, var_4.c.a.x)) - vec2<f32>(254f, var_3))))), vec2<u32>(u_input.a, 1u) << (~vec2<u32>(~35368u, 4294967295u) % vec2<u32>(32u)));
}

