struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 6>;

var<private> global2: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(18900u, 14642i), Struct_1(0u, 19304i), Struct_1(4294967295u, 26748i), Struct_1(31090u, 0i), Struct_1(4187u, 0i), Struct_1(4294967295u, -1i), Struct_1(64467u, 1i), Struct_1(60332u, 0i), Struct_1(0u, 7686i), Struct_1(27707u, 1i), Struct_1(9769u, 1i), Struct_1(118342u, 0i), Struct_1(56390u, i32(-2147483648)), Struct_1(4413u, 1i), Struct_1(0u, -21138i), Struct_1(1u, -6436i), Struct_1(51814u, -7234i), Struct_1(1u, -67678i), Struct_1(0u, 47625i), Struct_1(17771u, 0i), Struct_1(1u, 2147483647i), Struct_1(71552u, -23562i), Struct_1(1u, 33869i), Struct_1(4294967295u, i32(-2147483648)), Struct_1(1u, 1i), Struct_1(77934u, 25423i), Struct_1(21522u, 52607i), Struct_1(1u, 0i));

var<private> global3: Struct_2 = Struct_2(-638f, false, -1000f, 1094u);

var<private> global4: array<u32, 18>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: vec3<u32>) -> vec3<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(ceil(-2049f)), any(!(!(!vec4<bool>(global3.b, true, false, arg_1.x)))), 124f, 1u);
    let var_1 = var_0;
    var var_2 = -vec4<i32>(~_wgslsmith_sub_i32(~2147483647i, -2147483647i), reverseBits(firstLeadingBit(2147483647i)), ~countOneBits(1i), -1i);
    var var_3 = vec4<i32>(~1i, -(~_wgslsmith_add_i32(~(-62902i), var_2.x >> (u_input.b % 32u))), 2147483647i, _wgslsmith_mod_i32(~var_2.x, _wgslsmith_add_i32(1i, (1i << (global3.d % 32u)) & (var_2.x | 2147483647i))));
    let var_4 = Struct_2(arg_2.x, all(arg_1) || select(true, false, any(vec2<bool>(false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * 538f), 22102u);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2), arg_2));
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_1) -> f32 {
    var var_0 = vec4<i32>((firstLeadingBit(arg_3.b) >> (select(global3.d << (global3.d % 32u), 37858u, global3.b) % 32u)) ^ (i32(-1i) * -(~arg_3.b)), firstLeadingBit(_wgslsmith_div_i32(~(-26690i), 55360i)), abs(arg_2.x), _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(arg_3.b, 57823i & arg_3.b), -11473i), arg_3.b));
    var var_1 = !global3.b;
    var var_2 = (u_input.a ^ u_input.a) >> (_wgslsmith_mod_vec2_u32(max(vec2<u32>(1u, _wgslsmith_mod_u32(1u, global3.d)), min(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, 72553u))), ~(~firstTrailingBit(vec2<u32>(0u, 1u)))) % vec2<u32>(32u));
    var_1 = !global3.b;
    global0 = -391f;
    return arg_0.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_3) -> f32 {
    let var_0 = arg_1;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(func_3(var_0, vec3<bool>(true, var_0.b, true), vec3<f32>(arg_1.a, -950f, 1512f), vec3<u32>(1u, var_0.d, var_0.d))), _wgslsmith_f_op_f32(ceil(981f)), vec3<i32>(arg_2.a, arg_2.a, -38719i), Struct_1(u_input.a.x, -1i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -1000f) * _wgslsmith_f_op_f32(ceil(var_0.c)))))), true, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.d, _wgslsmith_add_u32(~var_0.d, 4294967295u)) | 1u, 6u)], firstTrailingBit(~firstLeadingBit(4294967295u)) | ~(~arg_1.d));
    let var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_f32(-global3.c);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.d, 6u)]), _wgslsmith_div_f32(1086f, -305f)), var_0.a, arg_1.b))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~min(u_input.b, arg_1.d), 6u)] + _wgslsmith_div_f32(-821f, _wgslsmith_f_op_f32(-var_0.c))))));
    return _wgslsmith_f_op_vec3_f32(func_3(var_2, vec3<bool>(arg_1.b, arg_1.b, select(!(false & arg_1.b), (arg_2.a & 11708i) == 16153i, false)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(196f, 575f, -560f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-511f, 1820f, -495f) + vec3<f32>(var_2.a, 734f, 844f))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -909f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_0.a, 537f)), _wgslsmith_f_op_f32(select(var_2.a, -995f, arg_0.x)))), var_3))), arg_2.b.wyx)).x;
}

fn func_5(arg_0: bool, arg_1: vec3<u32>, arg_2: f32, arg_3: vec3<i32>) -> vec4<bool> {
    return select(!vec4<bool>(_wgslsmith_mod_u32(61033u, arg_1.x) <= ~66935u, global3.b, arg_0, global3.b), !(!(!vec4<bool>(false, false, false, global3.b))), -(i32(-1i) * -2147483647i) == _wgslsmith_mod_i32(_wgslsmith_add_i32(-2147483647i, arg_3.x) << (1u % 32u), abs(arg_3.x)));
}

fn func_1() -> Struct_1 {
    var var_0 = select(!select(vec4<bool>(global3.b, !global3.b, global3.b && false, global3.b), func_5(true, vec3<u32>(u_input.b, 1u, 4294967295u) | vec3<u32>(global4[_wgslsmith_index_u32(9084u, 18u)], global3.d, global4[_wgslsmith_index_u32(1u, 18u)]), _wgslsmith_f_op_f32(func_2(vec3<bool>(false, global3.b, false), Struct_2(891f, global3.b, -1200f, global4[_wgslsmith_index_u32(u_input.b, 18u)]), Struct_3(13662i, vec4<u32>(global3.d, u_input.a.x, global4[_wgslsmith_index_u32(4294967295u, 18u)], 11454u), vec3<bool>(false, true, global3.b)))), countOneBits(vec3<i32>(-1141i, 1i, -40917i))), vec4<bool>(global3.b && false, any(vec3<bool>(true, false, global3.b)), 33034u < global4[_wgslsmith_index_u32(37056u, 18u)], all(vec3<bool>(global3.b, false, false)))), !(!vec4<bool>(any(vec2<bool>(global3.b, true)), !global3.b, all(vec4<bool>(global3.b, false, global3.b, global3.b)), !global3.b)), all(!select(!vec4<bool>(global3.b, global3.b, true, false), !vec4<bool>(global3.b, global3.b, false, global3.b), vec4<bool>(global3.b, global3.b, global3.b, true))));
    var var_1 = Struct_2(-1974f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(firstTrailingBit(global3.d), 6u)]), global3.a)), ~u_input.a.x >> (5449u % 32u));
    let var_2 = Struct_3(0i, vec4<u32>(var_1.d, ~(~countOneBits(var_1.d)), ~u_input.a.x, _wgslsmith_add_u32(~abs(u_input.b), firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(21162u, global4[_wgslsmith_index_u32(u_input.a.x, 18u)]))))), !select(!select(vec3<bool>(global3.b, false, global3.b), var_0.zyy, var_1.b), var_0.zzx, global3.b));
    let var_3 = _wgslsmith_dot_vec4_i32(~(-(_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.a, var_2.a, 30793i, var_2.a), vec4<i32>(var_2.a, var_2.a, var_2.a, 0i)) | _wgslsmith_mult_vec4_i32(vec4<i32>(var_2.a, 2147483647i, 13972i, var_2.a), vec4<i32>(var_2.a, -1i, -2147483647i, var_2.a)))), ~_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 2147483647i, var_2.a, -14355i), vec4<i32>(var_2.a, -8832i, var_2.a, 2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_2.a, 1418i, 18407i, var_2.a), vec4<i32>(var_2.a, var_2.a, var_2.a, var_2.a)), select(vec4<i32>(var_2.a, 1i, -6302i, var_2.a), vec4<i32>(2909i, var_2.a, var_2.a, 0i), vec4<bool>(true, false, false, false))), firstTrailingBit(vec4<i32>(var_2.a, -12221i, -2147483647i, var_2.a))));
    global2 = array<Struct_1, 28>();
    return Struct_1(global3.d, firstLeadingBit(var_3));
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    global0 = 949f;
    global1 = array<f32, 6>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a, -152f, 993f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, global1[_wgslsmith_index_u32(arg_2.d, 6u)], arg_3.a) - vec3<f32>(arg_3.c, global3.a, arg_2.c))) * vec3<f32>(_wgslsmith_f_op_f32(arg_2.c + -1629f), -1177f, -241f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], false, 835f, arg_3.d), vec3<bool>(false, false, global3.b), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1[_wgslsmith_index_u32(19173u, 6u)], -564f, 532f))), ~vec3<u32>(39876u, 1u, 4294967295u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-633f, global1[_wgslsmith_index_u32(4294967295u, 6u)], 298f) - vec3<f32>(166f, -1000f, 928f)))))));
    let var_1 = arg_3.a;
    let var_2 = true;
    return arg_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 17544i;
    let var_1 = 5425u;
    global3 = Struct_2(-496f, global3.b, _wgslsmith_f_op_f32(func_6(~vec4<i32>(~3100i, 2147483647i, ~(-2147483647i), 1i), func_1(), Struct_2(-1322f, true, _wgslsmith_f_op_f32(687f + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1, 6u)])), ~global3.d), Struct_2(1119f, any(vec2<bool>(global3.b, global3.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(560u, 6u)])) + -818f), firstTrailingBit(1u)))), reverseBits(~(~global3.d)));
    let var_2 = Struct_1(1u, _wgslsmith_div_i32(select(abs(-1i), min(12033i, 51771i), all(!vec4<bool>(global3.b, true, global3.b, false))), _wgslsmith_div_i32(-13042i, 1i >> (countOneBits(u_input.a.x) % 32u))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(82565u, 6u)] + -1274f))));
    global0 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(24079u), 6u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a, 0u), vec2<u32>(1u, 4501u))), ~(~u_input.b >> (var_1 % 32u))));
}

