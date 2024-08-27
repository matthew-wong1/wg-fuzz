struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> vec4<i32> {
    var var_0 = Struct_1(vec2<f32>(1f, 1f));
    var var_1 = !(!vec3<bool>(false, true, all(vec3<bool>(false, true, false))));
    var var_2 = Struct_3(true || all(!select(vec3<bool>(true, var_1.x, true), vec3<bool>(false, true, true), var_1.x)));
    var_1 = vec3<bool>(false, !(min(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 61469u, arg_0, arg_0), vec4<u32>(u_input.a.x, arg_0, 0u, arg_0))) != _wgslsmith_mult_u32(max(0u, 41225u), u_input.b)), all(select(select(select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(false, false, false), vec3<bool>(false, var_1.x, true)), select(vec3<bool>(true, var_2.a, true), vec3<bool>(var_2.a, var_1.x, var_2.a), var_1.x), select(vec3<bool>(true, var_2.a, false), vec3<bool>(true, var_2.a, var_1.x), var_2.a)), vec3<bool>(var_1.x, var_0.a.x > var_0.a.x, var_1.x), select(select(vec3<bool>(var_2.a, var_1.x, var_1.x), vec3<bool>(var_1.x, true, false), var_1.x), vec3<bool>(true, true, var_1.x), true))));
    var var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-var_0.a.x)))));
    return vec4<i32>(abs(abs(-(i32(-1i) * -3626i))), min(_wgslsmith_div_i32(2147483647i >> (arg_0 % 32u), -abs(-18945i)), max(_wgslsmith_sub_i32(-19321i, 1i) >> (min(u_input.a.x, 14319u) % 32u), 1i)), ~(-12763i), -1742i);
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(-vec4<i32>(arg_1, arg_1, arg_1, 33845i), vec4<i32>(arg_1, -arg_1, -30170i, arg_1 ^ 0i)), func_3(u_input.a.x));
    var var_1 = firstTrailingBit(u_input.a);
    var_1 = ~((vec2<u32>(78759u, var_1.x) | ~(~vec2<u32>(u_input.b, u_input.a.x))) & vec2<u32>(firstLeadingBit(77599u), 0u));
    var var_2 = _wgslsmith_div_vec2_u32(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.x, var_1.x), u_input.a)), ~select(u_input.a, _wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(u_input.b, 71934u)), vec2<bool>(true, false)) << (vec2<u32>(~(~4294967295u), u_input.a.x ^ _wgslsmith_div_u32(14520u, u_input.a.x)) % vec2<u32>(32u)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1039f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(674f, arg_0)))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-793f, _wgslsmith_f_op_f32(arg_0 - arg_0)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: i32) -> Struct_1 {
    var var_0 = max(vec2<u32>(5828u, ~abs(_wgslsmith_mod_u32(83133u, 66318u))), u_input.a);
    var var_1 = Struct_3(all(vec4<bool>(true | all(vec3<bool>(true, true, false)), true, true || select(true, false, true), any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))))));
    var var_2 = arg_3;
    var var_3 = arg_3;
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x))), arg_0.a.x, _wgslsmith_f_op_f32(max(1000f, -1000f)), arg_1.a.x);
    return func_2(arg_0.a.x, max(arg_3, ~(~(-14587i)) >> (_wgslsmith_div_u32(~9645u, ~94255u) % 32u)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> vec4<u32> {
    var var_0 = -(vec3<i32>(func_3(min(u_input.b, arg_3.a)).x, arg_3.d, 2147483647i) & max(firstTrailingBit(vec3<i32>(arg_3.d, arg_3.d, arg_3.d)), vec3<i32>(arg_3.d, arg_3.d, arg_3.d) >> (reverseBits(vec3<u32>(arg_3.a, 4294967295u, arg_3.a)) % vec3<u32>(32u))));
    var var_1 = ~0u == u_input.a.x;
    let var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_2)))), 61515i).a.x);
    var var_4 = min(30356u, _wgslsmith_add_u32(4637u, ~arg_3.a)) ^ arg_3.a;
    return _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(select(~countOneBits(vec4<u32>(arg_3.a, 1u, arg_3.a, 91108u)), vec4<u32>(1u, 1u, 14030u, ~15795u), vec4<bool>(arg_0.a, -968f <= var_3, !var_2.a, var_2.a)), vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.a, 31835u), vec2<u32>(0u, 1u)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), ~vec2<u32>(28794u, 5991u)), 3814u, ~(~arg_3.a))), ~firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(arg_3.a, u_input.a.x, arg_3.a, u_input.a.x) ^ vec4<u32>(arg_3.a, u_input.a.x, arg_3.a, 0u), ~vec4<u32>(1u, 24128u, arg_3.a, arg_3.a))));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_3, arg_3: vec3<bool>) -> i32 {
    global0 = array<vec4<bool>, 9>();
    var var_0 = _wgslsmith_mult_vec4_u32(~func_5(Struct_3(select(arg_3.x, arg_3.x, arg_3.x)), func_4(func_2(1253f, -2147483647i), func_2(385f, 2147483647i), u_input.a, firstTrailingBit(-2147483647i)), -1845f, Struct_2(abs(0u), false, any(arg_3), -1i)), _wgslsmith_div_vec4_u32(max(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 74466u, 27827u, 0u), abs(vec4<u32>(u_input.b, 0u, u_input.a.x, 16654u))), _wgslsmith_add_vec4_u32(~vec4<u32>(arg_0, 36077u, arg_0, 30789u), ~vec4<u32>(arg_0, u_input.a.x, 4294967295u, arg_0))), vec4<u32>((arg_0 & 4294967295u) ^ ~18931u, u_input.b, ~_wgslsmith_div_u32(50349u, 1u), ~u_input.a.x)));
    var_0 = ~(~(~select(abs(vec4<u32>(0u, 55501u, var_0.x, u_input.a.x)), firstTrailingBit(vec4<u32>(0u, 22418u, var_0.x, 1u)), true)));
    let var_1 = Struct_2(37326u, true, select(select(true, any(!arg_3), !(!arg_2.a)), true, all(arg_3)), -58796i);
    var var_2 = arg_3.zx;
    return arg_1;
}

fn func_6(arg_0: vec3<i32>, arg_1: f32, arg_2: f32) -> Struct_2 {
    global0 = array<vec4<bool>, 9>();
    var var_0 = u_input.a.x;
    var var_1 = (~vec2<u32>(~u_input.b, ~1u) | _wgslsmith_mult_vec2_u32(u_input.a, ~_wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(u_input.b, u_input.a.x)))) | u_input.a;
    global0 = array<vec4<bool>, 9>();
    let var_2 = Struct_2(~0u, _wgslsmith_add_u32(min(var_1.x, 1u), _wgslsmith_add_u32(1u, u_input.b)) < ~u_input.b, !(!(0u < u_input.b)) || false, ~_wgslsmith_mod_i32(_wgslsmith_div_i32(func_3(0u).x, countOneBits(-1i)), _wgslsmith_mult_i32(arg_0.x, func_1(u_input.a.x, arg_0.x, Struct_3(false), vec3<bool>(false, true, true)))));
    return Struct_2(u_input.a.x, true, any(select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), var_2.b), select(vec2<bool>(var_2.b, false), vec2<bool>(true, false), vec2<bool>(false, var_2.c)), var_2.b || true), select(vec2<bool>(true, var_2.c), select(vec2<bool>(var_2.c, true), vec2<bool>(true, true), var_2.b), var_2.b), all(select(vec3<bool>(true, false, var_2.b), vec3<bool>(true, var_2.c, false), var_2.c)))), _wgslsmith_div_i32(_wgslsmith_add_i32(func_1(var_1.x, var_2.d, Struct_3(true), select(vec3<bool>(true, var_2.c, false), vec3<bool>(true, var_2.b, var_2.c), false)), var_2.d), firstLeadingBit(i32(-1i) * -arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 9>();
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1f))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1770f + -464f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-138f, 1284f))))));
    var var_1 = func_6(-vec3<i32>(i32(-1i) * -2147483647i, func_1(24187u, _wgslsmith_dot_vec3_i32(vec3<i32>(-40655i, -49509i, 44018i), vec3<i32>(2147483647i, -1i, 0i)), Struct_3(false), vec3<bool>(false, true, false)), -_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(-2147483647i, 34502i))), 315f, 347f);
    var_1 = Struct_2(_wgslsmith_mod_u32(4294967295u, 1u), false, true, _wgslsmith_div_i32(var_1.d, _wgslsmith_add_i32(firstTrailingBit(var_1.d), var_1.d)) >> (var_1.a % 32u));
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-150f, 280f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2044f, 846f))))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1084f, _wgslsmith_f_op_f32(ceil(697f)))))))));
    var_1 = func_6(max(-vec3<i32>(var_1.d, 13646i, -30756i) << (vec3<u32>(countOneBits(var_1.a), 48981u, _wgslsmith_add_u32(var_1.a, var_1.a)) % vec3<u32>(32u)), abs(~_wgslsmith_div_vec3_i32(vec3<i32>(var_1.d, var_1.d, -1i), vec3<i32>(-38694i, var_1.d, var_1.d)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - var_2.x) * _wgslsmith_f_op_f32(1331f * 281f)), func_2(_wgslsmith_f_op_f32(-146f + var_2.x), var_1.d).a.x)), _wgslsmith_f_op_f32(min(var_2.x, var_2.x)))), _wgslsmith_f_op_f32(-999f + func_4(Struct_1(_wgslsmith_f_op_vec2_f32(-var_2)), Struct_1(vec2<f32>(1631f, -1120f)), vec2<u32>(abs(var_1.a), 887u), i32(-1i) * -36867i).a.x));
    let x = u_input.a;
    s_output = StorageBuffer(-10342i, vec4<i32>(var_1.d, var_1.d, ~_wgslsmith_mult_i32(var_1.d, _wgslsmith_mult_i32(0i, 26768i)), select(~var_1.d | -24229i, var_1.d, !var_1.b)), min(_wgslsmith_add_vec2_i32(-firstLeadingBit(vec2<i32>(2713i, -1i)), ~select(vec2<i32>(-2147483647i, var_1.d), vec2<i32>(1i, 14353i), true)), _wgslsmith_mult_vec2_i32(~vec2<i32>(var_1.d, var_1.d) << (_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 108487u), vec2<u32>(u_input.b, u_input.a.x)) % vec2<u32>(32u)), vec2<i32>(var_1.d, ~var_1.d))), select(abs(firstLeadingBit(~vec2<i32>(1221i, var_1.d))), vec2<i32>(~var_1.d, -countOneBits(var_1.d)), select(true, any(select(vec2<bool>(false, var_1.c), vec2<bool>(var_1.c, true), vec2<bool>(true, false))), true)), ~(~11782u));
}

