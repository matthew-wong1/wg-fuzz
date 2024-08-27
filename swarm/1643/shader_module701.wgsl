struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<f32>(-1000f, -982f), -1946f), true, vec3<bool>(true, true, true), -23865i);

var<private> global1: array<u32, 29> = array<u32, 29>(52587u, 29988u, 0u, 1u, 58981u, 0u, 4294967295u, 4294967295u, 1u, 1u, 1u, 4294967295u, 1u, 25122u, 14164u, 63367u, 2039u, 4294967295u, 16777u, 33458u, 43027u, 0u, 1u, 8550u, 44054u, 1u, 60766u, 6642u, 18494u);

var<private> global2: vec2<i32>;

var<private> global3: Struct_2;

var<private> global4: array<i32, 21> = array<i32, 21>(-1i, 4672i, 12461i, 10780i, 32098i, i32(-2147483648), 19099i, -9998i, -1i, i32(-2147483648), i32(-2147483648), 11117i, 2147483647i, 8117i, -46510i, 13806i, 0i, 1i, 2147483647i, -290i, i32(-2147483648));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.x, -226f), global0.a.a)), arg_1.xz)))));
    let var_1 = Struct_1(vec2<f32>(175f, global3.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a.x)));
    let var_2 = global0.a;
    global4 = array<i32, 21>();
    let var_3 = global4[_wgslsmith_index_u32(0u, 21u)];
    return arg_3.x;
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> vec4<i32> {
    return ~(-(select(abs(vec4<i32>(global4[_wgslsmith_index_u32(4294967295u, 21u)], global3.d, 1i, global0.d)), _wgslsmith_div_vec4_i32(vec4<i32>(global0.d, global0.d, global0.d, global3.d), u_input.a), true) | abs(vec4<i32>(16389i, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 29u)], 21u)], -5658i, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12803u, 29u)], 29u)], 29u)], 29u)], 29u)], 21u)]))));
}

fn func_1(arg_0: vec4<bool>, arg_1: bool) -> Struct_2 {
    global3 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(global3.a.a + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.a.x, global0.a.a.x) * vec2<f32>(-1026f, global3.a.b)))), global0.a.b), all(global0.c), global3.c, 0i);
    let var_0 = vec3<i32>(select(_wgslsmith_mod_i32(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(18516u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11865u, 29u)], 29u)], global1[_wgslsmith_index_u32(26612u, 29u)]), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 29u)], 29u)], 4294967295u, global1[_wgslsmith_index_u32(1u, 29u)])), 21u)], global4[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(4294967295u, 29u)]), 21u)]), -22440i, false), abs(max(-5211i, -2147483647i << (func_2(24391i, vec4<f32>(-1166f, -985f, global0.a.a.x, global3.a.a.x), Struct_1(vec2<f32>(835f, -771f), global0.a.b), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 29u)], 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)])) % 32u))), ~1i);
    var var_1 = global0.c.x;
    var var_2 = false;
    let var_3 = var_0.x;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.a.a - global3.a.a))), 394f), -min(-global3.d, -1i | u_input.a.x) == var_3, !global0.c, _wgslsmith_dot_vec4_i32(reverseBits(func_3(-975f, Struct_2(Struct_1(global0.a.a, -1000f), arg_1, global0.c, 2147483647i))), _wgslsmith_clamp_vec4_i32(~(~u_input.a), vec4<i32>(abs(2147483647i), 1i, 1i, global0.d), u_input.a)));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec4<f32>, arg_3: Struct_2) -> bool {
    var var_0 = Struct_1(vec2<f32>(414f, arg_3.a.a.x), -517f);
    var var_1 = arg_0.a.a;
    var var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(select(~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 29u)], 29u)]), min(max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 29u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 29u)], 29u)]), global1[_wgslsmith_index_u32(~4294967295u, 29u)]), false), global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, abs(18884u ^ global1[_wgslsmith_index_u32(1u, 29u)])), 29u)]), abs(reverseBits(vec3<u32>(36400u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21955u ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41449u, 29u)], 29u)], 29u)], 29u)], ~91496u))));
    let var_3 = arg_3;
    var_0 = func_1(!vec4<bool>(!all(vec2<bool>(arg_1, false)), var_3.b, all(func_1(vec4<bool>(true, global0.c.x, var_3.c.x, false), arg_0.b).c.xx), arg_0.c.x), var_3.c.x && false).a;
    return any(select(!vec3<bool>(false, true, var_3.b), !(!vec3<bool>(true, arg_0.b, arg_1)), !(!arg_3.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(vec4<bool>(!any(vec3<bool>(global3.b, global0.c.x, true)), any(!vec4<bool>(false, global3.b, true, true)), !(false & global3.b), true), true), all(vec3<bool>(false, true, false)), vec4<f32>(407f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.b * -401f)), _wgslsmith_f_op_f32(step(1277f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1383f + 396f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-411f, _wgslsmith_f_op_f32(-753f + global3.a.b))))), func_1(select(vec4<bool>(true, true, false, global0.c.x), select(vec4<bool>(false, false, global0.b, true), !vec4<bool>(true, true, global3.b, global3.b), select(vec4<bool>(true, true, global3.c.x, global0.c.x), vec4<bool>(global0.c.x, true, false, true), false)), vec4<bool>(true, global3.b || true, global0.c.x, any(global3.c.yx))), true));
    global1 = array<u32, 29>();
    let var_1 = ~vec2<u32>(~_wgslsmith_mult_u32(~1973u, select(global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 29u)], 29u)], 29u)], global3.b)), 5162u);
    global1 = array<u32, 29>();
    global0 = func_1(select(select(vec4<bool>(!global3.c.x, global0.b, true, global0.b), select(!vec4<bool>(global0.c.x, global0.b, false, global0.b), !vec4<bool>(false, global3.b, global3.b, false), !vec4<bool>(true, false, true, global3.c.x)), global3.c.x), vec4<bool>(true, !global3.b && any(global0.c.xy), any(select(global0.c, global3.c, vec3<bool>(global0.b, global3.b, global3.c.x))), true), select(select(select(vec4<bool>(true, global0.c.x, global3.b, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, global3.b)), !vec4<bool>(true, false, false, global0.c.x), select(vec4<bool>(global0.c.x, false, global0.c.x, true), vec4<bool>(true, global0.b, true, global3.b), global0.b)), select(!vec4<bool>(global3.b, global0.b, false, false), select(vec4<bool>(false, global0.b, global0.b, false), vec4<bool>(true, true, false, false), global0.c.x), select(global3.c.x, true, global3.c.x)), vec4<bool>(true, -2147483647i > global2.x, false & global3.c.x, global0.c.x))), global0.c.x);
    global2 = max(-vec2<i32>(firstTrailingBit(40650i) ^ ~global0.d, _wgslsmith_div_i32(abs(global4[_wgslsmith_index_u32(0u, 21u)]), 10361i)), ~max(abs(_wgslsmith_sub_vec2_i32(u_input.a.xw, u_input.a.zy)), abs(max(vec2<i32>(global4[_wgslsmith_index_u32(var_1.x, 21u)], global4[_wgslsmith_index_u32(1u, 21u)]), vec2<i32>(global0.d, global4[_wgslsmith_index_u32(26630u, 21u)])))));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a.b, 613f, 815f) * vec3<f32>(_wgslsmith_f_op_f32(-global3.a.b), 324f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -313f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-528f, 1538f)), _wgslsmith_f_op_f32(f32(-1f) * -855f)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(max(vec4<u32>(1u, var_1.x | 4294967295u, var_1.x, ~6703u), vec4<u32>(540u, ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 4875u, 1u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 0u, 1u)), var_1.x << (4294967295u % 32u)))));
}

