struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x + 2034f) * _wgslsmith_f_op_f32(-arg_0.d)) >= 1566f);
    var_0 = true;
    var var_1 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 16732u ^ u_input.b.x), vec2<u32>(u_input.e.x, ~15004u));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-arg_0.a), arg_0.a)), arg_0.b, select(!(!(!vec2<bool>(arg_0.c.x, arg_0.c.x))), vec2<bool>(arg_0.d == _wgslsmith_f_op_f32(f32(-1f) * -2382f), false), !(!(!arg_0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(504f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.x, -878f) + _wgslsmith_f_op_f32(1588f + arg_0.a.x)))));
    global0 = vec3<i32>(_wgslsmith_div_i32(i32(-1i) * -57852i, global0.x), -_wgslsmith_dot_vec2_i32(-global0.yz >> (_wgslsmith_clamp_vec2_u32(u_input.b.yy, vec2<u32>(var_2.b, 1343u), vec2<u32>(45008u, 1317u)) % vec2<u32>(32u)), select(-vec2<i32>(global0.x, 4639i), vec2<i32>(global0.x, -10620i), arg_0.c.x)), 1i);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.x, _wgslsmith_div_f32(696f, 718f))) * _wgslsmith_div_f32(408f, _wgslsmith_f_op_f32(max(2364f, _wgslsmith_f_op_f32(arg_0.a.x - 619f))))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(470f, arg_0.d) * arg_0.a.x))));
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = -(_wgslsmith_div_vec3_i32(-vec3<i32>(1i, u_input.d, global0.x), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a, u_input.d), vec3<i32>(u_input.a, u_input.d, 2147483647i)), global0.x, _wgslsmith_sub_i32(global0.x, -5802i))) >> (~(~u_input.b & select(arg_1, vec3<u32>(arg_3.b, arg_2.b, u_input.b.x), vec3<bool>(arg_0, true, false))) % vec3<u32>(32u)));
    var var_0 = arg_2;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-642f, _wgslsmith_f_op_f32(arg_2.a.x + _wgslsmith_f_op_f32(func_3(arg_3))), _wgslsmith_f_op_f32(func_3(Struct_1(var_0.a, 4294967295u, arg_2.c, -1308f))), _wgslsmith_f_op_f32(-arg_3.a.x))), arg_2.b, arg_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(arg_3.a, u_input.c << (21946u % 32u), !vec2<bool>(arg_3.c.x, arg_0), arg_3.a.x)))));
    global0 = ~(-vec3<i32>(firstTrailingBit(_wgslsmith_mult_i32(u_input.d, global0.x)), _wgslsmith_dot_vec2_i32(global0.yy, -global0.zz), _wgslsmith_sub_i32(_wgslsmith_add_i32(-2596i, global0.x), 1i)));
    global0 = vec3<i32>(_wgslsmith_div_i32(u_input.a | ~select(0i, 0i, false), ~_wgslsmith_dot_vec4_i32(vec4<i32>(3165i, u_input.d, -17937i, -23767i), firstTrailingBit(vec4<i32>(1i, global0.x, 2147483647i, u_input.d)))), 36819i, i32(-1i) * -(i32(-1i) * -27168i));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.a.x, -1108f, arg_3.d, arg_3.d))), var_0.a, arg_3.c.x && arg_2.c.x)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, arg_2.a.x, 1626f, var_0.a.x), var_1.a)), true))), var_1.b, !var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -866f));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec3<u32>) -> vec3<i32> {
    global0 = abs(firstLeadingBit(-_wgslsmith_mult_vec3_i32(select(vec3<i32>(1i, 10570i, 11010i), vec3<i32>(u_input.a, u_input.d, 1i), arg_1.c.x), vec3<i32>(arg_2.x, u_input.d, global0.x))));
    var var_0 = func_2(u_input.b.x <= 72841u, vec3<u32>(~(~(~arg_1.b)), 35316u, 43606u), arg_1, func_2(true, ~min(~vec3<u32>(1u, u_input.b.x, 0u), arg_3), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d, 942f, arg_1.d, arg_1.d)), select(_wgslsmith_mod_u32(3298u, u_input.e.x), func_2(arg_0.x, vec3<u32>(u_input.b.x, 34227u, 74633u), Struct_1(arg_1.a, 1u, vec2<bool>(true, false), -556f), arg_1).b, false), arg_0, _wgslsmith_f_op_f32(1952f - _wgslsmith_f_op_f32(-600f * arg_1.a.x))), func_2(!all(vec4<bool>(false, false, false, arg_0.x)), ~(u_input.b & vec3<u32>(1061u, arg_3.x, 40876u)), func_2(select(false, true, arg_0.x), arg_3, func_2(arg_0.x, arg_3, arg_1, arg_1), arg_1), Struct_1(_wgslsmith_f_op_vec4_f32(select(arg_1.a, vec4<f32>(602f, -713f, 1359f, -2582f), true)), _wgslsmith_dot_vec2_u32(vec2<u32>(6968u, 119434u), vec2<u32>(u_input.c, arg_3.x)), !arg_0, _wgslsmith_f_op_f32(f32(-1f) * -930f)))));
    global0 = firstLeadingBit(select(vec3<i32>(global0.x, _wgslsmith_clamp_i32(-global0.x, countOneBits(-27209i), ~u_input.d), -2147483647i), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, 1i, u_input.d), vec3<i32>(u_input.d, -21436i, global0.x), vec3<i32>(2147483647i, -16927i, 1i)) ^ _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 46243i, u_input.a), vec3<i32>(global0.x, -10322i, 2147483647i)), ~vec3<i32>(global0.x, 3662i, 1i)), !(!(arg_1.c.x | false))));
    let var_1 = ~vec4<u32>(~4294967295u, ~4294967295u, arg_1.b, arg_1.b);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(var_0.b == ~16576u, ~firstLeadingBit(vec3<u32>(1u, var_0.b, arg_1.b)), func_2(!arg_0.x, vec3<u32>(42325u, arg_1.b, 1u) | vec3<u32>(0u, 0u, 4294967295u), Struct_1(vec4<f32>(-412f, 1071f, 985f, arg_1.d), 1u, arg_1.c, 828f), arg_1), func_2(arg_1.c.x, u_input.b, arg_1, arg_1)).d) - _wgslsmith_f_op_f32(floor(var_0.a.x)));
    return vec3<i32>(~u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(~(-478i), arg_2.x, 0i, _wgslsmith_mod_i32(-1i, global0.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, global0.x, global0.x, -2147483647i), vec4<i32>(1i, global0.x, u_input.a, u_input.a) | vec4<i32>(-5007i, arg_2.x, u_input.a, 19600i))) ^ u_input.d, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(-arg_2 & ~global0.yy, arg_2, min(max(global0.yx, vec2<i32>(-2147483647i, global0.x)), global0.yy)), abs(arg_2)));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool) -> Struct_1 {
    global0 = countOneBits(vec3<i32>(0i, select(select(u_input.a, global0.x, any(vec4<bool>(arg_1, false, true, true))), -2147483647i, (u_input.a == 22412i) & false), -2147483647i));
    global0 = min(vec3<i32>(-1i) * -func_4(vec2<bool>(arg_1, arg_1), func_2(true, vec3<u32>(4294967295u, arg_0.x, arg_0.x), Struct_1(vec4<f32>(-851f, -2244f, -435f, 1558f), u_input.c, vec2<bool>(true, arg_1), -1377f), Struct_1(vec4<f32>(-494f, -933f, 1217f, -554f), 87808u, vec2<bool>(false, arg_1), 815f)), vec2<i32>(1i, u_input.a), u_input.b ^ vec3<u32>(u_input.c, u_input.e.x, 1u)), countOneBits(_wgslsmith_clamp_vec3_i32(-max(vec3<i32>(2147483647i, u_input.a, u_input.a), vec3<i32>(31423i, u_input.a, global0.x)), vec3<i32>(u_input.a, _wgslsmith_mod_i32(2147483647i, u_input.a), 0i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, global0.x, -62425i), vec3<i32>(global0.x, 1i, -2147483647i)) | ~vec3<i32>(u_input.d, -38130i, -7004i))));
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(1378f)), -1570f, -496f, -532f)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, 2111f, 1787f, -791f), vec4<f32>(125f, -1000f, -2147f, -109f))))))));
    let var_1 = global0.x;
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, 1000f, -316f, 1000f), vec4<f32>(-587f, var_0.x, var_0.x, -2145f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1604f, var_0.x, -1083f, 1886f))))) * _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 356f, var_0.x, -214f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(489f, 1208f, -756f, var_0.x)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-649f, 1000f, var_0.x, var_0.x)))))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-239f, var_0.x, var_0.x, -1083f) - vec4<f32>(-306f, var_0.x, 630f, var_0.x))))))));
    return func_2(arg_1, vec3<u32>(select(u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, arg_0.x, 0u), ~u_input.b), arg_1), _wgslsmith_sub_u32(arg_0.x, ~(~4294967295u)), ~(~(~arg_0.x))), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) + vec4<f32>(var_0.x, -1000f, 3141f, var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(259f, var_0.x, 258f, var_0.x)))), arg_0.x, !func_2(false, _wgslsmith_div_vec3_u32(u_input.b, u_input.b), Struct_1(vec4<f32>(1617f, 911f, var_0.x, var_0.x), 58641u, vec2<bool>(arg_1, true), var_0.x), func_2(arg_1, vec3<u32>(61545u, 4294967295u, u_input.c), Struct_1(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), 5726u, vec2<bool>(arg_1, arg_1), var_0.x), Struct_1(vec4<f32>(1000f, 1195f, var_0.x, var_0.x), 26337u, vec2<bool>(arg_1, true), -852f))).c, var_0.x), func_2(false, ~vec3<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 15506u), vec2<u32>(arg_0.x, arg_0.x)), ~u_input.c), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(901f, 1654f, -1728f, -2192f) + vec4<f32>(-1148f, var_0.x, var_0.x, -1942f)))), 16946u, select(select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(false, arg_1)), !vec2<bool>(arg_1, arg_1), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-233f * 766f))), func_2(func_2(4294967295u < arg_0.x, vec3<u32>(arg_0.x, u_input.e.x, 1u) | u_input.b, Struct_1(vec4<f32>(var_0.x, var_0.x, 2058f, var_0.x), u_input.b.x, vec2<bool>(false, true), var_0.x), func_2(false, u_input.b, Struct_1(vec4<f32>(760f, -262f, var_0.x, 403f), 0u, vec2<bool>(false, arg_1), var_0.x), Struct_1(vec4<f32>(var_0.x, -905f, var_0.x, var_0.x), arg_0.x, vec2<bool>(arg_1, arg_1), var_0.x))).c.x, ~vec3<u32>(4294967295u, 1u, 36411u), func_2(true, _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 4294967295u, 10540u), u_input.b), Struct_1(vec4<f32>(1246f, var_0.x, 993f, var_0.x), 34616u, vec2<bool>(false, false), var_0.x), func_2(true, u_input.b, Struct_1(vec4<f32>(1159f, var_0.x, 124f, 508f), 1u, vec2<bool>(true, arg_1), 1000f), Struct_1(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), arg_0.x, vec2<bool>(true, arg_1), var_0.x))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(820f, var_0.x, var_0.x, var_0.x)), _wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(0u, u_input.c)), func_2(arg_1, vec3<u32>(0u, arg_0.x, 1u), Struct_1(vec4<f32>(535f, -1589f, var_0.x, var_0.x), 0u, vec2<bool>(true, false), var_0.x), Struct_1(vec4<f32>(1000f, var_0.x, var_0.x, 179f), arg_0.x, vec2<bool>(false, arg_1), var_0.x)).c, _wgslsmith_f_op_f32(-var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec2<u32>(0u, ~min(u_input.c, ~u_input.e.x)), u_input.c > ~39650u);
    global0 = _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, func_4(vec2<bool>(true, false), func_2(var_0.c.x, vec3<u32>(51238u, 9384u, 1u), Struct_1(vec4<f32>(var_0.a.x, -795f, -415f, 143f), var_0.b, var_0.c, var_0.d), Struct_1(var_0.a, u_input.e.x, vec2<bool>(var_0.c.x, false), -200f)), firstTrailingBit(vec2<i32>(-61614i, 62683i)), vec3<u32>(var_0.b, 17716u, 30527u)).x, 2147483647i), ~(-vec3<i32>(6381i, u_input.a, u_input.a))), _wgslsmith_div_vec3_i32(vec3<i32>(-(global0.x << (var_0.b % 32u)), reverseBits(_wgslsmith_div_i32(global0.x, 12738i)), 1i), ~_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.d, -2147483647i), vec3<i32>(25192i, -1i, u_input.d))));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a)), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(select(1u, var_0.b, func_1(vec2<u32>(var_0.b, var_0.b), var_0.c.x).c.x), _wgslsmith_mult_u32(var_0.b, func_1(u_input.b.zy, true).b)), ~(~u_input.c), _wgslsmith_dot_vec3_u32(firstTrailingBit(~vec3<u32>(var_0.b, u_input.b.x, u_input.e.x)), _wgslsmith_mod_vec3_u32(~vec3<u32>(5665u, var_0.b, 4294967295u), u_input.b & vec3<u32>(4294967295u, u_input.e.x, 7600u)))), !(!var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-350f)) - _wgslsmith_f_op_f32(max(var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1365f))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a.zxz - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1449f, 273f, var_0.a.x), _wgslsmith_f_op_vec3_f32(ceil(var_0.a.xzz)))))));
    global0 = ~(~(-select(~vec3<i32>(global0.x, u_input.a, 0i), vec3<i32>(0i, global0.x, 966i) & vec3<i32>(-7117i, -2147483647i, 1i), var_0.c.x)));
    let var_2 = vec2<u32>(_wgslsmith_mod_u32(~var_0.b, func_2(any(vec2<bool>(true, var_0.c.x)), u_input.b & u_input.b, func_2(var_0.c.x, vec3<u32>(23431u, 16001u, 19582u), Struct_1(var_0.a, 78521u, var_0.c, -1192f), Struct_1(vec4<f32>(1778f, -341f, var_1.x, var_1.x), 42811u, var_0.c, 1000f)), func_2(false, u_input.b, Struct_1(vec4<f32>(619f, var_0.d, var_1.x, 560f), var_0.b, var_0.c, var_1.x), Struct_1(vec4<f32>(225f, -823f, var_0.a.x, 953f), u_input.c, vec2<bool>(true, var_0.c.x), var_1.x))).b) << (_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, 1u, _wgslsmith_div_u32(u_input.b.x, var_0.b)), min(reverseBits(u_input.b), u_input.b)) % 32u), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(47856u, var_0.b, u_input.c), _wgslsmith_clamp_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, var_0.b, u_input.b.x), u_input.b))));
    var_1 = _wgslsmith_f_op_vec3_f32(trunc(func_2(var_0.c.x, vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, 1u, var_0.b), u_input.b), ~_wgslsmith_add_u32(var_2.x, 4294967295u), 3242u), func_2(any(!vec4<bool>(true, false, var_0.c.x, var_0.c.x)), ~(~u_input.b), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, var_1.x, var_0.a.x, -1000f))), u_input.e.x | 0u, vec2<bool>(var_0.c.x, true), 233f), Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a), ~0u, vec2<bool>(var_0.c.x, var_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a) + vec4<f32>(var_0.a.x, var_1.x, var_0.d, -1018f)), ~0u, !func_1(vec2<u32>(u_input.e.x, u_input.c), var_0.c.x).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))).a.xzz));
    let var_3 = u_input.c;
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * -1380f), -791f, _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(var_0.d - 688f)))), 25002u, vec2<bool>(!all(vec4<bool>(true, var_0.c.x, true, var_0.c.x)), false), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(var_0.d * -1000f), var_1.x, 1000f), vec3<f32>(var_1.x, var_4.d, var_1.x), !vec3<bool>(false, var_4.c.x, var_4.c.x))))), -1241f, vec2<f32>(var_4.a.x, var_1.x));
}

