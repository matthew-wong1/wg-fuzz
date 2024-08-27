struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: f32,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_3,
    c: Struct_4,
    d: vec2<f32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 6> = array<vec2<u32>, 6>(vec2<u32>(4294967295u, 6620u), vec2<u32>(68046u, 0u), vec2<u32>(4294967295u, 72049u), vec2<u32>(19079u, 2357u), vec2<u32>(1u, 0u), vec2<u32>(0u, 63433u));

var<private> global1: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(Struct_2(Struct_1(false, 843f, true, vec2<f32>(-1436f, -710f), 60904u), Struct_1(true, -1326f, false, vec2<f32>(152f, -616f), 65502u), Struct_1(true, 1364f, false, vec2<f32>(178f, 1095f), 0u)), 47637u), Struct_3(Struct_2(Struct_1(true, -450f, true, vec2<f32>(-483f, 334f), 4294967295u), Struct_1(false, 1439f, false, vec2<f32>(-701f, 1610f), 0u), Struct_1(true, 571f, false, vec2<f32>(281f, 772f), 0u)), 0u), Struct_3(Struct_2(Struct_1(false, -1000f, true, vec2<f32>(-968f, -100f), 0u), Struct_1(true, -1058f, false, vec2<f32>(163f, -521f), 39723u), Struct_1(true, -1645f, true, vec2<f32>(-816f, -1550f), 1u)), 37329u), Struct_3(Struct_2(Struct_1(true, -1345f, false, vec2<f32>(-241f, -258f), 1u), Struct_1(true, -918f, true, vec2<f32>(-1000f, 940f), 37473u), Struct_1(false, -1000f, false, vec2<f32>(1073f, 193f), 38980u)), 4294967295u), Struct_3(Struct_2(Struct_1(true, 217f, false, vec2<f32>(-543f, -1528f), 58265u), Struct_1(true, -1131f, true, vec2<f32>(556f, -1000f), 24703u), Struct_1(true, -355f, true, vec2<f32>(939f, -1491f), 4294967295u)), 4294967295u), Struct_3(Struct_2(Struct_1(true, -2171f, false, vec2<f32>(1000f, -1311f), 0u), Struct_1(true, 164f, true, vec2<f32>(-1988f, 318f), 31707u), Struct_1(false, 590f, true, vec2<f32>(1000f, 281f), 0u)), 50761u), Struct_3(Struct_2(Struct_1(true, -927f, false, vec2<f32>(-1928f, -473f), 101037u), Struct_1(true, 1025f, true, vec2<f32>(-377f, 1795f), 4294967295u), Struct_1(true, -1000f, true, vec2<f32>(1392f, 1000f), 1u)), 10772u), Struct_3(Struct_2(Struct_1(true, 2005f, false, vec2<f32>(216f, 1124f), 56438u), Struct_1(true, -501f, true, vec2<f32>(-864f, -1289f), 0u), Struct_1(true, 534f, true, vec2<f32>(-778f, 1000f), 4294967295u)), 0u), Struct_3(Struct_2(Struct_1(true, 807f, false, vec2<f32>(1051f, -1562f), 33094u), Struct_1(true, -1457f, true, vec2<f32>(1000f, -1916f), 61449u), Struct_1(true, 1000f, true, vec2<f32>(-1000f, 733f), 0u)), 14290u), Struct_3(Struct_2(Struct_1(true, 746f, false, vec2<f32>(-1193f, -998f), 9797u), Struct_1(true, -322f, true, vec2<f32>(143f, 1063f), 0u), Struct_1(true, -137f, false, vec2<f32>(393f, -566f), 7716u)), 19675u));

var<private> global2: Struct_1 = Struct_1(false, 1127f, true, vec2<f32>(-119f, -1752f), 8175u);

var<private> global3: array<f32, 13>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>) -> vec3<f32> {
    global2 = Struct_1(all(!(!select(vec4<bool>(false, false, false, global2.a), vec4<bool>(arg_0.a.a, arg_0.a.c, global2.a, true), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.b)), false | all(vec4<bool>(false, select(true, true, false), true, arg_0.b.a)), global2.d, reverseBits(~(~arg_1.x) ^ 21063u));
    var var_0 = 4294967295u;
    let var_1 = ~select(reverseBits(_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(61317u, arg_0.c.e, global2.e, 41893u)), firstTrailingBit(vec4<u32>(global2.e, arg_1.x, 36329u, 0u)), ~vec4<u32>(global2.e, 0u, global2.e, arg_0.a.e))), _wgslsmith_add_vec4_u32(vec4<u32>(global2.e, 64552u >> (arg_1.x % 32u), max(31593u, 18438u), 4294967295u), ~vec4<u32>(44948u, 4294967295u, global2.e, arg_0.c.e)), vec4<bool>(~arg_0.c.e >= 1u, any(select(vec4<bool>(true, false, arg_0.a.a, global2.a), vec4<bool>(global2.c, true, false, global2.c), global2.a)), firstLeadingBit(arg_0.b.e) <= countOneBits(2388u), select(false, arg_0.a.c != global2.c, true)));
    var_0 = arg_1.x;
    var var_2 = Struct_3(arg_0, global2.e);
    return vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -881f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.b)) * _wgslsmith_f_op_f32(abs(1000f))) - -1191f)), 1295f);
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_1) -> bool {
    let var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(global2.a, -395f, global2.a, vec2<f32>(arg_2.d.x, -990f), arg_2.e), Struct_1(global2.a, arg_2.d.x, true, arg_2.d, 4294967295u), arg_2), vec3<u32>(arg_2.e, 64242u, 1u))))), global1[_wgslsmith_index_u32(~4294967295u, 10u)], Struct_4(~1u, arg_2.e, _wgslsmith_f_op_f32(global2.d.x + _wgslsmith_f_op_f32(-1f)), vec3<u32>(0u, 1u, abs(~arg_0.x)), arg_2), _wgslsmith_f_op_vec2_f32(ceil(global2.d)), ~abs(_wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(29165u, global2.e, 15084u)), vec3<u32>(1u, 4294967295u, global2.e))));
    var var_1 = Struct_4(~50052u, 75262u, arg_2.d.x, arg_0, Struct_1(any(vec3<bool>(any(vec4<bool>(false, false, true, var_0.c.e.a)), all(vec4<bool>(arg_2.c, arg_2.a, false, global2.c)), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(var_0.b.a, vec3<u32>(1u, 4294967295u, arg_0.x) ^ vec3<u32>(global2.e, arg_0.x, 1u))).x), global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(0u, 58283u), 13u)] != _wgslsmith_f_op_f32(arg_1 + arg_2.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(296f, global2.b) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.d.x, var_0.b.a.c.d.x), vec2<f32>(arg_1, 258f)))), 34286u));
    var var_2 = !select(vec3<bool>(all(!vec3<bool>(global2.a, var_0.c.e.c, true)), false, all(vec2<bool>(arg_2.c, arg_2.c))), vec3<bool>(-u_input.a > -u_input.a, var_1.e.c, !global2.c && true), arg_2.a);
    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1482f, 1376f)) + -934f), _wgslsmith_f_op_f32(f32(-1f) * -742f)))));
    var var_4 = -1000f;
    return select(false, any(var_2.xx), var_0.c.e.c);
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    global0 = array<vec2<u32>, 6>();
    return Struct_2(Struct_1(!(global2.c | global2.c) & false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(137f)) * _wgslsmith_f_op_f32(-1674f - _wgslsmith_f_op_f32(global2.b + 841f))), !func_2(_wgslsmith_sub_vec3_u32(vec3<u32>(global2.e, global2.e, 4294967295u), vec3<u32>(global2.e, global2.e, global2.e)), _wgslsmith_f_op_f32(-global2.b), Struct_1(global2.c, -882f, false, global2.d, 63184u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.d), global2.d), 25519u), Struct_1(u_input.a > abs(4033i), global2.d.x, true, global2.d, ~(~global2.e)), Struct_1(false != global2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.b)) - _wgslsmith_f_op_f32(-global2.b)), true, global2.d, abs(firstLeadingBit(reverseBits(56343u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<i32>(-2147483647i, _wgslsmith_div_i32(countOneBits(u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(-12683i, -21330i), vec2<i32>(u_input.a, -2147483647i))) >> (1u % 32u), u_input.a));
    var_0 = func_1(max(max(-reverseBits(vec3<i32>(u_input.a, u_input.a, u_input.a)), select(-vec3<i32>(u_input.a, -1i, u_input.a), ~vec3<i32>(-23612i, 4010i, u_input.a), select(vec3<bool>(true, var_0.c.a, false), vec3<bool>(var_0.b.c, var_0.c.c, false), vec3<bool>(global2.a, global2.a, global2.c)))), -min(vec3<i32>(1i, u_input.a, u_input.a), vec3<i32>(1i, u_input.a, 36469i)) ^ countOneBits(vec3<i32>(-1i, 0i, u_input.a))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1091f);
    var var_2 = Struct_2(var_0.b, var_0.c, var_0.a);
    global0 = array<vec2<u32>, 6>();
    var var_3 = !vec2<bool>(true, var_2.c.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.d)), (~vec2<u32>(var_2.a.e, var_2.a.e) ^ ~(global0[_wgslsmith_index_u32(var_2.b.e, 6u)] ^ global0[_wgslsmith_index_u32(var_0.a.e, 6u)])) >> (countOneBits(_wgslsmith_sub_vec2_u32(global0[_wgslsmith_index_u32(~13266u, 6u)], vec2<u32>(var_2.b.e, 88257u))) % vec2<u32>(32u)), ~2147483647i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.b.d.x)) + _wgslsmith_f_op_f32(min(658f, global3[_wgslsmith_index_u32(var_0.c.e, 13u)]))), _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(2515f - -595f)), 2168f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(var_2.c.e, 13u)])))))), u_input.a);
}

