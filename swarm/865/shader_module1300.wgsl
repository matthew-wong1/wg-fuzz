struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(1831f, vec4<i32>(-23846i, -24810i, 4432i, 62670i)), Struct_1(735f, vec4<i32>(892i, 1i, 30460i, 38794i)), Struct_1(1807f, vec4<i32>(-39011i, 2147483647i, 0i, -1i)), Struct_1(-1836f, vec4<i32>(1i, 56656i, 17366i, -61463i)), Struct_1(-168f, vec4<i32>(-1i, 18210i, 11591i, 30973i)), Struct_1(1901f, vec4<i32>(2147483647i, -1354i, -12039i, 66767i)), Struct_1(-537f, vec4<i32>(-14125i, -23838i, i32(-2147483648), 1i)), Struct_1(2348f, vec4<i32>(i32(-2147483648), i32(-2147483648), 22150i, 30158i)), Struct_1(1357f, vec4<i32>(0i, 1i, 15030i, 0i)), Struct_1(568f, vec4<i32>(1i, i32(-2147483648), -1i, 90176i)), Struct_1(-323f, vec4<i32>(2147483647i, -36657i, 1i, 27674i)), Struct_1(-587f, vec4<i32>(35227i, 2147483647i, 37372i, 67120i)), Struct_1(353f, vec4<i32>(-38446i, 41524i, 2389i, 68193i)), Struct_1(-387f, vec4<i32>(15828i, 0i, 13956i, -491i)), Struct_1(-1357f, vec4<i32>(1i, -54577i, 69104i, -1i)), Struct_1(-1586f, vec4<i32>(i32(-2147483648), -7258i, 31895i, 28324i)), Struct_1(-411f, vec4<i32>(0i, -7434i, 2147483647i, i32(-2147483648))), Struct_1(134f, vec4<i32>(18676i, -40276i, -7493i, i32(-2147483648))), Struct_1(-2202f, vec4<i32>(19263i, 2147483647i, -60823i, i32(-2147483648))), Struct_1(1081f, vec4<i32>(17697i, 23814i, -2869i, 6021i)), Struct_1(598f, vec4<i32>(-1i, 1i, 1i, 0i)), Struct_1(286f, vec4<i32>(-7406i, 10049i, 66407i, 60677i)), Struct_1(1375f, vec4<i32>(37382i, -16657i, i32(-2147483648), 57836i)), Struct_1(-1000f, vec4<i32>(-42206i, -133i, -12412i, -19416i)), Struct_1(-1235f, vec4<i32>(2147483647i, 2147483647i, -23801i, 2147483647i)));

var<private> global1: Struct_1 = Struct_1(502f, vec4<i32>(0i, -63753i, -18590i, -79974i));

var<private> global2: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(-616f, 1000f, 190f), vec3<f32>(932f, -533f, -435f), vec3<f32>(-455f, -1564f, -109f), vec3<f32>(-326f, -824f, 474f), vec3<f32>(733f, -856f, -2102f), vec3<f32>(1663f, 511f, 608f), vec3<f32>(-163f, 368f, -311f), vec3<f32>(-359f, -156f, -1000f), vec3<f32>(-691f, 112f, 1127f), vec3<f32>(1139f, 1102f, -656f), vec3<f32>(-1000f, 203f, 2563f), vec3<f32>(-2370f, -1552f, 593f), vec3<f32>(657f, -1000f, 787f), vec3<f32>(-506f, 297f, 1141f), vec3<f32>(1918f, -1216f, -1222f), vec3<f32>(-173f, -502f, -996f), vec3<f32>(-2426f, -1264f, -307f), vec3<f32>(394f, -964f, -428f), vec3<f32>(979f, -1826f, -1431f), vec3<f32>(-457f, -242f, 1000f), vec3<f32>(-1234f, 282f, 750f));

var<private> global3: array<i32, 7> = array<i32, 7>(-14237i, i32(-2147483648), -43973i, 2147483647i, 12939i, 0i, 41392i);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-global1.a);
    global2 = array<vec3<f32>, 21>();
    global2 = array<vec3<f32>, 21>();
    var var_1 = global0[_wgslsmith_index_u32(u_input.a, 25u)];
    var var_2 = Struct_2(~vec3<u32>(~_wgslsmith_clamp_u32(12255u, 42625u, u_input.a), u_input.a & u_input.a, ~countOneBits(17505u)));
    return Struct_2(var_2.a);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: Struct_2) -> u32 {
    global3 = array<i32, 7>();
    global0 = array<Struct_1, 25>();
    global3 = array<i32, 7>();
    var var_0 = Struct_2(vec3<u32>(_wgslsmith_div_u32(~_wgslsmith_add_u32(32497u, 5685u), min(_wgslsmith_sub_u32(4294967295u, arg_2.a.x), 6131u)), ~u_input.a, 0u));
    var var_1 = arg_2;
    return firstLeadingBit(arg_2.a.x);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec3<f32>) -> bool {
    global0 = array<Struct_1, 25>();
    let var_0 = func_2();
    var var_1 = arg_1.a.x;
    let var_2 = max(vec4<u32>(~abs(arg_1.a.x), arg_0.x, 1u, func_3(vec2<bool>(true, true), select(var_0.a, vec3<u32>(0u, u_input.a, 34783u), vec3<bool>(false, true, false)), Struct_2(vec3<u32>(4294967295u, 14287u, 4294967295u))) & _wgslsmith_sub_u32(func_3(vec2<bool>(true, false), vec3<u32>(u_input.a, var_0.a.x, 0u), arg_1), ~u_input.a)), arg_0);
    global2 = array<vec3<f32>, 21>();
    return any(select(vec2<bool>(!select(false, true, false), all(vec3<bool>(true, true, true))), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(true, false, true, true)))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, -849f != arg_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_f_op_f32(select(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1536f + global1.a))) * _wgslsmith_f_op_f32(round(global1.a))), true || !func_1(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), Struct_2(vec3<u32>(30464u, u_input.a, u_input.a)), vec3<f32>(-1028f, global1.a, global1.a)))), _wgslsmith_mod_vec4_i32(vec4<i32>(-16929i, global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.a, u_input.a), 7u)], -_wgslsmith_clamp_i32(5551i, 1i, global1.b.x), firstTrailingBit(-9160i)), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(select(global1.b, vec4<i32>(2147483647i, u_input.d.x, global3[_wgslsmith_index_u32(u_input.a, 7u)], u_input.d.x), vec4<bool>(false, false, true, true)), -vec4<i32>(1i, 2147483647i, -28062i, -10938i)), countOneBits(_wgslsmith_mod_vec4_i32(u_input.d, vec4<i32>(global1.b.x, 1i, -1i, u_input.d.x))))));
    let var_0 = true;
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(_wgslsmith_mod_u32(u_input.a, 1u), _wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.a, 4294967295u, u_input.a) ^ vec3<u32>(4294967295u, 4294967295u, 4294967295u)), func_2().a), var_0), ~(u_input.a ^ ~(~u_input.a))), 25u)];
    global2 = array<vec3<f32>, 21>();
    let var_1 = Struct_2(~vec3<u32>(22435u, ~abs(29984u), ~(~u_input.a)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.a))), -global1.b);
    var var_3 = Struct_2(~_wgslsmith_mod_vec3_u32(var_1.a, vec3<u32>(u_input.a >> (var_1.a.x % 32u), _wgslsmith_mod_u32(1u, u_input.a), ~var_1.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(reverseBits(~_wgslsmith_sub_i32(-9243i, var_2.b.x)), global3[_wgslsmith_index_u32(func_2().a.x, 7u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(var_2.a)), _wgslsmith_f_op_f32(select(var_2.a, var_2.a, var_0)), 2072f, _wgslsmith_f_op_f32(1305f - var_2.a)))));
}

