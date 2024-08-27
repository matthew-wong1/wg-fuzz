struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: vec4<bool>,
    d: i32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: f32,
    e: f32,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = Struct_3(Struct_1(vec4<u32>(1u, abs(u_input.a | global0.x), ~64250u >> (_wgslsmith_mod_u32(0u, 36058u) % 32u), 4294967295u), !(any(vec4<bool>(true, false, true, false)) || true), u_input.b & _wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, arg_0, 45732i), abs(vec3<i32>(u_input.b, 2147483647i, 0i))), reverseBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(global0.x, 28869u, 1u), _wgslsmith_clamp_vec3_u32(global0.ywy, global0.zyy, vec3<u32>(9181u, 0u, 38547u))))), Struct_2(~_wgslsmith_clamp_vec2_u32(global0.zw, vec2<u32>(4294967295u, u_input.a), ~global0.zw), 41889i, select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(all(vec4<bool>(true, false, false, false)), any(vec4<bool>(true, true, true, true)), true, 1u < global0.x), vec4<bool>(true, u_input.c >= 23745i, true, true)), _wgslsmith_div_i32(i32(-1i) * -20674i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, 19009i, arg_0, -69463i), vec4<i32>(1i, -2147483647i, u_input.c, -13999i)))), _wgslsmith_sub_vec3_i32(~vec3<i32>(-2147483647i, u_input.b, u_input.c), -_wgslsmith_mod_vec3_i32(vec3<i32>(1i, -860i, 3415i), vec3<i32>(arg_0, arg_0, u_input.d)))), abs(~arg_0), Struct_1(vec4<u32>(u_input.a << (4294967295u % 32u), ~1u, u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 0u), vec2<u32>(u_input.a, u_input.a))) & ~(~vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)), 193f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1186f, -1000f)) + 2540f), abs(~_wgslsmith_clamp_i32(-14488i, arg_0, 2147483647i)), _wgslsmith_clamp_u32(firstTrailingBit(4294967295u), ~(global0.x | u_input.a), _wgslsmith_add_u32(max(u_input.a, u_input.a), firstTrailingBit(54462u)))), vec4<i32>(arg_0, arg_0, _wgslsmith_dot_vec4_i32(min(~vec4<i32>(u_input.b, u_input.b, -35286i, u_input.b), -vec4<i32>(u_input.c, arg_0, u_input.b, arg_0)), abs(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0, u_input.d, 19671i, arg_0), vec4<i32>(u_input.d, arg_0, arg_0, 47683i)))), -_wgslsmith_mult_i32(-43231i, arg_0)));
    var var_1 = Struct_5(all(vec2<bool>(true, var_0.d.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2576f) + _wgslsmith_f_op_f32(-292f + -4041f)), 707f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1203f, 364f) - vec2<f32>(-141f, -948f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(204f, 359f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(187f, -1363f)), true))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1854f, 584f) + vec2<f32>(-463f, -1636f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1723f, 1644f))))))));
    global0 = vec4<u32>(36745u, _wgslsmith_add_u32(select(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(var_0.a.a, var_0.a.a), _wgslsmith_sub_u32(var_0.d.d, u_input.a)), ~4294967295u, true), abs(~49744u >> (~var_0.d.a.x % 32u))), _wgslsmith_add_u32(_wgslsmith_mult_u32(min(u_input.a << (u_input.a % 32u), firstTrailingBit(22068u)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(global0.xzx, vec3<u32>(1u, 1u, u_input.a)), 3091u)), ~4294967295u), ~_wgslsmith_sub_u32(var_0.b.a.x, ~0u & _wgslsmith_add_u32(17634u, u_input.a)));
    var var_2 = _wgslsmith_div_vec3_u32(var_0.a.a.zzy, ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.x, 0u, 18273u) & var_0.d.a.xzw, vec3<u32>(global0.x, global0.x, global0.x), vec3<u32>(global0.x, 1u, global0.x))));
    var_1 = Struct_5(var_0.d.b, -1690f, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.c)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_1.c, var_1.c)), var_1.c)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-128f, var_1.b) * var_1.c))))));
    return ~1i;
}

fn func_2() -> Struct_2 {
    let var_0 = reverseBits(vec4<i32>(-(~(46708i & u_input.b)), max(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.c, 0i, u_input.d, -47685i)), vec4<i32>(-8154i, u_input.b, u_input.c, -1i)), -10067i), 2147483647i, min(-u_input.b, 22370i)));
    global0 = ~reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x ^ 0u, u_input.a, 6552u << (1u % 32u), _wgslsmith_add_u32(u_input.a, 21899u)), ~min(vec4<u32>(global0.x, 65198u, global0.x, 45047u), vec4<u32>(u_input.a, 4294967295u, 46087u, 0u)), ~reverseBits(vec4<u32>(28526u, global0.x, global0.x, u_input.a))));
    var var_1 = any(vec4<bool>(true || any(vec4<bool>(true, true, true, true)), false, ~select(1u, global0.x, false) < ~(~global0.x), true));
    let var_2 = Struct_5(_wgslsmith_div_i32(_wgslsmith_mult_i32(var_0.x, 1i), ~(-u_input.d)) >= func_3(var_0.x), _wgslsmith_f_op_f32(abs(419f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-265f, 253f), vec2<f32>(-952f, -1235f))))) - vec2<f32>(_wgslsmith_f_op_f32(max(-291f, 910f)), -1684f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(368f, _wgslsmith_f_op_f32(f32(-1f) * -1310f)) * vec2<f32>(_wgslsmith_f_op_f32(abs(405f)), 1f)), vec2<bool>(true, (var_0.x > u_input.b) && true))));
    var var_3 = Struct_2(vec2<u32>(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), ~global0.wy)) ^ select(select(firstLeadingBit(vec2<u32>(u_input.a, u_input.a)), reverseBits(vec2<u32>(21006u, u_input.a)), any(vec2<bool>(true, var_2.a))), ~vec2<u32>(u_input.a, 13705u), var_2.a), ~(reverseBits(var_0.x) & u_input.c), select(!(!select(vec4<bool>(var_2.a, true, false, var_2.a), vec4<bool>(var_2.a, var_2.a, var_2.a, false), vec4<bool>(var_2.a, var_2.a, false, false))), !select(select(vec4<bool>(false, var_2.a, true, true), vec4<bool>(var_2.a, var_2.a, false, true), true), !vec4<bool>(true, var_2.a, false, var_2.a), all(vec2<bool>(var_2.a, true))), vec4<bool>(true, !select(true, var_2.a, var_2.a), !var_2.a || false, all(vec2<bool>(var_2.a, var_2.a)))), _wgslsmith_mult_i32(~(-(~u_input.d)), 2147483647i), -var_0.xyz);
    return Struct_2(global0.yx, 0i, var_3.c, var_0.x, vec3<i32>(max(u_input.b, _wgslsmith_add_i32(select(u_input.d, 24766i, var_3.c.x), abs(1i))), var_0.x, var_3.e.x));
}

fn func_1() -> Struct_5 {
    let var_0 = Struct_3(Struct_1(~(~vec4<u32>(37166u, 4294967295u, 3105u, u_input.a)), true, u_input.d, 21818u), func_2(), _wgslsmith_mod_i32(u_input.b, ~(-5901i)), Struct_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 65798u, u_input.a) | vec4<u32>(global0.x, u_input.a, global0.x, u_input.a), select(vec4<u32>(4294967295u, u_input.a, global0.x, 90971u), vec4<u32>(global0.x, u_input.a, u_input.a, 61061u), false)), firstTrailingBit(~vec4<u32>(global0.x, 88042u, u_input.a, 0u)), vec4<u32>(u_input.a, 32738u, 64643u, 19331u)), false, _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.c, 2147483647i), firstLeadingBit(5148i)) >> (u_input.a % 32u), 1u), firstLeadingBit(select(countOneBits(vec4<i32>(u_input.c, 1i, 1i, 2147483647i)), -(vec4<i32>(0i, -20244i, 22564i, 1i) | vec4<i32>(u_input.d, 53319i, 93137i, 7447i)), func_2().c)));
    global0 = _wgslsmith_add_vec4_u32(var_0.d.a, var_0.a.a | select(vec4<u32>(41739u, 17163u, u_input.a, u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 0u, 0u, var_0.d.a.x), vec4<u32>(u_input.a, global0.x, 0u, 1u)), var_0.d.b)) << (vec4<u32>(1u, abs(max(~7604u, 32882u)), _wgslsmith_add_u32(_wgslsmith_add_u32(global0.x | u_input.a, 4294967295u), global0.x), max(abs(_wgslsmith_mult_u32(4294967295u, 0u)), ~var_0.a.d)) % vec4<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-1000f)), -225f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-379f - 543f))), _wgslsmith_div_f32(-1400f, _wgslsmith_f_op_f32(ceil(784f)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(501f, 1000f, 257f, 158f), vec4<f32>(-587f, 1175f, -254f, -2819f))))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, -150f, 1000f, 1000f)))) - vec4<f32>(903f, _wgslsmith_f_op_f32(f32(-1f) * -231f), _wgslsmith_f_op_f32(floor(-2443f)), -832f)), vec4<f32>(_wgslsmith_div_f32(-457f, _wgslsmith_div_f32(-1037f, -269f)), 307f, 187f, 1f), var_0.b.c))));
    global0 = vec4<u32>(91706u, ~func_2().a.x, _wgslsmith_clamp_u32(func_2().a.x, u_input.a, _wgslsmith_dot_vec3_u32(global0.yyz, vec3<u32>(77083u, ~u_input.a, _wgslsmith_mult_u32(var_0.d.d, var_0.a.a.x)))), _wgslsmith_mod_u32(~reverseBits(func_2().a.x), ~_wgslsmith_add_u32(u_input.a, _wgslsmith_div_u32(25807u, u_input.a))));
    global0 = min(~((vec4<u32>(u_input.a, 1u, var_0.d.d, 0u) << (var_0.a.a % vec4<u32>(32u))) | vec4<u32>(29044u, _wgslsmith_div_u32(global0.x, 29226u), 41743u, ~u_input.a)), var_0.d.a);
    return Struct_5(var_0.b.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1014f)) * 1067f), -331f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(abs(var_1.x)))))), var_1.wy);
}

fn func_4(arg_0: u32, arg_1: Struct_5, arg_2: Struct_2) -> f32 {
    var var_0 = arg_1.b;
    var var_1 = arg_1.a;
    let var_2 = arg_1;
    let var_3 = false;
    let var_4 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(296f, _wgslsmith_f_op_f32(584f - _wgslsmith_f_op_f32(arg_1.c.x - _wgslsmith_f_op_f32(abs(arg_1.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -678f) - 294f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1031f)))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.b * 1369f))), arg_1.c.x), -158f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-348f, 572f) + 1874f))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)));
}

fn func_5(arg_0: f32, arg_1: vec3<f32>, arg_2: vec3<f32>) -> Struct_4 {
    let var_0 = arg_2;
    global0 = vec4<u32>(~(~(~global0.x) ^ global0.x), abs(~(~4294967295u)), u_input.a, u_input.a);
    var var_1 = func_1();
    let var_2 = -2884i;
    var_1 = Struct_5(any(vec3<bool>(var_1.a, true, any(select(vec4<bool>(true, var_1.a, var_1.a, false), vec4<bool>(true, false, false, var_1.a), true)))), 1032f, _wgslsmith_f_op_vec2_f32(var_0.xy * vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(arg_2.x)), _wgslsmith_f_op_f32(abs(2089f)))), -458f)));
    return Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, var_0.x, 991f, arg_2.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-231f, var_1.b, -602f, 1000f), vec4<f32>(-913f, 265f, arg_2.x, 1267f)))))) - vec4<f32>(1711f, _wgslsmith_f_op_f32(-var_0.x), 740f, arg_1.x)), ~(~vec3<i32>(u_input.d, firstLeadingBit(u_input.d), 18752i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_2.x, -2891f, -515f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1059f, arg_2.x, -412f, var_0.x) * vec4<f32>(arg_1.x, var_1.b, var_0.x, -186f))) - vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(exp2(arg_1.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_mod_u32(1u, 4294967295u & u_input.a), func_1(), func_2())) + -614f), 1935f);
}

fn func_6(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: Struct_3) -> i32 {
    var var_0 = arg_2.yx;
    var var_1 = select(!vec3<bool>(false, (arg_0.b.x & 70056i) >= var_0.x, true), !(!(!arg_3.b.c.wwx)), true);
    let var_2 = ~arg_3.b.a >> (~vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(arg_3.b.a.x, u_input.a), u_input.a), global0.x >> (12282u % 32u)) % vec2<u32>(32u));
    let var_3 = Struct_1(arg_3.d.a, !(!all(vec3<bool>(false, false, var_1.x))), abs(min(~(~38102i), -10007i)), ~1u);
    var var_4 = arg_3.a;
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -func_6(func_5(_wgslsmith_f_op_f32(func_4(0u, func_1(), Struct_2(vec2<u32>(u_input.a, 68709u), -1i, vec4<bool>(false, false, false, true), u_input.c, vec3<i32>(u_input.b, u_input.c, 26767i)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2167f, -2180f, -1000f), vec3<f32>(-1000f, 702f, -873f), vec3<bool>(true, true, false))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1078f, 907f, 537f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-720f, -327f, 125f))))), select(vec3<i32>(firstTrailingBit(-76350i), 22225i, u_input.c), max(vec3<i32>(u_input.b, 0i, 35262i), vec3<i32>(u_input.b, u_input.c, -32147i)), vec3<bool>(all(vec3<bool>(false, true, true)), true, false)), ~abs(vec3<i32>(-2147483647i, 3035i, u_input.d)), Struct_3(Struct_1(select(vec4<u32>(global0.x, global0.x, 58012u, u_input.a), vec4<u32>(u_input.a, 0u, 6371u, u_input.a), vec4<bool>(true, false, true, false)), true, u_input.b, 4294967295u), func_2(), u_input.c, Struct_1(~vec4<u32>(u_input.a, 22511u, u_input.a, global0.x), true, 1i, min(global0.x, 4294967295u)), select(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, -1i, u_input.c, u_input.b), vec4<i32>(u_input.d, u_input.b, u_input.b, 1i)), abs(vec4<i32>(-27680i, 0i, -2147483647i, u_input.c)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), true))));
    var_0 = 2147483647i >> (u_input.a % 32u);
    let var_1 = global0.zxz;
    let var_2 = u_input.a;
    global0 = ~vec4<u32>(u_input.a, 46866u, _wgslsmith_mod_u32(4294967295u >> (var_1.x % 32u), _wgslsmith_div_u32(0u, 28973u)), ~(~u_input.a)) ^ ~firstLeadingBit(~vec4<u32>(37940u, u_input.a, global0.x, 4294967295u));
    var var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-567f, 411f)) + _wgslsmith_f_op_f32(f32(-1f) * -209f)), _wgslsmith_f_op_f32(floor(-1848f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1160f))), -540f) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(699f, -1642f, -256f, -136f))))))), _wgslsmith_clamp_vec3_i32(~vec3<i32>(_wgslsmith_mult_i32(1i, -16883i), 0i, 6111i), select(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(27784i, 0i, 14901i), vec3<i32>(u_input.d, u_input.b, -33043i)), vec3<i32>(u_input.c, u_input.c, u_input.b), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, 2147483647i, 2147483647i), vec3<i32>(u_input.d, -2147483647i, u_input.b), vec3<i32>(u_input.b, u_input.b, -1911i))), countOneBits(reverseBits(vec3<i32>(u_input.c, u_input.c, -1i))), func_2().c.x), vec3<i32>(~(i32(-1i) * -34011i), _wgslsmith_sub_i32(firstTrailingBit(u_input.c), _wgslsmith_div_i32(u_input.b, -2499i)), ~(-48659i))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1020f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2300f - 793f) - _wgslsmith_f_op_f32(-580f * -1665f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-865f + 227f))) + _wgslsmith_f_op_f32(1000f + -792f)), 274f, -439f), _wgslsmith_div_f32(461f, _wgslsmith_f_op_f32(f32(-1f) * -585f)), _wgslsmith_f_op_f32(func_1().c.x * _wgslsmith_f_op_f32(_wgslsmith_div_f32(258f, _wgslsmith_f_op_f32(1342f + 828f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -631f) * _wgslsmith_f_op_f32(-747f + -322f)))));
    var var_4 = u_input.d;
    var var_5 = Struct_1(_wgslsmith_add_vec4_u32(countOneBits(~max(vec4<u32>(u_input.a, u_input.a, 1u, 1u), vec4<u32>(19920u, 1852u, 4294967295u, var_1.x))), min(~(~vec4<u32>(u_input.a, global0.x, 45791u, 15151u)), ~(~vec4<u32>(9451u, global0.x, 63140u, 36444u)))), !(!((var_3.b.x << (global0.x % 32u)) != var_3.b.x)), u_input.d, reverseBits(var_2));
    var_5 = Struct_1(var_5.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(var_5.a.x | var_2, Struct_5(true, var_3.e, var_3.a.zz), Struct_2(var_1.xz, 0i, vec4<bool>(true, var_5.b, true, var_5.b), -7592i, var_3.b)))) >= -1927f, max(i32(-1i) * -2147483647i, 1i), global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_5.a.xwx), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(func_5(_wgslsmith_f_op_f32(ceil(var_3.c.x)), _wgslsmith_f_op_vec3_f32(exp2(var_3.c.zww)), vec3<f32>(-228f, -740f, var_3.a.x)).a.x, 479f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(var_3.c.x * var_3.e))))));
}

