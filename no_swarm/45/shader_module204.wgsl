struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: Struct_2,
    d: f32,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(vec3<i32>(-1i, -1i, -1i), vec3<bool>(true, false, true), Struct_1(910f)), Struct_2(vec3<i32>(-9810i, -62517i, -4592i), vec3<bool>(false, true, false), Struct_1(1164f)), Struct_2(vec3<i32>(-34917i, -1i, 2147483647i), vec3<bool>(false, true, false), Struct_1(1026f)), Struct_2(vec3<i32>(5898i, 0i, 0i), vec3<bool>(true, false, false), Struct_1(-2440f)), Struct_2(vec3<i32>(-3893i, 12645i, 2147483647i), vec3<bool>(false, false, false), Struct_1(786f)), Struct_2(vec3<i32>(50056i, i32(-2147483648), -24581i), vec3<bool>(true, true, true), Struct_1(404f)), Struct_2(vec3<i32>(-18565i, -14210i, 2147483647i), vec3<bool>(false, true, false), Struct_1(-1356f)), Struct_2(vec3<i32>(-35538i, -30834i, -1i), vec3<bool>(false, true, true), Struct_1(1118f)), Struct_2(vec3<i32>(31023i, -77061i, -23105i), vec3<bool>(false, true, false), Struct_1(-297f)), Struct_2(vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), vec3<bool>(false, true, false), Struct_1(-497f)), Struct_2(vec3<i32>(1i, 1i, 0i), vec3<bool>(true, true, false), Struct_1(232f)), Struct_2(vec3<i32>(0i, i32(-2147483648), 0i), vec3<bool>(true, true, true), Struct_1(218f)), Struct_2(vec3<i32>(2147483647i, i32(-2147483648), -6174i), vec3<bool>(false, false, true), Struct_1(942f)), Struct_2(vec3<i32>(1i, i32(-2147483648), 1i), vec3<bool>(true, true, true), Struct_1(116f)), Struct_2(vec3<i32>(1080i, 14154i, i32(-2147483648)), vec3<bool>(true, false, false), Struct_1(-783f)), Struct_2(vec3<i32>(-2652i, 1i, 0i), vec3<bool>(false, true, true), Struct_1(1161f)), Struct_2(vec3<i32>(-2044i, 46859i, 36604i), vec3<bool>(true, false, false), Struct_1(-132f)), Struct_2(vec3<i32>(2693i, 17215i, -1i), vec3<bool>(false, true, false), Struct_1(303f)), Struct_2(vec3<i32>(22737i, 35227i, i32(-2147483648)), vec3<bool>(true, false, true), Struct_1(-608f)), Struct_2(vec3<i32>(5582i, 9422i, 12883i), vec3<bool>(true, false, true), Struct_1(184f)), Struct_2(vec3<i32>(31677i, -1i, 0i), vec3<bool>(false, true, false), Struct_1(-239f)), Struct_2(vec3<i32>(-1i, i32(-2147483648), -14281i), vec3<bool>(false, false, true), Struct_1(-264f)), Struct_2(vec3<i32>(37613i, -1725i, -1i), vec3<bool>(true, true, false), Struct_1(1086f)), Struct_2(vec3<i32>(36370i, 47134i, 0i), vec3<bool>(true, false, true), Struct_1(-1801f)), Struct_2(vec3<i32>(-54097i, 1i, 20719i), vec3<bool>(true, false, false), Struct_1(-406f)), Struct_2(vec3<i32>(0i, -20677i, -23904i), vec3<bool>(false, false, true), Struct_1(-238f)), Struct_2(vec3<i32>(i32(-2147483648), 5801i, 34997i), vec3<bool>(true, true, false), Struct_1(562f)), Struct_2(vec3<i32>(2147483647i, -16731i, 2147483647i), vec3<bool>(true, true, false), Struct_1(-1000f)));

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(-373f), Struct_1(-766f), Struct_1(-1052f), Struct_1(-929f), Struct_1(-228f), Struct_1(898f), Struct_1(104f), Struct_1(416f), Struct_1(-1000f), Struct_1(234f), Struct_1(-1014f), Struct_1(-198f), Struct_1(-1485f), Struct_1(335f), Struct_1(143f), Struct_1(347f), Struct_1(-741f), Struct_1(-776f), Struct_1(1448f), Struct_1(-252f), Struct_1(-640f), Struct_1(-578f), Struct_1(288f), Struct_1(-1351f), Struct_1(-1000f), Struct_1(-192f), Struct_1(593f), Struct_1(698f));

var<private> global2: array<vec2<bool>, 27> = array<vec2<bool>, 27>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    global0 = array<Struct_2, 28>();
    var var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-546f + 1408f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1083f * 365f), _wgslsmith_f_op_f32(round(2037f)))), -429f)))), select(~(-_wgslsmith_div_i32(u_input.d, u_input.a)), u_input.b.x, true), 2147483647i, Struct_1(1268f));
    let var_1 = global1[_wgslsmith_index_u32(44317u, 28u)];
    global1 = array<Struct_1, 28>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(306f, 428f, var_1.a) - vec3<f32>(1631f, var_1.a, 856f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.a, 2103f, -1067f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, -960f, 284f))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-932f, var_1.a)))) * var_2.x);
}

fn func_2(arg_0: Struct_4) -> vec4<bool> {
    let var_0 = vec3<f32>(-1562f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(796f * _wgslsmith_div_f32(-1000f, arg_0.a.a)), arg_0.a.a)), _wgslsmith_f_op_f32(func_3()));
    var var_1 = u_input.b;
    let var_2 = vec4<u32>(_wgslsmith_sub_u32(firstTrailingBit(~u_input.c), countOneBits(min(u_input.c, 31571u))), u_input.c, 20113u, u_input.c & ~4930u) & _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, ~28264u, abs(u_input.c) >> (~43175u % 32u)), abs(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.c, u_input.c, 0u, 4294967295u), vec4<u32>(1u, 4294967295u, u_input.c, u_input.c) ^ vec4<u32>(4294967295u, u_input.c, 23953u, 1u))));
    var var_3 = abs(5917u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(1u << (u_input.c % 32u), _wgslsmith_clamp_u32(var_2.x, var_2.x, u_input.c), ~31275u), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 35976u, 1271u) ^ vec3<u32>(var_2.x, var_2.x, u_input.c), vec3<u32>(14909u, var_2.x, 4294967295u))));
    let var_4 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-3099f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.b * arg_0.e.a)))), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.a + 1012f))))));
    return !(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, select(true, true, false), false), var_0.x < _wgslsmith_f_op_f32(round(arg_0.b))));
}

fn func_1(arg_0: i32) -> u32 {
    global0 = array<Struct_2, 28>();
    global0 = array<Struct_2, 28>();
    let var_0 = select(select(select(vec3<bool>(select(false, false, true), true, true), vec3<bool>(any(vec4<bool>(true, false, true, true)), true, true), true), vec3<bool>(true, true, true), !all(func_2(Struct_4(global1[_wgslsmith_index_u32(4294967295u, 28u)], -945f, u_input.b.x, arg_0, Struct_1(-2144f))))), vec3<bool>(any(!func_2(Struct_4(global1[_wgslsmith_index_u32(u_input.c, 28u)], 1606f, 244i, arg_0, Struct_1(165f)))), false, true), !(firstLeadingBit(abs(u_input.c)) > firstLeadingBit(~u_input.c)));
    var var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2085f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1000f, -1134f, var_0.x)), -243f))), 1016f, abs(~(i32(-1i) * -3210i)), 1i, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-222f)))));
    var var_2 = Struct_4(var_1.e, var_1.b, ~abs(countOneBits(~2147483647i)), ~firstTrailingBit(-(u_input.b.x << (u_input.c % 32u))), var_1.e);
    return _wgslsmith_add_u32(abs(select(abs(0u), 0u, any(vec4<bool>(true, var_0.x, true, var_0.x)))), ~countOneBits(min(4294967295u, u_input.c))) | (13390u << ((u_input.c >> (u_input.c % 32u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(true, all(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, true)));
    var var_1 = ~((_wgslsmith_add_vec3_u32(vec3<u32>(48075u, u_input.c, u_input.c), ~vec3<u32>(2274u, u_input.c, 1u)) ^ abs(abs(vec3<u32>(1u, 4294967295u, u_input.c)))) & vec3<u32>(58446u, _wgslsmith_clamp_u32(func_1(2147483647i), 1u, 1u), ~4294967295u));
    var var_2 = all(global2[_wgslsmith_index_u32(19945u, 27u)]);
    let var_3 = vec2<bool>(all(vec4<bool>(any(vec4<bool>(true, true, true, true)), !any(var_0.yz), !var_0.x, func_2(Struct_4(Struct_1(175f), -217f, u_input.b.x, 21365i, Struct_1(1364f))).x)), false);
    var var_4 = ~countOneBits(_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.d, u_input.a, u_input.a, -55495i), vec4<i32>(u_input.a, u_input.a, u_input.b.x, -1i), ~vec4<i32>(-2147483647i, 15474i, u_input.b.x, u_input.d)) >> (~min(vec4<u32>(u_input.c, 5683u, u_input.c, 1u), vec4<u32>(var_1.x, 4294967295u, u_input.c, u_input.c)) % vec4<u32>(32u)));
    var_2 = any(!vec3<bool>(select(true, var_3.x, true), !(true | var_3.x), var_0.x));
    global1 = array<Struct_1, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec4<u32>(reverseBits(var_1.x), ~var_1.x, ~var_1.x, 1u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1920f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-996f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(285f * 1000f), -395f))), var_4.x <= (_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2867i, u_input.d, u_input.a), vec4<i32>(u_input.b.x, u_input.d, 69500i, -1i)) ^ ~41634i))), var_4.x, _wgslsmith_add_u32(~4294967295u, ~_wgslsmith_add_u32(var_1.x, ~25341u)), _wgslsmith_add_i32(-reverseBits(15955i), 21078i));
}

