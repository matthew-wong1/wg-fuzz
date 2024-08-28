struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = Struct_1(0u, -1175f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1407f)) - -196f) + 841f) * 445f));
    global0 = select(vec3<bool>(select(true, global0.x, true), !(_wgslsmith_clamp_i32(u_input.d, 1i, u_input.b.x) >= firstLeadingBit(-17938i)), u_input.a.x <= 53400u), !select(vec3<bool>(true && global0.x, all(global0.xy), any(global0.xy)), select(!vec3<bool>(true, global0.x, global0.x), !vec3<bool>(global0.x, global0.x, global0.x), all(vec3<bool>(true, global0.x, true))), select(!vec3<bool>(global0.x, true, true), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, global0.x, false), global0.x), global0.x)), (u_input.d >> (_wgslsmith_div_u32(var_0.a, countOneBits(4294967295u)) % 32u)) < -_wgslsmith_dot_vec2_i32(countOneBits(u_input.b), ~vec2<i32>(-2147483647i, u_input.d)));
    var var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(-1i, -2147483647i, u_input.b.x << (50440u % 32u), abs(u_input.b.x)) >> (~vec4<u32>(35349u, var_0.a, 60209u, 95842u) % vec4<u32>(32u)), ~firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, 2554i, u_input.b.x, 10504i), vec4<i32>(22925i, 11030i, 2147483647i, u_input.d)))) ^ min(vec4<i32>(u_input.b.x, abs(-1i), u_input.d, _wgslsmith_clamp_i32(u_input.d, abs(u_input.b.x), u_input.d)), (-vec4<i32>(30787i, u_input.d, u_input.b.x, u_input.b.x) << (abs(u_input.a) % vec4<u32>(32u))) >> (~u_input.a % vec4<u32>(32u)));
    var var_2 = Struct_3(Struct_1(~abs(0u), var_0.b, _wgslsmith_f_op_f32(var_0.c + var_0.c)), Struct_2(Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0, 0u, 3708u), u_input.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-602f, var_0.b) - _wgslsmith_f_op_f32(abs(829f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b, 1863f) * _wgslsmith_f_op_f32(1324f + -914f))), ~abs(_wgslsmith_mult_vec3_u32(u_input.a.yzw, vec3<u32>(5424u, u_input.c.x, arg_0))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-147f, var_0.c, -404f), vec3<f32>(var_0.b, var_0.b, -1264f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.c, 512f, var_0.b))), !global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - _wgslsmith_div_f32(-221f, 1767f)))), ~(~(select(u_input.c.yx, u_input.c.zz, false) << (~vec2<u32>(30954u, 0u) % vec2<u32>(32u)))));
    var_1 = _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(-1i, -27351i << (arg_0 % 32u), _wgslsmith_add_i32(2147483647i, u_input.b.x), _wgslsmith_div_i32(u_input.d, 7125i)), ~vec4<i32>(_wgslsmith_sub_i32(var_1.x, u_input.d), -61144i, _wgslsmith_dot_vec2_i32(vec2<i32>(-51973i, var_1.x), u_input.b), -29656i)), select(vec4<i32>(_wgslsmith_div_i32(countOneBits(u_input.d), u_input.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, var_1.x, var_1.x), ~var_1.wwy), _wgslsmith_dot_vec4_i32(-vec4<i32>(var_1.x, 1i, u_input.b.x, 2147483647i), -vec4<i32>(u_input.b.x, 50295i, 7923i, 21241i)), _wgslsmith_add_i32(u_input.b.x ^ -1i, var_1.x)), (reverseBits(vec4<i32>(u_input.d, 58645i, -1i, var_1.x)) & ~vec4<i32>(var_1.x, 0i, var_1.x, -2147483647i)) & (vec4<i32>(2035i, 2147483647i, var_1.x, var_1.x) ^ (vec4<i32>(1i, var_1.x, var_1.x, u_input.b.x) | vec4<i32>(-25726i, -68220i, var_1.x, 1i))), vec4<bool>(~var_1.x < ~1i, all(select(vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(true, true, global0.x, global0.x), true)), true, ~u_input.b.x == 7194i)));
    return abs(var_2.b.a.a);
}

fn func_2(arg_0: vec3<bool>) -> i32 {
    global0 = select(select(arg_0, vec3<bool>(true, ~u_input.b.x > ~(-14243i), all(vec2<bool>(global0.x, arg_0.x)) || true), select(arg_0, arg_0, arg_0.x)), !arg_0, global0.x);
    var var_0 = vec4<u32>(~_wgslsmith_add_u32(~(~1u), _wgslsmith_add_u32(~u_input.a.x, _wgslsmith_clamp_u32(u_input.c.x, u_input.a.x, 84710u))), ~0u, func_3(reverseBits(firstTrailingBit(~119505u))), 28719u);
    var var_1 = vec4<f32>(_wgslsmith_div_f32(-178f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(960f)), _wgslsmith_f_op_f32(f32(-1f) * -453f))) + 746f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1046f * -1609f))))), _wgslsmith_f_op_f32(round(-669f)), -1000f);
    global0 = vec3<bool>(true, any(select(!vec3<bool>(arg_0.x, true, false), arg_0, any(vec4<bool>(global0.x, global0.x, arg_0.x, arg_0.x)))), any(global0.yz) | true);
    var_1 = vec4<f32>(1385f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(1011f - _wgslsmith_f_op_f32(-595f - _wgslsmith_f_op_f32(sign(-1458f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) * 437f))));
    return select(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.d, -1i, u_input.b.x, u_input.b.x), ~vec4<i32>(u_input.b.x, u_input.b.x, u_input.d, u_input.b.x), vec4<bool>(arg_0.x, false, false, global0.x)), ~vec4<i32>(u_input.b.x, 74784i, -1i, 0i) & _wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.b.x, -17765i, -39100i), vec4<i32>(2147483647i, u_input.d, u_input.d, -27601i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, ~u_input.d, 0i << (var_0.x % 32u), u_input.b.x ^ -2147483647i), -(vec4<i32>(0i, -12950i, u_input.d, u_input.d) >> (vec4<u32>(4294967295u, 1u, 48329u, 38066u) % vec4<u32>(32u))), firstLeadingBit(vec4<i32>(-21250i, u_input.d, u_input.b.x, u_input.d) & vec4<i32>(-34500i, 0i, u_input.d, u_input.d)))), _wgslsmith_sub_i32(49070i, u_input.b.x), global0.x & arg_0.x);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<f32>) -> Struct_3 {
    var var_0 = u_input.b;
    var_0 = _wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(func_2(!vec3<bool>(global0.x, true, false)), firstLeadingBit(u_input.d))), u_input.b ^ u_input.b);
    var var_1 = global0.x;
    let var_2 = Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, u_input.a.x, 14873u ^ u_input.c.x), _wgslsmith_add_vec3_u32(~u_input.a.xyw, ~vec3<u32>(4294967295u, u_input.c.x, 1u))), vec3<u32>(_wgslsmith_clamp_u32(0u, ~4294967295u, 1u), 12425u, ~35800u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_1.x)))), _wgslsmith_f_op_f32(-arg_0.x)), arg_0.x);
    let var_3 = vec2<bool>(global0.x, true);
    return Struct_3(Struct_1(4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-812f, _wgslsmith_f_op_f32(f32(-1f) * -1207f))) * var_2.c), arg_1.x), Struct_2(Struct_1(_wgslsmith_div_u32(min(u_input.a.x, u_input.a.x), var_2.a), _wgslsmith_f_op_f32(round(var_2.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(118f)) + _wgslsmith_f_op_f32(step(392f, 307f)))), vec3<u32>(~u_input.a.x, ~(~u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_2.a, 36244u, 9226u), ~u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c, arg_0.x, arg_0.x) + arg_1.xzy)))), -109f), _wgslsmith_add_vec2_u32(u_input.c.xx, select(_wgslsmith_add_vec2_u32(u_input.a.yw, vec2<u32>(1u, var_2.a)), abs(vec2<u32>(u_input.c.x, 4294967295u)), true) << (reverseBits(~vec2<u32>(1u, u_input.c.x)) % vec2<u32>(32u))));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    var var_0 = arg_0.b;
    var var_1 = func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.d, 1776f, 1554f, 1000f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1105f, arg_0.b.c.x, 661f, -1384f), vec4<f32>(-1000f, arg_0.a.b, arg_0.a.b, var_0.a.c)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.c, var_0.a.c, var_0.d, var_0.a.b) * vec4<f32>(550f, -1236f, var_0.d, var_0.c.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-572f, 205f, arg_0.a.c, -1471f) - vec4<f32>(-1386f, arg_0.a.c, -541f, arg_0.b.a.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.b, arg_0.a.c, var_0.d, arg_0.b.c.x) * vec4<f32>(399f, arg_0.b.a.c, -1100f, -1189f)), !vec4<bool>(global0.x, true, global0.x, global0.x))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1573f, arg_0.a.b, 994f, var_0.a.c) * vec4<f32>(arg_0.b.a.b, -450f, -362f, var_0.d)), vec4<f32>(arg_0.a.b, var_0.d, arg_0.a.c, arg_0.b.a.b), global0.x)))))).b;
    let var_2 = var_0.a;
    var_0 = Struct_2(var_0.a, max(u_input.a.zyw | vec3<u32>(4294967295u, var_1.a.a, 1u), var_0.b << (abs(vec3<u32>(var_1.b.x, 85649u, 4294967295u)) % vec3<u32>(32u))), arg_0.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-120f - 796f))))));
    var var_3 = vec3<u32>(123670u, ~(~(~0u & (arg_0.c.x & 31727u))), (_wgslsmith_add_u32(firstLeadingBit(0u), ~23621u) & arg_0.a.a) & var_0.a.a);
    return func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.d + arg_0.a.b), var_1.d)), -329f, 1000f, _wgslsmith_f_op_f32(-344f - arg_0.a.c))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-711f, 465f, -2168f, -1000f) - vec4<f32>(461f, var_0.d, var_1.c.x, var_0.c.x))))), vec4<f32>(_wgslsmith_f_op_f32(select(var_0.a.c, _wgslsmith_f_op_f32(trunc(-399f)), -1342f == var_0.d)), 555f, _wgslsmith_f_op_f32(round(-1964f)), 1f)))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(_wgslsmith_add_vec4_i32((select(vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, 0i), vec4<i32>(u_input.d, u_input.b.x, 1i, 15198i), vec4<bool>(global0.x, true, global0.x, global0.x)) << (abs(u_input.a) % vec4<u32>(32u))) ^ vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -51027i, -28480i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), min(u_input.b.x, 17614i), countOneBits(u_input.b.x), countOneBits(u_input.d)), max(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 30705i), vec4<i32>(1i, 4752i, u_input.b.x, 1i)), vec4<i32>(abs(1i), -4786i, countOneBits(-37100i), u_input.b.x))));
    global0 = vec3<bool>(true, !global0.x, false);
    global0 = vec3<bool>(!global0.x || all(vec3<bool>(global0.x, false, all(vec4<bool>(false, global0.x, global0.x, false)))), global0.x, false);
    var var_1 = u_input.b.x;
    let var_2 = vec3<u32>(_wgslsmith_add_u32(4294967295u, abs(u_input.c.x)), abs(1934u), ~countOneBits(1u));
    let var_3 = Struct_2(func_4(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(883f, 631f, 2439f, -802f)))), vec4<f32>(480f, _wgslsmith_f_op_f32(1000f + -778f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -467f))), vec3<u32>(var_2.x & ~u_input.c.x, ~0u, u_input.c.x), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(ceil(726f)), _wgslsmith_f_op_f32(f32(-1f) * -328f), 1f))), -778f);
    var_1 = abs(var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.c + var_3.c)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(413f, 208f, -1213f))), _wgslsmith_div_vec3_f32(var_3.c, vec3<f32>(var_3.a.c, -467f, 1775f))))) + var_3.c), var_3.b.x);
}

