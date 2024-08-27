struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: vec2<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: Struct_2) -> i32 {
    let var_0 = _wgslsmith_div_i32(~u_input.b, _wgslsmith_add_i32(arg_3.c.b, arg_2.b));
    return 2586i;
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> i32 {
    var var_0 = select(!(!(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 1u), vec3<u32>(u_input.a.x, 44474u, u_input.a.x)) >= _wgslsmith_add_u32(1u, u_input.a.x))), (u_input.b | _wgslsmith_div_i32(_wgslsmith_div_i32(arg_0.b, 2147483647i), -1i)) <= -52613i, true);
    let var_1 = Struct_3(vec3<i32>(_wgslsmith_div_i32(-_wgslsmith_mult_i32(arg_0.b, arg_0.b), -2147483647i), 1i, u_input.b), -(~0i), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c.c.x), _wgslsmith_f_op_f32(arg_0.a.d * 1007f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.c.x, -862f) + vec2<f32>(-757f, 763f)))))), 2814u);
    let var_2 = ~vec2<i32>(~1i, 23071i);
    return -26137i;
}

fn func_1(arg_0: f32, arg_1: Struct_3) -> Struct_2 {
    let var_0 = select(u_input.c, vec4<i32>(-func_2(vec4<bool>(false, true, false, false), vec3<u32>(arg_1.d, arg_1.d, u_input.a.x), Struct_3(arg_1.a, 35725i, arg_1.c, 4294967295u), Struct_2(Struct_1(true, 0i, vec4<f32>(-392f, arg_0, arg_0, -1000f), arg_0), u_input.c.x, Struct_1(false, 1i, vec4<f32>(1129f, -704f, -1259f, -828f), arg_1.c.x))), func_3(Struct_2(Struct_1(false, 37081i, vec4<f32>(arg_1.c.x, -701f, arg_1.c.x, arg_1.c.x), arg_1.c.x), 2147483647i, Struct_1(true, arg_1.b, vec4<f32>(-492f, arg_0, 405f, 1248f), arg_0)), max(arg_1.d, 0u)), reverseBits(i32(-1i) * -2147483647i), 2147483647i) | _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(30375i, 0i, -37525i, 27398i), ~u_input.c), vec4<i32>(-2147483647i, 10985i, 42329i, arg_1.a.x >> (4294967295u % 32u))), false);
    let var_1 = u_input.b | arg_1.b;
    var var_2 = any(!vec3<bool>(true, any(vec4<bool>(true, true, true, true)), true));
    var var_3 = false;
    let var_4 = !(!any(select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), true)));
    return Struct_2(Struct_1(any(!vec4<bool>(var_4, false, false, true)), var_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1236f, 648f, 1000f, 1000f)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -418f))))), var_0.x, Struct_1(var_4, func_3(Struct_2(Struct_1(var_4, -7099i, vec4<f32>(877f, -1132f, -276f, arg_1.c.x), arg_1.c.x), _wgslsmith_dot_vec3_i32(u_input.c.yzx, vec3<i32>(0i, arg_1.a.x, var_0.x)), Struct_1(true, 2147483647i, vec4<f32>(448f, arg_0, arg_1.c.x, arg_1.c.x), -318f)), arg_1.d), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-827f, arg_1.c.x, arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-257f, -1044f, -129f, arg_0))))), _wgslsmith_f_op_f32(-477f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.c.x))))));
}

fn func_4(arg_0: Struct_2) -> vec3<i32> {
    var var_0 = _wgslsmith_add_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 46003u, 0u) & vec4<u32>(u_input.a.x, 12566u, 0u, 4294967295u), firstLeadingBit(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x))) << (firstLeadingBit(vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, 0u), 6792u, _wgslsmith_div_u32(1u, 64742u), 1u)) % vec4<u32>(32u)), vec4<u32>(21493u, 1u, abs(_wgslsmith_sub_u32(u_input.a.x, max(13892u, 0u))), _wgslsmith_sub_u32(4294967295u, 23148u)));
    let var_1 = _wgslsmith_f_op_f32(-2716f + _wgslsmith_f_op_f32(f32(-1f) * -591f)) != arg_0.c.c.x;
    var var_2 = arg_0.a.c.x;
    var var_3 = vec2<bool>(!(!all(select(vec3<bool>(arg_0.a.a, var_1, var_1), vec3<bool>(true, var_1, var_1), arg_0.c.a))), 1u >= _wgslsmith_mult_u32(~u_input.a.x, ~(~1u)));
    let var_4 = _wgslsmith_sub_vec3_i32(u_input.c.yxz & vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(14318i, -9693i, 18954i, -1i), _wgslsmith_clamp_vec4_i32(u_input.c, vec4<i32>(1i, 2147483647i, u_input.c.x, arg_0.b), vec4<i32>(64861i, u_input.b, 9410i, arg_0.b))), arg_0.a.b, select(-u_input.c.x, _wgslsmith_mod_i32(arg_0.a.b, 1i), all(vec2<bool>(var_3.x, arg_0.c.a)))), vec3<i32>(u_input.b, 0i, firstLeadingBit(1i)));
    return ~vec3<i32>(_wgslsmith_mod_i32(var_4.x, abs(-1i | u_input.c.x)), i32(-1i) * -2147483647i, ~(-44378i));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<i32>) -> vec3<u32> {
    var var_0 = 0u;
    var_0 = 77053u;
    var var_1 = vec3<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(reverseBits(~(vec4<u32>(70214u, arg_0.d, arg_0.d, 1u) & vec4<u32>(0u, arg_0.d, u_input.a.x, 32512u))), vec4<u32>(~_wgslsmith_add_u32(arg_0.d, u_input.a.x), _wgslsmith_clamp_u32(~arg_0.d, arg_0.d << (50828u % 32u), u_input.a.x), ~select(1u, arg_0.d, true), 4294967295u)), _wgslsmith_div_u32(_wgslsmith_mult_u32(max(arg_0.d, u_input.a.x), _wgslsmith_mod_u32(arg_0.d, arg_0.d)) & arg_0.d, countOneBits(_wgslsmith_clamp_u32(arg_0.d, abs(u_input.a.x), 1u))));
    let var_2 = max(select(vec2<i32>(7026i, arg_1.x) | ~firstLeadingBit(vec2<i32>(u_input.b, arg_1.x)), vec2<i32>(-1i) * -(vec2<i32>(62304i, arg_0.a.x) ^ vec2<i32>(1i, 31252i)), vec2<bool>(true, all(vec4<bool>(true, true, false, true)))), ~(vec2<i32>(u_input.b, firstTrailingBit(arg_1.x)) ^ vec2<i32>(~u_input.c.x, -19478i)));
    var var_3 = vec4<u32>(_wgslsmith_mult_u32(max(arg_0.d, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(arg_0.d, 4294967295u, var_1.x, arg_0.d)), vec4<u32>(var_1.x, 1u, 32181u, arg_0.d))), 4294967295u), ~(~abs(4294967295u)), arg_0.d, var_1.x);
    return var_3.zxz;
}

fn func_6(arg_0: vec3<u32>, arg_1: u32, arg_2: i32) -> Struct_3 {
    let var_0 = !(!vec3<bool>(true, all(vec3<bool>(false, false, true)), true));
    var var_1 = vec2<u32>(93494u, func_5(Struct_3(reverseBits(u_input.c.yxx), -1i, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-732f, 1550f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(835f, -884f))))), _wgslsmith_dot_vec3_u32(vec3<u32>(62242u, arg_1, arg_1) | vec3<u32>(18000u, 12450u, arg_0.x), ~arg_0)), _wgslsmith_clamp_vec2_i32(~min(vec2<i32>(u_input.b, 23586i), u_input.c.yw), u_input.c.yw, -(vec2<i32>(66666i, arg_2) >> (arg_0.xy % vec2<u32>(32u))))).x);
    var var_2 = 4294967295u & arg_1;
    let var_3 = Struct_2(func_1(_wgslsmith_f_op_f32(sign(1f)), Struct_3(vec3<i32>(-60426i | u_input.b, ~(-1i), func_2(vec4<bool>(true, var_0.x, var_0.x, var_0.x), arg_0, Struct_3(u_input.c.xyx, u_input.c.x, vec2<f32>(-1587f, -1359f), u_input.a.x), Struct_2(Struct_1(false, 1i, vec4<f32>(-1606f, -900f, 1393f, -545f), 572f), u_input.b, Struct_1(false, 3612i, vec4<f32>(851f, -876f, -713f, 576f), 1080f)))), _wgslsmith_sub_i32(max(arg_2, -21178i), 44509i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(296f, -1374f) + vec2<f32>(1639f, 913f)) + vec2<f32>(-105f, 346f)), firstLeadingBit(~arg_1))).a, arg_2, func_1(_wgslsmith_f_op_f32(1242f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -463f)))), Struct_3(min(vec3<i32>(38418i, -31182i, arg_2), vec3<i32>(arg_2, arg_2, 1i) >> (vec3<u32>(arg_1, 0u, 18510u) % vec3<u32>(32u))), arg_2, vec2<f32>(-608f, _wgslsmith_f_op_f32(307f - -270f)), u_input.a.x)).a);
    var_2 = select(_wgslsmith_add_u32(40944u, ~(~u_input.a.x)), ~firstLeadingBit(~func_5(Struct_3(vec3<i32>(arg_2, 1i, var_3.c.b), var_3.c.b, var_3.c.c.yz, u_input.a.x), vec2<i32>(u_input.b, 34382i)).x), any(select(select(select(vec3<bool>(true, var_0.x, var_3.a.a), vec3<bool>(var_3.a.a, var_3.c.a, true), vec3<bool>(var_0.x, false, var_3.a.a)), vec3<bool>(var_0.x, var_3.c.a, false), var_3.a.a), vec3<bool>(var_0.x, false, true), vec3<bool>(true, true, true))));
    return Struct_3(vec3<i32>(0i, firstLeadingBit(var_3.b), var_3.b & u_input.c.x), 0i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_3.c.c.x, var_3.a.c.x), vec2<f32>(var_3.a.d, -156f))))) - vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_3.c.d, var_3.a.c.x))), 1253f)), _wgslsmith_dot_vec2_u32(u_input.a, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(Struct_3(func_4(func_1(-1000f, Struct_3(u_input.c.zwx, u_input.b, vec2<f32>(-781f, -1119f), 57438u))), -u_input.c.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 380f)), ~(4294967295u & u_input.a.x)), abs(~min(u_input.c.wy, vec2<i32>(-2147483647i, 26916i)))), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~(~u_input.a), (u_input.a & vec2<u32>(u_input.a.x, u_input.a.x)) >> ((u_input.a & vec2<u32>(11119u, u_input.a.x)) % vec2<u32>(32u))), _wgslsmith_div_u32(~(~51221u), u_input.a.x)), ~(-2147483647i));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -430f);
    let var_2 = var_0.a.zz;
    var var_3 = min(_wgslsmith_sub_vec4_i32(vec4<i32>(-22133i, 2147483647i, 0i, -1i), u_input.c), u_input.c);
    var_3 = countOneBits(vec4<i32>(-1i) * -vec4<i32>(-24204i, i32(-1i) * -12628i, -2108i, func_6(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), 46126u, var_3.x).b));
    var_3 = ~select(~(vec4<i32>(-1i) * -vec4<i32>(-15283i, var_3.x, -1i, -40744i)), min(_wgslsmith_mult_vec4_i32(reverseBits(u_input.c), vec4<i32>(-48377i, var_2.x, var_0.a.x, -1i) & vec4<i32>(1i, var_2.x, u_input.b, var_3.x)), vec4<i32>(u_input.b, var_0.a.x, 22976i, func_4(Struct_2(Struct_1(false, -25563i, vec4<f32>(293f, var_1, var_1, var_1), -939f), var_3.x, Struct_1(false, 29212i, vec4<f32>(-640f, 572f, var_1, 894f), var_1))).x)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))), vec4<bool>(all(vec2<bool>(true, true)), all(vec3<bool>(false, false, true)), true, any(vec2<bool>(true, true))), false));
    var_3 = -(~(~min(reverseBits(u_input.c), vec4<i32>(var_2.x, 1i, var_2.x, var_0.a.x))));
    var_3 = select(u_input.c, vec4<i32>(~var_0.b, 0i, 0i, var_0.a.x), select(_wgslsmith_sub_i32(u_input.b, _wgslsmith_dot_vec4_i32(u_input.c, u_input.c)) >= func_4(func_1(var_0.c.x, var_0)).x, any(vec2<bool>(func_1(var_0.c.x, var_0).c.a, any(vec4<bool>(false, true, true, false)))), all(vec2<bool>(true, func_1(-132f, Struct_3(vec3<i32>(var_3.x, -2126i, -1i), 2147483647i, vec2<f32>(523f, -533f), 4294967295u)).c.a))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(min(_wgslsmith_add_u32(var_0.d, var_0.d), var_0.d) | _wgslsmith_clamp_u32(_wgslsmith_div_u32(var_0.d, u_input.a.x), 139271u, ~1u), var_0.d), u_input.a.x, -reverseBits(_wgslsmith_add_vec2_i32(~var_0.a.xz, ~vec2<i32>(var_0.a.x, var_3.x))));
}

