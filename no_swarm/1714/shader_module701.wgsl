struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(-6492i, -34063i, vec3<u32>(4294967295u, 26660u, 53428u), 5305i), Struct_1(16226i, 11633i, vec3<u32>(1u, 3038u, 523u), 2147483647i), Struct_1(-7051i, i32(-2147483648), vec3<u32>(25902u, 1u, 4294967295u), 13025i), Struct_1(-65078i, 14389i, vec3<u32>(4294967295u, 1u, 1u), -1i), Struct_1(0i, 0i, vec3<u32>(0u, 98194u, 1087u), 5476i), Struct_1(13662i, 2147483647i, vec3<u32>(4294967295u, 4294967295u, 69469u), 6480i), Struct_1(12475i, 17716i, vec3<u32>(1u, 1u, 0u), i32(-2147483648)), Struct_1(-38423i, 0i, vec3<u32>(32054u, 0u, 42987u), 2147483647i), Struct_1(1i, 2147483647i, vec3<u32>(58608u, 46714u, 0u), -416i), Struct_1(-13577i, -27157i, vec3<u32>(80782u, 4294967295u, 0u), 21882i), Struct_1(1i, 11136i, vec3<u32>(42691u, 1u, 4294967295u), 3538i), Struct_1(-1i, 39950i, vec3<u32>(1u, 1246u, 1u), -1i), Struct_1(2147483647i, 1i, vec3<u32>(1u, 47068u, 22995u), 1i), Struct_1(-90807i, -1i, vec3<u32>(1u, 4294967295u, 51855u), -28884i), Struct_1(-46312i, 0i, vec3<u32>(0u, 1u, 1u), 1i), Struct_1(-10652i, 2147483647i, vec3<u32>(28972u, 0u, 4294967295u), i32(-2147483648)), Struct_1(-19423i, 1i, vec3<u32>(0u, 1u, 14922u), 2147483647i), Struct_1(1i, -3524i, vec3<u32>(1u, 4369u, 35793u), 1i));

var<private> global1: array<f32, 13>;

var<private> global2: array<vec2<u32>, 15> = array<vec2<u32>, 15>(vec2<u32>(57398u, 4294967295u), vec2<u32>(4294967295u, 59387u), vec2<u32>(4294967295u, 76420u), vec2<u32>(26160u, 45545u), vec2<u32>(86302u, 11440u), vec2<u32>(1u, 40847u), vec2<u32>(22045u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 55007u), vec2<u32>(12624u, 1u), vec2<u32>(1u, 0u), vec2<u32>(10194u, 0u), vec2<u32>(26855u, 1u), vec2<u32>(0u, 0u), vec2<u32>(29325u, 4294967295u));

var<private> global3: Struct_2;

var<private> global4: vec3<i32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    var var_0 = 314f;
    var var_1 = Struct_2(Struct_1(select(max(0i, global3.c), global3.a.b, all(vec4<bool>(global3.b, true, true, global3.b))) << (firstLeadingBit(_wgslsmith_add_u32(global3.a.c.x, 0u)) % 32u), 1i, ~global3.a.c, abs(42619i)), -_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global4.x, global4.x) | vec3<i32>(-39148i, -1i, -2147483647i), vec3<i32>(global4.x, -30228i, -1305i) << (global3.a.c % vec3<u32>(32u))) < 633i, min(global4.x, -1i), 20410u);
    var var_2 = global3.a;
    global3 = Struct_2(Struct_1(firstTrailingBit(var_1.a.d), global3.a.a, var_1.a.c, countOneBits(var_1.c)), true, var_1.c, 82092u);
    var var_3 = select(22140u == (1u >> (var_2.c.x % 32u)), var_1.b, var_1.b);
    return ~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(reverseBits(firstTrailingBit(vec3<i32>(1i, var_2.d, var_1.a.b))), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(41901i, 2147483647i, 94i), vec3<i32>(-2147483647i, global3.c, global4.x)), vec3<i32>(-2147483647i, -1i, global4.x) ^ vec3<i32>(global3.a.a, var_1.c, global3.a.d))), select(~(~vec3<i32>(-29411i, global3.a.b, global3.a.d)), vec3<i32>(-26796i, global3.c, -2147483647i), vec3<bool>(global3.b, var_1.b, select(var_1.b, true, false))));
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_1(global3.c, func_3(), vec3<u32>(64178u, 47464u, ~global3.d), global3.a.a << (_wgslsmith_mult_u32(~(~u_input.a), _wgslsmith_dot_vec2_u32(~global3.a.c.yz, vec2<u32>(56673u, 75800u) & global2[_wgslsmith_index_u32(0u, 15u)])) % 32u));
    var var_1 = vec2<i32>(-_wgslsmith_mult_i32(0i << (firstLeadingBit(66910u) % 32u), -38548i), var_0.d << ((1u ^ _wgslsmith_add_u32(_wgslsmith_add_u32(1u, global3.a.c.x), ~1u)) % 32u));
    return Struct_1(max(global3.a.b, var_1.x), _wgslsmith_div_i32(~(firstTrailingBit(0i) | ~var_0.b), (~var_1.x ^ -61601i) >> (~20553u % 32u)), abs(~global3.a.c), 0i);
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = vec3<bool>(!(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 13u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 13u)])) < _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 13u)], 1233f) - _wgslsmith_f_op_f32(f32(-1f) * -158f))), global3.b, true);
    var var_1 = Struct_2(func_2(global1[_wgslsmith_index_u32(countOneBits(global3.a.c.x) << (abs(min(21616u, global3.d)) % 32u), 13u)], var_0.x), (global1[_wgslsmith_index_u32(~4294967295u >> (func_2(global1[_wgslsmith_index_u32(global3.d, 13u)], var_0.x).c.x % 32u), 13u)] == _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(global3.d, 13u)], -1000f) * _wgslsmith_f_op_f32(f32(-1f) * -1114f))) || global3.b, 43595i, global3.d);
    global4 = vec3<i32>(-3937i, _wgslsmith_add_i32(max(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(global4.xy, vec2<i32>(global4.x, -2147483647i)), -global4.zx), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.a.a, 2147483647i, arg_0.a, global3.a.a), vec4<i32>(arg_0.a, arg_0.a, 2147483647i, arg_0.b)), ~2147483647i)), _wgslsmith_mult_i32(35772i, countOneBits(var_1.c))), _wgslsmith_div_i32(global4.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global3.a.a, var_1.c, ~var_1.a.b), vec3<i32>(var_1.c ^ global4.x, arg_0.a, 39419i))));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1577f, 1821f), vec2<f32>(global1[_wgslsmith_index_u32(global3.a.c.x, 13u)], -1759f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(arg_0.c.x, 13u)]))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(687f, global1[_wgslsmith_index_u32(31188u, 13u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(1113f, -1062f) + vec2<f32>(1000f, global1[_wgslsmith_index_u32(global3.a.c.x, 13u)]))), vec2<f32>(global1[_wgslsmith_index_u32(~u_input.a, 13u)], _wgslsmith_f_op_f32(ceil(1310f)))) * vec2<f32>(global1[_wgslsmith_index_u32(max(var_1.a.c.x & 4294967295u, var_1.d), 13u)], global1[_wgslsmith_index_u32(select(countOneBits(0u), _wgslsmith_mod_u32(4294967295u, u_input.a), false), 13u)])), vec2<bool>(!any(select(vec4<bool>(global3.b, false, true, false), vec4<bool>(false, false, var_1.b, true), vec4<bool>(var_0.x, global3.b, global3.b, global3.b))), true)));
    global3 = Struct_2(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(288f - var_2.x), var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 13u)]) * _wgslsmith_f_op_f32(floor(1855f)))), var_0.x), true, global4.x, _wgslsmith_add_u32(~u_input.a | global3.d, countOneBits(_wgslsmith_mod_u32(global3.a.c.x, 3852u) ^ (4294967295u & var_1.a.c.x))));
    return _wgslsmith_f_op_f32(424f - _wgslsmith_f_op_f32(f32(-1f) * -526f));
}

fn func_5(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_i32(i32(-1i) * -42971i, ~global3.c), ~(i32(-1i) * -1i), global3.a.c, countOneBits(select(~0i, abs(global3.c), global3.b))), ~u_input.a > countOneBits(max(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 93400u, 1143u, 24103u), vec4<u32>(45376u, 4294967295u, global3.d, 19217u)))), _wgslsmith_dot_vec3_i32(-(~vec3<i32>(26153i, global4.x, global3.a.b)) << (global3.a.c % vec3<u32>(32u)), abs(select(_wgslsmith_add_vec3_i32(vec3<i32>(global3.c, global4.x, 37987i), vec3<i32>(global3.a.d, 0i, global4.x)), vec3<i32>(global3.c, -2147483647i, 10368i), select(vec3<bool>(false, false, global3.b), vec3<bool>(true, true, true), vec3<bool>(global3.b, false, true))))), ~abs(u_input.a));
    var var_1 = select(vec4<bool>(true, true, !all(vec2<bool>(global3.b, global3.b)), -2147483647i < (global4.x >> (21401u % 32u))), !vec4<bool>(!global3.b, true, !global3.b, true), false);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)]))), _wgslsmith_f_op_f32(201f * _wgslsmith_f_op_f32(598f - arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(347f + arg_0.x)))));
    let var_3 = _wgslsmith_div_f32(-1334f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-890f * -2298f), 638f));
    global2 = array<vec2<u32>, 15>();
    return func_2(_wgslsmith_f_op_f32(707f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 13u)], _wgslsmith_div_f32(var_3, -138f)) - var_3)), global3.b);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: f32) -> vec3<u32> {
    let var_0 = Struct_2(global3.a, any(!(!select(vec4<bool>(true, arg_0.x, global3.b, global3.b), vec4<bool>(false, arg_0.x, arg_0.x, true), arg_0.x))), firstTrailingBit(global3.c), _wgslsmith_mod_u32(global3.d, 1u & _wgslsmith_div_u32(1u, _wgslsmith_add_u32(1u, u_input.a))));
    global3 = Struct_2(func_5(vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~global3.d, 13u)] + arg_3), _wgslsmith_f_op_f32(func_4(func_2(arg_3, var_0.b))))), true || arg_0.x, -36911i, _wgslsmith_div_u32(global3.a.c.x ^ 49127u, ~_wgslsmith_mult_u32(0u, global3.a.c.x >> (13818u % 32u))));
    return ~_wgslsmith_div_vec3_u32(vec3<u32>(firstLeadingBit(u_input.a), _wgslsmith_sub_u32(abs(u_input.a), u_input.a), _wgslsmith_div_u32(var_0.a.c.x, min(7992u, 4294967295u))), ~global3.a.c);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    var var_0 = 1i;
    let var_1 = _wgslsmith_add_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c.x, 4294967295u, 37659u), arg_0.c) & _wgslsmith_dot_vec4_u32(vec4<u32>(22357u, arg_1.c.x, 30247u, 92326u), vec4<u32>(1566u, arg_1.c.x, arg_0.c.x, 13353u))), ~func_2(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(global3.d, 13u)])), true).c.x) == _wgslsmith_add_u32(global3.d, min(~74701u, ~(u_input.a & arg_1.c.x)));
    global2 = array<vec2<u32>, 15>();
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(688f, global1[_wgslsmith_index_u32(28030u, 13u)]) + vec2<f32>(898f, global1[_wgslsmith_index_u32(global3.a.c.x, 13u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(1u, 13u)], -565f) + vec2<f32>(880f, global1[_wgslsmith_index_u32(u_input.a, 13u)]))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-105f, global1[_wgslsmith_index_u32(1u, 13u)]) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1254f, global1[_wgslsmith_index_u32(0u, 13u)])))), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(var_1, false))))) * vec2<f32>(1000f, global1[_wgslsmith_index_u32(~(~13806u), 13u)]));
    var var_3 = _wgslsmith_div_i32(i32(-1i) * -(i32(-1i) * -17869i), reverseBits(firstTrailingBit(select(-1i, func_2(-660f, var_1).d, !var_1))));
    return Struct_2(arg_1, var_1 & all(select(select(vec2<bool>(false, global3.b), vec2<bool>(global3.b, global3.b), false), vec2<bool>(global3.b, global3.b), vec2<bool>(true, true))), firstLeadingBit(_wgslsmith_sub_i32(select(2147483647i, arg_0.a, true) & (global4.x >> (4294967295u % 32u)), arg_1.b)), 0u);
}

fn func_7(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    return func_2(global1[_wgslsmith_index_u32(global3.a.c.x | firstLeadingBit(~10501u), 13u)], global3.b & any(select(vec2<bool>(true, arg_2.b), vec2<bool>(arg_3, true), vec2<bool>(true, arg_3))));
}

fn func_8(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1[_wgslsmith_index_u32(arg_2.d, 13u)], -1712f, -1117f))) - vec3<f32>(199f, 1000f, -1000f)))));
    global4 = _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-arg_1.d, func_2(-616f, !global3.b).b, 1i), ~vec3<i32>(64161i << (u_input.a % 32u), 10908i, arg_1.d & global4.x), ~arg_3 << (vec3<u32>(27979u, abs(14478u), ~global3.d) % vec3<u32>(32u))), arg_3);
    let var_1 = arg_2;
    let var_2 = _wgslsmith_sub_vec4_i32(~select(vec4<i32>(1i, global4.x, -15653i, 16780i), ~vec4<i32>(global4.x, global4.x, arg_1.a, 1i), true), vec4<i32>(-select(-11635i, -1i, arg_2.b), firstTrailingBit(arg_1.a | var_1.a.a), abs(arg_3.x), firstTrailingBit(var_1.a.b))) >> (vec4<u32>(global3.d, arg_0.c.x, _wgslsmith_div_u32(abs(4294967295u), arg_2.a.c.x | ~arg_1.c.x), _wgslsmith_add_u32(func_6(global3.a, Struct_1(var_1.c, global3.c, vec3<u32>(16199u, global3.d, 1u), 0i)).d, u_input.a)) % vec4<u32>(32u));
    var var_3 = var_0.x;
    return Struct_2(Struct_1(_wgslsmith_sub_i32(max(~(-2147483647i), i32(-1i) * -19061i), var_1.a.d & -43951i), -arg_0.a, select(vec3<u32>(~0u, global3.a.c.x, 40013u), ~(arg_1.c & var_1.a.c), arg_2.b), _wgslsmith_mult_i32(11i, -1i)), any(select(select(select(vec3<bool>(false, global3.b, global3.b), vec3<bool>(true, global3.b, false), true), vec3<bool>(arg_2.b, global3.b, false), !global3.b), select(vec3<bool>(var_1.b, global3.b, true), vec3<bool>(var_1.b, false, arg_2.b), select(vec3<bool>(true, global3.b, var_1.b), vec3<bool>(var_1.b, false, false), true)), true)), ~0i, var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 13>();
    global1 = array<f32, 13>();
    let var_0 = func_8(func_7(Struct_2(global3.a, global3.b, global4.x, ~12514u), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 13u)]), _wgslsmith_f_op_f32(629f + 512f), global1[_wgslsmith_index_u32(firstTrailingBit(global3.a.c.x), 13u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(7163u, 13u)] - global1[_wgslsmith_index_u32(global3.a.c.x, 13u)])), vec4<f32>(337f, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(global3.a.c.x, 13u)], 118f), _wgslsmith_div_f32(-302f, global1[_wgslsmith_index_u32(global3.a.c.x, 13u)]), global1[_wgslsmith_index_u32(global3.d, 13u)]))), func_6(Struct_1(abs(34914i), global3.a.a, func_1(vec2<bool>(false, global3.b), vec3<i32>(-58205i, global4.x, global4.x), global4.xz, global1[_wgslsmith_index_u32(global3.d, 13u)]), global4.x << (global3.d % 32u)), Struct_1(global3.a.a, global3.c, ~global3.a.c, 78429i)), global3.b), Struct_1(~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(global4.zy, vec2<i32>(21676i, 1353i)), i32(-1i) * -56987i), global3.a.a, _wgslsmith_add_vec3_u32(~(~vec3<u32>(u_input.a, u_input.a, 4294967295u)), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(global3.a.c, global3.a.c), global3.a.c)), global3.a.a), Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.c, 0i, -2147483647i, global3.c), abs(vec4<i32>(global3.c, global4.x, 1i, global3.c))), global3.c >> ((1u ^ u_input.a) % 32u), (global3.a.c | global3.a.c) & func_2(-1459f, global3.b).c, -1i), global3.b, global3.c, abs(abs(u_input.a) ^ 84934u)), _wgslsmith_clamp_vec3_i32(reverseBits(-_wgslsmith_add_vec3_i32(vec3<i32>(-57838i, global4.x, global4.x), vec3<i32>(global3.a.a, global4.x, global4.x))), ~(~firstLeadingBit(vec3<i32>(global4.x, global3.c, global4.x))), abs(~(~vec3<i32>(global4.x, 2147483647i, 6122i)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(-1449f, -1173f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 13u)] + 231f), 1000f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(global3.a.c.x, 13u)], -927f, 1004f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1031f, global1[_wgslsmith_index_u32(88956u, 13u)], -1000f), vec3<f32>(746f, -1670f, global1[_wgslsmith_index_u32(var_0.a.c.x, 13u)]), false)), select(vec3<bool>(false, global3.b, false), vec3<bool>(false, global3.b, global3.b), vec3<bool>(var_0.b, true, false))))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x)))));
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(11994u, 69981u, ~4294967295u, 4294967295u), max(vec4<u32>(global3.d, u_input.a, var_0.a.c.x, u_input.a), vec4<u32>(global3.d, u_input.a, u_input.a, global3.a.c.x)) << ((vec4<u32>(global3.d, 0u, global3.d, var_0.a.c.x) << (vec4<u32>(var_0.d, 10324u, 4294967295u, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u))) << ((_wgslsmith_mult_u32(75334u, global3.a.c.x) << (~func_5(var_1.xx).c.x % 32u)) % 32u)), 18u)];
    let var_4 = var_1.x;
    global2 = array<vec2<u32>, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-27499i & global4.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, var_3.a), vec3<i32>(var_0.c, 16142i, global3.c)), -2147483647i), ~(-vec3<i32>(-2147483647i, var_3.b, var_3.d))), var_3.a), -(global3.a.a << (var_3.c.x % 32u)), ~(~26566i));
}

