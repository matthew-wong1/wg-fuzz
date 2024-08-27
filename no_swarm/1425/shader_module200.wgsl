struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(vec4<f32>(-747f, -1086f, -321f, 309f), Struct_1(vec3<f32>(-681f, 528f, 191f))), Struct_3(vec4<f32>(1000f, -1548f, 610f, 203f), Struct_1(vec3<f32>(-1063f, 383f, -978f))), Struct_3(vec4<f32>(542f, 368f, 638f, 1280f), Struct_1(vec3<f32>(-396f, -1284f, 2872f))), Struct_3(vec4<f32>(1288f, -1044f, -883f, 705f), Struct_1(vec3<f32>(876f, -273f, -728f))), Struct_3(vec4<f32>(1085f, 1563f, -479f, -647f), Struct_1(vec3<f32>(-863f, -3386f, 988f))), Struct_3(vec4<f32>(1847f, -556f, -1370f, -899f), Struct_1(vec3<f32>(1104f, -384f, 1523f))));

var<private> global1: array<Struct_1, 1>;

var<private> global2: vec2<u32> = vec2<u32>(83193u, 12910u);

var<private> global3: array<vec2<u32>, 16>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(ceil(-599f)) <= _wgslsmith_f_op_f32(step(-532f, -776f));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-113f + -844f))), 838f));
    global2 = vec2<u32>(~firstLeadingBit(56518u), global2.x);
    let var_2 = global2.x;
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1757f, var_1.x, _wgslsmith_div_f32(var_1.x, var_1.x), 728f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1065f, 1000f, -373f, -281f)) - vec4<f32>(1f, 1f, 1f, 1f))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1047f, var_1.x, -314f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(372f, -1147f, 780f, var_1.x) * vec4<f32>(var_1.x, var_1.x, -3263f, var_1.x)))))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(899f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), var_1.x), _wgslsmith_f_op_f32(-var_1.x), var_1.x))));
    return !(!(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)))));
}

fn func_2() -> Struct_3 {
    var var_0 = select(select(vec3<bool>(true | (global2.x != global2.x), false, all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true)))), !vec3<bool>(true, any(vec2<bool>(true, false)), true), !all(select(vec2<bool>(true, false), vec2<bool>(true, true), false))), func_3(), vec3<bool>(true, false, true));
    var var_1 = Struct_2(abs(abs(~select(global3[_wgslsmith_index_u32(global2.x, 16u)], vec2<u32>(global2.x, 0u), vec2<bool>(false, false)))), global2.x);
    let var_2 = global1[_wgslsmith_index_u32(global2.x, 1u)];
    global0 = array<Struct_3, 6>();
    global2 = _wgslsmith_add_vec2_u32(var_1.a, vec2<u32>(var_1.a.x, firstTrailingBit(var_1.a.x | 52872u)));
    return global0[_wgslsmith_index_u32(~(~(global2.x << (((1u ^ var_1.a.x) ^ global2.x) % 32u))), 6u)];
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_3) -> bool {
    let var_0 = abs(vec2<i32>(abs(~u_input.c.x) >> (1u % 32u), u_input.d.x));
    let var_1 = Struct_2(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(global3[_wgslsmith_index_u32(0u, 16u)], vec2<u32>(global2.x, global2.x)) & global3[_wgslsmith_index_u32(global2.x, 16u)], reverseBits(global3[_wgslsmith_index_u32(~min(arg_0, 4294967295u), 16u)])), 29812u);
    var var_2 = var_1;
    var var_3 = var_1;
    var_3 = Struct_2(min(var_1.a, ~reverseBits(global3[_wgslsmith_index_u32(var_2.b, 16u)])) >> (global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(39690u, 1035u), 16u)] % vec2<u32>(32u)), min(_wgslsmith_clamp_u32(var_2.b, ~arg_0, global2.x), ~select(firstLeadingBit(4294967295u), min(arg_0, var_3.b), true)));
    return true;
}

fn func_1() -> Struct_3 {
    let var_0 = vec4<bool>(true, any(!vec4<bool>(false, true, true, -2147483647i > u_input.b)), func_4(_wgslsmith_add_u32(_wgslsmith_sub_u32(33312u, global2.x), global2.x) & 0u, func_2(), global0[_wgslsmith_index_u32(~13947u, 6u)], global0[_wgslsmith_index_u32(40457u, 6u)]), select(global2.x > 4294967295u, all(vec3<bool>(false, true, true)), false | func_3().x) || !(u_input.b == 2147483647i));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1223f, -1211f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(197f + 1701f), func_2().b.a.x, false)), false))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(func_2().a.x)));
    var var_2 = select(~global2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(min(23605u, 44415u), max(global2.x, 1u), global2.x, firstTrailingBit(2945u)), vec4<u32>(4294967295u, _wgslsmith_clamp_u32(77773u, global2.x, global2.x), global2.x, global2.x ^ global2.x)), true | var_0.x) < 26734u;
    let var_3 = (_wgslsmith_f_op_f32(-484f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2149f, 736f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1206f + 288f) * _wgslsmith_f_op_f32(max(1708f, 174f))))) & var_0.x;
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(790f, -1000f), _wgslsmith_div_f32(-219f, 312f), !var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2084f * 444f)), -521f))));
    return global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(global2.x, global2.x, global2.x)), ~(~vec3<u32>(global2.x, global2.x, 12396u))), ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, global2.x, global2.x), abs(vec3<u32>(4294967295u, global2.x, 0u)), ~vec3<u32>(global2.x, 66710u, global2.x)))), 6u)];
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32) -> Struct_2 {
    global1 = array<Struct_1, 1>();
    var var_0 = arg_1.a.x;
    global0 = array<Struct_3, 6>();
    var_0 = ~_wgslsmith_clamp_u32(global2.x, global2.x, 1u);
    var var_1 = max(arg_1.b, global2.x);
    return Struct_2(select(~(~_wgslsmith_clamp_vec2_u32(global3[_wgslsmith_index_u32(global2.x, 16u)], vec2<u32>(4294967295u, 6697u), vec2<u32>(arg_1.b, 43838u))), ~vec2<u32>(reverseBits(4294967295u), 4294967295u), select(vec2<bool>(true, true), func_3().yy, max(-2147483647i, 17673i) <= arg_2)), global2.x & ~(~global2.x << (~arg_1.b % 32u)));
}

fn func_6(arg_0: Struct_2) -> Struct_3 {
    global1 = array<Struct_1, 1>();
    global3 = array<vec2<u32>, 16>();
    global3 = array<vec2<u32>, 16>();
    global1 = array<Struct_1, 1>();
    global1 = array<Struct_1, 1>();
    return Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, -1387f, 461f, 799f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(697f, -328f, 516f, -724f)), any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true)))), vec4<f32>(522f, _wgslsmith_f_op_f32(1392f * _wgslsmith_div_f32(1129f, 302f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1504f + 1376f)), _wgslsmith_f_op_f32(f32(-1f) * -556f))), func_1().b);
}

fn func_7(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: f32) -> vec4<u32> {
    let var_0 = _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(2147483647i, reverseBits(-35008i))), firstTrailingBit(vec2<i32>(-u_input.a.x, _wgslsmith_dot_vec4_i32(u_input.d, u_input.d)))));
    global2 = countOneBits(func_5(global0[_wgslsmith_index_u32(min(55006u, select(global2.x, 4294967295u, true) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(55132u, global2.x, 4294967295u), vec3<u32>(17934u, arg_0, 5545u))), 6u)], func_5(func_1(), Struct_2(vec2<u32>(global2.x, global2.x), 0u), -38175i), 2147483647i).a);
    let var_1 = firstLeadingBit(~vec4<u32>(min(12303u, arg_0), ~1u, ~global2.x, ~29409u) << (vec4<u32>(arg_0, 30945u, global2.x, global2.x) % vec4<u32>(32u)));
    var var_2 = ~reverseBits(_wgslsmith_dot_vec4_i32(select(u_input.d, vec4<i32>(1i, u_input.c.x, 35914i, -7662i), false), vec4<i32>(u_input.c.x, 14451i, u_input.d.x, u_input.a.x) ^ u_input.d) >> (min(35889u, var_1.x ^ arg_0) % 32u));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-arg_2.b.a));
    return vec4<u32>(global2.x, ~var_1.x, 0u, 100734u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(4294967295u, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1991f * _wgslsmith_div_f32(845f, 1688f)) - -296f), 1348f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-747f + _wgslsmith_f_op_f32(1818f - 1000f))))), func_6(func_5(func_1(), Struct_2(~vec2<u32>(global2.x, 23054u), ~46803u), _wgslsmith_clamp_i32(u_input.a.x, u_input.b, -2147483647i) << (max(39049u, global2.x) % 32u))), _wgslsmith_f_op_f32(f32(-1f) * -1178f));
    let var_1 = vec3<i32>(countOneBits(-44971i), -7188i, u_input.d.x);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-506f, -126f, -2223f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -156f), func_6(Struct_2(global3[_wgslsmith_index_u32(global2.x, 16u)], global2.x)).b.a.x, 2874f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -342f), _wgslsmith_f_op_f32(-421f + 190f), _wgslsmith_f_op_f32(f32(-1f) * -903f)))));
    global1 = array<Struct_1, 1>();
    global1 = array<Struct_1, 1>();
    var var_3 = var_2.a.x;
    var var_4 = global0[_wgslsmith_index_u32(4294967295u, 6u)];
    let var_5 = select(vec2<bool>(true, true), vec2<bool>(true, true), !(!func_3().xy));
    let var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1850f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_4.a.x, 983f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, var_0.x, (u_input.a << (~(~vec3<u32>(global2.x, global2.x, 8481u)) % vec3<u32>(32u))) & var_1, max(~vec4<i32>(1i, _wgslsmith_clamp_i32(-28868i, -1i, -2147483647i), var_1.x, -1i), vec4<i32>(~reverseBits(47472i), -(~u_input.a.x), var_1.x, ~1i)), var_0.yzz);
}

