struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_4, arg_3: vec4<i32>) -> vec3<bool> {
    var var_0 = Struct_1(~(~_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.d.x, u_input.d.x), ~arg_2.b.a.b.x)), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, arg_2.a, 9447u) ^ vec4<u32>(arg_2.c.x, u_input.d.x, 63271u, u_input.d.x), vec4<u32>(0u, 1u, u_input.b.x, 29396u)), select(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 53006u, u_input.d.x, 0u), vec4<u32>(u_input.d.x, u_input.b.x, arg_2.b.a.a, u_input.d.x)), arg_2.b.a.b, arg_1)), _wgslsmith_add_vec4_u32(vec4<u32>(59653u, 56265u, 11045u, arg_2.c.x) ^ arg_2.b.a.b, ~u_input.b) | u_input.b), u_input.b.xzy, any(select(vec4<bool>(select(false, arg_1, arg_2.b.a.d), !arg_2.b.a.d, arg_1, !arg_2.b.a.d), select(select(vec4<bool>(true, true, arg_2.b.a.d, arg_2.b.a.d), vec4<bool>(arg_2.b.a.d, arg_2.b.a.d, true, true), arg_2.b.a.d), !vec4<bool>(true, arg_2.b.a.d, true, true), arg_1), !(!vec4<bool>(false, arg_1, arg_2.b.a.d, false)))), reverseBits(arg_0.x) >> (_wgslsmith_div_u32(64039u, arg_2.c.x) % 32u));
    var var_1 = arg_2;
    var_1 = Struct_4(var_1.c.x, Struct_2(Struct_1(4294967295u, vec4<u32>(var_0.a, _wgslsmith_dot_vec2_u32(var_0.c.yz, var_0.c.xy), 18687u, var_0.a), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.c.x, u_input.b.x, var_0.b.x), arg_2.c), arg_2.b.a.c), false, firstTrailingBit(_wgslsmith_mult_i32(0i, arg_2.b.b.x))), countOneBits(select(arg_0.yw, vec2<i32>(arg_2.b.a.e, -1933i), vec2<bool>(false, var_1.b.a.d)))), arg_2.c);
    let var_2 = var_1.b.a.d;
    var_0 = var_1.b.a;
    return !vec3<bool>(all(select(select(vec3<bool>(true, var_0.d, true), vec3<bool>(arg_1, var_1.b.a.d, arg_2.b.a.d), vec3<bool>(true, arg_2.b.a.d, false)), vec3<bool>(false, arg_1, arg_2.b.a.d), select(vec3<bool>(true, var_1.b.a.d, var_1.b.a.d), vec3<bool>(false, false, var_0.d), var_1.b.a.d))), !(!(!arg_1)), any(vec3<bool>(true, var_1.b.a.d, true)));
}

fn func_2() -> u32 {
    var var_0 = select(!(!select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), vec3<bool>(false, true, false), func_3(vec4<i32>(u_input.a, 1i, u_input.a, u_input.c), true, Struct_4(50331u, Struct_2(Struct_1(u_input.b.x, vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 47335u), u_input.b.zxx, true, u_input.c), vec2<i32>(u_input.a, 2147483647i)), vec3<u32>(u_input.d.x, 0u, 0u)), vec4<i32>(16681i, 23936i, 10965i, u_input.c)))), vec3<bool>(any(vec4<bool>(false, false, false, true)) & select(u_input.a == u_input.c, false, -21748i < u_input.a), true, !select(false, u_input.c > 2147483647i, false)), !(u_input.c != u_input.a));
    let var_1 = u_input.b;
    var_0 = !(!select(vec3<bool>(var_0.x, var_0.x, func_3(vec4<i32>(u_input.c, u_input.a, 29039i, -28277i), true, Struct_4(var_1.x, Struct_2(Struct_1(7135u, var_1, var_1.zxw, var_0.x, u_input.c), vec2<i32>(u_input.c, -1i)), vec3<u32>(4294967295u, 0u, 0u)), vec4<i32>(-1i, u_input.a, u_input.a, u_input.c)).x), vec3<bool>(var_0.x && var_0.x, all(vec2<bool>(var_0.x, false)), var_0.x && var_0.x), false));
    var_0 = select(select(!(!select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, false, true), vec3<bool>(var_0.x, var_0.x, true))), vec3<bool>(!var_0.x, var_0.x, var_0.x), !vec3<bool>(any(vec4<bool>(var_0.x, false, true, true)), false, false)), select(select(!(!vec3<bool>(var_0.x, var_0.x, var_0.x)), !select(vec3<bool>(false, false, var_0.x), vec3<bool>(true, var_0.x, false), var_0.x), !var_0.x), !select(!vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, var_0.x, false)), var_0.x), var_0.x), false | var_0.x);
    return 1u;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_2) -> Struct_3 {
    let var_0 = vec2<f32>(-519f, -735f);
    var var_1 = Struct_3(Struct_1(39081u, ~vec4<u32>(~arg_1.a.c.x, max(1u, 1u), u_input.d.x, reverseBits(1u)), ~arg_2.wyy, arg_1.a.d, max(-2147483647i, ~u_input.c ^ arg_1.a.e)), arg_1, select(!(!(!vec3<bool>(arg_3.a.d, arg_3.a.d, arg_1.a.d))), !(!(!vec3<bool>(true, false, arg_1.a.d))), !vec3<bool>(arg_0, arg_3.a.d, true)), Struct_1(_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_add_u32(0u, _wgslsmith_add_u32(u_input.d.x, u_input.b.x))), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b.x, arg_2.x, 85188u, arg_3.a.b.x) >> (arg_3.a.b % vec4<u32>(32u)), arg_1.a.b), arg_2.yxx, false, ~(arg_3.a.e ^ _wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_3.b.x, -10598i), vec3<i32>(arg_3.b.x, 2147483647i, u_input.c)))), Struct_1(arg_1.a.a, _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(24623u, 4294967295u, 5051u, arg_1.a.c.x)), arg_3.a.b) | vec4<u32>(4294967295u, arg_2.x | 22684u, arg_1.a.a, ~15751u), _wgslsmith_clamp_vec3_u32(u_input.b.yxz, ~(~vec3<u32>(31855u, 0u, arg_2.x)), arg_3.a.b.ywz), func_3(abs(vec4<i32>(21103i, u_input.c, 0i, arg_3.b.x)), func_3(vec4<i32>(-1i, -57008i, u_input.c, 1i), any(vec4<bool>(arg_0, true, true, false)), Struct_4(38158u, Struct_2(Struct_1(arg_3.a.c.x, vec4<u32>(u_input.b.x, arg_2.x, 3004u, 0u), vec3<u32>(arg_2.x, 13260u, arg_3.a.b.x), arg_3.a.d, -40586i), arg_1.b), arg_3.a.b.wzz), firstLeadingBit(vec4<i32>(-16654i, -23574i, -2147483647i, arg_1.a.e))).x, Struct_4(func_2(), arg_3, arg_1.a.b.yxz), -vec4<i32>(65643i, 1i, -2147483647i, arg_1.b.x)).x, 1i ^ u_input.c));
    let var_2 = Struct_3(Struct_1(var_1.a.a, reverseBits(firstLeadingBit(reverseBits(vec4<u32>(u_input.d.x, arg_2.x, var_1.d.b.x, arg_3.a.b.x)))), ~u_input.b.xwx, arg_0, u_input.a), Struct_2(arg_1.a, min(-arg_1.b, vec2<i32>(-2147483647i, var_1.b.a.e))), vec3<bool>(false, true, func_3(select(vec4<i32>(var_1.b.a.e, var_1.b.b.x, 0i, arg_1.b.x), vec4<i32>(var_1.a.e, arg_3.a.e, -50468i, var_1.e.e), false) ^ -vec4<i32>(15932i, 31948i, arg_1.a.e, arg_3.b.x), false, Struct_4(4294967295u, arg_3, _wgslsmith_div_vec3_u32(vec3<u32>(54770u, 1u, arg_3.a.a), vec3<u32>(27585u, 38473u, arg_2.x))), ~vec4<i32>(0i, 18645i, u_input.c, 1i) >> (~vec4<u32>(52539u, arg_3.a.c.x, arg_3.a.c.x, u_input.d.x) % vec4<u32>(32u))).x), Struct_1(1u, _wgslsmith_add_vec4_u32(abs(var_1.e.b), vec4<u32>(65968u, 0u << (var_1.a.c.x % 32u), var_1.d.a, 1u)), ~(~arg_1.a.b.yxz), var_1.b.a.d && false, var_1.b.a.e), Struct_1(u_input.d.x, vec4<u32>(~59406u, ~reverseBits(arg_1.a.c.x), 0u, var_1.d.a), arg_3.a.b.xzx, !all(vec3<bool>(arg_3.a.d, var_1.e.d, arg_3.a.d)), ~(var_1.b.b.x & 1i)));
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(round(var_0.x)), var_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, -1413f, arg_1.a.d)) + _wgslsmith_f_op_f32(-var_0.x))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1000f, -303f, -1239f)), vec4<f32>(-273f, 1f, _wgslsmith_f_op_f32(abs(750f)), _wgslsmith_f_op_f32(ceil(var_0.x))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, 245f, -915f, var_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, -429f, 414f, 182f), vec4<f32>(var_0.x, var_0.x, -1041f, var_0.x), vec4<bool>(true, false, var_1.a.d, arg_0))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -495f, 762f, var_0.x))), !(!vec4<bool>(false, arg_0, var_1.b.a.d, true))))));
    var_1 = Struct_3(arg_1.a, arg_1, !(!var_2.c), Struct_1(~firstLeadingBit(4294967295u), ~reverseBits(~var_2.a.b), _wgslsmith_mod_vec3_u32(arg_3.a.c, select(~arg_1.a.b.zwy, _wgslsmith_clamp_vec3_u32(vec3<u32>(6780u, u_input.b.x, var_2.e.a), arg_3.a.c, vec3<u32>(arg_3.a.b.x, 4294967295u, 28918u)), all(var_1.c.xy))), true, u_input.c), Struct_1(~(~arg_3.a.b.x), vec4<u32>(21471u, u_input.d.x | arg_3.a.c.x, arg_2.x ^ 4294967295u, abs(74318u)) << (vec4<u32>(_wgslsmith_mod_u32(arg_3.a.a, var_1.d.a), _wgslsmith_mult_u32(81566u, 1u), var_1.a.b.x, 4294967295u) % vec4<u32>(32u)), vec3<u32>(abs(0u), arg_3.a.c.x, ~28645u), func_3(vec4<i32>(firstLeadingBit(0i), _wgslsmith_mult_i32(arg_1.b.x, 5747i), _wgslsmith_div_i32(arg_3.a.e, 1i), 1i), var_1.c.x, Struct_4(23384u, Struct_2(Struct_1(arg_3.a.c.x, vec4<u32>(94679u, var_2.d.b.x, 46076u, var_2.d.b.x), var_2.e.b.wxx, arg_1.a.d, 24419i), vec2<i32>(arg_3.a.e, arg_3.b.x)), ~vec3<u32>(1u, 4294967295u, 9305u)), countOneBits(vec4<i32>(-2147483647i, -26493i, -1i, var_2.b.b.x))).x, firstTrailingBit(arg_3.a.e)));
    return Struct_3(arg_3.a, var_1.b, var_1.c, var_2.b.a, var_1.d);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: Struct_4) -> Struct_4 {
    let var_0 = func_4(all(!(!(!vec4<bool>(arg_2.b.a.d, true, arg_2.b.a.d, arg_2.b.a.d)))), arg_2.b, vec4<u32>(~u_input.b.x, 0u, (_wgslsmith_mod_u32(u_input.b.x, 0u) | _wgslsmith_clamp_u32(u_input.d.x, 0u, u_input.d.x)) >> (_wgslsmith_sub_u32(func_2(), abs(1u)) % 32u), 8819u), arg_2.b);
    var var_1 = Struct_4(arg_2.c.x, arg_2.b, vec3<u32>(arg_2.c.x, _wgslsmith_mult_u32(u_input.b.x, 0u), ~firstTrailingBit(~var_0.a.b.x)));
    var var_2 = func_4(select(arg_2.b.a.d, func_4(!(!arg_2.b.a.d), arg_2.b, ~(~vec4<u32>(u_input.b.x, arg_2.c.x, var_1.c.x, arg_2.a)), Struct_2(Struct_1(9241u, var_1.b.a.b, vec3<u32>(arg_2.c.x, arg_2.a, arg_1.x), false, arg_2.b.a.e), _wgslsmith_mod_vec2_i32(vec2<i32>(-1736i, -2147483647i), vec2<i32>(u_input.a, -1i)))).e.d, arg_2.b.a.d), func_4(var_1.b.a.d, arg_2.b, vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(45851u, 18014u, var_0.a.b.x), var_0.e.b.wyz), ~arg_1.x, 75076u, firstLeadingBit(_wgslsmith_dot_vec4_u32(var_1.b.a.b, arg_2.b.a.b))), Struct_2(func_4(false, var_1.b, ~vec4<u32>(50365u, arg_1.x, 1u, var_0.a.b.x), var_1.b).d, ~var_1.b.b | vec2<i32>(var_1.b.a.e, 14209i))).b, u_input.b, func_4(true, Struct_2(Struct_1(u_input.d.x, vec4<u32>(4294967295u, 121105u, arg_1.x, 4294967295u), vec3<u32>(1u, var_1.b.a.c.x, 0u), true, -2147483647i), vec2<i32>(-arg_0.x, _wgslsmith_mult_i32(2519i, 0i))), ~(~firstTrailingBit(vec4<u32>(arg_1.x, 4294967295u, 5758u, 0u))), var_1.b).b).b;
    let var_3 = max(_wgslsmith_sub_vec3_u32(u_input.b.yyw, abs(u_input.b.zzw)), ~abs(~(~vec3<u32>(var_0.e.b.x, var_0.b.a.c.x, arg_2.b.a.b.x))));
    var var_4 = ~(~vec3<u32>(var_2.a.b.x << (4294967295u % 32u), ~51288u, var_0.d.a) >> (min(var_2.a.b.yzx, ~_wgslsmith_sub_vec3_u32(var_0.b.a.b.zyw, vec3<u32>(87847u, arg_2.a, 0u))) % vec3<u32>(32u)));
    return arg_2;
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: bool, arg_3: Struct_3) -> Struct_1 {
    let var_0 = arg_3.b;
    var var_1 = !vec4<bool>(func_3(vec4<i32>(var_0.a.e, arg_3.b.a.e, arg_0.b.b.x, var_0.a.e), true, arg_0, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, arg_0.b.b.x, u_input.a, 36901i), max(vec4<i32>(u_input.c, arg_0.b.b.x, arg_3.b.b.x, 50402i), vec4<i32>(arg_0.b.b.x, 2147483647i, 43914i, -38327i)))).x, select(arg_0.b.a.d, var_0.a.d, true == func_3(vec4<i32>(arg_3.a.e, arg_3.e.e, 4772i, arg_3.e.e), arg_2, arg_0, vec4<i32>(u_input.a, 2147483647i, arg_3.b.a.e, u_input.a)).x), !all(vec2<bool>(true, true)), !arg_0.b.a.d);
    let var_2 = select(arg_0.b.b, vec2<i32>(var_0.b.x, _wgslsmith_mod_i32(arg_3.b.a.e, _wgslsmith_mod_i32(119305i, _wgslsmith_div_i32(var_0.b.x, var_0.a.e)))), !(!all(vec4<bool>(arg_1, var_0.a.d, true, var_0.a.d))));
    var_1 = select(select(!select(select(vec4<bool>(false, arg_1, true, var_1.x), vec4<bool>(false, arg_3.a.d, var_1.x, var_0.a.d), var_0.a.d), vec4<bool>(arg_3.c.x, var_0.a.d, arg_0.b.a.d, var_0.a.d), select(vec4<bool>(arg_3.b.a.d, var_1.x, true, false), vec4<bool>(var_1.x, var_1.x, true, var_0.a.d), vec4<bool>(arg_3.d.d, false, true, false))), select(select(select(vec4<bool>(arg_0.b.a.d, true, arg_1, arg_3.a.d), vec4<bool>(true, false, arg_1, arg_2), false), !vec4<bool>(false, arg_3.d.d, arg_1, false), vec4<bool>(arg_2, arg_3.e.d, true, var_1.x)), !vec4<bool>(true, false, arg_3.e.d, true), select(!vec4<bool>(arg_2, true, var_0.a.d, arg_3.c.x), vec4<bool>(arg_1, false, true, arg_1), vec4<bool>(false, var_1.x, arg_2, true))), !vec4<bool>(!arg_1, true, true, arg_1 & arg_0.b.a.d)), !(!(!vec4<bool>(var_1.x, false, true, arg_1))), !select(!vec4<bool>(true, false, arg_1, false), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, var_0.a.d, arg_2, var_1.x), !vec4<bool>(var_0.a.d, true, arg_0.b.a.d, var_0.a.d)), select(!vec4<bool>(var_0.a.d, arg_3.a.d, var_1.x, arg_3.b.a.d), select(vec4<bool>(var_1.x, false, arg_0.b.a.d, arg_2), vec4<bool>(arg_1, true, false, arg_3.b.a.d), var_0.a.d), any(vec3<bool>(true, arg_3.e.d, arg_2)))));
    var var_3 = var_0.a;
    return Struct_1(_wgslsmith_add_u32(u_input.b.x, ~func_4(all(vec4<bool>(arg_3.a.d, true, true, true)), Struct_2(arg_3.b.a, var_2), vec4<u32>(arg_0.a, 64139u, 10453u, 116709u), func_4(var_3.d, arg_0.b, vec4<u32>(arg_3.b.a.b.x, arg_0.c.x, 53542u, arg_0.c.x), Struct_2(arg_3.e, var_0.b)).b).e.a), ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 23630u), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 100866u), arg_0.c.yx)), ~_wgslsmith_mod_u32(arg_3.d.a, 44497u), min(~4294967295u, firstTrailingBit(9730u)), func_2() ^ (arg_0.b.a.a >> (var_3.a % 32u))), var_0.a.b.yyy, true, 88i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_i32(u_input.a, _wgslsmith_mod_i32(select(-u_input.c, -(~2147483647i), true), 1i));
    let var_1 = Struct_2(func_5(func_1(-(~vec3<i32>(u_input.a, u_input.a, 1i)), vec2<u32>(u_input.b.x, _wgslsmith_clamp_u32(73455u, u_input.d.x, 0u)), Struct_4(~28591u, Struct_2(Struct_1(u_input.b.x, u_input.b, u_input.b.www, false, -2147483647i), vec2<i32>(-35195i, var_0)), select(u_input.b.wzw, u_input.b.yzz, true))), true, !(!(u_input.c == u_input.c)), Struct_3(func_4(true, func_1(vec3<i32>(56978i, -1i, u_input.c), u_input.d, Struct_4(41519u, Struct_2(Struct_1(34387u, u_input.b, vec3<u32>(u_input.b.x, u_input.b.x, u_input.d.x), true, u_input.a), vec2<i32>(12726i, 0i)), vec3<u32>(4294967295u, u_input.b.x, 42218u))).b, firstLeadingBit(vec4<u32>(26399u, 0u, 1349u, u_input.d.x)), func_4(true, Struct_2(Struct_1(43278u, vec4<u32>(u_input.b.x, 47935u, 1u, u_input.d.x), u_input.b.wxy, false, -38308i), vec2<i32>(29100i, u_input.a)), vec4<u32>(0u, u_input.b.x, 1u, 24969u), Struct_2(Struct_1(6682u, u_input.b, vec3<u32>(0u, 0u, 85735u), true, var_0), vec2<i32>(-904i, 1i))).b).d, Struct_2(Struct_1(u_input.b.x, u_input.b, u_input.b.wwz, true, -2147483647i), ~vec2<i32>(0i, var_0)), vec3<bool>(true, true, false), func_1(firstLeadingBit(vec3<i32>(var_0, u_input.c, var_0)), vec2<u32>(41689u, 21166u), Struct_4(0u, Struct_2(Struct_1(u_input.b.x, vec4<u32>(43112u, u_input.b.x, 1u, 0u), vec3<u32>(u_input.d.x, 0u, 10261u), true, 2147483647i), vec2<i32>(u_input.c, var_0)), vec3<u32>(17718u, u_input.d.x, u_input.b.x))).b.a, func_1(_wgslsmith_add_vec3_i32(vec3<i32>(0i, 1i, -2178i), vec3<i32>(var_0, 2147483647i, var_0)), vec2<u32>(51549u, u_input.d.x) ^ vec2<u32>(u_input.d.x, 70499u), Struct_4(u_input.b.x, Struct_2(Struct_1(u_input.b.x, u_input.b, vec3<u32>(u_input.d.x, 1u, 32459u), false, var_0), vec2<i32>(-1i, var_0)), vec3<u32>(47388u, 1u, 4294967295u))).b.a)), select(max(~vec2<i32>(-19140i, var_0), vec2<i32>(794i, -17379i)), vec2<i32>(-63096i, -7292i), func_4(true, func_4(true, Struct_2(Struct_1(1u, u_input.b, vec3<u32>(69097u, u_input.d.x, u_input.d.x), true, var_0), vec2<i32>(-29162i, u_input.c)), u_input.b, Struct_2(Struct_1(39220u, u_input.b, u_input.b.xwx, false, 35895i), vec2<i32>(var_0, var_0))).b, u_input.b, func_1(vec3<i32>(-2147483647i, u_input.c, u_input.c), vec2<u32>(537u, 0u), Struct_4(1u, Struct_2(Struct_1(82828u, u_input.b, u_input.b.wxx, true, 39822i), vec2<i32>(-70269i, var_0)), vec3<u32>(62074u, 3036u, u_input.b.x))).b).c.yy) & (-vec2<i32>(45484i, var_0) ^ min(vec2<i32>(1i, u_input.c), vec2<i32>(u_input.c, 12399i))));
    let var_2 = Struct_1(func_4(false, Struct_2(func_4(false & var_1.a.d, Struct_2(Struct_1(4294967295u, var_1.a.b, vec3<u32>(1u, u_input.b.x, 4294967295u), var_1.a.d, -15788i), var_1.b), vec4<u32>(var_1.a.a, 1u, 1u, 4294967295u), func_1(vec3<i32>(var_0, 1i, -1i), vec2<u32>(24506u, u_input.b.x), Struct_4(u_input.d.x, var_1, var_1.a.b.zzz)).b).e, vec2<i32>(-44249i, -var_0)), vec4<u32>(~u_input.b.x, func_1(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0, -1i, var_0), vec3<i32>(13897i, var_0, var_0)), vec2<u32>(30389u, 4603u) >> (u_input.b.zz % vec2<u32>(32u)), func_1(vec3<i32>(u_input.c, 1i, -2147483647i), vec2<u32>(var_1.a.c.x, 4294967295u), Struct_4(u_input.d.x, Struct_2(var_1.a, vec2<i32>(1i, 0i)), vec3<u32>(u_input.b.x, var_1.a.a, 30199u)))).b.a.a, max(u_input.d.x, ~41166u), 95964u), var_1).b.a.b.x, vec4<u32>(~(_wgslsmith_mult_u32(u_input.d.x, var_1.a.b.x) >> (~var_1.a.a % 32u)), ~var_1.a.b.x, ~countOneBits(func_2()), abs(var_1.a.a)), ~(~(vec3<u32>(4294967295u, u_input.b.x, 4294967295u) & _wgslsmith_mod_vec3_u32(u_input.b.zww, vec3<u32>(u_input.b.x, 4294967295u, 9256u)))), var_1.a.d, max(_wgslsmith_dot_vec2_i32(abs(abs(vec2<i32>(-1i, -1i))), func_4(true, var_1, u_input.b ^ var_1.a.b, func_4(true, var_1, vec4<u32>(19761u, 18275u, u_input.b.x, var_1.a.c.x), var_1).b).b.b), _wgslsmith_mod_i32(_wgslsmith_sub_i32(var_1.a.e, ~(-53296i)), ~1i)));
    var var_3 = ~(~_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_1.a.a, 0u), var_2.c.xz), vec2<u32>(1u, u_input.b.x)) >> ((func_1(~vec3<i32>(var_0, var_1.b.x, var_0), vec2<u32>(var_1.a.b.x, var_2.a), func_1(vec3<i32>(var_1.a.e, var_0, u_input.a), vec2<u32>(38239u, 1u), Struct_4(u_input.b.x, var_1, vec3<u32>(52686u, var_1.a.b.x, u_input.d.x)))).c.yz ^ ~var_2.b.wz) % vec2<u32>(32u)));
    var_3 = abs(vec2<u32>(~func_1(vec3<i32>(1i, 13958i, var_2.e) & vec3<i32>(38571i, -30255i, var_0), var_1.a.c.zz, func_1(vec3<i32>(var_2.e, -60335i, var_0), var_1.a.b.xz, Struct_4(26128u, Struct_2(Struct_1(var_3.x, vec4<u32>(var_3.x, 63886u, 105030u, 4294967295u), u_input.b.wyy, true, var_2.e), var_1.b), vec3<u32>(var_3.x, 0u, var_3.x)))).c.x, ~(reverseBits(u_input.b.x) << (abs(53768u) % 32u))));
    var var_4 = true;
    var var_5 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(func_1((-vec3<i32>(-3480i, -5045i, var_0) >> (vec3<u32>(u_input.b.x, 1u, var_3.x) % vec3<u32>(32u))) | vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.e, -1i, var_1.b.x, u_input.a), vec4<i32>(0i, 8382i, 29322i, u_input.a)), func_1(vec3<i32>(var_2.e, var_2.e, u_input.c), u_input.d, Struct_4(var_2.b.x, Struct_2(var_2, vec2<i32>(52068i, 70260i)), var_1.a.c)).b.a.e, _wgslsmith_mult_i32(var_0, 0i)), ~u_input.b.yx, func_1(-abs(vec3<i32>(var_1.b.x, -2147483647i, var_1.a.e)), vec2<u32>(var_1.a.b.x, u_input.b.x), func_1(vec3<i32>(32i, var_0, var_1.a.e), ~vec2<u32>(4294967295u, var_2.b.x), func_1(vec3<i32>(var_0, 74289i, var_2.e), var_2.c.zz, Struct_4(var_1.a.b.x, Struct_2(var_2, vec2<i32>(16269i, -18195i)), vec3<u32>(var_2.b.x, var_3.x, u_input.d.x)))))).c, abs(var_2.b), _wgslsmith_dot_vec4_u32(var_1.a.b, firstLeadingBit(vec4<u32>(var_2.a, var_2.c.x, var_1.a.c.x, var_2.c.x)) ^ var_1.a.b) & firstLeadingBit(4294967295u));
}

