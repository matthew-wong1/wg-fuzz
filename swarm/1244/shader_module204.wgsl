struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_2,
    e: vec3<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_3,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: u32, arg_3: Struct_5) -> u32 {
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -491f), _wgslsmith_f_op_f32(global0.x + arg_1)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1, arg_1)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(2298f, global0.x) - vec2<f32>(global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-869f, global0.x) + vec2<f32>(1402f, arg_1)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1021f, global0.x)))), arg_0.wy)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(2303f, 211f))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(-728f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1189f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(899f, -263f)))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(226f))))))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1867f), _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1, -334f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(arg_1)), _wgslsmith_f_op_f32(trunc(global0.x))))));
    var var_0 = false;
    let var_1 = all(select(select(select(!arg_0.xyx, !vec3<bool>(true, arg_0.x, true), arg_3.d.c.x), vec3<bool>(!arg_3.d.c.x, arg_0.x, false), arg_0.yyw), vec3<bool>(arg_3.d.c.x, true, arg_0.x), !vec3<bool>(select(arg_3.d.c.x, arg_0.x, arg_0.x), arg_3.b.a > arg_3.b.a, !arg_3.d.a.a)));
    return ~firstTrailingBit(countOneBits(26958u));
}

fn func_2() -> vec4<i32> {
    global0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1623f, global0.x)) * vec2<f32>(-415f, global0.x)), vec2<f32>(-997f, -852f), true)))));
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-124f + _wgslsmith_f_op_f32(-global0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 1028f)))))) > _wgslsmith_f_op_f32(-global0.x);
    global0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1080f))));
    var var_1 = _wgslsmith_f_op_f32(-global0.x);
    let var_2 = Struct_2(!select(var_0, any(vec4<bool>(var_0, true, var_0, true)), ~u_input.c.x <= func_3(vec4<bool>(var_0, true, true, var_0), 483f, 1u, Struct_5(Struct_1(u_input.d.x), Struct_1(u_input.c.x), 0i, Struct_3(Struct_2(false), Struct_2(false), vec2<bool>(true, true)), vec2<i32>(0i, 1i)))));
    return abs(countOneBits(vec4<i32>(_wgslsmith_div_i32(u_input.a, firstTrailingBit(6623i)), countOneBits(-27915i), u_input.b, _wgslsmith_div_i32(u_input.b, u_input.e.x) | max(6059i, u_input.e.x))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: Struct_1, arg_3: bool) -> i32 {
    global0 = vec2<f32>(-1165f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.x)) * -510f), !all(vec3<bool>(arg_1.d.a, false, true))))));
    let var_0 = any(vec4<bool>(any(select(!arg_1.e, vec3<bool>(arg_3, arg_1.d.a, arg_3), false)), _wgslsmith_div_u32(u_input.c.x, ~arg_2.a) < (_wgslsmith_div_u32(u_input.d.x, 38583u) | 55053u), arg_1.c.a > abs(u_input.d.x & arg_2.a), arg_1.d.a));
    let var_1 = _wgslsmith_sub_u32(arg_2.a, arg_2.a);
    var var_2 = ~min(~max(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a, arg_1.c.a, 5806u, 43798u), u_input.c), 52015u), _wgslsmith_sub_u32(~max(43793u, arg_1.c.a), arg_1.c.a));
    var var_3 = -953f;
    return _wgslsmith_dot_vec2_i32(max(reverseBits(vec2<i32>(arg_0.x, u_input.e.x)) ^ -vec2<i32>(arg_1.a.x, arg_0.x), arg_1.b) & u_input.e, countOneBits(-u_input.e));
}

fn func_1() -> u32 {
    let var_0 = vec3<i32>(~u_input.a, func_4(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(-2147483647i, u_input.a, -1i, u_input.a)), func_2() ^ vec4<i32>(u_input.b, u_input.b, u_input.b, -1i)), Struct_4(_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(1i, -1i, u_input.e.x)), vec3<i32>(u_input.a, -1i, u_input.e.x)), _wgslsmith_clamp_vec2_i32(min(vec2<i32>(u_input.b, 37939i), u_input.e), u_input.e, ~vec2<i32>(u_input.a, 34283i)), Struct_1(35703u), Struct_2(u_input.e.x > u_input.e.x), vec3<bool>(true, true, true)), Struct_1(~u_input.d.x), true), i32(-1i) * -u_input.e.x);
    let var_1 = u_input.c.x;
    let var_2 = select(vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.xy, vec2<i32>(u_input.e.x, -1i >> (u_input.c.x % 32u))), ~func_4(vec4<i32>(u_input.b, var_0.x, 2147483647i, u_input.e.x), Struct_4(var_0, var_0.xy, Struct_1(10023u), Struct_2(false), vec3<bool>(false, false, true)), Struct_1(0u), var_0.x >= -1i), abs(abs(_wgslsmith_dot_vec3_i32(var_0, var_0))), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-17725i, u_input.b, 1i, u_input.a), vec4<i32>(-1i, -32737i, -1i, u_input.a)), vec4<i32>(2147483647i, u_input.a, var_0.x, -2147483647i), -vec4<i32>(var_0.x, 15980i, 2147483647i, var_0.x)), min(vec4<i32>(1i, -2147483647i, 2147483647i, -31197i), max(vec4<i32>(-121i, -2147483647i, 24020i, u_input.e.x), vec4<i32>(u_input.e.x, -1i, 1i, var_0.x))))), abs(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(-46215i, var_0.x, 2147483647i, var_0.x), vec4<i32>(u_input.b, var_0.x, -18476i, -2147483647i) & vec4<i32>(-1i, u_input.b, u_input.e.x, var_0.x)), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(var_0.x, -16938i, -31886i, 0i)), select(vec4<i32>(-1i, -1i, u_input.b, u_input.e.x), vec4<i32>(u_input.a, 42054i, 1i, 16169i), vec4<bool>(true, false, false, true)), reverseBits(vec4<i32>(0i, -53038i, u_input.a, u_input.a))))), vec4<bool>((var_0.x != _wgslsmith_sub_i32(var_0.x, -1i)) != (false || any(vec3<bool>(true, true, true))), any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), -7350i > ~var_0.x, select(select(true, true, true), true, !(-1i > u_input.b))));
    global0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1587f, 848f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-368f, global0.x))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) * vec2<f32>(global0.x, global0.x))))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(640f + -685f) * global0.x) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, 1000f) * _wgslsmith_f_op_f32(f32(-1f) * -156f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + global0.x)))));
    global0 = vec2<f32>(-759f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)));
    return 24338u;
}

fn func_5(arg_0: vec3<u32>, arg_1: f32) -> Struct_5 {
    var var_0 = !vec2<bool>(func_4(vec4<i32>(17396i, 0i, u_input.a, u_input.b), Struct_4(vec3<i32>(-49481i, -29769i, -1i), u_input.e, Struct_1(arg_0.x), Struct_2(false), vec3<bool>(true, true, false)), Struct_1(51015u), true) != -94648i, false);
    var var_1 = select(vec3<bool>(var_0.x, all(!select(vec2<bool>(false, true), vec2<bool>(var_0.x, var_0.x), true)), var_0.x), select(select(!(!vec3<bool>(var_0.x, var_0.x, true)), !(!vec3<bool>(false, var_0.x, var_0.x)), var_0.x), !(!vec3<bool>(var_0.x, false, var_0.x)), !(!select(vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, false, false), vec3<bool>(var_0.x, var_0.x, var_0.x)))), vec3<bool>(true, true, true));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(round(348f)), _wgslsmith_f_op_f32(ceil(196f)));
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-311f, -533f)))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1390f, -438f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, global0.x)) + vec2<f32>(global0.x, arg_1)), vec2<bool>(true, var_0.x)))));
    var var_3 = Struct_1(u_input.d.x);
    return Struct_5(Struct_1(146756u >> (_wgslsmith_dot_vec4_u32(firstLeadingBit(u_input.d), u_input.c) % 32u)), Struct_1(_wgslsmith_sub_u32(var_3.a, firstTrailingBit(_wgslsmith_mult_u32(u_input.c.x, 15932u)))), 0i ^ firstTrailingBit(-_wgslsmith_add_i32(-1i, -3830i)), Struct_3(Struct_2(true), Struct_2(_wgslsmith_sub_u32(u_input.c.x, u_input.d.x) < u_input.d.x), !vec2<bool>(all(var_1.yz), var_0.x)), _wgslsmith_sub_vec2_i32(u_input.e ^ u_input.e, u_input.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(select(vec3<u32>(1u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(36722u, 1u), u_input.d.x << (u_input.c.x % 32u)), func_1()), _wgslsmith_div_vec3_u32(vec3<u32>(firstLeadingBit(0u), 23626u, countOneBits(11082u)), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.c.x, u_input.d.x, 1u), max(u_input.d.wyz, u_input.c.yzz))), !all(vec4<bool>(true, true, true, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -447f))) + global0.x));
    let var_1 = vec3<bool>(!(!(_wgslsmith_f_op_f32(f32(-1f) * -515f) < global0.x)), false, true);
    let var_2 = max(_wgslsmith_div_i32(max(var_0.e.x, -70453i) << ((var_0.a.a ^ var_0.b.a) % 32u), (2147483647i << (var_0.a.a % 32u)) & -19923i) >> (~(~_wgslsmith_clamp_u32(4294967295u, u_input.d.x, 0u)) % 32u), _wgslsmith_mod_i32(var_0.c, -24604i));
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(476f))));
    let var_4 = -17085i;
    var var_5 = var_0.d.b.a && true;
    var_0 = Struct_5(var_0.b, func_5((u_input.c.zzx & vec3<u32>(4294967295u, var_0.b.a, 71415u)) << (u_input.d.xzz % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))).a, _wgslsmith_dot_vec4_i32(~(-vec4<i32>(5570i, 8037i, u_input.b, u_input.a) | vec4<i32>(var_0.c, u_input.a, var_4, var_0.c)), vec4<i32>(_wgslsmith_div_i32(var_2, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 0i), u_input.e)), 4501i, func_4(vec4<i32>(var_0.c, u_input.b, 1657i, var_0.c) >> (u_input.d % vec4<u32>(32u)), Struct_4(vec3<i32>(0i, 29971i, 19378i), vec2<i32>(10099i, -55403i), var_0.a, var_0.d.a, vec3<bool>(true, var_0.d.a.a, var_1.x)), var_0.a, !var_0.d.c.x), _wgslsmith_div_i32(2147483647i, u_input.a))), var_0.d, ~_wgslsmith_mult_vec2_i32(u_input.e, -_wgslsmith_mod_vec2_i32(u_input.e, var_0.e)));
    var var_6 = ~_wgslsmith_clamp_vec3_u32(u_input.d.yxz, _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_div_u32(4294967295u, var_0.b.a), ~70882u, _wgslsmith_add_u32(4294967295u, u_input.c.x)), ~vec3<u32>(1u, 22254u, 1u)), vec3<u32>(~var_0.a.a, _wgslsmith_clamp_u32(1u << (1u % 32u), 31044u, u_input.d.x & var_0.a.a), countOneBits(4294967295u)));
    var var_7 = !any(vec3<bool>(false, all(vec2<bool>(true, true)), var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(-(~(~vec3<i32>(-2147483647i, u_input.b, u_input.e.x)) & ~(-vec3<i32>(var_0.c, 1i, var_4))), ~u_input.d.www);
}

