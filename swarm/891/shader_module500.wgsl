struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31> = array<i32, 31>(-1i, -1i, -40072i, 9437i, -22611i, 2147483647i, i32(-2147483648), -24801i, i32(-2147483648), i32(-2147483648), i32(-2147483648), 2147483647i, 7646i, 2147483647i, 45497i, 61i, -1i, 28488i, 13647i, 1i, 1i, i32(-2147483648), i32(-2147483648), 2147483647i, 26508i, 2147483647i, -18750i, -43141i, 1864i, 1i, 13005i);

var<private> global1: array<f32, 15>;

var<private> global2: array<i32, 26>;

var<private> global3: vec3<u32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: u32, arg_1: Struct_4) -> vec2<u32> {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.a, _wgslsmith_sub_vec3_u32(~vec3<u32>(global3.x, u_input.a.x, global3.x), vec3<u32>(8703u, global3.x, 51662u)) & vec3<u32>(arg_0, _wgslsmith_div_u32(2493u, arg_1.c.x), u_input.a.x >> (u_input.c % 32u))), 1u), 15u)];
    global3 = vec3<u32>(arg_0, u_input.c, u_input.a.x);
    global3 = ~(~vec3<u32>(_wgslsmith_mod_u32(arg_1.a.x & global3.x, ~3653u), 0u, u_input.c));
    global2 = array<i32, 26>();
    global3 = vec3<u32>(1u, 1u, 1u);
    return _wgslsmith_add_vec2_u32(u_input.a.zy, _wgslsmith_div_vec2_u32(vec2<u32>(~4294967295u, countOneBits(15772u)), global3.yy) | vec2<u32>(~9065u, _wgslsmith_clamp_u32(~5207u, ~arg_1.c.x, u_input.a.x ^ 3280u)));
}

fn func_3() -> vec4<u32> {
    var var_0 = -vec4<i32>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global3.x, u_input.c, 60614u), vec4<u32>(4294967295u, global3.x, global3.x, global3.x)), _wgslsmith_sub_u32(global3.x, global3.x)), ~1u), 26u)], _wgslsmith_mod_i32(_wgslsmith_mod_i32(firstLeadingBit(2147483647i), 42629i), u_input.b), -2147483647i, -2147483647i);
    let var_1 = vec4<i32>(2147483647i, -u_input.b, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3.x, 68710u), 31u)], min(-2147483647i, u_input.b));
    var var_2 = Struct_4(vec4<u32>(~abs(0u) | global3.x, ~abs(0u ^ global3.x), ~48345u, 4294967295u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1[_wgslsmith_index_u32(31405u, 15u)], -914f, -1304f, -392f), vec4<f32>(global1[_wgslsmith_index_u32(u_input.c, 15u)], global1[_wgslsmith_index_u32(u_input.a.x, 15u)], global1[_wgslsmith_index_u32(u_input.a.x, 15u)], global1[_wgslsmith_index_u32(u_input.c, 15u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(928f, 295f, global1[_wgslsmith_index_u32(global3.x, 15u)], -1256f)))))), global3.yx);
    var var_3 = select(vec3<bool>(true, true, !select(true, true, false) != all(vec3<bool>(true, true, true))), !(!vec3<bool>(var_0.x >= var_1.x, true, true)), false);
    global2 = array<i32, 26>();
    return var_2.a;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_4) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1397f, -1000f, 603f, arg_0)), arg_2.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_2.b))) - vec4<f32>(_wgslsmith_f_op_f32(round(arg_2.b.x)), _wgslsmith_f_op_f32(abs(1089f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(38386u, 15u)]), 1f))));
    var var_1 = Struct_1(vec4<u32>(reverseBits(_wgslsmith_add_u32(u_input.c, arg_2.c.x)), 4294967295u, arg_2.c.x, ~2589u), !select(vec4<bool>(all(vec2<bool>(arg_1.b.x, arg_1.b.x)), arg_1.b.x, any(arg_1.b), 1u >= global3.x), arg_1.b, any(vec3<bool>(true, true, true))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-595f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-863f, _wgslsmith_f_op_f32(794f * 237f), true))))), var_0.x);
    var_1 = Struct_1(vec4<u32>(arg_1.a.x, ~1u, var_1.a.x, _wgslsmith_add_u32(abs(_wgslsmith_add_u32(var_1.a.x, 0u)), reverseBits(global3.x & 23793u))), vec4<bool>(false && !all(arg_1.b.xx), arg_1.b.x, true, true));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.b.xxy - vec3<f32>(arg_0, -1000f, 1000f)) - vec3<f32>(global1[_wgslsmith_index_u32(arg_1.a.x, 15u)], -1786f, -473f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -344f, 461f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_0.yxy)))) + var_0.yzw);
    return vec4<i32>(-2147483647i, _wgslsmith_sub_i32(_wgslsmith_div_i32(-1i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(6254i, global0[_wgslsmith_index_u32(var_1.a.x, 31u)], global2[_wgslsmith_index_u32(0u, 26u)]), reverseBits(-6306i))), global0[_wgslsmith_index_u32(1u, 31u)]), -_wgslsmith_div_i32(_wgslsmith_mult_i32(~10751i, -global0[_wgslsmith_index_u32(var_1.a.x, 31u)]), u_input.b), -_wgslsmith_mod_i32(~(global2[_wgslsmith_index_u32(4294967295u, 26u)] ^ global2[_wgslsmith_index_u32(global3.x, 26u)]), 0i));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = false;
    let var_1 = _wgslsmith_sub_vec4_i32(func_4(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 13800u, 0u), arg_0.a.xxz), ~10703u), 10075u), 15u)], arg_0, Struct_4(func_3() ^ _wgslsmith_sub_vec4_u32(arg_0.a, arg_0.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1054f, global1[_wgslsmith_index_u32(65855u, 15u)], global1[_wgslsmith_index_u32(global3.x, 15u)], 595f) + vec4<f32>(global1[_wgslsmith_index_u32(arg_0.a.x, 15u)], global1[_wgslsmith_index_u32(arg_0.a.x, 15u)], 430f, global1[_wgslsmith_index_u32(arg_0.a.x, 15u)]))), vec2<u32>(func_1(4294967295u, Struct_4(arg_0.a, vec4<f32>(global1[_wgslsmith_index_u32(68475u, 15u)], global1[_wgslsmith_index_u32(8263u, 15u)], 904f, global1[_wgslsmith_index_u32(global3.x, 15u)]), vec2<u32>(global3.x, arg_0.a.x))).x, ~u_input.a.x))), ~(-(vec4<i32>(-1i) * -vec4<i32>(5540i, 34807i, 24968i, global0[_wgslsmith_index_u32(34342u, 31u)]))));
    let var_2 = arg_0.b.x;
    var var_3 = firstTrailingBit(0u);
    global3 = ~(~arg_0.a.zyw) >> (u_input.a % vec3<u32>(32u));
    return Struct_1(reverseBits(min(~arg_0.a, select(arg_0.a, arg_0.a, true) << (~arg_0.a % vec4<u32>(32u)))), select(vec4<bool>(all(vec2<bool>(var_2, arg_0.b.x)), var_2, true, true), !vec4<bool>(true, global1[_wgslsmith_index_u32(arg_0.a.x, 15u)] != global1[_wgslsmith_index_u32(4294967295u, 15u)], all(vec2<bool>(false, arg_0.b.x)), false), true));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec4<bool>) -> i32 {
    let var_0 = true;
    var var_1 = Struct_3(_wgslsmith_mod_vec3_i32(-(vec3<i32>(u_input.b, -2147483647i, global0[_wgslsmith_index_u32(arg_2.a.x, 31u)]) ^ (vec3<i32>(global2[_wgslsmith_index_u32(arg_2.c.x, 26u)], 2147483647i, 2147483647i) & vec3<i32>(u_input.b, u_input.b, -2147483647i))), vec3<i32>(i32(-1i) * -2147483647i, 11167i, u_input.b)), ~4223u);
    global0 = array<i32, 31>();
    return 0i;
}

fn func_6(arg_0: Struct_3, arg_1: vec3<i32>) -> StorageBuffer {
    var var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(~47182u, ~_wgslsmith_clamp_u32(0u, 0u, 24852u), _wgslsmith_add_u32(~u_input.a.x, min(4294967295u, 8005u))), u_input.a) ^ ~vec3<u32>(~10850u, firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.x, 0u), vec2<u32>(1u, 0u))), 0u);
    var var_1 = _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(0u, 15u)]));
    let var_2 = ~0i;
    let var_3 = -31869i;
    global1 = array<f32, 15>();
    return StorageBuffer(~vec3<i32>(firstLeadingBit(_wgslsmith_sub_i32(26001i, var_2)), firstTrailingBit(firstLeadingBit(global0[_wgslsmith_index_u32(37024u, 31u)])), (arg_1.x << (39417u % 32u)) | func_5(false, Struct_1(vec4<u32>(4294967295u, 4294967295u, 40643u, global3.x), vec4<bool>(true, false, true, false)), Struct_4(vec4<u32>(4294967295u, arg_0.b, 1u, 1u), vec4<f32>(-505f, 1168f, -1000f, 958f), vec2<u32>(1u, 18117u)), vec4<bool>(false, false, true, true))), firstLeadingBit(global3.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(Struct_3(-(~vec3<i32>(global2[_wgslsmith_index_u32(0u, 26u)], -1i, 1i)) & firstTrailingBit(vec3<i32>(0i, 0i, 2147483647i) & vec3<i32>(global2[_wgslsmith_index_u32(1u, 26u)], 4551i, global0[_wgslsmith_index_u32(83857u, 31u)])), _wgslsmith_dot_vec2_u32(abs(func_1(14611u, Struct_4(vec4<u32>(6495u, u_input.c, 3738u, u_input.a.x), vec4<f32>(-247f, global1[_wgslsmith_index_u32(25014u, 15u)], global1[_wgslsmith_index_u32(global3.x, 15u)], global1[_wgslsmith_index_u32(global3.x, 15u)]), vec2<u32>(global3.x, global3.x)))), u_input.a.yz)), vec3<i32>(-2147483647i, 2222i, func_5(2147483647i <= _wgslsmith_div_i32(global2[_wgslsmith_index_u32(29462u, 26u)], 1i), func_2(Struct_1(vec4<u32>(4294967295u, u_input.a.x, global3.x, global3.x), vec4<bool>(true, false, false, false))), Struct_4(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 42109u, 0u, 65461u), vec4<u32>(0u, u_input.a.x, global3.x, global3.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1686f, global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(4294967295u, 15u)], -703f) + vec4<f32>(global1[_wgslsmith_index_u32(u_input.c, 15u)], global1[_wgslsmith_index_u32(u_input.c, 15u)], -776f, 401f)), func_2(Struct_1(vec4<u32>(37447u, 22434u, u_input.a.x, 4294967295u), vec4<bool>(false, true, false, true))).a.ww), !func_2(Struct_1(vec4<u32>(global3.x, u_input.a.x, global3.x, 38121u), vec4<bool>(true, false, true, false))).b)));
}

