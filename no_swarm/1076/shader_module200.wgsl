struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec3<bool>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2> = array<f32, 2>(-406f, 383f);

var<private> global1: array<f32, 21>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_5, arg_2: vec4<i32>, arg_3: vec3<u32>) -> f32 {
    global1 = array<f32, 21>();
    global0 = array<f32, 2>();
    global1 = array<f32, 21>();
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(arg_1.a));
    let var_1 = select(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(arg_2.x, u_input.a, arg_1.c.x, arg_1.c.x), vec4<i32>(-14216i, -1615i, 14090i, reverseBits(1i))), arg_2 << (~(~vec4<u32>(arg_3.x, 54174u, 0u, arg_3.x)) % vec4<u32>(32u))), arg_1.c, ~1u <= ~abs(arg_3.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.a.x)));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(vec4<i32>(u_input.b.x, -2147483647i, 24555i, 2147483647i), _wgslsmith_f_op_f32(func_3(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), Struct_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(1706f, -1528f) - vec2<f32>(1186f, -883f)), u_input.c.x > u_input.c.x, abs(vec4<i32>(2147483647i, -2147483647i, 6929i, u_input.b.x))), firstTrailingBit(vec4<i32>(u_input.b.x, 37611i, -1i, u_input.a)), vec3<u32>(~4294967295u, reverseBits(103248u), 0u ^ u_input.c.x))) > _wgslsmith_f_op_f32(f32(-1f) * -1585f), ~_wgslsmith_mod_u32(u_input.c.x, min(16186u, 1u)) & ~4294967295u, _wgslsmith_add_u32(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, u_input.c.x), ~u_input.c.x), _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 49983u), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), vec3<u32>(~u_input.c.x, ~u_input.c.x, u_input.c.x >> (30643u % 32u)))));
    global0 = array<f32, 2>();
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(~u_input.c.x, 21u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 2u)]), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(91513u, 1u), 68957u), 21u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-306f, 930f, global1[_wgslsmith_index_u32(58177u, 21u)])) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-542f, 1000f, global1[_wgslsmith_index_u32(u_input.c.x, 21u)]) * vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 21u)], global0[_wgslsmith_index_u32(22712u, 2u)], -1000f)))))));
    var_0 = Struct_1(var_0.a, !all(select(select(vec4<bool>(var_0.b, true, var_0.b, var_0.b), vec4<bool>(var_0.b, var_0.b, false, var_0.b), true), select(vec4<bool>(false, false, true, var_0.b), vec4<bool>(false, true, var_0.b, false), vec4<bool>(var_0.b, false, true, var_0.b)), select(vec4<bool>(true, var_0.b, var_0.b, var_0.b), vec4<bool>(var_0.b, var_0.b, var_0.b, false), vec4<bool>(var_0.b, false, false, true)))), u_input.c.x, reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(~var_0.c, 1u, 0u, 89085u), vec4<u32>(~0u, ~u_input.c.x, abs(69920u), ~15179u))));
    var var_2 = Struct_2(1i, Struct_1(var_0.a << (~vec4<u32>(4294967295u, var_0.d, var_0.c, var_0.d) % vec4<u32>(32u)), !var_0.b, var_0.c, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c, ~4294967295u, _wgslsmith_div_u32(u_input.c.x, u_input.c.x)), select(~vec3<u32>(25171u, u_input.c.x, 9625u), ~vec3<u32>(u_input.c.x, u_input.c.x, 19709u), select(vec3<bool>(var_0.b, true, false), vec3<bool>(false, true, var_0.b), var_0.b)))), Struct_1(firstLeadingBit(firstTrailingBit(var_0.a)), var_0.b, countOneBits(92187u), _wgslsmith_div_u32(~1u, u_input.c.x >> (var_0.c % 32u)) >> (u_input.c.x % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(472f - var_1.x))))), Struct_1(~_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(26351i, u_input.a, -1i, -2147483647i)), var_0.a), all(!vec2<bool>(var_0.b, var_0.b)) & true, 50577u, var_0.d));
    return Struct_2(select(-abs(u_input.b.x), 1i, true), var_2.b, Struct_1(vec4<i32>(33922i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(0i, u_input.b.x), ~37755i, -15715i), var_0.a.x, -2147483647i), all(select(select(vec3<bool>(var_0.b, var_2.e.b, true), vec3<bool>(false, true, var_0.b), vec3<bool>(var_2.c.b, true, true)), !vec3<bool>(false, true, var_0.b), !vec3<bool>(false, false, var_0.b))), var_0.d, _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(var_2.c.d, 0u, u_input.c.x, 28754u), vec4<u32>(1509u, 3888u, 1919u, 0u)), abs(vec4<u32>(var_0.c, 4294967295u, 76278u, var_0.d) & vec4<u32>(52147u, u_input.c.x, 1u, u_input.c.x)))), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(36869u, ~select(var_0.c, 1u, false)), var_2.b.d | ~var_2.c.c, ~u_input.c.x), 21u)], Struct_1(-firstTrailingBit(var_2.c.a), true, u_input.c.x, 29488u));
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_4(func_2(), _wgslsmith_f_op_f32(-func_2().d), vec3<bool>(true, false, true));
    var var_1 = Struct_1(vec4<i32>(-2147483647i, ~(~(-26986i) & arg_1), var_0.a.c.a.x, u_input.b.x), var_0.a.b.b, min(_wgslsmith_dot_vec2_u32(u_input.c, u_input.c), 13556u), _wgslsmith_add_u32(1u, _wgslsmith_add_u32(0u, 0u)));
    var var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(ceil(963f)), 1170f))), _wgslsmith_div_vec2_f32(arg_2.xw, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.zx - arg_2.xy) + _wgslsmith_f_op_vec2_f32(sign(arg_2.zw)))))), (any(select(var_0.c, vec3<bool>(var_1.b, false, var_0.c.x), true)) && all(!var_0.c)) & true, reverseBits(var_0.a.c.a));
    var var_3 = var_0.a.e;
    var var_4 = Struct_3(~_wgslsmith_mod_vec3_u32(~(vec3<u32>(15119u, 32084u, 15740u) >> (vec3<u32>(var_0.a.e.d, 4294967295u, var_0.a.c.d) % vec3<u32>(32u))), ~_wgslsmith_div_vec3_u32(vec3<u32>(var_1.c, var_3.c, var_1.c), vec3<u32>(19968u, 28607u, var_3.c))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(arg_0, ~(~vec4<i32>(u_input.a, var_1.a.x, -2147483647i, var_0.a.e.a.x))), vec4<i32>(~var_0.a.b.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, var_2.c.x), countOneBits(vec2<i32>(29034i, 0i))), var_2.c.x, u_input.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, ~var_0.a.b.a.x, var_0.a.c.a.x, abs(arg_0.x)), vec4<i32>(_wgslsmith_mod_i32(-8309i, 36909i), var_3.a.x, abs(var_1.a.x), 20533i), vec4<i32>(_wgslsmith_mult_i32(1i, var_1.a.x), 0i, _wgslsmith_mod_i32(-1i, -44146i), max(var_3.a.x, u_input.b.x)))));
    return Struct_1(_wgslsmith_clamp_vec4_i32(-vec4<i32>(2147483647i, u_input.a << (6322u % 32u), var_0.a.a << (var_0.a.c.d % 32u), -var_2.c.x), -firstLeadingBit(var_1.a << (vec4<u32>(var_4.a.x, 1u, var_0.a.c.c, 4294967295u) % vec4<u32>(32u))), countOneBits(var_4.b)), var_2.b, _wgslsmith_clamp_u32(var_4.a.x << (~45344u % 32u), ~1u, 1u) ^ ~(~reverseBits(0u)), 0u);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_5, arg_3: vec4<i32>) -> i32 {
    var var_0 = -137f;
    let var_1 = ~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(arg_1.c, 1u, 39257u, u_input.c.x), vec4<u32>(arg_1.d, u_input.c.x, 8598u, 4294967295u)), ~vec4<u32>(u_input.c.x, 4294967295u, arg_1.c, 2431u)), ~(u_input.c.x | arg_1.d)), select(4294967295u, _wgslsmith_add_u32(4294967295u, firstLeadingBit(u_input.c.x)), true | select(arg_2.b, arg_1.b, false)), 0u);
    var var_2 = Struct_4(Struct_2(-1i, Struct_1(~vec4<i32>(arg_2.c.x, arg_3.x, 0i, arg_2.c.x), arg_1.b, var_1, var_1), func_2().c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(func_2().d, 440f)), _wgslsmith_f_op_f32(f32(-1f) * -927f)), Struct_1(arg_1.a, any(arg_0.zz) | !arg_0.x, _wgslsmith_div_u32(1u, var_1), ~_wgslsmith_div_u32(arg_1.d, arg_1.c))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-297f - _wgslsmith_f_op_f32(arg_2.a.x + -305f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1183f, func_2().d))))), vec3<bool>(arg_2.b, all(vec3<bool>(!arg_0.x, func_1(arg_1.a, -1i, vec4<f32>(global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(54508u, 21u)], global1[_wgslsmith_index_u32(0u, 21u)], 1132f)).b, arg_1.b)), all(vec4<bool>(arg_2.a.x > global1[_wgslsmith_index_u32(4294967295u, 21u)], func_2().c.b, arg_0.x | arg_0.x, all(vec3<bool>(arg_2.b, arg_0.x, true))))));
    var_2 = Struct_4(Struct_2(var_2.a.e.a.x, func_2().b, var_2.a.b, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(13386u, 2u)]), Struct_1(countOneBits(vec4<i32>(-19412i, 34841i, arg_3.x, 2147483647i)) << (countOneBits(vec4<u32>(1u, 57171u, 4294967295u, arg_1.c)) % vec4<u32>(32u)), 1u >= firstTrailingBit(var_1), var_2.a.c.d, ~(~19699u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 2u)] + global1[_wgslsmith_index_u32(var_2.a.c.d, 21u)])))))), arg_0);
    var var_3 = vec3<f32>(arg_2.a.x, arg_2.a.x, _wgslsmith_f_op_f32(step(arg_2.a.x, 282f)));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1629f, global0[_wgslsmith_index_u32(22582u, 2u)], global0[_wgslsmith_index_u32(17661u, 2u)], global1[_wgslsmith_index_u32(64277u, 21u)]), vec4<f32>(1595f, global0[_wgslsmith_index_u32(u_input.c.x, 2u)], 1321f, 1768f), false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 21u)], global1[_wgslsmith_index_u32(u_input.c.x, 21u)], global0[_wgslsmith_index_u32(u_input.c.x, 2u)], -1110f), vec4<f32>(-1084f, 332f, global1[_wgslsmith_index_u32(u_input.c.x, 21u)], 1042f), vec4<bool>(true, true, false, false))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1[_wgslsmith_index_u32(48702u, 21u)], -1363f, -317f, -452f), vec4<f32>(-612f, global0[_wgslsmith_index_u32(u_input.c.x, 2u)], 1451f, global0[_wgslsmith_index_u32(0u, 2u)]))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 2u)], global0[_wgslsmith_index_u32(1u, 2u)], -1907f, 1859f)))))));
    var var_1 = true;
    global0 = array<f32, 2>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.zxw - var_0.xxw)))));
    global1 = array<f32, 21>();
    global0 = array<f32, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1670f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1580f, global0[_wgslsmith_index_u32(4294967295u, 2u)])) * 257f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))))), firstLeadingBit(u_input.c.x), vec4<i32>(u_input.a, func_4(vec3<bool>(true, true, true), func_1(abs(vec4<i32>(-55685i, u_input.b.x, -2147483647i, u_input.b.x)), i32(-1i) * -1i, _wgslsmith_f_op_vec4_f32(-var_0)), Struct_5(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1263f, var_2.x))), true, vec4<i32>(u_input.a, -6220i, u_input.b.x, 0i) ^ vec4<i32>(u_input.b.x, u_input.a, 17179i, -1i)), _wgslsmith_sub_vec4_i32(min(vec4<i32>(u_input.b.x, -17621i, -9231i, u_input.a), vec4<i32>(u_input.a, u_input.b.x, u_input.b.x, u_input.a)), vec4<i32>(u_input.a, u_input.a, u_input.a, 4201i) ^ vec4<i32>(0i, -50368i, -7740i, u_input.a))), ~0i, _wgslsmith_dot_vec4_i32((vec4<i32>(0i, u_input.b.x, u_input.a, 2147483647i) ^ vec4<i32>(u_input.b.x, u_input.b.x, u_input.a, u_input.b.x)) ^ abs(vec4<i32>(u_input.a, -1i, 1i, 0i)), -vec4<i32>(u_input.a, u_input.a, u_input.b.x, u_input.a) ^ ~vec4<i32>(1i, 0i, -1i, -40468i))), vec2<i32>(firstLeadingBit(-(i32(-1i) * -44398i)), ((0i << (u_input.c.x % 32u)) >> (4294967295u % 32u)) | 19524i));
}

