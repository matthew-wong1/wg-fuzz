struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: vec4<bool>) -> vec4<u32> {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0, arg_1.x)), -261f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(arg_0 + arg_0))), 1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(arg_0)))), arg_1.x))), arg_1.wzw);
    var var_1 = select(!select(vec3<bool>(!arg_2.x, arg_2.x && arg_2.x, arg_2.x), arg_2.yxx, arg_2.x), !arg_2.xwx, true);
    var_1 = arg_2.zzx;
    var_1 = select(!select(vec3<bool>(true || var_1.x, any(vec4<bool>(arg_2.x, var_1.x, var_1.x, false)), true), !(!vec3<bool>(true, false, arg_2.x)), true), !select(!arg_2.ywx, arg_2.ywy, !vec3<bool>(true, var_1.x, var_1.x)), arg_2.xzy);
    var var_2 = -firstLeadingBit(~vec4<i32>(u_input.b, -2147483647i, u_input.a, -20101i));
    return _wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(~firstLeadingBit(1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, 71347u, u_input.c, 18479u), vec4<u32>(u_input.c, 17465u, u_input.c, 41037u)), u_input.c & _wgslsmith_clamp_u32(4294967295u, 70441u, 0u), u_input.c)), vec4<u32>(u_input.c, 90439u, min(_wgslsmith_sub_u32(reverseBits(14592u), 25030u), ~85957u), u_input.c), vec4<u32>(61593u, u_input.c, ~_wgslsmith_mod_u32(u_input.c, 1u), reverseBits(~u_input.c)) | _wgslsmith_mult_vec4_u32(vec4<u32>(36394u, ~u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 48610u), vec2<u32>(1u, 69026u)), 1u), min(vec4<u32>(0u, u_input.c, 23575u, u_input.c), vec4<u32>(1u, u_input.c, 17283u, u_input.c))));
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.a;
    var var_1 = Struct_1(vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -19298i), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, 0i), vec2<i32>(u_input.a, u_input.b))));
    var var_2 = Struct_1(firstLeadingBit(~countOneBits(~vec2<i32>(-2147483647i, -1i))));
    let var_3 = _wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.c, 4294967295u, max(4294967295u, u_input.c), 34462u), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 48992u, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)), countOneBits(vec4<u32>(1u, u_input.c, u_input.c, 4294967295u))), vec4<bool>(true, true, true, true)), vec4<u32>(~1u, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 78365u, u_input.c), vec4<u32>(37020u, 1u, 0u, 1u)), ~u_input.c) ^ vec4<u32>(u_input.c, u_input.c, u_input.c | 27908u, u_input.c)) | ~func_3(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-778f, -683f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1036f, -1000f, -1293f, -245f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-238f, 1045f, 1208f, 485f)))), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), false));
    let var_4 = Struct_1(~var_2.a);
    return Struct_1(vec2<i32>(var_1.a.x, -13343i) ^ -vec2<i32>(-8814i, ~(-1i)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = firstTrailingBit(~(~arg_0.a.x));
    let var_1 = func_2();
    let var_2 = _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1, firstLeadingBit(_wgslsmith_mult_u32(4294967295u, u_input.c))), vec2<u32>(_wgslsmith_mult_u32(arg_1, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 49014u, arg_1), vec3<u32>(4294967295u, arg_1, 95357u))), ~arg_1)), firstLeadingBit(min(~vec2<u32>(4294967295u, u_input.c) | (vec2<u32>(u_input.c, u_input.c) >> (vec2<u32>(u_input.c, 22241u) % vec2<u32>(32u))), vec2<u32>(0u & u_input.c, ~arg_1))));
    var var_3 = select(~vec4<u32>(~var_2.x, _wgslsmith_sub_u32(~1u, ~arg_1), 92718u, 18637u), ~reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(0u, var_2.x, var_2.x, var_2.x) >> (vec4<u32>(0u, 17272u, 0u, 91049u) % vec4<u32>(32u)), vec4<u32>(12447u, var_2.x, arg_1, var_2.x))), any(select(vec4<bool>(true, true, select(true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true))));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, 1f))));
    return Struct_1(reverseBits(reverseBits(-_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.a.x, u_input.b), vec2<i32>(arg_3.a.x, arg_3.a.x)))));
}

fn func_1(arg_0: u32, arg_1: i32) -> f32 {
    let var_0 = ~(~u_input.c);
    let var_1 = _wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(arg_1, ~arg_1)), -vec2<i32>(arg_1, ~u_input.b)) | (firstLeadingBit(-vec2<i32>(1i, 1i)) ^ vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(arg_1, arg_1, -4983i), abs(vec3<i32>(13919i, arg_1, 10122i))), _wgslsmith_add_i32(u_input.a, -14570i)));
    var var_2 = func_4(func_2(), var_0, func_2(), func_2());
    let var_3 = select(vec4<i32>(abs(43901i), _wgslsmith_mult_i32(~countOneBits(arg_1), 2147483647i & var_2.a.x), ~(i32(-1i) * -arg_1), -1i), select(-_wgslsmith_mod_vec4_i32(vec4<i32>(1i, arg_1, 0i, 1i), vec4<i32>(-1i, u_input.b, -2147483647i, arg_1)), ~vec4<i32>(arg_1, -2147483647i, var_1.x, 2147483647i), vec4<bool>(true, true, true, true)) & abs(max(vec4<i32>(var_1.x, u_input.b, 28061i, 2147483647i) | vec4<i32>(16481i, -2147483647i, var_1.x, 39170i), vec4<i32>(arg_1, var_1.x, var_2.a.x, arg_1) & vec4<i32>(2147483647i, 13488i, -2147483647i, 63003i))), select(!vec4<bool>(true, false, true, any(vec3<bool>(false, false, true))), vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -126f) != _wgslsmith_f_op_f32(select(658f, -1269f, false)), false, true, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, u_input.c), vec3<u32>(var_0, u_input.c, arg_0)) < _wgslsmith_add_u32(64455u, 13272u)), select(vec4<bool>(true, all(vec2<bool>(true, false)), all(vec2<bool>(false, true)), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, any(vec3<bool>(true, true, true))))));
    let var_4 = func_4(func_2(), _wgslsmith_clamp_u32(arg_0, 0u, 4294967295u), func_2(), func_4(func_4(Struct_1(vec2<i32>(var_1.x, var_3.x)), 1u, Struct_1(_wgslsmith_mod_vec2_i32(var_3.yw, var_2.a)), Struct_1(-vec2<i32>(-6889i, -2147483647i))), var_0, func_2(), func_4(func_2(), 4294967295u, func_4(Struct_1(vec2<i32>(-17206i, 1i)), _wgslsmith_div_u32(5587u, 1u), func_2(), Struct_1(vec2<i32>(var_3.x, var_3.x))), func_4(Struct_1(var_3.wz), 4294967295u, func_2(), Struct_1(var_1)))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-670f, -2106f, false)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1329f, -1000f, false))))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: bool, arg_2: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(func_1(~(~4294967295u), -1i));
    var var_1 = _wgslsmith_div_vec3_i32(min(min(vec3<i32>(u_input.a, 13882i, u_input.b) & vec3<i32>(u_input.a, -14843i, u_input.a), -vec3<i32>(arg_2, -1i, arg_2)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 30512i, u_input.a), vec3<i32>(-21865i, 1i, u_input.a))) << (~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 10069u, 4294967295u) & vec3<u32>(u_input.c, 6007u, u_input.c), select(vec3<u32>(u_input.c, u_input.c, 69107u), vec3<u32>(4294967295u, 58515u, u_input.c), arg_1)) % vec3<u32>(32u)), vec3<i32>(abs(u_input.b), 1i, ~(~(arg_2 & 81530i))));
    var var_2 = Struct_1(vec2<i32>(497i, 68252i));
    var var_3 = select(!vec4<bool>((u_input.c & u_input.c) < (u_input.c >> (u_input.c % 32u)), true, arg_1, all(select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1)))), vec4<bool>(arg_1, !arg_1, true, arg_1), arg_1);
    var var_4 = -vec3<i32>(-1i, var_2.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.b, _wgslsmith_dot_vec2_i32(var_1.yy, vec2<i32>(10807i, arg_2)), _wgslsmith_div_i32(-30915i, u_input.a), var_1.x), ~_wgslsmith_div_vec4_i32(vec4<i32>(var_1.x, var_2.a.x, -2147483647i, u_input.a), vec4<i32>(u_input.a, arg_2, arg_2, -12613i))));
    return Struct_1(select(~select(vec2<i32>(-8262i, var_1.x), vec2<i32>(54555i, var_1.x), vec2<bool>(false, var_3.x)) | _wgslsmith_mod_vec2_i32(vec2<i32>(var_2.a.x, u_input.b), var_1.yy), vec2<i32>(_wgslsmith_mult_i32(func_4(Struct_1(var_1.yz), 4294967295u, Struct_1(vec2<i32>(-35238i, var_1.x)), Struct_1(vec2<i32>(-35211i, 33806i))).a.x, i32(-1i) * -25256i), ~_wgslsmith_sub_i32(29260i, 14801i)), select(vec2<bool>(arg_1, var_4.x == -2147483647i), !select(vec2<bool>(true, var_3.x), vec2<bool>(false, true), var_3.wz), vec2<bool>(true, !arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(390f, 238f, 478f, 180f) - vec4<f32>(-181f, 576f, 716f, -1352f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2063f, 1000f, 313f, -1793f))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -652f), _wgslsmith_f_op_f32(func_1(u_input.c, u_input.a)), _wgslsmith_f_op_f32(737f + -672f), _wgslsmith_f_op_f32(min(-329f, 1456f))), vec4<f32>(1000f, _wgslsmith_f_op_f32(-1280f - -2098f), _wgslsmith_f_op_f32(765f + 350f), _wgslsmith_f_op_f32(f32(-1f) * -537f)))), true, 17363i);
    let var_1 = !select(select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true)), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true)), select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)))), vec2<bool>(true == any(vec3<bool>(true, false, true)), true), select(vec2<bool>(true, u_input.b > -1i), vec2<bool>(true, true), true));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1496f, 380f, 218f) - vec3<f32>(-179f, 868f, 1579f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-281f, -2210f, 1000f)), vec3<bool>(var_1.x, var_1.x, var_1.x))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1479f, -1067f, 466f), vec3<f32>(-474f, -1025f, -584f), var_1.x)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-869f, -1684f, -181f)))))) + vec3<f32>(_wgslsmith_f_op_f32(step(1936f, -650f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-2499f)), _wgslsmith_f_op_f32(555f * 1630f)), _wgslsmith_f_op_f32(678f - _wgslsmith_f_op_f32(f32(-1f) * -692f)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1773f, var_2.x, var_2.x))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_2.x, -1002f) - vec3<f32>(var_2.x, -2021f, 812f)))))), vec3<f32>(_wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -226f), _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_2 * vec3<f32>(var_2.x, var_2.x, var_2.x)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, 632f, -258f) + var_2), _wgslsmith_f_op_vec3_f32(step(var_2, vec3<f32>(var_2.x, var_2.x, -594f))))))), var_1.x));
    var_0 = Struct_1(_wgslsmith_mult_vec2_i32(var_0.a, -vec2<i32>(-1i | u_input.b, 1i)));
    let var_4 = func_4(Struct_1(~(-func_2().a)), _wgslsmith_mod_u32(reverseBits(~1u), ~_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 0u, 79690u), vec3<u32>(u_input.c, 56254u, u_input.c)))), Struct_1(var_0.a), Struct_1(vec2<i32>(-1i, 38918i)));
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(_wgslsmith_mod_i32(0i, 6703i), var_4.a.x, ~min(u_input.a, 0i)));
}

