struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec3<i32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 20> = array<vec3<i32>, 20>(vec3<i32>(0i, -1i, -1i), vec3<i32>(1i, 0i, 2147483647i), vec3<i32>(-5097i, 666i, -1i), vec3<i32>(-3506i, 0i, 2147483647i), vec3<i32>(0i, -1i, -16536i), vec3<i32>(-1i, 2147483647i, -22893i), vec3<i32>(-25835i, -1i, -46419i), vec3<i32>(-13077i, 2147483647i, 1i), vec3<i32>(i32(-2147483648), 22319i, -1i), vec3<i32>(1i, 1i, 2147483647i), vec3<i32>(9987i, -32960i, -1i), vec3<i32>(2147483647i, 2147483647i, 1i), vec3<i32>(-1i, 19118i, 4316i), vec3<i32>(-1i, 8647i, 7203i), vec3<i32>(0i, -52663i, 1i), vec3<i32>(19209i, -1i, -47871i), vec3<i32>(2147483647i, 1i, -6320i), vec3<i32>(-1i, 40627i, 2147483647i), vec3<i32>(1335i, i32(-2147483648), -1i), vec3<i32>(47757i, -1i, -1i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: u32, arg_3: vec4<bool>) -> vec4<u32> {
    global0 = array<vec3<i32>, 20>();
    var var_0 = _wgslsmith_mult_vec4_i32(-vec4<i32>(-9428i, u_input.a, u_input.c, ~u_input.a >> ((42362u >> (u_input.d % 32u)) % 32u)), -vec4<i32>(~u_input.c, u_input.a, _wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.c, -2147483647i, 1535i, 1i), vec4<i32>(12372i, 2147483647i, u_input.c, u_input.a)), -vec4<i32>(-2147483647i, 0i, u_input.a, u_input.c)), -17224i));
    var var_1 = ~_wgslsmith_add_i32(~_wgslsmith_add_i32(0i << (u_input.b.x % 32u), -1i >> (arg_2 % 32u)), ~(~(~(-13338i))));
    var var_2 = Struct_1((~_wgslsmith_add_u32(arg_2, 1u) << (_wgslsmith_dot_vec4_u32(~u_input.b, _wgslsmith_div_vec4_u32(vec4<u32>(44254u, 4294967295u, 0u, 1u), vec4<u32>(arg_0.x, arg_0.x, 0u, arg_2))) % 32u)) << (arg_0.x % 32u));
    var_2 = Struct_1(~_wgslsmith_div_u32(reverseBits(arg_2), 0u));
    return ~firstTrailingBit(reverseBits(firstLeadingBit(u_input.b) | ~vec4<u32>(u_input.d, 0u, 0u, 14185u)));
}

fn func_2() -> Struct_1 {
    global0 = array<vec3<i32>, 20>();
    global0 = array<vec3<i32>, 20>();
    let var_0 = _wgslsmith_f_op_f32(trunc(1f));
    let var_1 = _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-34785i, -44305i, -1008i, 0i), ~(-vec4<i32>(7967i, 1i, -1169i, -2147483647i))), vec4<i32>(-4514i, (u_input.a << (45971u % 32u)) ^ (14498i >> (u_input.d % 32u)), u_input.c, u_input.a)), vec4<i32>(-1i, -47070i, -2147483647i, 31839i), _wgslsmith_sub_vec4_i32(~(-(vec4<i32>(u_input.a, u_input.c, u_input.a, 2147483647i) | vec4<i32>(u_input.c, -13998i, 21689i, u_input.a))), -vec4<i32>(u_input.c, 79920i, u_input.a, -2147483647i) | ((vec4<i32>(u_input.a, 3239i, u_input.c, u_input.a) ^ vec4<i32>(-2147483647i, u_input.c, 0i, u_input.a)) << (func_3(vec2<u32>(28013u, u_input.b.x), vec4<f32>(794f, -589f, 1000f, -769f), 0u, vec4<bool>(false, true, true, true)) % vec4<u32>(32u)))));
    let var_2 = Struct_2(~(-15922i), true, select(var_1.yyw, var_1.zxw, select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(false, true))), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), true)), !any(vec2<bool>(true, true)));
    return Struct_1(65130u << (u_input.d % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    global0 = array<vec3<i32>, 20>();
    var var_0 = Struct_2(_wgslsmith_dot_vec3_i32(min(vec3<i32>(0i, arg_1, 13045i), _wgslsmith_add_vec3_i32(vec3<i32>(36551i, 11748i, u_input.c), global0[_wgslsmith_index_u32(~7989u, 20u)])), global0[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(~1u, _wgslsmith_mult_u32(83617u, u_input.d)), ~0u), 20u)]), !any(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), reverseBits(_wgslsmith_clamp_vec3_i32(global0[_wgslsmith_index_u32(firstTrailingBit(min(u_input.b.x, 689u)), 20u)], _wgslsmith_mult_vec3_i32(global0[_wgslsmith_index_u32(u_input.b.x << (72761u % 32u), 20u)], _wgslsmith_sub_vec3_i32(vec3<i32>(arg_1, 1i, arg_1), vec3<i32>(-1i, 73206i, -39219i))), vec3<i32>(u_input.c, 13204i, arg_1))), true);
    var_0 = Struct_2(_wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, -arg_1), vec2<i32>(27370i, _wgslsmith_mult_i32(abs(arg_1), _wgslsmith_mod_i32(1i, u_input.c)))), any(!select(vec2<bool>(var_0.d, var_0.b), !vec2<bool>(var_0.b, var_0.d), vec2<bool>(true, true))), ~vec3<i32>(arg_1, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, var_0.c.x, -1i), vec3<i32>(-1i, u_input.a, arg_1)), _wgslsmith_clamp_i32(u_input.a, var_0.a, 34435i) ^ var_0.a), (reverseBits(firstTrailingBit(arg_0.a)) != arg_2.a) & !any(vec2<bool>(true, true)));
    global0 = array<vec3<i32>, 20>();
    var var_1 = !vec4<bool>(!(!var_0.b), -46611i >= arg_1, select(false, var_0.d, _wgslsmith_f_op_f32(trunc(1571f)) >= _wgslsmith_f_op_f32(-517f - 1000f)), any(select(select(vec4<bool>(false, true, var_0.d, true), vec4<bool>(true, false, true, var_0.d), var_0.d), !vec4<bool>(var_0.d, var_0.b, var_0.b, var_0.d), vec4<bool>(var_0.d, false, false, false))));
    return arg_2;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = array<vec3<i32>, 20>();
    var var_0 = select(~(~_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.d), vec2<u32>(u_input.d, 0u), vec2<u32>(33029u, arg_0)), func_3(vec2<u32>(1u, 1u), vec4<f32>(876f, 1000f, 1280f, 2032f), 49446u, vec4<bool>(false, true, false, true)).zx)), firstLeadingBit(~_wgslsmith_add_vec2_u32(~vec2<u32>(1u, 17870u), u_input.b.zw)), true);
    let var_1 = vec4<i32>(u_input.c, ~(-u_input.c) | ~select(_wgslsmith_clamp_i32(1i, 0i, 11214i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, 20300i)), true), u_input.c, -_wgslsmith_dot_vec4_i32(abs(vec4<i32>(0i, 46195i, 51157i, 4397i) >> (u_input.b % vec4<u32>(32u))), (vec4<i32>(2147483647i, -8761i, u_input.a, u_input.a) ^ vec4<i32>(u_input.a, u_input.c, u_input.a, u_input.a)) | -vec4<i32>(u_input.a, 58047i, 2147483647i, -36759i)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1725f, -1163f, 175f, 337f), vec4<f32>(1187f, 1642f, -1000f, 166f), false)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-552f, -623f, -2169f, 626f))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(734f, -115f, -1635f, 457f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(143f, -887f, -951f, -345f)))))));
    var_0 = ~vec2<u32>(33140u, firstTrailingBit(4294967295u));
    return Struct_1(8046u);
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: f32, arg_3: Struct_2) -> vec2<bool> {
    global0 = array<vec3<i32>, 20>();
    global0 = array<vec3<i32>, 20>();
    var var_0 = func_5(arg_1, func_4(func_2(), _wgslsmith_mod_i32((i32(-1i) * -14068i) << (~u_input.d % 32u), -1i), func_2()), Struct_1(~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b.zzx, vec3<u32>(29318u, arg_1, arg_1)), vec3<u32>(arg_1, arg_1, 19224u))));
    global0 = array<vec3<i32>, 20>();
    var var_1 = func_4(Struct_1(1u & ~abs(arg_1)), 7189i, Struct_1(countOneBits(1u)));
    return vec2<bool>(true, true);
}

fn func_6(arg_0: vec2<bool>) -> bool {
    var var_0 = u_input.a >> (0u % 32u);
    var var_1 = Struct_2(1i, false, abs(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, u_input.a, 44033i), vec3<i32>(u_input.a, u_input.a, -2430i))) | min(vec3<i32>(u_input.c, 73198i, -11585i & u_input.c), countOneBits(global0[_wgslsmith_index_u32(u_input.b.x, 20u)]) >> (u_input.b.xww % vec3<u32>(32u))), all(!vec2<bool>(arg_0.x, true)) == true);
    let var_2 = 78385u;
    var var_3 = Struct_1(~var_2);
    let var_4 = func_5(~1u, func_5(min(22537u << ((var_3.a & 30150u) % 32u), _wgslsmith_dot_vec2_u32(u_input.b.wx, u_input.b.zy)), func_5(1u, Struct_1(45918u), Struct_1(4294967295u)), func_5(_wgslsmith_mod_u32(var_3.a, _wgslsmith_clamp_u32(0u, 1u, var_2)), Struct_1(var_2), func_2())), Struct_1(u_input.d ^ var_2));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 20>();
    let var_0 = 26427i;
    global0 = array<vec3<i32>, 20>();
    var var_1 = func_6(!select(select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))), vec2<bool>(true, true), !func_1(23416i, u_input.d, 653f, Struct_2(2147483647i, false, global0[_wgslsmith_index_u32(u_input.b.x, 20u)], false))));
    let var_2 = Struct_1(50016u >> (~(~_wgslsmith_dot_vec3_u32(u_input.b.wwz, u_input.b.wzz)) % 32u));
    var var_3 = Struct_2(var_0, all(vec4<bool>(true, true, true, true)), ~firstTrailingBit(_wgslsmith_add_vec3_i32(max(global0[_wgslsmith_index_u32(var_2.a, 20u)], global0[_wgslsmith_index_u32(1u, 20u)]), vec3<i32>(-1i, u_input.a, -55263i) ^ vec3<i32>(-1i, u_input.a, u_input.c))), u_input.b.x >= _wgslsmith_mod_u32(1714u, 35523u));
    var_3 = Struct_2(_wgslsmith_mod_i32(35527i, _wgslsmith_div_i32(-263i, _wgslsmith_sub_i32(var_0, 1i))), true, ~firstTrailingBit(vec3<i32>(var_3.a, -17214i, -2147483647i)), var_3.d);
    let var_4 = var_0;
    var var_5 = vec2<bool>(all(select(!(!vec3<bool>(var_3.b, var_3.d, var_3.d)), vec3<bool>(any(vec2<bool>(var_3.d, var_3.b)), func_1(31936i, var_2.a, -991f, Struct_2(var_3.c.x, false, global0[_wgslsmith_index_u32(4386u, 20u)], true)).x, true), var_3.d)), !any(vec4<bool>(!var_3.d, !var_3.b, var_3.d || var_3.d, !var_3.b)));
    let x = u_input.a;
    s_output = StorageBuffer(~78090u, 12598i);
}

