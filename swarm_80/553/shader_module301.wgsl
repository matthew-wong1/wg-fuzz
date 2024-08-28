struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: u32,
    e: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11> = array<i32, 11>(-1i, -26205i, i32(-2147483648), -75114i, -30817i, 0i, -1i, i32(-2147483648), -1i, -40380i, 2147483647i);

var<private> global1: array<i32, 19> = array<i32, 19>(2147483647i, 22982i, -10458i, -14586i, 1i, 2147483647i, -1i, 2147483647i, -43305i, 49247i, i32(-2147483648), -1i, -10145i, i32(-2147483648), 31905i, -17160i, -16167i, -16362i, -78440i);

var<private> global2: array<i32, 14>;

var<private> global3: f32 = 274f;

var<private> global4: array<u32, 3> = array<u32, 3>(1u, 4294967295u, 4294967295u);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_5) -> u32 {
    global2 = array<i32, 14>();
    var var_0 = Struct_4(vec3<u32>(_wgslsmith_sub_u32(abs(1u), global4[_wgslsmith_index_u32(54880u, 3u)]), 1833u, abs((arg_0.a.e >> (global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_0.a.d, 3u)], 3u)], 3u)] % 32u)) << (~global4[_wgslsmith_index_u32(4294967295u, 3u)] % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-777f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -221f), _wgslsmith_div_f32(arg_0.c.c.b.x, 1000f))))), arg_0.c);
    let var_1 = _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), abs(~(~var_0.a))), 19u)], arg_0.c.c.a);
    var var_2 = u_input.d.x & _wgslsmith_sub_i32(firstTrailingBit(~countOneBits(var_0.c.c.a)), -2147483647i);
    global2 = array<i32, 14>();
    return _wgslsmith_div_u32(_wgslsmith_add_u32(arg_0.a.d, global4[_wgslsmith_index_u32(1u, 3u)]), 58158u);
}

fn func_2(arg_0: vec3<bool>, arg_1: bool, arg_2: f32, arg_3: Struct_4) -> Struct_2 {
    let var_0 = false;
    var var_1 = Struct_2(func_3(Struct_5(arg_3.c, _wgslsmith_div_f32(arg_2, 1000f), Struct_3(any(vec2<bool>(arg_3.c.a, true)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.c.b, global4[_wgslsmith_index_u32(1u, 3u)], global4[_wgslsmith_index_u32(16362u, 3u)], arg_3.a.x), vec4<u32>(arg_3.c.b, 23098u, 4294967295u, 0u)), Struct_1(-1i, arg_3.c.c.b), _wgslsmith_add_u32(global4[_wgslsmith_index_u32(arg_3.c.b, 3u)], global4[_wgslsmith_index_u32(14070u, 3u)]), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_3.c.e, 3u)], 3u)] | arg_3.c.e))), vec4<u32>(~abs(arg_3.c.b), ~(~4294967295u) >> (global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_3.c.e, 3u)], 3u)] % 32u), global4[_wgslsmith_index_u32(~70146u, 3u)] << (select(~global4[_wgslsmith_index_u32(46480u, 3u)], _wgslsmith_dot_vec3_u32(arg_3.a, arg_3.a), all(vec4<bool>(arg_3.c.a, arg_3.c.a, arg_1, true))) % 32u), _wgslsmith_dot_vec3_u32(~min(arg_3.a, arg_3.a), ~arg_3.a)), ~countOneBits(vec4<u32>(1u, 4294967295u, ~34490u, ~4294967295u)), Struct_1(abs(abs(u_input.c.x >> (4294967295u % 32u))), arg_3.c.c.b), _wgslsmith_sub_u32(arg_3.a.x, ~(~arg_3.a.x)));
    let var_2 = Struct_3(_wgslsmith_add_u32(arg_3.a.x, global4[_wgslsmith_index_u32(63436u >> (arg_3.c.e % 32u), 3u)]) != _wgslsmith_add_u32(var_1.e, var_1.b.x), global4[_wgslsmith_index_u32(var_1.b.x, 3u)], Struct_1(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(47705u, 0u, 1u), arg_3.a) | arg_3.a.x, 14u)], vec3<f32>(_wgslsmith_f_op_f32(-2586f + -1050f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c.c.b.x)), arg_2)), _wgslsmith_mult_u32(arg_3.c.d, abs(arg_3.c.e)), global4[_wgslsmith_index_u32(var_1.b.x, 3u)]);
    var var_3 = reverseBits(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c.x, arg_3.c.c.a), -select(u_input.c, vec2<i32>(30224i, -2147483647i), arg_3.c.a)), max(~var_1.d.a | 12393i, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_1.d.a), u_input.c))), var_2.c.a));
    var var_4 = Struct_5(Struct_3(select(false, true, var_2.a), ~var_2.d, var_2.c, var_2.e, _wgslsmith_mult_u32(101066u, ~global4[_wgslsmith_index_u32(1u, 3u)])), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 - -170f) + arg_2)))), Struct_3(false, global4[_wgslsmith_index_u32(4294967295u, 3u)], var_1.d, var_2.b, global4[_wgslsmith_index_u32(arg_3.a.x, 3u)]));
    return Struct_2(arg_3.a.x, select(vec4<u32>(942u ^ ~global4[_wgslsmith_index_u32(var_1.c.x, 3u)], ~var_1.b.x, 20554u, 12856u), var_1.b, false), _wgslsmith_sub_vec4_u32(~vec4<u32>(_wgslsmith_div_u32(var_1.c.x, var_1.c.x), ~arg_3.c.d, var_1.a, _wgslsmith_dot_vec2_u32(var_1.c.yw, vec2<u32>(arg_3.a.x, var_2.d))), countOneBits(var_1.b)), Struct_1(-1i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(834f, -1356f, -1175f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(829f, arg_2, 1024f)), _wgslsmith_f_op_vec3_f32(var_1.d.b + var_4.a.c.b)))), var_4.a.d);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    let var_0 = vec3<i32>(3544i >> (countOneBits(min(1u, 8224u)) % 32u), -1i, firstTrailingBit(~(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(arg_0.e, 19u)], arg_0.d.a) & countOneBits(arg_0.d.a))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.b.x)) + 503f);
    var var_2 = func_3(Struct_5(Struct_3(abs(global4[_wgslsmith_index_u32(1u, 3u)]) != ~1u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, 14485u, 1u, 0u), vec4<u32>(5617u, global4[_wgslsmith_index_u32(arg_0.b.x, 3u)], global4[_wgslsmith_index_u32(7647u, 3u)], 10820u), vec4<bool>(true, false, false, true)), _wgslsmith_div_vec4_u32(arg_0.c, vec4<u32>(1u, arg_0.e, global4[_wgslsmith_index_u32(1u, 3u)], 8831u))), func_2(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), true, _wgslsmith_f_op_f32(f32(-1f) * -294f), Struct_4(arg_0.c.wxx, var_1, Struct_3(false, 12659u, arg_1, 13995u, 4294967295u))).d, arg_0.c.x, ~_wgslsmith_mult_u32(4294967295u, 0u)), _wgslsmith_f_op_f32(abs(1001f)), Struct_3(true, countOneBits(34678u) >> (~arg_0.a % 32u), Struct_1(select(-2147483647i, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(12730u, 3u)], 19u)], false), _wgslsmith_f_op_vec3_f32(-arg_1.b)), arg_0.b.x, _wgslsmith_mod_u32(global4[_wgslsmith_index_u32(arg_0.c.x ^ arg_0.c.x, 3u)], ~arg_0.c.x))));
    global2 = array<i32, 14>();
    global0 = array<i32, 11>();
    return reverseBits(~48633u);
}

fn func_1(arg_0: bool) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-142f))))));
    var var_1 = global4[_wgslsmith_index_u32(~min(_wgslsmith_add_u32(~(~global4[_wgslsmith_index_u32(101963u, 3u)]), global4[_wgslsmith_index_u32(func_4(func_2(vec3<bool>(arg_0, arg_0, arg_0), false, var_0, Struct_4(vec3<u32>(0u, 18381u, global4[_wgslsmith_index_u32(31724u, 3u)]), -301f, Struct_3(false, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(5638u, 3u)], 3u)], 3u)], 3u)], Struct_1(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(30967u, 3u)], 3u)], 19u)], vec3<f32>(1000f, -482f, -1747f)), 132068u, global4[_wgslsmith_index_u32(1u, 3u)]))), Struct_1(0i, vec3<f32>(1000f, var_0, var_0))), 3u)]), 42133u), 3u)];
    let var_2 = Struct_1(-15778i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -679f, var_0) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-507f, -1626f, var_0), vec3<f32>(var_0, -348f, -1066f)))) * vec3<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), 1480f, _wgslsmith_f_op_f32(f32(-1f) * -1461f)))));
    var var_3 = ~28155u;
    var_1 = ~1u;
    return Struct_4(~func_2(vec3<bool>(!arg_0, false & arg_0, true), true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_0)))), Struct_4(~vec3<u32>(60183u, 37447u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 3u)], 3u)]), _wgslsmith_f_op_f32(exp2(var_2.b.x)), Struct_3(arg_0, global4[_wgslsmith_index_u32(51872u, 3u)], Struct_1(global1[_wgslsmith_index_u32(29597u, 19u)], vec3<f32>(var_2.b.x, 663f, var_0)), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1387u, 3u)], 3u)], 3u)]))).b.zxw, _wgslsmith_f_op_f32(-531f + 133f), Struct_3(var_0 > 294f, countOneBits(~global4[_wgslsmith_index_u32(69594u, 3u)]) & func_4(func_2(vec3<bool>(arg_0, arg_0, arg_0), false, -642f, Struct_4(vec3<u32>(1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 3u)], 3u)], global4[_wgslsmith_index_u32(6697u, 3u)]), -322f, Struct_3(false, 0u, Struct_1(0i, var_2.b), 26183u, global4[_wgslsmith_index_u32(48111u, 3u)]))), var_2), func_2(select(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, false), true), vec3<bool>(arg_0, arg_0, true), select(vec3<bool>(arg_0, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-810f + var_0)), Struct_4(_wgslsmith_div_vec3_u32(vec3<u32>(52931u, 22126u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(15353u, 3u)], 3u)], 3u)]), vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(64999u, 3u)], 3u)], 3u)], 3u)], 58422u, 30493u)), _wgslsmith_f_op_f32(-var_0), Struct_3(arg_0, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(3509u, 3u)], 3u)], Struct_1(1i, var_2.b), global4[_wgslsmith_index_u32(4294967295u, 3u)], 43519u))).d, ~global4[_wgslsmith_index_u32(_wgslsmith_div_u32(~0u, 1u), 3u)], _wgslsmith_mod_u32(global4[_wgslsmith_index_u32(~16118u, 3u)] >> (104807u % 32u), func_2(select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, arg_0, false), true), all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-var_0), Struct_4(vec3<u32>(global4[_wgslsmith_index_u32(4294967295u, 3u)], 39224u, global4[_wgslsmith_index_u32(4294967295u, 3u)]), var_2.b.x, Struct_3(false, 0u, var_2, global4[_wgslsmith_index_u32(11010u, 3u)], global4[_wgslsmith_index_u32(46556u, 3u)]))).c.x)));
}

fn func_5(arg_0: Struct_4) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c.c.b.x, arg_0.c.c.b.x, arg_0.b, arg_0.b), vec4<f32>(arg_0.c.c.b.x, 1260f, arg_0.c.c.b.x, arg_0.b)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1773f, 1000f, arg_0.b)) - vec4<f32>(-526f, arg_0.c.c.b.x, _wgslsmith_div_f32(1791f, -165f), _wgslsmith_f_op_f32(f32(-1f) * -130f))))));
    let var_1 = countOneBits(~min(vec4<u32>(arg_0.a.x, 4321u, 7449u, arg_0.c.e), vec4<u32>(0u, arg_0.a.x, arg_0.c.d, arg_0.c.e)) ^ ~reverseBits(vec4<u32>(arg_0.c.d, 4294967295u, 12644u, 4294967295u))) ^ _wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(21840u, 3u)], 3u)], 4294967295u, arg_0.c.b, 1u))), max(abs(vec4<u32>(4294967295u, arg_0.c.b, arg_0.a.x, 4294967295u) << (vec4<u32>(4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_0.a.x, 3u)], 3u)], 1u, 1u) % vec4<u32>(32u))), func_2(!vec3<bool>(true, false, arg_0.c.a), arg_0.c.a, 1604f, Struct_4(vec3<u32>(global4[_wgslsmith_index_u32(43326u, 3u)], 46168u, 0u), arg_0.b, arg_0.c)).b));
    let var_2 = Struct_1(func_2(vec3<bool>(true, all(select(vec4<bool>(true, arg_0.c.a, false, true), vec4<bool>(arg_0.c.a, arg_0.c.a, arg_0.c.a, arg_0.c.a), vec4<bool>(arg_0.c.a, arg_0.c.a, arg_0.c.a, arg_0.c.a))), true), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.c.b.x * -1305f)), func_1(all(vec3<bool>(arg_0.c.a, arg_0.c.a, arg_0.c.a)))).d.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.c.c.b.x), _wgslsmith_div_f32(-1000f, -1555f), 1918f), var_0.xww)));
    global0 = array<i32, 11>();
    let var_3 = true;
    return Struct_5(func_1(!any(!vec3<bool>(arg_0.c.a, true, arg_0.c.a))).c, -335f, arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(true));
    global2 = array<i32, 14>();
    let var_1 = Struct_3(any(!select(vec4<bool>(var_0.c.a, true, false, var_0.a.a), select(vec4<bool>(false, var_0.c.a, true, var_0.c.a), vec4<bool>(var_0.a.a, true, var_0.a.a, true), vec4<bool>(false, var_0.c.a, var_0.a.a, true)), vec4<bool>(var_0.a.a, false, var_0.a.a, var_0.a.a))), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(global4[_wgslsmith_index_u32(52831u, 3u)], 37759u)), reverseBits(~vec2<u32>(32478u, var_0.c.b))), Struct_1(i32(-1i) * -34774i, _wgslsmith_div_vec3_f32(var_0.c.c.b, func_5(func_1(true)).c.c.b)), (~30318u & var_0.c.e) & _wgslsmith_mult_u32(countOneBits(var_0.a.d), 18220u), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(~var_0.c.d, _wgslsmith_clamp_u32(38372u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 1u), ~global4[_wgslsmith_index_u32(var_0.a.e, 3u)]), vec3<u32>(func_5(Struct_4(vec3<u32>(62398u, global4[_wgslsmith_index_u32(var_0.c.d, 3u)], 28895u), var_0.b, Struct_3(false, 29718u, var_0.a.c, global4[_wgslsmith_index_u32(var_0.a.b, 3u)], 0u))).c.e, _wgslsmith_div_u32(var_0.c.b, 43173u), global4[_wgslsmith_index_u32(4294967295u, 3u)] << (1u % 32u))), _wgslsmith_sub_vec3_u32(~min(vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 3u)], 3u)], global4[_wgslsmith_index_u32(var_0.c.d, 3u)], global4[_wgslsmith_index_u32(4294967295u, 3u)]), vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 3u)], 3u)], global4[_wgslsmith_index_u32(0u, 3u)], var_0.c.b)), ~firstLeadingBit(vec3<u32>(var_0.a.b, 36747u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_0.c.e, 3u)], 3u)])))), 3u)]);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(833f + _wgslsmith_f_op_f32(f32(-1f) * -2223f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-389f + var_0.c.c.b.x)))));
    global0 = array<i32, 11>();
    var var_3 = _wgslsmith_clamp_vec2_u32(vec2<u32>(max(select(~0u, 104659u, all(vec2<bool>(var_0.a.a, var_1.a))), ~_wgslsmith_mult_u32(1u, 4693u)), _wgslsmith_sub_u32(0u, firstTrailingBit(var_1.d))), vec2<u32>(var_1.b, ~_wgslsmith_div_u32(global4[_wgslsmith_index_u32(var_0.c.d, 3u)], ~1u)), abs(func_2(vec3<bool>(945f <= var_0.b, var_1.a, var_0.c.a), func_5(func_1(false)).c.a, _wgslsmith_f_op_f32(-2300f * _wgslsmith_f_op_f32(-902f * var_2)), Struct_4(~vec3<u32>(69287u, var_0.c.d, global4[_wgslsmith_index_u32(10676u, 3u)]), -108f, func_5(Struct_4(vec3<u32>(var_0.c.d, 105270u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 3u)], 3u)]), 783f, Struct_3(true, 12537u, Struct_1(34298i, vec3<f32>(var_2, -1450f, var_0.a.c.b.x)), 14652u, 1u))).a)).c.zy));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, func_2(vec3<bool>(any(vec4<bool>(true, var_0.c.a, true, false)), any(vec2<bool>(var_0.c.a, true)) || var_0.c.a, true), var_0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.b.x)) + -854f), func_1(true)).c.x, var_1.c.b.x, func_3(func_5(Struct_4(_wgslsmith_mult_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(15152u, 3u)], var_0.c.b, var_0.a.d), vec3<u32>(0u, var_0.a.e, var_3.x)), 1689f, func_5(Struct_4(vec3<u32>(global4[_wgslsmith_index_u32(var_3.x, 3u)], global4[_wgslsmith_index_u32(var_3.x, 3u)], var_1.e), -2419f, var_0.c)).c))), -var_0.c.c.a);
}

