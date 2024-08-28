struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-1543f, false, Struct_1(vec4<i32>(46697i, -45684i, -32568i, 62992i), 1i, false, 1u), true, -1i);

var<private> global1: vec3<i32>;

var<private> global2: array<i32, 26>;

var<private> global3: array<vec3<f32>, 28> = array<vec3<f32>, 28>(vec3<f32>(743f, 535f, -1297f), vec3<f32>(-857f, -1000f, -505f), vec3<f32>(990f, -1410f, -429f), vec3<f32>(1752f, -176f, -753f), vec3<f32>(610f, 631f, 540f), vec3<f32>(-491f, 958f, -988f), vec3<f32>(496f, -614f, 715f), vec3<f32>(1000f, -1366f, -392f), vec3<f32>(1663f, -741f, 359f), vec3<f32>(207f, 788f, 1864f), vec3<f32>(-125f, 827f, 1328f), vec3<f32>(-419f, 695f, 1221f), vec3<f32>(712f, 310f, 420f), vec3<f32>(-587f, -167f, -311f), vec3<f32>(292f, 147f, 862f), vec3<f32>(1682f, 1325f, -1331f), vec3<f32>(1000f, -265f, -347f), vec3<f32>(-2699f, -120f, -662f), vec3<f32>(-349f, 1122f, 786f), vec3<f32>(-810f, -706f, 1738f), vec3<f32>(-742f, -623f, 231f), vec3<f32>(269f, -1215f, -1620f), vec3<f32>(308f, 536f, -372f), vec3<f32>(1000f, -1335f, 1000f), vec3<f32>(-1509f, -470f, -1561f), vec3<f32>(681f, 3134f, 718f), vec3<f32>(-255f, -1516f, 697f), vec3<f32>(-886f, -190f, 929f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-726f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-147f + global0.a) - global0.a)))));
    global2 = array<i32, 26>();
    let var_1 = global0.a;
    var var_2 = vec2<bool>(false, false);
    let var_3 = countOneBits(_wgslsmith_sub_i32(firstLeadingBit(15803i), -_wgslsmith_mod_i32(10811i, -12689i)));
    return global0.c;
}

fn func_3() -> i32 {
    global1 = -global0.c.a.zww;
    var var_0 = global1.x & ~(func_1(global0.c.a, ~u_input.a).a.x ^ _wgslsmith_mod_i32(14678i, 2344i));
    var_0 = u_input.b << (global0.c.d % 32u);
    global1 = vec3<i32>(u_input.c, _wgslsmith_div_i32(u_input.d.x, -1i), 10923i);
    var_0 = ~(-_wgslsmith_clamp_i32(global1.x, ~firstLeadingBit(0i), ~(-1i)));
    return _wgslsmith_add_i32(~(-reverseBits(u_input.d.x)) << (global0.c.d % 32u), u_input.d.x);
}

fn func_2() -> bool {
    var var_0 = vec4<i32>(func_3(), -(~_wgslsmith_sub_i32(-global2[_wgslsmith_index_u32(49922u, 26u)], firstTrailingBit(-76803i))), u_input.b, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(85645u, 12659u), ~global0.c.d), 26u)]);
    var_0 = _wgslsmith_div_vec4_i32(min(vec4<i32>(i32(-1i) * -17903i, global2[_wgslsmith_index_u32(countOneBits(u_input.a.x) | (u_input.a.x & u_input.a.x), 26u)], func_1(vec4<i32>(2147483647i, global0.c.a.x, -17066i, var_0.x), abs(vec4<u32>(global0.c.d, 44878u, u_input.a.x, 22511u))).b, global0.c.a.x ^ 4136i), vec4<i32>(-2147483647i, 1i, 19332i, select(-global1.x, var_0.x, true))), abs(-(countOneBits(vec4<i32>(1i, -10088i, 38569i, global0.e)) ^ (vec4<i32>(global0.e, -1i, var_0.x, global0.e) | vec4<i32>(18528i, global1.x, var_0.x, global2[_wgslsmith_index_u32(global0.c.d, 26u)])))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(global0.a - global0.a))))), !(!global0.c.c), global0.c, global0.d, 20616i);
    var_0 = select(vec4<i32>(~_wgslsmith_dot_vec2_i32(var_1.c.a.xw, vec2<i32>(-1i, 0i)) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 42149u, global0.c.d, 1u), u_input.a) % 32u), u_input.d.x, -abs(min(-62699i, global2[_wgslsmith_index_u32(u_input.a.x, 26u)])), global1.x), reverseBits(vec4<i32>(1i, ~global2[_wgslsmith_index_u32(var_1.c.d, 26u)], ~var_1.e, min(2147483647i, -1i))) & var_1.c.a, !(!all(vec4<bool>(var_1.b, var_1.d, global0.c.c, global0.c.c))));
    var var_2 = global0.c.d;
    return all(vec2<bool>(true, select(global0.b, any(vec2<bool>(true, true)), var_1.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a;
    var var_1 = func_1(global0.c.a, ~u_input.a);
    let var_2 = select(select(!select(!vec4<bool>(var_1.c, global0.c.c, true, global0.c.c), !vec4<bool>(true, true, true, var_1.c), vec4<bool>(true, global0.b, global0.c.c, var_1.c)), !vec4<bool>(var_1.c, -3976i > var_1.b, global0.b, var_1.c), u_input.c != _wgslsmith_sub_i32(_wgslsmith_div_i32(var_1.b, u_input.b), var_1.b)), vec4<bool>(any(!select(vec2<bool>(global0.c.c, true), vec2<bool>(false, true), vec2<bool>(var_1.c, true))), false, false, !global0.d), select(select(vec4<bool>(true, global0.a < global0.a, true, global2[_wgslsmith_index_u32(71031u, 26u)] >= -1i), !vec4<bool>(false, var_1.c, var_1.c, true), vec4<bool>(global0.c.d >= 0u, true, false, var_1.c)), !vec4<bool>(true, global0.d, func_2(), false), !select(vec4<bool>(true, var_1.c, true, var_1.c), select(vec4<bool>(var_1.c, var_1.c, global0.c.c, global0.d), vec4<bool>(var_1.c, true, var_1.c, global0.b), var_1.c), func_2())));
    global3 = array<vec3<f32>, 28>();
    let var_3 = select(var_2, var_2, var_2.x);
    var_1 = func_1(~vec4<i32>(firstTrailingBit(1i), global0.c.b, ~global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(77063u, 26u)]) & vec4<i32>(-46860i, _wgslsmith_div_i32(global1.x, -43167i), 30574i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-5122i, global2[_wgslsmith_index_u32(4294967295u, 26u)], var_1.a.x, var_1.a.x), var_1.a)), u_input.a);
    var var_4 = Struct_3(abs(u_input.d.wyz), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + global0.a) + _wgslsmith_f_op_f32(global0.a - 218f)), -1160f), var_1.c, global0.c, any(vec2<bool>(global0.b, u_input.d.x < var_1.b)), var_1.b >> (global0.c.d % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(global0.c.d, ~_wgslsmith_add_u32(var_1.d | 4294967295u, 51137u), 14778u), vec4<u32>(firstLeadingBit(~56337u), 4294967295u, _wgslsmith_clamp_u32(1u, ~var_1.d, 1u), ~(~(~var_4.b.c.d))), ~_wgslsmith_add_i32(var_4.a.x, ~func_1(vec4<i32>(-2147483647i, global0.e, -2147483647i, u_input.d.x), u_input.a).b), -var_1.a.yxw);
}

