struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<f32>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: f32,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 14863i;

var<private> global1: array<bool, 5> = array<bool, 5>(true, true, true, false, true);

var<private> global2: f32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>) -> u32 {
    var var_0 = !select(vec4<bool>(true, true, false & global1[_wgslsmith_index_u32(4294967295u, 5u)], all(select(arg_1.xx, arg_1.yx, global1[_wgslsmith_index_u32(7435u, 5u)]))), !(!vec4<bool>(true, true, global1[_wgslsmith_index_u32(1u, 5u)], false)), _wgslsmith_mult_i32(~28093i, _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, 1i))) != firstLeadingBit(arg_0));
    global2 = 230f;
    let var_1 = abs(min(~(49423u >> (1u % 32u)), ~_wgslsmith_sub_u32(min(67176u, 1u), 1u)));
    var var_2 = -1347f;
    var var_3 = firstTrailingBit(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, u_input.b), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, 42851i, u_input.b), vec3<i32>(-25465i, -29657i, arg_0))) >> (reverseBits(select(vec3<u32>(4294967295u, 11851u, var_1), vec3<u32>(var_1, 39270u, 1u), var_0.www)) % vec3<u32>(32u))));
    return 4294967295u;
}

fn func_3(arg_0: Struct_1) -> i32 {
    global0 = reverseBits(1i);
    global0 = 1i;
    global1 = array<bool, 5>();
    let var_0 = reverseBits(vec4<i32>(select(_wgslsmith_mult_i32(~0i, u_input.a.x), u_input.a.x, all(select(vec2<bool>(false, global1[_wgslsmith_index_u32(54924u, 5u)]), vec2<bool>(true, arg_0.a), vec2<bool>(false, arg_0.a)))), -46795i, arg_0.b, _wgslsmith_add_i32(~abs(-1i), 1i)));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(288f, 230f, 36359i <= var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1035f))));
    return var_0.x & ~_wgslsmith_mod_i32(abs(arg_0.b), -firstTrailingBit(2147483647i));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(196f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1458f, 734f)))) - _wgslsmith_f_op_f32(1f * 996f));
    var var_1 = Struct_1(any(select(!vec2<bool>(global1[_wgslsmith_index_u32(16941u, 5u)], true), !(!vec2<bool>(global1[_wgslsmith_index_u32(43947u, 5u)], global1[_wgslsmith_index_u32(0u, 5u)])), true)), -2147483647i);
    var var_2 = Struct_1(true, abs(func_3(Struct_1(global1[_wgslsmith_index_u32(62120u, 5u)], u_input.b))) & _wgslsmith_add_i32(~var_1.b ^ 2147483647i, -1933i));
    var var_3 = Struct_4(select(select(!vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 5u)], var_2.a), !select(vec2<bool>(false, var_1.a), vec2<bool>(var_2.a, true), false), select(vec2<bool>(true, true), !vec2<bool>(global1[_wgslsmith_index_u32(7903u, 5u)], true), true)), vec2<bool>(true, false), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(var_1.a, false)), vec2<bool>(true, true), true)));
    var var_4 = !(!select(select(vec3<bool>(true, true, true), !vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 5u)], false, false), !vec3<bool>(var_1.a, var_3.a.x, false)), select(select(vec3<bool>(true, true, var_2.a), vec3<bool>(true, var_1.a, false), var_1.a), select(vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 5u)], true), vec3<bool>(var_3.a.x, false, var_3.a.x), vec3<bool>(true, global1[_wgslsmith_index_u32(25716u, 5u)], global1[_wgslsmith_index_u32(1u, 5u)])), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)));
    return 1u;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> Struct_2 {
    let var_0 = abs(max(countOneBits(vec4<u32>(4294967295u, ~arg_3, ~arg_3, arg_3)), ~_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 0u, arg_0, 18219u), ~vec4<u32>(1u, arg_0, 1u, arg_0))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -912f);
    global0 = ~(-1i);
    let var_2 = Struct_2(Struct_1(arg_1.a.a, arg_1.a.b), arg_1.e, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -302f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2 - 919f))), -197f), arg_1.b.zwy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(2036f, arg_1.c.x), arg_2))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2))), arg_1.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + 319f) + _wgslsmith_f_op_f32(arg_1.c.x + 743f))), -649f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -524f)))));
    let var_3 = Struct_4(!vec2<bool>(all(!vec4<bool>(false, false, arg_1.a.a, false)), !any(vec2<bool>(global1[_wgslsmith_index_u32(arg_0, 5u)], var_2.a.a))));
    return var_2;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec4<bool>) -> Struct_2 {
    let var_0 = vec2<u32>(countOneBits(select(~38344u, ~23u, !arg_2.a.a.a)) ^ ~4294967295u, ~44861u);
    global0 = 437i;
    global0 = i32(-1i) * -max(abs(-2147483647i), 26578i);
    var var_1 = Struct_1(true, _wgslsmith_sub_i32(-24439i, countOneBits(arg_1.a.b)));
    global1 = array<bool, 5>();
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let var_1 = func_1(var_0 & var_0, !(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, global1[_wgslsmith_index_u32(0u, 5u)]), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 5u)], global1[_wgslsmith_index_u32(63236u, 5u)], true)))));
    global0 = u_input.a.x;
    global0 = var_0;
    var var_2 = func_5(func_4(func_2(), Struct_2(Struct_1(true, var_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(549f, -214f, 888f, -249f) * vec4<f32>(-1000f, -1430f, 1701f, -952f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(584f, -760f, -439f) + vec3<f32>(-1865f, -1000f, -1107f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(842f, 313f, -752f)), global1[_wgslsmith_index_u32(0u, 5u)] && global1[_wgslsmith_index_u32(var_1, 5u)])), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1682f - -872f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-555f, -3049f, 303f, -676f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-836f))), _wgslsmith_mult_u32(var_1, _wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(0u, var_1)))), func_4(3046u << (_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1, var_1, 4294967295u, var_1), _wgslsmith_add_vec4_u32(vec4<u32>(1u, var_1, var_1, var_1), vec4<u32>(var_1, var_1, var_1, var_1))) % 32u), Struct_2(Struct_1(global1[_wgslsmith_index_u32(1u, 5u)] || false, countOneBits(-1i)), vec4<f32>(_wgslsmith_f_op_f32(-1000f + 2053f), _wgslsmith_f_op_f32(ceil(-1000f)), func_4(var_1, Struct_2(Struct_1(global1[_wgslsmith_index_u32(var_1, 5u)], u_input.b), vec4<f32>(107f, -284f, 1540f, -975f), vec3<f32>(1059f, -636f, -942f), 477f, vec4<f32>(130f, -1000f, 1209f, -387f)), 802f, 12985u).b.x, -2403f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-888f, -2157f, 582f)), _wgslsmith_f_op_f32(-761f + _wgslsmith_f_op_f32(f32(-1f) * -317f)), func_4(~var_1, func_4(61292u, Struct_2(Struct_1(false, u_input.a.x), vec4<f32>(-1215f, -883f, -891f, 2507f), vec3<f32>(-1259f, 710f, -1542f), 1000f, vec4<f32>(1386f, 797f, 391f, -936f)), -707f, 1u), _wgslsmith_f_op_f32(f32(-1f) * -1389f), var_1).b), _wgslsmith_div_f32(-782f, -516f), var_1), Struct_3(Struct_2(func_4(var_1, Struct_2(Struct_1(global1[_wgslsmith_index_u32(var_1, 5u)], 2147483647i), vec4<f32>(298f, -297f, -1994f, 250f), vec3<f32>(-445f, -1002f, -1425f), -290f, vec4<f32>(-652f, -548f, -326f, -1953f)), _wgslsmith_f_op_f32(step(965f, 753f)), 0u).a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-226f, -1000f, -809f, 1073f) - vec4<f32>(387f, 467f, 2126f, 1215f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1880f, -2025f, -1000f) + vec4<f32>(521f, 1040f, 1578f, 250f))), _wgslsmith_f_op_vec3_f32(-func_4(70645u, Struct_2(Struct_1(false, u_input.a.x), vec4<f32>(-287f, -1816f, 638f, -1000f), vec3<f32>(1910f, -656f, 1562f), 999f, vec4<f32>(578f, 942f, 1083f, -1306f)), -1366f, 14258u).b.xwz), _wgslsmith_f_op_f32(-1048f + func_4(1u, Struct_2(Struct_1(global1[_wgslsmith_index_u32(30222u, 5u)], -46502i), vec4<f32>(-695f, 1111f, -690f, -1194f), vec3<f32>(-1325f, 796f, 1000f), -670f, vec4<f32>(-120f, 2218f, -315f, -1000f)), 648f, var_1).b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(759f, 1712f, 923f, -1014f) - vec4<f32>(-2742f, 1190f, 383f, 727f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 998f, 349f, -1879f)))), select(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, var_0), vec4<i32>(0i, -19136i, var_0, 1i), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1, var_1), 5u)]) | vec4<i32>(-24114i, var_0, ~var_0, u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -465f) + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(511f, -1648f))))), vec4<bool>(all(vec3<bool>(select(true, global1[_wgslsmith_index_u32(23561u, 5u)], false), func_4(41546u, Struct_2(Struct_1(false, u_input.a.x), vec4<f32>(982f, 934f, -1307f, -930f), vec3<f32>(-626f, 589f, 389f), 136f, vec4<f32>(-1000f, -307f, -2408f, -1106f)), -1000f, var_1).a.a, true)), var_1 < firstTrailingBit(_wgslsmith_add_u32(35000u, 0u)), !global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1 ^ var_1, 19831u), 5u)], true && global1[_wgslsmith_index_u32(86702u, 5u)]));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c, vec3<u32>(1u, 0u, var_1), ~(-firstLeadingBit(vec4<i32>(-6510i, -1i, 35814i, -26289i))) | ~vec4<i32>(-u_input.b, ~var_2.a.b, -1i, var_2.a.b), select(vec3<u32>(~6761u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, 1u, 13047u, 0u), vec4<u32>(0u, var_1, var_1, var_1)), 24456u), vec3<u32>(_wgslsmith_sub_u32(abs(var_1), _wgslsmith_add_u32(37005u, var_1)), ~(~4294967295u), _wgslsmith_clamp_u32(~85196u, 3597u, 0u)), !vec3<bool>(false, var_2.a.a || false, false)));
}

