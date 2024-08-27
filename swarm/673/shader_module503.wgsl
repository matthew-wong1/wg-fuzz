struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_2,
    d: vec3<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(2147483647i, 1i, 4154i, vec3<bool>(true, false, false), false), vec3<f32>(-2451f, -1000f, 1663f), i32(-2147483648), 64019i);

var<private> global1: array<f32, 32>;

var<private> global2: i32;

var<private> global3: array<i32, 11>;

var<private> global4: array<Struct_1, 22>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> i32 {
    global1 = array<f32, 32>();
    global3 = array<i32, 11>();
    var var_0 = Struct_4(global0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b) + global0.b), -select(~0i, abs(global0.a.b), all(vec3<bool>(global0.a.e, global0.a.d.x, true))) << (12166u % 32u), u_input.c);
    global2 = 45756i;
    var var_1 = var_0.d;
    return global0.c;
}

fn func_3() -> f32 {
    var var_0 = max(u_input.b, global0.c) >= _wgslsmith_add_i32(global0.d, _wgslsmith_sub_i32(-10455i, abs(21009i)) | func_2());
    let var_1 = ~vec2<u32>(1u, _wgslsmith_dot_vec4_u32(~(u_input.d >> (vec4<u32>(u_input.e.x, 1u, 27157u, u_input.d.x) % vec4<u32>(32u))), ~_wgslsmith_clamp_vec4_u32(u_input.d, u_input.d, vec4<u32>(u_input.d.x, 51644u, 5776u, u_input.a))));
    let var_2 = var_1.x;
    var var_3 = global0.a.d.yy;
    var var_4 = global0.a.d.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(var_2, 32u)], global0.b.x)) * _wgslsmith_f_op_f32(round(748f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) + -1566f), var_3.x == false))) + global0.b.x);
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec3<u32>, arg_3: Struct_3) -> Struct_1 {
    let var_0 = -569f;
    global3 = array<i32, 11>();
    var var_1 = Struct_4(Struct_1(firstTrailingBit(abs(func_2())), ~(-1i), arg_3.e.d, !(!select(arg_3.a.d, vec3<bool>(arg_3.e.e.e, false, false), arg_0.e.d)), true), arg_3.d, global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(arg_3.b, _wgslsmith_div_vec2_u32(arg_2.xy, vec2<u32>(arg_3.c.c, arg_2.x))), _wgslsmith_add_vec2_u32(arg_2.yy, vec2<u32>(arg_3.e.c, 1u)) >> (countOneBits(vec2<u32>(u_input.e.x, 25966u)) % vec2<u32>(32u))), 11u)], arg_0.d);
    var var_2 = ~arg_0.c;
    var_1 = Struct_4(global0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_f_op_f32(min(-136f, global0.b.x)), var_1.b.x))), var_1.d, -arg_3.c.e.c);
    return Struct_1(-2147483647i, -2147483647i, -992i & max(1i, arg_3.c.d), arg_0.a.d, true);
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: i32) -> Struct_4 {
    global4 = array<Struct_1, 22>();
    var var_0 = Struct_3(Struct_1(reverseBits(_wgslsmith_mult_i32(1i, global3[_wgslsmith_index_u32(~arg_1.x, 11u)])), global0.a.c, 19809i, global0.a.d, (1i << (_wgslsmith_mult_u32(u_input.a, u_input.a) % 32u)) != 1i), ~(~_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.e.xy, u_input.d.wz), vec2<u32>(arg_1.x, 17535u))), Struct_2(func_4(Struct_2(global4[_wgslsmith_index_u32(arg_1.x, 22u)], _wgslsmith_f_op_f32(f32(-1f) * -912f), ~u_input.e.x, func_2(), global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + global0.b.x), firstTrailingBit(u_input.d.ywy), Struct_3(Struct_1(arg_2, arg_2, -3939i, global0.a.d, global0.a.e), firstLeadingBit(u_input.e.zx), Struct_2(Struct_1(arg_2, -2147483647i, 2147483647i, vec3<bool>(true, true, false), false), 385f, 0u, arg_2, global4[_wgslsmith_index_u32(9120u, 22u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, global1[_wgslsmith_index_u32(arg_1.x, 32u)], arg_0) * vec3<f32>(487f, global0.b.x, 536f)), Struct_2(Struct_1(global3[_wgslsmith_index_u32(4294967295u, 11u)], -2147483647i, global3[_wgslsmith_index_u32(4294967295u, 11u)], vec3<bool>(false, global0.a.e, global0.a.e), false), arg_0, u_input.a, 3935i, Struct_1(global3[_wgslsmith_index_u32(1u, 11u)], global0.c, 0i, vec3<bool>(true, global0.a.e, global0.a.d.x), false)))), -790f, arg_1.x, ~abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 59832i, global0.a.c, global3[_wgslsmith_index_u32(10376u, 11u)]), vec4<i32>(global3[_wgslsmith_index_u32(42162u, 11u)], -35100i, arg_2, arg_2))), global0.a), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.b.x, -1398f, global1[_wgslsmith_index_u32(41675u, 32u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, -328f)))), Struct_2(global4[_wgslsmith_index_u32(u_input.e.x & ~max(arg_1.x, 18829u), 22u)], _wgslsmith_f_op_f32(f32(-1f) * -1000f), ~1u, -44459i, Struct_1(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, select(arg_1.x, arg_1.x, true)), 11u)], 15546i, 1i, vec3<bool>(!global0.a.d.x, !global0.a.d.x, true), !(global0.a.d.x || true))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(345f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(20815u, 32u)]), global0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)));
    global1 = array<f32, 32>();
    let var_2 = Struct_1(2147483647i, ~max(19964i, ~(-2147483647i)), 20183i, !(!vec3<bool>(false, global0.a.e, true)), 18173i == _wgslsmith_mod_i32(arg_2, 1745i));
    return Struct_4(Struct_1(-1i, _wgslsmith_add_i32(~39326i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(global3[_wgslsmith_index_u32(0u, 11u)], -2147483647i), 11447i)), countOneBits(-global0.d), vec3<bool>(var_0.c.e.d.x, all(select(vec4<bool>(var_0.e.e.e, global0.a.d.x, var_0.e.e.e, var_2.d.x), vec4<bool>(var_2.d.x, global0.a.e, false, true), vec4<bool>(var_0.e.a.d.x, var_2.d.x, var_0.c.e.d.x, false))), true), !((u_input.b == 2147483647i) || false)), global0.b, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(max(vec4<i32>(-93608i, -6481i, global0.a.c, u_input.b), vec4<i32>(var_0.c.d, 2147483647i, 0i, 54184i)), -vec4<i32>(global3[_wgslsmith_index_u32(arg_1.x, 11u)], 2147483647i, u_input.c, global0.d)), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.d, arg_2, 1i) >> (u_input.d.wxz % vec3<u32>(32u)), vec3<i32>(u_input.b, -2147483647i, 1360i)), ~func_4(var_0.e, global0.b.x, u_input.e, Struct_3(Struct_1(1i, 49695i, 20557i, var_0.a.d, true), var_0.b, Struct_2(var_0.a, global0.b.x, 29573u, arg_2, global4[_wgslsmith_index_u32(arg_1.x, 22u)]), var_0.d, var_0.e)).c), abs(abs(-vec3<i32>(arg_2, 26107i, -74227i)))), abs(-33536i));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 22>();
    let var_0 = u_input.d.wyz;
    global1 = array<f32, 32>();
    global0 = func_1(1254f, _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.d.x, 2194u, ~u_input.a), var_0), -10737i);
    var var_1 = Struct_4(global0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b) + _wgslsmith_f_op_vec3_f32(-global0.b)) + vec3<f32>(global1[_wgslsmith_index_u32(~abs(0u), 32u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.e.x, 32u)])) - -584f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d.x, 32u)]))))), global0.a.b, global0.c);
    global1 = array<f32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.c, -304f, vec4<f32>(_wgslsmith_f_op_f32(ceil(1056f)), global1[_wgslsmith_index_u32(var_0.x, 32u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(11990u, 20713u, 34676u, var_0.x), u_input.d), 32u)] - _wgslsmith_f_op_f32(global0.b.x - global0.b.x))), -1784f), max(-1i, -45315i));
}

