struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec3<i32>(i32(-2147483648), -22482i, 2147483647i), vec3<bool>(true, true, true), vec2<f32>(-626f, 788f)), Struct_1(vec3<i32>(-36194i, 0i, 0i), vec3<bool>(true, true, true), vec2<f32>(254f, 207f)), Struct_1(vec3<i32>(-25680i, 0i, 0i), vec3<bool>(false, false, true), vec2<f32>(2416f, -816f)), Struct_1(vec3<i32>(-40546i, -26116i, 0i), vec3<bool>(true, false, false), vec2<f32>(389f, -1485f)), Struct_1(vec3<i32>(41759i, i32(-2147483648), 2147483647i), vec3<bool>(true, false, true), vec2<f32>(-443f, 985f)), Struct_1(vec3<i32>(-1i, -36870i, -24660i), vec3<bool>(false, false, false), vec2<f32>(-395f, -1359f)), Struct_1(vec3<i32>(2147483647i, -26369i, -23256i), vec3<bool>(false, true, false), vec2<f32>(-335f, -599f)), Struct_1(vec3<i32>(49495i, -1i, 1i), vec3<bool>(true, false, true), vec2<f32>(-805f, -1712f)), Struct_1(vec3<i32>(19803i, 71751i, 1i), vec3<bool>(true, true, false), vec2<f32>(1735f, -884f)));

var<private> global1: u32 = 7849u;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: f32, arg_3: bool) -> u32 {
    var var_0 = _wgslsmith_mod_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.a, -38587i, -30970i, arg_0.a.x), vec4<i32>(2147483647i, _wgslsmith_dot_vec3_i32(arg_0.a, arg_0.a), arg_0.a.x, min(25035i, arg_0.a.x))), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, arg_0.a.x & _wgslsmith_sub_i32(-1i, -2147483647i), _wgslsmith_sub_i32(~arg_0.a.x, -2147483647i), 0i), vec4<i32>(select(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, arg_0.a.x), arg_0.a.xy), reverseBits(41886i), true), select(1i, arg_0.a.x, arg_3), arg_0.a.x, i32(-1i) * -u_input.a)));
    global1 = select(_wgslsmith_mod_u32(0u, _wgslsmith_mod_u32(~0u, _wgslsmith_clamp_u32(~17970u, ~1u, _wgslsmith_sub_u32(106988u, 0u)))), 27830u, false);
    var_0 = min(reverseBits(-(~(-vec4<i32>(12743i, u_input.a, u_input.a, -2147483647i)))), vec4<i32>(-1i) * -vec4<i32>(arg_0.a.x, 51654i, -4701i ^ var_0.x, ~u_input.a));
    var var_1 = arg_2 >= 457f;
    var var_2 = arg_0;
    return _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(select(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(35297u, 4294967295u, 0u, 0u), vec4<u32>(1u, 4294967295u, 0u, 108116u), vec4<u32>(14536u, 4294967295u, 4294967295u, 24164u)), max(vec4<u32>(10474u, 1u, 47529u, 4294967295u), vec4<u32>(0u, 1u, 12157u, 8673u))), vec4<u32>(_wgslsmith_div_u32(4294967295u, 39725u), 1u, 1u, ~62222u), vec4<bool>(!arg_3, arg_0.b.x & var_2.b.x, any(vec3<bool>(false, arg_1.x, var_2.b.x)), true)), max(select(vec4<u32>(15274u, 43472u, 56321u, 19032u), reverseBits(vec4<u32>(38972u, 16484u, 1u, 53877u)), all(arg_0.b.yz)), vec4<u32>(reverseBits(0u), firstLeadingBit(1u), ~0u, 57077u))), ~abs(vec4<u32>(1u, 1u, 1u, 1u)));
}

fn func_2() -> Struct_1 {
    var var_0 = vec4<bool>(true, true, true, true);
    var var_1 = max(func_3(global0[_wgslsmith_index_u32(~1u, 9u)], vec3<bool>(var_0.x, var_0.x, true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(447f - -470f))), all(vec2<bool>(false, false))), ~(~(~0u))) | select(~max(4294967295u, 1u), 1u, true);
    var var_2 = -_wgslsmith_sub_vec4_i32(select(vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-50492i, -28680i, u_input.a, -1i), vec4<i32>(u_input.a, 0i, u_input.a, u_input.a)), firstLeadingBit(u_input.a), ~(-1i)), -min(vec4<i32>(u_input.a, -2147483647i, -1i, u_input.a), vec4<i32>(-2147483647i, -2147483647i, -13947i, u_input.a)), true), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -15953i, 65689i, -6149i), vec4<i32>(2147483647i, 0i, u_input.a, u_input.a), vec4<i32>(1i, -33484i, -30985i, -1i))), firstLeadingBit(~vec4<i32>(25199i, -2147483647i, -17499i, -1i))));
    var var_3 = select(!vec2<bool>(false, !(var_0.x | var_0.x)), vec2<bool>(!(var_0.x & var_0.x), var_0.x), !(!(any(var_0.wy) & all(var_0.zx))));
    let var_4 = Struct_1(var_2.zxy ^ vec3<i32>(45004i, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-37141i, var_2.x, u_input.a)), firstLeadingBit(var_2.yww)), -2147483647i), !vec3<bool>(true, var_0.x & false, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(507f, _wgslsmith_f_op_f32(abs(1406f)))))));
    return Struct_1(var_4.a, !(!var_4.b), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.c.x), -172f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.c.x), _wgslsmith_f_op_f32(abs(var_4.c.x))), _wgslsmith_f_op_f32(trunc(-1369f))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    global0 = array<Struct_1, 9>();
    let var_0 = func_2();
    var var_1 = func_2();
    var_1 = func_2();
    var var_2 = var_0.c;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 9>();
    global1 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_mult_u32(25909u, _wgslsmith_add_u32(13452u, 67420u)), firstLeadingBit(1u)), ~vec3<u32>(0u, 1u, 41002u));
    let var_0 = vec2<i32>(u_input.a, -(max(u_input.a, func_1(vec2<i32>(-15038i, u_input.a), u_input.a, global0[_wgslsmith_index_u32(4294967295u, 9u)], Struct_1(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<bool>(false, true, false), vec2<f32>(710f, -418f)))) >> (_wgslsmith_div_u32(112141u, 1u) % 32u)));
    let var_1 = Struct_1(vec3<i32>(~select(u_input.a, 0i, true) | -_wgslsmith_sub_i32(var_0.x, -12734i), _wgslsmith_sub_i32(var_0.x, u_input.a), u_input.a), !vec3<bool>(true, !select(false, false, true), select(true, true, false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(func_2().c)))) - _wgslsmith_f_op_vec2_f32(-func_2().c)));
    global1 = 4294967295u;
    global0 = array<Struct_1, 9>();
    global1 = _wgslsmith_mod_u32(firstTrailingBit(~countOneBits(0u >> (1u % 32u))), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.xx, 1526f);
}

