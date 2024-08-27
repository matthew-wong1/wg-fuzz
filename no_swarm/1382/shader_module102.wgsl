struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(3079u, vec3<f32>(132f, -755f, 1771f)), Struct_1(53318u, vec3<f32>(-613f, -356f, 614f)), Struct_1(5985u, vec3<f32>(536f, -338f, -779f)), Struct_1(4294967295u, vec3<f32>(591f, 938f, 1622f)), Struct_1(0u, vec3<f32>(-179f, -993f, 1000f)), Struct_1(23813u, vec3<f32>(1152f, 311f, -1000f)), Struct_1(0u, vec3<f32>(1592f, -655f, 1000f)), Struct_1(1u, vec3<f32>(-393f, 2375f, 1000f)), Struct_1(68251u, vec3<f32>(-222f, 1696f, 1947f)), Struct_1(1u, vec3<f32>(1000f, 291f, 1337f)), Struct_1(91145u, vec3<f32>(-887f, -878f, 307f)), Struct_1(29074u, vec3<f32>(-2201f, -231f, -711f)), Struct_1(1u, vec3<f32>(143f, 1007f, 1039f)), Struct_1(1u, vec3<f32>(581f, 288f, -451f)), Struct_1(1u, vec3<f32>(-1000f, -1449f, 656f)), Struct_1(5097u, vec3<f32>(-1605f, -658f, 773f)), Struct_1(1u, vec3<f32>(817f, -678f, -683f)), Struct_1(4294967295u, vec3<f32>(743f, 1075f, 1439f)), Struct_1(41875u, vec3<f32>(-1149f, 1000f, 862f)), Struct_1(4294967295u, vec3<f32>(-1300f, 411f, -369f)), Struct_1(4294967295u, vec3<f32>(-461f, -140f, -1994f)), Struct_1(1876u, vec3<f32>(913f, 982f, 204f)), Struct_1(4294967295u, vec3<f32>(-1000f, -1135f, -863f)), Struct_1(4294967295u, vec3<f32>(638f, -488f, 1219f)), Struct_1(1u, vec3<f32>(1000f, -721f, -167f)), Struct_1(48467u, vec3<f32>(167f, 329f, 382f)), Struct_1(9251u, vec3<f32>(840f, 574f, -849f)), Struct_1(42864u, vec3<f32>(3308f, 327f, -332f)), Struct_1(12086u, vec3<f32>(1000f, -1000f, -707f)), Struct_1(1u, vec3<f32>(1839f, -202f, 1896f)));

var<private> global1: array<vec3<f32>, 25> = array<vec3<f32>, 25>(vec3<f32>(1186f, -865f, -1157f), vec3<f32>(-916f, 714f, -1098f), vec3<f32>(512f, 1347f, -2131f), vec3<f32>(193f, 1000f, 435f), vec3<f32>(-135f, 796f, 1000f), vec3<f32>(-974f, 1000f, -1000f), vec3<f32>(1410f, -656f, 187f), vec3<f32>(-768f, 203f, -156f), vec3<f32>(-1921f, -1721f, 1663f), vec3<f32>(399f, 1022f, 1000f), vec3<f32>(1000f, 568f, 626f), vec3<f32>(-1926f, -1520f, 336f), vec3<f32>(1000f, -158f, 726f), vec3<f32>(-1066f, -539f, 1180f), vec3<f32>(-1552f, 1032f, -3032f), vec3<f32>(-708f, 1000f, -513f), vec3<f32>(-724f, -196f, 2059f), vec3<f32>(1673f, -1051f, 504f), vec3<f32>(125f, -311f, -1843f), vec3<f32>(598f, 627f, -2442f), vec3<f32>(-293f, -321f, -1969f), vec3<f32>(1132f, -928f, 300f), vec3<f32>(1000f, -577f, -869f), vec3<f32>(1311f, 1516f, 312f), vec3<f32>(-1852f, 103f, -257f));

var<private> global2: Struct_3;

var<private> global3: vec3<i32>;

var<private> global4: array<bool, 15>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: vec4<i32>, arg_1: f32) -> Struct_3 {
    let var_0 = true;
    global1 = array<vec3<f32>, 25>();
    global1 = array<vec3<f32>, 25>();
    var var_1 = 0u;
    let var_2 = Struct_1(~firstLeadingBit(9710u), global1[_wgslsmith_index_u32(select(~11583u, ~(~_wgslsmith_sub_u32(u_input.c.x, u_input.a.x)), false), 25u)]);
    return Struct_3(global2.a);
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_1 {
    global4 = array<bool, 15>();
    return Struct_1(_wgslsmith_dot_vec3_u32((vec3<u32>(1u, 40226u, u_input.b) >> (abs(vec3<u32>(62402u, u_input.b, u_input.c.x)) % vec3<u32>(32u))) << (u_input.a.xxy % vec3<u32>(32u)), u_input.c), global1[_wgslsmith_index_u32(u_input.b, 25u)]);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: u32, arg_3: Struct_1) -> Struct_3 {
    var var_0 = arg_3;
    let var_1 = ~func_2(global2.a, global4[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(var_0.a, arg_2)), 15u)]).a;
    let var_2 = func_2(_wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(-arg_0.b)), !global4[_wgslsmith_index_u32(60472u, 15u)]);
    var var_3 = !select(select(select(vec3<bool>(true, global4[_wgslsmith_index_u32(46377u, 15u)], true), select(vec3<bool>(arg_0.a.x, true, arg_0.a.x), vec3<bool>(true, false, true), vec3<bool>(false, arg_0.a.x, global4[_wgslsmith_index_u32(37764u, 15u)])), u_input.d >= -2147483647i), select(!vec3<bool>(true, true, arg_0.a.x), vec3<bool>(true, true, arg_0.a.x), arg_0.a.x), select(select(vec3<bool>(false, false, true), vec3<bool>(arg_0.a.x, true, true), vec3<bool>(global4[_wgslsmith_index_u32(2235u, 15u)], false, arg_0.a.x)), !vec3<bool>(true, arg_0.a.x, false), select(vec3<bool>(arg_0.a.x, global4[_wgslsmith_index_u32(var_2.a, 15u)], true), vec3<bool>(true, arg_0.a.x, global4[_wgslsmith_index_u32(arg_2, 15u)]), true))), select(select(select(vec3<bool>(arg_0.a.x, true, global4[_wgslsmith_index_u32(14445u, 15u)]), vec3<bool>(arg_0.a.x, global4[_wgslsmith_index_u32(var_0.a, 15u)], true), vec3<bool>(arg_0.a.x, false, global4[_wgslsmith_index_u32(1u, 15u)])), select(vec3<bool>(false, true, false), vec3<bool>(global4[_wgslsmith_index_u32(var_1, 15u)], false, global4[_wgslsmith_index_u32(4294967295u, 15u)]), false), !vec3<bool>(false, global4[_wgslsmith_index_u32(4294967295u, 15u)], arg_0.a.x)), select(!vec3<bool>(arg_0.a.x, global4[_wgslsmith_index_u32(0u, 15u)], arg_0.a.x), vec3<bool>(arg_0.a.x, global4[_wgslsmith_index_u32(95048u, 15u)], true), arg_0.a.x), !select(vec3<bool>(true, global4[_wgslsmith_index_u32(var_2.a, 15u)], false), vec3<bool>(false, global4[_wgslsmith_index_u32(arg_2, 15u)], true), vec3<bool>(false, global4[_wgslsmith_index_u32(36521u, 15u)], true))), any(vec2<bool>(all(vec2<bool>(true, global4[_wgslsmith_index_u32(arg_3.a, 15u)])), true)));
    var var_4 = func_2(global2.a, (_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_3.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -839f)) < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3.b.x)))) | false);
    return func_1(vec4<i32>(~(-6809i), firstTrailingBit(~(-2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(~(-2147483647i), global3.x, global3.x, 0i), -(~vec4<i32>(0i, u_input.d, 0i, global3.x))), 79683i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a + _wgslsmith_f_op_f32(f32(-1f) * -2131f)))));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec4<bool>, arg_3: vec2<bool>) -> u32 {
    global1 = array<vec3<f32>, 25>();
    let var_0 = arg_0;
    global0 = array<Struct_1, 30>();
    var var_1 = arg_0;
    global2 = Struct_3(-1067f);
    return ~_wgslsmith_sub_u32(46856u, func_2(1144f, !any(vec4<bool>(arg_2.x, true, true, arg_2.x))).a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(min(func_4(func_3(Struct_2(vec2<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 15u)], global4[_wgslsmith_index_u32(u_input.a.x, 15u)]), global2.a), func_1(vec4<i32>(2810i, u_input.d, -2147483647i, 0i), 1000f), _wgslsmith_sub_u32(75771u, u_input.b), func_2(-418f, false)), -1i, select(!vec4<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 15u)], false, false, global4[_wgslsmith_index_u32(38247u, 15u)]), !vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.c.x, 15u)], global4[_wgslsmith_index_u32(25296u, 15u)], false), !vec4<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 15u)], true, true, global4[_wgslsmith_index_u32(32897u, 15u)])), select(vec2<bool>(true, false), vec2<bool>(true, true), !vec2<bool>(global4[_wgslsmith_index_u32(u_input.b, 15u)], false))), _wgslsmith_add_u32((u_input.b ^ 30296u) << (~11326u % 32u), _wgslsmith_dot_vec2_u32(~u_input.a.xy, select(vec2<u32>(u_input.a.x, u_input.b), vec2<u32>(u_input.c.x, 1u), vec2<bool>(true, true))))), func_4(func_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global3.x, 0i, -2147483647i, global3.x), vec4<i32>(global3.x, global3.x, global3.x, u_input.e)), select(vec4<i32>(global3.x, u_input.d, u_input.e, -50129i), vec4<i32>(-2147483647i, u_input.d, 824i, -9946i), vec4<bool>(false, global4[_wgslsmith_index_u32(4294967295u, 15u)], global4[_wgslsmith_index_u32(u_input.b, 15u)], global4[_wgslsmith_index_u32(u_input.b, 15u)])), vec4<i32>(-8648i, global3.x, 15385i, -38635i) & vec4<i32>(global3.x, 16808i, global3.x, global3.x)), 1853f), max(select(_wgslsmith_mult_i32(-1i, u_input.e), ~global3.x, global4[_wgslsmith_index_u32(0u, 15u)]), 0i), !vec4<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 15u)] || false, global2.a >= global2.a, all(vec3<bool>(global4[_wgslsmith_index_u32(25289u, 15u)], false, global4[_wgslsmith_index_u32(1u, 15u)])), all(vec2<bool>(false, global4[_wgslsmith_index_u32(u_input.c.x, 15u)]))), vec2<bool>((global3.x > global3.x) || select(true, global4[_wgslsmith_index_u32(4294967295u, 15u)], global4[_wgslsmith_index_u32(4294967295u, 15u)]), true)));
    let var_1 = _wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(max(27212i, 18762i) ^ select(-73255i, u_input.e, true), 0i, 588i)), _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(9103i, 1i, -21291i) & (vec3<i32>(u_input.d, 39209i, u_input.d) ^ vec3<i32>(-14225i, 2147483647i, global3.x))), -_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(18048i, global3.x, global3.x), vec3<i32>(u_input.d, -5749i, -10182i)), ~vec3<i32>(2147483647i, global3.x, global3.x)), vec3<i32>(-2147483647i | (u_input.e | 1i), global3.x, global3.x)));
    var var_2 = max(var_1, _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(var_1.x, var_1.x), ~global3.x, u_input.d), vec3<i32>(u_input.e, 2147483647i << (var_0.x % 32u), 19305i), -var_1), var_1, ~(~(var_1 ^ var_1))));
    var var_3 = Struct_2(select(!select(vec2<bool>(true, global4[_wgslsmith_index_u32(1u, 15u)]), !vec2<bool>(global4[_wgslsmith_index_u32(var_0.x, 15u)], global4[_wgslsmith_index_u32(57452u, 15u)]), global2.a < global2.a), vec2<bool>(true, !any(vec2<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 15u)], global4[_wgslsmith_index_u32(u_input.c.x, 15u)]))), global4[_wgslsmith_index_u32(_wgslsmith_add_u32(~1u, _wgslsmith_mod_u32(var_0.x, 1u) >> (~u_input.c.x % 32u)), 15u)]), 1369f);
    global1 = array<vec3<f32>, 25>();
    global4 = array<bool, 15>();
    global1 = array<vec3<f32>, 25>();
    var var_4 = vec4<bool>(select(false, any(select(select(vec4<bool>(true, true, false, global4[_wgslsmith_index_u32(0u, 15u)]), vec4<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 15u)], false, true, false), vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 15u)], true, true, true)), !vec4<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 15u)], global4[_wgslsmith_index_u32(var_0.x, 15u)], true, global4[_wgslsmith_index_u32(u_input.b, 15u)]), vec4<bool>(global4[_wgslsmith_index_u32(u_input.b, 15u)], true, var_3.a.x, global4[_wgslsmith_index_u32(7994u, 15u)]))), global4[_wgslsmith_index_u32(abs(~0u >> (firstLeadingBit(var_0.x) % 32u)), 15u)]), true, all(select(vec3<bool>(var_3.a.x, any(vec3<bool>(var_3.a.x, false, false)), global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, 0u), 15u)]), vec3<bool>(true, true, all(vec4<bool>(var_3.a.x, var_3.a.x, false, global4[_wgslsmith_index_u32(var_0.x, 15u)]))), vec3<bool>(true, true, true))), any(vec4<bool>(!any(vec4<bool>(true, var_3.a.x, var_3.a.x, true)), true, true, false)));
    let var_5 = ~u_input.a.zwx;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.www, _wgslsmith_add_vec2_i32(vec2<i32>(-10484i, var_1.x) & firstTrailingBit(vec2<i32>(1i, -47131i)), var_2.xz));
}

