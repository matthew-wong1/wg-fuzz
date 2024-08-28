struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>) -> u32 {
    var var_0 = select(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 1i ^ _wgslsmith_add_i32(arg_0, u_input.a.x), firstLeadingBit(_wgslsmith_div_i32(arg_0, 16219i)), _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_0, -2147483647i, arg_0), u_input.a)), vec4<i32>(-1i) * -(vec4<i32>(2147483647i, -1i, u_input.a.x, u_input.a.x) & vec4<i32>(-1i, 1i, 2147483647i, 15207i))), true);
    let var_1 = !select(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true)), vec3<bool>(true, true, true), !vec3<bool>(true, false, u_input.b.x != arg_1.x));
    let var_2 = Struct_2(!((i32(-1i) * -2147483647i) > u_input.a.x), Struct_1(4294967295u, u_input.a, ~arg_1.x, _wgslsmith_f_op_f32(-867f + 688f), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(945f)), 503f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1353f + -172f) - _wgslsmith_f_op_f32(f32(-1f) * -761f)))), Struct_1(arg_1.x, u_input.a, ((0u | arg_1.x) ^ 1u) >> ((1u | _wgslsmith_sub_u32(u_input.b.x, u_input.b.x)) % 32u), 368f, _wgslsmith_f_op_f32(f32(-1f) * -1234f)), Struct_1(arg_1.x, _wgslsmith_sub_vec3_i32(countOneBits(u_input.a), -u_input.a) << (vec3<u32>(~1u, _wgslsmith_mod_u32(0u, 46542u), reverseBits(10096u)) % vec3<u32>(32u)), _wgslsmith_div_u32(countOneBits(arg_1.x >> (4294967295u % 32u)), abs(abs(1u))), -683f, _wgslsmith_div_f32(-367f, _wgslsmith_f_op_f32(floor(-770f)))), Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b.x, 1u, arg_1.x, 77049u), u_input.b), ~u_input.b | (u_input.b << (vec4<u32>(45550u, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u)))), u_input.a, firstTrailingBit(4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -855f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.e.d, var_2.d.d)), _wgslsmith_f_op_f32(ceil(849f)), _wgslsmith_f_op_f32(floor(var_2.b.e)), var_2.d.d) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-168f, -1412f, _wgslsmith_f_op_f32(-var_2.e.e), -1086f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(493f, var_2.d.d, var_2.b.e, -359f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(581f, 681f, var_2.b.e, 328f), vec4<f32>(457f, -108f, 1446f, -193f), vec4<bool>(true, false, true, true)))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1220f, -1456f, var_2.b.e, var_2.c.d), vec4<f32>(var_2.b.d, 153f, var_2.d.e, var_2.e.d), true)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1698f, 776f, var_2.d.d, 1994f)))))))), any(vec2<bool>(false, var_1.x))));
    let var_4 = vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, ~(~var_2.d.c), _wgslsmith_add_u32(_wgslsmith_div_u32(67516u, u_input.b.x), _wgslsmith_div_u32(4294967295u, var_2.d.a)), 0u), vec4<u32>(_wgslsmith_clamp_u32(var_2.b.c, arg_1.x, 29833u), 1u, ~6354u, ~68041u) >> ((u_input.b & u_input.b) % vec4<u32>(32u))), var_2.d.a, arg_1.x);
    return 4294967295u;
}

fn func_2() -> f32 {
    let var_0 = abs(u_input.b.yy);
    var var_1 = Struct_2(!any(vec3<bool>(true, true, true)), Struct_1(~(~abs(24655u)), u_input.a, max(25134u, reverseBits(~var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(203f))) + _wgslsmith_f_op_f32(-1208f * _wgslsmith_f_op_f32(f32(-1f) * -515f))), -1995f), Struct_1(_wgslsmith_mod_u32(0u, ~var_0.x), u_input.a, _wgslsmith_div_u32(~4056u, 82452u), 2112f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1417f)) + _wgslsmith_f_op_f32(f32(-1f) * -717f))), Struct_1(_wgslsmith_div_u32(4294967295u >> (_wgslsmith_sub_u32(33295u, u_input.b.x) % 32u), 1u), vec3<i32>(~firstTrailingBit(20779i), reverseBits(-2147483647i), u_input.a.x), 6429u, 216f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1389f, 1441f, true))) + -712f)), Struct_1(u_input.b.x, u_input.a, func_3(-2147483647i, ~_wgslsmith_mod_vec2_u32(vec2<u32>(2991u, 1u), u_input.b.xz)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-507f - 813f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(444f)) + _wgslsmith_f_op_f32(sign(1754f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-292f - 1529f), _wgslsmith_f_op_f32(f32(-1f) * -680f)) * _wgslsmith_f_op_f32(-568f + _wgslsmith_f_op_f32(max(-1048f, 487f))))));
    var_1 = Struct_2(all(select(!select(vec4<bool>(true, true, true, var_1.a), vec4<bool>(var_1.a, var_1.a, true, var_1.a), vec4<bool>(true, true, var_1.a, false)), vec4<bool>(true, any(vec3<bool>(var_1.a, false, true)), !var_1.a, var_1.a), !(!vec4<bool>(var_1.a, true, var_1.a, var_1.a)))), var_1.b, Struct_1(~var_1.c.a, _wgslsmith_sub_vec3_i32(var_1.d.b, var_1.c.b), max(var_0.x, ~reverseBits(var_1.c.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.d + _wgslsmith_f_op_f32(-var_1.e.d)) * _wgslsmith_f_op_f32(var_1.c.e * _wgslsmith_f_op_f32(-var_1.b.e))), var_1.d.d), Struct_1(var_0.x, -vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), u_input.a.x, 29797i), ~(min(var_0.x, var_0.x) ^ u_input.b.x), 425f, -179f), Struct_1(firstTrailingBit(u_input.b.x << (_wgslsmith_mult_u32(var_1.c.a, 1u) % 32u)), max(~vec3<i32>(-10944i, var_1.c.b.x, var_1.d.b.x), -vec3<i32>(u_input.a.x, u_input.a.x, var_1.d.b.x)), func_3(select(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_1.c.b.x, var_1.d.b.x), vec3<i32>(var_1.c.b.x, -1i, -21564i)), -5397i, var_1.a), u_input.b.yy), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-199f)))), _wgslsmith_f_op_f32(360f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-691f))))));
    let var_2 = ~u_input.a.x;
    var_1 = Struct_2(any(!(!vec4<bool>(var_1.a, true, var_1.a, true))), var_1.b, var_1.c, Struct_1(_wgslsmith_sub_u32(var_0.x, _wgslsmith_div_u32(~43856u, 51256u)), firstLeadingBit(~(-vec3<i32>(var_2, -72677i, var_1.b.b.x))), ~u_input.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f + -1354f))), 563f), var_1.d);
    return _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(861f))));
}

fn func_1(arg_0: vec4<bool>, arg_1: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), -1694f, _wgslsmith_div_f32(-1762f, _wgslsmith_f_op_f32(f32(-1f) * -911f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-473f, -1000f, 259f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1945f, -1524f, -908f) * vec3<f32>(1040f, -1127f, 487f)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(655f, 266f, 1322f))))))));
    var var_1 = u_input.a.x;
    let var_2 = !select(arg_0.zy, select(!arg_0.xw, arg_0.wz, true), !vec2<bool>(false, any(arg_0.yz)));
    var_1 = reverseBits(reverseBits(firstTrailingBit(select(_wgslsmith_sub_i32(25417i, u_input.a.x), 1i, arg_0.x))));
    var var_3 = -(_wgslsmith_div_i32(225i, min(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), _wgslsmith_add_i32(u_input.a.x, u_input.a.x))) >> (u_input.b.x % 32u));
    return ~2147483647i;
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = !(_wgslsmith_f_op_f32(round(-130f)) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_3.b.e)), _wgslsmith_div_f32(arg_3.d.d, arg_3.d.e))));
    let var_1 = arg_3.e;
    var var_2 = arg_3.d;
    let var_3 = 48300u;
    let var_4 = _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(~(-1i), -arg_0.x, 48980i, abs(var_1.b.x)), _wgslsmith_mult_vec4_i32(-arg_2, firstLeadingBit(arg_2))), vec4<i32>(~arg_2.x ^ firstLeadingBit(-1i), var_2.b.x, _wgslsmith_mod_i32(0i << (u_input.b.x % 32u), 0i), -arg_0.x)), vec4<i32>(~_wgslsmith_clamp_i32(var_1.b.x, abs(2147483647i), ~22354i), firstLeadingBit(func_1(vec4<bool>(true, false, true, var_0), arg_3.b.a) << (var_1.c % 32u)), 0i, var_1.b.x));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(u_input.a.xx, ~_wgslsmith_clamp_u32(abs(u_input.b.x), ~(u_input.b.x << (u_input.b.x % 32u)), _wgslsmith_dot_vec4_u32(abs(u_input.b), vec4<u32>(36908u, 1u, u_input.b.x, 1u) << (u_input.b % vec4<u32>(32u)))), ~vec4<i32>(func_1(vec4<bool>(false, false, true, false), 4294967295u), -36346i, -u_input.a.x, -2147483647i) << (_wgslsmith_mod_vec4_u32(u_input.b, max(~vec4<u32>(17858u, 93513u, 51710u, u_input.b.x), u_input.b)) % vec4<u32>(32u)), Struct_2(true & any(vec2<bool>(false, false)), Struct_1(select(u_input.b.x, u_input.b.x, true), reverseBits(u_input.a) | select(vec3<i32>(u_input.a.x, u_input.a.x, -1i), vec3<i32>(u_input.a.x, 0i, 1i), true), u_input.b.x, -300f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-893f, -198f), -642f))), Struct_1(4294967295u, -firstTrailingBit(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_div_u32(u_input.b.x, 14730u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(340f)), -259f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-759f - 1000f)))), Struct_1(22998u, reverseBits(_wgslsmith_mult_vec3_i32(u_input.a, u_input.a)), ~1u, -394f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), Struct_1(u_input.b.x, u_input.a, ~4294967295u, -243f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) - _wgslsmith_div_f32(1314f, -722f)))));
    var var_1 = vec4<f32>(769f, _wgslsmith_f_op_f32(select(var_0.c.e, var_0.d.d, any(vec3<bool>(true, var_0.a, var_0.a)))), -125f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.e) + var_0.e.e));
    let var_2 = func_4(~vec2<i32>(34142i, u_input.a.x), var_0.d.a, vec4<i32>(var_0.b.b.x, -9751i, firstLeadingBit(u_input.a.x), _wgslsmith_div_i32(0i, var_0.c.b.x)), func_4(~min(u_input.a.yx, select(vec2<i32>(-1i, u_input.a.x), vec2<i32>(u_input.a.x, var_0.e.b.x), vec2<bool>(var_0.a, false))), min(firstTrailingBit(var_0.c.a), 73916u), vec4<i32>(_wgslsmith_add_i32(1i, u_input.a.x), -u_input.a.x, 0i, select(var_0.e.b.x, -6281i, true)) << (_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0.d.a, u_input.b.x, 1u, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.b.x, 6171u), vec4<u32>(u_input.b.x, 0u, var_0.b.c, 1u)), abs(u_input.b)) % vec4<u32>(32u)), Struct_2(var_0.a && var_0.a, func_4(vec2<i32>(-1i, -80322i) | u_input.a.yx, ~4294967295u, vec4<i32>(var_0.d.b.x, u_input.a.x, 13793i, var_0.c.b.x) | vec4<i32>(-63926i, u_input.a.x, u_input.a.x, -14027i), Struct_2(false, var_0.e, Struct_1(u_input.b.x, var_0.e.b, 31341u, var_1.x, var_0.e.d), Struct_1(var_0.c.a, vec3<i32>(1i, var_0.d.b.x, -14628i), 4294967295u, -2412f, var_1.x), Struct_1(u_input.b.x, u_input.a, 4294967295u, -831f, 502f))).b, var_0.e, Struct_1(~0u, max(var_0.c.b, vec3<i32>(64322i, -12032i, -31167i)), var_0.d.c, _wgslsmith_f_op_f32(step(471f, 686f)), -1386f), func_4(var_0.b.b.xz, 10974u, firstLeadingBit(vec4<i32>(14319i, var_0.c.b.x, -69955i, 20792i)), Struct_2(true, var_0.c, var_0.d, Struct_1(10458u, vec3<i32>(var_0.c.b.x, 37982i, 1255i), u_input.b.x, var_1.x, var_1.x), var_0.b)).d))).c;
    var var_3 = var_2;
    var var_4 = var_2;
    var_0 = func_4(max(select(~_wgslsmith_add_vec2_i32(var_2.b.yx, var_2.b.zx), -_wgslsmith_div_vec2_i32(vec2<i32>(var_0.d.b.x, -1i), vec2<i32>(var_3.b.x, var_2.b.x)), !(var_0.b.b.x > var_3.b.x)), countOneBits(-max(var_2.b.zy, var_4.b.xz))), 4294967295u, vec4<i32>(~(-19454i) | _wgslsmith_div_i32(var_3.b.x, var_0.e.b.x), _wgslsmith_mod_i32(32538i, reverseBits(var_3.b.x)), 0i, ~(u_input.a.x | u_input.a.x)) << (vec4<u32>(abs(u_input.b.x) << (~var_3.a % 32u), 51004u, u_input.b.x, ~0u) % vec4<u32>(32u)), func_4(reverseBits(vec2<i32>(reverseBits(13905i), var_2.b.x)), var_4.c, -(~vec4<i32>(var_4.b.x, u_input.a.x, -27984i, var_4.b.x)), func_4(func_4(var_0.d.b.yz, ~52666u, vec4<i32>(10063i, var_3.b.x, var_3.b.x, -18608i) | vec4<i32>(var_3.b.x, var_0.b.b.x, var_2.b.x, var_2.b.x), Struct_2(false, var_0.b, var_2, var_2, Struct_1(var_4.c, u_input.a, 4294967295u, 1022f, 125f))).e.b.xz, ~(~48488u), vec4<i32>(_wgslsmith_sub_i32(var_0.b.b.x, var_0.e.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_4.b.x, var_4.b.x), vec3<i32>(var_0.d.b.x, var_0.c.b.x, 32825i)), max(-28696i, 2147483647i), ~var_4.b.x), func_4(~var_3.b.xx, var_4.c, _wgslsmith_div_vec4_i32(vec4<i32>(var_0.c.b.x, var_3.b.x, var_4.b.x, var_3.b.x), vec4<i32>(-1i, var_2.b.x, 2147483647i, var_0.e.b.x)), Struct_2(var_0.a, var_0.d, var_0.d, Struct_1(var_0.c.a, vec3<i32>(u_input.a.x, var_4.b.x, var_2.b.x), 1u, var_0.e.e, -1079f), var_0.c)))));
    var_0 = func_4(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(select(var_2.b.yz, var_0.d.b.zz, vec2<bool>(var_0.a, true)), u_input.a.yz) ^ ~abs(var_3.b.yx), _wgslsmith_sub_vec2_i32(-abs(var_3.b.zx), vec2<i32>(func_4(vec2<i32>(9300i, var_4.b.x), var_3.c, vec4<i32>(72989i, var_4.b.x, 11773i, 35286i), Struct_2(true, Struct_1(1u, vec3<i32>(u_input.a.x, 0i, var_3.b.x), var_3.c, var_2.e, 1586f), Struct_1(22800u, vec3<i32>(1859i, 9706i, var_3.b.x), var_2.c, -2192f, var_1.x), var_0.b, Struct_1(4294967295u, u_input.a, 74128u, -1767f, var_0.c.e))).b.b.x, -u_input.a.x))), var_3.a, firstLeadingBit(firstLeadingBit(-vec4<i32>(var_0.b.b.x, var_3.b.x, -1i, 2147483647i)) << (~select(vec4<u32>(0u, 0u, var_3.c, var_0.d.a), u_input.b, vec4<bool>(var_0.a, var_0.a, true, var_0.a)) % vec4<u32>(32u))), func_4(-_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, u_input.a.x), abs(vec2<i32>(-1i, var_3.b.x)), _wgslsmith_clamp_vec2_i32(var_0.c.b.yz, vec2<i32>(2147483647i, 30390i), vec2<i32>(var_4.b.x, -20104i))), max(var_3.c, 55005u), vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(var_4.b.x, -2147483647i, var_4.b.x, 8182i), vec4<i32>(1i, 0i, u_input.a.x, -1010i), vec4<i32>(u_input.a.x, 47482i, 0i, -1i)), Struct_2(var_0.b.d != _wgslsmith_div_f32(var_0.e.e, var_3.e), Struct_1(firstTrailingBit(var_0.c.a), vec3<i32>(var_2.b.x, 2147483647i, var_3.b.x) ^ var_2.b, ~var_4.a, _wgslsmith_f_op_f32(-var_4.d), -913f), var_2, func_4(vec2<i32>(var_2.b.x, var_3.b.x), u_input.b.x, _wgslsmith_mod_vec4_i32(vec4<i32>(-24579i, u_input.a.x, 883i, 2147483647i), vec4<i32>(var_3.b.x, -4088i, u_input.a.x, -19442i)), func_4(vec2<i32>(-10391i, -23882i), var_3.a, vec4<i32>(69009i, var_4.b.x, var_4.b.x, u_input.a.x), Struct_2(false, Struct_1(0u, var_2.b, var_3.c, var_4.e, var_2.e), var_2, Struct_1(var_2.a, vec3<i32>(var_4.b.x, -50041i, var_0.c.b.x), 4294967295u, -170f, 722f), Struct_1(24465u, vec3<i32>(0i, var_0.c.b.x, 8436i), 10713u, var_1.x, 775f)))).c, func_4(firstTrailingBit(vec2<i32>(var_4.b.x, u_input.a.x)), ~39709u, vec4<i32>(u_input.a.x, var_4.b.x, 1i, 1i), func_4(var_0.c.b.xx, var_0.c.a, vec4<i32>(var_3.b.x, u_input.a.x, 40254i, var_0.b.b.x), Struct_2(true, var_2, var_2, var_0.d, Struct_1(1u, u_input.a, var_0.c.c, 547f, -1425f)))).b)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b.x);
}

