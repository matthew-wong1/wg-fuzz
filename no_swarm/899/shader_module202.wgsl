struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<bool>,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(140f - 760f)))), _wgslsmith_f_op_f32(f32(-1f) * -622f)), _wgslsmith_f_op_f32(f32(-1f) * -426f), true));
    var var_1 = Struct_1(_wgslsmith_mod_vec3_i32(-reverseBits(vec3<i32>(u_input.d.x, 0i, u_input.d.x)), reverseBits(-abs(vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x)))), u_input.a, -37259i, vec2<bool>(!any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), false));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1504f, -1000f)));
    let var_3 = Struct_2(_wgslsmith_mult_vec3_u32(vec3<u32>(~_wgslsmith_mult_u32(var_1.b.x, 1u), reverseBits(~var_1.b.x), 30127u), abs(u_input.a.wxx)), all(vec3<bool>((true && var_1.d.x) && true, !var_1.d.x || all(vec2<bool>(var_1.d.x, true)), (u_input.d.x | var_1.a.x) <= 1i)), vec4<i32>(abs(9857i), min(~_wgslsmith_add_i32(0i, var_1.a.x), 1i), _wgslsmith_dot_vec2_i32(var_1.a.xz ^ select(u_input.d, u_input.d, var_1.d.x), reverseBits(-u_input.d)), ~(-2147483647i)), Struct_1(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(var_1.c, -1i, var_1.c)), var_1.a), vec3<i32>(select(14668i, var_1.a.x, var_1.d.x), i32(-1i) * -7760i, 1i)), reverseBits(~_wgslsmith_clamp_vec4_u32(vec4<u32>(101650u, var_1.b.x, 15231u, u_input.a.x), vec4<u32>(var_1.b.x, var_1.b.x, 4294967295u, var_1.b.x), vec4<u32>(u_input.b, u_input.b, u_input.c, 35136u))), 8289i, select(!select(vec2<bool>(true, false), vec2<bool>(var_1.d.x, true), false), select(vec2<bool>(var_1.d.x, false), var_1.d, var_1.d), var_1.d)));
    let var_4 = var_3.c;
    return ~var_3.d.b;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_5) -> vec3<f32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1110f - _wgslsmith_f_op_f32(trunc(484f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2609f)) - _wgslsmith_f_op_f32(trunc(-369f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1145f)), 1928f, _wgslsmith_f_op_f32(f32(-1f) * -1238f));
    var var_1 = u_input.d;
    var_0 = vec4<f32>(1001f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-159f, 1000f))), var_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -569f))));
    let var_2 = Struct_4(vec2<u32>(abs(arg_3.a.a.x << (_wgslsmith_add_u32(1u, 34208u) % 32u)), _wgslsmith_div_u32(u_input.a.x, 75498u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1029f)))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1656f, var_0.x, var_0.x))), var_0.zwy)) * var_0.wxy));
    let var_3 = Struct_3(arg_3.a.a);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-410f, 821f) + _wgslsmith_div_f32(1896f, var_2.b)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.c.x)))), _wgslsmith_f_op_f32(-var_0.x), 864f));
}

fn func_2(arg_0: vec2<u32>, arg_1: f32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -172f), _wgslsmith_f_op_f32(-arg_1), -1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 1352f, arg_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, -478f))))), false)) * _wgslsmith_f_op_vec3_f32(func_4(true, arg_0.x, vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.d.x, -22291i), _wgslsmith_dot_vec3_i32(vec3<i32>(-23635i, u_input.d.x, 54448i), vec3<i32>(52385i, u_input.d.x, -3614i))), firstLeadingBit(_wgslsmith_div_i32(2147483647i, 2147483647i)), u_input.d.x, -15756i), Struct_5(Struct_3(_wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(u_input.b, arg_0.x, 1u, u_input.c), u_input.a)), vec2<bool>(true, true), Struct_3(abs(u_input.a)), Struct_3(func_3())))));
    var var_1 = firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.d.x, 25303i, u_input.d.x, 17339i), vec4<i32>(select(u_input.d.x, 3552i, true), _wgslsmith_mod_i32(u_input.d.x, u_input.d.x), 34296i, -u_input.d.x)), -(~(-u_input.d.x))));
    var var_2 = Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_div_i32(min(-2147483647i, u_input.d.x), 0i), 1i ^ u_input.d.x), vec3<i32>(79094i, ~(-u_input.d.x), _wgslsmith_div_i32(firstLeadingBit(55014i), -1i))), firstTrailingBit(_wgslsmith_div_vec4_u32(u_input.a, u_input.a)), -15598i, select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, true), false), true));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(-var_0.x)))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_4(var_2.d.x, 0u, firstLeadingBit(vec4<i32>(-19323i, u_input.d.x, 34731i, u_input.d.x)), Struct_5(Struct_3(vec4<u32>(11151u, 76534u, 1u, 4294967295u)), var_2.d, Struct_3(vec4<u32>(arg_0.x, 5376u, u_input.a.x, arg_0.x)), Struct_3(var_2.b))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1068f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1209f))), -812f));
    return _wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.c, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 1u, u_input.b), u_input.a.zwz)) | _wgslsmith_div_u32(u_input.b ^ var_2.b.x, ~4294967295u), u_input.a.x), var_2.b);
}

fn func_5(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))));
    let var_1 = Struct_3(_wgslsmith_add_vec4_u32(abs(vec4<u32>(arg_0.x, abs(12456u), 47177u, 4294967295u)), u_input.a));
    let var_2 = 4294967295u;
    var var_3 = !select(select(!vec3<bool>(arg_2.d.d.x, arg_2.d.d.x, arg_2.b), select(select(vec3<bool>(false, arg_2.b, arg_2.b), vec3<bool>(true, false, arg_2.b), true), select(vec3<bool>(arg_2.d.d.x, true, true), vec3<bool>(false, arg_2.d.d.x, true), vec3<bool>(true, false, true)), true), ~u_input.a.x >= u_input.b), vec3<bool>((57582i >> (var_1.a.x % 32u)) >= _wgslsmith_dot_vec4_i32(arg_2.c, arg_2.c), true, true), !select(vec3<bool>(arg_2.b, true, arg_2.b), !vec3<bool>(arg_2.d.d.x, arg_2.d.d.x, false), true));
    let var_4 = Struct_5(Struct_3(~arg_3), arg_2.d.d, var_1, Struct_3(~vec4<u32>(_wgslsmith_mult_u32(1u, 25708u), ~var_2, _wgslsmith_dot_vec2_u32(vec2<u32>(28244u, var_2), arg_2.d.b.zx), ~12462u)));
    return var_4.d;
}

fn func_6(arg_0: f32, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: i32) -> Struct_3 {
    var var_0 = Struct_1(~(~vec3<i32>(-1i, arg_3, 24011i)), vec4<u32>(countOneBits(~(~0u)), 4294967295u, _wgslsmith_add_u32(~_wgslsmith_sub_u32(u_input.b, 35747u), abs(99973u)), u_input.a.x), u_input.d.x, vec2<bool>(true, true));
    let var_1 = select(vec4<bool>(!(true && var_0.d.x), (8749i ^ _wgslsmith_mod_i32(2147483647i, var_0.a.x)) > (i32(-1i) * -66215i), any(vec2<bool>(var_0.d.x, var_0.d.x)), arg_2.x == _wgslsmith_f_op_f32(sign(arg_2.x))), vec4<bool>(false || (select(4294967295u, arg_1.a.x, true) <= 0u), select(var_0.d.x, var_0.d.x, !(var_0.d.x & false)), ~(~arg_1.a.x) == reverseBits(~u_input.c), var_0.d.x), vec4<bool>(var_0.d.x, !var_0.d.x != all(vec3<bool>(true, true, true)), true, var_0.d.x));
    var_0 = Struct_1(select(reverseBits(abs(select(var_0.a, vec3<i32>(-29865i, arg_3, 51589i), false))), firstLeadingBit(var_0.a & countOneBits(var_0.a)), select(countOneBits(0u), arg_1.a.x, select(var_1.x, true, true)) < (arg_1.a.x & _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.x, var_0.b.x, var_0.b.x), var_0.b.ywy))), firstTrailingBit(u_input.a), u_input.d.x, vec2<bool>(true, !(!var_1.x)));
    var_0 = Struct_1((var_0.a << (select(func_3().xyw, abs(vec3<u32>(29422u, var_0.b.x, u_input.c)), !var_0.d.x) % vec3<u32>(32u))) >> (~vec3<u32>(arg_1.a.x, 21524u, 27783u) % vec3<u32>(32u)), vec4<u32>(u_input.a.x, ~_wgslsmith_clamp_u32(~arg_1.a.x, ~arg_1.a.x, _wgslsmith_div_u32(var_0.b.x, arg_1.a.x)), abs(~(~0u)), 16492u), _wgslsmith_clamp_i32(firstLeadingBit(_wgslsmith_div_i32(~u_input.d.x, -8370i)), 2147483647i, (30998i & ~var_0.c) ^ _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_0.a.x), var_0.a.zx), 64547i)), var_0.d);
    var_0 = Struct_1(abs(vec3<i32>(firstTrailingBit(~0i), _wgslsmith_dot_vec3_i32(var_0.a, var_0.a), 2147483647i << (~var_0.b.x % 32u))), u_input.a, ~(-1i), !var_1.zz);
    return arg_1;
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_3(u_input.a);
    var var_1 = func_6(_wgslsmith_f_op_f32(870f * _wgslsmith_f_op_f32(486f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(876f)), -1342f, true)))), func_5(var_0.a >> (func_2(_wgslsmith_add_vec2_u32(u_input.a.ww, var_0.a.zy), _wgslsmith_f_op_f32(f32(-1f) * -339f)) % vec4<u32>(32u)), u_input.a.zy, Struct_2(var_0.a.zxy, true, vec4<i32>(firstLeadingBit(u_input.d.x), u_input.d.x << (u_input.b % 32u), _wgslsmith_mult_i32(-2147483647i, u_input.d.x), -38662i), Struct_1(vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), _wgslsmith_add_vec4_u32(vec4<u32>(4481u, 4294967295u, u_input.a.x, 4294967295u), vec4<u32>(u_input.b, var_0.a.x, var_0.a.x, 51846u)), -2296i, select(vec2<bool>(true, false), vec2<bool>(false, true), false))), vec4<u32>(max(0u | u_input.a.x, var_0.a.x), var_0.a.x, 4294967295u, ~u_input.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(round(-2050f)), true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1018f, -467f) - _wgslsmith_f_op_f32(ceil(-1453f))), 1f, _wgslsmith_f_op_f32(f32(-1f) * -1063f))), -1i);
    var var_2 = Struct_5(var_0, vec2<bool>(!all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false))), 649u < (var_1.a.x & _wgslsmith_mod_u32(4294967295u, var_1.a.x))), Struct_3(var_0.a), func_5(vec4<u32>(var_1.a.x, var_0.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(42359u, 2537u, var_1.a.x), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a.x, 39348u, 7352u), vec3<u32>(69907u, u_input.a.x, 43166u))), var_1.a.x), vec2<u32>(var_0.a.x, 1u) | var_0.a.xy, Struct_2(var_1.a.zwx, any(vec2<bool>(true, true)), vec4<i32>(u_input.d.x, _wgslsmith_mod_i32(-2147483647i, u_input.d.x), -60595i, -86572i), Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<i32>(-16800i, u_input.d.x, u_input.d.x)), countOneBits(vec4<u32>(18539u, var_1.a.x, u_input.a.x, u_input.a.x)), i32(-1i) * -2147483647i, vec2<bool>(true, true))), vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(58842u, 4294967295u)), var_0.a.x, u_input.b, var_0.a.x)));
    var_1 = var_2.d;
    var_2 = Struct_5(func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_4(any(vec3<bool>(var_2.b.x, var_2.b.x, var_2.b.x)), ~4294967295u, vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), Struct_5(var_0, vec2<bool>(var_2.b.x, false), Struct_3(vec4<u32>(var_0.a.x, var_0.a.x, 38053u, 32231u)), var_0))).x - -142f), Struct_3(u_input.a), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(330f)) + _wgslsmith_div_f32(-872f, 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1332f - 182f) + _wgslsmith_f_op_f32(step(214f, -543f))), -282f, -815f), max(i32(-1i) * -41531i, u_input.d.x) >> (~firstLeadingBit(var_0.a.x) % 32u)), select(var_2.b, select(vec2<bool>(var_2.b.x, var_2.b.x), select(vec2<bool>(true, false), select(var_2.b, var_2.b, true), select(var_2.b, var_2.b, var_2.b.x)), !var_2.b), var_2.b.x), Struct_3(firstLeadingBit(~var_0.a)), var_2.c);
    return Struct_4(var_2.c.a.yw, _wgslsmith_f_op_f32(-1617f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-224f, _wgslsmith_div_f32(1329f, -256f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-512f, -776f, -973f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-100f, -710f, -1000f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-956f, 225f, 1000f)))));
}

fn func_7(arg_0: Struct_4, arg_1: Struct_5, arg_2: vec2<i32>) -> vec2<u32> {
    let var_0 = !vec3<bool>(!arg_1.b.x, true, arg_1.b.x);
    let var_1 = !arg_1.b;
    let var_2 = func_1();
    let var_3 = vec4<i32>(arg_2.x, arg_2.x, arg_2.x, -((_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_2.x, u_input.d.x, u_input.d.x), vec4<i32>(-58421i, 43605i, u_input.d.x, u_input.d.x)) ^ u_input.d.x) << (func_6(_wgslsmith_f_op_f32(arg_0.b + -1000f), func_6(1000f, Struct_3(vec4<u32>(arg_0.a.x, 9551u, arg_1.c.a.x, 54267u)), vec4<f32>(arg_0.c.x, 505f, var_2.b, arg_0.b), 2147483647i), _wgslsmith_f_op_vec4_f32(vec4<f32>(-267f, arg_0.b, -189f, var_2.c.x) * vec4<f32>(1326f, 1000f, 1052f, var_2.c.x)), 35982i).a.x % 32u)));
    let var_4 = any(vec3<bool>(_wgslsmith_add_u32(var_2.a.x >> (23882u % 32u), 0u) < ~min(var_2.a.x, 4039u), var_1.x, arg_1.b.x));
    return abs(abs(~_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.a.x, var_2.a.x), vec2<u32>(var_2.a.x, u_input.a.x)), vec2<u32>(var_2.a.x, u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_u32(~vec2<u32>(~abs(6103u), u_input.c), func_7(func_1(), Struct_5(func_6(_wgslsmith_div_f32(-934f, 1336f), Struct_3(u_input.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1935f, -1000f, -432f, 500f) - vec4<f32>(1669f, -1167f, -1048f, -832f)), -7209i), vec2<bool>(false, all(vec3<bool>(true, true, true))), func_5(u_input.a, u_input.a.zw, Struct_2(u_input.a.xyz, true, vec4<i32>(u_input.d.x, u_input.d.x, 1i, u_input.d.x), Struct_1(vec3<i32>(u_input.d.x, u_input.d.x, 2147483647i), u_input.a, -1i, vec2<bool>(false, false))), u_input.a), Struct_3(u_input.a)), _wgslsmith_mod_vec2_i32((vec2<i32>(1i, u_input.d.x) >> (vec2<u32>(u_input.b, 0u) % vec2<u32>(32u))) & vec2<i32>(u_input.d.x, -2147483647i), u_input.d)));
    let var_1 = Struct_5(Struct_3(~(~max(u_input.a, vec4<u32>(16904u, 1u, 1u, var_0)))), vec2<bool>(true, true), func_5(vec4<u32>(reverseBits(_wgslsmith_add_u32(var_0, 4294967295u)), ~func_7(Struct_4(u_input.a.yy, 980f, vec3<f32>(359f, -233f, -1079f)), Struct_5(Struct_3(u_input.a), vec2<bool>(false, true), Struct_3(u_input.a), Struct_3(vec4<u32>(var_0, 60094u, u_input.b, 24422u))), vec2<i32>(1i, -2147483647i)).x, ~4294967295u >> (_wgslsmith_sub_u32(4294967295u, 4294967295u) % 32u), ~1u), u_input.a.zx, Struct_2(vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 40535u, var_0, 43812u)), _wgslsmith_sub_u32(u_input.b, var_0), 4294967295u), true, -vec4<i32>(1i, 1i, 1i, 1i), Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(0i, -23540i, u_input.d.x), vec3<i32>(32122i, -1i, 0i)), ~u_input.a, countOneBits(0i), select(vec2<bool>(true, false), vec2<bool>(false, false), false))), u_input.a), func_6(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(241f - 700f), -687f, false)))), func_6(_wgslsmith_f_op_f32(592f + _wgslsmith_f_op_f32(f32(-1f) * -1401f)), func_5(func_6(-585f, Struct_3(u_input.a), vec4<f32>(-574f, 1534f, 1782f, -1060f), u_input.d.x).a, _wgslsmith_sub_vec2_u32(u_input.a.zx, vec2<u32>(var_0, u_input.b)), Struct_2(vec3<u32>(var_0, u_input.c, 37374u), false, vec4<i32>(u_input.d.x, u_input.d.x, -19564i, u_input.d.x), Struct_1(vec3<i32>(-1i, u_input.d.x, u_input.d.x), vec4<u32>(u_input.c, u_input.a.x, 1500u, 6273u), 0i, vec2<bool>(false, true))), u_input.a & vec4<u32>(var_0, var_0, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1703f, 945f, -675f, -2646f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-502f, 362f, -1152f, -320f) + vec4<f32>(1669f, -729f, -149f, -491f)), any(vec2<bool>(true, true)))), -1i), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -360f)), 1f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(-100f, 1294f, true))), u_input.d.x));
    var var_2 = _wgslsmith_add_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<i32>(u_input.d.x, 0i, 0i)), countOneBits(u_input.d.x), abs(u_input.d.x), _wgslsmith_add_i32(-1i, 18845i)) ^ _wgslsmith_div_vec4_i32(select(-vec4<i32>(2147483647i, -2147483647i, 30055i, -2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, -1i, -2147483647i, 0i), vec4<i32>(u_input.d.x, -3761i, 1i, u_input.d.x)), var_1.b.x), reverseBits(vec4<i32>(u_input.d.x, u_input.d.x, 0i, -22370i)) >> ((u_input.a | vec4<u32>(22882u, 37075u, var_0, 0u)) % vec4<u32>(32u))), -_wgslsmith_mod_vec4_i32(countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(-83242i, -1i, -1i, -1i), vec4<i32>(u_input.d.x, u_input.d.x, 0i, u_input.d.x))), ~(~vec4<i32>(u_input.d.x, 43203i, u_input.d.x, 13494i))));
    let var_3 = Struct_2(u_input.a.yxz, var_1.b.x, ~(-(vec4<i32>(var_2.x, u_input.d.x, u_input.d.x, u_input.d.x) >> (min(vec4<u32>(1u, 4294967295u, 68982u, 0u), u_input.a) % vec4<u32>(32u)))), Struct_1(~(var_2.xzz ^ (var_2.xyz << (vec3<u32>(var_1.c.a.x, u_input.b, u_input.a.x) % vec3<u32>(32u)))), ~u_input.a, var_2.x, vec2<bool>(true, var_1.b.x)));
    let var_4 = vec4<bool>(false, any(vec3<bool>(!all(var_3.d.d), var_3.d.d.x, true)), all(!select(select(vec3<bool>(var_1.b.x, var_1.b.x, var_3.b), vec3<bool>(var_3.b, true, true), vec3<bool>(var_3.b, var_1.b.x, var_3.b)), select(vec3<bool>(true, var_3.b, var_1.b.x), vec3<bool>(false, false, var_3.d.d.x), vec3<bool>(true, var_3.b, var_3.d.d.x)), true)), any(var_3.d.d));
    var var_5 = var_2.yy >> (vec2<u32>(~u_input.b, 28079u) % vec2<u32>(32u));
    var var_6 = var_3;
    let var_7 = _wgslsmith_f_op_f32(383f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1().b * _wgslsmith_div_f32(-233f, -1363f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1007f)), _wgslsmith_f_op_f32(-1062f + -1480f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -1000f) * 289f))));
    let var_8 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(var_3.d.b.x, u_input.b), ~(~_wgslsmith_add_u32(var_3.d.b.x, 4294967295u)), ~4294967295u);
}

