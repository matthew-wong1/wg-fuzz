struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: i32,
    d: f32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: u32,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_3,
}

struct Struct_5 {
    a: vec3<f32>,
    b: bool,
    c: Struct_2,
    d: f32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool) -> vec2<bool> {
    let var_0 = Struct_4(1369f, Struct_3(all(select(!vec3<bool>(false, arg_0, global0.x), select(vec3<bool>(arg_0, true, false), vec3<bool>(true, true, global0.x), vec3<bool>(false, global0.x, true)), select(vec3<bool>(true, global0.x, arg_0), vec3<bool>(false, true, true), global0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-709f, 160f, -855f, -1000f))) * vec4<f32>(_wgslsmith_f_op_f32(1773f + 905f), _wgslsmith_f_op_f32(round(204f)), _wgslsmith_f_op_f32(select(-1825f, -2203f, false)), _wgslsmith_f_op_f32(-594f + 1059f))), 4294967295u, Struct_2(vec2<f32>(_wgslsmith_f_op_f32(ceil(819f)), _wgslsmith_f_op_f32(f32(-1f) * -937f)), !all(vec4<bool>(global0.x, false, arg_0, true)), countOneBits(2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(923f))), ~firstLeadingBit(vec4<i32>(1i, u_input.c.x, u_input.c.x, u_input.c.x))), true), Struct_3(all(vec2<bool>(any(vec3<bool>(false, true, true)), any(global0.yz))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(788f, 1975f, -1357f, 593f)))), _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_sub_u32(~u_input.a.x, 1u)), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-534f, -2515f))), any(select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, false, global0.x), false)), u_input.c.x, _wgslsmith_f_op_f32(step(-1251f, _wgslsmith_f_op_f32(step(1651f, 395f)))), ~vec4<i32>(-4151i, u_input.c.x, u_input.c.x, 2147483647i)), global0.x));
    global0 = !select(!select(!vec3<bool>(var_0.c.e, false, false), select(vec3<bool>(global0.x, arg_0, false), vec3<bool>(arg_0, var_0.b.a, false), false), !vec3<bool>(true, false, global0.x)), !(!(!vec3<bool>(true, true, arg_0))), any(vec2<bool>(all(vec3<bool>(false, arg_0, global0.x)), global0.x)));
    let var_1 = _wgslsmith_div_i32(~(-abs(u_input.d.x)), -40555i);
    global0 = select(vec3<bool>(true, false, false), !(!vec3<bool>(arg_0 && arg_0, arg_0, true)), true);
    let var_2 = var_0.c.b.ww;
    return vec2<bool>(all(vec3<bool>(false, false, true)), global0.x);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_5, arg_2: Struct_4) -> Struct_5 {
    let var_0 = arg_2.c;
    global0 = arg_1.e;
    let var_1 = select(!func_3(!(var_0.e & false)), select(select(arg_1.e.yz, !(!vec2<bool>(var_0.d.b, false)), vec2<bool>(!arg_1.e.x, var_0.d.b)), arg_1.e.xz, false), arg_1.e.xx);
    let var_2 = vec2<f32>(arg_2.a, arg_1.a.x);
    let var_3 = ~arg_1.c.e.wx;
    return arg_1;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_5, arg_2: i32) -> bool {
    var var_0 = arg_1.c.c;
    var_0 = _wgslsmith_dot_vec3_i32(u_input.d, select(vec3<i32>(abs(-5133i), arg_2, countOneBits(~u_input.d.x)), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(abs(arg_1.c.e.zwx), u_input.d), vec3<i32>(i32(-1i) * -2147483647i, arg_2, arg_2 ^ u_input.c.x)), !select(arg_1.e, arg_1.e, select(arg_1.e, vec3<bool>(true, arg_1.b, arg_1.c.b), true))));
    var var_1 = _wgslsmith_dot_vec3_u32(~(~firstTrailingBit(vec3<u32>(u_input.b.x, 4294967295u, 0u)) | _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.b.x, 59814u), vec3<u32>(u_input.b.x, u_input.a.x, u_input.b.x)), ~vec3<u32>(50949u, u_input.a.x, 58516u))), u_input.a);
    var_1 = u_input.a.x;
    var var_2 = _wgslsmith_sub_i32(u_input.d.x, _wgslsmith_mult_i32(17359i, arg_2));
    return arg_1.e.x;
}

fn func_1() -> Struct_1 {
    global0 = !vec3<bool>(func_4(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(818f, 1454f))), func_2(vec4<u32>(4294967295u, 0u, u_input.b.x, u_input.a.x), Struct_5(vec3<f32>(-268f, 2362f, 1459f), global0.x, Struct_2(vec2<f32>(-126f, 422f), global0.x, u_input.c.x, -178f, vec4<i32>(-24025i, u_input.c.x, 2147483647i, -2089i)), 787f, vec3<bool>(global0.x, true, true)), Struct_4(1000f, Struct_3(global0.x, vec4<f32>(485f, -739f, -868f, -822f), 8461u, Struct_2(vec2<f32>(462f, 363f), global0.x, -30696i, -101f, vec4<i32>(u_input.c.x, u_input.c.x, u_input.d.x, 0i)), false), Struct_3(global0.x, vec4<f32>(-1000f, 184f, -1000f, 595f), u_input.b.x, Struct_2(vec2<f32>(-298f, 1000f), true, 3936i, 661f, vec4<i32>(37459i, u_input.c.x, -1i, 2147483647i)), true))), abs(3496i)), !func_2(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x) | vec4<u32>(4294967295u, u_input.b.x, 1u, u_input.a.x), func_2(vec4<u32>(63804u, u_input.a.x, u_input.b.x, u_input.b.x), Struct_5(vec3<f32>(982f, -807f, 128f), true, Struct_2(vec2<f32>(796f, 1026f), false, u_input.c.x, 2206f, vec4<i32>(-16477i, u_input.c.x, u_input.c.x, u_input.c.x)), -883f, vec3<bool>(global0.x, false, true)), Struct_4(-601f, Struct_3(global0.x, vec4<f32>(679f, 226f, 825f, -796f), u_input.a.x, Struct_2(vec2<f32>(533f, 1278f), global0.x, u_input.c.x, -1065f, vec4<i32>(16598i, -1i, 963i, u_input.c.x)), global0.x), Struct_3(true, vec4<f32>(529f, -1224f, -797f, -754f), 0u, Struct_2(vec2<f32>(1000f, 1556f), true, u_input.d.x, 383f, vec4<i32>(u_input.d.x, u_input.d.x, 21453i, u_input.d.x)), global0.x))), Struct_4(1138f, Struct_3(false, vec4<f32>(-144f, 655f, 297f, -1030f), 0u, Struct_2(vec2<f32>(-1868f, 148f), true, 1i, -818f, vec4<i32>(u_input.c.x, 27482i, u_input.d.x, -1i)), true), Struct_3(true, vec4<f32>(567f, -455f, -1063f, -2472f), u_input.a.x, Struct_2(vec2<f32>(-1000f, 902f), false, 17459i, -2034f, vec4<i32>(u_input.d.x, 0i, 11077i, 1i)), global0.x))).e.x, all(vec2<bool>(true, any(vec4<bool>(global0.x, global0.x, true, global0.x)))));
    global0 = vec3<bool>(true, true, all(!(!vec2<bool>(false, global0.x))));
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 2460f)) * vec2<f32>(-1008f, -149f)) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1741f, 387f), vec2<f32>(961f, -997f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(322f, -1548f) * vec2<f32>(871f, 688f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1879f + -985f), _wgslsmith_f_op_f32(max(-2024f, -1266f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(482f)))))), vec2<bool>(global0.x, global0.x)));
    var var_1 = func_2(_wgslsmith_add_vec4_u32(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 50473u, u_input.b.x, u_input.b.x), vec4<u32>(1u, u_input.a.x, u_input.b.x, 0u))), ~(~(vec4<u32>(u_input.b.x, 58396u, 4359u, u_input.b.x) << (vec4<u32>(u_input.b.x, 9479u, 50298u, 0u) % vec4<u32>(32u))))), Struct_5(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, -864f)) - -786f), _wgslsmith_f_op_f32(-1716f * _wgslsmith_f_op_f32(781f - var_0.x)), _wgslsmith_f_op_f32(sign(var_0.x))), !(!global0.x) || true, func_2(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 18554u), vec4<u32>(18022u, 0u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.b.x))), func_2(vec4<u32>(0u, u_input.b.x, u_input.a.x, u_input.b.x) | vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, u_input.a.x), Struct_5(vec3<f32>(-1379f, 490f, -988f), false, Struct_2(var_0, global0.x, u_input.d.x, var_0.x, vec4<i32>(0i, -29924i, 0i, 1i)), var_0.x, vec3<bool>(global0.x, false, global0.x)), Struct_4(var_0.x, Struct_3(false, vec4<f32>(556f, var_0.x, var_0.x, -1073f), u_input.b.x, Struct_2(vec2<f32>(-1842f, -957f), global0.x, u_input.c.x, 526f, vec4<i32>(u_input.d.x, u_input.d.x, -2147483647i, u_input.d.x)), false), Struct_3(global0.x, vec4<f32>(-800f, var_0.x, var_0.x, var_0.x), u_input.b.x, Struct_2(var_0, true, u_input.c.x, var_0.x, vec4<i32>(u_input.d.x, u_input.c.x, -23292i, -15458i)), false))), Struct_4(-1157f, Struct_3(false, vec4<f32>(var_0.x, -512f, -317f, var_0.x), u_input.b.x, Struct_2(vec2<f32>(-1247f, var_0.x), true, 0i, var_0.x, vec4<i32>(u_input.d.x, 2147483647i, u_input.c.x, u_input.d.x)), true), Struct_3(true, vec4<f32>(var_0.x, var_0.x, 1392f, 915f), 4294967295u, Struct_2(vec2<f32>(var_0.x, -321f), true, -1i, var_0.x, vec4<i32>(-2147483647i, -1i, 30510i, -17583i)), global0.x))).c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x - 201f))) + func_2(reverseBits(vec4<u32>(16701u, 4294967295u, u_input.b.x, u_input.b.x)), Struct_5(vec3<f32>(var_0.x, var_0.x, var_0.x), global0.x, Struct_2(var_0, true, 21216i, 193f, vec4<i32>(u_input.c.x, 5598i, 36930i, -2147483647i)), var_0.x, vec3<bool>(true, global0.x, true)), Struct_4(1000f, Struct_3(false, vec4<f32>(668f, -1658f, var_0.x, 668f), 41926u, Struct_2(vec2<f32>(var_0.x, -940f), global0.x, u_input.c.x, 1445f, vec4<i32>(-1i, u_input.c.x, 1i, -4305i)), true), Struct_3(true, vec4<f32>(-459f, -501f, -2066f, 1958f), u_input.a.x, Struct_2(var_0, true, 14444i, -1761f, vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 18034i)), true))).c.a.x), func_2(_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(u_input.b.x, 1u, 4294967295u, u_input.b.x)), vec4<u32>(0u, u_input.a.x, u_input.b.x, u_input.b.x)), Struct_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(420f, var_0.x, -591f) * vec3<f32>(2053f, var_0.x, -339f)), u_input.a.x < u_input.b.x, func_2(vec4<u32>(4294967295u, 4294967295u, 48222u, 4294967295u), Struct_5(vec3<f32>(var_0.x, 1000f, 1110f), global0.x, Struct_2(var_0, true, u_input.d.x, 1000f, vec4<i32>(u_input.c.x, 25933i, u_input.c.x, 0i)), 403f, vec3<bool>(true, global0.x, global0.x)), Struct_4(var_0.x, Struct_3(true, vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), 4294967295u, Struct_2(vec2<f32>(-526f, var_0.x), false, -23907i, var_0.x, vec4<i32>(u_input.c.x, 1i, u_input.d.x, u_input.c.x)), global0.x), Struct_3(global0.x, vec4<f32>(353f, -239f, 1135f, var_0.x), 79530u, Struct_2(var_0, false, u_input.d.x, -205f, vec4<i32>(u_input.d.x, u_input.d.x, -22617i, 6286i)), global0.x))).c, _wgslsmith_f_op_f32(var_0.x * 1842f), vec3<bool>(global0.x, global0.x, false)), Struct_4(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)), Struct_3(global0.x, vec4<f32>(var_0.x, -2155f, -2981f, -3186f), u_input.a.x, Struct_2(var_0, global0.x, u_input.d.x, var_0.x, vec4<i32>(-25439i, u_input.d.x, u_input.d.x, 14931i)), global0.x), Struct_3(global0.x, vec4<f32>(var_0.x, var_0.x, 680f, -237f), 0u, Struct_2(var_0, false, 1i, -1091f, vec4<i32>(u_input.d.x, u_input.d.x, 43485i, u_input.d.x)), false))).e), Struct_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1105f, _wgslsmith_f_op_f32(-1392f * -1104f), !global0.x)))), Struct_3(1i == u_input.d.x, vec4<f32>(_wgslsmith_f_op_f32(floor(-1205f)), var_0.x, _wgslsmith_f_op_f32(abs(166f)), 1180f), u_input.b.x, Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, -834f), var_0), any(vec4<bool>(false, true, false, global0.x)), 2147483647i, _wgslsmith_f_op_f32(abs(var_0.x)), vec4<i32>(u_input.d.x, 21518i, u_input.d.x, u_input.c.x)), all(global0.zz) | true), Struct_3(global0.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1557f, -338f, -1142f)) - vec4<f32>(1231f, var_0.x, 2139f, var_0.x)), firstTrailingBit(countOneBits(0u)), Struct_2(var_0, func_3(global0.x).x, _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(27803i, 12115i, -2147483647i)), var_0.x, _wgslsmith_add_vec4_i32(vec4<i32>(1i, 2147483647i, -2147483647i, u_input.c.x), vec4<i32>(u_input.c.x, u_input.d.x, u_input.d.x, u_input.c.x))), global0.x)));
    var var_2 = ~(i32(-1i) * -34955i);
    return Struct_1(u_input.b.x, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !select(!vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, !select(false, global0.x, global0.x), true), !(!(!vec3<bool>(true, global0.x, global0.x))));
    let var_0 = func_1();
    let var_1 = Struct_1(_wgslsmith_add_u32(var_0.b.x, 0u), firstLeadingBit(u_input.a));
    var var_2 = 0u;
    let var_3 = 4294967295u;
    let var_4 = 0u;
    var var_5 = ~110i;
    global0 = vec3<bool>(global0.x, ~_wgslsmith_mod_u32(firstLeadingBit(u_input.a.x), 22290u) < _wgslsmith_mod_u32(var_0.b.x, 52471u), select(global0.x, true, global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(var_0.b.x, var_4), var_3), firstLeadingBit(reverseBits(var_1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-986f)) + _wgslsmith_f_op_f32(f32(-1f) * -384f)), vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 1u, 1u), vec4<u32>(0u, 0u, var_0.a, 1u))), _wgslsmith_dot_vec2_u32((var_1.b.xz >> (vec2<u32>(18819u, 45656u) % vec2<u32>(32u))) ^ _wgslsmith_mult_vec2_u32(var_1.b.yz, var_1.b.yx), _wgslsmith_sub_vec2_u32(u_input.a.zx, var_1.b.yx))), ~(u_input.d.x ^ firstLeadingBit(_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(u_input.c.x, u_input.d.x, u_input.c.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-859f, 563f, 187f, 1768f) * vec4<f32>(197f, 743f, -286f, 974f)), vec4<f32>(-1130f, -478f, 1388f, 1000f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -312f), _wgslsmith_f_op_f32(trunc(-1411f)), _wgslsmith_f_op_f32(sign(122f)), 1287f))));
}

