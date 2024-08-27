struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30> = array<i32, 30>(-31350i, -1i, -57066i, 0i, 30472i, 1i, -11664i, 0i, -5005i, -13784i, -17817i, -8209i, -78043i, 0i, -55191i, 1i, 1i, -1i, -54595i, 28541i, -10515i, -16202i, 2147483647i, 1i, 2147483647i, 40689i, i32(-2147483648), i32(-2147483648), 61029i, -3338i);

var<private> global1: f32;

var<private> global2: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec3<f32>(-1000f, -815f, -2387f), vec2<f32>(-1496f, -367f), vec4<f32>(1079f, -797f, 1239f, 1000f), 42683u), Struct_1(vec3<f32>(-1288f, -2211f, -1393f), vec2<f32>(1000f, -825f), vec4<f32>(-124f, -800f, 779f, -536f), 41667u), Struct_1(vec3<f32>(669f, 1000f, -1379f), vec2<f32>(-1422f, 176f), vec4<f32>(-1330f, 692f, 940f, 2010f), 13525u), Struct_1(vec3<f32>(-563f, 324f, 248f), vec2<f32>(-609f, 383f), vec4<f32>(623f, 322f, 1057f, -452f), 4294967295u), Struct_1(vec3<f32>(-284f, 1858f, -1614f), vec2<f32>(2079f, 1016f), vec4<f32>(1142f, -280f, 135f, 324f), 1u), Struct_1(vec3<f32>(1236f, 219f, 1000f), vec2<f32>(302f, 1382f), vec4<f32>(-1000f, 990f, -492f, -277f), 12608u), Struct_1(vec3<f32>(-1698f, 772f, -168f), vec2<f32>(1412f, 1270f), vec4<f32>(295f, 1311f, -1322f, -760f), 0u), Struct_1(vec3<f32>(1084f, -738f, 703f), vec2<f32>(-365f, 1392f), vec4<f32>(1592f, 1000f, 1291f, -540f), 1u), Struct_1(vec3<f32>(655f, -1066f, -779f), vec2<f32>(-983f, 112f), vec4<f32>(-547f, -2098f, 806f, -679f), 4294967295u), Struct_1(vec3<f32>(114f, -851f, 227f), vec2<f32>(-491f, -1517f), vec4<f32>(633f, -1000f, 2960f, 1284f), 55425u), Struct_1(vec3<f32>(686f, -663f, 545f), vec2<f32>(-282f, -505f), vec4<f32>(472f, 1000f, 135f, -649f), 49608u), Struct_1(vec3<f32>(-1000f, -1192f, 951f), vec2<f32>(-1000f, 231f), vec4<f32>(-250f, 1451f, -638f, 222f), 27085u), Struct_1(vec3<f32>(733f, -2220f, -3088f), vec2<f32>(983f, 812f), vec4<f32>(-513f, 452f, 248f, 338f), 15864u), Struct_1(vec3<f32>(-701f, 916f, -298f), vec2<f32>(-931f, -570f), vec4<f32>(-280f, 1547f, -718f, -147f), 4294967295u), Struct_1(vec3<f32>(253f, 105f, 581f), vec2<f32>(1666f, -1034f), vec4<f32>(277f, 1361f, 1000f, -1670f), 1u), Struct_1(vec3<f32>(-366f, -904f, 1292f), vec2<f32>(948f, 278f), vec4<f32>(1086f, 2342f, 417f, -354f), 3399u), Struct_1(vec3<f32>(243f, 2023f, 573f), vec2<f32>(585f, 424f), vec4<f32>(169f, -1614f, -2166f, -951f), 0u));

var<private> global3: Struct_1 = Struct_1(vec3<f32>(-598f, 1452f, -286f), vec2<f32>(-173f, 976f), vec4<f32>(1633f, -317f, 2364f, -423f), 0u);

var<private> global4: array<i32, 28>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<u32> {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1099f) + _wgslsmith_f_op_f32(f32(-1f) * -952f)), -785f))));
    global3 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.c.x, global3.b.x, 288f), global3.a, false))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b.x, global3.b.x, -606f) + global3.a))), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global3.a.zy), _wgslsmith_f_op_vec2_f32(abs(global3.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global3.c.x, global3.b.x)))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global3.a.zz, vec2<f32>(-1253f, -500f), false)) + _wgslsmith_f_op_vec2_f32(global3.b * vec2<f32>(-2134f, -1465f))), global3.c.yz)), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global3.c - _wgslsmith_f_op_vec4_f32(global3.c + global3.c))))), _wgslsmith_mod_u32(global3.d, ~global3.d) >> (~(~(1u << (1u % 32u))) % 32u));
    global1 = _wgslsmith_div_f32(-2627f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-211f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3.c.x))) + _wgslsmith_f_op_f32(trunc(-162f)))));
    let var_0 = Struct_1(global3.c.wwy, _wgslsmith_div_vec2_f32(vec2<f32>(global3.a.x, _wgslsmith_f_op_f32(f32(-1f) * -999f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global3.a.xz), vec2<f32>(472f, global3.b.x), vec2<bool>(true, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global3.c, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.c.x, -435f, 919f, global3.c.x))))))), ~global3.d << (_wgslsmith_add_u32(_wgslsmith_add_u32(firstTrailingBit(global3.d), 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global3.d, 4858u, 22743u) << (vec4<u32>(global3.d, 37026u, global3.d, global3.d) % vec4<u32>(32u)), ~vec4<u32>(global3.d, global3.d, global3.d, 19291u))) % 32u));
    let var_1 = vec3<bool>(all(!vec3<bool>(select(true, false, false), true, global4[_wgslsmith_index_u32(1u, 28u)] <= 1i)), global3.d == 1u, true);
    return vec2<u32>(max(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d, 0u, 4294967295u), ~vec3<u32>(var_0.d, 4294967295u, 123870u)), firstLeadingBit(~(~global3.d))), max(2242u, 47379u));
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = global3.c.x;
    global0 = array<i32, 30>();
    global4 = array<i32, 28>();
    global4 = array<i32, 28>();
    let var_1 = select(~(_wgslsmith_clamp_vec2_u32(~vec2<u32>(global3.d, global3.d), vec2<u32>(1u, 0u), ~vec2<u32>(0u, global3.d)) | (~vec2<u32>(4294967295u, 4294967295u) >> (abs(vec2<u32>(arg_0, global3.d)) % vec2<u32>(32u)))), _wgslsmith_mult_vec2_u32(func_3(), min(~(~vec2<u32>(127149u, 13731u)), reverseBits(vec2<u32>(0u, arg_0)) | select(vec2<u32>(4385u, 0u), vec2<u32>(5101u, global3.d), vec2<bool>(false, true)))), vec2<bool>(false, true));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(336f, _wgslsmith_div_f32(_wgslsmith_div_f32(119f, global3.a.x), -958f), false)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.x)), global3.b.x))));
}

fn func_1(arg_0: vec2<bool>) -> bool {
    global1 = _wgslsmith_f_op_f32(func_2(select(global3.d, ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global3.d, 1u), vec2<u32>(0u, 1u)), min(vec2<u32>(global3.d, global3.d), vec2<u32>(global3.d, 27863u))), !arg_0.x)));
    var var_0 = _wgslsmith_f_op_f32(ceil(global3.b.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3.a.x))))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(908f, _wgslsmith_f_op_f32(global3.c.x * global3.b.x)) + -1063f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1227f + global3.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(global3.a.x)))), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(global3.b.x)), -752f);
    var var_1 = !(!vec3<bool>(func_1(select(vec2<bool>(false, false), vec2<bool>(true, false), true)), select(true, global4[_wgslsmith_index_u32(0u, 28u)] != 2147483647i, global3.d == global3.d), any(vec4<bool>(true, false, false, false)) | true));
    var var_2 = -global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3.d, global3.d), 28u)] ^ reverseBits(13300i);
    let var_3 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(reverseBits(1i), firstTrailingBit(max(global0[_wgslsmith_index_u32(4294967295u, 30u)], global4[_wgslsmith_index_u32(82015u, 28u)]))), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(_wgslsmith_mod_i32(2147483647i, global4[_wgslsmith_index_u32(4294967295u, 28u)]), global4[_wgslsmith_index_u32(16544u, 28u)], _wgslsmith_div_i32(u_input.a.x, u_input.a.x), firstLeadingBit(global0[_wgslsmith_index_u32(27580u, 30u)])))), ~(((u_input.b.x << (global3.d % 32u)) & u_input.b.x) & firstLeadingBit(global4[_wgslsmith_index_u32(61065u, 28u)])), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(global3.d, global3.d, global3.d, global3.d), vec4<u32>(11360u, 0u, global3.d, 1u), var_1.x), _wgslsmith_add_vec4_u32(vec4<u32>(global3.d, 7283u, ~global3.d, _wgslsmith_mult_u32(0u, 1u)), ~(~vec4<u32>(1u, 27536u, 4294967295u, global3.d)))), 30u)]);
    let var_4 = !var_1.x;
    global0 = array<i32, 30>();
    let var_5 = var_3.xy;
    var_1 = vec3<bool>(var_1.x, var_1.x, var_1.x);
    global2 = array<Struct_1, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, 1u, global3.b);
}

