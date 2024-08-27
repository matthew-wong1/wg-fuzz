struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_3(219f, 1i, Struct_1(false, vec2<u32>(1u, 1u), -26746i, vec3<u32>(4294967295u, 21130u, 0u), vec4<u32>(46247u, 78837u, 1u, 84956u)), Struct_1(false, vec2<u32>(5021u, 4294967295u), -1i, vec3<u32>(1u, 4294967295u, 0u), vec4<u32>(1u, 0u, 73060u, 59985u)), vec2<u32>(0u, 0u)));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> vec3<bool> {
    global0 = Struct_5(global0.a);
    global0 = Struct_5(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1125f))) + -595f), _wgslsmith_mult_i32(-arg_0.c.c, ~34607i), Struct_1(_wgslsmith_dot_vec3_i32(u_input.b, u_input.b) <= -26905i, ~abs(u_input.c.xz), -2147483647i, select(firstTrailingBit(vec3<u32>(106861u, 34144u, arg_0.b.d.x)), u_input.c, select(vec3<bool>(global0.a.d.a, false, true), vec3<bool>(arg_0.c.a, false, global0.a.c.a), arg_0.a)), global0.a.c.e), Struct_1(select(true, any(vec3<bool>(true, true, false)), select(true, global0.a.d.a, global0.a.c.a)), vec2<u32>(44636u, global0.a.d.b.x) | vec2<u32>(u_input.c.x, 5156u), 1i, _wgslsmith_mult_vec3_u32(~u_input.c, vec3<u32>(0u, 0u, global0.a.c.d.x) & arg_0.c.e.xxz), vec4<u32>(countOneBits(arg_0.c.b.x), firstTrailingBit(0u), global0.a.e.x ^ u_input.c.x, 55858u)), ~vec2<u32>(4294967295u, ~u_input.d)));
    global0 = Struct_5(global0.a);
    global0 = Struct_5(Struct_3(-124f, global0.a.d.c | min(i32(-1i) * -19693i, min(-12030i, -4182i)), Struct_1(any(!vec2<bool>(true, global0.a.d.a)), u_input.c.zz | ~vec2<u32>(u_input.d, 0u), _wgslsmith_mod_i32(u_input.b.x, _wgslsmith_add_i32(u_input.a.x, u_input.b.x)), vec3<u32>(51179u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.e.x, global0.a.d.e.x), vec2<u32>(u_input.c.x, u_input.d)), firstLeadingBit(global0.a.c.b.x)), ~vec4<u32>(global0.a.e.x, 4294967295u, 1u, global0.a.e.x)), Struct_1(global0.a.b <= global0.a.d.c, ~(~vec2<u32>(48550u, u_input.d)), _wgslsmith_mult_i32(global0.a.d.c << (96760u % 32u), ~(-1i)), vec3<u32>(global0.a.e.x, _wgslsmith_clamp_u32(4294967295u, global0.a.e.x, u_input.d), global0.a.c.b.x & global0.a.c.b.x), vec4<u32>(arg_0.b.b.x, u_input.d, arg_0.c.b.x, 24195u) | vec4<u32>(0u, 13471u, 26505u, global0.a.d.d.x)), vec2<u32>(~_wgslsmith_clamp_u32(arg_0.c.e.x, 83053u, global0.a.d.e.x), ~63084u ^ countOneBits(u_input.c.x))));
    let var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(~1i, u_input.b.x), vec2<i32>(27471i, 2147483647i), -(u_input.b.xz & (u_input.b.yx ^ u_input.a))) ^ ~abs(vec2<i32>(i32(-1i) * -27187i, u_input.a.x));
    return !vec3<bool>(!(!select(arg_0.c.a, true, arg_0.b.a)), -max(global0.a.b, global0.a.c.c) == u_input.a.x, any(select(select(vec3<bool>(arg_0.c.a, global0.a.d.a, true), vec3<bool>(false, global0.a.d.a, true), vec3<bool>(arg_0.b.a, arg_0.c.a, false)), !vec3<bool>(true, arg_0.b.a, true), all(vec4<bool>(arg_0.c.a, arg_0.b.a, global0.a.d.a, arg_0.a)))));
}

fn func_2() -> Struct_1 {
    var var_0 = global0.a.e.x;
    var var_1 = global0.a.a;
    let var_2 = vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.d, _wgslsmith_dot_vec2_u32(min(global0.a.e, u_input.c.yy), _wgslsmith_add_vec2_u32(u_input.c.yx, vec2<u32>(4294967295u, u_input.c.x))), _wgslsmith_mod_u32(_wgslsmith_sub_u32(global0.a.d.e.x, 4294967295u), ~4294967295u), ~(~global0.a.c.d.x)), ~_wgslsmith_add_vec4_u32(vec4<u32>(12960u, 1u, 5367u, u_input.c.x), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 0u, 17848u, global0.a.d.b.x), vec4<u32>(u_input.d, global0.a.d.d.x, global0.a.c.e.x, 0u)))), u_input.d);
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.a - 1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-591f * global0.a.a) * -590f))));
    var var_3 = 26664u;
    return Struct_1(all(func_3(Struct_2(false, global0.a.c, global0.a.d))) || true, _wgslsmith_div_vec2_u32(vec2<u32>(55461u, _wgslsmith_mod_u32(global0.a.e.x, u_input.d | 0u)), select(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(16595u, global0.a.c.e.x), vec2<u32>(var_2.x, global0.a.d.d.x)), min(vec2<u32>(26758u, 4294967295u), vec2<u32>(8188u, 4294967295u))), ~u_input.c.zx, vec2<bool>(any(vec2<bool>(true, false)), global0.a.c.a | global0.a.d.a))), ~_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), vec3<u32>(~52023u, ~countOneBits(min(28889u, 42888u)), var_2.x), vec4<u32>(countOneBits(_wgslsmith_add_u32(4294967295u, global0.a.e.x) >> (var_2.x % 32u)), u_input.d, 31565u, var_2.x));
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: bool) -> Struct_1 {
    return func_2();
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_5) -> Struct_3 {
    global0 = Struct_5(global0.a);
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-1149f + -515f), func_1(!select(func_3(Struct_2(true, arg_1, Struct_1(false, vec2<u32>(1u, 4294967295u), arg_0, u_input.c, arg_2.a.c.e))).xy, func_3(Struct_2(arg_2.a.c.a, Struct_1(global0.a.d.a, arg_1.d.xz, arg_1.c, vec3<u32>(32550u, global0.a.c.b.x, 17221u), global0.a.c.e), Struct_1(global0.a.d.a, vec2<u32>(arg_2.a.d.e.x, 4294967295u), arg_2.a.c.c, vec3<u32>(1u, 1u, arg_1.e.x), arg_2.a.d.e))).xx, func_3(Struct_2(arg_2.a.d.a, arg_2.a.c, global0.a.c)).zy), _wgslsmith_dot_vec4_i32(select(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0, 12168i, 5899i, arg_2.a.c.c), vec4<i32>(arg_1.c, 16886i, u_input.a.x, u_input.b.x)), ~vec4<i32>(-2147483647i, -4300i, arg_2.a.d.c, global0.a.b), select(vec4<bool>(global0.a.c.a, arg_2.a.d.a, true, global0.a.c.a), vec4<bool>(arg_2.a.d.a, arg_1.a, arg_1.a, true), false)), _wgslsmith_mod_vec4_i32(vec4<i32>(57292i, u_input.b.x, arg_0, 30549i) >> (vec4<u32>(global0.a.d.d.x, u_input.c.x, global0.a.d.d.x, 4828u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(23672i, 8308i, arg_1.c, 2147483647i), vec4<i32>(8707i, -41456i, -1i, 7208i)))), global0.a.d.a).c, func_1(vec2<bool>(true, false), 1i, select(any(!vec4<bool>(arg_1.a, false, arg_2.a.d.a, global0.a.c.a)), func_3(Struct_2(global0.a.d.a, arg_2.a.c, arg_2.a.d)).x, !func_1(vec2<bool>(global0.a.d.a, false), 17744i, global0.a.d.a).a)), func_1(!func_3(Struct_2(arg_1.a, Struct_1(arg_1.a, vec2<u32>(u_input.c.x, 15786u), arg_0, u_input.c, arg_1.e), arg_2.a.c)).zz, global0.a.c.c, any(func_3(Struct_2(arg_2.a.d.a, arg_2.a.c, arg_2.a.c)))), ~_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(u_input.d, arg_2.a.c.b.x, 48141u), _wgslsmith_mod_u32(arg_2.a.e.x, 25612u)), ~arg_2.a.c.b));
    global0 = Struct_5(arg_2.a);
    return Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(arg_2.a.a, arg_2.a.a)))), var_0.a, all(vec4<bool>(true, true, true, true)))), ~(~(countOneBits(-9297i) >> (reverseBits(arg_1.e.x) % 32u))), Struct_1(true, func_1(vec2<bool>(true, true), _wgslsmith_sub_i32(firstLeadingBit(global0.a.b), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -2388i, -7691i), vec3<i32>(72701i, var_0.c.c, 59637i))), arg_2.a.d.a).d.xz, -22772i, _wgslsmith_sub_vec3_u32(max(~vec3<u32>(u_input.c.x, var_0.e.x, arg_1.d.x), var_0.d.e.xyx << (vec3<u32>(arg_2.a.d.d.x, 53990u, var_0.d.e.x) % vec3<u32>(32u))), vec3<u32>(4294967295u, _wgslsmith_mod_u32(arg_1.b.x, u_input.c.x), u_input.d ^ u_input.d)), vec4<u32>(43966u, arg_1.b.x, var_0.c.d.x, 4434u)), Struct_1(arg_1.a, arg_1.e.zw, 2147483647i, firstLeadingBit(vec3<u32>(_wgslsmith_mod_u32(9555u, 4294967295u), arg_1.b.x, ~var_0.c.d.x)), vec4<u32>(1u, _wgslsmith_mult_u32(36894u, var_0.d.d.x) << (1u % 32u), 29223u, _wgslsmith_clamp_u32(4294967295u, _wgslsmith_sub_u32(arg_1.e.x, 0u), countOneBits(var_0.d.e.x)))), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global0.a.d.b.x, 28697u), vec2<u32>(45574u, 72068u)), vec2<u32>(global0.a.c.e.x, u_input.c.x), ~vec2<u32>(1u, 38647u)) & vec2<u32>(u_input.d, 4294967295u));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: vec3<bool>) -> Struct_3 {
    global0 = arg_0;
    var var_0 = -1275f;
    let var_1 = countOneBits(select(global0.a.d.d.zx, ~vec2<u32>(u_input.d, global0.a.d.b.x) << (func_4(u_input.a.x, Struct_1(false, vec2<u32>(4294967295u, global0.a.c.e.x), global0.a.b, global0.a.d.d, arg_1.d.e), arg_0).c.b % vec2<u32>(32u)), true) & (~(~arg_0.a.c.b) ^ u_input.c.zz));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a)))) - _wgslsmith_f_op_f32(max(arg_0.a.a, global0.a.a)));
    var var_2 = func_4(30819i, arg_0.a.d, arg_0).d;
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -888f)), max(1i, -global0.a.d.c), Struct_1(false, select(_wgslsmith_mod_vec2_u32(global0.a.c.e.zw, vec2<u32>(35246u, 4294967295u)), ~reverseBits(var_1), arg_3.xx), ~(-2147483647i), abs(vec3<u32>(4294967295u, 4294967295u, arg_1.d.b.x)) ^ _wgslsmith_add_vec3_u32(min(global0.a.d.e.zww, vec3<u32>(u_input.d, 4294967295u, 58907u)), ~var_2.e.xxz), vec4<u32>(~1u, ~1u, _wgslsmith_dot_vec2_u32(arg_0.a.c.b, vec2<u32>(var_1.x, 118164u) & vec2<u32>(var_1.x, u_input.c.x)), select(20262u, var_1.x, true) >> (0u % 32u))), func_2(), reverseBits(vec2<u32>(~(~0u), 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_5(func_5(Struct_5(func_4(~16270i, func_1(vec2<bool>(global0.a.d.a, global0.a.d.a), u_input.a.x, global0.a.d.a), Struct_5(Struct_3(global0.a.a, u_input.b.x, global0.a.c, global0.a.d, vec2<u32>(23650u, global0.a.c.b.x))))), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.a + global0.a.a) + _wgslsmith_f_op_f32(trunc(146f))), u_input.a.x, global0.a.c, global0.a.c, _wgslsmith_mult_vec2_u32(u_input.c.yz, _wgslsmith_mod_vec2_u32(global0.a.e, vec2<u32>(0u, 4294967295u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(434f, 959f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.a, -685f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(525f, 1926f))))), select(!(!vec3<bool>(true, global0.a.d.a, global0.a.d.a)), !select(vec3<bool>(true, global0.a.c.a, false), vec3<bool>(global0.a.c.a, global0.a.d.a, global0.a.c.a), vec3<bool>(true, false, global0.a.d.a)), global0.a.d.a)));
    global0 = Struct_5(func_5(Struct_5(Struct_3(_wgslsmith_f_op_f32(floor(global0.a.a)), -u_input.a.x, Struct_1(false, u_input.c.xy, 1i, u_input.c, global0.a.c.e), global0.a.d, firstLeadingBit(vec2<u32>(44483u, 33691u)))), Struct_3(global0.a.a, _wgslsmith_mod_i32(35117i, -global0.a.c.c), func_4(_wgslsmith_mult_i32(u_input.b.x, 2147483647i), global0.a.d, Struct_5(global0.a)).d, Struct_1(true, global0.a.d.d.yz << (global0.a.c.b % vec2<u32>(32u)), -2147483647i, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, u_input.c.x, 0u), u_input.c), ~vec4<u32>(0u, u_input.d, global0.a.c.b.x, u_input.c.x)), _wgslsmith_sub_vec2_u32(~vec2<u32>(global0.a.c.e.x, 0u), vec2<u32>(global0.a.e.x, 10356u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.a.a, global0.a.a), vec2<f32>(680f, global0.a.a))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(603f, global0.a.a)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.a, global0.a.a)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1634f, global0.a.a), vec2<f32>(global0.a.a, -788f))))), !(!select(vec3<bool>(false, global0.a.d.a, true), vec3<bool>(true, false, global0.a.d.a), global0.a.d.a))));
    var var_0 = Struct_2(!global0.a.c.a, global0.a.d, func_2());
    var var_1 = Struct_4(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(var_0.b.d.yy, global0.a.c.e.wz) & var_0.c.d.x, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(var_0.c.e, var_0.c.e), var_0.b.e.x)));
    var var_2 = global0.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.c.e.wyw, ~vec4<u32>(~(~57947u), _wgslsmith_add_u32(_wgslsmith_mod_u32(var_0.b.b.x, var_0.b.d.x), var_0.b.d.x), u_input.c.x, ~firstLeadingBit(3005u)), ~(~vec3<i32>(max(45901i, u_input.a.x), u_input.a.x, 30320i)), vec2<i32>(func_5(Struct_5(Struct_3(global0.a.a, -2147483647i, Struct_1(global0.a.c.a, vec2<u32>(u_input.d, 14802u), -2147483647i, u_input.c, var_0.b.e), global0.a.c, vec2<u32>(58576u, u_input.c.x))), func_5(Struct_5(Struct_3(-1740f, global0.a.d.c, Struct_1(global0.a.c.a, vec2<u32>(56113u, 0u), -30446i, var_0.b.e.xyy, var_0.b.e), Struct_1(true, global0.a.c.b, 3749i, vec3<u32>(0u, var_0.c.e.x, global0.a.d.d.x), var_0.c.e), vec2<u32>(1u, var_1.a))), global0.a, vec2<f32>(global0.a.a, -660f), func_3(Struct_2(var_0.a, Struct_1(false, global0.a.d.d.xz, global0.a.b, vec3<u32>(49687u, 0u, u_input.d), vec4<u32>(55652u, global0.a.c.d.x, var_0.b.e.x, var_0.b.e.x)), global0.a.d))), vec2<f32>(-782f, -294f), vec3<bool>(var_0.a, select(global0.a.d.a, false, global0.a.d.a), true)).d.c, u_input.a.x));
}

