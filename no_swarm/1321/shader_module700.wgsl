struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec4<f32>,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> i32 {
    var var_0 = Struct_2(u_input.a.x >= _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(4793u << (u_input.a.x % 32u), countOneBits(4294967295u), ~81826u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-503f, _wgslsmith_f_op_f32(max(-347f, 462f)), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-206f, 919f)), _wgslsmith_f_op_f32(f32(-1f) * -1105f))))), Struct_1(min(~u_input.a ^ u_input.a, vec3<u32>(~0u, select(4294967295u, 41154u, true), 26850u)), any(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, false, true), any(vec3<bool>(false, true, false)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1334f))), _wgslsmith_f_op_f32(ceil(-542f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-310f, -395f) + -560f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -357f)))), 0i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-214f + -1408f), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), Struct_1(_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(0u, 0u, u_input.a.x)), ~_wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(1130u, 0u, 0u))), true, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-223f, _wgslsmith_f_op_f32(832f - -961f), _wgslsmith_f_op_f32(-153f - -520f), _wgslsmith_f_op_f32(f32(-1f) * -1198f)), vec4<f32>(_wgslsmith_f_op_f32(trunc(-829f)), _wgslsmith_f_op_f32(f32(-1f) * -725f), -612f, -274f))), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(max(vec4<i32>(0i, -5149i, -41249i, 1i), vec4<i32>(18692i, 8887i, 54215i, -35695i)), vec4<i32>(-44110i, 2147483647i, -6064i, -8837i)), 2147483647i), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(238f, 1540f, 1467f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(122f, 1000f, -1479f), vec3<f32>(-919f, -941f, 1173f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-930f, -1000f, 1543f))), any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false))))), firstTrailingBit(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-40275i, -1i, 0i), vec3<i32>(0i, 1i, -1i)) >> (~u_input.a.x % 32u))));
    var_0 = Struct_2(713f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_0.b, 1103f)), var_0.d.e.x, var_0.a)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_0.c.e.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.c.x)), var_0.c, Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(var_0.c.a, u_input.a), _wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(3127u, 54491u, 46627u))), select(any(!vec3<bool>(var_0.c.b, false, true)), var_0.c.b, (var_0.c.b && var_0.a) || true), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(var_0.d.c.x * var_0.c.c.x), _wgslsmith_f_op_f32(-198f * -1717f), _wgslsmith_f_op_f32(737f * -974f), -147f), var_0.d.c, true)), (-603i ^ ~var_0.c.d) ^ -(var_0.d.d << (u_input.a.x % 32u)), var_0.d.e), var_0.d.d);
    var var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(~((vec3<i32>(var_0.d.d, 11943i, var_0.e) | vec3<i32>(var_0.d.d, var_0.c.d, 1i)) | (vec3<i32>(42382i, var_0.d.d, var_0.c.d) & vec3<i32>(var_0.c.d, -2147483647i, var_0.e))), abs(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.d.d, 2147483647i, var_0.d.d), vec3<i32>(var_0.e, var_0.c.d, var_0.c.d))) << (~reverseBits(var_0.d.a) % vec3<u32>(32u)), max(vec3<i32>(~var_0.c.d, 1i, abs(var_0.e)), _wgslsmith_mod_vec3_i32(select(vec3<i32>(var_0.e, 1i, var_0.c.d), vec3<i32>(-13502i, var_0.d.d, 55904i), vec3<bool>(true, true, false)), -vec3<i32>(var_0.e, 1i, -1i)))), max(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(24633i, -29482i, var_0.d.d), vec3<i32>(3083i, 34101i, -12913i)), -vec3<i32>(var_0.c.d, -2142i, 0i)), vec3<i32>(countOneBits(var_0.e), 0i, 0i)));
    global0 = -(~(-(~(~(-2147483647i)))));
    var var_2 = Struct_2((min(56057i, abs(0i)) >= _wgslsmith_sub_i32(-2147483647i, var_0.d.d)) || var_0.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b))), var_0.d, var_0.d, 1i);
    return 10338i;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: bool, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_2(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2434f * arg_3.d.c.x) * -1227f), Struct_1(reverseBits(vec3<u32>(_wgslsmith_clamp_u32(86597u, 0u, u_input.a.x), _wgslsmith_div_u32(u_input.a.x, arg_0.a.x), firstTrailingBit(u_input.a.x))), true, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_3.b * arg_3.d.c.x), _wgslsmith_f_op_f32(318f - 1000f), _wgslsmith_f_op_f32(-arg_3.c.e.x), -262f), vec4<f32>(-430f, _wgslsmith_f_op_f32(ceil(arg_0.c.x)), arg_3.c.c.x, _wgslsmith_div_f32(arg_0.c.x, -1078f))), 2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.e + _wgslsmith_f_op_vec3_f32(-arg_0.c.yww)))), arg_0, abs(~arg_0.d) & ~arg_3.c.d);
    global0 = -2147483647i;
    global0 = ~0i;
    var var_1 = !(!select(vec2<bool>(!var_0.a, true), vec2<bool>(!arg_2, arg_0.b), false));
    let var_2 = (true || (true && (arg_0.a.x < ~arg_0.a.x))) || any(!select(!vec4<bool>(true, arg_0.b, false, false), vec4<bool>(var_1.x, false, arg_3.a, false), arg_3.d.b));
    return -2147483647i;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec2<u32>) -> vec4<i32> {
    var var_0 = arg_1.d.c.x;
    var var_1 = Struct_2(true, 1410f, Struct_1(firstTrailingBit(vec3<u32>(u_input.a.x, 0u, 49345u) ^ min(vec3<u32>(56219u, 28053u, 4294967295u), arg_1.c.a)), !(_wgslsmith_f_op_f32(502f + -762f) > arg_1.c.c.x), vec4<f32>(_wgslsmith_f_op_f32(-arg_1.c.c.x), 987f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(arg_1.c.e.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.e.x - 1191f) - _wgslsmith_f_op_f32(f32(-1f) * -1076f))), arg_1.e, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(arg_1.d.e))))), Struct_1(arg_0, false || !arg_1.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 236f, arg_1.d.c.x, arg_1.d.e.x) - arg_1.d.c), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, 1153f, -272f, arg_1.c.c.x) - arg_1.d.c)))), func_4(Struct_1(vec3<u32>(arg_2.x, arg_1.d.a.x, u_input.a.x), arg_1.d.b, _wgslsmith_div_vec4_f32(vec4<f32>(-250f, 535f, -1061f, -511f), vec4<f32>(1263f, -466f, arg_1.c.c.x, arg_1.d.e.x)), func_3(), vec3<f32>(-1973f, arg_1.b, 1079f)), vec2<u32>(_wgslsmith_mod_u32(arg_0.x, 8384u), abs(4294967295u)), false, Struct_2(!arg_1.c.b, _wgslsmith_f_op_f32(trunc(-2109f)), Struct_1(arg_1.d.a, false, vec4<f32>(-653f, arg_1.b, 812f, -650f), 0i, arg_1.d.e), Struct_1(vec3<u32>(28531u, u_input.a.x, 1u), false, arg_1.c.c, 46953i, vec3<f32>(arg_1.b, arg_1.d.e.x, arg_1.b)), _wgslsmith_div_i32(arg_1.e, 14301i))), arg_1.c.e), (-59367i ^ abs(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.c.d, arg_1.d.d, -27008i), vec3<i32>(arg_1.d.d, arg_1.e, arg_1.e)))) >> ((firstTrailingBit(60525u << (0u % 32u)) & _wgslsmith_dot_vec2_u32(arg_1.c.a.yx, ~arg_1.d.a.yz)) % 32u));
    let var_2 = vec4<u32>(_wgslsmith_mult_u32(1u, 0u), ~(_wgslsmith_mult_u32(1u, 9528u) & _wgslsmith_clamp_u32(arg_2.x, arg_0.x, var_1.c.a.x)), u_input.a.x, ~36240u) | vec4<u32>(arg_2.x, ~_wgslsmith_mult_u32(~u_input.a.x, var_1.c.a.x), _wgslsmith_div_u32(abs(_wgslsmith_dot_vec2_u32(arg_2, vec2<u32>(4294967295u, 0u))), _wgslsmith_sub_u32(4294967295u, 0u) & _wgslsmith_dot_vec2_u32(arg_1.d.a.xz, vec2<u32>(arg_1.c.a.x, 1u))), 5111u);
    let var_3 = arg_0.x;
    var var_4 = arg_1;
    return _wgslsmith_add_vec4_i32(abs(_wgslsmith_div_vec4_i32(~max(vec4<i32>(-1067i, 41635i, var_4.d.d, arg_1.d.d), vec4<i32>(var_1.e, 2147483647i, -2147483647i, var_4.e)), vec4<i32>(85673i, firstLeadingBit(var_4.e), 20388i, firstTrailingBit(-2147483647i)))), ~reverseBits(-vec4<i32>(var_4.e, 0i, var_4.e, var_1.d.d)));
}

fn func_1(arg_0: bool) -> vec3<u32> {
    global0 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(2147483647i, 1i), 1i << (0u % 32u)), 1i, -18769i), ~(-2147483647i), -15981i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(~(-21702i), -41735i, i32(-1i) * -2147483647i), -1i)), abs(func_2(vec3<u32>(6106u, u_input.a.x, 1u), Struct_2(true, 1000f, Struct_1(u_input.a, true, vec4<f32>(-500f, -172f, -225f, -1287f), -1i, vec3<f32>(-1520f, 410f, 958f)), Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, 1u), arg_0, vec4<f32>(661f, -1000f, -1000f, -260f), -50546i, vec3<f32>(738f, 1508f, -726f)), 1i), _wgslsmith_add_vec2_u32(firstTrailingBit(u_input.a.yz), vec2<u32>(1u, 0u)))));
    var var_0 = Struct_2(all(vec3<bool>(true, all(vec3<bool>(false, false, false)), !(true | arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1156f, _wgslsmith_f_op_f32(sign(-1000f))))) + _wgslsmith_f_op_f32(-443f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-466f + 2854f))))), Struct_1(u_input.a, arg_0, vec4<f32>(-175f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1719f + -1000f), _wgslsmith_f_op_f32(ceil(-630f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1000f)))), _wgslsmith_f_op_f32(2020f + -1169f)), _wgslsmith_mult_i32(abs(func_2(u_input.a, Struct_2(true, -1259f, Struct_1(u_input.a, false, vec4<f32>(765f, 1000f, -560f, 312f), 1i, vec3<f32>(-1905f, 1774f, -2586f)), Struct_1(vec3<u32>(17657u, u_input.a.x, u_input.a.x), true, vec4<f32>(159f, -1000f, 684f, 1000f), -1i, vec3<f32>(513f, 385f, -1309f)), 1i), vec2<u32>(u_input.a.x, u_input.a.x)).x), 43620i), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2349f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1490f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -427f), 1015f)))), Struct_1(_wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(745u, firstTrailingBit(4294967295u), 4294967295u)), arg_0, vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-946f - 1337f))), _wgslsmith_f_op_f32(select(112f, _wgslsmith_f_op_f32(-1690f - 1892f), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1479f))), _wgslsmith_div_f32(-2060f, _wgslsmith_f_op_f32(floor(667f)))), _wgslsmith_div_i32(1i, func_4(Struct_1(u_input.a, arg_0, vec4<f32>(-822f, -723f, 1506f, 1672f), -1i, vec3<f32>(1000f, -721f, 121f)), max(u_input.a.xy, u_input.a.yy), arg_0, Struct_2(arg_0, -903f, Struct_1(vec3<u32>(4059u, u_input.a.x, u_input.a.x), arg_0, vec4<f32>(-1084f, 2203f, 1000f, 1000f), -2147483647i, vec3<f32>(1196f, -2011f, -903f)), Struct_1(vec3<u32>(u_input.a.x, 38132u, u_input.a.x), arg_0, vec4<f32>(-642f, 393f, -723f, 1292f), -22550i, vec3<f32>(2273f, 1278f, -708f)), 12980i))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, -1212f, _wgslsmith_f_op_f32(-398f * -1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, 551f, -519f))))))), -1i);
    global0 = ~(-1i);
    var var_1 = Struct_2(!arg_0, _wgslsmith_f_op_f32(419f - _wgslsmith_f_op_f32(f32(-1f) * -629f)), var_0.c, Struct_1(min(select(~vec3<u32>(23111u, u_input.a.x, 13709u), var_0.d.a, true), u_input.a), !any(vec2<bool>(true, true)) | !any(vec2<bool>(arg_0, false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(341f, _wgslsmith_f_op_f32(floor(var_0.b)), _wgslsmith_f_op_f32(floor(var_0.c.c.x)), _wgslsmith_f_op_f32(-var_0.b)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, -451f, -1000f, -383f) * _wgslsmith_f_op_vec4_f32(var_0.d.c * var_0.d.c))), var_0.d.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-967f, -101f, 518f)) - _wgslsmith_f_op_vec3_f32(exp2(var_0.d.e)))), -1i);
    var var_2 = Struct_1(~(var_1.c.a << (max(min(var_0.d.a, u_input.a), vec3<u32>(0u, 4294967295u, 92698u)) % vec3<u32>(32u))), false, vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.d.c.x, 1959f) + _wgslsmith_f_op_f32(abs(var_0.d.c.x))))), 1532f, -494f, 297f), func_4(Struct_1(var_0.c.a, !(!var_0.a), var_1.d.c, var_1.c.d, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_1.c.e)))), var_1.c.a.xz, (var_0.a | (var_1.c.b | true)) & any(vec4<bool>(true, true, true, true)), Struct_2(var_0.d.b && (4294967295u < u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.e.x)), var_0.d, var_0.d, 15948i)), _wgslsmith_f_op_vec3_f32(var_0.c.c.wyw * vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.b)), _wgslsmith_f_op_f32(var_1.d.c.x + _wgslsmith_f_op_f32(-var_1.b)), -1000f)));
    return select(_wgslsmith_clamp_vec3_u32(countOneBits(var_2.a), ~_wgslsmith_mult_vec3_u32(~u_input.a, u_input.a), var_2.a), vec3<u32>(~_wgslsmith_clamp_u32(~var_0.c.a.x, 14516u, abs(92575u)), 45392u, firstLeadingBit(reverseBits(var_2.a.x))), var_1.c.b);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: i32) -> vec3<f32> {
    global0 = arg_2;
    let var_0 = -2147483647i;
    let var_1 = var_0;
    global0 = 18879i;
    global0 = abs(func_4(Struct_1(arg_0, false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.d.c)), _wgslsmith_dot_vec2_i32(max(vec2<i32>(arg_2, 1i), vec2<i32>(4914i, 4907i)), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_2, arg_1.e), vec2<i32>(arg_2, arg_1.e))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-arg_1.c.e)))), ~vec2<u32>(arg_1.d.a.x, arg_0.x >> (12241u % 32u)), (var_0 & ~0i) <= ((arg_2 >> (arg_1.c.a.x % 32u)) >> (_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(4294967295u, 0u, 12022u)) % 32u)), arg_1));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-611f, arg_1.b, 167f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(120f, -1000f, arg_1.b))))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1649f, 166f, arg_1.c.e.x)) * arg_1.c.e) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-259f, arg_1.d.e.x, arg_1.b) * arg_1.c.c.ywy) - _wgslsmith_f_op_vec3_f32(ceil(arg_1.c.e)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 41469i;
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1788f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-750f * 394f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(217f - -200f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(func_1(false), Struct_2(all(vec4<bool>(false, false, false, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -581f)), Struct_1(u_input.a >> (u_input.a % vec3<u32>(32u)), true, vec4<f32>(var_0.x, var_0.x, 874f, var_0.x), 13557i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 2608f, var_0.x))), Struct_1(~u_input.a, all(vec3<bool>(true, false, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-172f, -1120f, 2142f, 268f)), firstLeadingBit(-22704i), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2484f, 1263f, -242f)))), -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(abs(25432i), _wgslsmith_div_i32(-18982i, 15369i), -34992i >> (u_input.a.x % 32u), 1i), -_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -1i, 32610i, 2147483647i), vec4<i32>(-37393i, 1i, 27017i, -32587i))))));
    var_0 = vec3<f32>(var_0.x, -627f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -841f) - 1f));
    var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(759f * _wgslsmith_f_op_f32(round(-241f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) * _wgslsmith_div_f32(var_0.x, var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -396f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x))))));
    global0 = func_2(u_input.a, Struct_2(true, -822f, Struct_1(vec3<u32>(19848u, 0u, 83049u), true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1771f, 1147f, var_0.x, var_0.x)), 1i << (u_input.a.x % 32u), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, var_0.x, 509f)))), Struct_1(u_input.a ^ vec3<u32>(4061u, u_input.a.x, 1u), true, _wgslsmith_div_vec4_f32(vec4<f32>(-1375f, var_0.x, var_0.x, -1174f), vec4<f32>(267f, var_0.x, var_0.x, 1300f)), ~2147483647i, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 833f, 532f) * vec3<f32>(var_0.x, var_0.x, var_0.x))), ~_wgslsmith_mult_i32(30263i, 0i)), select(u_input.a.yx, u_input.a.zz, vec2<bool>(true, true))).x | ~abs(select(_wgslsmith_add_i32(0i, -29520i), firstTrailingBit(-1i), true));
    global0 = reverseBits(634i);
    var var_1 = Struct_2(all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), -850f < _wgslsmith_f_op_f32(select(-696f, var_0.x, true)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_0.x)))))), -673f)), Struct_1(u_input.a, true, vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(481f + -1000f), 630f, 407f), _wgslsmith_dot_vec3_i32(-(~vec3<i32>(-14953i, -48288i, -55706i)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(5340i, 46695i)), -1820i, 1i)), vec3<f32>(1170f, -1265f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) + var_0.x))), Struct_1(vec3<u32>(func_1(12676u > u_input.a.x).x, 1u, max(~u_input.a.x, u_input.a.x)), true, vec4<f32>(221f, -119f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -378f)), _wgslsmith_div_f32(-895f, var_0.x)), _wgslsmith_sub_i32(-41196i, i32(-1i) * -1i) >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, u_input.a.x), u_input.a) % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1293f, 983f, var_0.x), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, var_0.x, -886f)))))), _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-5001i, ~2147483647i), 1i), -(-2147483647i << ((4294967295u << (u_input.a.x % 32u)) % 32u))));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) * _wgslsmith_f_op_f32(-649f - var_0.x)), 167f, var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(0u >> (var_1.d.a.x % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.c.c.x)) - _wgslsmith_f_op_f32(779f + -879f))), ~u_input.a.x << (~abs(var_1.d.a.x) % 32u), min(-reverseBits(~(-1948i)), 32187i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_1.d.e.yz - var_0.xy), _wgslsmith_f_op_vec2_f32(abs(var_1.c.c.xx)), select(vec2<bool>(var_1.d.b, var_1.d.b), vec2<bool>(var_1.c.b, var_1.c.b), var_1.a))))));
}

