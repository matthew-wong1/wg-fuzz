struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(4294967295u), Struct_1(1u), Struct_1(1u), Struct_1(0u), Struct_1(4294967295u), Struct_1(36441u), Struct_1(96686u), Struct_1(43641u), Struct_1(0u), Struct_1(0u), Struct_1(4294967295u), Struct_1(32475u), Struct_1(1u), Struct_1(1u), Struct_1(4294967295u), Struct_1(1u), Struct_1(40065u));

var<private> global1: array<f32, 23> = array<f32, 23>(-1611f, -777f, -1000f, -255f, 643f, -166f, 749f, 1105f, -1595f, 848f, -573f, -1523f, -266f, -533f, -1329f, -1117f, 659f, -2098f, 278f, -849f, 456f, 2298f, -906f);

var<private> global2: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false));

var<private> global3: Struct_1 = Struct_1(19089u);

var<private> global4: array<f32, 19>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: i32) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(global3.a, 19u)]))), global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(countOneBits(global3.a), 4294967295u), 19u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(1u, 19u)])) * 398f)) * vec3<f32>(global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(26219u, 4294967295u, global3.a), vec3<u32>(44423u, global3.a, 60219u)), 19u)], global1[_wgslsmith_index_u32(~45737u, 23u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(57682u, 23u)]))))))));
    var var_1 = global0[_wgslsmith_index_u32(20303u, 17u)];
    global1 = array<f32, 23>();
    global3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32((~(vec3<u32>(global3.a, var_1.a, 0u) | vec3<u32>(var_1.a, 4294967295u, global3.a)) << (~vec3<u32>(1u, global3.a, global3.a) % vec3<u32>(32u))) << (~(~firstLeadingBit(vec3<u32>(var_1.a, 1u, var_1.a))) % vec3<u32>(32u)), ~_wgslsmith_clamp_vec3_u32(~min(vec3<u32>(var_1.a, 4316u, global3.a), vec3<u32>(4294967295u, 103451u, 1u)), vec3<u32>(_wgslsmith_div_u32(1781u, global3.a), 22746u, 0u), ~(~vec3<u32>(321u, var_1.a, var_1.a)))), 17u)];
    global4 = array<f32, 19>();
    return _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_add_u32(52386u, min(~4294967295u, 1u)), var_1.a & var_1.a, global3.a), reverseBits(~firstTrailingBit(vec3<u32>(global3.a, 1u, global3.a) ^ vec3<u32>(87583u, var_1.a, global3.a))), vec3<u32>(_wgslsmith_mult_u32(1u, 4651u), var_1.a, global3.a));
}

fn func_2() -> Struct_1 {
    global1 = array<f32, 23>();
    global4 = array<f32, 19>();
    let var_0 = 776f;
    var var_1 = Struct_2(~func_3(u_input.b.x, u_input.a), _wgslsmith_add_vec2_i32(-u_input.b, u_input.b), 1u);
    return Struct_1(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(countOneBits(var_1.c), abs(99763u))), firstLeadingBit(_wgslsmith_div_vec2_u32(var_1.a.xz, var_1.a.xz) & ~vec2<u32>(1u, 27767u))));
}

fn func_1(arg_0: vec4<f32>) -> Struct_2 {
    let var_0 = func_2();
    var var_1 = reverseBits(_wgslsmith_clamp_vec2_u32(~countOneBits(~vec2<u32>(25018u, var_0.a)), ~countOneBits(reverseBits(vec2<u32>(var_0.a, 849u))), ~(~(~vec2<u32>(1u, 9994u)))));
    let var_2 = select(!select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, false), true), true), vec2<bool>(true, true), true);
    global2 = array<vec4<bool>, 6>();
    let var_3 = -291f;
    return Struct_2(_wgslsmith_add_vec3_u32(~(vec3<u32>(var_0.a, 11004u, var_1.x) | (vec3<u32>(var_1.x, var_0.a, global3.a) >> (vec3<u32>(1u, 39083u, var_1.x) % vec3<u32>(32u)))), ~(~vec3<u32>(var_0.a, var_1.x, 1u) ^ _wgslsmith_add_vec3_u32(vec3<u32>(0u, var_0.a, 0u), vec3<u32>(1u, var_1.x, var_1.x)))), -u_input.b, 50449u);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = any(vec2<bool>(true, false));
    global1 = array<f32, 23>();
    let var_1 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(41893u, 8932u, ~(~55123u), 1u >> (global3.a % 32u))), ~select(min(vec4<u32>(arg_1, arg_1, 4294967295u, arg_0.c) ^ vec4<u32>(73920u, arg_2.x, global3.a, 4294967295u), ~vec4<u32>(106802u, 4294967295u, arg_0.a.x, 90312u)), vec4<u32>(arg_3.a.x, ~arg_1, _wgslsmith_div_u32(arg_3.a.x, arg_2.x), ~arg_0.c), global2[_wgslsmith_index_u32(~(~arg_2.x), 6u)])), 19u)];
    let var_2 = func_2();
    global4 = array<f32, 19>();
    return func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(26947u, 23u)], global4[_wgslsmith_index_u32(1u, 19u)], 613f, -445f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1329f, 576f, 487f, -537f))))))));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_2 {
    global2 = array<vec4<bool>, 6>();
    var var_0 = ~(~_wgslsmith_sub_u32(abs(~global3.a), 0u));
    let var_1 = global0[_wgslsmith_index_u32(arg_1.c, 17u)];
    var var_2 = global0[_wgslsmith_index_u32(arg_0.x, 17u)];
    global1 = array<f32, 23>();
    return func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(1u, 19u)] * global1[_wgslsmith_index_u32(1u, 23u)]), -1842f, _wgslsmith_f_op_f32(trunc(-925f)), _wgslsmith_f_op_f32(-1291f + 1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(11577u, 23u)], _wgslsmith_f_op_f32(abs(-824f)), -425f, _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(var_2.a, 19u)] * -228f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1[_wgslsmith_index_u32(arg_0.x, 23u)], global4[_wgslsmith_index_u32(var_1.a, 19u)], global1[_wgslsmith_index_u32(global3.a, 23u)], 554f), vec4<f32>(-178f, global4[_wgslsmith_index_u32(24456u, 19u)], global4[_wgslsmith_index_u32(var_1.a, 19u)], global1[_wgslsmith_index_u32(global3.a, 23u)])))))));
}

fn func_6(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(1u, 23u)], 1000f), vec2<f32>(global4[_wgslsmith_index_u32(arg_1, 19u)], global4[_wgslsmith_index_u32(14328u, 19u)])))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global4[_wgslsmith_index_u32(8408u, 19u)], 1030f))) * vec2<f32>(1579f, 466f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f)))));
    var var_1 = Struct_1(arg_1);
    let var_2 = Struct_2(select(arg_0.a, arg_0.a, func_3(arg_0.b.x, u_input.b.x).x == arg_0.c), arg_0.b, _wgslsmith_add_u32(countOneBits(49725u), ~(~func_4(Struct_2(vec3<u32>(var_1.a, 8058u, arg_0.a.x), vec2<i32>(-9584i, -49361i), 45369u), global3.a, vec2<u32>(global3.a, global3.a), Struct_2(arg_0.a, arg_0.b, var_1.a)).a.x)));
    var var_3 = !select(select(select(select(vec4<bool>(true, true, true, false), global2[_wgslsmith_index_u32(4294967295u, 6u)], false), !global2[_wgslsmith_index_u32(17529u, 6u)], global2[_wgslsmith_index_u32(arg_0.a.x, 6u)]), select(select(vec4<bool>(false, true, true, true), global2[_wgslsmith_index_u32(arg_0.c, 6u)], true), !global2[_wgslsmith_index_u32(35825u, 6u)], 4758i > var_2.b.x), true), global2[_wgslsmith_index_u32(countOneBits(arg_0.c), 6u)], select(select(vec4<bool>(false, true, true, false), !global2[_wgslsmith_index_u32(global3.a, 6u)], select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), false)), vec4<bool>(any(vec2<bool>(true, true)), false, false, 4294967295u == arg_0.a.x), !(arg_0.b.x == var_2.b.x)));
    let var_4 = func_2();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, global3.a), ~vec2<u32>(global3.a, 73048u))), func_4(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(global3.a, 23u)], 429f, -1000f, -844f) * vec4<f32>(global4[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(global3.a, 23u)], 1000f, -749f))), 62133u, countOneBits(vec2<u32>(4294967295u, global3.a)) >> (~vec2<u32>(1u, 39504u) % vec2<u32>(32u)), Struct_2(vec3<u32>(1u, global3.a, global3.a), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(-26633i, u_input.b.x)), 35105u))), 76581u);
    var var_1 = -2147483647i;
    var_0 = Struct_1(4294967295u);
    global2 = array<vec4<bool>, 6>();
    var var_2 = func_2();
    var var_3 = func_6(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(var_2.a, 23u)], 1922f, global1[_wgslsmith_index_u32(0u, 23u)], global4[_wgslsmith_index_u32(49592u, 19u)])) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-464f, -2184f, global1[_wgslsmith_index_u32(var_0.a, 23u)], -243f))))), 102033u);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(35818u, 19u)])) + _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(var_0.a, 23u)], global4[_wgslsmith_index_u32(17986u, 19u)], true))), global4[_wgslsmith_index_u32(19644u, 19u)]))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-188f - global4[_wgslsmith_index_u32(var_2.a, 19u)]) + _wgslsmith_f_op_f32(min(925f, global4[_wgslsmith_index_u32(var_3.a, 19u)])))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(-919f, 903f)), global4[_wgslsmith_index_u32(var_3.a, 19u)]))), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b, u_input.b >> (vec2<u32>(75427u, 38139u) % vec2<u32>(32u))), u_input.b), 9009i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(countOneBits(global3.a), 19u)])), firstLeadingBit(~_wgslsmith_clamp_vec2_u32(func_3(1i, 19297i).zx, max(vec2<u32>(0u, var_3.a), vec2<u32>(9772u, global3.a)), min(vec2<u32>(var_2.a, 0u), vec2<u32>(70563u, 4294967295u)))));
}

