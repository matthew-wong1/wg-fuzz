struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec2<bool>) -> f32 {
    var var_0 = all(!arg_2);
    var_0 = true;
    var var_1 = arg_0;
    var_0 = (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-172f)) + -1000f)) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(291f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -141f))), select(all(vec3<bool>(arg_1, false, true)), true, arg_2.x & arg_1)))) | (!(!all(vec3<bool>(false, true, arg_2.x))) | true);
    var_1 = Struct_1(-(var_1.a | vec3<i32>(i32(-1i) * -15266i, abs(6259i), _wgslsmith_clamp_i32(-1i, -7254i, u_input.c.x))), ~arg_0.b & abs(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.b.x, 12349i, var_1.a.x, u_input.c.x), var_1.b), var_1.b)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1175f)), 239f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2007f - 217f), -389f)), -446f, !arg_1)) * -479f));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_1(u_input.c, arg_0.b);
    let var_1 = ~_wgslsmith_mult_vec2_i32(select(vec2<i32>(1i, _wgslsmith_mod_i32(arg_1, arg_0.a.x)), arg_2.a.yx, any(vec4<bool>(true, true, true, true))), vec2<i32>(var_0.b.x, reverseBits(~(-2147483647i))));
    let var_2 = Struct_1(u_input.c, arg_2.b << ((_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.d, 0u, u_input.b.x, 27037u), firstLeadingBit(vec4<u32>(75748u, 41573u, u_input.b.x, u_input.d)), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 0u)) & firstTrailingBit(~vec4<u32>(10553u, 0u, u_input.d, 1u))) % vec4<u32>(32u)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(func_3(var_0, true, vec2<bool>(true, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.x, arg_3.x) - _wgslsmith_f_op_f32(max(-1848f, arg_3.x))), _wgslsmith_f_op_f32(func_3(var_0, true, select(vec2<bool>(false, false), vec2<bool>(false, false), false)))), -234f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_3.x)))))));
    let var_4 = -vec2<i32>(arg_2.b.x, -1i);
    return Struct_1(arg_0.a, ~_wgslsmith_mod_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.a.x, var_1.x, -1i, -41555i), arg_0.b), -vec4<i32>(u_input.a, -26818i, var_4.x, -2147483647i) & arg_2.b));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> i32 {
    let var_0 = true;
    var var_1 = Struct_1(u_input.c, vec4<i32>(arg_0.a.x ^ _wgslsmith_mult_i32(-944i, _wgslsmith_mod_i32(arg_1.b.x, 8346i)), _wgslsmith_dot_vec3_i32(arg_1.b.zyy, _wgslsmith_div_vec3_i32(min(u_input.c, vec3<i32>(u_input.a, 8428i, 91931i)), arg_0.b.wxx)), _wgslsmith_mod_i32(arg_1.a.x, _wgslsmith_div_i32(_wgslsmith_clamp_i32(arg_1.b.x, arg_0.a.x, -2147483647i), countOneBits(2147483647i))), 30192i));
    let var_2 = Struct_1(abs(arg_0.a), _wgslsmith_sub_vec4_i32(vec4<i32>(reverseBits(~u_input.c.x), -1i, var_1.b.x, 1i | (-1i & arg_0.b.x)), vec4<i32>(_wgslsmith_clamp_i32(arg_0.a.x, 0i, select(1i, var_1.a.x, false)), var_1.b.x & 22211i, arg_1.b.x, _wgslsmith_sub_i32(-15643i, 8872i))));
    var_1 = Struct_1(select(vec3<i32>(-_wgslsmith_mod_i32(-28401i, -2147483647i), -83674i, -var_2.a.x), _wgslsmith_mult_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, arg_0.b.x, min(-51909i, 2147483647i)), u_input.c), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), !vec3<bool>(false, arg_2, true), select(arg_2, var_0, var_0)), !(!arg_2))), func_2(arg_0, -(~(-43398i)), arg_1, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -819f)), -923f)).b);
    let var_3 = select(max(~(~select(vec4<u32>(21399u, 54281u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.d, u_input.b.x, 28910u), vec4<bool>(false, true, var_0, arg_2))), ~(~(vec4<u32>(u_input.d, 0u, u_input.b.x, 0u) << (vec4<u32>(34706u, 1u, u_input.b.x, u_input.d) % vec4<u32>(32u))))), vec4<u32>(_wgslsmith_dot_vec4_u32(~max(vec4<u32>(u_input.d, u_input.d, 0u, u_input.d), vec4<u32>(1u, 7037u, u_input.d, 68787u)), firstTrailingBit(vec4<u32>(4294967295u, 0u, u_input.b.x, u_input.d)) ^ ~vec4<u32>(1u, u_input.b.x, u_input.b.x, 1u)), 0u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 0u, u_input.d), vec3<u32>(u_input.d, u_input.d, 4294967295u) & vec3<u32>(0u, 0u, u_input.b.x)), 41699u), u_input.d), true);
    return _wgslsmith_div_i32(var_2.b.x, 1i);
}

fn func_1() -> Struct_1 {
    var var_0 = countOneBits(-23173i);
    var_0 = firstLeadingBit(-2779i);
    var var_1 = Struct_1(vec3<i32>(-countOneBits(-1i), u_input.c.x, func_4(func_2(Struct_1(u_input.c, vec4<i32>(u_input.a, u_input.a, u_input.c.x, u_input.c.x)), u_input.c.x, Struct_1(u_input.c, vec4<i32>(-2147483647i, u_input.a, u_input.c.x, u_input.a)), vec2<f32>(2428f, 1563f)), Struct_1(u_input.c, vec4<i32>(u_input.a, u_input.a, u_input.c.x, u_input.c.x)), any(vec3<bool>(true, false, true)))) ^ (reverseBits(min(vec3<i32>(0i, 1i, -2147483647i), u_input.c)) & u_input.c), ~_wgslsmith_div_vec4_i32(select(-vec4<i32>(0i, -47982i, u_input.c.x, u_input.a), -vec4<i32>(u_input.c.x, u_input.c.x, 0i, u_input.c.x), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false))), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -2629i, -35133i, u_input.a), vec4<i32>(u_input.a, 26456i, 29273i, u_input.c.x)), ~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.c.x))));
    var var_2 = func_2(func_2(func_2(func_2(Struct_1(u_input.c, vec4<i32>(32758i, 31439i, var_1.b.x, u_input.a)), ~u_input.a, func_2(Struct_1(u_input.c, vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.c.x)), 2147483647i, Struct_1(u_input.c, var_1.b), vec2<f32>(-820f, -284f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1136f, -1412f) + vec2<f32>(1042f, -1219f))), _wgslsmith_mod_i32(-46309i, max(1i, var_1.b.x)), Struct_1(abs(u_input.c), var_1.b | var_1.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-2727f, -659f), vec2<f32>(-1815f, -2129f))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-987f, 757f), vec2<f32>(-1719f, 865f))))), -_wgslsmith_mod_i32(u_input.a, firstLeadingBit(var_1.b.x)), func_2(Struct_1(u_input.c >> (vec3<u32>(u_input.d, u_input.b.x, u_input.d) % vec3<u32>(32u)), abs(vec4<i32>(u_input.c.x, var_1.b.x, 32191i, -2147483647i))), u_input.c.x, Struct_1(vec3<i32>(u_input.a, u_input.a, 2147483647i), -vec4<i32>(-2147483647i, var_1.b.x, u_input.c.x, var_1.a.x)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(818f, 1876f) + vec2<f32>(854f, 166f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), -39761i, func_2(func_2(func_2(func_2(Struct_1(u_input.c, var_1.b), 1i, Struct_1(var_1.a, var_1.b), vec2<f32>(-597f, 1381f)), ~(-36668i), func_2(Struct_1(u_input.c, var_1.b), -31733i, Struct_1(vec3<i32>(-2147483647i, u_input.c.x, 67651i), vec4<i32>(-1i, var_1.a.x, -2147483647i, 0i)), vec2<f32>(754f, -1068f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(858f, -686f)))), (u_input.c.x << (10994u % 32u)) | _wgslsmith_add_i32(-61116i, u_input.c.x), func_2(Struct_1(var_1.b.zzx, vec4<i32>(2147483647i, var_1.b.x, 13154i, var_1.a.x)), u_input.c.x, Struct_1(u_input.c, vec4<i32>(u_input.c.x, u_input.c.x, 27049i, u_input.c.x)), vec2<f32>(-771f, -999f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(973f, 1820f)) + vec2<f32>(382f, 110f))), 19922i | var_1.b.x, Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, -103490i, -47239i), vec3<i32>(-2147483647i, var_1.b.x, var_1.a.x)) | ~vec3<i32>(u_input.a, var_1.b.x, 46253i), vec4<i32>(u_input.a, -15474i, u_input.a, 1i) | ~var_1.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1510f, -577f), vec2<f32>(-399f, 123f))))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(-2175f, 363f), vec2<f32>(-507f, -1031f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1369f, 1000f)))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1281f, _wgslsmith_f_op_f32(-1678f + -818f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(690f, 1509f) + vec2<f32>(1147f, -335f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1400f, -497f) + vec2<f32>(378f, -2157f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1399f, -998f)), vec2<f32>(719f, -1204f))) - vec2<f32>(1f, _wgslsmith_f_op_f32(func_3(Struct_1(u_input.c, var_1.b), true, vec2<bool>(true, true))))))));
    let var_3 = var_1.b.x;
    return func_2(Struct_1(u_input.c, var_1.b), ~(-2147483647i), Struct_1(vec3<i32>(min(u_input.a, -2206i), _wgslsmith_sub_i32(min(26026i, var_1.b.x), -1i), 2147483647i), var_2.b & var_2.b), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1329f, 582f) - _wgslsmith_f_op_f32(min(-1000f, -1243f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-811f)) - _wgslsmith_f_op_f32(select(-239f, 776f, false))))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec3<i32>, arg_3: vec3<i32>) -> u32 {
    let var_0 = func_2(arg_0, 1i, arg_0, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1311f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-434f)), _wgslsmith_f_op_f32(max(243f, 1000f)))), vec2<f32>(1f, _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(f32(-1f) * -708f)))), all(vec4<bool>(false, arg_1.x, true, any(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)))))));
    let var_1 = func_1();
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(930f + 191f) + _wgslsmith_f_op_f32(323f - _wgslsmith_f_op_f32(f32(-1f) * -1232f)))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-var_2), -1000f, _wgslsmith_f_op_f32(ceil(515f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1132f))));
    var_3 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-140f, _wgslsmith_f_op_f32(round(-842f)), _wgslsmith_f_op_f32(-var_3.x), var_2)));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(~27767u, func_5(func_1(), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), _wgslsmith_clamp_vec3_i32(u_input.c, func_2(Struct_1(u_input.c, vec4<i32>(51337i, u_input.a, 5118i, u_input.c.x)), 38336i, Struct_1(u_input.c, vec4<i32>(1i, u_input.a, 2147483647i, u_input.a)), vec2<f32>(-1259f, 819f)).b.xyy, _wgslsmith_sub_vec3_i32(vec3<i32>(-23469i, -1i, 2147483647i), vec3<i32>(-2147483647i, -39399i, 42676i))), u_input.c | (u_input.c | u_input.c))), u_input.b);
    var_0 = 1u;
    var_0 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(abs(~u_input.d), u_input.b.x ^ 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-695f, -127f)), _wgslsmith_f_op_f32(-513f + _wgslsmith_f_op_f32(min(3019f, -813f)))))));
}

