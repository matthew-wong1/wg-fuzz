struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
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

var<private> global0: array<vec4<i32>, 30> = array<vec4<i32>, 30>(vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, -1i), vec4<i32>(69030i, -15236i, 1i, 1i), vec4<i32>(11814i, 0i, 12825i, i32(-2147483648)), vec4<i32>(-25539i, 7446i, 41846i, 0i), vec4<i32>(-21847i, -17236i, -1i, -1i), vec4<i32>(0i, 2147483647i, i32(-2147483648), 1i), vec4<i32>(47814i, 10314i, -1i, 0i), vec4<i32>(69572i, i32(-2147483648), i32(-2147483648), 2147483647i), vec4<i32>(1i, -37143i, 14915i, -18312i), vec4<i32>(-9336i, 17189i, 15066i, -22268i), vec4<i32>(-48270i, -5112i, 3237i, -1i), vec4<i32>(-36791i, 24693i, 53388i, -36276i), vec4<i32>(i32(-2147483648), -9005i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-18169i, -1i, -1i, -3543i), vec4<i32>(29377i, -60769i, i32(-2147483648), -1i), vec4<i32>(-22176i, -18726i, -11749i, i32(-2147483648)), vec4<i32>(2147483647i, -1i, 2147483647i, -359i), vec4<i32>(-1i, 0i, -1i, 34102i), vec4<i32>(-37463i, -1697i, 0i, 45893i), vec4<i32>(1i, -3020i, 1i, -1399i), vec4<i32>(0i, 21084i, 0i, 86484i), vec4<i32>(-32321i, 2962i, 20885i, 55966i), vec4<i32>(24149i, -4227i, 2147483647i, i32(-2147483648)), vec4<i32>(0i, 32394i, 1i, 2147483647i), vec4<i32>(1i, i32(-2147483648), 0i, -1i), vec4<i32>(1i, -1i, 18211i, 2147483647i), vec4<i32>(-66957i, -22498i, 42385i, 2147483647i), vec4<i32>(-1i, -1i, 2147483647i, 0i), vec4<i32>(57758i, 43064i, -1i, 11603i), vec4<i32>(9272i, 8248i, i32(-2147483648), i32(-2147483648)));

var<private> global1: vec3<i32> = vec3<i32>(1i, 1i, 2147483647i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec2<i32>, arg_3: u32) -> i32 {
    let var_0 = arg_0.b.a << (~arg_3 % 32u);
    let var_1 = any(vec3<bool>(all(!select(vec4<bool>(arg_0.c, false, arg_0.c, true), vec4<bool>(arg_0.c, arg_0.c, false, false), false)), any(!select(vec4<bool>(arg_0.c, false, false, false), vec4<bool>(arg_0.c, false, arg_0.c, true), true)), arg_0.c));
    let var_2 = select(vec4<bool>(!var_1, true, any(vec3<bool>(any(vec2<bool>(var_1, arg_0.c)), 4294967295u < arg_3, false)), !(arg_0.a.x < _wgslsmith_f_op_f32(sign(arg_1)))), !(!(!select(vec4<bool>(true, false, arg_0.c, false), vec4<bool>(true, true, true, arg_0.c), false))), vec4<bool>(any(vec2<bool>(any(vec2<bool>(var_1, arg_0.c)), var_1)), all(select(!vec3<bool>(false, arg_0.c, var_1), !vec3<bool>(true, arg_0.c, true), select(vec3<bool>(false, true, arg_0.c), vec3<bool>(true, var_1, false), arg_0.c))), all(select(select(vec3<bool>(arg_0.c, arg_0.c, false), vec3<bool>(var_1, var_1, var_1), true), vec3<bool>(var_1, var_1, false), !vec3<bool>(var_1, false, true))), true));
    global1 = ~arg_0.b.c;
    var var_3 = arg_0.b;
    return _wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(~4294967295u, 30u)], global0[_wgslsmith_index_u32(~u_input.a.x, 30u)])) << (~vec2<u32>(~arg_3, arg_0.b.a) % vec2<u32>(32u)), vec2<i32>(~(-18877i << (arg_3 % 32u)), global1.x) ^ vec2<i32>(-1i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-11499i, u_input.b.x), -2147483647i | var_3.c.x, _wgslsmith_mult_i32(0i, 1i))));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> vec2<bool> {
    global1 = firstTrailingBit(vec3<i32>(0i, abs(0i), _wgslsmith_mult_i32(0i, max(-1i, 0i))));
    var var_0 = Struct_1(~(~_wgslsmith_mod_u32(~1u, arg_1 << (u_input.a.x % 32u))), 1194f, vec3<i32>(~func_3(Struct_2(vec4<f32>(1822f, 320f, 141f, 615f), Struct_1(1u, -905f, vec3<i32>(1i, u_input.b.x, 0i), u_input.a.x), false), -169f, firstLeadingBit(vec2<i32>(u_input.b.x, global1.x)), ~arg_1), -73115i, arg_0.x), reverseBits(arg_1));
    global1 = vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(-var_0.c, vec3<i32>(35365i, _wgslsmith_mult_i32(2147483647i, global1.x), 47770i)), countOneBits(var_0.c)), firstLeadingBit(1i), 14326i);
    let var_1 = ~min(~firstLeadingBit(_wgslsmith_sub_u32(var_0.d, arg_1)), 0u);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1972f - _wgslsmith_f_op_f32(-var_0.b)))));
    return select(vec2<bool>(arg_1 == 1u, false), !vec2<bool>(any(vec3<bool>(true, true, true)), 1i > -global1.x), vec2<bool>(_wgslsmith_add_i32(i32(-1i) * -17014i, firstTrailingBit(-2147483647i)) >= (_wgslsmith_mod_i32(u_input.b.x, -2148i) ^ _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(arg_0.x, -556i))), !all(vec2<bool>(true, true))));
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> f32 {
    var var_0 = !(!func_2(_wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(u_input.b.x, 0i)), -u_input.b, ~global1.yx), max(firstTrailingBit(arg_1.b.d), ~47660u)));
    global0 = array<vec4<i32>, 30>();
    var var_1 = 0u;
    var var_2 = select(!vec4<bool>(arg_1.c, var_0.x, var_0.x, arg_1.c), vec4<bool>(false, false, all(vec3<bool>(!var_0.x, false, u_input.a.x < arg_1.b.d)), true), vec4<bool>(~firstTrailingBit(-1i) > max(firstLeadingBit(-67937i), -2147483647i), true, var_0.x, arg_1.c));
    global1 = arg_1.b.c;
    return -1000f;
}

fn func_4(arg_0: vec2<f32>) -> u32 {
    global0 = array<vec4<i32>, 30>();
    global1 = _wgslsmith_add_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(49837i, global1.x, u_input.b.x), min(vec3<i32>(-2147483647i, -16559i, 2147483647i), vec3<i32>(u_input.b.x, 2147483647i, global1.x))), ~_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(6988i, global1.x, 23676i)), vec3<i32>(0i, -34625i, global1.x), _wgslsmith_mult_vec3_i32(vec3<i32>(43924i, 12536i, 2147483647i), vec3<i32>(60604i, u_input.b.x, global1.x)))) & reverseBits(abs(vec3<i32>(global1.x ^ global1.x, ~u_input.b.x, u_input.b.x)));
    var var_0 = _wgslsmith_mod_i32(54179i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global1.x, 30424i, 2147483647i, 44194i), global0[_wgslsmith_index_u32(0u, 30u)]) ^ min(vec4<i32>(global1.x, 1i, u_input.b.x, global1.x), vec4<i32>(u_input.b.x, global1.x, -1i, -2147483647i)), ~(-vec4<i32>(global1.x, global1.x, -2147483647i, u_input.b.x))), vec4<i32>(8283i, func_3(Struct_2(vec4<f32>(173f, -225f, -205f, 366f), Struct_1(u_input.a.x, arg_0.x, vec3<i32>(-1i, u_input.b.x, global1.x), 8782u), true), 488f, vec2<i32>(u_input.b.x, 3934i), u_input.a.x), 2147483647i, global1.x) & _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, global1.x, 71656i, -2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, global1.x, -54823i), vec4<i32>(7428i, u_input.b.x, global1.x, global1.x)))));
    global1 = _wgslsmith_mod_vec3_i32(abs(-vec3<i32>(u_input.b.x, -46241i, 2147483647i)) >> (~u_input.a % vec3<u32>(32u)), -(~_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-19252i, 2147483647i, u_input.b.x), vec3<i32>(u_input.b.x, -47069i, u_input.b.x)), abs(vec3<i32>(0i, global1.x, 0i)))));
    let var_1 = abs(u_input.a);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 30>();
    var var_0 = Struct_1(~func_4(vec2<f32>(_wgslsmith_f_op_f32(func_1(global1.x, Struct_2(vec4<f32>(591f, 136f, 219f, -559f), Struct_1(0u, -243f, vec3<i32>(0i, u_input.b.x, 7290i), 4294967295u), true))), -942f)), _wgslsmith_f_op_f32(f32(-1f) * -752f), vec3<i32>(_wgslsmith_clamp_i32(~_wgslsmith_div_i32(2147483647i, u_input.b.x), -global1.x, 44127i), u_input.b.x, min(select(-2147483647i, 0i, true), 0i)), u_input.a.x);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1712f, _wgslsmith_f_op_f32(round(-3454f)))))) - var_0.b) >= -738f;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~reverseBits(-64972i)));
}

