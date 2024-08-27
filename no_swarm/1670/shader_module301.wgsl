struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(-438f, false, true), Struct_1(-1000f, true, false), Struct_1(-981f, true, true), Struct_1(-1393f, true, false), Struct_1(-643f, true, true), Struct_1(-1230f, true, true), Struct_1(484f, true, false));

var<private> global1: array<bool, 13> = array<bool, 13>(true, true, true, true, false, true, true, true, true, true, true, true, true);

var<private> global2: array<vec4<f32>, 15>;

var<private> global3: u32 = 1u;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    global3 = ~18959u;
    global3 = abs(8778u);
    global2 = array<vec4<f32>, 15>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 686f, arg_0.a) - vec3<f32>(arg_1.a, arg_1.a, arg_1.a))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, arg_0.b.a, 1787f) * vec3<f32>(arg_0.a, -1461f, arg_0.c.a)) + vec3<f32>(284f, arg_0.a, -311f)))));
    var var_1 = arg_1;
    return _wgslsmith_add_u32(13197u, u_input.e.x << (1u % 32u));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: i32) -> u32 {
    var var_0 = Struct_2(750f, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -554f)) + _wgslsmith_f_op_f32(step(-498f, _wgslsmith_f_op_f32(f32(-1f) * -265f)))), false, countOneBits(-20128i) == -_wgslsmith_div_i32(u_input.b.x, u_input.a.x)), global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(25417u, 1u) & _wgslsmith_mult_u32(abs(44507u), select(31597u, func_3(Struct_2(628f, Struct_1(-990f, global1[_wgslsmith_index_u32(arg_1.x, 13u)], true), global0[_wgslsmith_index_u32(1u, 7u)], vec4<bool>(false, false, false, arg_0.x), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 13u)], true, global1[_wgslsmith_index_u32(arg_1.x, 13u)], false)), global0[_wgslsmith_index_u32(0u, 7u)]), false)), 7u)], select(vec4<bool>(true, global1[_wgslsmith_index_u32(~u_input.e.x, 13u)], _wgslsmith_f_op_f32(min(668f, 2563f)) < _wgslsmith_f_op_f32(select(1458f, 361f, true)), global1[_wgslsmith_index_u32(firstTrailingBit(arg_1.x), 13u)]), !vec4<bool>(true, select(false, arg_0.x, global1[_wgslsmith_index_u32(0u, 13u)]), all(vec2<bool>(global1[_wgslsmith_index_u32(37284u, 13u)], false)), false), select(vec4<bool>(any(vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(arg_1.x, 13u)])), true, any(vec4<bool>(true, false, arg_0.x, arg_0.x)), all(vec4<bool>(global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(u_input.d, 13u)], global1[_wgslsmith_index_u32(u_input.e.x, 13u)], arg_0.x))), select(select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(51726u, 13u)], false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, global1[_wgslsmith_index_u32(0u, 13u)]), vec4<bool>(global1[_wgslsmith_index_u32(0u, 13u)], true, true, false)), select(vec4<bool>(arg_0.x, false, true, arg_0.x), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 13u)], true, arg_0.x, false), vec4<bool>(arg_0.x, true, false, global1[_wgslsmith_index_u32(u_input.e.x, 13u)])), select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 13u)], false, false, false), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.d, 13u)], arg_0.x, false), vec4<bool>(false, false, false, arg_0.x))), global1[_wgslsmith_index_u32(~(arg_1.x << (u_input.d % 32u)), 13u)])), select(vec4<bool>(any(select(vec3<bool>(true, true, global1[_wgslsmith_index_u32(arg_1.x, 13u)]), vec3<bool>(false, false, global1[_wgslsmith_index_u32(22166u, 13u)]), vec3<bool>(false, false, false))), global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(4294967295u, arg_1.x), 13u)], !(!arg_0.x), all(vec4<bool>(global1[_wgslsmith_index_u32(1u, 13u)], false, global1[_wgslsmith_index_u32(arg_1.x, 13u)], global1[_wgslsmith_index_u32(0u, 13u)]))), select(select(!vec4<bool>(global1[_wgslsmith_index_u32(arg_1.x, 13u)], global1[_wgslsmith_index_u32(16760u, 13u)], global1[_wgslsmith_index_u32(0u, 13u)], true), select(vec4<bool>(arg_0.x, true, arg_0.x, global1[_wgslsmith_index_u32(u_input.e.x, 13u)]), vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(arg_1.x, 13u)]), vec4<bool>(arg_0.x, false, true, true)), true), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), !select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(1u, 13u)], arg_0.x), vec4<bool>(true, false, arg_0.x, arg_0.x), vec4<bool>(global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(u_input.d, 13u)], false, false))), select(!(!vec4<bool>(arg_0.x, global1[_wgslsmith_index_u32(arg_1.x, 13u)], true, arg_0.x)), !(!vec4<bool>(global1[_wgslsmith_index_u32(89439u, 13u)], global1[_wgslsmith_index_u32(u_input.c.x, 13u)], false, true)), true)));
    var var_1 = !vec3<bool>(!(arg_0.x || (global1[_wgslsmith_index_u32(arg_1.x, 13u)] | var_0.c.c)), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_1.xz, u_input.e, u_input.c.yx), vec2<u32>(29063u, arg_1.x)), 13u)], var_0.b.a < 870f);
    global3 = 76124u;
    let var_2 = vec4<i32>(arg_2, -5410i, _wgslsmith_dot_vec2_i32(abs(u_input.a), u_input.b.zx), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, -13394i, -2147483647i, u_input.a.x) & vec4<i32>(2147483647i, arg_2, arg_2, u_input.a.x), ~(~vec4<i32>(-2147483647i, u_input.a.x, -29581i, 19037i))) & -11746i);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c.a), -1331f)), var_0.d.x == true, all(var_0.d.wwx));
    return arg_1.x ^ _wgslsmith_dot_vec2_u32(u_input.c.zw, vec2<u32>(abs(arg_1.x), ~0u) | ~vec2<u32>(arg_1.x, arg_1.x));
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: vec3<u32>, arg_3: Struct_3) -> Struct_3 {
    let var_0 = ~vec4<u32>(u_input.d, 59126u, 0u, 21029u ^ func_3(Struct_2(-210f, Struct_1(1206f, false, false), Struct_1(arg_0, arg_3.c.c, arg_3.c.b), vec4<bool>(arg_3.c.c, global1[_wgslsmith_index_u32(44969u, 13u)], arg_3.c.c, global1[_wgslsmith_index_u32(u_input.e.x, 13u)]), vec4<bool>(true, arg_3.c.c, global1[_wgslsmith_index_u32(10165u, 13u)], false)), arg_3.c));
    let var_1 = ~(-abs(u_input.a.x));
    global2 = array<vec4<f32>, 15>();
    var var_2 = 1u;
    global1 = array<bool, 13>();
    return arg_3;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3) -> Struct_3 {
    var var_0 = u_input.b.x ^ -u_input.a.x;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(arg_1.a * arg_2.c.a), global0[_wgslsmith_index_u32(24786u, 7u)], func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a - arg_1.a)) * arg_2.c.a), firstTrailingBit(_wgslsmith_sub_vec2_u32(u_input.c.wy, u_input.c.xy)) | _wgslsmith_sub_vec2_u32(~u_input.e, vec2<u32>(15397u, 12413u)), vec3<u32>(_wgslsmith_add_u32(~u_input.d, 4294967295u), 22646u, 62512u), arg_0).c, !select(!select(vec4<bool>(arg_1.b, arg_1.b, global1[_wgslsmith_index_u32(u_input.d, 13u)], arg_0.c.b), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.e.x, 13u)], arg_0.c.c, arg_1.c), vec4<bool>(arg_0.c.b, false, false, false)), !(!vec4<bool>(true, arg_2.c.b, false, true)), true), vec4<bool>(true | arg_2.c.c, true, ((false & global1[_wgslsmith_index_u32(4294967295u, 13u)]) && !global1[_wgslsmith_index_u32(0u, 13u)]) && all(!vec2<bool>(arg_1.b, false)), true));
    var var_2 = var_1.b.a;
    var var_3 = select(var_1.d.x, all(!select(var_1.d.xxw, vec3<bool>(false, true, false), !vec3<bool>(true, false, arg_1.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x * 1000f))) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(668f, u_input.c.xx, u_input.c.xxz, arg_2).b.x - -1620f))));
    var var_4 = Struct_2(762f, func_4(var_1.a, u_input.c.xy, _wgslsmith_add_vec3_u32(u_input.c.yww, ~_wgslsmith_mult_vec3_u32(vec3<u32>(26139u, u_input.e.x, 4294967295u), vec3<u32>(88253u, 0u, u_input.d))), Struct_3(u_input.a.x, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.e.x | 1u, u_input.d), 15u)], Struct_1(_wgslsmith_f_op_f32(-var_1.a), false, !arg_2.c.c))).c, Struct_1(_wgslsmith_div_f32(arg_0.b.x, var_1.a), !arg_2.c.c, arg_2.c.b & true), var_1.d, !var_1.d);
    return arg_0;
}

fn func_1() -> Struct_3 {
    global0 = array<Struct_1, 7>();
    global2 = array<vec4<f32>, 15>();
    let var_0 = func_5(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1400f, 2043f)))), ~vec2<u32>(_wgslsmith_mult_u32(u_input.d, 74347u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d, u_input.c.x, 37542u), u_input.c)), ~vec3<u32>(~22196u, func_2(vec2<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 13u)], global1[_wgslsmith_index_u32(u_input.d, 13u)]), vec3<u32>(0u, 0u, 4294967295u), u_input.a.x), max(4294967295u, 0u)), Struct_3(u_input.b.x, _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(u_input.c.x, 15u)]), global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_mult_u32(0u, 0u)), 7u)])), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2254f))))), false, all(!(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 13u)], global1[_wgslsmith_index_u32(u_input.c.x, 13u)], true)))), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_4(-1484f, u_input.e, u_input.c.yxy, Struct_3(-2147483647i, global2[_wgslsmith_index_u32(67379u, 15u)], Struct_1(1000f, true, global1[_wgslsmith_index_u32(0u, 13u)]))).b.x) * _wgslsmith_f_op_f32(func_4(730f, u_input.c.xx, vec3<u32>(u_input.d, u_input.e.x, 0u), Struct_3(-1i, global2[_wgslsmith_index_u32(13549u, 15u)], global0[_wgslsmith_index_u32(35436u, 7u)])).b.x + _wgslsmith_f_op_f32(round(147f)))), ~countOneBits(_wgslsmith_sub_vec2_u32(u_input.e, u_input.c.zx)), countOneBits(~vec3<u32>(73533u, 119498u, 74649u)), func_4(_wgslsmith_f_op_f32(-1f), _wgslsmith_sub_vec2_u32(vec2<u32>(100602u, 0u) ^ u_input.e, ~u_input.e), u_input.c.zxw, Struct_3(0i, _wgslsmith_f_op_vec4_f32(ceil(global2[_wgslsmith_index_u32(0u, 15u)])), Struct_1(114f, true, false)))));
    return var_0;
}

fn func_6(arg_0: Struct_3) -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.b.x))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c.x >> (u_input.c.x % 32u), select(~u_input.e.x, ~u_input.d, func_4(arg_0.c.a, abs(vec2<u32>(31735u, 25407u)), u_input.c.zyw, func_4(arg_0.b.x, vec2<u32>(94819u, 4294967295u), u_input.c.zxw, arg_0)).c.b)), 7u)], arg_0.c, vec4<bool>(arg_0.c.c, true, true, true), vec4<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-603f, arg_0.c.a)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x + arg_0.c.a) * -763f), true, !(_wgslsmith_f_op_f32(select(arg_0.c.a, arg_0.c.a, false)) != arg_0.b.x)));
    var var_1 = arg_0;
    let var_2 = !global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(~_wgslsmith_dot_vec4_u32(u_input.c, u_input.c)), u_input.e.x), 13u)];
    global1 = array<bool, 13>();
    let var_3 = var_0.e;
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_add_u32(~_wgslsmith_clamp_u32(1u | u_input.c.x, u_input.d, 4294967295u), select(32593u, abs(abs(u_input.e.x)), any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(u_input.c.x, 13u)], global1[_wgslsmith_index_u32(14520u, 13u)]), vec4<bool>(global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(u_input.e.x, 13u)], global1[_wgslsmith_index_u32(u_input.d, 13u)]))))) ^ u_input.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(func_6(func_1()), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-243f, 1000f, -987f), vec3<f32>(611f, 1362f, 710f))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -674f), _wgslsmith_f_op_f32(f32(-1f) * -509f), -706f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-986f, -640f, 806f) * vec3<f32>(1161f, -429f, -1000f))), vec3<f32>(_wgslsmith_f_op_f32(min(-1000f, 1427f)), _wgslsmith_div_f32(2165f, -1000f), _wgslsmith_f_op_f32(trunc(1199f))), select(vec3<bool>(false, false, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 13u)], true, global1[_wgslsmith_index_u32(95357u, 13u)]), false && global1[_wgslsmith_index_u32(4294967295u, 13u)]))))), 64787u, 0u, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-117f, _wgslsmith_f_op_f32(trunc(-360f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-260f, 105f) * vec2<f32>(927f, 655f))), vec2<bool>(global1[_wgslsmith_index_u32(~45790u, 13u)], !(false || global1[_wgslsmith_index_u32(37550u, 13u)])))));
}

