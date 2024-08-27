struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(-1i, 1i, 31851i), vec3<i32>(9541i, -1i, i32(-2147483648)), vec3<i32>(10008i, 35678i, 42708i), vec3<i32>(9248i, i32(-2147483648), 2147483647i), vec3<i32>(1i, 2147483647i, -2764i), vec3<i32>(34598i, -4288i, 2147483647i), vec3<i32>(i32(-2147483648), 1i, 39553i), vec3<i32>(-1i, 0i, 2147483647i), vec3<i32>(-61235i, i32(-2147483648), -43440i), vec3<i32>(16752i, 5561i, -50162i), vec3<i32>(2147483647i, 437i, 1i), vec3<i32>(-46049i, -1i, -3956i), vec3<i32>(i32(-2147483648), -1i, 1i), vec3<i32>(19893i, 12070i, -13519i), vec3<i32>(-37701i, 17767i, 1i), vec3<i32>(-3856i, 1i, -21814i), vec3<i32>(14651i, -30847i, -1i), vec3<i32>(-1i, i32(-2147483648), -7590i), vec3<i32>(i32(-2147483648), 0i, 1i), vec3<i32>(-26591i, 0i, 1374i), vec3<i32>(21328i, -6058i, 27352i), vec3<i32>(2147483647i, 2147483647i, 1i), vec3<i32>(-42268i, 30193i, 7255i), vec3<i32>(-23766i, -4163i, -1i), vec3<i32>(i32(-2147483648), -15524i, -1i), vec3<i32>(-9371i, 4368i, i32(-2147483648)), vec3<i32>(-5730i, -38849i, -42105i));

var<private> global1: f32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.a.b.x + _wgslsmith_f_op_f32(ceil(1f))), -1790f));
    global1 = 1555f;
    global1 = -621f;
    var var_1 = _wgslsmith_f_op_f32(var_0 * -1390f);
    let var_2 = Struct_2(arg_1.a, reverseBits(_wgslsmith_sub_vec2_i32(~(~arg_1.b), ~_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -2147483647i), arg_1.b))));
    return u_input.a;
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: vec3<bool>) -> bool {
    global1 = -1113f;
    var var_0 = -max(select(u_input.a, u_input.a, any(arg_2.zy)), -u_input.a);
    let var_1 = i32(-1i) * -11624i;
    let var_2 = vec3<u32>(~reverseBits(min(~arg_1, 89607u)), arg_1, arg_1);
    let var_3 = Struct_3(Struct_1(_wgslsmith_mult_i32(-func_3(arg_2.x, Struct_2(Struct_1(-36011i, vec2<f32>(-624f, -1000f), true), arg_0.zx), arg_2.yz, arg_0.x), ~var_1), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-970f, -711f), vec2<f32>(-721f, 1052f), arg_2.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-538f, -678f) * vec2<f32>(987f, 1000f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1198f, 1511f))), true)), select(vec2<bool>(true, true), vec2<bool>(true, arg_2.x), vec2<bool>(arg_2.x, arg_2.x)))), false));
    return (var_3.a.b.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_3.a.b.x, var_3.a.b.x))) * -243f)) || select(reverseBits(1i) <= var_1, u_input.a < (-1i & _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 34464i, var_1), vec3<i32>(arg_0.x, -1i, arg_0.x))), false);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: vec4<bool>) -> Struct_3 {
    var var_0 = !(!vec4<bool>(func_2(countOneBits(vec3<i32>(arg_0, arg_1.a, 2147483647i)), ~0u, select(arg_3.yzz, vec3<bool>(false, true, true), vec3<bool>(arg_2, false, true))), arg_1.c, select(all(vec4<bool>(true, false, true, arg_1.c)), true, arg_3.x && arg_1.c), arg_2));
    var var_1 = 36955i;
    var var_2 = false && any(!select(select(vec4<bool>(false, false, false, false), arg_3, vec4<bool>(var_0.x, arg_1.c, false, arg_1.c)), select(vec4<bool>(arg_2, arg_2, false, arg_3.x), vec4<bool>(true, arg_1.c, arg_1.c, false), true), any(var_0.zwz)));
    var var_3 = _wgslsmith_mult_vec2_i32(vec2<i32>(firstTrailingBit(arg_1.a << (1u % 32u)) ^ 51653i, arg_1.a), vec2<i32>(u_input.a, 3058i));
    var_3 = vec2<i32>(-1i) * -reverseBits(vec2<i32>(-var_3.x, var_3.x));
    return Struct_3(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, -8920i, u_input.a, 1i) >> (vec4<u32>(4294967295u, 24035u, 24338u, 0u) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0, 3067i, var_3.x, var_3.x), vec4<i32>(var_3.x, arg_0, -8734i, 1i))) >> (0u % 32u), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(1183f * arg_1.b.x), arg_1.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(764f, arg_1.b.x))))), any(!var_0.ww)));
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    global0 = array<vec3<i32>, 27>();
    var var_0 = !select(!select(select(vec3<bool>(true, arg_0.a.c, false), vec3<bool>(false, arg_0.a.c, arg_0.a.c), vec3<bool>(arg_0.a.c, arg_0.a.c, arg_0.a.c)), select(vec3<bool>(true, false, false), vec3<bool>(arg_0.a.c, arg_0.a.c, arg_0.a.c), vec3<bool>(true, true, false)), true), vec3<bool>(true, true, true), false);
    var_0 = vec3<bool>(select(any(vec3<bool>(true, var_0.x, arg_0.a.c)) || func_1(arg_0.a.a, func_1(1i, arg_0.a, arg_0.a.c, vec4<bool>(var_0.x, true, var_0.x, var_0.x)).a, func_1(arg_0.a.a, Struct_1(arg_0.a.a, arg_0.a.b, arg_0.a.c), var_0.x, vec4<bool>(var_0.x, true, var_0.x, var_0.x)).a.c, select(vec4<bool>(false, true, arg_0.a.c, var_0.x), vec4<bool>(true, false, true, arg_0.a.c), vec4<bool>(false, false, var_0.x, true))).a.c, true, false), _wgslsmith_mod_i32(-2147483647i, arg_0.a.a) >= u_input.a, var_0.x);
    let var_1 = -296f;
    var_0 = !select(!vec3<bool>(var_0.x || arg_0.a.c, func_2(vec3<i32>(u_input.a, -31810i, -11409i), 0u, vec3<bool>(arg_0.a.c, true, arg_0.a.c)), arg_0.a.c), vec3<bool>(func_1(arg_0.a.a, Struct_1(arg_0.a.a, vec2<f32>(var_1, var_1), var_0.x), true, !vec4<bool>(true, var_0.x, var_0.x, arg_0.a.c)).a.c, all(vec3<bool>(var_0.x, arg_0.a.c, true)), any(select(vec3<bool>(true, arg_0.a.c, arg_0.a.c), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x))), select(!(!vec3<bool>(arg_0.a.c, true, var_0.x)), select(vec3<bool>(var_0.x, true, false), select(vec3<bool>(arg_0.a.c, arg_0.a.c, var_0.x), vec3<bool>(arg_0.a.c, arg_0.a.c, var_0.x), vec3<bool>(arg_0.a.c, true, false)), arg_0.a.a != u_input.a), !(!vec3<bool>(arg_0.a.c, true, true))));
    return Struct_2(func_1(1i, arg_0.a, false, !select(select(vec4<bool>(true, arg_0.a.c, var_0.x, false), vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(var_0.x, true, true, arg_0.a.c)), select(vec4<bool>(true, false, arg_0.a.c, false), vec4<bool>(false, arg_0.a.c, true, arg_0.a.c), vec4<bool>(arg_0.a.c, false, true, false)), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, true, var_0.x), vec4<bool>(var_0.x, false, true, arg_0.a.c)))).a, select(vec2<i32>(arg_0.a.a << (~4294967295u % 32u), ~_wgslsmith_div_i32(2147483647i, -2147483647i)), vec2<i32>(arg_0.a.a, abs(39845i)), !select(vec2<bool>(var_0.x, false), vec2<bool>(true, var_0.x), vec2<bool>(false, var_0.x))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_3) -> Struct_1 {
    var var_0 = func_4(Struct_3(Struct_1(1i, arg_0.a.b, any(vec3<bool>(arg_0.a.c, arg_0.a.c, arg_3.a.c)) == arg_3.a.c))).a;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -915f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2134f + var_0.b.x))))));
    let var_1 = arg_3;
    global0 = array<vec3<i32>, 27>();
    let var_2 = func_4(func_1(-33898i, Struct_1(select(0i, min(13963i, 4037i), func_2(vec3<i32>(1i, arg_0.b.x, 0i), 4294967295u, vec3<bool>(false, arg_2.a.c, arg_1.a.c))), vec2<f32>(_wgslsmith_f_op_f32(ceil(168f)), 883f), true), arg_3.a.c, vec4<bool>(true, arg_0.a.c, all(vec2<bool>(true, true)), true && var_0.c))).a;
    return Struct_1(var_2.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.b.x)), 192f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1269f) * _wgslsmith_f_op_f32(ceil(arg_2.a.b.x)))) > -1536f);
}

fn func_6(arg_0: bool, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_3 {
    let var_0 = 1i;
    return Struct_3(func_4(Struct_3(arg_1.a)).a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(true, Struct_2(func_5(func_4(func_1(u_input.a, Struct_1(24781i, vec2<f32>(-205f, -1836f), true), false, vec4<bool>(true, false, false, false))), Struct_3(Struct_1(1i, vec2<f32>(637f, 1279f), true)), Struct_3(func_4(Struct_3(Struct_1(-25082i, vec2<f32>(177f, 507f), true))).a), Struct_3(Struct_1(0i, vec2<f32>(1071f, 776f), true))), vec2<i32>(firstLeadingBit(reverseBits(-15600i)), firstTrailingBit(countOneBits(u_input.a)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -864f) + _wgslsmith_f_op_f32(-1024f + _wgslsmith_div_f32(-1376f, -1239f))), 290f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1326f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-712f * 308f) + _wgslsmith_f_op_f32(-1249f + 1682f))), -682f));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(~(-1i), func_5(Struct_2(Struct_1(-1i, vec2<f32>(502f, 1298f), var_0.a.c), vec2<i32>(var_0.a.a, 0i)), var_0, Struct_3(var_0.a), Struct_3(Struct_1(u_input.a, var_0.a.b, true))), var_0.a.b.x <= 491f, select(vec4<bool>(var_0.a.c, false, false, true), vec4<bool>(false, true, var_0.a.c, false), vec4<bool>(true, false, true, false))).a.b.x + var_0.a.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b.x)) * var_0.a.b.x), func_4(func_1(_wgslsmith_sub_i32(1i, -4322i), var_0.a, var_0.a.c, vec4<bool>(var_0.a.c, var_0.a.c, var_0.a.c, false))).a.b.x, func_1(-1i, func_4(Struct_3(Struct_1(u_input.a, var_0.a.b, true))).a, var_0.a.c, !(!vec4<bool>(true, var_0.a.c, var_0.a.c, true))).a.b.x));
    let var_2 = func_4(Struct_3(var_0.a));
    var var_3 = Struct_3(Struct_1(firstTrailingBit(var_2.b.x), var_2.a.b, !(!func_2(global0[_wgslsmith_index_u32(43959u, 27u)], 3155u, vec3<bool>(false, false, true)))));
    let var_4 = _wgslsmith_mult_i32(1i, ~var_0.a.a) < 47494i;
    global0 = array<vec3<i32>, 27>();
    var var_5 = countOneBits(abs(max(~(~vec4<u32>(0u, 17917u, 30564u, 0u)), vec4<u32>(~4294967295u, abs(0u), firstLeadingBit(90817u), select(43600u, 54812u, false)))));
    global1 = var_1.x;
    var var_6 = var_2.a.c;
    let x = u_input.a;
    s_output = StorageBuffer(455f);
}

