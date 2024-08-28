struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32) -> u32 {
    let var_0 = !select(vec2<bool>(any(vec2<bool>(true, true)), true), vec2<bool>(true, true), vec2<bool>(true, any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)))));
    let var_1 = !(!all(!vec4<bool>(var_0.x, false, false, var_0.x)) || var_0.x);
    var var_2 = 72813u;
    var var_3 = u_input.b;
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 331f, -906f);
    return _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~arg_0.x >> ((0u & u_input.c) % 32u), ~arg_1), firstTrailingBit(~(~vec2<u32>(u_input.d.x, 1u)))), ~u_input.d.x);
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>) -> Struct_2 {
    let var_0 = false;
    var var_1 = var_0;
    let var_2 = Struct_1(arg_1.x, var_0);
    let var_3 = abs(~vec3<u32>(func_3(~u_input.d, arg_0.a & 1u), u_input.c, ~(~77556u)));
    let var_4 = arg_0.c;
    return Struct_2(var_2, abs(-22362i));
}

fn func_1() -> f32 {
    var var_0 = ~_wgslsmith_add_vec3_i32(~(~(u_input.e ^ u_input.e)), u_input.e);
    let var_1 = func_2(Struct_3(u_input.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1061f, -1000f, -315f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1246f, 1000f, -750f), vec3<f32>(368f, -693f, 290f), false))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-161f, 111f, 1236f) - vec3<f32>(-1028f, -1285f, -349f)))), _wgslsmith_div_f32(1259f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-547f)), _wgslsmith_f_op_f32(select(-1000f, 1266f, true)))), vec2<f32>(513f, -1313f)), ~(_wgslsmith_div_vec3_i32(u_input.e, ~vec3<i32>(1i, -3505i, 6322i)) >> (abs(vec3<u32>(u_input.d.x, u_input.d.x, u_input.c) >> (vec3<u32>(0u, 84925u, u_input.d.x) % vec3<u32>(32u))) % vec3<u32>(32u))));
    let var_2 = vec3<i32>(-19443i << (_wgslsmith_mod_u32(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.d.x, 4294967295u), vec3<u32>(u_input.c, 1u, 43605u))) % 32u), -var_1.a.a, 1i) & firstLeadingBit(u_input.e);
    var_0 = var_2;
    var var_3 = ~vec3<u32>(abs(u_input.c), func_3(vec2<u32>(u_input.d.x, 0u), select(~u_input.d.x, _wgslsmith_mult_u32(u_input.d.x, u_input.d.x), all(vec4<bool>(var_1.a.b, true, var_1.a.b, false)))), countOneBits(func_3(vec2<u32>(u_input.d.x, 0u) & u_input.d, abs(4294967295u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f)));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_3) -> Struct_4 {
    let var_0 = ~reverseBits(abs(u_input.e.xx));
    let var_1 = any(!select(!(!vec4<bool>(true, arg_0.a.b, arg_0.a.b, arg_0.a.b)), !vec4<bool>(true, arg_0.a.b, true, arg_0.a.b), vec4<bool>(true, var_0.x < arg_0.b, !arg_0.a.b, true)));
    var var_2 = vec3<u32>(u_input.d.x, ~min(u_input.d.x, 0u >> (_wgslsmith_add_u32(u_input.d.x, 4294967295u) % 32u)), _wgslsmith_add_u32(countOneBits(_wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(arg_2.a, u_input.c))), 67195u));
    var var_3 = select(vec4<bool>(var_1, any(!(!vec2<bool>(arg_0.a.b, var_1))), !arg_0.a.b, !any(vec3<bool>(var_1, false, var_1))), select(vec4<bool>(!select(false, var_1, true), true, arg_0.a.b, true), vec4<bool>(true, !any(vec2<bool>(var_1, false)), arg_0.a.b, any(select(vec3<bool>(false, false, false), vec3<bool>(var_1, var_1, var_1), var_1))), vec4<bool>(var_1, true, !arg_0.a.b || !arg_0.a.b, all(!vec4<bool>(false, true, true, var_1)))), !vec4<bool>(true, false, true, arg_0.a.b));
    var var_4 = var_0.x | 1i;
    return Struct_4(select(select(var_3.wx, vec2<bool>(arg_0.a.b, false), var_1), select(select(select(vec2<bool>(var_3.x, false), vec2<bool>(arg_0.a.b, true), vec2<bool>(arg_0.a.b, var_1)), select(vec2<bool>(true, var_3.x), var_3.xx, var_3.x), var_1), var_3.yz, true & arg_0.a.b), !vec2<bool>(true, arg_1 < 2356u)), _wgslsmith_dot_vec3_i32(u_input.e, ~vec3<i32>(-37485i >> (var_2.x % 32u), var_0.x, arg_0.a.a >> (11475u % 32u))), Struct_1(46986i, arg_0.a.b), !vec3<bool>(true, false, var_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(Struct_1(u_input.e.x, true), 0i), 32923u | u_input.d.x, Struct_3(~(~(~68464u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-211f, -1844f, -502f)), vec3<f32>(1837f, 269f, 1083f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1773f, -386f, 708f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1610f - -617f), _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-407f, 613f), vec2<f32>(-508f, -781f), true))))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-818f, 1541f, 176f))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(round(1718f)), _wgslsmith_f_op_f32(1329f - -935f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(411f, -467f, -132f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1251f, 1437f, -412f), vec3<f32>(607f, 255f, 1428f), false)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-478f, -1000f, 1125f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-995f, 182f, -1262f), vec3<f32>(211f, -315f, 1000f), var_0.d)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -582f, 1491f), vec3<f32>(-1192f, 358f, 1022f), vec3<bool>(var_0.c.b, false, var_0.d.x))), var_0.d.x)))));
    let var_2 = func_2(Struct_3(_wgslsmith_add_u32(~87075u >> (max(u_input.c, 1u) % 32u), 53694u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + 1375f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -1135f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.x - var_1.x)))), var_1.x, var_1.xz), countOneBits(abs(firstLeadingBit(vec3<i32>(-28691i, var_0.b, var_0.b))))).a.a;
    var_0 = Struct_4(!(!var_0.a), ~0i, var_0.c, select(vec3<bool>(var_0.d.x, var_0.d.x, all(vec3<bool>(var_0.d.x, true, var_0.a.x))), vec3<bool>(!(!var_0.d.x), var_0.d.x, !(!var_0.a.x)), select(var_0.d, func_4(Struct_2(Struct_1(var_0.c.a, var_0.a.x), u_input.a), select(u_input.d.x, u_input.d.x, true), Struct_3(13333u, vec3<f32>(250f, var_1.x, var_1.x), var_1.x, var_1.zz)).d, select(vec3<bool>(var_0.d.x, false, var_0.a.x), var_0.d, vec3<bool>(true, true, true)))));
    let var_3 = _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, u_input.d.x, 26089u) & vec3<u32>(u_input.c, 1u, 29059u), vec3<u32>(3542u, 0u, u_input.d.x) ^ vec3<u32>(u_input.c, u_input.d.x, u_input.d.x)) & ~vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d.x, 0u, u_input.d.x), vec3<u32>(11108u, u_input.d.x, u_input.d.x) & vec3<u32>(1u, u_input.c, 22375u)), ~select(vec3<u32>(1u, u_input.c, u_input.d.x), vec3<u32>(u_input.c, u_input.c, u_input.d.x), vec3<bool>(true, true, var_0.a.x))), _wgslsmith_div_vec3_u32(vec3<u32>(max(39237u, 140u), ~u_input.d.x, abs(1u)), ~vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x) & vec3<u32>(1u, 4294967295u, 1u))) << (vec3<u32>(_wgslsmith_add_u32(u_input.c, ~u_input.d.x | u_input.d.x), _wgslsmith_add_u32(u_input.c, max(0u, u_input.d.x)), 4294967295u) % vec3<u32>(32u));
    let var_4 = Struct_3(~abs(select(_wgslsmith_mult_u32(3962u, 49289u), u_input.d.x, var_3.x >= u_input.c)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-915f, _wgslsmith_f_op_f32(-var_1.x), -1085f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1697f, var_1.x, var_1.x), vec3<f32>(143f, -2291f, 125f)), vec3<f32>(-1051f, -314f, var_1.x), func_4(Struct_2(Struct_1(0i, var_0.a.x), var_0.b), u_input.c, Struct_3(var_3.x, vec3<f32>(var_1.x, -361f, var_1.x), var_1.x, var_1.yx)).d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1255f, -255f, var_1.x)))))), 381f, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1183f, var_1.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2287f, 1033f))), var_1.xy) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1160f, var_1.x), _wgslsmith_f_op_vec2_f32(var_1.zz + var_1.zy), vec2<bool>(true, false))))));
    let var_5 = 0u;
    let var_6 = Struct_3(_wgslsmith_sub_u32(select(_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_5, 20245u), abs(var_5)), var_4.a, false), _wgslsmith_mod_u32(~1u, _wgslsmith_add_u32(0u, var_3.x) >> ((0u >> (var_5 % 32u)) % 32u))), vec3<f32>(1f, var_4.d.x, var_4.d.x), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1248f, _wgslsmith_f_op_f32(f32(-1f) * -1013f)))));
    let var_7 = false;
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_0.c.a), ~(27082u | _wgslsmith_clamp_u32(var_3.x, 1u, var_3.x)), ~(~_wgslsmith_clamp_i32(-var_2, _wgslsmith_div_i32(3685i, -1i), _wgslsmith_sub_i32(var_2, 41658i))), reverseBits(var_6.a), var_6.a);
}

