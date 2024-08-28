struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-164f, 1388f, -511f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1185f, -297f, -495f))))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-320f, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1228f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-853f, 2293f)) + _wgslsmith_f_op_f32(f32(-1f) * -140f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-672f, _wgslsmith_f_op_f32(2035f + -533f), 559f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-374f, -631f, 1394f)))), arg_1.a || false)), any(vec2<bool>(any(vec2<bool>(arg_0.x, arg_1.a)), false)))));
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(round(1879f))))), var_0.x, 419f, var_0.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, var_0.x, -932f, var_0.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-465f, var_0.x, var_0.x, 165f))))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1604f, 1023f, -878f, -594f), vec4<f32>(var_0.x, var_0.x, 304f, var_0.x)), vec4<f32>(472f, 410f, var_0.x, var_0.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-761f, 1395f, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_0.x, var_0.x, 315f)))), all(vec3<bool>(false, true, arg_0.x)))))));
    var var_2 = var_1.x;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(922f))) + var_1.x));
    var_2 = -589f;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(1295f, _wgslsmith_div_f32(var_0.x, var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_0.x))))), var_0.x));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> u32 {
    var var_0 = ~(~abs(countOneBits(vec2<u32>(arg_0.c, u_input.c))));
    var var_1 = select(select(vec3<bool>(arg_0.a, arg_0.a, !all(vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a))), vec3<bool>(true, true, true), true), !(!vec3<bool>(any(vec3<bool>(false, arg_0.a, true)), true, arg_0.a)), !vec3<bool>(!arg_0.a, true, all(vec3<bool>(arg_0.a, true, arg_0.a))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(var_1.x, arg_0.a, true), Struct_1(var_1.x, -20307i, var_0.x, arg_0.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(978f, -910f, 106f, -794f))))))));
    return 67104u;
}

fn func_4(arg_0: u32, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = false;
    var var_1 = Struct_1(all(vec3<bool>(var_0, false, !var_0)) | select(var_0, var_0, all(!vec2<bool>(var_0, false))), arg_1.x, arg_0, _wgslsmith_sub_vec3_i32(arg_1, _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.e, -49455i, u_input.b), arg_1), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(arg_1, vec3<i32>(u_input.d.x, 54153i, arg_1.x)), ~vec3<i32>(2757i, -2147483647i, u_input.b)))));
    var var_2 = Struct_1(!all(vec3<bool>(!var_1.a, var_0, true)), ~arg_1.x | -60820i, 11033u, vec3<i32>(~_wgslsmith_mult_i32(select(arg_1.x, arg_1.x, true), 1i), u_input.e, -2147483647i));
    var_2 = Struct_1(any(vec2<bool>(var_1.a, any(select(vec4<bool>(var_1.a, true, var_1.a, true), vec4<bool>(var_1.a, false, var_0, var_1.a), var_1.a)))), _wgslsmith_add_i32(select(~2147483647i, var_1.d.x, !(!var_2.a)), min(_wgslsmith_mod_i32(_wgslsmith_div_i32(arg_1.x, var_2.d.x), -12432i), -(arg_1.x | 1i))), ~arg_0 ^ _wgslsmith_clamp_u32(u_input.c, 1u, abs(var_2.c)), vec3<i32>(max(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, arg_1.x, var_2.b), var_2.d), _wgslsmith_mod_i32(u_input.b | -1i, -2147483647i ^ var_1.d.x)), abs(_wgslsmith_mult_i32(~arg_1.x, abs(var_2.b))), countOneBits(-46594i)));
    var var_3 = _wgslsmith_div_vec3_i32(select(~(var_2.d >> (select(vec3<u32>(24394u, 4294967295u, 39986u), vec3<u32>(36394u, 62758u, 591u), true) % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), var_2.d & _wgslsmith_sub_vec3_i32(vec3<i32>(var_2.b, 1i, var_2.d.x), vec3<i32>(u_input.d.x, -2147483647i, 2147483647i))), var_0), reverseBits((vec3<i32>(45430i, var_2.d.x, -1i) >> (~vec3<u32>(var_2.c, u_input.a, arg_0) % vec3<u32>(32u))) >> (~vec3<u32>(u_input.a, u_input.c, var_2.c) % vec3<u32>(32u))));
    return Struct_1(!(!(var_2.b > 27084i)), arg_1.x, _wgslsmith_dot_vec2_u32(~(~(vec2<u32>(1u, var_2.c) << (vec2<u32>(var_2.c, 14736u) % vec2<u32>(32u)))), max(abs(vec2<u32>(1u, var_1.c) >> (vec2<u32>(64756u, var_2.c) % vec2<u32>(32u))), select(~vec2<u32>(u_input.c, 0u), ~vec2<u32>(1u, 4294967295u), 5736u >= var_2.c))), _wgslsmith_mod_vec3_i32(var_1.d, ~firstTrailingBit(select(arg_1, var_2.d, vec3<bool>(true, var_1.a, var_1.a)))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: bool) -> Struct_1 {
    var var_0 = ~(~(0u >> (_wgslsmith_add_u32(~arg_0.c, arg_0.c) % 32u)));
    var var_1 = u_input.d.x;
    var var_2 = arg_0;
    var var_3 = arg_0;
    var_1 = var_3.d.x;
    return func_4(_wgslsmith_clamp_u32(_wgslsmith_add_u32(func_2(Struct_1(true, arg_0.d.x, var_2.c, vec3<i32>(-36375i, -1i, arg_0.b)), -2147483647i), firstTrailingBit(~u_input.c)), ~_wgslsmith_mult_u32(0u, arg_0.c) & _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.c, 49550u, var_2.c), vec3<u32>(arg_0.c, 53045u, 17942u)), _wgslsmith_mod_u32(arg_0.c, 1u)), reverseBits(4553u)), _wgslsmith_sub_vec3_i32(-abs(-vec3<i32>(-11402i, 2147483647i, u_input.d.x)), vec3<i32>(_wgslsmith_mult_i32(24954i, _wgslsmith_clamp_i32(u_input.b, 18726i, arg_1)), var_3.d.x, ~(~(-17803i)))));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = arg_0.d;
    var var_2 = !select(vec4<bool>(true, !func_1(Struct_1(arg_0.a, var_0.b, 4294967295u, arg_0.d), 1i, 1u, false).a, -2270f > _wgslsmith_f_op_f32(arg_1 - arg_1), var_0.a), vec4<bool>(any(select(vec4<bool>(false, false, var_0.a, true), vec4<bool>(arg_2.a, arg_0.a, arg_2.a, true), vec4<bool>(true, false, false, true))), !arg_0.a, true, arg_0.a), select(!select(vec4<bool>(true, false, var_0.a, true), vec4<bool>(false, false, false, true), arg_2.a), vec4<bool>(arg_2.a, !arg_0.a, false, arg_2.a), select(select(vec4<bool>(var_0.a, var_0.a, arg_0.a, true), vec4<bool>(var_0.a, false, arg_0.a, true), vec4<bool>(true, arg_0.a, arg_2.a, arg_0.a)), select(vec4<bool>(var_0.a, arg_0.a, arg_0.a, arg_2.a), vec4<bool>(false, false, arg_2.a, true), false), false)));
    let var_3 = ~vec2<u32>(_wgslsmith_add_u32(var_0.c, 4294967295u), 1u);
    var_0 = Struct_1(var_0.a, u_input.e, _wgslsmith_dot_vec3_u32(~vec3<u32>(~arg_0.c, 26030u >> (var_3.x % 32u), _wgslsmith_clamp_u32(4294967295u, u_input.c, 4294967295u)), ((vec3<u32>(4294967295u, arg_2.c, var_3.x) ^ vec3<u32>(arg_2.c, 4294967295u, 32157u)) << (~vec3<u32>(u_input.c, arg_0.c, 4294967295u) % vec3<u32>(32u))) | (~vec3<u32>(var_3.x, arg_0.c, 57270u) & _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, var_3.x), vec3<u32>(arg_2.c, var_3.x, 1u), vec3<u32>(var_0.c, arg_0.c, 59668u)))), vec3<i32>(32246i, arg_2.b, ~(-12244i)));
    return func_1(arg_2, firstLeadingBit(0i), ~4294967295u, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(u_input.c, u_input.a);
    let var_1 = func_5(func_1(Struct_1(u_input.d.x <= u_input.b, u_input.b, u_input.a, ~min(vec3<i32>(38687i, -22553i, u_input.e), vec3<i32>(u_input.d.x, u_input.d.x, 14557i))), 0i >> ((u_input.a | 1u) % 32u), _wgslsmith_sub_u32(max(u_input.a << (u_input.c % 32u), u_input.c), u_input.a), !(_wgslsmith_sub_i32(u_input.e, -1i) < firstLeadingBit(10416i))), -1146f, Struct_1(all(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), firstLeadingBit(firstTrailingBit(u_input.d.x)), u_input.a, _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b ^ u_input.e, -3909i, -5988i), _wgslsmith_div_vec3_i32(vec3<i32>(1i, -21437i, 0i), vec3<i32>(25910i, u_input.b, -14711i) ^ vec3<i32>(-2147483647i, 33024i, u_input.b)), ~(~vec3<i32>(43480i, -17856i, u_input.e)))));
    var_0 = _wgslsmith_add_u32(_wgslsmith_mult_u32(~_wgslsmith_add_u32(_wgslsmith_mod_u32(var_1.c, 89271u), 18938u), max(_wgslsmith_div_u32(func_4(var_1.c, var_1.d).c, 1u), u_input.c)), ~(~(~21418u & ~u_input.c)));
    var var_2 = var_1.a;
    var_0 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(1u, 42853u, var_1.c, 0u))), vec4<u32>(1u, 1u, 3387u, 12196u)), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(func_1(Struct_1(true, ~(i32(-1i) * -1i), func_1(var_1, firstLeadingBit(var_1.d.x), ~1380u, var_1.a).c, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.e, u_input.d.x, -2147483647i), vec4<i32>(-2147483647i, var_1.d.x, var_1.d.x, var_1.b)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, var_1.d.x, -1i, 0i), vec4<i32>(u_input.d.x, var_1.d.x, u_input.b, var_1.b)), ~(-2147483647i))), select(-48293i, abs(2147483647i), func_5(var_1, 1000f, func_1(var_1, var_1.d.x, 4294967295u, var_1.a)).a), 0u, false).c, 1194f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-553f)))), _wgslsmith_f_op_f32(-1221f + -972f));
}

