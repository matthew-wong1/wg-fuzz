struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<bool>) -> vec3<u32> {
    var var_0 = Struct_3(Struct_1(select(u_input.b, u_input.b, true), -34440i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x))), -640f), true, 1u), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2290f, arg_0.x, -1743f, _wgslsmith_f_op_f32(ceil(arg_0.x)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -965f), -1328f, arg_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1067f)))))), Struct_1(select(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.b.x, u_input.b.x, u_input.c.x), u_input.b), vec4<i32>(-1i) * -u_input.b, all(select(arg_1, arg_1, arg_1))), -2147483647i, -940f, true, 1u), ~19824u << (_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(1u, 1u)), ~(~vec2<u32>(37438u, 0u))) % 32u), Struct_2(u_input.a << (select(_wgslsmith_clamp_u32(1u, 4294967295u, 4294967295u), 1u, arg_1.x) % 32u)));
    var var_1 = ~(65034u & ~reverseBits(var_0.a.e));
    var_1 = ~_wgslsmith_sub_u32(reverseBits(~4294967295u), ~(~(1u << (var_0.c.e % 32u))));
    var_0 = Struct_3(var_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0) * var_0.b), Struct_1(_wgslsmith_div_vec4_i32(var_0.c.a, vec4<i32>(var_0.a.b, -13242i, -3663i, -1i)) | _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(u_input.b, u_input.b), u_input.b & var_0.c.a, vec4<i32>(2147483647i, u_input.b.x, -2147483647i, 10495i)), -(-var_0.e.a & _wgslsmith_div_i32(1i, -2147483647i)), _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, -2579f)) + -1251f) == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1084f, arg_0.x)), select(~_wgslsmith_mult_u32(4294967295u, var_0.a.e), min(var_0.a.e, 13226u), (u_input.b.x ^ var_0.c.a.x) <= u_input.a)), ~(~_wgslsmith_add_u32(var_0.d, _wgslsmith_clamp_u32(10255u, 64524u, 59469u))), Struct_2(var_0.c.a.x));
    let var_2 = Struct_1(_wgslsmith_mult_vec4_i32(var_0.c.a, vec4<i32>(-(~u_input.a), select(-46943i, var_0.a.b, true), _wgslsmith_div_i32(abs(-1i), u_input.c.x), _wgslsmith_sub_i32(_wgslsmith_sub_i32(8007i, u_input.c.x), -2147483647i))), -1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x))), arg_1.x & arg_1.x, ~var_0.c.e);
    return vec3<u32>(~0u, var_2.e, ~_wgslsmith_mult_u32(var_0.d, var_0.d));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<u32>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -546f)));
    let var_1 = 42549u;
    return ~(~firstTrailingBit(vec3<u32>(0u, arg_1.x, 32718u))) | select(~func_3(_wgslsmith_div_vec4_f32(vec4<f32>(1426f, var_0, 452f, -499f), vec4<f32>(arg_0.x, -2187f, -1698f, 815f)), vec2<bool>(false, true)), _wgslsmith_mult_vec3_u32(abs(_wgslsmith_clamp_vec3_u32(arg_1.ywy, arg_1.xxw, arg_1.yyz)), vec3<u32>(~4294967295u, arg_1.x, 4294967295u)), vec3<bool>(true, false | all(vec3<bool>(false, true, false)), true));
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: f32, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_1(u_input.b, -(~arg_3.x) << (reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 1u, arg_1), ~vec3<u32>(arg_1, arg_1, arg_1))) % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(596f, _wgslsmith_f_op_f32(686f + 1940f))), arg_0.x), 82354u > countOneBits(arg_1), abs(arg_1));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - -275f) - _wgslsmith_f_op_f32(-var_0.c))))), arg_2, -247f, arg_0.x);
    let var_2 = ~(~_wgslsmith_clamp_vec3_u32(~select(vec3<u32>(25430u, 0u, 108916u), vec3<u32>(var_0.e, var_0.e, arg_1), true), ~func_2(vec2<f32>(var_1.x, arg_0.x), vec4<u32>(arg_1, var_0.e, arg_1, 1u)), vec3<u32>(~var_0.e, var_0.e, arg_1)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x)));
    var_3 = _wgslsmith_f_op_f32(floor(1231f));
    return Struct_1(u_input.b << (countOneBits(max(vec4<u32>(arg_1, 0u, var_2.x, var_0.e), abs(vec4<u32>(4561u, arg_1, arg_1, arg_1)))) % vec4<u32>(32u)), -28219i, 1f, var_0.d, 42664u);
}

fn func_1(arg_0: vec3<u32>, arg_1: f32) -> Struct_2 {
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 1000f) + vec2<f32>(-1000f, -620f)))), vec2<f32>(_wgslsmith_f_op_f32(-563f * -349f), _wgslsmith_f_op_f32(step(arg_1, arg_1)))))), _wgslsmith_dot_vec3_u32(firstTrailingBit(max(arg_0, vec3<u32>(arg_0.x, 1u, 85000u))), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(func_2(vec2<f32>(-1455f, 854f), vec4<u32>(arg_0.x, arg_0.x, 1u, 0u)), select(vec3<u32>(arg_0.x, arg_0.x, arg_0.x), arg_0, vec3<bool>(true, true, false))), vec3<u32>(arg_0.x, arg_0.x & 54443u, 0u))), -923f, ~(u_input.c << ((arg_0.yx >> (vec2<u32>(arg_0.x, arg_0.x) % vec2<u32>(32u))) % vec2<u32>(32u))) | _wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.a, u_input.a), -(~vec2<i32>(-6076i, 0i)), -u_input.c));
    var var_1 = max(vec3<i32>(i32(-1i) * -_wgslsmith_mult_i32(-1i, -2147483647i), u_input.a, i32(-1i) * -6790i), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.a.x, -1i, u_input.b.x), var_0.a.xzw));
    var_1 = _wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(-1i) * -(~vec3<i32>(6108i, var_0.b, var_0.a.x))), vec3<i32>(_wgslsmith_div_i32(-1i, abs(-var_0.a.x)), var_1.x, min(-_wgslsmith_mod_i32(var_1.x, u_input.b.x), var_1.x)));
    var var_2 = ~vec3<i32>(abs(11314i), -1i, var_0.a.x);
    var_1 = firstTrailingBit(u_input.b.zxz ^ (countOneBits(~var_0.a.xyw) & u_input.b.xyw));
    return Struct_2(var_1.x);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    var var_0 = Struct_1(u_input.b ^ firstLeadingBit(_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(arg_1.a, 1i, -6283i, -23167i)), min(u_input.b, u_input.b))), -19700i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-997f, -106f)))), !((select(false, true, false) || true) & any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), true))), 1u);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-401f - var_0.c));
    var var_2 = Struct_3(func_4(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * var_0.c))), 1u, var_0.c, select(-u_input.c, ~_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, u_input.c.x), u_input.b.zy, var_0.a.zz), (true & var_0.d) && var_0.d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(380f, var_0.c, 482f, var_0.c) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, var_0.c, -490f, var_0.c))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, var_0.c, -568f, -1222f) * vec4<f32>(-422f, -953f, var_0.c, var_0.c))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(503f, -435f, 123f, var_0.c))))), func_4(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.c, var_0.c))))))), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.e, 50636u, var_0.e), ~vec3<u32>(4294967295u, 0u, var_0.e)), 1f, ~(reverseBits(u_input.b.xz) << (_wgslsmith_sub_vec2_u32(vec2<u32>(43482u, var_0.e), vec2<u32>(var_0.e, 4294967295u)) % vec2<u32>(32u)))), 7897u, Struct_2(1i | countOneBits(-arg_1.a)));
    var_2 = Struct_3(var_2.a, vec4<f32>(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(884f))), all(select(vec3<bool>(var_0.d, var_2.c.d, true), vec3<bool>(var_2.c.d, false, true), false)))), _wgslsmith_f_op_f32(min(433f, _wgslsmith_f_op_f32(min(var_2.c.c, _wgslsmith_f_op_f32(trunc(-1977f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(2964f, 2062f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(-597f + var_0.c)))), Struct_1(-u_input.b | min(-vec4<i32>(arg_1.a, var_0.a.x, 30168i, u_input.b.x), ~vec4<i32>(0i, 38818i, var_2.e.a, 1i)), func_1(~vec3<u32>(0u, var_2.d, 4294967295u), var_0.c).a, var_2.a.c, true & !var_2.a.d, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.a.e, var_2.d, var_2.d), vec3<u32>(var_2.d, 50191u, var_2.d), vec3<u32>(var_0.e, 0u, var_0.e)), ~vec3<u32>(20605u, var_0.e, var_0.e)) >> (func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1552f, var_0.c) * var_2.b.zz), 8869u, var_0.c, -var_2.a.a.ww).e % 32u)), ~_wgslsmith_sub_u32(var_2.d, 22900u), arg_1);
    var_2 = Struct_3(var_2.a, _wgslsmith_f_op_vec4_f32(-var_2.b), var_2.a, abs(4687u), func_1(~(~(vec3<u32>(var_2.c.e, var_0.e, 0u) << (vec3<u32>(var_0.e, 4294967295u, 0u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + _wgslsmith_f_op_f32(exp2(var_2.c.c))), var_0.c))));
    return var_0.c;
}

fn func_6(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: u32) -> i32 {
    var var_0 = select(!select(vec3<bool>(arg_2.c.d || arg_2.c.d, arg_2.a.d, true), vec3<bool>(false, func_4(arg_1.yz, 58614u, arg_0, vec2<i32>(20155i, -55211i)).d, all(vec2<bool>(arg_2.a.d, true))), all(!vec4<bool>(true, false, arg_2.c.d, true))), select(vec3<bool>(arg_2.c.d, true, !select(false, false, arg_2.c.d)), select(select(select(vec3<bool>(arg_2.a.d, true, arg_2.c.d), vec3<bool>(arg_2.c.d, arg_2.a.d, arg_2.c.d), true), select(vec3<bool>(true, true, arg_2.a.d), vec3<bool>(arg_2.a.d, arg_2.c.d, false), arg_2.a.d), arg_2.a.d), vec3<bool>(true, true, true), func_4(vec2<f32>(177f, -1633f), func_3(arg_2.b, vec2<bool>(false, arg_2.c.d)).x, _wgslsmith_f_op_f32(max(arg_2.a.c, arg_0)), vec2<i32>(u_input.a, arg_2.a.b)).d), false), arg_2.a.d);
    var var_1 = func_1(~vec3<u32>(arg_3, 0u, arg_3), arg_1.x);
    var var_2 = arg_2;
    var var_3 = var_2.c.e;
    var_2 = Struct_3(arg_2.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_1.x, 979f)))), var_2.c.c, 675f, 416f)), var_2.c, func_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1665f, 1312f, -1001f, arg_0) - vec4<f32>(var_2.c.c, -739f, arg_0, arg_1.x))))), !var_0.yz).x, func_1(min(abs(vec3<u32>(0u, 46558u, 653u)) & ~vec3<u32>(35036u, var_2.d, arg_2.d), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-437f, arg_1.x)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 5885u, var_2.c.e, 126057u), vec4<u32>(65737u, var_2.d, var_2.d, var_2.c.e)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-702f, var_2.b.x))))));
    return -5105i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!(!vec2<bool>(u_input.c.x > u_input.c.x, true)));
    let var_1 = u_input.b;
    var var_2 = Struct_2(func_6(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1033f)), _wgslsmith_f_op_f32(func_5(func_1(vec3<u32>(0u, 1u, 4294967295u), -536f), Struct_2(1i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(848f, 245f, 700f)))), Struct_3(Struct_1(~u_input.b, firstTrailingBit(-9976i), _wgslsmith_f_op_f32(abs(275f)), var_0 & false, firstLeadingBit(4294967295u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1037f, -1590f)), min(30381u, 660u), -1000f, vec2<i32>(-1i, -1i) ^ vec2<i32>(-5550i, var_1.x)), ~29926u << (0u % 32u), func_1(vec3<u32>(0u, 0u, 0u), _wgslsmith_div_f32(1322f, -101f))), ~firstLeadingBit(35649u)));
    var_2 = Struct_2(select(-4260i, ~var_2.a, true));
    var_2 = func_1(vec3<u32>(~max(~54579u, 44941u), 55609u, ~(~countOneBits(70031u))), _wgslsmith_f_op_f32(f32(-1f) * -659f));
    var var_3 = Struct_3(func_4(vec2<f32>(-1334f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -875f)))), ~(~_wgslsmith_clamp_u32(0u, 0u, 13946u)), -2067f, var_1.zy), vec4<f32>(774f, _wgslsmith_f_op_f32(max(-497f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-537f)), 861f))), 932f, _wgslsmith_f_op_f32(max(-207f, 454f))), Struct_1(max(u_input.b, vec4<i32>(1i, var_1.x, func_6(-784f, vec3<f32>(646f, -229f, 1000f), Struct_3(Struct_1(vec4<i32>(var_2.a, 39802i, -23174i, var_1.x), 6726i, -1530f, var_0, 1990u), vec4<f32>(720f, 601f, -930f, -914f), Struct_1(vec4<i32>(u_input.a, -57239i, 0i, -21028i), -23234i, 224f, true, 4294967295u), 0u, Struct_2(68458i)), 13225u), firstLeadingBit(u_input.b.x))), abs(~1i), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_div_f32(-615f, -524f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -678f))), true || !var_0, 14195u), ~1u, func_1(~(~func_3(vec4<f32>(347f, -841f, 429f, 1826f), vec2<bool>(var_0, var_0))), -320f));
    let var_4 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.c.c, var_3.c.c) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_3.a.c - -464f), _wgslsmith_f_op_f32(max(206f, 1378f)))))));
    var var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_3.b.x), var_2.a);
}

