struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec4<i32>) -> i32 {
    var var_0 = !select(firstLeadingBit(_wgslsmith_mod_i32(arg_2.x, u_input.a)) >= -arg_2.x, all(!vec3<bool>(false, false, arg_1.b.x)), false);
    var var_1 = vec3<bool>(!arg_1.b.x, any(vec4<bool>(false, !arg_1.b.x, arg_1.b.x, !any(vec3<bool>(arg_1.b.x, true, arg_1.b.x)))), _wgslsmith_mult_u32(u_input.b.x, arg_1.a) >= reverseBits(~(~7095u)));
    return i32(-1i) * -7600i;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: vec4<i32>, arg_3: Struct_2) -> Struct_2 {
    global0 = firstLeadingBit(func_3(~_wgslsmith_sub_vec2_u32(u_input.b.zy, ~vec2<u32>(arg_3.a, u_input.b.x)), Struct_2(24249u, arg_3.b), _wgslsmith_div_vec4_i32(vec4<i32>(arg_0.x & u_input.a, u_input.a, 0i, -arg_0.x), arg_2)));
    let var_0 = -196f;
    let var_1 = Struct_3(false, !(!(!(!arg_3.b))), var_0, arg_3.b);
    var var_2 = vec3<i32>(arg_2.x, arg_2.x, abs(arg_2.x << (~1u % 32u)));
    let var_3 = 4294967295u;
    return arg_3;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    var var_0 = Struct_3(arg_1.b.x, !vec2<bool>(arg_3.b.x, true), arg_2.b.x, arg_1.b);
    let var_1 = vec2<i32>(-32203i, 42681i);
    global0 = -(~(-16631i));
    global0 = (~var_1.x | ~(-4906i)) ^ reverseBits(firstLeadingBit(u_input.c));
    var var_2 = arg_3.a << (_wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_3.a, 30610u, arg_3.a), u_input.b.x), select(reverseBits(max(0u, arg_3.a)), 4294967295u, arg_3.b.x)) % 32u);
    return arg_0.b.x;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: i32) -> Struct_2 {
    global0 = arg_3;
    global0 = func_3(abs(min(~vec2<u32>(31114u, u_input.b.x), vec2<u32>(u_input.b.x, 0u)) << (~vec2<u32>(0u, u_input.b.x) % vec2<u32>(32u))), func_2(reverseBits(firstLeadingBit(abs(vec2<i32>(-2147483647i, u_input.c)))), _wgslsmith_f_op_vec2_f32(arg_0.b + _wgslsmith_f_op_vec2_f32(-arg_0.b)), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(12294i, arg_3, 32534i, -10814i) & vec4<i32>(-2147483647i, arg_3, 1996i, u_input.c), abs(vec4<i32>(0i, -2147483647i, u_input.c, arg_3))), ~(~vec4<i32>(arg_3, arg_3, -2147483647i, u_input.a))), func_2(abs(vec2<i32>(-32169i, arg_3)), _wgslsmith_f_op_vec2_f32(min(arg_0.b, vec2<f32>(arg_0.b.x, arg_2.c))), min(vec4<i32>(u_input.a, arg_3, 0i, u_input.a) | vec4<i32>(5136i, 32993i, arg_3, -46568i), -vec4<i32>(u_input.c, 2147483647i, 1460i, u_input.a)), Struct_2(4294967295u, func_2(vec2<i32>(-1i, u_input.a), arg_0.b, vec4<i32>(2147483647i, arg_3, -2147483647i, -17098i), Struct_2(u_input.b.x, vec2<bool>(true, false))).b))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(min(arg_3, u_input.a), arg_3, u_input.a, 2147483647i), vec4<i32>(-51380i, 13101i, arg_3, u_input.c) & vec4<i32>(1i, arg_3, arg_3, arg_3)));
    global0 = min(arg_3, arg_3 ^ ~abs(arg_3));
    var var_0 = arg_2.c;
    var var_1 = func_2(vec2<i32>(abs(arg_3), u_input.c), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(arg_0.b, vec2<f32>(_wgslsmith_f_op_f32(min(-129f, 737f)), _wgslsmith_f_op_f32(trunc(144f)))))), -vec4<i32>(1i, -1i, -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, arg_3), vec2<i32>(-1i, arg_3)), 31139i), func_2(min(~min(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(arg_3, 1i)), vec2<i32>(~u_input.a, -38889i << (u_input.b.x % 32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b)), min(-vec4<i32>(24603i, 1i, 1i, arg_3), ~vec4<i32>(u_input.a, arg_3, arg_3, arg_3)) << (vec4<u32>(0u, ~1u, u_input.b.x, 10468u) % vec4<u32>(32u)), func_2(countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(-44048i, -31556i), vec2<i32>(-21943i, 37039i))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1228f, arg_0.b.x), arg_0.b)))), max(-vec4<i32>(-6674i, 2147483647i, -2147483647i, 1i), vec4<i32>(2147483647i, 45665i, arg_3, u_input.a)), func_2(-vec2<i32>(31281i, 47564i), vec2<f32>(-291f, 762f), select(vec4<i32>(arg_3, u_input.c, -2147483647i, arg_3), vec4<i32>(u_input.a, -25201i, u_input.c, -1i), vec4<bool>(true, arg_1.x, arg_1.x, true)), func_2(vec2<i32>(0i, u_input.a), arg_0.b, vec4<i32>(0i, u_input.c, 24148i, -2147483647i), Struct_2(u_input.b.x, vec2<bool>(true, arg_2.b.x)))))));
    return func_2(_wgslsmith_sub_vec2_i32(-(~vec2<i32>(69419i, -2147483647i)), vec2<i32>(i32(-1i) * -69921i, u_input.c)) & vec2<i32>(-42093i, -min(13268i, u_input.a)), arg_0.b, vec4<i32>(u_input.a, arg_3, 2147483647i, ~0i), Struct_2(select(~_wgslsmith_mult_u32(0u, u_input.b.x), ~34883u, !(!arg_2.d.x)), vec2<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3, 27349i, arg_3), vec3<i32>(arg_3, -14169i, 62360i)) > 6445i, !(!arg_1.x))));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> vec4<u32> {
    var var_0 = func_5(Struct_1(arg_0.a, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_0.b.x) * arg_0.b) - arg_0.b), vec2<f32>(_wgslsmith_f_op_f32(min(550f, arg_1)), _wgslsmith_f_op_f32(arg_0.b.x + arg_1))))), select(vec2<bool>(arg_0.a, select(all(vec4<bool>(true, false, arg_0.a, false)), true, true)), vec2<bool>(true, all(!vec3<bool>(arg_0.a, arg_0.a, arg_0.a))), select(true, true, true)), Struct_3((i32(-1i) * -u_input.a) > u_input.a, !vec2<bool>(true, arg_0.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(Struct_1(true, arg_0.b), func_2(vec2<i32>(23785i, 37304i), vec2<f32>(arg_1, -142f), vec4<i32>(1i, u_input.a, u_input.a, u_input.a), Struct_2(u_input.b.x, vec2<bool>(false, true))), arg_0, func_2(vec2<i32>(u_input.c, 0i), arg_0.b, vec4<i32>(-1i, u_input.c, -43489i, u_input.c), Struct_2(u_input.b.x, vec2<bool>(false, arg_0.a))))))), func_2(~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.c), vec2<i32>(0i, u_input.a)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -562f), _wgslsmith_f_op_f32(select(-205f, arg_1, false))), -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, 0i), vec4<i32>(-1i, 1i, u_input.c, 14069i)), func_2(vec2<i32>(u_input.a, 1i), _wgslsmith_f_op_vec2_f32(-arg_0.b), vec4<i32>(1i, -1647i, -1i, u_input.c), func_2(vec2<i32>(u_input.a, u_input.a), arg_0.b, vec4<i32>(-34492i, u_input.c, u_input.c, u_input.a), Struct_2(1u, vec2<bool>(arg_0.a, arg_0.a))))).b), ~_wgslsmith_div_i32(min(u_input.a, u_input.c), u_input.a) >> (u_input.b.x % 32u));
    let var_1 = !(!(u_input.a != u_input.c));
    global0 = u_input.a;
    var var_2 = all(select(select(select(!vec4<bool>(var_0.b.x, true, var_1, false), !vec4<bool>(arg_0.a, false, var_1, false), arg_0.a), vec4<bool>(true, u_input.b.x <= 15659u, false, any(var_0.b)), vec4<bool>(!var_0.b.x, var_1, true, arg_0.b.x >= 969f)), vec4<bool>(arg_0.a, all(!vec3<bool>(var_0.b.x, true, false)), any(select(vec4<bool>(true, true, false, var_0.b.x), vec4<bool>(false, true, true, true), true)), true), !var_1));
    let var_3 = countOneBits(u_input.c >> (4294967295u % 32u));
    return _wgslsmith_mult_vec4_u32(max(countOneBits(select(vec4<u32>(0u, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(var_0.a, u_input.b.x, u_input.b.x, u_input.b.x), vec4<bool>(var_1, var_0.b.x, var_0.b.x, true))), u_input.b), ~u_input.b);
}

fn func_6(arg_0: vec2<bool>, arg_1: f32, arg_2: vec4<u32>, arg_3: vec4<bool>) -> i32 {
    global0 = u_input.a;
    let var_0 = ~arg_2.x;
    global0 = 23316i;
    global0 = 50251i;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + arg_1)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(arg_1)))));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(reverseBits(vec4<i32>(func_6(vec2<bool>(true, true), _wgslsmith_f_op_f32(f32(-1f) * -155f), func_1(Struct_1(true, vec2<f32>(949f, -698f)), 811f), vec4<bool>(true, false, false, false)), -u_input.a ^ _wgslsmith_clamp_i32(u_input.a, -1i, u_input.a), u_input.a, -u_input.c)), abs(vec4<i32>(_wgslsmith_div_i32(abs(18171i), i32(-1i) * -26117i), _wgslsmith_div_i32(max(0i, u_input.a), func_3(u_input.b.wx, Struct_2(19209u, vec2<bool>(true, false)), vec4<i32>(u_input.c, u_input.a, u_input.a, 77354i))), u_input.c ^ _wgslsmith_sub_i32(u_input.a, u_input.a), -1i)), vec4<bool>(true, !func_5(Struct_1(false, vec2<f32>(298f, -897f)), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), Struct_3(false, vec2<bool>(false, false), 622f, vec2<bool>(true, true)), -25165i).b.x, all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), true));
    var_0 = max(vec4<i32>(var_0.x, -2147483647i, var_0.x, 28901i), _wgslsmith_add_vec4_i32(-(~countOneBits(vec4<i32>(-2147483647i, var_0.x, -12805i, var_0.x))), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.c, var_0.x, 6980i), -vec4<i32>(11953i, 22564i, 0i, 2147483647i)), -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 0i, u_input.c, -1i), vec4<i32>(u_input.a, var_0.x, var_0.x, u_input.c)), ~abs(vec4<i32>(var_0.x, -27346i, -1i, u_input.c)))));
    let var_1 = -(u_input.a ^ ~(~var_0.x));
    var var_2 = Struct_1(all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), func_2(-var_0.xx, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-298f, -619f))), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, 21793i, -2147483647i, var_0.x), vec4<i32>(u_input.a, -1i, var_1, 1i)), func_2(var_0.yx, vec2<f32>(-232f, -166f), vec4<i32>(u_input.c, var_1, var_1, -2147483647i), Struct_2(u_input.b.x, vec2<bool>(true, false)))).b.x)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-395f, -1640f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(270f, 242f) - vec2<f32>(-545f, 129f)))), vec2<f32>(_wgslsmith_f_op_f32(func_4(Struct_1(true, vec2<f32>(629f, 817f)), Struct_2(u_input.b.x, vec2<bool>(false, false)), Struct_1(false, vec2<f32>(-261f, 680f)), Struct_2(u_input.b.x, vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(676f + 2313f) - _wgslsmith_f_op_f32(-729f * 720f))))));
    let var_3 = var_2.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(var_2.b.x)), _wgslsmith_f_op_f32(1681f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(466f, _wgslsmith_f_op_f32(-1686f - var_2.b.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.b.x)) * _wgslsmith_f_op_f32(-var_2.b.x)))));
}

