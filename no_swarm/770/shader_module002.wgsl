struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-948f, 830f), vec2<f32>(1560f, -387f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-231f, 723f)))))) - vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1000f)))), -1752f))));
    global0 = array<bool, 26>();
    let var_1 = !(!select(vec4<bool>(true, !global0[_wgslsmith_index_u32(u_input.a, 26u)], true, global0[_wgslsmith_index_u32(u_input.a, 26u)]), select(select(vec4<bool>(global0[_wgslsmith_index_u32(7616u, 26u)], true, global0[_wgslsmith_index_u32(u_input.a, 26u)], global0[_wgslsmith_index_u32(38643u, 26u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 26u)], false, false), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 26u)], true, true)), vec4<bool>(true, false, global0[_wgslsmith_index_u32(31500u, 26u)], true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(15600u, 26u)]), false)), !(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)], false, false))));
    var var_2 = 666f;
    let var_3 = Struct_2(Struct_1(vec4<u32>(~u_input.a & u_input.a, ~(~122418u), ~(~u_input.a), u_input.a), !(!(!vec2<bool>(var_1.x, var_1.x)))), _wgslsmith_div_u32(reverseBits(_wgslsmith_add_u32(abs(13308u), u_input.a)), ~u_input.a));
    return reverseBits(-vec2<i32>(1i, 1i));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = countOneBits(min(_wgslsmith_mod_u32(max(~arg_0.a.x, 131413u | arg_0.a.x), u_input.a), ~arg_3.a.x));
    global0 = array<bool, 26>();
    let var_1 = -select(vec2<i32>(-1i, 0i), abs(firstTrailingBit(func_3())), any(!(!vec3<bool>(global0[_wgslsmith_index_u32(arg_0.a.x, 26u)], arg_0.b.x, false))));
    global0 = array<bool, 26>();
    var var_2 = 4348u << (_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(arg_3.a.x, arg_0.a.x, arg_3.a.x, 1272u)), ~abs(firstLeadingBit(arg_3.a))) % 32u);
    return arg_0;
}

fn func_4(arg_0: Struct_1) -> bool {
    global0 = array<bool, 26>();
    var var_0 = Struct_2(func_2(Struct_1(firstTrailingBit(~arg_0.a), !arg_0.b), global0[_wgslsmith_index_u32(arg_0.a.x, 26u)], _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1233f, -202f, -1704f)))), func_2(func_2(arg_0, global0[_wgslsmith_index_u32(arg_0.a.x, 26u)], _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2437f, -1000f, -157f, 1899f), vec4<f32>(223f, 882f, 509f, -428f), vec4<bool>(arg_0.b.x, global0[_wgslsmith_index_u32(1u, 26u)], false, arg_0.b.x))), Struct_1(arg_0.a, vec2<bool>(true, arg_0.b.x))), global0[_wgslsmith_index_u32(select(_wgslsmith_dot_vec3_u32(arg_0.a.yzz, arg_0.a.yyw), 4656u, true), 26u)], _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-859f, 623f, 714f, -491f)))), Struct_1(~vec4<u32>(arg_0.a.x, 40841u, u_input.a, 39190u), vec2<bool>(true, arg_0.b.x)))), 36498u);
    var_0 = Struct_2(func_2(Struct_1(arg_0.a, func_2(var_0.a, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, var_0.a.a.x), 26u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1299f, -1000f, -114f, -639f)), var_0.a).b), ((arg_0.a.x >> (var_0.b % 32u)) >> (65u % 32u)) < (_wgslsmith_sub_u32(var_0.a.a.x, 14074u) & abs(50748u)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1277f, 1105f, -1564f, _wgslsmith_f_op_f32(822f - -2953f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1000f, 1211f, 2269f)), !var_0.a.b.x)), Struct_1(vec4<u32>(0u, reverseBits(u_input.a), u_input.a | 1u, func_2(Struct_1(arg_0.a, vec2<bool>(arg_0.b.x, true)), true, vec4<f32>(-244f, 1049f, -598f, 166f), var_0.a).a.x), !vec2<bool>(arg_0.b.x, arg_0.b.x))), _wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_mod_u32(~var_0.b, _wgslsmith_dot_vec4_u32(var_0.a.a, vec4<u32>(4294967295u, u_input.a, 58568u, 1u)))), 47005u));
    global0 = array<bool, 26>();
    global0 = array<bool, 26>();
    return all(select(select(!select(vec4<bool>(global0[_wgslsmith_index_u32(116570u, 26u)], false, var_0.a.b.x, global0[_wgslsmith_index_u32(arg_0.a.x, 26u)]), vec4<bool>(true, var_0.a.b.x, var_0.a.b.x, true), vec4<bool>(false, false, true, true)), vec4<bool>(!global0[_wgslsmith_index_u32(u_input.a, 26u)], arg_0.b.x, true, true), true), select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(1u, 26u)] || arg_0.b.x, false), vec4<bool>(true, select(false, true, arg_0.b.x), false, true), false), select(select(vec4<bool>(arg_0.b.x, true, false, arg_0.b.x), select(vec4<bool>(arg_0.b.x, arg_0.b.x, false, false), vec4<bool>(true, arg_0.b.x, false, false), false), select(vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 26u)], true, var_0.a.b.x), vec4<bool>(global0[_wgslsmith_index_u32(var_0.a.a.x, 26u)], false, var_0.a.b.x, arg_0.b.x), false)), select(select(vec4<bool>(arg_0.b.x, var_0.a.b.x, false, var_0.a.b.x), vec4<bool>(arg_0.b.x, var_0.a.b.x, arg_0.b.x, true), vec4<bool>(false, false, true, arg_0.b.x)), !vec4<bool>(false, true, arg_0.b.x, global0[_wgslsmith_index_u32(var_0.a.a.x, 26u)]), vec4<bool>(var_0.a.b.x, false, arg_0.b.x, arg_0.b.x)), true | !arg_0.b.x)));
}

fn func_5(arg_0: vec3<bool>, arg_1: u32) -> Struct_1 {
    global0 = array<bool, 26>();
    global0 = array<bool, 26>();
    var var_0 = Struct_1(~(~firstLeadingBit(firstTrailingBit(vec4<u32>(1u, arg_1, arg_1, 47799u)))), func_2(Struct_1(~vec4<u32>(arg_1, u_input.a, 71573u, 4294967295u) & select(vec4<u32>(34882u, arg_1, 17229u, arg_1), vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), vec4<bool>(global0[_wgslsmith_index_u32(22543u, 26u)], true, arg_0.x, false)), arg_0.xz), !(!any(arg_0)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1036f, 498f, -723f, -1162f))))), func_2(func_2(func_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, arg_1, 0u), vec2<bool>(arg_0.x, true)), true, vec4<f32>(493f, -1000f, -458f, 1358f), Struct_1(vec4<u32>(arg_1, 1u, 39254u, arg_1), vec2<bool>(false, true))), true, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(489f, -898f, 389f, 131f), vec4<f32>(-409f, 1000f, 2206f, 466f), vec4<bool>(true, global0[_wgslsmith_index_u32(arg_1, 26u)], true, arg_0.x))), func_2(Struct_1(vec4<u32>(u_input.a, u_input.a, 4294967295u, arg_1), vec2<bool>(false, arg_0.x)), true, vec4<f32>(716f, -1085f, -252f, 303f), Struct_1(vec4<u32>(59598u, 0u, arg_1, 4294967295u), arg_0.yx))), true, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-711f, 2036f, -734f, -679f)))), func_2(func_2(Struct_1(vec4<u32>(0u, u_input.a, arg_1, arg_1), vec2<bool>(arg_0.x, arg_0.x)), global0[_wgslsmith_index_u32(4294967295u, 26u)], vec4<f32>(-143f, 1093f, 1058f, -1283f), Struct_1(vec4<u32>(u_input.a, 38356u, 25584u, 15751u), vec2<bool>(true, true))), all(vec4<bool>(false, arg_0.x, global0[_wgslsmith_index_u32(4294967295u, 26u)], true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1093f, -1886f, 885f, 420f)), Struct_1(vec4<u32>(25092u, 1u, 4294967295u, arg_1), vec2<bool>(true, false))))).b);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-825f - -520f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-253f - -607f)) + 292f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1008f - 260f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1414f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -949f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(648f, -915f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1201f), 1471f, true))))));
    let var_2 = func_2(func_2(func_2(Struct_1(select(var_0.a, vec4<u32>(37237u, 28426u, 19578u, arg_1), true), arg_0.yz), arg_0.x, vec4<f32>(var_1.x, -107f, -403f, _wgslsmith_f_op_f32(-var_1.x)), Struct_1(vec4<u32>(u_input.a, 4294967295u, u_input.a, 56406u), vec2<bool>(true, true))), any(!vec4<bool>(false, false, false, arg_0.x)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -666f), var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -509f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + 588f))), Struct_1(var_0.a, func_2(func_2(Struct_1(var_0.a, vec2<bool>(global0[_wgslsmith_index_u32(8951u, 26u)], true)), arg_0.x, vec4<f32>(var_1.x, 1025f, var_1.x, var_1.x), Struct_1(vec4<u32>(15829u, 4294967295u, 4294967295u, 0u), vec2<bool>(true, arg_0.x))), false, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1827f, var_1.x, 812f, 262f), vec4<f32>(597f, var_1.x, var_1.x, var_1.x))), Struct_1(vec4<u32>(u_input.a, 0u, 22310u, 3299u), arg_0.xx)).b)), all(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_1.x)), -130f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -575f))))), Struct_1(var_0.a, vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~4294967295u, firstTrailingBit(arg_1)), 26u)], all(vec4<bool>(true, true, true, true)))));
    return Struct_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(var_2.a, ~var_2.a), var_0.a, vec4<u32>(0u, 83774u, ~max(28553u, u_input.a), ~var_2.a.x)), vec2<bool>(any(select(!vec3<bool>(arg_0.x, false, false), !arg_0, false)), all(arg_0)));
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = func_5(select(vec3<bool>(false, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, ~u_input.a), 26u)], true), vec3<bool>(func_4(func_2(Struct_1(vec4<u32>(u_input.a, 103802u, u_input.a, 1u), vec2<bool>(true, false)), false, vec4<f32>(296f, 265f, 1000f, 1432f), Struct_1(vec4<u32>(u_input.a, 4294967295u, 0u, 0u), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)])))), false, (u_input.a <= 0u) != func_4(Struct_1(vec4<u32>(16076u, 38578u, u_input.a, u_input.a), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(0u, 26u)])))), !(!(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)], false)))), ~u_input.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-773f, -464f, -1819f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(969f, -1558f, 707f))))), vec3<bool>(!global0[_wgslsmith_index_u32(0u, 26u)], !global0[_wgslsmith_index_u32(u_input.a, 26u)], any(vec4<bool>(false, true, true, false)))))));
    let var_2 = Struct_2(func_2(var_0, -1671f >= var_1.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1011f, -1026f, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, var_1.x, -806f, 612f))), select(vec4<bool>(false, false, var_0.b.x, var_0.b.x), vec4<bool>(var_0.b.x, false, true, true), vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(1u, 26u)]))))), Struct_1(vec4<u32>(var_0.a.x, min(35441u, u_input.a), _wgslsmith_dot_vec3_u32(var_0.a.wzz, var_0.a.xzx), _wgslsmith_mod_u32(76416u, 4294967295u)), var_0.b)), 92024u);
    let var_3 = Struct_1(var_0.a, var_2.a.b);
    var var_4 = !select(vec3<bool>(false, func_5(vec3<bool>(true, true, false), ~var_3.a.x).b.x, func_4(Struct_1(vec4<u32>(var_3.a.x, 0u, 0u, var_0.a.x), vec2<bool>(global0[_wgslsmith_index_u32(25106u, 26u)], var_0.b.x)))), select(select(!vec3<bool>(var_2.a.b.x, true, var_3.b.x), vec3<bool>(var_3.b.x, var_0.b.x, false), true), select(vec3<bool>(var_3.b.x, var_2.a.b.x, true), !vec3<bool>(var_0.b.x, false, var_3.b.x), select(vec3<bool>(var_0.b.x, true, false), vec3<bool>(var_2.a.b.x, var_2.a.b.x, global0[_wgslsmith_index_u32(var_2.a.a.x, 26u)]), false)), true), !vec3<bool>(select(var_2.a.b.x, true, var_2.a.b.x), !var_0.b.x, true));
    return Struct_2(Struct_1(firstTrailingBit(var_0.a), select(var_0.b, var_2.a.b, func_2(Struct_1(vec4<u32>(0u, var_2.a.a.x, var_2.b, 108913u), var_3.b), global0[_wgslsmith_index_u32(76763u, 26u)], vec4<f32>(422f, 1015f, var_1.x, var_1.x), func_5(vec3<bool>(var_2.a.b.x, var_0.b.x, var_0.b.x), 86499u)).b)), ~(~_wgslsmith_clamp_u32(0u, firstTrailingBit(0u), ~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(30137i, 11879i, -1i)), max(vec3<i32>(-97870i, -2147483647i, 1i), vec3<i32>(45809i, 26026i, 48251i))), i32(-1i) * -8108i));
    let var_1 = var_0;
    global0 = array<bool, 26>();
    global0 = array<bool, 26>();
    global0 = array<bool, 26>();
    global0 = array<bool, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(max(var_0.a.a.x, ~(~0u))));
}

