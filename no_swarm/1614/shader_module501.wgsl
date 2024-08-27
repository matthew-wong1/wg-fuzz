struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: bool,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: vec4<f32>) -> u32 {
    let var_0 = select(!select(vec3<bool>(true, true, false), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), true), select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, false, true), false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), any(vec3<bool>(true, true, true))), select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), true), vec3<bool>(all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false))), true, ~u_input.b > 0i), false));
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(arg_2.a, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, _wgslsmith_f_op_f32(338f * arg_2.d), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(floor(arg_3.x))))))));
    var var_2 = var_0.x;
    var var_3 = Struct_1(var_0.xz, vec4<u32>(4294967295u, 1u, _wgslsmith_clamp_u32(~_wgslsmith_add_u32(u_input.a.x, u_input.a.x), firstTrailingBit(57719u) >> (87569u % 32u), 59455u), 1u), true, arg_0.x, vec4<bool>(var_0.x, select(false, true, !var_0.x), false, true));
    let var_4 = select(false, true, !var_3.c);
    return _wgslsmith_dot_vec4_u32(~vec4<u32>(~(~0u), firstLeadingBit(var_3.b.x | var_3.b.x), arg_0.x, 1u), ~var_3.b);
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec4<u32>, arg_3: u32) -> bool {
    var var_0 = _wgslsmith_dot_vec2_i32((min(~vec2<i32>(u_input.b, 0i), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(-1i, u_input.b))) >> (~vec2<u32>(54930u, arg_0) % vec2<u32>(32u))) | -_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, -26391i), ~vec2<i32>(u_input.b, u_input.b)), vec2<i32>(2147483647i, min(-2147483647i, -u_input.b) ^ u_input.b));
    var_0 = _wgslsmith_mod_i32(u_input.b, -21779i);
    var var_1 = Struct_4(arg_1, Struct_1(vec2<bool>(true, all(select(vec3<bool>(false, false, arg_1), vec3<bool>(arg_1, true, arg_1), false))), arg_2, false, arg_2.x, !select(!vec4<bool>(false, arg_1, false, false), !vec4<bool>(false, arg_1, arg_1, arg_1), -10442i <= u_input.b)), Struct_1(select(vec2<bool>(true, true), vec2<bool>(arg_1, !arg_1), select(!vec2<bool>(arg_1, arg_1), !vec2<bool>(false, arg_1), !vec2<bool>(arg_1, false))), max(_wgslsmith_div_vec4_u32(arg_2 ^ arg_2, select(arg_2, arg_2, arg_1)), max(~vec4<u32>(arg_2.x, 4294967295u, arg_0, 4294967295u), ~arg_2)), true, arg_0, vec4<bool>(any(select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(true, false, true), arg_1)), arg_1, true, false)), ~min(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, -26680i), vec2<i32>(-1i, u_input.b)) ^ ~vec2<i32>(-15918i, 15203i), ~_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(-5827i, -4388i))));
    let var_2 = Struct_1(var_1.c.e.wz, _wgslsmith_sub_vec4_u32(vec4<u32>((arg_0 >> (1u % 32u)) >> (1u % 32u), 0u, arg_3, firstLeadingBit(var_1.b.d << (34487u % 32u))), ~(~_wgslsmith_mult_vec4_u32(var_1.c.b, vec4<u32>(arg_0, 1u, arg_0, u_input.a.x)))), true, _wgslsmith_div_u32(u_input.a.x, var_1.b.b.x), vec4<bool>(any(var_1.c.a), arg_1, any(select(var_1.b.e, var_1.c.e, vec4<bool>(true, true, arg_1, arg_1))), any(var_1.c.e) & all(vec3<bool>(false, true, var_1.c.c))));
    var_0 = max(var_1.d.x, -50317i);
    return arg_1;
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: Struct_4) -> vec4<bool> {
    let var_0 = Struct_1(arg_3.b.a, ~vec4<u32>(4294967295u, arg_2.x, 75268u & (arg_2.x | 4294967295u), 66341u), func_4(reverseBits(u_input.a.x), all(select(select(arg_3.c.e, vec4<bool>(arg_3.c.a.x, false, arg_0, true), arg_3.c.e.x), vec4<bool>(false, true, true, false), !vec4<bool>(arg_0, false, false, arg_3.c.e.x))), arg_3.c.b, func_3(~arg_2.xz, vec4<i32>(arg_1.x, u_input.b ^ 0i, 40495i, _wgslsmith_div_i32(-2147483647i, -2147483647i)), Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1258f, -552f, 540f, 1325f) * vec4<f32>(1553f, 749f, -886f, 1042f)), -arg_1.zwz, _wgslsmith_div_vec2_f32(vec2<f32>(-1505f, -818f), vec2<f32>(620f, 174f)), -1873f, _wgslsmith_f_op_f32(-800f - -1178f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(443f, 1000f, -730f, 299f) + vec4<f32>(897f, 721f, 1259f, -192f)) * vec4<f32>(-527f, 676f, -189f, 335f)))), u_input.a.x, !arg_3.b.e);
    let var_1 = Struct_1(!select(arg_3.c.e.xx, select(select(arg_3.b.a, var_0.a, arg_0), arg_3.c.e.zw, !vec2<bool>(true, var_0.e.x)), arg_0), abs(select(select(var_0.b, vec4<u32>(74930u, 63862u, arg_3.c.b.x, var_0.b.x), !vec4<bool>(false, false, false, var_0.e.x)), var_0.b, !arg_3.c.a.x)), any(select(select(var_0.e, arg_3.c.e, true), !(!vec4<bool>(arg_3.c.e.x, var_0.a.x, arg_0, true)), _wgslsmith_f_op_f32(sign(1000f)) != _wgslsmith_f_op_f32(f32(-1f) * -288f))), arg_2.x, select(vec4<bool>(false, arg_3.c.a.x, !(!arg_3.b.e.x), true), !arg_3.c.e, select(arg_3.c.e, !(!vec4<bool>(false, arg_0, arg_0, false)), abs(1u) >= _wgslsmith_div_u32(arg_3.b.d, 95127u))));
    let var_2 = Struct_2(Struct_1(!arg_3.c.a, max(~firstTrailingBit(vec4<u32>(4294967295u, arg_3.c.b.x, 13607u, 0u)), firstTrailingBit(countOneBits(var_1.b))), false, arg_2.x, arg_3.b.e), var_1.e.zx, Struct_1(vec2<bool>(var_0.c, any(!var_1.e.wxz)), vec4<u32>(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(5432u, var_0.b.x, 4294967295u, 1u), vec4<u32>(40152u, 59522u, 0u, var_1.d))), max(0u | var_1.d, ~17341u), 74024u, _wgslsmith_sub_u32(select(71591u, 21423u, true), ~var_0.d)), -1i >= -arg_3.d.x, reverseBits(~var_0.d), !(!select(arg_3.c.e, var_0.e, var_0.e))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1496f, 489f, 854f, 1000f) - vec4<f32>(983f, -278f, 544f, -578f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-102f, -1211f, -718f, -858f) - vec4<f32>(829f, -1130f, 191f, 541f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-225f, 129f, 209f, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-631f, -279f, -1033f, 1730f)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-842f, -1425f, -865f, 428f))), !select(select(arg_3.c.e, vec4<bool>(true, false, var_1.a.x, arg_0), var_0.c), vec4<bool>(false, var_0.c, true, false), false))), arg_3.c);
    let var_3 = Struct_4(var_2.a.a.x & var_0.c, var_1, Struct_1(!select(var_2.b, select(var_1.e.xw, vec2<bool>(false, true), vec2<bool>(var_1.e.x, var_2.e.c)), select(vec2<bool>(true, true), vec2<bool>(var_0.e.x, arg_3.c.a.x), false)), vec4<u32>(_wgslsmith_add_u32(func_3(var_1.b.zy, arg_1, Struct_3(vec4<f32>(-1000f, var_2.d.x, 524f, var_2.d.x), arg_1.wzy, vec2<f32>(var_2.d.x, var_2.d.x), var_2.d.x, 295f), var_2.d), 115349u), arg_2.x, 7849u, arg_3.b.b.x), func_4(u_input.a.x, all(!var_1.e.xxy), select(var_0.b, ~vec4<u32>(12464u, u_input.a.x, 0u, 1u), true), 5262u), _wgslsmith_div_u32(var_0.d, 1u), vec4<bool>(true, arg_0, arg_3.b.e.x, any(vec2<bool>(arg_0, arg_3.a)))), _wgslsmith_clamp_vec2_i32(-firstLeadingBit(vec2<i32>(-71173i, 2147483647i)), arg_3.d, _wgslsmith_clamp_vec2_i32(min(arg_1.xz, vec2<i32>(arg_3.d.x, u_input.b) | arg_3.d), vec2<i32>(0i, 1i) | vec2<i32>(arg_3.d.x, arg_3.d.x), vec2<i32>(u_input.b, arg_1.x) ^ arg_3.d)));
    let var_4 = var_0;
    return vec4<bool>(func_4(var_4.d, all(select(!var_2.c.e.yyx, select(vec3<bool>(true, false, true), vec3<bool>(true, true, var_4.a.x), vec3<bool>(false, var_0.c, arg_3.a)), !var_0.e.yxx)), max(abs(var_3.b.b), ~(~vec4<u32>(34565u, 8318u, var_1.d, var_3.c.d))), var_4.d), var_2.c.e.x, arg_0, !(!arg_3.c.e.x));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4) -> Struct_3 {
    var var_0 = Struct_2(arg_1.b, vec2<bool>(all(func_2(any(vec4<bool>(arg_1.c.a.x, arg_1.a, false, arg_1.c.c)), ~vec4<i32>(u_input.b, 0i, 0i, 1i), arg_1.c.b, arg_1).zx), any(func_2(func_4(u_input.a.x, arg_1.b.e.x, vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, u_input.a.x), 47857u), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.b.x, 12248i, arg_0.b.x, arg_1.d.x), vec4<i32>(1i, u_input.b, 48635i, -1i), vec4<i32>(arg_0.b.x, arg_1.d.x, 0i, 2147483647i)), select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), arg_1.b.b, false), Struct_4(arg_1.c.a.x, arg_1.b, arg_1.c, vec2<i32>(-68620i, arg_1.d.x))))), Struct_1(arg_1.c.e.yw, ~vec4<u32>(1u, u_input.a.x, _wgslsmith_mult_u32(11444u, 0u), arg_1.c.b.x), all(vec3<bool>(true, arg_1.c.a.x != arg_1.b.a.x, arg_1.b.a.x != arg_1.c.c)), arg_1.c.d, vec4<bool>(_wgslsmith_div_i32(arg_1.d.x, 12473i) != abs(0i), _wgslsmith_f_op_f32(min(arg_0.a.x, arg_0.e)) > _wgslsmith_f_op_f32(sign(arg_0.c.x)), all(func_2(arg_1.a, vec4<i32>(33004i, arg_1.d.x, 16533i, 7850i), arg_1.b.b, arg_1).xw), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-210f - -1383f), _wgslsmith_f_op_f32(f32(-1f) * -118f), arg_0.a.x, arg_0.a.x) + arg_0.a)), Struct_1(arg_1.b.a, ~vec4<u32>(firstTrailingBit(35168u), 1u, arg_1.c.d, arg_1.b.b.x), arg_1.b.a.x, ~abs(~u_input.a.x), select(func_2(arg_1.c.a.x & arg_1.c.e.x, select(vec4<i32>(-14317i, arg_1.d.x, arg_0.b.x, arg_1.d.x), vec4<i32>(arg_0.b.x, arg_1.d.x, u_input.b, arg_0.b.x), arg_1.c.e), _wgslsmith_div_vec4_u32(arg_1.b.b, vec4<u32>(59211u, arg_1.c.b.x, u_input.a.x, u_input.a.x)), Struct_4(false, Struct_1(vec2<bool>(arg_1.a, true), vec4<u32>(24236u, 4294967295u, arg_1.c.d, arg_1.c.b.x), arg_1.b.e.x, arg_1.b.b.x, arg_1.b.e), arg_1.b, vec2<i32>(arg_1.d.x, arg_1.d.x))), select(!vec4<bool>(arg_1.a, arg_1.a, true, arg_1.c.e.x), arg_1.c.e, any(vec3<bool>(arg_1.a, arg_1.a, true))), arg_1.b.e)));
    let var_1 = !arg_1.b.e.zw;
    var_0 = Struct_2(var_0.e, vec2<bool>(true, var_0.a.e.x), var_0.e, var_0.d, Struct_1(var_1, ~(var_0.c.b << (abs(arg_1.b.b) % vec4<u32>(32u))), var_0.b.x, 30960u, select(vec4<bool>(arg_0.b.x <= arg_0.b.x, true, var_0.a.c | var_0.e.a.x, true), func_2(true, _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -1i, 2147483647i, -1i), vec4<i32>(-2147483647i, -25603i, u_input.b, u_input.b)), countOneBits(vec4<u32>(arg_1.c.b.x, 16936u, 1u, 17067u)), arg_1), select(!var_0.e.e, select(vec4<bool>(false, var_0.b.x, var_1.x, false), var_0.c.e, true), u_input.b >= arg_0.b.x))));
    var_0 = Struct_2(Struct_1(vec2<bool>(true, true), arg_1.c.b, false, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, firstLeadingBit(1u), 0u), u_input.a), vec4<bool>(!func_2(var_0.c.a.x, vec4<i32>(arg_0.b.x, u_input.b, arg_0.b.x, -45i), vec4<u32>(u_input.a.x, arg_1.b.d, u_input.a.x, 6278u), arg_1).x, arg_1.a, var_1.x, true)), !select(vec2<bool>(-2147483647i <= u_input.b, any(vec2<bool>(true, var_1.x))), vec2<bool>(!var_1.x, u_input.b < arg_1.d.x), var_1), Struct_1(var_0.a.e.xy, ~(~(var_0.a.b << (arg_1.b.b % vec4<u32>(32u)))), !arg_1.a, ~var_0.c.b.x, select(arg_1.b.e, vec4<bool>(true, true, true, true), arg_1.b.e)), arg_0.a, Struct_1(var_1, ~min(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.c.d, 1u, 0u, 9238u), var_0.e.b), var_0.a.b), !func_4(u_input.a.x, true, arg_1.c.b, 1u) & (_wgslsmith_f_op_f32(trunc(arg_0.d)) <= arg_0.c.x), ~u_input.a.x, vec4<bool>(var_0.b.x, var_0.c.a.x, any(select(vec4<bool>(var_0.a.a.x, arg_1.a, false, false), vec4<bool>(true, arg_1.c.a.x, true, arg_1.b.a.x), var_0.c.e)), all(arg_1.b.e.yzy))));
    var var_2 = arg_0;
    return arg_0;
}

fn func_1() -> Struct_1 {
    let var_0 = 11257u;
    var var_1 = any(vec4<bool>(true, true, true, true));
    let var_2 = Struct_4(true, Struct_1(!select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, true), true), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, 1u), vec4<u32>(1u, u_input.a.x, var_0, var_0))), -613f == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-236f + 122f))), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(19291u, u_input.a.x), var_0), 1u & u_input.a.x, ~(~var_0)), vec4<bool>(true, true, true, true)), Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_mult_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_0, var_0, 56751u), vec4<u32>(4294967295u, u_input.a.x, 0u, var_0)), select(vec4<u32>(var_0, 1u, u_input.a.x, u_input.a.x), ~vec4<u32>(u_input.a.x, 19683u, 70059u, u_input.a.x), true)), (~8080u >> (~u_input.a.x % 32u)) >= _wgslsmith_clamp_u32(~4294967295u, 25682u, u_input.a.x ^ 1u), min(u_input.a.x, _wgslsmith_clamp_u32(61063u, ~0u, ~0u)), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), true), true)), vec2<i32>(u_input.b, u_input.b));
    var var_3 = func_5(Struct_3(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(360f * 680f)), 771f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-597f - -408f))), abs(vec3<i32>(-var_2.d.x, _wgslsmith_dot_vec2_i32(var_2.d, var_2.d), -56675i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-655f, -1541f), vec2<f32>(-226f, -2143f), true)) * vec2<f32>(-339f, 151f))), _wgslsmith_f_op_f32(f32(-1f) * -1230f), _wgslsmith_f_op_f32(floor(263f))), Struct_4(false, Struct_1(var_2.c.a, vec4<u32>(1u, ~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 0u, 7704u, u_input.a.x), var_2.c.b), 1u), true, 1u, select(func_2(var_2.a, vec4<i32>(u_input.b, var_2.d.x, u_input.b, var_2.d.x), var_2.c.b, var_2), !var_2.c.e, vec4<bool>(var_2.b.a.x, var_2.c.a.x, var_2.c.e.x, var_2.b.c))), Struct_1(func_2(true, _wgslsmith_sub_vec4_i32(vec4<i32>(11316i, var_2.d.x, var_2.d.x, u_input.b), vec4<i32>(104629i, u_input.b, var_2.d.x, u_input.b)), vec4<u32>(0u, u_input.a.x, 0u, 4294967295u), Struct_4(false, var_2.b, Struct_1(var_2.b.a, var_2.c.b, false, 4294967295u, var_2.c.e), var_2.d)).yz, select(vec4<u32>(26033u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(0u, var_2.b.b.x, 12812u, var_2.c.b.x), var_2.c.e) >> (vec4<u32>(u_input.a.x, 1u, 4294967295u, 4294967295u) % vec4<u32>(32u)), any(var_2.b.a), select(var_2.b.d, var_2.b.b.x | 16384u, false), !(!vec4<bool>(true, true, var_2.a, false))), _wgslsmith_mult_vec2_i32(select(vec2<i32>(-1i, -10362i), vec2<i32>(var_2.d.x, u_input.b), true), _wgslsmith_mod_vec2_i32(var_2.d ^ var_2.d, abs(var_2.d)))));
    var_3 = func_5(func_5(Struct_3(_wgslsmith_f_op_vec4_f32(select(var_3.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.d, -1044f, 623f, var_3.a.x)), func_2(false, vec4<i32>(var_3.b.x, u_input.b, 77832i, 2147483647i), vec4<u32>(0u, u_input.a.x, 19890u, var_0), var_2))), vec3<i32>(firstLeadingBit(-1i), u_input.b, var_2.d.x), _wgslsmith_f_op_vec2_f32(-var_3.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d)), 1342f), var_2), var_2);
    return Struct_1(select(!var_2.b.e.zx, select(!var_2.c.e.yz, select(!var_2.c.a, var_2.b.e.wx, true), vec2<bool>(true, var_2.a)), var_2.c.e.yz), var_2.b.b | ~(~(~vec4<u32>(var_2.b.b.x, u_input.a.x, var_0, 4294967295u))), func_4(select(u_input.a.x, ~var_2.b.b.x, true), all(!var_2.b.e.zx), var_2.b.b, 1u | _wgslsmith_div_u32(_wgslsmith_mod_u32(133608u, var_2.c.b.x), 4294967295u)), _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_sub_u32(51669u, ~u_input.a.x)), select(var_2.b.e, select(func_2(true, vec4<i32>(var_3.b.x, u_input.b, -13896i, 0i) & vec4<i32>(1i, 0i, 33146i, 50423i), vec4<u32>(var_0, 4294967295u, var_0, var_2.c.b.x), var_2), !vec4<bool>(true, false, var_2.c.e.x, true), !(!var_2.b.e)), var_2.a));
}

fn func_6(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = Struct_4(!(!(true || !arg_0.a.c)), func_1(), arg_3, _wgslsmith_div_vec2_i32(arg_2 | countOneBits(arg_2), arg_2));
    let var_1 = func_5(Struct_3(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.d.x * -1190f))), arg_0.d.x, -731f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.x + arg_1.x) * arg_1.x)), -vec3<i32>(~arg_2.x, _wgslsmith_mod_i32(var_0.d.x, u_input.b), _wgslsmith_add_i32(-16700i, u_input.b)), _wgslsmith_f_op_vec2_f32(select(arg_1.xy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-154f, -1542f)))), var_0.b.e.zw)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1001f * arg_1.x)) * arg_0.d.x), -1360f), Struct_4(arg_0.e.a.x, func_1(), func_1(), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, -7282i), vec2<i32>(-8749i, 2147483647i))));
    var_0 = Struct_4(func_1().e.x, Struct_1(select(vec2<bool>(true, false), func_1().a, true), ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a.d, u_input.a.x, var_0.b.b.x, 4294967295u), ~vec4<u32>(46369u, 4294967295u, var_0.c.b.x, 2926u)), false, 92900u, select(vec4<bool>(true, true, any(arg_0.c.e.zz), any(arg_3.e)), !arg_3.e, !select(vec4<bool>(true, arg_3.c, var_0.c.c, true), arg_3.e, vec4<bool>(false, false, arg_0.a.a.x, true)))), func_1(), _wgslsmith_sub_vec2_i32(vec2<i32>(countOneBits(var_0.d.x), -(-58868i | var_1.b.x)), _wgslsmith_add_vec2_i32(var_0.d, select(vec2<i32>(var_1.b.x, u_input.b) | vec2<i32>(arg_2.x, 2147483647i), var_1.b.zz, select(vec2<bool>(arg_0.b.x, arg_3.e.x), var_0.b.e.yz, vec2<bool>(arg_0.e.e.x, arg_0.e.c))))));
    var_0 = Struct_4(!(!(-783f != _wgslsmith_f_op_f32(arg_0.d.x + 1000f))), Struct_1(vec2<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.d, arg_3.b.x, arg_0.e.b.x, arg_3.d), vec4<u32>(0u, 4294967295u, arg_3.b.x, u_input.a.x)) >= u_input.a.x, arg_0.e.a.x), vec4<u32>(64401u, abs(_wgslsmith_dot_vec2_u32(u_input.a.xz, arg_0.c.b.xy)), func_3(arg_3.b.xy, _wgslsmith_add_vec4_i32(vec4<i32>(var_0.d.x, -29557i, 19053i, -2147483647i), vec4<i32>(var_1.b.x, arg_2.x, arg_2.x, -1i)), var_1, _wgslsmith_div_vec4_f32(var_1.a, arg_0.d)), 1u), any(!select(arg_0.e.a, arg_3.a, vec2<bool>(true, arg_0.a.c))), _wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(44984u, 4294967295u))), ~vec2<u32>(1u, arg_0.c.d) & ~vec2<u32>(81326u, 1u)), arg_3.e), func_1(), var_0.d | (vec2<i32>(-1i) * -var_1.b.yz));
    var_0 = Struct_4(true, Struct_1(func_2(!(!arg_3.e.x), vec4<i32>(i32(-1i) * -2147483647i, 0i, 2147483647i, arg_2.x), vec4<u32>(0u, u_input.a.x, arg_0.c.d, ~u_input.a.x), Struct_4(true, func_1(), var_0.c, _wgslsmith_div_vec2_i32(arg_2, arg_2))).xx, vec4<u32>(var_0.b.d, func_1().b.x, u_input.a.x, arg_0.a.b.x), false, _wgslsmith_add_u32(arg_3.d, ~_wgslsmith_dot_vec3_u32(arg_3.b.xxx, vec3<u32>(61330u, u_input.a.x, arg_0.a.b.x))), var_0.c.e), func_1(), reverseBits(var_1.b.zz));
    return StorageBuffer(_wgslsmith_add_i32(-1i, 2147483647i), var_1.b.x, arg_0.a.d, vec2<u32>(reverseBits(u_input.a.x), u_input.a.x), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(Struct_2(func_1(), vec2<bool>(any(vec4<bool>(true, true, false, false)), all(func_1().e)), Struct_1(select(vec2<bool>(true, true), vec2<bool>(false, true), 21580i != u_input.b), ~(~vec4<u32>(u_input.a.x, u_input.a.x, 1u, 39451u)), true, ~u_input.a.x, select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-207f, 133f, -1000f, -104f) * vec4<f32>(-1323f, 656f, -614f, 334f))))), func_1()), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-485f, -536f, 1050f, 1000f)))))), max(vec2<i32>(1364i, max(u_input.b, 0i)), _wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b))) & ~(~(vec2<i32>(u_input.b, u_input.b) << (vec2<u32>(9794u, 24740u) % vec2<u32>(32u)))), Struct_1(func_1().a, vec4<u32>(u_input.a.x, 7280u & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), u_input.a.yz), _wgslsmith_add_u32(u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, 1u)), u_input.a.x), true, ~56452u, select(vec4<bool>(true, true, true, true), vec4<bool>(true, select(false, false, false), func_2(true, vec4<i32>(u_input.b, -1i, u_input.b, u_input.b), vec4<u32>(31876u, 1u, u_input.a.x, u_input.a.x), Struct_4(true, Struct_1(vec2<bool>(true, false), vec4<u32>(24542u, 4294967295u, 1u, 16936u), true, u_input.a.x, vec4<bool>(false, true, false, false)), Struct_1(vec2<bool>(false, false), vec4<u32>(73005u, u_input.a.x, 67653u, u_input.a.x), true, u_input.a.x, vec4<bool>(false, true, false, true)), vec2<i32>(u_input.b, 86062i))).x, func_1().a.x), true)));
}

