struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<u32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: vec4<f32>) -> i32 {
    var var_0 = arg_0;
    var var_1 = arg_3;
    var var_2 = -1121f;
    var_2 = 1f;
    let var_3 = vec2<u32>(countOneBits(_wgslsmith_add_u32(arg_1, arg_1)), ~abs(1u));
    return i32(-1i) * -u_input.c;
}

fn func_2(arg_0: f32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1524f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(floor(arg_0)), 1f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, arg_0)))))));
    let var_1 = true;
    let var_2 = arg_0;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-365f - _wgslsmith_f_op_f32(min(arg_0, -1000f))), -1472f) * -405f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(148f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(ceil(var_2))), var_2))), true || (~_wgslsmith_add_i32(17984i, 1i) > func_3(-2147483647i & u_input.c, ~12977u, Struct_1(-1249f, vec3<f32>(826f, var_2, -300f), true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1861f, var_2, var_0.x, arg_0)))));
    global0 = 2147483647i;
    return vec3<bool>(true, any(vec2<bool>(any(vec4<bool>(var_3.c, var_1, true, var_3.c)), !all(vec2<bool>(var_3.c, false)))), true);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: Struct_3) -> Struct_3 {
    let var_0 = arg_2.e;
    global0 = -2147483647i;
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_0.b.zy), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-871f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_0.b.x))))))));
    global0 = 1i;
    var var_2 = vec2<u32>(arg_2.a.c.x, arg_2.a.c.x);
    return Struct_3(arg_2.a, -_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(16730i, -13605i)), -arg_2.b, _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(arg_1.xz, vec2<i32>(arg_2.d, arg_1.x)), max(arg_1.yz, vec2<i32>(33384i, 2147483647i)))), _wgslsmith_mult_i32(_wgslsmith_add_i32(reverseBits(10309i), 1i), -firstTrailingBit(-2147483647i)), 1i, var_0);
}

fn func_5(arg_0: Struct_3, arg_1: vec2<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e.b.x + arg_0.e.a)), _wgslsmith_f_op_f32(abs(-2639f))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-429f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.b.x)) + _wgslsmith_f_op_f32(-arg_0.e.a))));
    var_0 = -733f;
    var var_1 = arg_0.a;
    var var_2 = ~_wgslsmith_add_vec3_i32(u_input.a.xxx, vec3<i32>(4851i, 0i, countOneBits(firstTrailingBit(34724i))));
    return _wgslsmith_mod_i32(0i, firstLeadingBit(-(~(-var_2.x))));
}

fn func_1() -> Struct_1 {
    let var_0 = !(true | ((_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 4294967295u)) >> (1u % 32u)) > _wgslsmith_dot_vec4_u32(vec4<u32>(30730u, 87859u, 94565u, 26902u), select(vec4<u32>(4294967295u, 0u, 51980u, 4294967295u), vec4<u32>(1882u, 0u, 33096u, 0u), vec4<bool>(false, false, false, false)))));
    global0 = -func_5(func_4(func_2(_wgslsmith_f_op_f32(f32(-1f) * -824f)), _wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(u_input.c, u_input.c, u_input.b.x, -1i)) | countOneBits(u_input.a), Struct_3(Struct_2(114f, Struct_1(-821f, vec3<f32>(-1000f, -111f, 1000f), false), vec3<u32>(4294967295u, 0u, 261u), var_0), vec2<i32>(-33931i, 2147483647i), _wgslsmith_clamp_i32(u_input.b.x, u_input.a.x, u_input.a.x), ~u_input.a.x, Struct_1(147f, vec3<f32>(725f, -804f, -390f), false))), vec2<u32>(abs(31136u), _wgslsmith_div_u32(_wgslsmith_div_u32(115921u, 34628u), ~1u)));
    let var_1 = select(vec2<u32>(~(1u << (1u % 32u)), ~select(abs(68576u), _wgslsmith_div_u32(9361u, 8253u), var_0)), _wgslsmith_div_vec2_u32(vec2<u32>(1u, ~min(4294967295u, 80482u)), ~firstTrailingBit(vec2<u32>(1u, 1u))), vec2<bool>(!(!func_4(vec3<bool>(true, false, var_0), u_input.a, Struct_3(Struct_2(-1769f, Struct_1(-223f, vec3<f32>(1997f, 1410f, -142f), true), vec3<u32>(2392u, 1u, 84132u), false), u_input.b, -3385i, -1i, Struct_1(-903f, vec3<f32>(1198f, -373f, -1520f), var_0))).e.c), var_0));
    global0 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(reverseBits(u_input.b ^ vec2<i32>(u_input.a.x, -18995i)) << (vec2<u32>(~var_1.x, abs(0u)) % vec2<u32>(32u)), vec2<i32>(u_input.a.x, 1i)), max(0i, (~u_input.a.x >> (~var_1.x % 32u)) ^ ~1i), u_input.c);
    let var_2 = 1163u;
    return Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(949f)), 1f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(300f, 246f, 678f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 114f, -502f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-180f, -1000f, -432f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-845f, -131f, -965f), vec3<f32>(-512f, -1000f, 1373f))))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(308f, -216f, -930f)))))), var_0);
}

fn func_6(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1 + vec2<f32>(func_1().b.x, -532f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.b.yx + arg_2.b.zx) * _wgslsmith_f_op_vec2_f32(exp2(arg_2.b.xz))))));
    let var_1 = func_4(func_2(-1273f), u_input.a, func_4(select(vec3<bool>(arg_2.c & false, any(vec4<bool>(arg_2.c, arg_2.c, arg_2.c, arg_2.c)), arg_2.c), vec3<bool>(func_4(vec3<bool>(true, true, arg_2.c), u_input.a, Struct_3(Struct_2(arg_1.x, Struct_1(arg_1.x, arg_2.b, true), vec3<u32>(0u, 26632u, 1u), false), vec2<i32>(-2147483647i, arg_0), 1i, arg_0, Struct_1(var_0.x, vec3<f32>(var_0.x, var_0.x, -690f), arg_2.c))).e.c, arg_2.c, false), arg_2.c), ~(-(~u_input.a)), func_4(!(!vec3<bool>(true, arg_2.c, arg_2.c)), u_input.a, Struct_3(func_4(vec3<bool>(false, false, arg_2.c), u_input.a, Struct_3(Struct_2(arg_2.a, Struct_1(-706f, arg_2.b, arg_2.c), vec3<u32>(1u, 17608u, 8630u), arg_2.c), u_input.a.ww, arg_0, arg_0, arg_2)).a, ~vec2<i32>(u_input.a.x, 1i), ~u_input.c, u_input.b.x, func_1())))).a;
    var var_2 = var_1;
    let var_3 = -vec4<i32>(_wgslsmith_div_i32(arg_0, ~_wgslsmith_clamp_i32(arg_0, 2147483647i, u_input.b.x)), arg_0 & (_wgslsmith_mod_i32(1i, u_input.b.x) | -68577i), arg_0, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(1i, -16299i, 15340i, -1i)), u_input.a ^ u_input.a), u_input.a));
    var var_4 = vec3<f32>(func_4(func_2(-1702f), vec4<i32>(_wgslsmith_div_i32(arg_0 >> (4294967295u % 32u), countOneBits(arg_0)), _wgslsmith_mod_i32(arg_0, _wgslsmith_div_i32(u_input.b.x, 1i)), ~18523i, 43400i), func_4(vec3<bool>(var_1.b.c, arg_2.c, arg_2.c && var_2.d), ~var_3, func_4(vec3<bool>(true, true, true), u_input.a, func_4(vec3<bool>(false, true, arg_2.c), u_input.a, Struct_3(var_1, u_input.b, arg_0, -1i, arg_2))))).a.b.a, _wgslsmith_f_op_f32(sign(-1919f)), var_0.x);
    return func_4(vec3<bool>(!(!(!arg_2.c)), func_1().c, !any(select(vec3<bool>(var_2.b.c, false, var_1.b.c), vec3<bool>(true, true, var_1.b.c), vec3<bool>(var_1.b.c, arg_2.c, var_2.d)))), -var_3, Struct_3(Struct_2(_wgslsmith_f_op_f32(ceil(-352f)), Struct_1(_wgslsmith_f_op_f32(var_0.x - var_1.a), func_4(vec3<bool>(true, var_2.b.c, var_1.b.c), vec4<i32>(var_3.x, var_3.x, 50670i, 60796i), Struct_3(Struct_2(arg_1.x, Struct_1(495f, vec3<f32>(arg_1.x, -290f, arg_2.a), var_2.b.c), var_2.c, var_1.b.c), vec2<i32>(arg_0, 21386i), var_3.x, -69454i, Struct_1(-186f, vec3<f32>(var_0.x, -719f, -404f), true))).e.b, true), vec3<u32>(112850u ^ var_1.c.x, ~arg_3, ~arg_3), var_1.d), u_input.a.xx, var_3.x, arg_0, Struct_1(_wgslsmith_div_f32(-921f, 1f), var_1.b.b, arg_2.c))).a;
}

fn func_7(arg_0: Struct_3, arg_1: Struct_1) -> Struct_2 {
    let var_0 = select(vec3<bool>(_wgslsmith_f_op_f32(1000f * -664f) > _wgslsmith_f_op_f32(_wgslsmith_div_f32(1596f, arg_0.e.b.x) - _wgslsmith_f_op_f32(370f + -258f)), true, false), func_2(arg_0.a.a), true);
    global0 = -41163i;
    global0 = _wgslsmith_mult_i32(arg_0.d, u_input.c);
    let var_1 = firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(-u_input.b.x, arg_0.c), u_input.b)) ^ (u_input.b | vec2<i32>(-(u_input.a.x ^ 43568i), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-2147483647i, arg_0.c, u_input.c), arg_0.b.x)));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-arg_0.a.b.a), arg_1, ~(~_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(2971u, 4294967295u, arg_0.a.c.x), vec3<u32>(0u, arg_0.a.c.x, 0u)), abs(arg_0.a.c))), _wgslsmith_f_op_f32(f32(-1f) * -475f) > _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1680f, _wgslsmith_f_op_f32(arg_0.a.b.b.x * arg_0.a.b.a)), func_6(arg_0.d, arg_0.a.b.b.zz, func_6(0i, vec2<f32>(arg_0.e.a, 2407f), Struct_1(801f, vec3<f32>(arg_0.a.a, -162f, arg_0.a.a), true), arg_0.a.c.x).b, arg_0.a.c.x).b.a, true)));
    return Struct_2(_wgslsmith_f_op_f32(step(-1348f, _wgslsmith_f_op_f32(-272f - _wgslsmith_f_op_f32(ceil(arg_1.b.x))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.b.a)) - var_2.b.b.x) * -1678f), var_2.b.b, !func_6(countOneBits(758i), func_6(arg_0.b.x, vec2<f32>(696f, -226f), Struct_1(1269f, vec3<f32>(arg_1.b.x, arg_0.a.b.a, -158f), arg_1.c), 0u).b.b.yy, var_2.b, 1u).b.c), var_2.c, func_4(var_0, u_input.a, func_4(vec3<bool>(var_2.b.c, arg_0.a.b.c, false), u_input.a >> (vec4<u32>(arg_0.a.c.x, var_2.c.x, var_2.c.x, arg_0.a.c.x) % vec4<u32>(32u)), Struct_3(arg_0.a, vec2<i32>(u_input.b.x, arg_0.b.x), -67434i, -21667i, Struct_1(arg_0.e.a, vec3<f32>(arg_1.a, var_2.a, arg_1.b.x), var_0.x)))).e.c | !(_wgslsmith_f_op_f32(exp2(arg_1.b.x)) <= _wgslsmith_f_op_f32(ceil(1161f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.b.x ^ _wgslsmith_div_i32(u_input.c, ~(_wgslsmith_div_i32(u_input.b.x, -2147483647i) & ~(-2147483647i)));
    global0 = -27793i;
    var var_0 = Struct_3(func_7(Struct_3(func_6(5234i, vec2<f32>(-303f, 1003f), func_1(), abs(84627u)), vec2<i32>(~u_input.c, -u_input.a.x), _wgslsmith_clamp_i32(~u_input.c, _wgslsmith_mod_i32(-1i, u_input.b.x), -2147483647i), -u_input.a.x, func_4(vec3<bool>(true, false, true), min(u_input.a, u_input.a), func_4(vec3<bool>(false, false, false), vec4<i32>(u_input.b.x, u_input.a.x, u_input.c, u_input.b.x), Struct_3(Struct_2(557f, Struct_1(696f, vec3<f32>(-324f, 869f, -704f), false), vec3<u32>(4294967295u, 28870u, 72186u), false), vec2<i32>(u_input.c, 2147483647i), u_input.a.x, u_input.c, Struct_1(1353f, vec3<f32>(-873f, -379f, 1483f), false)))).a.b), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(266f - -213f) - _wgslsmith_f_op_f32(floor(527f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-945f, 498f, 619f) + vec3<f32>(190f, 1494f, -996f))), true)), ~u_input.b, _wgslsmith_mult_i32(func_3(-20717i, 1u, func_6(-1i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-180f, 357f)), Struct_1(1803f, vec3<f32>(272f, -706f, -767f), false), ~36027u).b, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2435f, -1645f, 1000f, -1325f))))), u_input.c), -1i, func_6(min(0i, _wgslsmith_add_i32(u_input.b.x, reverseBits(10617i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(112f, 119f)))) * vec2<f32>(func_6(28137i, vec2<f32>(-860f, 829f), Struct_1(144f, vec3<f32>(-1112f, 373f, -1152f), true), 4294967295u).a, -771f)), Struct_1(_wgslsmith_f_op_f32(-338f - _wgslsmith_f_op_f32(trunc(170f))), vec3<f32>(1f, 1f, 1f), true), 4294967295u).b);
    global0 = u_input.a.x;
    let var_1 = _wgslsmith_div_u32(var_0.a.c.x, ~abs(69102u ^ var_0.a.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.a.c.x, func_5(func_4(vec3<bool>(var_0.e.c, true, true), countOneBits(vec4<i32>(var_0.c, -60797i, -31419i, u_input.c)), Struct_3(func_7(Struct_3(var_0.a, var_0.b, u_input.b.x, var_0.d, Struct_1(-1000f, vec3<f32>(var_0.a.b.b.x, var_0.e.a, var_0.a.a), var_0.a.b.c)), var_0.a.b), func_4(vec3<bool>(var_0.e.c, var_0.e.c, var_0.a.d), vec4<i32>(1i, var_0.d, u_input.c, u_input.b.x), Struct_3(Struct_2(var_0.a.b.a, var_0.e, var_0.a.c, var_0.e.c), vec2<i32>(-26682i, var_0.b.x), -31038i, -1i, Struct_1(var_0.a.b.b.x, vec3<f32>(-352f, var_0.e.b.x, var_0.e.b.x), false))).b, func_4(vec3<bool>(true, var_0.a.d, var_0.a.d), u_input.a, Struct_3(var_0.a, vec2<i32>(3273i, 2147483647i), var_0.b.x, -97921i, var_0.e)).d, 0i, Struct_1(-397f, vec3<f32>(var_0.e.b.x, var_0.e.a, var_0.e.a), false))), _wgslsmith_sub_vec2_u32(vec2<u32>(820u, ~4294967295u), ~(vec2<u32>(50633u, 0u) ^ vec2<u32>(var_1, var_0.a.c.x)))), ~vec2<u32>(func_7(Struct_3(Struct_2(var_0.a.a, var_0.a.b, var_0.a.c, false), vec2<i32>(var_0.b.x, -1i), var_0.d, 40347i, var_0.a.b), var_0.e).c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.c.x, var_0.a.c.x, var_1, var_1) ^ vec4<u32>(var_1, 38374u, 1u, 4294967295u), vec4<u32>(var_0.a.c.x, var_0.a.c.x, var_0.a.c.x, 61454u) ^ vec4<u32>(1u, var_0.a.c.x, 8118u, var_0.a.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.a) + _wgslsmith_f_op_f32(-var_0.e.b.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.a)))), ~_wgslsmith_div_u32(var_0.a.c.x, _wgslsmith_mod_u32(0u, var_1) ^ var_0.a.c.x));
}

