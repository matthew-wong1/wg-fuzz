struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec4<bool>,
    d: i32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_4 = Struct_4(-33591i, vec3<i32>(-63607i, 0i, i32(-2147483648)));

var<private> global2: array<i32, 6> = array<i32, 6>(i32(-2147483648), 1891i, 1i, 0i, -20655i, 1i);

var<private> global3: array<i32, 11> = array<i32, 11>(2147483647i, -1525i, 28461i, 31519i, 26128i, 1i, i32(-2147483648), 2114i, i32(-2147483648), 14624i, -7429i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> vec3<i32> {
    global0 = firstTrailingBit(~104693u << ((35921u | ~arg_0.x) % 32u));
    global1 = Struct_4(_wgslsmith_mult_i32(0i ^ _wgslsmith_add_i32(_wgslsmith_add_i32(-2147483647i, global2[_wgslsmith_index_u32(arg_0.x, 6u)]), _wgslsmith_div_i32(-1i, -30505i)), _wgslsmith_add_i32(_wgslsmith_div_i32(1i | global2[_wgslsmith_index_u32(44431u, 6u)], firstTrailingBit(global3[_wgslsmith_index_u32(arg_0.x, 11u)])), 1i)), firstLeadingBit(vec3<i32>(global2[_wgslsmith_index_u32(arg_1.a << (arg_0.x % 32u), 6u)], -1i, _wgslsmith_mult_i32(2147483647i, _wgslsmith_clamp_i32(-11358i, global1.a, global2[_wgslsmith_index_u32(arg_0.x, 6u)])))));
    return ~(abs(global1.b) >> (u_input.a % vec3<u32>(32u)));
}

fn func_2(arg_0: f32, arg_1: bool) -> vec2<bool> {
    let var_0 = -15327i;
    global3 = array<i32, 11>();
    var var_1 = Struct_4(firstTrailingBit(reverseBits(1063i)), -select(~max(vec3<i32>(var_0, 8462i, 5283i), vec3<i32>(global2[_wgslsmith_index_u32(19769u, 6u)], global3[_wgslsmith_index_u32(u_input.c.x, 11u)], global3[_wgslsmith_index_u32(30535u, 11u)])), ~vec3<i32>(0i, 5983i, 14251i), select(select(vec3<bool>(arg_1, true, true), vec3<bool>(false, true, true), arg_1), select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(true, false, arg_1), vec3<bool>(arg_1, arg_1, arg_1)), !vec3<bool>(arg_1, true, false))));
    global0 = _wgslsmith_mod_u32(u_input.c.x, _wgslsmith_clamp_u32(u_input.b, 13344u, countOneBits(u_input.b) ^ u_input.b) ^ ~(u_input.c.x | abs(25138u)));
    global1 = Struct_4(max(-_wgslsmith_mult_i32(global3[_wgslsmith_index_u32(u_input.a.x, 11u)], global1.a) >> (864u % 32u), global2[_wgslsmith_index_u32(u_input.c.x, 6u)] << (u_input.b % 32u)), ~func_3(u_input.a.zz >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), Struct_1(~31358u, vec3<i32>(global1.a, global3[_wgslsmith_index_u32(u_input.b, 11u)], global2[_wgslsmith_index_u32(0u, 6u)]) << (u_input.a % vec3<u32>(32u)), vec4<bool>(false, arg_1, arg_1, false), var_1.a, max(vec3<i32>(-2147483647i, -28751i, global3[_wgslsmith_index_u32(u_input.b, 11u)]), var_1.b))));
    return !select(vec2<bool>(arg_1, arg_1), !(!select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, arg_1), false)), !vec2<bool>(true, arg_1));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_4) -> vec3<bool> {
    global3 = array<i32, 11>();
    global1 = Struct_4(_wgslsmith_add_i32(-1i, -global1.a), select(-func_3(arg_1.b.zz, Struct_1(u_input.c.x, arg_2.b, vec4<bool>(arg_1.d.c.x, arg_0.x, arg_1.d.c.x, arg_1.d.c.x), global3[_wgslsmith_index_u32(4294967295u, 11u)], global1.b)), max(global1.b, arg_1.d.b), arg_1.d.c.x) >> (u_input.a % vec3<u32>(32u)));
    global2 = array<i32, 6>();
    var var_0 = arg_1.d;
    var var_1 = _wgslsmith_dot_vec2_i32(var_0.b.yx, min(var_0.b.yz, global1.b.xz));
    return !vec3<bool>(any(select(var_0.c, vec4<bool>(arg_0.x, arg_0.x, false, var_0.c.x), !vec4<bool>(true, var_0.c.x, false, false))), true, true);
}

fn func_5(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: vec3<f32>, arg_3: vec2<bool>) -> Struct_3 {
    let var_0 = Struct_3(global2[_wgslsmith_index_u32(31116u, 6u)], ~_wgslsmith_div_vec4_u32(vec4<u32>(1u, _wgslsmith_mult_u32(0u, 60237u), u_input.c.x, 4294967295u), reverseBits(vec4<u32>(arg_1.x, arg_1.x, u_input.b, u_input.b))), 1000f, Struct_1(_wgslsmith_clamp_u32(1u, ~4294967295u & arg_1.x, u_input.b), vec3<i32>(36999i, firstLeadingBit(global1.b.x) >> (u_input.c.x % 32u), 3839i), !select(select(vec4<bool>(false, arg_3.x, false, arg_0.x), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, arg_0.x)), select(vec4<bool>(arg_0.x, false, false, true), vec4<bool>(arg_0.x, arg_0.x, arg_3.x, arg_3.x), arg_0.x), vec4<bool>(arg_3.x, true, arg_3.x, arg_0.x)), -global1.b.x, select(vec3<i32>(~global2[_wgslsmith_index_u32(u_input.c.x, 6u)], global2[_wgslsmith_index_u32(arg_1.x, 6u)] >> (u_input.b % 32u), ~2147483647i), vec3<i32>(-1i) * -global1.b, select(!vec3<bool>(true, arg_3.x, arg_3.x), vec3<bool>(arg_3.x, arg_3.x, true), select(vec3<bool>(false, arg_0.x, false), arg_0, arg_3.x)))), true);
    var var_1 = _wgslsmith_f_op_f32(max(-1332f, var_0.c));
    global1 = Struct_4(-1i, min(global1.b, -(countOneBits(vec3<i32>(global2[_wgslsmith_index_u32(u_input.b, 6u)], global3[_wgslsmith_index_u32(arg_1.x, 11u)], global3[_wgslsmith_index_u32(u_input.a.x, 11u)])) | global1.b)));
    var var_2 = false;
    global3 = array<i32, 11>();
    return var_0;
}

fn func_1() -> Struct_1 {
    global0 = u_input.b;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2013f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1066f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-290f + 722f)))) + _wgslsmith_f_op_f32(-1000f + 878f));
    var var_1 = !(_wgslsmith_sub_u32(min(~u_input.b, _wgslsmith_mult_u32(1u, 5552u)), ~firstLeadingBit(u_input.a.x)) > u_input.c.x);
    let var_2 = vec2<f32>(var_0, -345f);
    let var_3 = func_5(func_4(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), !func_2(-1710f, false), all(vec2<bool>(true, false)) || true), Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(34870u, 6u)], 18080i, -2147483647i, global3[_wgslsmith_index_u32(u_input.a.x, 11u)]), vec4<i32>(global2[_wgslsmith_index_u32(u_input.b, 6u)], global2[_wgslsmith_index_u32(u_input.c.x, 6u)], 1i, global2[_wgslsmith_index_u32(u_input.b, 6u)])), vec4<u32>(~u_input.a.x, 1u, 83560u, u_input.c.x), var_2.x, Struct_1(36472u, vec3<i32>(global1.b.x, 9419i, 2147483647i), vec4<bool>(false, false, false, true), 12760i, vec3<i32>(36775i, global2[_wgslsmith_index_u32(u_input.c.x, 6u)], global2[_wgslsmith_index_u32(u_input.a.x, 6u)])), false), Struct_4(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(u_input.a, u_input.a, false), reverseBits(u_input.a)), 6u)], func_3(_wgslsmith_clamp_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, 1u), vec2<u32>(20476u, 34754u)), Struct_1(u_input.a.x, global1.b, vec4<bool>(false, false, true, true), 2147483647i, vec3<i32>(-2147483647i, global3[_wgslsmith_index_u32(u_input.a.x, 11u)], 79990i))))), firstTrailingBit(_wgslsmith_add_vec2_u32(select(select(u_input.c, u_input.a.xz, vec2<bool>(false, false)), u_input.c ^ u_input.a.yx, true), ~(~vec2<u32>(u_input.b, 31704u)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-534f, -497f, -1703f), vec3<f32>(847f, -1637f, -755f)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(422f, var_0, -192f))))))), !func_4(!func_4(vec2<bool>(true, true), Struct_3(global1.b.x, vec4<u32>(4294967295u, u_input.c.x, 4294967295u, 4294967295u), -189f, Struct_1(44697u, global1.b, vec4<bool>(true, true, false, true), global2[_wgslsmith_index_u32(u_input.a.x, 6u)], global1.b), false), Struct_4(global2[_wgslsmith_index_u32(32733u, 6u)], global1.b)).yy, Struct_3(global1.a >> (38840u % 32u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, u_input.b), vec4<u32>(u_input.c.x, u_input.a.x, u_input.b, u_input.b)), _wgslsmith_f_op_f32(var_0 + -1605f), Struct_1(31699u, vec3<i32>(global2[_wgslsmith_index_u32(74026u, 6u)], -1i, -1i), vec4<bool>(false, false, false, true), global3[_wgslsmith_index_u32(34607u, 11u)], global1.b), true), Struct_4(global2[_wgslsmith_index_u32(u_input.b, 6u)] ^ 1i, ~vec3<i32>(global2[_wgslsmith_index_u32(1850u, 6u)], 32954i, 0i))).yy);
    return Struct_1(_wgslsmith_add_u32(_wgslsmith_add_u32(reverseBits(abs(22160u)), _wgslsmith_sub_u32(24350u, u_input.b)), 4294967295u), vec3<i32>(66044i, ~(2147483647i << (u_input.b % 32u)), global1.a), var_3.d.c, abs(_wgslsmith_div_i32(1i, -global3[_wgslsmith_index_u32(u_input.c.x, 11u)])) >> (countOneBits(u_input.c.x) % 32u), vec3<i32>(-global3[_wgslsmith_index_u32(1u, 11u)] & -1i, ~var_3.d.b.x, ~(~global1.a)));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_1) -> Struct_2 {
    let var_0 = ~32644u;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(857f - -314f) - _wgslsmith_f_op_f32(-529f + 1065f)) * 1f), 245f));
    let var_2 = min(vec3<i32>(-(~global2[_wgslsmith_index_u32(arg_1.a, 6u)]), i32(-1i) * -54825i, ~_wgslsmith_sub_i32(arg_0.b.x, arg_0.a)), min(global1.b, vec3<i32>(23328i, -1i, global3[_wgslsmith_index_u32(countOneBits(arg_1.a), 11u)]))) | vec3<i32>(-arg_0.a | ~arg_1.d, firstLeadingBit(0i), 15847i);
    global3 = array<i32, 11>();
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_1.x, -1272f)))) * 785f);
    return Struct_2(-vec3<i32>(abs(-17935i), 27035i, -49735i), ~abs(~_wgslsmith_div_u32(0u, var_0)), u_input.a.x >> (_wgslsmith_add_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(29643u, 0u, u_input.a.x, 30639u), vec4<u32>(arg_1.a, var_0, var_0, 8220u))), firstLeadingBit(~var_0)) % 32u), Struct_1(~var_0, vec3<i32>(~arg_0.a, _wgslsmith_sub_i32(2147483647i, 1i), -1i) << (vec3<u32>(u_input.b, arg_1.a & 4294967295u, ~4294967295u) % vec3<u32>(32u)), !(!(!arg_1.c)), 0i, select(vec3<i32>(_wgslsmith_mult_i32(0i, global3[_wgslsmith_index_u32(arg_1.a, 11u)]), countOneBits(global2[_wgslsmith_index_u32(arg_1.a, 6u)]), 1i), ~_wgslsmith_add_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 6u)], arg_1.d, arg_1.e.x), var_2), arg_1.c.x)), func_5(func_1().c.zxz, select(u_input.c, ~(u_input.a.yx ^ u_input.c), false), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, var_1.x, 301f), vec3<f32>(var_3, var_1.x, 1306f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, -782f, -226f), vec3<f32>(var_1.x, 1764f, var_3))))), func_1().c.xw).d);
}

fn func_7(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_2, arg_3: f32) -> Struct_4 {
    let var_0 = u_input.c.x << (arg_2.b % 32u);
    var var_1 = ~0u;
    global2 = array<i32, 6>();
    let var_2 = func_6(Struct_4(arg_2.a.x, ~(vec3<i32>(10055i, global1.b.x, 2147483647i) & ~arg_2.e.e)), func_6(Struct_4(arg_2.a.x, vec3<i32>(1i, 0i, global2[_wgslsmith_index_u32(40247u, 6u)]) >> (vec3<u32>(u_input.b, 0u, u_input.c.x) % vec3<u32>(32u))), arg_2.d).e).d.c.zxw;
    let var_3 = ~reverseBits(~(~u_input.c) >> (_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(22551u, 0u), u_input.a.xx), _wgslsmith_add_vec2_u32(u_input.a.zx, vec2<u32>(24943u, 0u))) % vec2<u32>(32u)));
    return Struct_4(0i, min(_wgslsmith_mult_vec3_i32(~(vec3<i32>(global3[_wgslsmith_index_u32(33322u, 11u)], global2[_wgslsmith_index_u32(u_input.c.x, 6u)], arg_2.a.x) >> (vec3<u32>(var_3.x, 45978u, var_0) % vec3<u32>(32u))), vec3<i32>(0i, -24641i, arg_0.x) & vec3<i32>(-45630i, -531i, global3[_wgslsmith_index_u32(var_0, 11u)])), _wgslsmith_add_vec3_i32(~(arg_0.zxy & vec3<i32>(-2147483647i, -2147483647i, -47674i)), vec3<i32>(0i, global1.b.x ^ global2[_wgslsmith_index_u32(4294967295u, 6u)], global1.a))));
}

fn func_8(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: u32, arg_3: bool) -> Struct_4 {
    let var_0 = func_1();
    let var_1 = !arg_3;
    var var_2 = Struct_3(_wgslsmith_div_i32(global3[_wgslsmith_index_u32(15312u, 11u)] | -1i, ~_wgslsmith_mod_i32(i32(-1i) * -2287i, arg_0.a)), vec4<u32>(func_1().a, 4294967295u, 0u, max(0u, ~var_0.a) << (((u_input.c.x ^ 13779u) << (~1u % 32u)) % 32u)), _wgslsmith_f_op_f32(floor(-981f)), func_5(func_6(Struct_4(_wgslsmith_mod_i32(arg_0.a, 2147483647i), global1.b), func_5(vec3<bool>(var_0.c.x, arg_3, false), min(vec2<u32>(u_input.a.x, 0u), vec2<u32>(12833u, 65759u)), vec3<f32>(684f, 1269f, 232f), vec2<bool>(arg_1.x, true)).d).e.c.zww, u_input.a.zz & u_input.c, vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1369f), 460f), select(var_0.c.xz, !var_0.c.wy, !vec2<bool>(false, var_1))).d, func_5(!func_4(var_0.c.yy, func_5(var_0.c.yyz, vec2<u32>(arg_2, 30622u), vec3<f32>(1128f, 790f, 1000f), arg_1), Struct_4(-1i, global1.b)), ~u_input.a.zz, vec3<f32>(1083f, 290f, _wgslsmith_f_op_f32(-1022f + _wgslsmith_f_op_f32(966f - 359f))), func_1().c.yw).e);
    let var_3 = func_5(func_6(Struct_4(global1.a, countOneBits(func_1().e)), var_2.d).e.c.wyw, select(vec2<u32>(1u ^ func_6(Struct_4(var_2.a, var_2.d.e), var_0).d.a, 10900u), var_2.b.yz << (vec2<u32>(_wgslsmith_div_u32(117939u, arg_2), 1u) % vec2<u32>(32u)), !var_0.c.yx), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-158f, _wgslsmith_f_op_f32(var_2.c * _wgslsmith_f_op_f32(-var_2.c)), var_2.c))), vec2<bool>(false, !all(func_6(Struct_4(-1i, vec3<i32>(67909i, var_0.d, 1i)), Struct_1(u_input.a.x, global1.b, vec4<bool>(var_2.e, var_1, var_2.e, var_2.d.c.x), arg_0.a, var_0.e)).d.c.ww)));
    let var_4 = var_2.d.c;
    return arg_0;
}

fn func_9(arg_0: bool, arg_1: Struct_4) -> Struct_1 {
    let var_0 = vec3<f32>(-125f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1263f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -693f))));
    let var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(27018u, abs(~u_input.a.x), u_input.a.x), vec3<u32>(~countOneBits(4294967295u), u_input.c.x, ~(u_input.c.x & 57557u)), (vec3<u32>(4294967295u, 2980u, 0u) ^ ~vec3<u32>(4294967295u, u_input.b, 0u)) << (u_input.a % vec3<u32>(32u))) >> (~u_input.a % vec3<u32>(32u));
    global1 = Struct_4(i32(-1i) * -1i, global1.b);
    let var_2 = !func_1().c.x;
    global0 = firstTrailingBit(~u_input.b) ^ (var_1.x ^ ~(~0u));
    return Struct_1(1u, func_7(~(-(vec4<i32>(arg_1.b.x, global3[_wgslsmith_index_u32(113677u, 11u)], 9791i, global1.a) >> (vec4<u32>(u_input.b, 38939u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)))), arg_0, Struct_2(-vec3<i32>(global2[_wgslsmith_index_u32(16585u, 6u)], arg_1.a, 1i), _wgslsmith_mult_u32(u_input.a.x, 1u) >> (u_input.a.x % 32u), func_6(arg_1, Struct_1(var_1.x, arg_1.b, vec4<bool>(false, false, arg_0, arg_0), 0i, vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 6u)], global2[_wgslsmith_index_u32(var_1.x, 6u)], -13084i))).e.a, Struct_1(1u >> (u_input.b % 32u), func_8(Struct_4(-50790i, vec3<i32>(global3[_wgslsmith_index_u32(var_1.x, 11u)], global2[_wgslsmith_index_u32(var_1.x, 6u)], global2[_wgslsmith_index_u32(u_input.c.x, 6u)])), vec2<bool>(false, var_2), 4294967295u, false).b, vec4<bool>(arg_0, arg_0, arg_0, arg_0), _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(var_1.x, 11u)], -452i), global1.b), Struct_1(~0u, arg_1.b, vec4<bool>(arg_0, true, arg_0, var_2), global2[_wgslsmith_index_u32(select(30527u, u_input.c.x, var_2), 6u)], -global1.b)), 1437f).b, !select(func_6(arg_1, func_6(Struct_4(-22012i, arg_1.b), Struct_1(0u, vec3<i32>(global1.a, arg_1.b.x, 18445i), vec4<bool>(arg_0, arg_0, arg_0, var_2), 0i, vec3<i32>(global3[_wgslsmith_index_u32(var_1.x, 11u)], global1.a, global1.a))).e).e.c, vec4<bool>(func_5(vec3<bool>(false, false, true), vec2<u32>(u_input.b, var_1.x), var_0, vec2<bool>(true, arg_0)).e, true, arg_0, true), false), ~global1.b.x, vec3<i32>(func_7(vec4<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 6u)], global2[_wgslsmith_index_u32(u_input.c.x, 6u)], 66039i, 1i), arg_0, Struct_2(vec3<i32>(global2[_wgslsmith_index_u32(var_1.x, 6u)], -1i, global2[_wgslsmith_index_u32(var_1.x, 6u)]), 4294967295u, u_input.b, Struct_1(15876u, vec3<i32>(arg_1.b.x, 3267i, 32315i), vec4<bool>(var_2, false, false, true), -2147483647i, vec3<i32>(-5050i, arg_1.b.x, -2850i)), Struct_1(var_1.x, vec3<i32>(0i, 2147483647i, -33145i), vec4<bool>(var_2, var_2, true, false), arg_1.b.x, global1.b)), _wgslsmith_f_op_f32(var_0.x - 729f)).b.x, 40772i, -26372i) | vec3<i32>(~(~global1.a), _wgslsmith_mult_i32(_wgslsmith_div_i32(-16464i, -10063i), 1i), -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 11>();
    let var_0 = func_9(all(vec3<bool>(true, true, true)), func_8(func_7(select(~vec4<i32>(global1.a, -2147483647i, global1.b.x, 2147483647i), vec4<i32>(0i, global1.a, 1852i, global3[_wgslsmith_index_u32(u_input.c.x, 11u)]), all(vec3<bool>(false, true, false))), true, func_6(Struct_4(global2[_wgslsmith_index_u32(u_input.a.x, 6u)], global1.b), func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-599f + 592f))), func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1059f), _wgslsmith_f_op_f32(floor(1000f))), u_input.c.x <= 982u), func_1().a & ~57598u, func_5(func_6(Struct_4(global1.a, vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 6u)], 23053i, -1i)), Struct_1(u_input.c.x, global1.b, vec4<bool>(true, false, false, true), global1.a, global1.b)).e.c.yzw, firstLeadingBit(u_input.c) | countOneBits(vec2<u32>(128361u, 4294967295u)), vec3<f32>(_wgslsmith_f_op_f32(-1868f + -977f), _wgslsmith_f_op_f32(step(951f, 530f)), _wgslsmith_f_op_f32(-2008f * 987f)), func_2(_wgslsmith_div_f32(-202f, 823f), true)).d.c.x));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(329f + -1000f)) - -102f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-287f * 1711f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, -424f)) + _wgslsmith_f_op_f32(-747f + 1264f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1076f + -1168f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1719f, 985f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(912f))))));
    global3 = array<i32, 11>();
    var var_2 = var_0;
    var var_3 = func_5(vec3<bool>(func_4(!var_2.c.yx, func_5(var_2.c.zxz, firstLeadingBit(u_input.a.zz), _wgslsmith_f_op_vec3_f32(sign(var_1.xwz)), select(vec2<bool>(var_0.c.x, var_0.c.x), vec2<bool>(var_2.c.x, false), var_2.c.wx)), func_7(vec4<i32>(-36454i, 1i, global2[_wgslsmith_index_u32(var_0.a, 6u)], var_2.e.x), true, func_6(Struct_4(var_0.b.x, var_2.b), Struct_1(95325u, global1.b, vec4<bool>(var_2.c.x, var_2.c.x, var_0.c.x, true), var_0.d, vec3<i32>(-2147483647i, 43155i, global3[_wgslsmith_index_u32(var_0.a, 11u)]))), 191f)).x, var_0.c.x, var_0.c.x), ~(~u_input.c), vec3<f32>(-310f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(459f, 599f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x) - _wgslsmith_f_op_f32(-var_1.x))))), vec2<bool>(!(!var_2.c.x || any(vec2<bool>(var_2.c.x, var_0.c.x))), !var_2.c.x));
    var var_4 = vec3<u32>(~func_1().a, ~43316u, 1u);
    var_2 = var_3.d;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, global1.a, var_0.e.x, var_3.a), vec4<i32>(global1.b.x, global1.a, global3[_wgslsmith_index_u32(4294967295u, 11u)], 10488i), vec4<i32>(global3[_wgslsmith_index_u32(18054u, 11u)], 2147483647i, global3[_wgslsmith_index_u32(84552u, 11u)], -12534i)), ~vec4<i32>(var_3.d.b.x, global2[_wgslsmith_index_u32(0u, 6u)], 2147483647i, var_2.e.x)) >> ((vec4<u32>(0u | var_4.x, ~u_input.b, 4861u, _wgslsmith_div_u32(var_4.x, 23323u)) & var_3.b) % vec4<u32>(32u)), -566f, 1695f, global2[_wgslsmith_index_u32(~var_3.b.x, 6u)]);
}

