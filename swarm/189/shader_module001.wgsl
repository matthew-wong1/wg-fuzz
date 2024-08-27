struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>) -> f32 {
    global0 = u_input.a.x;
    global0 = reverseBits(2147483647i);
    global0 = -2147483647i;
    return -355f;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: i32) -> vec3<u32> {
    var var_0 = arg_0;
    var var_1 = select(vec4<bool>(true, any(vec3<bool>(any(vec4<bool>(true, false, false, false)), all(vec3<bool>(true, true, false)), true)), false, var_0.c > _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c, u_input.d) & var_0.b.xy, _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.b.x, 53094u), u_input.b))), select(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), true), true), !select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(select(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x), true)) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), true), all(vec4<bool>(true, true, true, false))))));
    var var_2 = arg_0;
    global0 = arg_0.a.x;
    var var_3 = select(vec2<u32>(0u, _wgslsmith_sub_u32(firstLeadingBit(24319u >> (arg_0.c % 32u)), var_2.d)), arg_0.b.xy, !(!select(vec2<bool>(false, var_1.x), vec2<bool>(false, false), select(vec2<bool>(var_1.x, false), var_1.yx, var_1.x))));
    return vec3<u32>(~_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(var_2.d, var_3.x, u_input.b.x, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_2.c, arg_0.d, 0u, 32794u), vec4<u32>(37134u, 26257u, var_0.d, 0u))), 1u, ~firstTrailingBit(9927u));
}

fn func_2(arg_0: i32) -> f32 {
    var var_0 = select(vec2<bool>(false, _wgslsmith_sub_i32(~arg_0, arg_0) != (u_input.a.x ^ ~arg_0)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(any(vec3<bool>(true, false, false)), false), !select(vec2<bool>(false, false), vec2<bool>(true, false), true), any(vec2<bool>(true, true)))));
    var var_1 = Struct_1(vec4<i32>(8266i, 16997i, -45085i, max(_wgslsmith_mult_i32(arg_0, u_input.c.x), -firstLeadingBit(0i))), func_4(Struct_1(-(vec4<i32>(11268i, 97i, arg_0, arg_0) ^ vec4<i32>(arg_0, u_input.c.x, u_input.c.x, u_input.a.x)), vec3<u32>(u_input.b.x, u_input.b.x >> (0u % 32u), 9329u), u_input.b.x, 8412u), vec3<f32>(447f, 1246f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(249f, 2532f, var_0.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -625f), _wgslsmith_div_f32(746f, -1563f), _wgslsmith_f_op_f32(func_3(21625u, vec3<bool>(false, var_0.x, var_0.x))))), arg_0), max(~abs(0u >> (u_input.b.x % 32u)), u_input.d), _wgslsmith_mult_u32(abs(_wgslsmith_add_u32(u_input.d, 4294967295u)) ^ ~_wgslsmith_sub_u32(u_input.b.x, u_input.d), _wgslsmith_dot_vec4_u32(select(select(vec4<u32>(10260u, 4294967295u, u_input.d, 90119u), vec4<u32>(83311u, u_input.b.x, 81442u, 1u), var_0.x), _wgslsmith_add_vec4_u32(vec4<u32>(25251u, u_input.b.x, 3942u, 71842u), vec4<u32>(u_input.d, u_input.d, u_input.b.x, u_input.b.x)), !vec4<bool>(true, var_0.x, false, false)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(37533u, 4294967295u, 1u, 1u), vec4<u32>(u_input.d, 8209u, u_input.b.x, u_input.b.x)))));
    var_1 = Struct_1(var_1.a, var_1.b, _wgslsmith_mod_u32(u_input.d, var_1.b.x), var_1.b.x);
    var_1 = Struct_1(vec4<i32>(~(max(u_input.a.x, -1i) >> (44409u % 32u)), u_input.c.x, min(arg_0, -min(-45767i, u_input.c.x)), _wgslsmith_dot_vec4_i32(-(~var_1.a), var_1.a)), select(vec3<u32>(_wgslsmith_div_u32(6147u, ~136727u), u_input.d ^ ~55459u, var_1.d), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.b.x, var_1.d, var_1.c)), var_1.b), _wgslsmith_mod_vec3_u32(~var_1.b, _wgslsmith_mult_vec3_u32(vec3<u32>(7182u, 1u, u_input.d), var_1.b))), select(vec3<bool>(true, !var_0.x, true), select(!vec3<bool>(false, var_0.x, var_0.x), !vec3<bool>(true, true, var_0.x), true), vec3<bool>(all(vec2<bool>(true, var_0.x)), u_input.b.x > u_input.b.x, true))), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_1.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(43282u, u_input.d, u_input.d), vec3<u32>(var_1.c, var_1.b.x, 1u)), 1u, 11371u)), vec4<u32>(0u, select(firstTrailingBit(u_input.b.x), ~35384u, var_0.x), _wgslsmith_add_u32(_wgslsmith_add_u32(1u, u_input.b.x), u_input.b.x), u_input.b.x)), firstTrailingBit(u_input.d));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(135f, -479f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-283f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(227f * 232f) + -1000f))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(178f - _wgslsmith_f_op_f32(-var_2)) * _wgslsmith_f_op_f32(ceil(861f))))));
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<f32>(-784f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2381f, _wgslsmith_f_op_f32(func_2(u_input.c.x))) + -418f), 147f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-597f, -1744f, true)) - 1f), _wgslsmith_f_op_f32(-2285f + _wgslsmith_f_op_f32(select(339f, _wgslsmith_f_op_f32(floor(-1191f)), any(vec3<bool>(true, false, false)))))), -826f);
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 257f, var_0.x, 419f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1012f, var_0.x, 813f) * vec4<f32>(-569f, var_0.x, -388f, 2180f)))) * vec4<f32>(var_0.x, _wgslsmith_f_op_f32(step(var_0.x, var_0.x)), -1478f, _wgslsmith_f_op_f32(-var_0.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 184f, var_0.x))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, 3473f, -439f, var_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 450f, var_0.x, -314f)))))));
    var var_1 = _wgslsmith_f_op_f32(sign(-1568f));
    var var_2 = vec3<bool>(all(vec2<bool>(true, false)) | all(vec3<bool>(true, false, false)), !any(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, true)));
    let var_3 = _wgslsmith_f_op_vec2_f32(floor(var_0.wy));
    return Struct_1(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(countOneBits(-vec4<i32>(0i, u_input.a.x, 2147483647i, u_input.c.x)), abs(-vec4<i32>(u_input.c.x, 32838i, 1i, u_input.a.x))), _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(u_input.c.x, u_input.a.x, 2147483647i, u_input.a.x)) ^ vec4<i32>(0i, -5891i, u_input.a.x, u_input.c.x), (vec4<i32>(-1i, u_input.c.x, u_input.c.x, u_input.c.x) ^ vec4<i32>(41847i, -33546i, 1i, u_input.a.x)) & max(vec4<i32>(1i, 45012i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.a.x, u_input.c.x, -2147483647i, -117241i)))), ~(~(reverseBits(vec3<u32>(36133u, u_input.b.x, u_input.d)) << (max(vec3<u32>(50618u, u_input.d, 2561u), vec3<u32>(32603u, 7882u, 38296u)) % vec3<u32>(32u)))), _wgslsmith_dot_vec2_u32(u_input.b, firstLeadingBit(vec2<u32>(1u, _wgslsmith_mult_u32(14709u, 37078u)))), abs(_wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.d, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)))));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec2<f32>, arg_3: bool) -> vec4<i32> {
    global0 = 0i;
    let var_0 = arg_0;
    let var_1 = Struct_1(vec4<i32>(arg_1, 1i, func_1().a.x, arg_0.a.x), abs(vec3<u32>(~arg_0.b.x & 48387u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 5243u, u_input.d, var_0.d), vec4<u32>(8147u, var_0.d, 46363u, var_0.d)), u_input.b.x), ~var_0.c)), ~_wgslsmith_clamp_u32(~0u, _wgslsmith_add_u32(var_0.d, _wgslsmith_div_u32(0u, var_0.c)), _wgslsmith_add_u32(35137u, _wgslsmith_div_u32(1u, var_0.d))), _wgslsmith_sub_u32(u_input.b.x, select(var_0.d, _wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, arg_0.d), ~arg_0.b.x), true)));
    let var_2 = var_1;
    global0 = 28928i;
    return _wgslsmith_mod_vec4_i32(firstLeadingBit(var_1.a), firstLeadingBit(var_1.a));
}

fn func_6(arg_0: f32, arg_1: vec4<i32>, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = func_1();
    var var_1 = Struct_1(min(select(var_0.a, _wgslsmith_mod_vec4_i32(countOneBits(var_0.a), var_0.a), true), _wgslsmith_add_vec4_i32(select(vec4<i32>(2147483647i, -32636i, u_input.c.x, arg_1.x), abs(vec4<i32>(u_input.a.x, arg_1.x, arg_1.x, arg_1.x)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true))), arg_1)), var_0.b, _wgslsmith_mult_u32(4294967295u, 0u), 64056u);
    let var_2 = all(vec4<bool>(_wgslsmith_f_op_f32(abs(-158f)) > _wgslsmith_f_op_f32(-arg_2.x), !all(vec3<bool>(true, false, false)) || ((arg_1.x << (var_1.d % 32u)) == -arg_1.x), true, any(vec2<bool>(true, true))));
    global0 = arg_1.x;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_f_op_f32(f32(-1f) * -1000f), func_5(func_1(), -(~u_input.c.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1465f, -1449f)), vec2<bool>(true, true))), select(true, true, all(vec4<bool>(false, false, false, false)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-1909f)), -1058f, _wgslsmith_div_f32(385f, -1149f), _wgslsmith_f_op_f32(-514f * _wgslsmith_f_op_f32(abs(1000f)))) - vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1005f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) - _wgslsmith_div_f32(1632f, 1549f)), _wgslsmith_f_op_f32(abs(-192f)), -731f)));
    let var_1 = countOneBits(abs(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_0.b.xz, u_input.b), abs(vec2<u32>(57412u, u_input.b.x))), ~46646u, ~firstLeadingBit(10475u), ~(~1u))));
    var_0 = Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.a.x, ~var_0.a.x), 1i, -_wgslsmith_mult_i32(17385i, var_0.a.x), _wgslsmith_mult_i32(var_0.a.x, countOneBits(var_0.a.x))), firstTrailingBit(countOneBits(min(vec4<i32>(0i, u_input.a.x, 2147483647i, 39835i), var_0.a)))), ~vec3<u32>(_wgslsmith_sub_u32(40222u | var_0.b.x, var_1.x | 24975u), 1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, var_0.b.x, 21383u, u_input.b.x), vec4<u32>(var_1.x, 0u, 26400u, 4906u))), _wgslsmith_add_u32(_wgslsmith_sub_u32(~70842u, 1u) & ~var_1.x, _wgslsmith_sub_u32(min(~12931u, _wgslsmith_mult_u32(22429u, 1u)), var_0.d)), func_4(Struct_1(vec4<i32>(-25502i, -35962i, u_input.a.x, var_0.a.x), var_1.yxx, var_1.x & 0u, select(8086u, 7218u, false)), vec3<f32>(1f, -410f, _wgslsmith_f_op_f32(f32(-1f) * -1330f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(300f, -256f, 155f), vec3<f32>(2003f, -1201f, 1375f))), -46188i).x | min(0u, firstLeadingBit(func_4(Struct_1(var_0.a, var_0.b, 4294967295u, 27712u), vec3<f32>(-1127f, 318f, -573f), vec3<f32>(709f, -181f, 164f), 1i).x)));
    var var_2 = vec2<bool>(true, any(vec4<bool>(max(var_0.a.x, var_0.a.x) >= _wgslsmith_add_i32(-2147483647i, 0i), _wgslsmith_dot_vec3_u32(vec3<u32>(65592u, 0u, var_1.x), var_0.b) == var_1.x, true, true)));
    global0 = -abs(-2147483647i);
    var_0 = Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(-5102i, select(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), func_6(615f, var_0.a, vec4<f32>(1122f, -138f, -1000f, -106f)).a.x, !var_2.x), var_0.a.x, 5377i), _wgslsmith_add_vec4_i32(~(var_0.a >> (var_1 % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(reverseBits(var_0.a), reverseBits(var_0.a), _wgslsmith_div_vec4_i32(vec4<i32>(-5422i, -2147483647i, -103856i, var_0.a.x), var_0.a)))), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, _wgslsmith_clamp_u32(var_1.x, 0u, 4294967295u), ~1u), vec3<u32>(var_1.x, var_1.x & var_0.b.x, ~1u)) ^ (countOneBits(var_1.wwz) >> ((_wgslsmith_div_vec3_u32(var_1.zwy, vec3<u32>(46695u, 5527u, 67139u)) >> (vec3<u32>(var_1.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_mult_u32(~(var_1.x & 37422u), firstLeadingBit(var_1.x)), 1u);
    var var_3 = any(select(!select(!vec2<bool>(false, var_2.x), vec2<bool>(true, var_2.x), vec2<bool>(false, true)), !select(select(vec2<bool>(false, var_2.x), vec2<bool>(true, true), var_2.x), select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(false, var_2.x), vec2<bool>(false, false)), !vec2<bool>(var_2.x, var_2.x)), !select(vec2<bool>(true, false), select(vec2<bool>(var_2.x, true), vec2<bool>(false, false), false), any(vec2<bool>(var_2.x, var_2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-231f, _wgslsmith_f_op_f32(select(598f, 594f, var_2.x)), -1000f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1137f, -158f, 354f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(211f, -136f, 528f))))))));
}

