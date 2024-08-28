struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: f32,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4>;

var<private> global1: u32 = 1u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: i32) -> vec3<i32> {
    var var_0 = !select(vec2<bool>(true, true), vec2<bool>(true, true), false);
    let var_1 = var_0.x;
    let var_2 = ~u_input.b.yy;
    var_0 = vec2<bool>(!(!var_0.x | true), false);
    let var_3 = true;
    return vec3<i32>(-1i, global0[_wgslsmith_index_u32(var_2.x, 4u)] << (var_2.x % 32u), firstLeadingBit(global0[_wgslsmith_index_u32(~var_2.x, 4u)] ^ arg_0));
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-303f, arg_0.b.x))), -586f)) - -924f);
    let var_1 = Struct_1(arg_0.a & func_3(global0[_wgslsmith_index_u32(~u_input.b.x, 4u)]), _wgslsmith_f_op_vec4_f32(exp2(arg_0.b)), -1469f, arg_0.a.yz, vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_0.e.x)), arg_0.e.x));
    var var_2 = -vec2<i32>(53886i, 0i);
    global0 = array<i32, 4>();
    let var_3 = Struct_1(vec3<i32>((i32(-1i) * -2147483647i) >> (_wgslsmith_sub_u32(~u_input.b.x, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.b.x, u_input.a.x, 14868u, u_input.b.x))) % 32u), global0[_wgslsmith_index_u32(1u, 4u)], -1i), arg_0.b, _wgslsmith_f_op_f32(ceil(-1368f)), vec2<i32>(241i << (~u_input.b.x % 32u), global0[_wgslsmith_index_u32(max(1u, reverseBits(~u_input.b.x)), 4u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.e.x, arg_0.b.x)));
    return -1056f;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    global1 = ~4294967295u;
    var var_0 = arg_2;
    let var_1 = _wgslsmith_mult_u32(1u, u_input.b.x);
    return arg_2;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(sign(771f));
    var var_1 = func_4(Struct_1(vec3<i32>(-1i) * -abs(vec3<i32>(global0[_wgslsmith_index_u32(41963u, 4u)], global0[_wgslsmith_index_u32(25610u, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, -1209f, var_0)))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_0))))), vec2<i32>(-global0[_wgslsmith_index_u32(28753u, 4u)] ^ max(-4336i, global0[_wgslsmith_index_u32(u_input.b.x, 4u)]), global0[_wgslsmith_index_u32(46965u, 4u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1628f - var_0), _wgslsmith_f_op_f32(func_2(Struct_1(vec3<i32>(45070i, global0[_wgslsmith_index_u32(u_input.a.x, 4u)], 13972i), vec4<f32>(756f, 213f, 1145f, var_0), var_0, vec2<i32>(global0[_wgslsmith_index_u32(119662u, 4u)], global0[_wgslsmith_index_u32(u_input.b.x, 4u)]), vec2<f32>(var_0, -1000f))))) + vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0)), var_0))), !arg_0, Struct_1(abs(_wgslsmith_clamp_vec3_i32(~vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], -2147483647i, global0[_wgslsmith_index_u32(3997u, 4u)]), -vec3<i32>(1i, global0[_wgslsmith_index_u32(u_input.b.x, 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), select(vec3<i32>(27464i, -2147483647i, global0[_wgslsmith_index_u32(18375u, 4u)]), vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], global0[_wgslsmith_index_u32(u_input.b.x, 4u)], 34896i), vec3<bool>(arg_0.x, true, true)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(u_input.b.x, 4u)], global0[_wgslsmith_index_u32(1u, 4u)]), vec4<f32>(-681f, 1068f, -744f, -146f), 1000f, vec2<i32>(-34268i, global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), vec2<f32>(1239f, var_0)))), _wgslsmith_f_op_f32(-var_0), 566f, 1f))), _wgslsmith_f_op_f32(f32(-1f) * -1388f), vec2<i32>(-2147483647i, -reverseBits(global0[_wgslsmith_index_u32(1u, 4u)])), vec2<f32>(-995f, _wgslsmith_f_op_f32(-var_0))));
    let var_2 = -23012i;
    let var_3 = var_0;
    global0 = array<i32, 4>();
    return true;
}

fn func_5(arg_0: vec2<bool>, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = !arg_0.x;
    let var_1 = !select(vec4<bool>(any(vec3<bool>(arg_0.x, arg_0.x, false)), _wgslsmith_f_op_f32(floor(-324f)) == _wgslsmith_f_op_f32(-467f + 1106f), !func_1(vec2<bool>(true, true), arg_1.wyx), 1977i != _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(19673u, 4u)], -1i)), select(vec4<bool>(true, false, var_0, var_0), vec4<bool>(var_0 && false, -9411i != global0[_wgslsmith_index_u32(u_input.b.x, 4u)], any(arg_1.yzz), true), arg_1), all(select(arg_1, select(arg_1, vec4<bool>(false, true, arg_0.x, false), true), true)));
    let var_2 = func_4(Struct_1(~(-func_4(Struct_1(vec3<i32>(-53930i, 0i, global0[_wgslsmith_index_u32(4294967295u, 4u)]), vec4<f32>(535f, -508f, -232f, -2175f), -1146f, vec2<i32>(-5732i, global0[_wgslsmith_index_u32(u_input.b.x, 4u)]), vec2<f32>(-1396f, 460f)), vec2<bool>(arg_1.x, false), Struct_1(vec3<i32>(1i, -821i, global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), vec4<f32>(-1681f, -299f, 721f, -1000f), -1000f, vec2<i32>(-2147483647i, 13856i), vec2<f32>(-1366f, -1503f))).a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1603f, 1000f, -293f, 506f) * vec4<f32>(-1000f, -1867f, 992f, 379f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(139f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * 1000f), 499f, true))), vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(u_input.b.x, 4u)])), func_3(~2147483647i).x), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1133f, -931f) - vec2<f32>(1f, 1f))))), arg_1.wx, Struct_1(reverseBits(vec3<i32>(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], global0[_wgslsmith_index_u32(40353u, 4u)]), func_3(global0[_wgslsmith_index_u32(0u, 4u)]).x, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], global0[_wgslsmith_index_u32(63010u, 4u)]))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(1171f, 1000f, 168f, 304f), vec4<f32>(997f, 445f, 1347f, -725f)), vec4<f32>(-266f, 366f, 754f, 817f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-665f, -717f, 204f, -1745f)))))), _wgslsmith_f_op_f32(func_2(Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], 21726i, 1i), vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)], 1i)), vec4<f32>(-955f, 339f, -1509f, -207f), -1000f, vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], -48i), func_4(Struct_1(vec3<i32>(-1i, global0[_wgslsmith_index_u32(1u, 4u)], -33351i), vec4<f32>(-193f, -1109f, -226f, 2113f), -1000f, vec2<i32>(2147483647i, 48983i), vec2<f32>(-445f, 335f)), vec2<bool>(false, false), Struct_1(vec3<i32>(-10198i, -2147483647i, 74924i), vec4<f32>(-771f, 1241f, -1000f, -1000f), -1546f, vec2<i32>(global0[_wgslsmith_index_u32(0u, 4u)], 29743i), vec2<f32>(1492f, -860f))).b.xy))), vec2<i32>(2147483647i, 1i << ((u_input.b.x ^ 0u) % 32u)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(438f, -2049f)) - _wgslsmith_f_op_f32(min(839f, -692f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1503f - 491f) - -374f))));
    let var_3 = vec3<bool>(true, true, any(vec4<bool>(var_0, arg_0.x, all(var_1.xy), false)));
    let var_4 = var_3.x;
    return func_4(func_4(func_4(func_4(func_4(var_2, vec2<bool>(false, var_4), var_2), !vec2<bool>(var_1.x, false), Struct_1(vec3<i32>(1i, var_2.d.x, -20853i), vec4<f32>(var_2.b.x, var_2.e.x, var_2.e.x, -1629f), var_2.c, vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], var_2.a.x), var_2.b.ww)), !vec2<bool>(var_4, true), var_2), !(!arg_1.xw), Struct_1(var_2.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.e.x, var_2.e.x, -163f, -350f) + vec4<f32>(var_2.e.x, var_2.e.x, var_2.e.x, var_2.e.x))), _wgslsmith_f_op_f32(trunc(520f)), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x >> (u_input.a.x % 32u), 4u)], 1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_2.e, vec2<f32>(1295f, 488f))))), arg_1.yw, func_4(Struct_1(-var_2.a, var_2.b, 137f, vec2<i32>(var_2.d.x, countOneBits(global0[_wgslsmith_index_u32(44948u, 4u)])), var_2.b.wz), !select(!arg_0, var_1.yy, var_1.x), func_4(Struct_1(var_2.a | vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], 40255i, var_2.d.x), var_2.b, 1000f, var_2.d ^ var_2.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.e.x, -1081f) * var_2.e)), !select(arg_1.zx, var_3.xz, false), var_2)));
}

fn func_6(arg_0: Struct_1, arg_1: u32) -> vec2<i32> {
    let var_0 = ~(-2147483647i);
    global1 = 30109u;
    let var_1 = abs(u_input.a);
    let var_2 = arg_0;
    global1 = u_input.a.x;
    return abs(-select(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, 1i), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0, -1i), vec2<i32>(arg_0.d.x, global0[_wgslsmith_index_u32(23397u, 4u)]))), abs(min(vec2<i32>(global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(54393u, 4u)]), var_2.d)), u_input.b.x < (u_input.b.x | 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(func_6(func_5(vec2<bool>(func_1(vec2<bool>(false, false), vec3<bool>(true, false, true)), true), vec4<bool>(true, true, true, true)), u_input.a.x));
}

