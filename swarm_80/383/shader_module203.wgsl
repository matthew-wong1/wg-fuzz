struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 30> = array<vec2<bool>, 30>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global1: array<f32, 29> = array<f32, 29>(-995f, 139f, -210f, -454f, -1004f, -283f, 922f, -384f, 2337f, 449f, 1000f, -417f, 1133f, -211f, -275f, 194f, 127f, 1000f, -747f, -1823f, -400f, -541f, -376f, 270f, -464f, 836f, 1043f, 416f, 462f);

var<private> global2: array<u32, 31>;

var<private> global3: Struct_1 = Struct_1(true, 1i);

var<private> global4: array<vec3<i32>, 12> = array<vec3<i32>, 12>(vec3<i32>(14827i, -49316i, 38840i), vec3<i32>(1819i, 9954i, 2147483647i), vec3<i32>(2147483647i, -48333i, -7714i), vec3<i32>(-1i, 0i, 0i), vec3<i32>(24951i, -1i, 1i), vec3<i32>(0i, 24850i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -8018i, i32(-2147483648)), vec3<i32>(0i, 14346i, 2147483647i), vec3<i32>(-8625i, 2147483647i, 18361i), vec3<i32>(1857i, 2147483647i, 2319i), vec3<i32>(-17392i, 29929i, -9078i), vec3<i32>(17036i, 0i, 0i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> bool {
    let var_0 = all(select(select(vec4<bool>(global1[_wgslsmith_index_u32(1982u, 29u)] > global1[_wgslsmith_index_u32(u_input.d, 29u)], true, true, true), vec4<bool>(arg_2.a, !global3.a, false | arg_0.a, !arg_0.a), !any(vec4<bool>(global3.a, global3.a, global3.a, false))), vec4<bool>(true, any(vec2<bool>(global3.a, arg_2.a)), arg_1.b <= -21757i, !arg_0.a), !(!vec4<bool>(global3.a, false, false, arg_2.a))));
    global1 = array<f32, 29>();
    let var_1 = select(vec3<bool>(!(!var_0 & (1321f < global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d, 31u)], 29u)])), !all(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19823u, 31u)], 31u)], 4294967295u), 30u)]), !arg_1.a), vec3<bool>(true, !all(vec4<bool>(arg_1.a, false, arg_1.a, true)), true), select(!select(vec3<bool>(arg_1.a, true, arg_2.a), vec3<bool>(true, false, arg_1.a), select(vec3<bool>(arg_0.a, arg_0.a, true), vec3<bool>(false, global3.a, true), arg_0.a)), vec3<bool>(false, !arg_1.a, var_0), select(vec3<bool>(all(vec4<bool>(true, var_0, var_0, arg_1.a)), 4294967295u <= global2[_wgslsmith_index_u32(48759u, 31u)], false), select(!vec3<bool>(false, false, arg_2.a), vec3<bool>(false, true, global3.a), select(vec3<bool>(arg_2.a, var_0, false), vec3<bool>(false, arg_1.a, arg_0.a), vec3<bool>(var_0, true, arg_1.a))), vec3<bool>(arg_2.a, arg_1.a != arg_0.a, all(vec2<bool>(arg_0.a, false))))));
    var var_2 = vec3<u32>(abs(global2[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(70120u ^ global2[_wgslsmith_index_u32(u_input.b, 31u)], ~u_input.c), 49202u), 31u)]), u_input.c, _wgslsmith_sub_u32(_wgslsmith_div_u32(13529u ^ ~u_input.d, 0u | u_input.c), ~34582u));
    global1 = array<f32, 29>();
    return all(var_1.zz);
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_2(countOneBits(arg_1), Struct_1(true, 0i), Struct_1(func_3(Struct_1(true, _wgslsmith_mod_i32(u_input.a.x, -1i)), Struct_1(false, 35707i), Struct_1(17786i != global3.b, firstTrailingBit(global3.b)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1951f, global1[_wgslsmith_index_u32(u_input.b, 29u)]) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 29u)]))), min(u_input.a.x >> (arg_0 % 32u), _wgslsmith_mod_i32(-5861i, global3.b)) & select(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-9438i, u_input.a.x, global3.b, u_input.a.x)), u_input.a.x, global3.a)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(var_0.a.x, 29u)]))), _wgslsmith_f_op_f32(-256f + _wgslsmith_div_f32(-570f, global1[_wgslsmith_index_u32(0u, 29u)])))), _wgslsmith_div_f32(744f, -196f), -337f, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 29u)] - global1[_wgslsmith_index_u32(u_input.d << (global2[_wgslsmith_index_u32(arg_0, 31u)] % 32u), 29u)]))));
    var var_2 = vec4<u32>(countOneBits(80880u), 32446u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(81102u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17042u, 31u)], 31u)], global2[_wgslsmith_index_u32(1u, 31u)]), ~vec4<u32>(73417u, 9746u, 7582u, 0u)) >> (~(vec4<u32>(u_input.c, arg_0, 41301u, arg_0) ^ vec4<u32>(global2[_wgslsmith_index_u32(1u, 31u)], 77989u, 48017u, 4294967295u)) % vec4<u32>(32u)), ~select(~vec4<u32>(var_0.a.x, arg_1.x, 4294967295u, 32418u), ~vec4<u32>(33936u, 38659u, 28477u, 0u), select(vec4<bool>(global3.a, var_0.b.a, global3.a, false), vec4<bool>(global3.a, true, global3.a, false), true))), arg_1.x);
    global2 = array<u32, 31>();
    global0 = array<vec2<bool>, 30>();
    return Struct_2(vec2<u32>(_wgslsmith_dot_vec3_u32(abs(max(var_2.wzy, vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 31u)], 1u, u_input.c))), ~vec3<u32>(global2[_wgslsmith_index_u32(1u, 31u)], 1u, 4294967295u)), _wgslsmith_div_u32(abs(1u), global2[_wgslsmith_index_u32(43828u, 31u)])), Struct_1(any(vec4<bool>(!var_0.b.a, global3.a & var_0.b.a, func_3(var_0.b, var_0.b, Struct_1(true, 32349i), -616f), global3.a)), 9626i), Struct_1(true, var_0.b.b & _wgslsmith_dot_vec3_i32(global4[_wgslsmith_index_u32(48145u, 12u)] & global4[_wgslsmith_index_u32(var_2.x, 12u)], u_input.a.xxz)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: bool) -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_1.a.x, arg_1.a.x, ~54361u | ~func_2(~global2[_wgslsmith_index_u32(arg_1.a.x, 31u)], ~arg_1.a).a.x), 30u)];
    var var_1 = u_input.a.www;
    let var_2 = func_2(arg_1.a.x, ~abs(vec2<u32>(22999u | u_input.d, ~arg_1.a.x))).c;
    var var_3 = func_2(_wgslsmith_sub_u32(~(~29120u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(29040u, u_input.d, arg_1.a.x, u_input.c), vec4<u32>(80697u, 96966u, 11739u, 1u)) >> (1u % 32u)), _wgslsmith_sub_vec2_u32(~arg_1.a, select(~arg_0.a, ~vec2<u32>(0u, 4294967295u), vec2<bool>(var_2.a, arg_1.c.a)) >> (arg_0.a % vec2<u32>(32u)))).c;
    var var_4 = ~(_wgslsmith_add_u32(66233u, 37805u) | ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_0.a.x, global2[_wgslsmith_index_u32(arg_1.a.x, 31u)]), firstLeadingBit(u_input.d)));
    return firstLeadingBit(firstTrailingBit(-61534i));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: u32) -> u32 {
    var var_0 = Struct_2(~(~abs(countOneBits(vec2<u32>(0u, 16842u)))), Struct_1(false, func_4(func_2(21943u, ~vec2<u32>(global2[_wgslsmith_index_u32(0u, 31u)], 19001u)), Struct_2(~vec2<u32>(global2[_wgslsmith_index_u32(arg_2, 31u)], 25027u), Struct_1(false, 66151i), func_2(0u, vec2<u32>(0u, 26284u)).c), _wgslsmith_mod_i32(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(global3.b, 0i)), global3.a)), Struct_1(true && !all(vec4<bool>(true, global3.a, global3.a, global3.a)), u_input.a.x));
    global3 = func_2(~var_0.a.x, vec2<u32>(~1u, 4781u)).b;
    global2 = array<u32, 31>();
    var var_1 = func_3(var_0.c, var_0.c, var_0.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -636f))), _wgslsmith_f_op_f32(488f - -831f))));
    global3 = func_2(~(~_wgslsmith_clamp_u32(4294967295u, global2[_wgslsmith_index_u32(var_0.a.x, 31u)], arg_2) >> (func_2(1u, var_0.a).a.x % 32u)), vec2<u32>(arg_2, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.a.x, 31u)], 31u)])).c;
    return reverseBits(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 31>();
    let var_0 = ~func_1(global2[_wgslsmith_index_u32(~u_input.d, 31u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(340f - -1568f), _wgslsmith_f_op_f32(-241f + 528f))), firstTrailingBit(34381u) >> (countOneBits(u_input.d) % 32u));
    let var_1 = Struct_1(true, 0i);
    var var_2 = Struct_2(max(abs(~(vec2<u32>(u_input.c, var_0) >> (vec2<u32>(54677u, u_input.c) % vec2<u32>(32u)))), countOneBits(abs(max(vec2<u32>(u_input.b, 24903u), vec2<u32>(1u, u_input.d))))), var_1, func_2(1u, vec2<u32>(26606u, firstTrailingBit(~4294967295u))).b);
    let var_3 = func_2(global2[_wgslsmith_index_u32(abs((select(global2[_wgslsmith_index_u32(41591u, 31u)], var_0, false) << (reverseBits(122498u) % 32u)) << (abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a.x, u_input.b, var_0), vec3<u32>(42290u, 0u, u_input.b))) % 32u)), 31u)], ~select(~vec2<u32>(1u, global2[_wgslsmith_index_u32(u_input.c, 31u)]), var_2.a, !global0[_wgslsmith_index_u32(~4294967295u, 30u)])).b;
    let var_4 = ~(~(select(vec4<u32>(121691u, var_0, var_0, var_0), vec4<u32>(1u, var_2.a.x, var_2.a.x, var_0), vec4<bool>(true, var_1.a, var_1.a, var_3.a)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, var_0, 82148u, 4294967295u), vec4<u32>(u_input.d, var_0, 0u, var_0)) % vec4<u32>(32u))) ^ vec4<u32>(~abs(var_2.a.x), 54465u, countOneBits(var_0 | var_0), global2[_wgslsmith_index_u32(min(66721u, _wgslsmith_mult_u32(var_2.a.x, 55702u)), 31u)]));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-2372f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 29u)]), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0, global2[_wgslsmith_index_u32(58973u, 31u)]), var_2.a, ~vec2<u32>(8404u, var_4.x)), ~vec2<u32>(var_4.x, var_4.x)), 29u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(334f)))));
}

