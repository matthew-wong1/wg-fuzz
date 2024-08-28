struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
    c: vec4<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 29> = array<vec2<bool>, 29>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global1: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(31948u, 4294967295u, 4294967295u), vec3<u32>(1u, 1u, 39613u), vec3<u32>(50317u, 10817u, 40486u), vec3<u32>(4294967295u, 23289u, 25630u), vec3<u32>(4294967295u, 56379u, 60761u), vec3<u32>(1u, 4294967295u, 17911u), vec3<u32>(70588u, 4294967295u, 1u), vec3<u32>(1u, 0u, 0u), vec3<u32>(4294967295u, 4294967295u, 75408u), vec3<u32>(1u, 1u, 5865u), vec3<u32>(25610u, 4294967295u, 14579u), vec3<u32>(1u, 40690u, 31168u), vec3<u32>(0u, 20548u, 73606u));

var<private> global2: Struct_3 = Struct_3(vec2<u32>(1094u, 1389u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_5(Struct_2(~(~global2.a.x >> (_wgslsmith_div_u32(global2.a.x, 59399u) % 32u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1543f)) - _wgslsmith_f_op_f32(-979f * -176f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(310f, -959f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-110f, 1364f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(388f, 319f), vec2<f32>(-1185f, 1834f), vec2<bool>(true, true))), _wgslsmith_div_vec2_f32(vec2<f32>(-636f, -1155f), vec2<f32>(-1779f, -645f))))), Struct_3(firstTrailingBit(~vec2<u32>(14518u, global2.a.x))));
    var var_1 = Struct_5(Struct_2(global2.a.x, _wgslsmith_f_op_f32(var_0.a.b * _wgslsmith_f_op_f32(select(var_0.a.b, -113f, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_0.a.c)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.c.x, -1448f))))), Struct_3(vec2<u32>(0u, countOneBits(u_input.a.x))));
    var var_2 = Struct_4(!vec2<bool>(true, any(vec3<bool>(true, true, true))), -32931i, countOneBits(vec4<i32>(-14714i, _wgslsmith_dot_vec4_i32(u_input.b, u_input.b | u_input.b), u_input.b.x, i32(-1i) * -19423i)));
    let var_3 = _wgslsmith_mod_vec3_u32(global1[_wgslsmith_index_u32(~(~(~global2.a.x)), 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)]);
    var var_4 = var_2.a;
    return ~(countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, -21486i, -2147483647i, u_input.b.x), -vec4<i32>(-26208i, var_2.b, 27798i, -1i))) & u_input.b);
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: vec3<i32>, arg_3: vec4<f32>) -> vec2<u32> {
    var var_0 = arg_0 & any(arg_1.a);
    let var_1 = true;
    let var_2 = func_3().x;
    var_0 = !(!(!(true | arg_1.a.x)));
    global0 = array<vec2<bool>, 29>();
    return ~firstTrailingBit(max(abs(u_input.a.xx | vec2<u32>(34400u, 45851u)), countOneBits(~global2.a)));
}

fn func_2() -> i32 {
    global2 = Struct_3(vec2<u32>(abs(firstTrailingBit(~u_input.a.x)), firstTrailingBit(u_input.a.x)));
    var var_0 = global2.a.x;
    var var_1 = u_input.b;
    global2 = Struct_3(func_4(u_input.b.x < u_input.b.x, Struct_4(global0[_wgslsmith_index_u32(~(~u_input.a.x), 29u)], u_input.b.x, vec4<i32>(var_1.x, var_1.x, -4129i, u_input.b.x) & func_3()), vec3<i32>(firstTrailingBit(-22600i), 0i, _wgslsmith_sub_i32(-2225i, 38246i) & abs(u_input.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(sign(-1502f)), -1000f, _wgslsmith_f_op_f32(max(393f, 1402f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-865f, -252f, 908f, 577f)))))));
    var var_2 = Struct_5(Struct_2(_wgslsmith_add_u32(select(u_input.c, global2.a.x, true) ^ 38155u, 10661u), -1471f, vec2<f32>(-192f, 1538f)), Struct_3(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, ~u_input.a.x), ~func_4(true, Struct_4(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], u_input.b.x, vec4<i32>(0i, u_input.b.x, var_1.x, u_input.b.x)), vec3<i32>(0i, u_input.b.x, var_1.x), vec4<f32>(344f, -1915f, -556f, -1047f)))));
    return _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-(26327i & var_1.x), -10851i), 21844i, ~_wgslsmith_sub_i32(var_1.x, _wgslsmith_sub_i32(22768i, var_1.x)), ~_wgslsmith_mult_i32(u_input.b.x, u_input.b.x)), u_input.b);
}

fn func_1(arg_0: bool) -> bool {
    var var_0 = Struct_1(~_wgslsmith_add_u32(global2.a.x >> ((u_input.c << (53636u % 32u)) % 32u), 23580u), global2.a.x, func_2());
    let var_1 = ~(~(~u_input.c));
    let var_2 = -reverseBits(var_0.c);
    global1 = array<vec3<u32>, 13>();
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(720f, -1785f, true)))), _wgslsmith_f_op_f32(trunc(-2969f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2019f), _wgslsmith_f_op_f32(f32(-1f) * -101f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-239f, 295f), vec2<f32>(-1000f, 1438f)))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_add_u32(8885u, 67915u), firstTrailingBit(_wgslsmith_div_u32(~_wgslsmith_div_u32(global2.a.x, 4294967295u), _wgslsmith_div_u32(1u, ~global2.a.x))), -_wgslsmith_div_i32(2147483647i, _wgslsmith_mult_i32(abs(u_input.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 0i), vec3<i32>(u_input.b.x, 1i, -2147483647i)))));
    var var_1 = !vec4<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), false)) != true, func_1(false) & true, all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)));
    var_1 = select(select(vec4<bool>(true, var_1.x, var_1.x, true), select(!select(vec4<bool>(true, var_1.x, false, true), vec4<bool>(false, var_1.x, false, true), vec4<bool>(true, var_1.x, var_1.x, var_1.x)), select(!vec4<bool>(var_1.x, var_1.x, true, false), select(vec4<bool>(false, true, var_1.x, var_1.x), vec4<bool>(true, true, var_1.x, true), vec4<bool>(false, false, false, var_1.x)), false), true), vec4<bool>(u_input.b.x <= -8878i, var_1.x || !var_1.x, true || all(var_1.wxz), false)), vec4<bool>(var_1.x, 2147483647i >= u_input.b.x, !func_1(var_1.x), select(all(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2.a.x, global2.a.x), 29u)]), !(var_1.x && true), var_1.x)), all(vec4<bool>(_wgslsmith_f_op_f32(ceil(1162f)) <= 1f, var_1.x, false, false)));
    var var_2 = _wgslsmith_sub_u32(global2.a.x, global2.a.x);
    global2 = Struct_3(vec2<u32>(global2.a.x, ~60391u));
    let var_3 = true & all(vec4<bool>(true, var_0.b >= 4294967295u, true, false));
    var_0 = Struct_1(28014u, ~78107u, _wgslsmith_add_i32(var_0.c, -abs(~(-1i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-759f, 1000f)), _wgslsmith_f_op_f32(560f * -474f)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-177f, -1086f) + _wgslsmith_div_f32(1063f, -1000f))))), _wgslsmith_sub_u32(38791u, ~global2.a.x), 1u);
}

