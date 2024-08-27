struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<f32>,
    d: i32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -31901i;

var<private> global1: array<f32, 10>;

var<private> global2: vec4<f32>;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec4<u32>(64799u, 8101u, 0u, 18560u), false, vec2<i32>(-13367i, 2147483647i)), vec2<bool>(false, true), vec3<f32>(560f, 1130f, 668f), i32(-2147483648), vec3<f32>(1459f, 1660f, 1014f));

var<private> global4: array<vec2<f32>, 30> = array<vec2<f32>, 30>(vec2<f32>(-1000f, 310f), vec2<f32>(1834f, -657f), vec2<f32>(-102f, -1801f), vec2<f32>(-1084f, 990f), vec2<f32>(1025f, -1000f), vec2<f32>(1488f, 1056f), vec2<f32>(-209f, -218f), vec2<f32>(-159f, 994f), vec2<f32>(727f, 167f), vec2<f32>(-624f, -223f), vec2<f32>(-215f, -1229f), vec2<f32>(567f, 575f), vec2<f32>(265f, 1052f), vec2<f32>(212f, 1256f), vec2<f32>(-1000f, 251f), vec2<f32>(-358f, 486f), vec2<f32>(202f, -1152f), vec2<f32>(1147f, 1533f), vec2<f32>(1047f, -2164f), vec2<f32>(-1561f, 550f), vec2<f32>(1000f, -1000f), vec2<f32>(-1444f, -520f), vec2<f32>(122f, 537f), vec2<f32>(642f, 2999f), vec2<f32>(512f, 143f), vec2<f32>(-1433f, -1517f), vec2<f32>(-353f, 119f), vec2<f32>(1000f, 143f), vec2<f32>(-3264f, 161f), vec2<f32>(843f, 1205f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<f32>) -> f32 {
    var var_0 = vec2<bool>(!global3.a.b, global3.a.b);
    global4 = array<vec2<f32>, 30>();
    var var_1 = reverseBits(544i);
    let var_2 = all(!(!(!(!global3.b))));
    var var_3 = _wgslsmith_div_u32(0u, 2452u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1.a.x, 10u)]) + global2.x))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec3<i32> {
    let var_0 = Struct_3(arg_1.b, Struct_2(Struct_1(_wgslsmith_sub_vec4_u32(~global3.a.a, vec4<u32>(0u, 29354u, global3.a.a.x, 70026u)), true, global3.a.c), global3.b, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global4[_wgslsmith_index_u32(arg_1.a.x, 30u)], global3.a, global3.c.xy)) - -646f), _wgslsmith_f_op_f32(step(global3.c.x, global3.c.x)), global3.e.x), _wgslsmith_div_i32(-7905i, global3.d), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-666f, _wgslsmith_f_op_f32(floor(-125f)), _wgslsmith_div_f32(237f, 622f))))), ~14182u);
    let var_1 = Struct_3(all(!vec3<bool>(var_0.b.a.b, true, global3.e.x != global1[_wgslsmith_index_u32(global3.a.a.x, 10u)])), Struct_2(Struct_1(~firstLeadingBit(vec4<u32>(4051u, 4294967295u, 4294967295u, u_input.c)), true, ~var_0.b.a.c), select(!select(vec2<bool>(arg_1.b, var_0.a), global3.b, global3.b), var_0.b.b, select(select(vec2<bool>(arg_0.b, false), global3.b, false), var_0.b.b, all(vec4<bool>(false, arg_0.b, true, var_0.a)))), vec3<f32>(var_0.b.c.x, -974f, _wgslsmith_f_op_f32(-var_0.b.c.x)), -23942i, vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(f32(-1f) * -1332f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.a.x, 10u)])))), _wgslsmith_clamp_u32(58150u, ~_wgslsmith_add_u32(var_0.b.a.a.x, 124936u << (var_0.c % 32u)), arg_0.a.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1115f, 138f, global3.c.x, global3.e.x)))))));
    var var_3 = var_1.b;
    var var_4 = _wgslsmith_mod_vec3_u32(var_3.a.a.wwz & max(~countOneBits(arg_1.a.zxx), ~min(var_3.a.a.wxz, vec3<u32>(global3.a.a.x, u_input.c, 4491u))), abs(vec3<u32>(_wgslsmith_mod_u32(0u, 12623u) ^ min(arg_1.a.x, var_3.a.a.x), var_0.c, global3.a.a.x << (~25974u % 32u))));
    return vec3<i32>(global3.d, -44811i, 1i) >> (_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 1u, _wgslsmith_clamp_u32(0u, 4294967295u, var_3.a.a.x)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.x, 23788u), var_0.b.a.a.xz), ~8502u, firstLeadingBit(var_3.a.a.x))), ~(select(vec3<u32>(arg_1.a.x, global3.a.a.x, 62124u), vec3<u32>(global3.a.a.x, 4294967295u, 55434u), var_3.a.b) ^ arg_1.a.yzx)) % vec3<u32>(32u));
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    global1 = array<f32, 10>();
    var var_0 = vec4<f32>(global2.x, 276f, _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-963f))));
    var var_1 = min(func_2(global3.a, global3.a), firstLeadingBit(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a.xwy, u_input.a.yyz) >> (~vec3<u32>(1u, u_input.c, global3.a.a.x) % vec3<u32>(32u)), u_input.a.xwx)));
    global3 = Struct_2(Struct_1(~(~vec4<u32>(53820u, 13287u, global3.a.a.x, global3.a.a.x) << ((global3.a.a & vec4<u32>(1u, 4294967295u, u_input.c, 86041u)) % vec4<u32>(32u))), false, ~var_1.zy), global3.b, vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global3.c.x, _wgslsmith_f_op_f32(1131f - arg_0.x))), 1478f)), _wgslsmith_f_op_f32(1f + -2344f), var_0.x), 1i, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_0.zyz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, -336f, global2.x)))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.x, -104f, _wgslsmith_f_op_f32(-global3.e.x), _wgslsmith_f_op_f32(func_3(var_0.wz, Struct_1(vec4<u32>(global3.a.a.x, u_input.c, global3.a.a.x, 42089u), global3.a.b, vec2<i32>(-2147483647i, var_1.x)), var_0.zx))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(137f, global1[_wgslsmith_index_u32(4294967295u, 10u)])), 1341f, _wgslsmith_f_op_f32(-708f + var_0.x), -1112f) * vec4<f32>(_wgslsmith_f_op_f32(var_0.x + -391f), _wgslsmith_f_op_f32(global2.x * global2.x), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 10u)]), _wgslsmith_f_op_f32(-240f * -1234f))))), !(!select(vec4<bool>(false, global3.b.x, true, global3.b.x), select(vec4<bool>(global3.a.b, false, false, global3.a.b), vec4<bool>(global3.a.b, global3.a.b, global3.b.x, global3.b.x), global3.a.b), select(vec4<bool>(false, false, true, global3.a.b), vec4<bool>(true, false, global3.a.b, false), global3.b.x)))));
    return _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_2(global3.a, !(!select(global3.b, vec2<bool>(true, true), vec2<bool>(global3.a.b, true))), _wgslsmith_f_op_vec3_f32(global3.c - _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.e.x, 1000f, global3.c.x) * global2.zwx)), global3.a.c.x & global3.a.c.x, _wgslsmith_f_op_vec3_f32(-global3.e));
    global2 = vec4<f32>(_wgslsmith_f_op_f32(func_1(vec3<f32>(global3.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1961f, -179f, global3.a.b)) - -422f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1025f, global3.c.x))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -194f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-605f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x + -485f), _wgslsmith_f_op_f32(-1066f - global1[_wgslsmith_index_u32(u_input.c, 10u)]))))), _wgslsmith_f_op_f32(1034f - -1000f));
    var var_0 = Struct_3(global3.a.b, Struct_2(Struct_1(~abs(global3.a.a), global3.a.b, -u_input.a.yz ^ _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 51882i), vec2<i32>(-36490i, global3.a.c.x))), !select(select(global3.b, vec2<bool>(global3.b.x, global3.a.b), global3.a.b), global3.b, false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1062f, 373f, global1[_wgslsmith_index_u32(global3.a.a.x, 10u)]) + global3.e))), reverseBits(-(-1i << (u_input.c % 32u))), global2.zwz), 4294967295u);
    let var_1 = -613f;
    var var_2 = vec3<bool>(false, !any(!var_0.b.b), var_0.b.b.x);
    let var_3 = global3.a.a.yz;
    var var_4 = Struct_2(Struct_1(global3.a.a << ((var_0.b.a.a | (vec4<u32>(u_input.c, 53716u, 13090u, 63872u) | global3.a.a)) % vec4<u32>(32u)), any(select(!vec3<bool>(false, false, var_2.x), !vec3<bool>(global3.a.b, true, false), false)), reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(28272i, var_0.b.d), vec2<i32>(9982i, 1i)))), vec2<bool>(false, (select(false, true, true) & (global1[_wgslsmith_index_u32(4294967295u, 10u)] >= var_0.b.e.x)) || false), var_0.b.e, -1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-816f, var_0.b.c.x, global1[_wgslsmith_index_u32(u_input.c, 10u)]))))))));
    global2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * -327f) * _wgslsmith_f_op_f32(f32(-1f) * -541f)), -1688f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.e.x))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global3.e.x, global1[_wgslsmith_index_u32(global3.a.a.x, 10u)])), _wgslsmith_f_op_f32(max(-2560f, -1000f)))) * 1f), _wgslsmith_f_op_f32(func_3(vec2<f32>(global1[_wgslsmith_index_u32(~(~51889u), 10u)], _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(var_1 * global1[_wgslsmith_index_u32(29584u, 10u)]))), var_4.a, _wgslsmith_f_op_vec2_f32(abs(var_0.b.c.yz)))));
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_4.c.x))))), -388f, var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(abs(_wgslsmith_dot_vec2_u32(var_0.b.a.a.yz, countOneBits(vec2<u32>(var_0.b.a.a.x, global3.a.a.x)))), ~global3.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.c.x, var_0.b.c.x)));
}

