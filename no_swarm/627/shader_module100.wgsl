struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<f32>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec3<bool>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: array<i32, 13>;

var<private> global2: array<f32, 28> = array<f32, 28>(-1302f, 764f, 1193f, 1130f, -433f, -1775f, -1073f, 994f, 442f, 1237f, 564f, 447f, -872f, -1389f, -884f, -608f, -471f, -1083f, -728f, -350f, -437f, -762f, 541f, -1717f, -1375f, 1265f, 332f, 466f);

var<private> global3: f32;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> u32 {
    var var_0 = true;
    let var_1 = Struct_1(global2[_wgslsmith_index_u32(~21239u, 28u)], vec4<bool>(all(vec3<bool>(true, true, true)) && false, all(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true))), any(vec2<bool>(true, false))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(447f)) - _wgslsmith_div_f32(1023f, 787f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(14531u, 28u)]) + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(20650u, 28u)])), global2[_wgslsmith_index_u32(~firstLeadingBit(1u), 28u)]), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1069f, 1097f, 390f))))))), all(vec2<bool>(false, true)), vec3<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(5533u, 1u)) << (56087u % 32u), 28u)] + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(13585u, 28u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(firstLeadingBit(0u), 28u)] - 686f) - 141f), _wgslsmith_f_op_f32(step(545f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(0u, 28u)], -314f)))))));
    global2 = array<f32, 28>();
    global0 = array<Struct_1, 7>();
    let var_2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 1u, 1u), ~reverseBits(~(~vec3<u32>(31812u, 39534u, 1u))));
    return ~7235u;
}

fn func_2() -> Struct_2 {
    global2 = array<f32, 28>();
    var var_0 = -u_input.a.x;
    var var_1 = 0u;
    global1 = array<i32, 13>();
    let var_2 = ~vec4<u32>(~1u, 94253u, ~1u, select(func_3(), 43337u, !select(true, true, true)));
    return Struct_2(Struct_1(1687f, !(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(126f, _wgslsmith_f_op_f32(f32(-1f) * -480f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(7974u, 28u)] * -1000f)) * vec3<f32>(global2[_wgslsmith_index_u32(0u, 28u)], _wgslsmith_f_op_f32(f32(-1f) * -1437f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 28u)]))), false, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2[_wgslsmith_index_u32(var_2.x, 28u)], 490f, 317f))) - _wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(9598u, 28u)], global2[_wgslsmith_index_u32(0u, 28u)], global2[_wgslsmith_index_u32(var_2.x, 28u)]), vec3<f32>(global2[_wgslsmith_index_u32(var_2.x, 28u)], global2[_wgslsmith_index_u32(15815u, 28u)], -622f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, global2[_wgslsmith_index_u32(var_2.x, 28u)], global2[_wgslsmith_index_u32(var_2.x, 28u)]), vec3<f32>(global2[_wgslsmith_index_u32(var_2.x, 28u)], global2[_wgslsmith_index_u32(76548u, 28u)], 184f), vec3<bool>(false, true, false))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-784f, -248f, global2[_wgslsmith_index_u32(1u, 28u)]) + vec3<f32>(global2[_wgslsmith_index_u32(0u, 28u)], -1447f, -1352f))), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, false), vec3<bool>(true, false, false))))), 0u, true, global0[_wgslsmith_index_u32(~1u, 7u)], u_input.a.xy);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: f32) -> Struct_3 {
    let var_0 = 1526f;
    global0 = array<Struct_1, 7>();
    let var_1 = func_2();
    var var_2 = min(~(vec3<u32>(1u | var_1.b, ~1u, 4294967295u >> (1u % 32u)) >> (~_wgslsmith_div_vec3_u32(vec3<u32>(var_1.b, 4294967295u, 40574u), vec3<u32>(1780u, var_1.b, var_1.b)) % vec3<u32>(32u))), ~_wgslsmith_mod_vec3_u32(~countOneBits(vec3<u32>(var_1.b, 0u, 15139u)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.b, 95001u, var_1.b) ^ vec3<u32>(var_1.b, 0u, var_1.b), ~vec3<u32>(var_1.b, 0u, 22629u))));
    return Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-836f, _wgslsmith_f_op_f32(-arg_1.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2 - var_0))), !(!arg_0.x))))), Struct_1(773f, arg_1.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(-164f, 1066f, -226f) + vec3<f32>(arg_1.e.x, -1185f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_1.b, 28u)] + global2[_wgslsmith_index_u32(31031u, 28u)]))), !arg_1.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_2().d.e) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-343f, -1000f, -412f)))))), arg_1.b.xzw, ~vec2<u32>(var_2.x, _wgslsmith_dot_vec3_u32(max(vec3<u32>(40746u, var_2.x, var_1.b), vec3<u32>(var_1.b, var_1.b, 0u)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.x, 1u, 10115u), vec3<u32>(var_1.b, 53748u, var_2.x)))));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: i32, arg_3: Struct_3) -> bool {
    let var_0 = func_1(!select(arg_0.d.b, vec4<bool>(arg_0.c, true, arg_3.b.d, all(vec3<bool>(arg_3.b.b.x, arg_0.d.b.x, arg_0.c))), vec4<bool>(arg_1 > 4294967295u, any(arg_0.a.b.yww), true, false)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~abs(vec3<u32>(4294967295u, arg_0.b, arg_0.b)), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, arg_1, 9180u), _wgslsmith_add_vec3_u32(vec3<u32>(346u, 38502u, 0u), vec3<u32>(42992u, arg_1, arg_1))), ~abs(vec3<u32>(13960u, arg_0.b, arg_0.b)))), 7u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0.a.c.x, arg_3.a), _wgslsmith_f_op_f32(459f - 1125f))))));
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    global3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(444f))));
    global1 = array<i32, 13>();
    return true;
}

fn func_5(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: vec4<f32>) -> f32 {
    var var_0 = arg_1.x >> (arg_1.x % 32u);
    global0 = array<Struct_1, 7>();
    global3 = global2[_wgslsmith_index_u32(~0u, 28u)];
    var var_1 = arg_2.yxx;
    let var_2 = !vec2<bool>(false, arg_0.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(1u, 1u), reverseBits(19292u)), 28u)] - arg_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_5(select(vec4<bool>(true, func_4(Struct_2(Struct_1(global2[_wgslsmith_index_u32(31184u, 28u)], vec4<bool>(false, true, true, false), vec3<f32>(115f, 344f, 608f), false, vec3<f32>(global2[_wgslsmith_index_u32(47527u, 28u)], 883f, global2[_wgslsmith_index_u32(42720u, 28u)])), 16175u, true, Struct_1(-106f, vec4<bool>(false, true, true, false), vec3<f32>(1800f, 190f, global2[_wgslsmith_index_u32(25403u, 28u)]), true, vec3<f32>(global2[_wgslsmith_index_u32(1u, 28u)], global2[_wgslsmith_index_u32(4294967295u, 28u)], 813f)), u_input.b.yy), 1u, 1i >> (0u % 32u), func_1(vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(47066u, 7u)], global2[_wgslsmith_index_u32(37982u, 28u)])), true, !any(vec3<bool>(true, true, false))), vec4<bool>(false, true, false, true), func_2().d.b), min(_wgslsmith_div_vec2_u32(min(~vec2<u32>(62057u, 1u), select(vec2<u32>(4294967295u, 12932u), vec2<u32>(1u, 73837u), vec2<bool>(true, true))), ~func_1(vec4<bool>(true, true, false, true), global0[_wgslsmith_index_u32(4294967295u, 7u)], 354f).d), vec2<u32>(1u, countOneBits(1u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(30471u, 28u)] + global2[_wgslsmith_index_u32(25086u, 28u)]), global2[_wgslsmith_index_u32(~83684u, 28u)], global2[_wgslsmith_index_u32(0u, 28u)], -1388f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-762f, -394f, -1041f, 795f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 28u)], global2[_wgslsmith_index_u32(58669u, 28u)], 1000f, 138f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(158f, global2[_wgslsmith_index_u32(1u, 28u)], -413f, 1747f))))))));
    global2 = array<f32, 28>();
    let var_1 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -384f), func_1(vec4<bool>(false, true, (global1[_wgslsmith_index_u32(68173u, 13u)] >= 50254i) && true, all(vec3<bool>(false, true, false)) & true), global0[_wgslsmith_index_u32(~0u, 7u)], _wgslsmith_f_op_f32(ceil(-613f))).b, vec3<bool>(!any(vec2<bool>(true, true)), select(_wgslsmith_clamp_u32(1u, 4294967295u, 4294967295u), ~4294967295u, false) < 4294967295u, !func_4(func_2(), ~5690u, _wgslsmith_add_i32(u_input.a.x, -46109i), func_1(vec4<bool>(true, true, false, false), Struct_1(-1317f, vec4<bool>(false, true, true, false), vec3<f32>(var_0, 384f, -427f), false, vec3<f32>(var_0, 1724f, 381f)), global2[_wgslsmith_index_u32(1u, 28u)]))), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 32584u) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(65357u, 1u), vec2<u32>(34991u, 12175u)), ~vec2<u32>(16076u, 4294967295u)) % vec2<u32>(32u)), ~(~firstLeadingBit(vec2<u32>(0u, 69338u)))));
    global3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0)));
    let var_2 = reverseBits(~(~(firstTrailingBit(vec4<u32>(var_1.d.x, 1521u, 1u, 81274u)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(41147u, 31987u, 1u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, var_1.d.x, 27412u), vec4<u32>(8674u, var_1.d.x, 0u, 0u)))));
    let var_3 = select(~abs(vec3<i32>(firstTrailingBit(u_input.b.x), -2147483647i, ~u_input.b.x)), u_input.a, select(16215i != _wgslsmith_add_i32(~(-2147483647i), u_input.b.x & 16377i), true, _wgslsmith_f_op_f32(-484f + _wgslsmith_div_f32(var_0, var_1.a)) == -831f));
    var var_4 = func_2();
    global2 = array<f32, 28>();
    var var_5 = ~_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(firstTrailingBit(_wgslsmith_add_vec3_u32(var_2.zxz, var_2.xzw)), vec3<u32>(var_2.x, 0u, reverseBits(0u))), ~(~vec3<u32>(1u, var_2.x, 74003u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(612f, global2[_wgslsmith_index_u32(var_1.d.x, 28u)], 932f, var_0) + vec4<f32>(var_1.a, 1210f, var_0, var_0))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.d.a, -1684f, -573f, global2[_wgslsmith_index_u32(var_5.x, 28u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1747f, var_4.d.a, 1246f, 1165f) + vec4<f32>(var_0, var_1.a, 914f, -1220f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.c.x, var_4.d.e.x, global2[_wgslsmith_index_u32(8169u, 28u)], 1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(900f, -742f, var_0, -1957f) + vec4<f32>(1457f, var_1.a, -173f, global2[_wgslsmith_index_u32(0u, 28u)])))), var_4.d.d)), 4294967295u, ~_wgslsmith_mult_vec3_i32(firstTrailingBit(u_input.b), min(~u_input.b, vec3<i32>(var_3.x, var_3.x, var_3.x))), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(var_2.xx, ~firstLeadingBit(vec2<u32>(var_2.x, 114529u))), ~func_2().b), 67054u);
}

