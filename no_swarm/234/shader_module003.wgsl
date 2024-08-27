struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(Struct_2(Struct_1(vec2<u32>(0u, 67169u), vec2<bool>(false, false), 34245u, 1639u), false, -1451f, -373f), vec4<bool>(true, false, true, false), Struct_1(vec2<u32>(33956u, 4294967295u), vec2<bool>(true, true), 21336u, 79939u), Struct_2(Struct_1(vec2<u32>(1u, 0u), vec2<bool>(false, false), 4157u, 6410u), false, -591f, -1232f), -190f), Struct_3(Struct_2(Struct_1(vec2<u32>(1u, 1u), vec2<bool>(true, false), 1u, 71578u), true, 2302f, 410f), vec4<bool>(false, false, true, true), Struct_1(vec2<u32>(0u, 4294967295u), vec2<bool>(false, true), 4294967295u, 4294967295u), Struct_2(Struct_1(vec2<u32>(955u, 4294967295u), vec2<bool>(false, true), 1u, 4294967295u), false, 504f, 977f), 1186f), Struct_3(Struct_2(Struct_1(vec2<u32>(6325u, 71393u), vec2<bool>(false, true), 1u, 96257u), true, -2501f, 2257f), vec4<bool>(false, false, false, true), Struct_1(vec2<u32>(0u, 0u), vec2<bool>(false, true), 4294967295u, 4294967295u), Struct_2(Struct_1(vec2<u32>(0u, 85705u), vec2<bool>(false, false), 4294967295u, 62061u), false, 1000f, 1171f), -139f), Struct_3(Struct_2(Struct_1(vec2<u32>(50127u, 3152u), vec2<bool>(false, true), 69422u, 27281u), true, 681f, -1000f), vec4<bool>(false, false, false, true), Struct_1(vec2<u32>(1u, 4294967295u), vec2<bool>(true, false), 10759u, 1u), Struct_2(Struct_1(vec2<u32>(74745u, 29782u), vec2<bool>(false, true), 0u, 14409u), true, -993f, 1000f), 255f), Struct_3(Struct_2(Struct_1(vec2<u32>(0u, 0u), vec2<bool>(true, true), 242u, 0u), true, -768f, 382f), vec4<bool>(false, false, true, false), Struct_1(vec2<u32>(47431u, 1u), vec2<bool>(true, false), 262u, 1u), Struct_2(Struct_1(vec2<u32>(0u, 15843u), vec2<bool>(true, true), 4294967295u, 0u), true, -640f, -1000f), -1549f), Struct_3(Struct_2(Struct_1(vec2<u32>(1u, 38259u), vec2<bool>(false, false), 4294967295u, 13108u), false, 1286f, -1000f), vec4<bool>(false, true, true, false), Struct_1(vec2<u32>(20182u, 105337u), vec2<bool>(true, false), 1u, 84876u), Struct_2(Struct_1(vec2<u32>(0u, 0u), vec2<bool>(true, true), 24500u, 1u), true, 292f, 496f), -353f), Struct_3(Struct_2(Struct_1(vec2<u32>(4294967295u, 4197u), vec2<bool>(false, false), 37413u, 39992u), true, -1445f, -1340f), vec4<bool>(false, true, false, false), Struct_1(vec2<u32>(1u, 0u), vec2<bool>(false, true), 34127u, 1u), Struct_2(Struct_1(vec2<u32>(4294967295u, 44447u), vec2<bool>(false, false), 4294967295u, 20684u), true, 372f, -1004f), -268f), Struct_3(Struct_2(Struct_1(vec2<u32>(4294967295u, 28179u), vec2<bool>(false, true), 1u, 53167u), true, -790f, -1755f), vec4<bool>(true, true, false, true), Struct_1(vec2<u32>(0u, 0u), vec2<bool>(true, true), 1u, 4294967295u), Struct_2(Struct_1(vec2<u32>(4294967295u, 0u), vec2<bool>(true, true), 4294967295u, 1u), false, -1477f, -112f), 1108f), Struct_3(Struct_2(Struct_1(vec2<u32>(77745u, 4294967295u), vec2<bool>(false, true), 1u, 6524u), true, 316f, -1979f), vec4<bool>(false, false, false, false), Struct_1(vec2<u32>(5867u, 63376u), vec2<bool>(true, true), 18893u, 4294967295u), Struct_2(Struct_1(vec2<u32>(1u, 1u), vec2<bool>(false, true), 0u, 118463u), false, 156f, 565f), 509f));

var<private> global1: vec4<i32>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> i32 {
    let var_0 = Struct_1(u_input.a, vec2<bool>(true, true), u_input.b.x >> (u_input.a.x % 32u), _wgslsmith_add_u32(~(~u_input.a.x), select(select(~37120u, u_input.b.x, true), 24931u, false)));
    let var_1 = global1.x;
    global1 = -vec4<i32>(~(-1i), abs(_wgslsmith_mult_i32(_wgslsmith_div_i32(global1.x, -17072i), ~(-1i))), abs(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(10484i, -72021i, 2147483647i, -68480i)), vec4<i32>(global1.x, -1i, global1.x, 48025i))), global1.x);
    let var_2 = !vec4<bool>((false && var_0.b.x) != (all(var_0.b) == (global1.x != -1i)), var_0.b.x, var_0.b.x, var_0.b.x);
    var var_3 = _wgslsmith_f_op_f32(117f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-189f + -292f))))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1210f, _wgslsmith_f_op_f32(-1862f + -1000f)))))));
    return ~_wgslsmith_sub_i32(firstLeadingBit(firstLeadingBit(i32(-1i) * -1i)), _wgslsmith_sub_i32(~select(global1.x, global1.x, true), ~select(-52510i, global1.x, false)));
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> f32 {
    global1 = ~_wgslsmith_sub_vec4_i32(vec4<i32>(28159i, -62214i, ~_wgslsmith_add_i32(arg_1, 51650i), func_3()), select(vec4<i32>(arg_1, -arg_1, ~(-2147483647i), _wgslsmith_sub_i32(12966i, -3019i)), _wgslsmith_mod_vec4_i32(-vec4<i32>(global1.x, -2147483647i, arg_1, 35107i), vec4<i32>(2147483647i, -50739i, global1.x, arg_1)), !vec4<bool>(arg_0.b, false, true, arg_0.b)));
    var var_0 = arg_0.a;
    global1 = _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(firstLeadingBit(arg_1), global1.x ^ arg_1), -4625i | min(~20508i, _wgslsmith_clamp_i32(-1i, -13878i, global1.x)), 0i, 0i), (((vec4<i32>(0i, -38097i, global1.x, global1.x) | vec4<i32>(72463i, 56200i, 26143i, 5851i)) & ~vec4<i32>(arg_1, global1.x, arg_1, arg_1)) | _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, 5902i, arg_1, -24358i), vec4<i32>(23069i, 58170i, -27892i, 2147483647i)), ~vec4<i32>(arg_1, 3623i, arg_1, -1i))) & vec4<i32>(-(~arg_1), 1i, -(~2147483647i), max(arg_1, _wgslsmith_sub_i32(2147483647i, global1.x))));
    global1 = ~abs(min(~vec4<i32>(-42030i, arg_1, arg_1, arg_1) << (_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, 28975u, u_input.a.x), vec4<u32>(var_0.c, 21371u, var_0.a.x, 4294967295u)) % vec4<u32>(32u)), -vec4<i32>(-12783i, -2147483647i, 28227i, -26903i)));
    var var_1 = global0[_wgslsmith_index_u32(545u, 9u)];
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 808f)), _wgslsmith_f_op_f32(step(-142f, _wgslsmith_f_op_f32(-576f * _wgslsmith_f_op_f32(abs(739f))))), any(!vec2<bool>(true, arg_0.b))));
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: f32) -> vec4<bool> {
    let var_0 = _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(u_input.a, vec2<bool>(true, true), 4294967295u, 28486u), true, arg_2, arg_2), global1.x))) - _wgslsmith_f_op_f32(step(765f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) + arg_0.x)))));
    var var_1 = !(!any(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(true, true, false, true)))));
    var var_2 = select(select(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(select(true, true, true), true, true)), vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0)) + _wgslsmith_f_op_f32(-1136f * 436f)) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(802f - arg_2), _wgslsmith_div_f32(-1702f, 484f))), !(select(false, true, true) && (1u < arg_1)), true), !(!(!(global1.x != global1.x))));
    var_1 = !all(!(!select(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(true, var_2.x, var_2.x, false), var_2.x)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-arg_0.xz);
    return select(!(!vec4<bool>(any(vec3<bool>(var_2.x, var_2.x, var_2.x)), all(vec3<bool>(var_2.x, false, true)), true, false)), !vec4<bool>(!all(var_2.yx), !var_2.x, (var_3.x <= arg_0.x) | true, select(!var_2.x, any(vec2<bool>(var_2.x, var_2.x)), any(var_2.yx))), var_2.x);
}

fn func_1() -> f32 {
    let var_0 = vec4<bool>(true, false, false, true);
    let var_1 = abs(min(1i, -1i | -_wgslsmith_add_i32(1i, global1.x)));
    global0 = array<Struct_3, 9>();
    var var_2 = var_0;
    var_2 = !func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1028f, _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(u_input.a, vec2<bool>(false, true), u_input.a.x, 109357u), true, 599f, -2449f), 2424i)), _wgslsmith_div_f32(-955f, -281f))), ~15241u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -248f), _wgslsmith_div_f32(-1092f, _wgslsmith_f_op_f32(f32(-1f) * -452f)))));
    return -530f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(u_input.b.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(383f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-596f, _wgslsmith_f_op_f32(f32(-1f) * -1168f)))), _wgslsmith_f_op_f32(func_1())) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(2569f, 642f, 1232f, -416f), vec4<f32>(604f, 881f, -1493f, 1183f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-325f, -1384f, -614f, 639f), vec4<f32>(-983f, -407f, -481f, -457f), vec4<bool>(true, true, false, false))), vec4<f32>(444f, -1000f, -803f, 1596f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(980f, -771f, 1154f, -1000f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-674f, 137f, -639f, -578f) + vec4<f32>(476f, 1356f, 489f, -179f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(826f, 1074f, -1008f, -1480f))))))));
    var_0 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(global1.x | _wgslsmith_mult_i32(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, global1.x, global1.x, global1.x), vec4<i32>(-2954i, global1.x, -42463i, 11930i))), _wgslsmith_mod_i32(_wgslsmith_div_i32(global1.x, global1.x), global1.x)));
}

