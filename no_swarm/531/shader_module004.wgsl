struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(162f, -613f), vec2<f32>(-870f, -567f), vec2<f32>(-612f, 1017f), vec2<f32>(-282f, -822f), vec2<f32>(832f, -993f), vec2<f32>(-496f, -1311f), vec2<f32>(360f, -822f), vec2<f32>(1517f, 217f), vec2<f32>(-1000f, -506f), vec2<f32>(-220f, -455f), vec2<f32>(-2066f, -463f), vec2<f32>(-1533f, 953f), vec2<f32>(-1278f, 101f), vec2<f32>(976f, -1355f), vec2<f32>(-684f, -558f), vec2<f32>(-2482f, -503f), vec2<f32>(-642f, 444f), vec2<f32>(-1210f, 1414f), vec2<f32>(-710f, -988f), vec2<f32>(-546f, 309f), vec2<f32>(934f, -1000f), vec2<f32>(-971f, 147f), vec2<f32>(-135f, -339f), vec2<f32>(-551f, -1248f), vec2<f32>(-653f, 145f));

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(true, 0i, vec2<f32>(673f, 440f)), Struct_1(true, 41083i, vec2<f32>(-941f, -379f)), Struct_1(true, -43439i, vec2<f32>(745f, 291f)), Struct_1(false, i32(-2147483648), vec2<f32>(-1911f, 507f)), Struct_1(false, 33456i, vec2<f32>(162f, -909f)), Struct_1(false, 1983i, vec2<f32>(1621f, 431f)), Struct_1(false, 16798i, vec2<f32>(1057f, -332f)), Struct_1(true, 5856i, vec2<f32>(-562f, 318f)), Struct_1(true, 57387i, vec2<f32>(523f, -1178f)), Struct_1(false, 40789i, vec2<f32>(243f, 418f)), Struct_1(false, i32(-2147483648), vec2<f32>(-993f, 2020f)), Struct_1(false, -1i, vec2<f32>(484f, -443f)), Struct_1(true, 2147483647i, vec2<f32>(754f, -1000f)), Struct_1(false, i32(-2147483648), vec2<f32>(156f, 1307f)), Struct_1(false, 2147483647i, vec2<f32>(1094f, -1286f)), Struct_1(false, -45088i, vec2<f32>(417f, -1240f)), Struct_1(true, 80134i, vec2<f32>(240f, -1297f)), Struct_1(false, 0i, vec2<f32>(1000f, -1000f)), Struct_1(false, 34525i, vec2<f32>(538f, -2102f)), Struct_1(false, 25954i, vec2<f32>(729f, -1318f)), Struct_1(true, -1i, vec2<f32>(969f, 1293f)), Struct_1(true, 0i, vec2<f32>(270f, -988f)));

var<private> global3: i32 = 1i;

var<private> global4: array<vec4<i32>, 4> = array<vec4<i32>, 4>(vec4<i32>(10491i, 12929i, i32(-2147483648), 1i), vec4<i32>(0i, 1i, 2147483647i, 29309i), vec4<i32>(1i, -20587i, 38958i, -7734i), vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, 1i));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: bool) -> u32 {
    global4 = array<vec4<i32>, 4>();
    return max(u_input.a | _wgslsmith_sub_u32(abs(u_input.a), ~4294967295u), 54883u);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec3<bool>) -> bool {
    global3 = ~(1i | _wgslsmith_sub_i32(_wgslsmith_add_i32(arg_1.b, u_input.b), 1i)) ^ ~min(arg_1.b, -u_input.d);
    let var_0 = arg_1;
    global1 = Struct_1(all(select(!arg_2.yy, select(vec2<bool>(global1.a, global1.a), vec2<bool>(false, false), true), !all(vec2<bool>(arg_1.a, arg_1.a)))), -max(reverseBits(14636i), ~1i), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.c.x))) - -215f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), arg_1.c.x))));
    var var_1 = arg_1;
    global2 = array<Struct_1, 22>();
    return ~27438i < firstTrailingBit(var_1.b);
}

fn func_2() -> Struct_1 {
    let var_0 = !(!select(!select(vec3<bool>(false, true, true), vec3<bool>(true, global1.a, global1.a), vec3<bool>(global1.a, global1.a, false)), !select(vec3<bool>(global1.a, true, global1.a), vec3<bool>(global1.a, global1.a, false), false), func_3(-u_input.d, global2[_wgslsmith_index_u32(u_input.a, 22u)], vec3<bool>(true, global1.a, global1.a))));
    var var_1 = Struct_1(all(var_0) != any(select(!var_0.yx, !var_0.xy, global1.c.x > -2454f)), ~(-3405i), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1523f * global1.c.x), -742f) * vec2<f32>(global1.c.x, 1078f)), _wgslsmith_f_op_vec2_f32(select(global1.c, vec2<f32>(global1.c.x, -162f), var_0.xy)))));
    var var_2 = global2[_wgslsmith_index_u32(select(~countOneBits(~u_input.a), u_input.a, true), 22u)];
    let var_3 = reverseBits(_wgslsmith_sub_vec3_u32(select(vec3<u32>(firstTrailingBit(u_input.a), _wgslsmith_mult_u32(62035u, 1u), ~u_input.a), vec3<u32>(max(u_input.a, u_input.a), ~u_input.a, u_input.a), !global1.a), vec3<u32>(u_input.a, u_input.a, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a, 77615u)), ~vec2<u32>(0u, 52224u)))));
    var_1 = Struct_1(var_2.a, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_2.b, -u_input.b)), -abs(-u_input.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.c - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.c.x, var_2.c.x), vec2<f32>(var_1.c.x, var_1.c.x))), global1.c))));
    return global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, ~(~_wgslsmith_sub_u32(var_3.x, 11132u))), 22u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> bool {
    var var_0 = arg_0.a;
    let var_1 = ~abs(~firstTrailingBit(vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a) ^ vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)));
    global4 = array<vec4<i32>, 4>();
    let var_2 = vec2<bool>((~_wgslsmith_add_u32(15734u, u_input.a) <= ~0u) && !(!any(vec4<bool>(arg_0.a, false, true, false))), !arg_2.a);
    var var_3 = abs(select(vec4<u32>(~11755u, ~63838u, 20008u, u_input.a) & ~(~var_1), vec4<u32>(firstLeadingBit(76221u), 4294967295u, func_1(true), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, u_input.a, 0u), var_1), 30522u)), vec4<bool>(true, !all(vec4<bool>(true, true, true, var_2.x)), ~var_1.x == ~1u, true)));
    return all(select(var_2, vec2<bool>(all(select(vec3<bool>(arg_0.a, arg_2.a, true), vec3<bool>(true, true, var_2.x), vec3<bool>(var_2.x, arg_2.a, false))), select(true, all(vec4<bool>(global1.a, arg_2.a, var_2.x, true)), any(vec3<bool>(true, arg_2.a, arg_2.a)))), _wgslsmith_f_op_f32(f32(-1f) * -216f) <= arg_2.c.x));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = global2[_wgslsmith_index_u32(reverseBits(u_input.a), 22u)];
    var var_1 = vec3<u32>(~_wgslsmith_clamp_u32(u_input.a, 4294967295u, _wgslsmith_mult_u32(u_input.a, abs(4294967295u))), u_input.a, u_input.a);
    let var_2 = vec4<i32>(arg_1.b, countOneBits(var_0.b), arg_1.b, _wgslsmith_add_i32(u_input.d, i32(-1i) * -1i));
    let var_3 = countOneBits(u_input.a);
    global2 = array<Struct_1, 22>();
    return StorageBuffer(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -10271i, -20442i, arg_1.b), vec4<i32>(3653i, var_0.b, 0i, u_input.b)) << (vec4<u32>(~4294967295u, ~4294967295u, 24190u >> (var_3 % 32u), ~var_1.x) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(countOneBits(max(vec4<i32>(18592i, 27243i, -35640i, global1.b), global4[_wgslsmith_index_u32(var_3, 4u)])), global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(min(12552u, u_input.a), 31862u), 4u)])), arg_1.c.x, vec4<i32>(-_wgslsmith_div_i32(global1.b, _wgslsmith_clamp_i32(1i, -27842i, -15214i)), ~var_0.b, _wgslsmith_mult_i32(-21585i, -_wgslsmith_sub_i32(var_2.x, 2147483647i)), u_input.c.x << (_wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(112437u, var_1.x, var_1.x, 52518u), vec4<u32>(42988u, var_1.x, 2333u, 0u))) % 32u)), countOneBits(select(vec4<u32>(u_input.a, _wgslsmith_div_u32(u_input.a, 0u), u_input.a, 1u), vec4<u32>(0u, ~0u, 631u, 4294967295u), !vec4<bool>(arg_1.a, arg_1.a, false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-799f, -1393f))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<i32>, 4>();
    global3 = abs(u_input.d);
    var var_0 = ~0u;
    global3 = firstLeadingBit(23636i);
    var var_1 = select(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(14470u, firstTrailingBit(u_input.a)), u_input.a, ~u_input.a, ~(~u_input.a)), vec4<u32>(50120u, 1u, 0u, 0u)), _wgslsmith_sub_vec4_u32(~(vec4<u32>(1u, 121827u, u_input.a, 16243u) >> (firstTrailingBit(vec4<u32>(u_input.a, u_input.a, 32117u, 50192u)) % vec4<u32>(32u))), vec4<u32>(u_input.a, func_1(all(vec4<bool>(global1.a, false, global1.a, true))), 34971u, u_input.a)), global1.a);
    var var_2 = var_1.ywy;
    let x = u_input.a;
    s_output = func_5(!vec2<bool>(func_4(func_2(), vec3<i32>(u_input.b, u_input.d, global1.b), func_2()), func_3(min(1i, u_input.b), Struct_1(false, 1i, vec2<f32>(global1.c.x, -1346f)), !vec3<bool>(global1.a, global1.a, global1.a))), func_2());
}

