struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: vec4<f32>) -> u32 {
    return ~_wgslsmith_dot_vec3_u32(~(~select(vec3<u32>(35275u, 1u, 0u), vec3<u32>(53193u, arg_0, arg_0), true)), vec3<u32>(max(_wgslsmith_div_u32(arg_0, 1u), arg_2.c >> (arg_0 % 32u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(60867u, 30208u, arg_2.c), _wgslsmith_div_vec3_u32(vec3<u32>(5384u, arg_0, arg_0), vec3<u32>(4294967295u, arg_0, arg_0))), arg_0));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = 0i;
    global0 = _wgslsmith_sub_i32(~arg_0.b.x, _wgslsmith_dot_vec3_i32(arg_0.b.wzy, arg_1.b.yxy));
    var_0 = i32(-1i) * -_wgslsmith_mod_i32(-(-5294i | arg_0.b.x), i32(-1i) * -2147483647i);
    global0 = -4480i;
    var var_1 = min((vec3<u32>(_wgslsmith_add_u32(arg_1.c, arg_0.c), 4294967295u, _wgslsmith_sub_u32(0u, arg_0.c)) << (vec3<u32>(_wgslsmith_add_u32(arg_0.c, 1u), func_3(arg_1.c, u_input.a, Struct_1(false, vec4<i32>(arg_1.b.x, 0i, u_input.a, 2147483647i), arg_0.c), vec4<f32>(-1447f, -1529f, 315f, 1375f)), 0u) % vec3<u32>(32u))) & ~vec3<u32>(abs(0u), 13688u, arg_0.c), select(max(~(~vec3<u32>(arg_1.c, 4294967295u, arg_1.c)), ~(~vec3<u32>(arg_0.c, arg_1.c, 11962u))), _wgslsmith_add_vec3_u32((vec3<u32>(arg_1.c, 81592u, arg_1.c) >> (vec3<u32>(36559u, 67990u, 4294967295u) % vec3<u32>(32u))) ^ vec3<u32>(arg_0.c, 1u, 4294967295u), _wgslsmith_clamp_vec3_u32(~vec3<u32>(44592u, arg_0.c, arg_0.c), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, arg_0.c, arg_0.c), vec3<u32>(1u, 1u, arg_1.c)), vec3<u32>(0u, 4294967295u, arg_0.c) >> (vec3<u32>(arg_1.c, arg_0.c, 58339u) % vec3<u32>(32u)))), arg_0.a));
    return 1351f;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(arg_0.a, vec4<i32>(arg_0.b.x, 1i, 40317i, u_input.a), arg_0.c), arg_0)), 745f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(194f, -1087f), _wgslsmith_div_vec2_f32(arg_1.wz, vec2<f32>(arg_1.x, 422f))))))) + _wgslsmith_f_op_vec2_f32(min(arg_1.ww, vec2<f32>(arg_1.x, arg_1.x))));
    var var_1 = Struct_1(true, select(abs(-arg_0.b), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(arg_0.b, vec4<i32>(arg_0.b.x, u_input.a, -1i, arg_0.b.x)), countOneBits(arg_0.b.x), _wgslsmith_clamp_i32(-48952i, arg_0.b.x, 2147483647i), _wgslsmith_mod_i32(0i, arg_0.b.x)), ~(~vec4<i32>(arg_0.b.x, -2147483647i, arg_0.b.x, arg_0.b.x))), true), ~(~reverseBits(1u ^ arg_0.c)));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_1.x));
    return Struct_1(all(!select(select(vec4<bool>(arg_0.a, false, true, false), vec4<bool>(arg_0.a, arg_0.a, false, false), vec4<bool>(true, false, var_1.a, arg_0.a)), vec4<bool>(arg_0.a, arg_0.a, false, arg_0.a), true)), -arg_0.b, abs(7456u));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = func_1(arg_2, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-496f, -583f, -207f, 340f) - vec4<f32>(1f, 1f, 1f, 1f)), vec4<f32>(-490f, -102f, _wgslsmith_f_op_f32(ceil(1112f)), _wgslsmith_f_op_f32(ceil(-1111f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -399f, -1116f, -1802f), vec4<f32>(309f, 1595f, 1697f, -1581f), arg_1.a))))));
    let var_1 = Struct_1(true, _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(min(-arg_2.b, _wgslsmith_sub_vec4_i32(arg_1.b, var_0.b)), vec4<i32>(min(u_input.a, -45734i), 51613i, _wgslsmith_sub_i32(arg_2.b.x, arg_0), max(arg_1.b.x, 42486i))), vec4<i32>(55029i, 4100i, 0i, firstTrailingBit(u_input.a) | countOneBits(var_0.b.x))), _wgslsmith_div_u32(_wgslsmith_clamp_u32(~arg_1.c, abs(68777u), arg_2.c) << (164927u % 32u), ~4294967295u));
    var var_2 = var_1;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-992f, _wgslsmith_f_op_f32(min(1000f, -565f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1447f, -576f) * 1f), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(floor(388f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-493f, 986f, 1017f, -226f))))) + vec4<f32>(-731f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-285f - -987f))), _wgslsmith_div_f32(1000f, -1724f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-707f))))));
    var var_4 = Struct_1(!arg_2.a, var_0.b, select(~func_3(23436u >> (1u % 32u), 33186i, arg_1, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(2871f, var_3.x, var_3.x, var_3.x)))), 1u, var_1.a || !(var_3.x >= 270f)));
    return !(!(!func_1(arg_2, _wgslsmith_f_op_vec4_f32(var_3 * var_3)).a));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    return Struct_1(!(!arg_3.a | ((14701u ^ arg_0.x) == _wgslsmith_add_u32(4294967295u, arg_2))), ~_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(arg_3.b, ~arg_3.b), select(arg_3.b, vec4<i32>(25571i, -1i, u_input.a, -12905i), false) | -vec4<i32>(arg_3.b.x, u_input.a, arg_3.b.x, -5436i)), ~select(_wgslsmith_dot_vec3_u32(vec3<u32>(67634u, arg_3.c, arg_3.c), vec3<u32>(arg_2, 4294967295u, 0u)), 16370u ^ arg_0.x, true) << (countOneBits(abs(1u >> (arg_2 % 32u))) % 32u));
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_5(vec2<u32>(~arg_1.c, ~abs(~59495u)), vec4<bool>(arg_1.a, arg_1.a, true, !arg_1.a), 1563u, Struct_1((countOneBits(arg_1.c) >> (~arg_1.c % 32u)) > (select(arg_1.c, 1u, false) << (~13626u % 32u)), vec4<i32>(select(arg_1.b.x, _wgslsmith_div_i32(-2147483647i, arg_1.b.x), arg_1.a), _wgslsmith_clamp_i32(1i, -8460i, ~19509i), countOneBits(-28693i), 1i), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.c, arg_1.c) ^ vec2<u32>(arg_1.c, 0u), ~vec2<u32>(4294967295u, arg_1.c)), arg_1.c)));
    global0 = arg_1.b.x;
    let var_1 = arg_1.b.yxw;
    global0 = 0i;
    global0 = 0i;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~32549u;
    let var_1 = vec3<bool>(true, true, true);
    let var_2 = func_6(vec4<i32>(2746i, i32(-1i) * -26768i, u_input.a, u_input.a ^ ~(~2147483647i)), func_5(vec2<u32>(_wgslsmith_sub_u32(min(var_0, var_0), ~0u), var_0), vec4<bool>(func_4(-18362i, func_1(Struct_1(var_1.x, vec4<i32>(4667i, -25158i, 1i, u_input.a), 22482u), vec4<f32>(-259f, -1232f, -190f, -571f)), Struct_1(var_1.x, vec4<i32>(u_input.a, u_input.a, -1i, -1i), 77415u)), var_1.x, true, true), ~(1u | (0u & var_0)), Struct_1(!(true || var_1.x), vec4<i32>(-38768i, ~75598i, u_input.a, u_input.a), var_0)));
    var var_3 = func_5(_wgslsmith_sub_vec2_u32(reverseBits(~vec2<u32>(1u, 4294967295u)) << ((~vec2<u32>(var_0, 38826u) & (vec2<u32>(var_0, var_0) >> (vec2<u32>(var_2.c, var_0) % vec2<u32>(32u)))) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(max(~vec2<u32>(var_2.c, var_2.c), min(vec2<u32>(24193u, var_0), vec2<u32>(510u, var_0))), select(vec2<u32>(41370u, var_2.c) ^ vec2<u32>(13098u, 4294967295u), min(vec2<u32>(var_0, var_2.c), vec2<u32>(var_2.c, var_0)), true))), vec4<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-696f))) != -658f, !(!var_2.a != any(vec3<bool>(var_2.a, true, true))), var_1.x), var_0, var_2);
    var var_4 = abs(_wgslsmith_div_i32(var_2.b.x, _wgslsmith_dot_vec4_i32(~firstLeadingBit(vec4<i32>(-2147483647i, var_2.b.x, 12856i, 24477i)), _wgslsmith_div_vec4_i32(var_2.b, vec4<i32>(74361i, var_2.b.x, var_3.b.x, 0i)))));
    let var_5 = min(u_input.a, 1i) ^ _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_3.b.x, 1555i), vec2<i32>(var_2.b.x, 1i)), vec2<i32>(~(21585i >> (var_3.c % 32u)), 16528i));
    global0 = 37476i;
    let var_6 = ~vec4<u32>(var_0, var_0, ~reverseBits(_wgslsmith_mod_u32(var_0, 34321u)), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(149470u, 65611u, 1u), vec3<u32>(var_3.c, var_0, 1u))));
    let var_7 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-576f, 381f, -254f), vec3<f32>(-1470f, 532f, -721f))) + vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-2338f, -246f, -360f), vec3<f32>(-1411f, 509f, 1000f))), select(vec3<bool>(true, false, true), vec3<bool>(var_1.x, var_3.a, var_3.a), !var_1)))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1111f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1206f, -516f))), _wgslsmith_f_op_f32(func_2(Struct_1(false, var_3.b, var_6.x), func_6(vec4<i32>(u_input.a, -5911i, var_3.b.x, 1i), Struct_1(var_1.x, vec4<i32>(var_3.b.x, 11877i, var_5, var_3.b.x), var_0))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_7.x, 2586f)) * _wgslsmith_f_op_f32(f32(-1f) * -556f)), var_7.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_7.x) - _wgslsmith_f_op_f32(-195f * -332f)), _wgslsmith_f_op_f32(trunc(var_7.x)))), var_5, var_6);
}

