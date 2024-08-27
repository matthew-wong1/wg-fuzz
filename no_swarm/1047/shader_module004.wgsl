struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: Struct_1,
    d: u32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
    b: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<i32>;

var<private> global2: vec2<i32> = vec2<i32>(1i, -1i);

var<private> global3: array<f32, 24> = array<f32, 24>(2222f, 1526f, -1689f, -1167f, 916f, -1217f, -686f, -529f, -1253f, -158f, -782f, -1746f, -1796f, -420f, -1834f, 543f, 1000f, 427f, -1134f, 191f, -1088f, -1000f, -736f, 1303f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<i32>) -> vec2<i32> {
    global1 = arg_0 >> (vec2<u32>(~global0.a >> (_wgslsmith_sub_u32(abs(global0.a), ~0u) % 32u), 51362u) % vec2<u32>(32u));
    global3 = array<f32, 24>();
    global3 = array<f32, 24>();
    global3 = array<f32, 24>();
    global2 = vec2<i32>(arg_0.x, arg_1.x);
    return vec2<i32>(-1i, arg_0.x);
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_3) -> bool {
    global0 = arg_2;
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(~34073u, 24u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_2.a, 24u)]) + global3[_wgslsmith_index_u32(abs(62069u), 24u)])), -1853f, -1283f), vec4<f32>(693f, -1043f, _wgslsmith_f_op_f32(abs(2151f)), 115f));
    let var_1 = 30444u;
    let var_2 = vec2<bool>(arg_0, !any(select(vec4<bool>(arg_1.x, false, false, true), select(vec4<bool>(arg_1.x, arg_0, arg_1.x, false), vec4<bool>(arg_1.x, false, arg_0, arg_1.x), arg_0), vec4<bool>(false, arg_0, arg_1.x, false))));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * global3[_wgslsmith_index_u32(0u, 24u)])) + global3[_wgslsmith_index_u32(48884u, 24u)])), -390f);
    return all(select(vec3<bool>(true, var_2.x, any(vec3<bool>(arg_0, true, false)) | (4294967295u == arg_2.a)), !vec3<bool>(select(arg_0, var_2.x, true), any(vec4<bool>(true, true, false, true)), var_3.x >= var_0.x), !arg_1));
}

fn func_2(arg_0: vec2<i32>) -> Struct_5 {
    let var_0 = Struct_3(global0.a);
    var var_1 = vec2<i32>(-2147483647i, ~(-2147483647i | global1.x) >> ((89622u >> (~(~var_0.a) % 32u)) % 32u));
    global0 = var_0;
    let var_2 = !vec4<bool>(func_3(true, vec3<bool>(true, true, true), var_0), !any(vec2<bool>(false, true)), false, _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1u, var_0.a, var_0.a)), _wgslsmith_add_vec3_u32(vec3<u32>(global0.a, global0.a, 2099u), vec3<u32>(var_0.a, global0.a, global0.a))) < 4294967295u);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 24u)], global3[_wgslsmith_index_u32(1u, 24u)], -1000f, -432f))), vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 24u)], 530f, global3[_wgslsmith_index_u32(4294967295u, 24u)], 841f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1301f, global3[_wgslsmith_index_u32(35408u, 24u)], -1125f, -310f) + vec4<f32>(470f, 225f, 675f, -771f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3[_wgslsmith_index_u32(1u, 24u)], global3[_wgslsmith_index_u32(global0.a, 24u)], 1000f, -1184f))))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1982f, global3[_wgslsmith_index_u32(1u, 24u)], 1869f, global3[_wgslsmith_index_u32(4294967295u, 24u)]) + vec4<f32>(359f, global3[_wgslsmith_index_u32(global0.a, 24u)], -1488f, global3[_wgslsmith_index_u32(67391u, 24u)])), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3[_wgslsmith_index_u32(81791u, 24u)], 538f, global3[_wgslsmith_index_u32(global0.a, 24u)], global3[_wgslsmith_index_u32(var_0.a, 24u)]), vec4<f32>(1179f, global3[_wgslsmith_index_u32(53720u, 24u)], global3[_wgslsmith_index_u32(var_0.a, 24u)], global3[_wgslsmith_index_u32(var_0.a, 24u)]))))))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3[_wgslsmith_index_u32(global0.a, 24u)], global3[_wgslsmith_index_u32(111689u, 24u)], global3[_wgslsmith_index_u32(56383u, 24u)], 520f), vec4<f32>(global3[_wgslsmith_index_u32(global0.a, 24u)], global3[_wgslsmith_index_u32(global0.a, 24u)], -553f, global3[_wgslsmith_index_u32(49331u, 24u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 24u)], 219f, -1353f, -1083f)), var_2)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3[_wgslsmith_index_u32(31482u, 24u)], 354f, global3[_wgslsmith_index_u32(4294967295u, 24u)], global3[_wgslsmith_index_u32(var_0.a, 24u)]), vec4<f32>(global3[_wgslsmith_index_u32(global0.a, 24u)], global3[_wgslsmith_index_u32(1u, 24u)], global3[_wgslsmith_index_u32(66213u, 24u)], 101f)))), true)))));
    return Struct_5(Struct_3(1u), Struct_2(abs(var_0.a >> (23743u % 32u)), _wgslsmith_f_op_vec2_f32(-var_3.zx), Struct_1(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-584f + var_3.x))), 4294967295u, ~vec2<u32>(0u, ~78009u)), Struct_2(~min(_wgslsmith_mod_u32(61685u, global0.a), ~var_0.a), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_3.x, global3[_wgslsmith_index_u32(0u, 24u)]))), vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 24u)], global3[_wgslsmith_index_u32(var_0.a, 24u)]), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_3.zx * vec2<f32>(-1573f, -1000f)) * vec2<f32>(global3[_wgslsmith_index_u32(29857u, 24u)], -292f)))), Struct_1(var_2.x, var_3.x), abs(45823u), vec2<u32>(~global0.a | global0.a, global0.a)));
}

fn func_4(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_5, arg_3: f32) -> Struct_3 {
    let var_0 = func_2(~countOneBits(vec2<i32>(global2.x, ~(-11671i)))).a;
    var var_1 = _wgslsmith_mult_vec2_u32(arg_2.c.e, arg_2.c.e);
    global0 = func_2(vec2<i32>(-1i, _wgslsmith_clamp_i32(~global2.x, 1i, func_1(arg_0, vec4<i32>(global2.x, u_input.a, global1.x, -38296i)).x) ^ -26018i)).a;
    var var_2 = arg_2.a;
    var_1 = ~vec2<u32>(~33155u, var_0.a);
    return Struct_3(~(reverseBits(global0.a) ^ max(_wgslsmith_clamp_u32(var_2.a, var_0.a, global0.a), 7388u ^ arg_2.a.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(~abs(1u)) << (4294967295u % 32u);
    let var_1 = Struct_5(func_4(func_1(_wgslsmith_mod_vec2_i32(vec2<i32>(-29491i, -17771i), vec2<i32>(21174i, 1i)) >> (~vec2<u32>(global0.a, 4294967295u) % vec2<u32>(32u)), vec4<i32>(u_input.a, 1i, 1i, global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global0.a, 24u)]))), func_2(vec2<i32>(1i, global1.x | global1.x)), -432f), Struct_2(global0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1069f) * vec2<f32>(global3[_wgslsmith_index_u32(global0.a, 24u)], -1200f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(516f, global3[_wgslsmith_index_u32(global0.a, 24u)]) + vec2<f32>(-1044f, -524f))))), Struct_1(func_3(true, vec3<bool>(false, true, true), func_2(vec2<i32>(global1.x, -19921i)).a), 1000f), 49272u, ~vec2<u32>(_wgslsmith_div_u32(74179u, 4294967295u), ~global0.a)), Struct_2(min(global0.a, global0.a), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -192f), 1674f), func_2(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global2.x, 0i), vec2<i32>(0i, global1.x)), vec2<i32>(-31932i, 2147483647i))).b.c, select(_wgslsmith_mult_u32(25600u, global0.a), 1u, false) | 1u, ~min(select(vec2<u32>(global0.a, 1u), vec2<u32>(4294967295u, 8124u), vec2<bool>(true, true)), ~vec2<u32>(global0.a, 11125u))));
    var var_2 = Struct_1(select(select(var_1.b.c.a, true, func_2(vec2<i32>(2147483647i, global1.x)).c.c.a), var_1.b.c.a, true), -999f);
    let var_3 = Struct_3(func_2(-vec2<i32>(global1.x << (26883u % 32u), min(-1i, global1.x))).c.e.x);
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(402f)) - 1038f), 1155f)) - var_1.c.b);
    global1 = -vec2<i32>(firstLeadingBit(_wgslsmith_sub_i32(u_input.a, 0i)), global2.x) ^ -(~(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(-46869i, global2.x)) & ~vec2<i32>(global1.x, global1.x)));
    let var_5 = Struct_4(global3[_wgslsmith_index_u32(var_3.a, 24u)] <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(542f - -980f), -196f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.b * 359f), _wgslsmith_f_op_f32(var_4.x + var_2.b)))), global3[_wgslsmith_index_u32(global0.a >> (~var_1.c.a % 32u), 24u)]);
    global2 = min(abs(~vec2<i32>(u_input.a, abs(-1i))), -(select(vec2<i32>(13382i, -16137i), -vec2<i32>(0i, -27514i), !vec2<bool>(var_2.a, false)) & -max(vec2<i32>(global2.x, u_input.a), vec2<i32>(global2.x, -2147483647i))));
    var var_6 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_1.c.b), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, global3[_wgslsmith_index_u32(9367u, 24u)], 1840f, 323f))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-349f + global3[_wgslsmith_index_u32(var_1.c.e.x, 24u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(133f - global3[_wgslsmith_index_u32(var_6.a, 24u)])), var_2.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_6.b.x)))))), vec3<u32>(~firstLeadingBit(1u), ~_wgslsmith_sub_u32(min(global0.a, 77356u), func_4(vec2<i32>(u_input.a, 0i), var_6.c.b, var_1, global3[_wgslsmith_index_u32(1u, 24u)]).a), func_4(select(select(vec2<i32>(u_input.a, global2.x), vec2<i32>(23413i, 68050i), var_2.a), ~vec2<i32>(global2.x, global2.x), vec2<bool>(true, var_2.a)), _wgslsmith_f_op_f32(f32(-1f) * -1521f), func_2(vec2<i32>(1i, u_input.a)), _wgslsmith_f_op_f32(238f - _wgslsmith_f_op_f32(sign(var_2.b)))).a), abs(var_6.e | vec2<u32>(~global0.a, abs(var_1.a.a))));
}

