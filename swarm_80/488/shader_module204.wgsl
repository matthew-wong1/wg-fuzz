struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10> = array<f32, 10>(-100f, 1270f, -1014f, 183f, 672f, 404f, 303f, -404f, 294f, 239f);

var<private> global1: array<vec2<bool>, 26>;

var<private> global2: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global3: i32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    var var_0 = ~(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(405i, 0i, 36764i)), -select(vec3<i32>(2147483647i, -18734i, -32591i), vec3<i32>(-4758i, -2147483647i, -28743i), arg_0.x)) & _wgslsmith_mod_i32(max(_wgslsmith_mult_i32(-62933i, 8429i), 1i), _wgslsmith_add_i32(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 927i), vec2<i32>(0i, -2147483647i)))));
    let var_1 = ~(~_wgslsmith_mult_vec3_u32(abs(vec3<u32>(arg_1.c.a, u_input.b.x, u_input.b.x) ^ vec3<u32>(4294967295u, 1u, 8148u)), vec3<u32>(~1u, max(1u, u_input.a), arg_1.c.a)));
    global1 = array<vec2<bool>, 26>();
    var var_2 = _wgslsmith_div_vec3_u32(~vec3<u32>(arg_2.a, 14394u, var_1.x), ~(~(~(arg_2.d << (vec3<u32>(38970u, 1u, 1u) % vec3<u32>(32u))))));
    var var_3 = _wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(var_2.yx, vec2<u32>(4294967295u, var_2.x)) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(34836u, arg_2.d.x, arg_2.d.x, 967u), _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_1.c.d.x, u_input.a, 0u, 60472u), abs(vec4<u32>(21966u, 4294967295u, 0u, 4294967295u)))) % 32u), 27970u);
    return _wgslsmith_f_op_f32(813f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.c.b.x * arg_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -216f) - -1550f)));
}

fn func_2() -> Struct_1 {
    var var_0 = select(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, -select(-1i, -8011i, true), 0i), vec4<i32>(19833i, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-48981i, 2147483647i, 7758i)), vec3<i32>(1i, 1i, 1i)), _wgslsmith_sub_i32(-2147483647i, 1i), firstLeadingBit(2228i))), 2147483647i, any(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, global2.x, true, false), global2.x))));
    let var_1 = _wgslsmith_div_i32(26673i, abs(_wgslsmith_mult_i32(47492i, firstTrailingBit(-2147483647i))) & ~(-66537i));
    var var_2 = vec4<u32>(70932u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.a, u_input.b.x, u_input.b.x) & vec3<u32>(1u, 4294967295u, u_input.b.x)), vec3<u32>(_wgslsmith_clamp_u32(9094u, 4294967295u, u_input.b.x), 2902u, u_input.a ^ u_input.b.x)), u_input.b.x), 112932u, _wgslsmith_add_u32(1u, select(firstLeadingBit(u_input.b.x), 1u << (u_input.b.x % 32u), all(select(vec2<bool>(true, true), vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, false))))));
    let var_3 = -1i;
    var var_4 = 16267u;
    return Struct_1(14899u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(609f, 722f) - 505f), _wgslsmith_f_op_f32(func_3(vec2<bool>(global2.x, global2.x), Struct_2(global0[_wgslsmith_index_u32(u_input.a, 10u)], global0[_wgslsmith_index_u32(var_2.x, 10u)], Struct_1(var_2.x, vec3<f32>(-112f, global0[_wgslsmith_index_u32(u_input.b.x, 10u)], global0[_wgslsmith_index_u32(76371u, 10u)]), global2.yww, var_2.zww, global0[_wgslsmith_index_u32(0u, 10u)])), Struct_1(var_2.x, vec3<f32>(1057f, 1740f, -934f), global2.zxz, vec3<u32>(u_input.a, var_2.x, var_2.x), -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1148f)))), select(global2.yxz, !vec3<bool>(global2.x != false, true, all(vec4<bool>(global2.x, global2.x, false, global2.x))), _wgslsmith_dot_vec3_i32(-vec3<i32>(var_1, 0i, var_1), abs(vec3<i32>(var_3, 2147483647i, -16265i))) == -2147483647i), select(vec3<u32>(u_input.b.x, _wgslsmith_mult_u32(11942u, 101357u), max(var_2.x << (0u % 32u), 4294967295u)), ~vec3<u32>(_wgslsmith_div_u32(u_input.b.x, u_input.a), var_2.x, 18603u), !global2.xwz), _wgslsmith_f_op_f32(func_3(!(!vec2<bool>(global2.x, global2.x)), Struct_2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~0u, 10u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(69091u, 10u)]))), Struct_1(~1u, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0[_wgslsmith_index_u32(var_2.x, 10u)], global0[_wgslsmith_index_u32(var_2.x, 10u)], -910f))), global2.xwx, countOneBits(vec3<u32>(0u, u_input.a, 2568u)), _wgslsmith_f_op_f32(sign(767f)))), Struct_1(_wgslsmith_dot_vec2_u32(select(var_2.wz, u_input.b, global2.x), var_2.wx), vec3<f32>(-442f, _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(u_input.a, 10u)], global0[_wgslsmith_index_u32(0u, 10u)], global2.x)), -820f), select(!vec3<bool>(true, global2.x, true), select(vec3<bool>(true, true, global2.x), global2.zwx, global2.x), var_1 >= var_1), vec3<u32>(u_input.b.x, u_input.b.x, u_input.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_2.x, 10u)])))))));
}

fn func_1(arg_0: f32) -> Struct_4 {
    var var_0 = Struct_4(func_2(), vec2<bool>(!all(func_2().c), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -289f) + _wgslsmith_div_f32(799f, _wgslsmith_f_op_f32(func_3(global2.wx, Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], 776f, Struct_1(u_input.a, vec3<f32>(551f, -851f, global0[_wgslsmith_index_u32(26102u, 10u)]), global2.xzx, vec3<u32>(1u, u_input.a, 104452u), global0[_wgslsmith_index_u32(0u, 10u)])), Struct_1(u_input.b.x, vec3<f32>(global0[_wgslsmith_index_u32(1740u, 10u)], global0[_wgslsmith_index_u32(30464u, 10u)], arg_0), global2.xwz, vec3<u32>(u_input.a, 34945u, u_input.b.x), arg_0))))) < arg_0);
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(~firstLeadingBit(35647u), 10u)], _wgslsmith_f_op_f32(ceil(arg_0)), func_2());
    let var_2 = Struct_1(73658u, vec3<f32>(1423f, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * arg_0) + _wgslsmith_div_f32(618f, -960f)))), !(!var_1.c.c), vec3<u32>(1u, var_1.c.a, u_input.b.x), _wgslsmith_f_op_f32(sign(var_0.a.b.x)));
    let var_3 = vec4<u32>(select(select(~1u, abs(var_1.c.d.x), false), ~var_0.a.d.x, !global2.x), var_1.c.d.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.a.a, 19904u, 1u, var_1.c.d.x), vec4<u32>(var_0.a.d.x, 0u, u_input.a, 21651u) | vec4<u32>(var_0.a.d.x, 0u, 29378u, var_0.a.d.x)), ~(~vec4<u32>(27933u, var_1.c.d.x, 58352u, 73514u))) ^ 4294967295u, firstTrailingBit(~_wgslsmith_mod_u32(~u_input.b.x, reverseBits(21457u))));
    let var_4 = var_1;
    return Struct_4(func_2(), var_1.c.c.zy, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    var_0 = ~464i;
    global1 = array<vec2<bool>, 26>();
    var var_1 = func_1(-1064f);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f - var_1.a.e), var_1.a.e))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 10u)]), func_2());
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, 1u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.b.x), _wgslsmith_div_f32(-1910f, var_2.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-534f - var_1.a.e)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-390f - var_1.a.b.x), _wgslsmith_f_op_f32(f32(-1f) * -759f), true))) + var_1.a.e));
}

