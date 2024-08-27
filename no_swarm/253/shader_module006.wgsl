struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: u32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_5 {
    a: vec3<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<i32, 5> = array<i32, 5>(14807i, 26801i, 22884i, 24458i, -7549i);

var<private> global2: Struct_1 = Struct_1(41417u, vec3<u32>(1u, 21320u, 27809u), vec2<u32>(0u, 2721u), vec4<i32>(53392i, 53075i, 1i, -1i), 15578i);

var<private> global3: array<vec3<i32>, 1>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<u32>) -> f32 {
    var var_0 = Struct_4(Struct_1(73198u, ~global2.b, ~vec2<u32>(~u_input.a.x, 86985u), -(abs(global2.d) >> (vec4<u32>(u_input.a.x, 52963u, arg_1.x, u_input.a.x) % vec4<u32>(32u))), -1i), vec2<bool>(true, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), false)))), Struct_1(u_input.a.x, max(vec3<u32>(_wgslsmith_add_u32(26768u, 0u), 1u, _wgslsmith_div_u32(35558u, u_input.a.x)), global2.b), vec2<u32>(712u, _wgslsmith_dot_vec2_u32(~u_input.a.yx, arg_1)), firstTrailingBit(vec4<i32>(1i, reverseBits(arg_0.x), 2260i & arg_0.x, 15200i & global1[_wgslsmith_index_u32(global2.a, 5u)])), reverseBits(33659i)), Struct_2(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1383f, 311f, -1640f, -1594f), vec4<f32>(-542f, 2092f, -1595f, -918f), false))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(301f, -246f, -860f, -549f))), ~arg_1.x, abs(global2.d)));
    var var_1 = var_0.d.c;
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-797f, _wgslsmith_div_f32(-1037f, var_0.d.b.x), _wgslsmith_f_op_f32(-var_0.d.b.x), _wgslsmith_f_op_f32(f32(-1f) * -195f))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.d.b.x), _wgslsmith_f_op_f32(-var_0.d.b.x), _wgslsmith_f_op_f32(-var_0.d.b.x), _wgslsmith_f_op_f32(-var_0.d.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.d.b * vec4<f32>(var_0.d.b.x, var_0.d.b.x, -114f, var_0.d.b.x)) - _wgslsmith_f_op_vec4_f32(step(var_0.d.b, var_0.d.b))))), min(~(vec3<i32>(global1[_wgslsmith_index_u32(19122u, 5u)], -55181i, global2.e) >> (countOneBits(vec3<u32>(1u, 74839u, arg_1.x)) % vec3<u32>(32u))), -var_0.a.d.xwy), ~u_input.a.x);
    global3 = array<vec3<i32>, 1>();
    let var_3 = Struct_5(vec3<bool>(false, true, var_0.b.x), global2.d.x);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1526f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x - -481f)) - -630f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.b.x + var_0.d.b.x)))))));
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    global0 = _wgslsmith_div_u32(1u, global2.a);
    var var_0 = _wgslsmith_f_op_f32(func_3(vec3<i32>(0i, global1[_wgslsmith_index_u32(0u, 5u)], 1i) & (global3[_wgslsmith_index_u32(12037u, 1u)] ^ (global3[_wgslsmith_index_u32(u_input.a.x, 1u)] << (vec3<u32>(global2.c.x, 1u, 45593u) % vec3<u32>(32u)))), firstTrailingBit(~(~u_input.a.xy) >> (_wgslsmith_mod_vec2_u32(u_input.a.xy, vec2<u32>(u_input.a.x, u_input.a.x)) % vec2<u32>(32u)))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x) + arg_0.x), _wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(-1410f + arg_0.x))))), vec3<i32>(_wgslsmith_add_i32(-2147483647i, 1i), ~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(global2.a, 5u)], global2.d.x, 30828i), vec3<i32>(global1[_wgslsmith_index_u32(1u, 5u)], -1i, global1[_wgslsmith_index_u32(6449u, 5u)])), _wgslsmith_clamp_i32(29467i, 1i, -2614i)), max(~_wgslsmith_dot_vec2_i32(vec2<i32>(11877i, 25039i), global2.d.xy), -firstLeadingBit(global1[_wgslsmith_index_u32(u_input.a.x, 5u)]))), global2.c.x);
    return Struct_1(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(global2.b.x, 76470u, global2.a, u_input.a.x)) >> (vec4<u32>(var_1.c >> (var_1.c % 32u), 4294967295u << (global2.c.x % 32u), 44345u, ~var_1.c) % vec4<u32>(32u)), ~vec4<u32>(117u, 13318u, global2.b.x, global2.c.x) ^ select(_wgslsmith_clamp_vec4_u32(vec4<u32>(6133u, u_input.a.x, 28702u, global2.a), vec4<u32>(89064u, 37884u, 15062u, 20024u), vec4<u32>(var_1.c, var_1.c, 4294967295u, 4294967295u)), vec4<u32>(44842u, 1u, global2.a, var_1.c), true)), firstTrailingBit(global2.b), ~vec2<u32>(~1u, ~u_input.a.x) & u_input.a.xy, ~countOneBits(vec4<i32>(~(-27732i), _wgslsmith_add_i32(global1[_wgslsmith_index_u32(var_1.c, 5u)], -1i), _wgslsmith_mult_i32(17176i, -16364i), firstTrailingBit(global1[_wgslsmith_index_u32(u_input.a.x, 5u)]))), -2155i);
}

fn func_1(arg_0: Struct_5, arg_1: vec4<u32>, arg_2: u32) -> vec2<u32> {
    var var_0 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(778f, _wgslsmith_f_op_f32(-1000f + -1378f)))));
    var var_1 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(732f, -239f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(856f, -198f) - vec2<f32>(-499f, 164f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-335f, 1171f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-746f, 156f))))));
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(265f, _wgslsmith_f_op_f32(174f * _wgslsmith_f_op_f32(-2024f + _wgslsmith_f_op_f32(f32(-1f) * -735f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(808f)))), 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1024f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(max(vec3<i32>(-45772i, var_0.e, 14763i), vec3<i32>(var_0.e, arg_0.b, var_0.d.x)), vec2<u32>(var_0.c.x, global2.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-899f * 1231f), 755f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -127f)), _wgslsmith_f_op_f32(max(-125f, -542f)))));
    var var_3 = vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(func_2(vec2<f32>(var_2.x, var_2.x)).b, select(firstLeadingBit(vec3<u32>(global2.c.x, global2.a, var_0.b.x)), arg_1.wyw >> (var_0.b % vec3<u32>(32u)), 4294967295u > var_0.a)), var_0.b), 0u << (max(_wgslsmith_mult_u32(arg_1.x, 1u), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, u_input.a.x), vec2<u32>(arg_2, 1u))) % 32u));
    var var_4 = vec4<u32>(arg_2, 4294967295u, arg_1.x, firstLeadingBit(var_1.c.x));
    return max(var_0.c, arg_1.zw);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2.a;
    let var_0 = Struct_4(Struct_1(global2.c.x, vec3<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(abs(global2.c), func_1(Struct_5(vec3<bool>(true, true, true), global2.e), vec4<u32>(0u, u_input.a.x, u_input.a.x, 4886u), u_input.a.x)), u_input.a.x >> (9953u % 32u)), firstLeadingBit(~min(u_input.a.zz, global2.b.yx)), vec4<i32>((global2.e | -2147483647i) >> (~u_input.a.x % 32u), global1[_wgslsmith_index_u32(global2.a, 5u)], countOneBits(global2.e ^ global1[_wgslsmith_index_u32(u_input.a.x, 5u)]), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a.x, global2.b.x), u_input.a.x), 5u)]), ~_wgslsmith_div_i32(i32(-1i) * -25675i, global1[_wgslsmith_index_u32(global2.a, 5u)])), select(vec2<bool>(true, true), !vec2<bool>(all(vec3<bool>(true, false, true)), true), vec2<bool>(any(vec3<bool>(false, true, false)), any(select(vec2<bool>(false, true), vec2<bool>(true, true), false)))), Struct_1(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 11223u, global2.c.x, 4294967295u), vec4<u32>(67799u, 0u, global2.a, 4294967295u)) << (global2.c.x % 32u), func_1(Struct_5(vec3<bool>(false, true, false), -2147483647i), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, 0u), vec4<u32>(global2.c.x, u_input.a.x, u_input.a.x, 8863u)), _wgslsmith_add_u32(0u, 1u)).x, func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1079f, -134f))).a), vec3<u32>(u_input.a.x, global2.a, 1u), vec2<u32>(1u, 26164u >> (u_input.a.x % 32u)) | vec2<u32>(func_2(vec2<f32>(-205f, -587f)).c.x, reverseBits(u_input.a.x)), ~(-abs(vec4<i32>(-1408i, -2147483647i, global2.d.x, global1[_wgslsmith_index_u32(0u, 5u)]))), _wgslsmith_mult_i32(1i, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, u_input.a.x) >> (abs(u_input.a.x) % 32u), 5u)])), Struct_2(!(any(vec3<bool>(true, true, true)) & true), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-265f, _wgslsmith_f_op_f32(f32(-1f) * -1278f), 2489f, _wgslsmith_div_f32(1531f, -149f)))), _wgslsmith_add_u32(65685u, (u_input.a.x >> (global2.a % 32u)) >> (_wgslsmith_sub_u32(4294967295u, u_input.a.x) % 32u)), global2.d));
    global3 = array<vec3<i32>, 1>();
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(var_0.d.b));
    global3 = array<vec3<i32>, 1>();
    var var_2 = ~((global2.a | ~(~global2.c.x)) & _wgslsmith_mod_u32(~var_0.a.c.x, global2.b.x ^ 1u));
    global1 = array<i32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(func_1(Struct_5(!vec3<bool>(false, true, var_0.b.x), _wgslsmith_dot_vec4_i32(global2.d & vec4<i32>(-1i, 815i, global2.e, -9917i), vec4<i32>(global2.e, -5647i, var_0.a.d.x, 0i))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(global2.c.x, var_0.d.c, var_0.a.c.x, 10334u), vec4<u32>(global2.a, global2.b.x, 0u, 0u)) | vec4<u32>(76007u, 0u, 4294967295u, ~0u), 10903u), var_0.c.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.b.x - _wgslsmith_f_op_f32(var_0.d.b.x - -889f)))), _wgslsmith_sub_i32(-1i, -var_0.d.d.x), _wgslsmith_f_op_f32(893f - var_0.d.b.x));
}

