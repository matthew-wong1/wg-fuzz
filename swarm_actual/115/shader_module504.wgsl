struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_1(firstTrailingBit(~vec3<i32>(1i, 1i, 1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -firstLeadingBit(vec3<i32>(u_input.a, u_input.a, 6810i)), min(vec3<i32>(_wgslsmith_sub_i32(1i, 1i), ~(-1i), reverseBits(12202i)), -vec3<i32>(u_input.a, u_input.a, u_input.a) & (vec3<i32>(-19509i, u_input.a, u_input.a) >> (vec3<u32>(4294967295u, 92484u, 1u) % vec3<u32>(32u))))), 1u, !(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), true))), _wgslsmith_f_op_f32(-819f * _wgslsmith_f_op_f32(953f + _wgslsmith_f_op_f32(-315f + _wgslsmith_f_op_f32(f32(-1f) * -357f)))));
    var var_1 = Struct_4(max(_wgslsmith_mod_i32(max(~2147483647i, -var_0.b.x), -u_input.a), _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a, 1i, var_0.a.x, -7675i), -vec4<i32>(var_0.a.x, -54171i, u_input.a, 8014i), var_0.d.x), -(~vec4<i32>(u_input.a, u_input.a, var_0.a.x, -2147483647i)))), Struct_3(Struct_1(-vec3<i32>(-50483i, 10966i, -2147483647i) ^ reverseBits(vec3<i32>(var_0.b.x, 369i, -2147483647i)), -var_0.a, var_0.c >> ((var_0.c >> (var_0.c % 32u)) % 32u), vec2<bool>(var_0.d.x && var_0.d.x, var_0.d.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_0.e)), var_0.e))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e, var_0.e)))))), Struct_1(-vec3<i32>(5787i, 17071i, var_0.b.x), -vec3<i32>(var_0.a.x, -14352i, -2147483647i) >> (vec3<u32>(34162u, 34576u, 4294967295u) % vec3<u32>(32u)), 0u >> (var_0.c % 32u), vec2<bool>(false, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-984f))))), vec3<u32>(64385u, reverseBits(abs(_wgslsmith_div_u32(3534u, var_0.c))), ~0u), _wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -2147483647i, u_input.a, 32793i), vec4<i32>(25122i, var_0.a.x, var_0.b.x, 63131i)), countOneBits(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-11866i, 49570i, var_0.b.x, var_0.a.x), firstLeadingBit(vec4<i32>(var_0.a.x, var_0.b.x, 2147483647i, u_input.a)), vec4<i32>(-4932i, var_0.a.x, var_0.b.x, u_input.a)))), vec4<u32>(abs(0u) | (~var_0.c ^ 4294967295u), var_0.c, ~_wgslsmith_sub_u32(var_0.c, var_0.c) | _wgslsmith_mod_u32(~13119u, 19429u), 1u));
    var_0 = var_1.b.c;
    var_1 = Struct_4(-_wgslsmith_mult_i32(1i ^ firstTrailingBit(u_input.a), -(i32(-1i) * -2147483647i)), var_1.b, ~vec3<u32>(~abs(var_1.b.c.c), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, 4294967295u, var_1.e.x, var_1.c.x), vec4<u32>(var_1.c.x, var_0.c, var_0.c, var_0.c)), var_1.e.x), firstLeadingBit(_wgslsmith_dot_vec3_i32(~min(vec3<i32>(0i, 19532i, 57247i), var_1.b.c.a), var_1.b.a.a)), _wgslsmith_mult_vec4_u32(var_1.e, var_1.e));
    var_1 = Struct_4(reverseBits(var_0.b.x), var_1.b, vec3<u32>(_wgslsmith_div_u32(140717u, select(~22238u, _wgslsmith_clamp_u32(var_1.e.x, var_1.c.x, 41217u), !var_1.b.c.d.x)), ~(~_wgslsmith_sub_u32(var_0.c, 1u)), ~min(_wgslsmith_mod_u32(var_0.c, var_0.c), 68888u)), _wgslsmith_clamp_i32(var_0.a.x, var_1.b.c.a.x >> (firstLeadingBit(firstTrailingBit(var_1.c.x)) % 32u), firstTrailingBit(firstTrailingBit(-59818i | u_input.a))), _wgslsmith_mult_vec4_u32(~(~(vec4<u32>(4294967295u, 40364u, 0u, 4294967295u) & vec4<u32>(var_0.c, var_0.c, 1363u, 25567u))), vec4<u32>(4918u, var_1.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.e.x, 20383u), _wgslsmith_mult_vec2_u32(var_1.e.zz, var_1.c.zx)), ~var_0.c & 4294967295u)));
    return abs(min(firstTrailingBit(var_1.e), var_1.e));
}

fn func_4(arg_0: vec4<u32>) -> f32 {
    let var_0 = 1i;
    let var_1 = arg_0.wz;
    var var_2 = vec3<i32>(u_input.a, var_0, (~(-8903i) & (countOneBits(-1i) & ~u_input.a)) >> (_wgslsmith_sub_u32(~reverseBits(var_1.x), ~(39915u << (var_1.x % 32u))) % 32u));
    let var_3 = Struct_3(Struct_1(abs(-vec3<i32>(2147483647i, -2147483647i, -7536i)), _wgslsmith_div_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(var_0, -1i, 0i), vec3<i32>(u_input.a, var_0, 26733i)), min(~vec3<i32>(-1i, 1506i, var_0), vec3<i32>(11352i, u_input.a, 65569i))), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(11383u, arg_0.x, 49807u, var_1.x), arg_0)), !vec2<bool>(all(vec3<bool>(true, false, true)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(572f - 1181f))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-919f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(296f)))))), Struct_1(countOneBits(vec3<i32>(-18790i, -57493i, abs(2147483647i))), vec3<i32>(var_0, abs(var_0), _wgslsmith_div_i32(var_2.x, abs(1i))), 112295u, vec2<bool>(true, true), 543f));
    var var_4 = _wgslsmith_f_op_f32(var_3.c.e - -1218f);
    return 1355f;
}

fn func_2(arg_0: vec3<u32>) -> u32 {
    var var_0 = countOneBits(~(~4402u));
    var_0 = arg_0.x;
    let var_1 = Struct_3(Struct_1(vec3<i32>(u_input.a, 1i, _wgslsmith_mod_i32(-10186i, 2147483647i | u_input.a)), -(~(~vec3<i32>(u_input.a, u_input.a, -13792i))), arg_0.x, select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), -392i >= u_input.a), select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, false), vec2<bool>(true, true))), _wgslsmith_f_op_f32(-1099f - 338f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-939f, 1056f))))), Struct_1(firstLeadingBit(countOneBits(vec3<i32>(1i, 35121i, u_input.a))), ~_wgslsmith_mult_vec3_i32(select(vec3<i32>(0i, 0i, -34313i), vec3<i32>(-25098i, u_input.a, -2147483647i), false), min(vec3<i32>(u_input.a, u_input.a, 3081i), vec3<i32>(u_input.a, u_input.a, 15727i))), _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(68942u), arg_0.x), arg_0.zy & arg_0.zx), vec2<bool>(true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2911f * -156f), -414f)) + _wgslsmith_f_op_f32(-1312f * _wgslsmith_f_op_f32(abs(-903f))))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_3()))))), _wgslsmith_f_op_f32(var_1.b.x + -105f), var_1.a.e);
    let var_3 = _wgslsmith_mod_vec3_i32(countOneBits(-vec3<i32>(var_1.c.a.x, select(30282i, 21851i, false), ~(-1i))), _wgslsmith_div_vec3_i32(min(~var_1.a.a << (arg_0 % vec3<u32>(32u)), ~vec3<i32>(-1i, u_input.a, u_input.a)), ~var_1.a.b));
    return arg_0.x;
}

fn func_5(arg_0: vec2<bool>, arg_1: u32, arg_2: f32) -> bool {
    let var_0 = ~_wgslsmith_mult_vec4_u32(abs(abs(~vec4<u32>(arg_1, 0u, arg_1, 46353u))), vec4<u32>(abs(~1u), ~(~56766u), reverseBits(abs(1u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 49930u, 0u), vec3<u32>(arg_1, arg_1, 91900u))));
    let var_1 = -2147483647i;
    let var_2 = 102426u;
    let var_3 = !(!vec2<bool>(_wgslsmith_f_op_f32(-arg_2) >= _wgslsmith_div_f32(arg_2, -2022f), arg_0.x));
    let var_4 = Struct_2(countOneBits(vec2<i32>(abs(_wgslsmith_div_i32(1i, 9255i)), _wgslsmith_dot_vec3_i32(max(vec3<i32>(-2147483647i, u_input.a, -45977i), vec3<i32>(1i, var_1, var_1)), vec3<i32>(var_1, u_input.a, var_1) & vec3<i32>(15920i, u_input.a, 2597i)))), _wgslsmith_clamp_u32(firstLeadingBit(var_2 >> (83147u % 32u)) | func_2(~vec3<u32>(52356u, var_2, arg_1)), firstLeadingBit(var_2), ~var_2), any(!select(vec3<bool>(arg_0.x, false, true), vec3<bool>(true, arg_0.x, true), select(vec3<bool>(true, arg_0.x, var_3.x), vec3<bool>(true, false, false), vec3<bool>(true, var_3.x, true)))), Struct_1(abs(-select(vec3<i32>(-32581i, -2147483647i, u_input.a), vec3<i32>(var_1, var_1, var_1), vec3<bool>(var_3.x, arg_0.x, var_3.x))), vec3<i32>(u_input.a, _wgslsmith_add_i32(u_input.a, var_1), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1, var_1, -28902i, u_input.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(-27191i, var_1, -48556i, u_input.a), vec4<i32>(0i, u_input.a, 34116i, 0i), vec4<i32>(-2147483647i, 61288i, 11502i, u_input.a)))), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, arg_1, var_0.x, 4294967295u), var_0)), var_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, arg_2) + arg_2))));
    return select(var_3.x, false, all(!vec3<bool>(arg_0.x || arg_0.x, arg_0.x, true)));
}

fn func_1(arg_0: vec4<u32>) -> vec2<i32> {
    var var_0 = (-abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(11681i, -4002i), vec2<i32>(u_input.a, u_input.a), vec2<i32>(0i, u_input.a))) | -vec2<i32>(0i, u_input.a)) << (firstTrailingBit(~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 4294967295u), abs(arg_0.wz))) % vec2<u32>(32u));
    var var_1 = Struct_2(-vec2<i32>(2147483647i, reverseBits(-27474i)), 45725u, func_5(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(all(vec4<bool>(false, false, true, false)), true), all(vec3<bool>(false, false, true))), _wgslsmith_div_u32(_wgslsmith_add_u32(reverseBits(22328u), 0u), func_2(arg_0.zwz)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1069f)))), Struct_1(select(select(vec3<i32>(u_input.a, var_0.x, var_0.x), vec3<i32>(-2147483647i, u_input.a, var_0.x), vec3<bool>(false, false, true)) ^ abs(vec3<i32>(u_input.a, var_0.x, var_0.x)), -vec3<i32>(-13885i, 1i, 6490i), vec3<bool>(true, true, true)), abs(-_wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, u_input.a, var_0.x), vec3<i32>(var_0.x, 36878i, 0i))), ~arg_0.x, select(vec2<bool>(false, all(vec3<bool>(false, false, false))), vec2<bool>(true, true), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-568f + _wgslsmith_f_op_f32(f32(-1f) * -916f)) + -692f)));
    var_0 = -vec2<i32>(-(-1i ^ reverseBits(u_input.a)), var_0.x);
    var var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(~func_3().x, firstLeadingBit(reverseBits(1u)), 0u, var_1.b | var_1.b), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(select(arg_0, arg_0, var_1.c) & vec4<u32>(arg_0.x, arg_0.x, var_1.d.c, 4294967295u), arg_0), vec4<u32>(1u << (var_1.d.c % 32u), ~var_1.b, _wgslsmith_add_u32(4294967295u, ~var_1.d.c), 1u)));
    var var_3 = Struct_3(Struct_1(_wgslsmith_div_vec3_i32(select(~var_1.d.b, vec3<i32>(-9718i, 51848i, -36955i), all(vec4<bool>(var_1.d.d.x, var_1.d.d.x, var_1.c, false))), vec3<i32>(firstLeadingBit(var_0.x), _wgslsmith_mod_i32(var_1.a.x, 2147483647i), var_0.x ^ var_1.d.a.x)), -_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(var_1.d.b, vec3<i32>(u_input.a, var_1.a.x, 46466i)), select(vec3<i32>(2823i, 2147483647i, 0i), var_1.d.b, vec3<bool>(var_1.c, false, var_1.c))), var_2.x, var_1.d.d, _wgslsmith_f_op_f32(exp2(1f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1000f + 1244f), _wgslsmith_f_op_f32(min(var_1.d.e, 397f)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-645f, var_1.d.e), vec2<f32>(var_1.d.e, -460f)), vec2<f32>(1f, 1f), var_1.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d.e, var_1.d.e) + vec2<f32>(var_1.d.e, 247f))), func_5(var_1.d.d, ~arg_0.x, var_1.d.e)))), var_1.d);
    return -(vec2<i32>(-reverseBits(-40278i), var_1.d.b.x) | var_1.d.a.yz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~(~vec2<i32>(21177i, 22075i)) | -_wgslsmith_sub_vec2_i32(-vec2<i32>(-1i, u_input.a), func_1(vec4<u32>(0u, 4294967295u, 31542u, 4294967295u))), select(1u, max(_wgslsmith_div_u32(~92289u, firstTrailingBit(1u)), 1u), all(vec4<bool>(true, true, true, true))), true, Struct_1(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, -2147483647i, u_input.a) << (vec3<u32>(1u, 0u, 20911u) % vec3<u32>(32u)), -vec3<i32>(u_input.a, u_input.a, u_input.a), ~vec3<i32>(-25218i, -58512i, u_input.a)), -(~vec3<i32>(u_input.a, u_input.a, u_input.a)), all(vec4<bool>(false, false, true, false))), ~vec3<i32>(u_input.a, u_input.a & u_input.a, u_input.a), ~abs(~1u), !select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, false)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(793f - -781f), 118f))))));
    let var_1 = select(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, var_0.d.d.x, true), vec3<bool>(true, var_0.c, false), vec3<bool>(var_0.d.d.x, false, var_0.d.d.x)), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), select(vec3<bool>(true, u_input.a == 1i, all(var_0.d.d)), select(select(vec3<bool>(true, var_0.c, false), !vec3<bool>(true, false, var_0.d.d.x), vec3<bool>(false, var_0.c, true)), !select(vec3<bool>(var_0.d.d.x, false, false), vec3<bool>(var_0.d.d.x, true, false), true), !select(vec3<bool>(false, true, var_0.c), vec3<bool>(var_0.c, var_0.d.d.x, false), vec3<bool>(true, var_0.c, false))), vec3<bool>(var_0.d.d.x, select(!var_0.c, true, true), var_0.c || true)), any(select(!vec3<bool>(var_0.c, true, true), vec3<bool>(func_5(var_0.d.d, 1u, var_0.d.e), true, true), false)));
    let var_2 = -1i;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1066f))));
    let var_4 = Struct_4(firstTrailingBit(-3767i), Struct_3(Struct_1(min(var_0.d.a, var_0.d.a) | vec3<i32>(5168i, 1i, u_input.a), ~(vec3<i32>(22771i, -1005i, -1i) >> (vec3<u32>(5508u, var_0.b, var_0.d.c) % vec3<u32>(32u))), var_0.d.c, var_1.xy, var_0.d.e), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.e, var_0.d.e)) + vec2<f32>(1f, 1f)))), Struct_1(vec3<i32>(29618i, u_input.a, -60873i) ^ -vec3<i32>(-1i, 2147483647i, 7887i), vec3<i32>(22445i, _wgslsmith_div_i32(-1i, var_0.d.a.x), _wgslsmith_mod_i32(var_0.d.b.x, -2147483647i)), ~14632u, select(!var_0.d.d, var_1.zx, var_0.d.d), -598f)), vec3<u32>(var_0.d.c, var_0.b, var_0.d.c) >> (select(vec3<u32>(select(1u, var_0.b, var_0.d.d.x), var_0.d.c, var_0.d.c), ~vec3<u32>(68831u, var_0.b, 1u), vec3<bool>(!var_1.x, true, all(var_1.zz))) % vec3<u32>(32u)), firstTrailingBit(-44868i), vec4<u32>(var_0.d.c, ~_wgslsmith_sub_u32(30460u, var_0.d.c) & _wgslsmith_clamp_u32(1u, min(61578u, 0u), var_0.b), 7476u, 41636u));
    var var_5 = var_4.b.a.d;
    var var_6 = select(select(var_1, var_1, vec3<bool>(true, false, var_5.x)), vec3<bool>(false, true, (var_4.b.c.d.x || var_4.b.c.d.x) | !var_0.c), true);
    let x = u_input.a;
    s_output = StorageBuffer(~var_4.c.x, var_4.e, _wgslsmith_clamp_i32(max(_wgslsmith_dot_vec2_i32(var_0.d.b.zx, var_0.a), var_2 | -1i) | var_4.a, firstLeadingBit(-26462i), _wgslsmith_mult_i32(func_1(~vec4<u32>(2601u, 4325u, var_4.e.x, var_4.c.x)).x, _wgslsmith_dot_vec3_i32(vec3<i32>(-14708i, 8112i, var_0.d.b.x), var_0.d.a | var_4.b.a.b))), var_4.b.b);
}

