struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: f32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: bool,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: Struct_4,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a, arg_0.b.xww, vec3<i32>(u_input.a.x, 0i, arg_0.b.x)), select(min(u_input.a, vec3<i32>(arg_0.b.x, 2147483647i, 1800i)), firstLeadingBit(vec3<i32>(arg_0.b.x, u_input.a.x, u_input.a.x)), true)), _wgslsmith_mod_i32(_wgslsmith_sub_i32(0i, _wgslsmith_add_i32(-5781i, u_input.a.x)), u_input.a.x << (_wgslsmith_mult_u32(u_input.b, 0u) % 32u)), arg_0.b.x | -max(344i, 36998i)), abs(vec4<i32>(countOneBits(_wgslsmith_mod_i32(arg_0.b.x, -1i)), 23789i, _wgslsmith_clamp_i32(18349i, ~arg_0.b.x, u_input.a.x & arg_0.b.x), ~(-2147483647i))), arg_0.b);
    let var_1 = arg_0;
    global0 = var_1.d.x;
    let var_2 = Struct_5(Struct_2(arg_0.a, vec4<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.x, 0i, var_1.b.x), var_0.zxy), 46275i, countOneBits(8400i)) ^ min(arg_0.b, vec4<i32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, var_1.b.x) << (vec4<u32>(1u, u_input.c.x, 4294967295u, 20199u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-194f, arg_0.c, true)) * _wgslsmith_f_op_f32(779f - arg_0.d.x)), vec2<f32>(arg_0.d.x, -754f)), ~firstLeadingBit(~arg_0.b.x), Struct_4(1i, !select(vec4<bool>(false, true, var_1.a.x, false), arg_0.a, !arg_0.a), Struct_2(vec4<bool>(true, u_input.c.x >= 2966u, arg_0.a.x, true), var_1.b, _wgslsmith_f_op_f32(arg_0.d.x * -726f), arg_0.d)), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.c.wyw >> (vec3<u32>(u_input.d.x, 14007u, u_input.b) % vec3<u32>(32u)), u_input.c.yyy & u_input.d.xyw), 4294967295u, u_input.b << ((u_input.b << (u_input.c.x % 32u)) % 32u), u_input.d.x), ~abs(~u_input.d)));
    var_0 = var_1.b;
    return _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(arg_0.d.x + 1028f));
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: vec2<f32>, arg_3: i32) -> f32 {
    global0 = -785f;
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(vec4<bool>(true, true, true, true), abs(vec4<i32>(arg_3, arg_3, 2147483647i, -61309i)), _wgslsmith_f_op_f32(arg_2.x + arg_2.x), vec2<f32>(684f, arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(512f + arg_0.x)))), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(trunc(1153f))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -574f, 201f, arg_0.x))) + vec4<f32>(_wgslsmith_f_op_f32(arg_2.x * arg_0.x), _wgslsmith_f_op_f32(arg_2.x + -1771f), _wgslsmith_f_op_f32(1000f - arg_1), _wgslsmith_f_op_f32(f32(-1f) * -1800f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1, _wgslsmith_div_f32(arg_2.x, arg_2.x), _wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(-180f - -1101f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, _wgslsmith_div_f32(-917f, arg_0.x), _wgslsmith_f_op_f32(var_0.x * 964f), _wgslsmith_f_op_f32(-var_0.x)))));
    var var_2 = u_input.d.wyx;
    var_2 = vec3<u32>(reverseBits(_wgslsmith_dot_vec2_u32(u_input.d.xw, ~var_2.yz << (_wgslsmith_clamp_vec2_u32(var_2.zz, var_2.xy, vec2<u32>(u_input.d.x, 1u)) % vec2<u32>(32u)))), ~4294967295u ^ _wgslsmith_dot_vec2_u32(~(~u_input.d.zx), ~var_2.yx), _wgslsmith_mult_u32(~(_wgslsmith_dot_vec4_u32(u_input.c, u_input.d) ^ _wgslsmith_dot_vec2_u32(var_2.zx, vec2<u32>(u_input.c.x, u_input.c.x))), u_input.b));
    return 390f;
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(step(-1834f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-534f)), _wgslsmith_f_op_f32(-432f * -841f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-540f - -709f)), true)))));
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(349f, -150f)), -402f, _wgslsmith_f_op_vec2_f32(vec2<f32>(1090f, 494f) + vec2<f32>(1028f, -814f)), -u_input.a.x)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(Struct_2(vec4<bool>(false, true, false, true), vec4<i32>(u_input.a.x, u_input.a.x, 7860i, u_input.a.x), -2088f, vec2<f32>(-1841f, -422f))))))) - _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-215f)))))));
    let var_0 = ~countOneBits(abs(-vec2<i32>(1i, 29929i)));
    global0 = -940f;
    var var_1 = u_input.b;
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 983f, 672f, -1768f), vec4<f32>(-883f, 1698f, 479f, -1769f), vec4<bool>(false, false, true, false))))), vec4<f32>(_wgslsmith_f_op_f32(237f - 1215f), 535f, -452f, 317f)) - vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1607f + -1507f), _wgslsmith_f_op_f32(func_3(Struct_2(vec4<bool>(false, true, true, false), vec4<i32>(u_input.a.x, u_input.a.x, var_0.x, 1i), 1000f, vec2<f32>(827f, 786f)))))), _wgslsmith_f_op_f32(step(1256f, 357f)), _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(610f))))), true, u_input.c.x, _wgslsmith_add_vec3_u32(u_input.c.wxz, _wgslsmith_div_vec3_u32(u_input.d.yyy, min(vec3<u32>(u_input.c.x, u_input.b, 17755u), vec3<u32>(45556u, u_input.b, u_input.c.x)) & max(vec3<u32>(47879u, 34899u, u_input.d.x), u_input.c.www))), ~((var_0.x << (1u % 32u)) & ~(~var_0.x)));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_5 {
    global0 = _wgslsmith_f_op_f32(483f * -248f);
    var var_0 = u_input.c;
    var_0 = _wgslsmith_mult_vec4_u32(select(firstTrailingBit(vec4<u32>(u_input.d.x, 1130u, 56274u, u_input.b) >> (vec4<u32>(u_input.b, 66740u, 22805u, 4294967295u) % vec4<u32>(32u))) & min(~vec4<u32>(var_0.x, 11305u, 0u, 44351u), u_input.d), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(firstLeadingBit(u_input.d), u_input.d), _wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(arg_2.d.x, 265u, 19563u, 4294967295u)), vec4<u32>(27682u, 0u, arg_2.d.x, 0u))), false), ~max(firstLeadingBit(reverseBits(u_input.c)), u_input.c));
    var var_1 = vec4<bool>(arg_2.b, any(select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, arg_2.b, true), arg_2.b), vec4<bool>(false, true, arg_2.b, arg_0.x), vec4<bool>(false, arg_0.x, true, false)), select(vec4<bool>(arg_2.b, arg_0.x, arg_0.x, arg_2.b), vec4<bool>(false, false, arg_0.x, arg_0.x), any(arg_0.yy)), arg_2.b)), true, true);
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a.x, arg_2.a.x) - _wgslsmith_f_op_f32(arg_2.a.x + arg_3.x))), arg_3.x)));
    return Struct_5(Struct_2(vec4<bool>(!all(vec4<bool>(true, arg_2.b, true, false)), arg_2.b, !(arg_3.x == arg_3.x), any(select(vec2<bool>(var_1.x, arg_2.b), arg_0.zx, var_1.xw))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(36697i, arg_1.x, u_input.a.x, -39102i), vec4<i32>(arg_1.x, 2147483647i, 3967i, 2147483647i)), -1420f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.a.zy) * vec2<f32>(-1076f, arg_2.a.x)))), -18520i, Struct_4(~abs(47832i), !vec4<bool>(true, 308i >= arg_2.e, var_1.x, arg_2.b), Struct_2(select(vec4<bool>(var_1.x, false, var_1.x, arg_0.x), !vec4<bool>(true, false, arg_0.x, var_1.x), all(vec4<bool>(false, false, arg_2.b, true))), -select(vec4<i32>(0i, 1i, 53424i, arg_2.e), vec4<i32>(9130i, arg_2.e, u_input.a.x, 0i), true), arg_3.x, vec2<f32>(_wgslsmith_f_op_f32(825f + var_2.x), _wgslsmith_f_op_f32(arg_2.a.x + arg_3.x)))), ~(~arg_2.c));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: Struct_5) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-471f, 318f)));
    var var_1 = arg_2.c.c.a.wz;
    var var_2 = ~(~(42252u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(77695u, u_input.d.x, u_input.d.x), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 141659u, 23266u), u_input.c.xzz)) % 32u)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.a.d.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-162f)), _wgslsmith_f_op_f32(-arg_2.a.c))))), any(!arg_2.c.b.wzw))) * arg_1.a.d.x);
    var_2 = ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(4294967295u, func_4(vec3<bool>(true, false, arg_0.x), ~vec3<i32>(arg_1.c.a, 34003i, 6248i), func_1(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.c, arg_2.c.c.c, arg_1.c.c.d.x))).d, firstLeadingBit(arg_2.d)), firstLeadingBit(arg_2.d));
    return Struct_1(vec4<f32>(arg_2.a.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.c.d.x)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(848f - -230f), _wgslsmith_div_f32(1158f, -740f)))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(953f, arg_2.c.c.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1557f), _wgslsmith_f_op_f32(arg_2.c.c.d.x * arg_2.a.c)), vec2<f32>(-382f, arg_2.c.c.c), ~(-1i))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.a.c, -234f), arg_1.a.d, arg_2.a.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(942f)), arg_1.c.c.d.x), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(arg_1.c.c.d)))), _wgslsmith_mod_i32(abs(-2208i), _wgslsmith_add_i32(41164i, 70610i))))), arg_1.a.a.x, arg_1.d, vec3<u32>(u_input.b, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.d, arg_1.d, u_input.b, arg_2.d), u_input.c), ~u_input.d.x, _wgslsmith_add_u32(arg_2.d, 1u)) >> (~_wgslsmith_add_u32(arg_2.d, 2011u) % 32u), _wgslsmith_add_u32(4294967295u, ~arg_2.d | 87257u)), arg_2.c.a);
}

fn func_6(arg_0: Struct_1, arg_1: f32) -> f32 {
    var var_0 = func_4(!(!vec3<bool>(arg_0.b, !arg_0.b, true & arg_0.b)), vec3<i32>(arg_0.e, 13630i, arg_0.e), arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0.a.zwy), _wgslsmith_f_op_vec3_f32(abs(arg_0.a.wwx)), vec3<bool>(true, arg_0.b, true))))))).c.c;
    var var_1 = func_5(vec2<bool>(select(arg_0.b, arg_0.b, arg_0.b), true), func_4(var_0.a.yyw, _wgslsmith_sub_vec3_i32(~_wgslsmith_clamp_vec3_i32(var_0.b.xxw, var_0.b.wyz, u_input.a), ~(vec3<i32>(1i, 1i, 1i) & var_0.b.xwx)), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.a.x, -394f, var_0.c, -462f))), _wgslsmith_div_vec4_f32(arg_0.a, vec4<f32>(-819f, var_0.c, 152f, 1195f))), true, arg_0.c, reverseBits(firstTrailingBit(vec3<u32>(arg_0.d.x, arg_0.d.x, 14937u))), _wgslsmith_clamp_i32(arg_0.e | var_0.b.x, min(u_input.a.x, u_input.a.x), 1i)), arg_0.a.yxy), Struct_5(Struct_2(!var_0.a, vec4<i32>(_wgslsmith_div_i32(u_input.a.x, var_0.b.x), ~35211i, 11881i, -2147483647i), arg_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-851f, arg_1) - vec2<f32>(138f, 1396f)) - arg_0.a.wy)), ~(_wgslsmith_clamp_i32(u_input.a.x, -2147483647i, 9499i) | max(u_input.a.x, var_0.b.x)), Struct_4(func_4(var_0.a.zwy, var_0.b.xwz, Struct_1(arg_0.a, var_0.a.x, u_input.c.x, vec3<u32>(51903u, 0u, u_input.d.x), -7671i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 141f, -965f))).b, select(var_0.a, vec4<bool>(true, var_0.a.x, var_0.a.x, arg_0.b), true), Struct_2(!var_0.a, vec4<i32>(arg_0.e, u_input.a.x, -29939i, arg_0.e), _wgslsmith_f_op_f32(floor(arg_1)), var_0.d)), ~(~_wgslsmith_clamp_u32(u_input.c.x, u_input.b, arg_0.d.x))));
    let var_2 = Struct_4(-35598i, vec4<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -310f) < var_1.a.x, !any(vec2<bool>(false, false)), !select(true, true, true)), func_4(var_0.a.zzx, u_input.a, func_1(), vec3<f32>(_wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(-138f - _wgslsmith_f_op_f32(select(arg_0.a.x, 517f, false))), _wgslsmith_f_op_f32(sign(918f)))).a);
    let var_3 = Struct_2(func_4(!vec3<bool>(arg_0.b, var_1.b | true, arg_0.b | var_1.b), ~vec3<i32>(countOneBits(-8412i), func_5(var_0.a.zy, Struct_5(var_2.c, var_2.c.b.x, Struct_4(24209i, var_2.c.a, Struct_2(var_2.c.a, vec4<i32>(u_input.a.x, -31899i, -18958i, 0i), arg_0.a.x, var_1.a.wx)), arg_0.c), Struct_5(var_2.c, -5124i, var_2, arg_0.d.x)).e, -1i), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.a * var_1.a) - arg_0.a), !func_1().b, 42504u, max(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 1u, 1u), vec3<u32>(var_1.c, u_input.b, u_input.b)), countOneBits(var_1.d)), 1i), arg_0.a.yww).c.b, _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(~reverseBits(vec4<i32>(-52789i, 25525i, u_input.a.x, var_1.e)), func_4(vec3<bool>(arg_0.b, var_0.a.x, var_2.c.a.x), var_2.c.b.zyz, func_1(), vec3<f32>(arg_0.a.x, 896f, -308f)).c.c.b), vec4<i32>(var_2.c.b.x, arg_0.e, func_1().e, _wgslsmith_mod_i32(var_1.e, ~1i)), -_wgslsmith_div_vec4_i32(vec4<i32>(var_1.e, 10383i, 33167i, -27163i), _wgslsmith_mult_vec4_i32(vec4<i32>(-31548i, var_1.e, -27119i, 2000i), var_0.b))), arg_1, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-157f, 255f) + vec2<f32>(-622f, arg_0.a.x))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_0.a.yx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c.d.x, 1000f)), var_2.b.xz))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(vec3<bool>(var_1.b, false, true), vec3<i32>(var_1.e, -2147483647i, arg_0.e), arg_0, var_1.a.wwy).c.c.d * arg_0.a.yz) - vec2<f32>(1000f, _wgslsmith_f_op_f32(1679f + var_0.d.x))))));
    let var_4 = !(_wgslsmith_div_f32(396f, _wgslsmith_f_op_f32(-var_1.a.x)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1157f) - var_0.d.x));
    return _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(571f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.d.x + var_0.d.x)) * -1437f)), 323f, !(_wgslsmith_clamp_u32(min(arg_0.d.x, var_1.c), _wgslsmith_mod_u32(28966u, 8538u), var_1.d.x << (12475u % 32u)) != 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_6(func_5(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), func_4(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), _wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, 1i)), func_1(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1219f, -1000f, -1387f))), func_4(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), _wgslsmith_sub_vec3_i32(u_input.a, u_input.a), func_1(), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1011f, 1373f, 1000f) * vec3<f32>(-1000f, -435f, 988f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(226f - _wgslsmith_f_op_f32(sign(-1324f))), _wgslsmith_f_op_f32(func_1().a.x - _wgslsmith_f_op_f32(226f - 780f)))))), _wgslsmith_f_op_f32(ceil(-991f)));
    var var_1 = Struct_3(~u_input.a.x, countOneBits(u_input.a), !all(select(func_4(vec3<bool>(false, true, false), vec3<i32>(3589i, u_input.a.x, -19389i), Struct_1(vec4<f32>(1046f, -1682f, -1677f, 878f), true, 4294967295u, u_input.c.yxw, u_input.a.x), vec3<f32>(-927f, 780f, -234f)).a.a.zww, vec3<bool>(true, true, true), u_input.d.x > 14745u)));
    let var_2 = -vec4<i32>(_wgslsmith_mult_i32(countOneBits(abs(-17377i)), 0i), ~u_input.a.x, i32(-1i) * -_wgslsmith_div_i32(2147483647i, -59890i), ~(var_1.a << (u_input.b % 32u)));
    let var_3 = true;
    var var_4 = _wgslsmith_f_op_f32(-1015f + _wgslsmith_f_op_f32(func_6(func_5(select(select(vec2<bool>(false, var_3), vec2<bool>(false, false), var_1.c), select(vec2<bool>(var_1.c, var_1.c), vec2<bool>(var_1.c, true), vec2<bool>(true, true)), vec2<bool>(true, var_1.c)), func_4(func_4(vec3<bool>(true, var_1.c, var_3), vec3<i32>(-54380i, 2147483647i, var_2.x), Struct_1(vec4<f32>(-295f, 398f, 829f, -2956f), var_3, u_input.b, u_input.c.xyy, 1i), vec3<f32>(-1478f, -386f, 1379f)).a.a.yxw, -vec3<i32>(var_2.x, u_input.a.x, -1i), Struct_1(vec4<f32>(-688f, 993f, 530f, -1424f), false, 1u, vec3<u32>(u_input.b, u_input.d.x, 14395u), 46445i), vec3<f32>(-123f, -906f, -1220f)), Struct_5(Struct_2(vec4<bool>(var_3, var_1.c, false, var_1.c), vec4<i32>(11423i, u_input.a.x, var_2.x, -79229i), -901f, vec2<f32>(390f, 708f)), _wgslsmith_dot_vec3_i32(var_1.b, vec3<i32>(-1i, 45725i, 0i)), func_4(vec3<bool>(var_1.c, true, true), vec3<i32>(var_1.a, var_1.a, var_2.x), Struct_1(vec4<f32>(635f, 1000f, 1089f, -499f), false, u_input.d.x, u_input.c.yzw, -2147483647i), vec3<f32>(1000f, 510f, 838f)).c, ~u_input.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(209f)) + func_1().a.x))));
    let var_5 = func_5(select(vec2<bool>(any(!vec2<bool>(false, var_1.c)), var_3), select(func_4(vec3<bool>(true, false, var_3), abs(var_2.yxy), Struct_1(vec4<f32>(-2147f, 565f, 645f, -920f), var_1.c, 102611u, vec3<u32>(u_input.d.x, 4294967295u, 10666u), -1i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-364f, 660f, -762f) * vec3<f32>(-1000f, 1133f, -864f))).c.b.ww, vec2<bool>(true, true), vec2<bool>(var_1.c, any(vec4<bool>(var_1.c, var_3, false, var_3)))), true), Struct_5(func_4(vec3<bool>(all(vec3<bool>(var_3, var_1.c, var_3)), true, false), select(~u_input.a, -u_input.a, all(vec3<bool>(false, var_3, false))), func_1(), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(419f, 150f, 564f) + vec3<f32>(843f, 305f, 1486f))))).a, 0i & _wgslsmith_clamp_i32(-var_2.x, ~var_1.b.x, -2147483647i), Struct_4(-var_2.x, !select(vec4<bool>(true, true, true, true), vec4<bool>(var_3, var_1.c, false, false), true), func_4(func_4(vec3<bool>(var_1.c, true, var_3), var_1.b, Struct_1(vec4<f32>(-917f, 1005f, 630f, 1005f), true, 1114u, vec3<u32>(51500u, 33396u, u_input.c.x), var_2.x), vec3<f32>(-1475f, -121f, -269f)).c.c.a.xxy, u_input.a, Struct_1(vec4<f32>(-420f, 560f, -822f, -1504f), true, 33613u, u_input.d.zxy, 38147i), vec3<f32>(-1168f, 1000f, -367f)).c.c), 4294967295u), func_4(select(vec3<bool>(any(vec3<bool>(var_3, var_3, var_1.c)), true, var_3 || true), func_4(func_4(vec3<bool>(false, var_3, false), var_2.xyw, Struct_1(vec4<f32>(1000f, 648f, -1564f, 862f), var_1.c, u_input.c.x, u_input.d.yzz, var_1.a), vec3<f32>(-226f, 1067f, -171f)).c.b.wwy, var_1.b, func_1(), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(853f, 471f, -286f)))).c.c.a.yzy, !var_1.c), ~(-vec3<i32>(0i, var_1.b.x, var_2.x)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2438f, 1331f, 1000f, 781f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1716f, 725f, 281f, 163f))), true, func_1().d.x, vec3<u32>(1u, abs(u_input.c.x), u_input.c.x), ~_wgslsmith_div_i32(u_input.a.x, -36137i)), vec3<f32>(1000f, 504f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec2<f32>(501f, -1023f), 1983f, vec2<f32>(-1000f, 772f), -2147483647i)), -942f))));
    var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_5.a.x, _wgslsmith_f_op_f32(min(940f, _wgslsmith_f_op_f32(func_6(func_1(), var_5.a.x))))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_5.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(vec4<bool>(true, false, var_5.b, var_3), var_2, var_5.a.x, _wgslsmith_f_op_vec2_f32(-var_5.a.xy))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.a.x) - _wgslsmith_f_op_f32(ceil(-203f))) + _wgslsmith_f_op_f32(-var_5.a.x)) + 498f), min(u_input.c.wxw, u_input.c.wwy), reverseBits(var_5.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1396f, 781f)));
}

