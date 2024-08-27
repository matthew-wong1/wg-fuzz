struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: f32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11>;

var<private> global1: vec3<u32> = vec3<u32>(6147u, 9341u, 11243u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1093f, 105f)), _wgslsmith_f_op_f32(-705f + _wgslsmith_f_op_f32(-1847f + 459f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(810f + 734f) * _wgslsmith_f_op_f32(select(1294f, -1761f, false)))))));
    var var_1 = !(true == any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true))));
    global0 = array<i32, 11>();
    global0 = array<i32, 11>();
    var_1 = true & !(false | !any(vec4<bool>(true, false, true, true)));
    return u_input.a.x & ~1u;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_2) -> Struct_3 {
    var var_0 = arg_0.x;
    let var_1 = Struct_4(Struct_3(any(vec3<bool>(false, true, true)), _wgslsmith_f_op_f32(-arg_3.a.x), arg_0), arg_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(449f + -742f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.x - arg_3.a.x)))));
    global1 = vec3<u32>(~func_3(), ~_wgslsmith_mod_u32(45418u, 4294967295u), global1.x);
    var var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(arg_3.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_3.a - vec4<f32>(arg_1.x, var_1.c, 1863f, 409f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.a.x, 573f, arg_1.x, arg_1.x) * arg_3.a)))))), vec2<bool>(true, !(!var_1.a.c.x)));
    var var_3 = select(vec4<bool>(false, false, all(vec3<bool>(true, true, !var_2.b.x)), all(select(vec2<bool>(false, false), vec2<bool>(var_2.b.x, arg_0.x), var_1.a.c))), vec4<bool>(!(!all(vec4<bool>(true, var_1.a.c.x, var_1.a.a, true))), !any(vec2<bool>(arg_0.x, true)), all(!vec4<bool>(arg_0.x, true, var_1.a.c.x, var_1.a.c.x)) && !(298f < arg_1.x), any(vec2<bool>(u_input.c > 2147483647i, true))), true);
    return var_1.a;
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec3<f32>) -> vec4<i32> {
    global1 = u_input.a.zww;
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(439f, arg_3.x, 842f, 1443f)))))), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(3428u, u_input.b, 12240u, 1u) | vec4<u32>(0u, 1u, global1.x, u_input.a.x)), vec4<u32>(1u, 1u, u_input.b, ~u_input.b)), vec4<u32>(4294967295u, ~_wgslsmith_mod_u32(14335u, 1u), ~u_input.b, max(1u, min(u_input.a.x, 88613u)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-820f))))), _wgslsmith_f_op_f32(-arg_3.x)) - var_0.a.x);
    var_1 = arg_3.x;
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a)))), vec4<u32>(var_0.b.x, firstTrailingBit(~reverseBits(var_0.b.x)), func_3(), ~17657u));
    return vec4<i32>(~u_input.c << (_wgslsmith_dot_vec3_u32(select(_wgslsmith_sub_vec3_u32(vec3<u32>(11838u, 17179u, 10284u), var_2.b.yyy), vec3<u32>(25570u, global1.x, 4294967295u) | var_0.b.yyz, vec3<bool>(false, arg_0, arg_1.c.x)), abs(var_2.b.yzz)) % 32u), reverseBits(_wgslsmith_sub_i32(-1i, -(~2147483647i))), -min(0i, max(u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(var_2.b.x, 11u)]), vec2<i32>(3391i, 2147483647i)))), 2147483647i);
}

fn func_1() -> Struct_3 {
    let var_0 = ~_wgslsmith_mult_u32(1889u, global1.x);
    global0 = array<i32, 11>();
    global1 = reverseBits(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a.wzw, reverseBits(~u_input.a.xzw)), firstLeadingBit(u_input.a.ywx)));
    var var_1 = _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(abs(-vec4<i32>(u_input.c, u_input.c, u_input.c, global0[_wgslsmith_index_u32(0u, 11u)])), vec4<i32>(global0[_wgslsmith_index_u32(var_0, 11u)], u_input.c, u_input.c, 1i) | (vec4<i32>(-2147483647i, u_input.c, -26520i, 1i) << (u_input.a % vec4<u32>(32u)))), func_4(select(true, true, true), Struct_3(false, _wgslsmith_f_op_f32(1354f + -387f), vec2<bool>(false, false)), func_2(vec2<bool>(false, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(249f, -366f, 458f)), ~46337i, Struct_2(vec4<f32>(-232f, -1000f, 505f, -1220f), vec4<u32>(var_0, u_input.a.x, 0u, u_input.a.x))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-250f, -1000f, 380f), vec3<f32>(1025f, -1479f, -418f), false)))))) ^ ~(-(_wgslsmith_div_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(2861u, 11u)], -2147483647i, u_input.c, 1i), vec4<i32>(u_input.c, global0[_wgslsmith_index_u32(var_0, 11u)], global0[_wgslsmith_index_u32(0u, 11u)], -16670i)) & _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 43518i, u_input.c, u_input.c), vec4<i32>(0i, 2147483647i, -7135i, 35638i))));
    let var_2 = countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(select(var_1.x, -u_input.c, true), i32(-1i) * -5509i, countOneBits(~global0[_wgslsmith_index_u32(1381u, 11u)]), firstLeadingBit(1i)), -vec4<i32>(_wgslsmith_clamp_i32(20062i, global0[_wgslsmith_index_u32(26603u, 11u)], -20176i), -global0[_wgslsmith_index_u32(42334u, 11u)], global0[_wgslsmith_index_u32(global1.x, 11u)], -8290i & u_input.c), firstTrailingBit(reverseBits(~vec4<i32>(45668i, 0i, -1i, -2147483647i)))));
    return func_2(vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -114f), _wgslsmith_f_op_f32(-986f * 1000f), -188f), vec3<f32>(-825f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(-1479f))), vec3<bool>(true, global1.x != 36337u, true)))), _wgslsmith_dot_vec2_i32(var_2.wx, vec2<i32>(_wgslsmith_clamp_i32(-global0[_wgslsmith_index_u32(global1.x, 11u)], firstTrailingBit(var_1.x), u_input.c ^ global0[_wgslsmith_index_u32(var_0, 11u)]), _wgslsmith_add_i32(-1i, min(-2147483647i, var_2.x)))), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(745f, 448f)), _wgslsmith_f_op_f32(trunc(-740f)), _wgslsmith_f_op_f32(round(-518f)), -579f) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -618f), _wgslsmith_f_op_f32(select(1114f, 1000f, true)), -907f, 417f)), select(vec4<u32>(abs(u_input.a.x), ~25979u, ~global1.x, 0u), firstTrailingBit(vec4<u32>(4294967295u, global1.x, global1.x, 28297u)), vec4<bool>(true, true, true, true))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1) -> Struct_5 {
    global1 = u_input.a.ywx >> (~max(~vec3<u32>(global1.x, global1.x, 1u), ~_wgslsmith_add_vec3_u32(vec3<u32>(3011u, global1.x, 35580u), vec3<u32>(u_input.a.x, 29710u, 40860u))) % vec3<u32>(32u));
    global0 = array<i32, 11>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-282f * arg_1.a.x), func_2(vec2<bool>(false, arg_0.a.c.x), vec3<f32>(arg_0.c, arg_0.a.b, arg_1.a.x), -2147483647i, Struct_2(arg_1.a, vec4<u32>(u_input.b, 0u, 0u, u_input.a.x))).b, arg_1.a.x, _wgslsmith_f_op_f32(1688f + arg_1.a.x)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1115f, _wgslsmith_div_f32(-428f, arg_0.c), _wgslsmith_f_op_f32(-arg_0.b), arg_1.a.x))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(arg_1.a))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, -203f, -870f, arg_1.a.x) * _wgslsmith_f_op_vec4_f32(-arg_1.a))))));
    let var_1 = Struct_3(true, arg_0.a.b, !arg_0.a.c);
    return Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.a - vec4<f32>(_wgslsmith_f_op_f32(747f - -1126f), _wgslsmith_f_op_f32(-1833f * var_0.x), -2632f, _wgslsmith_f_op_f32(f32(-1f) * -832f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(arg_1.a + vec4<f32>(arg_0.a.b, 920f, var_1.b, var_1.b)))))), func_1().c);
}

fn func_6(arg_0: Struct_5, arg_1: vec4<i32>, arg_2: u32) -> Struct_5 {
    let var_0 = arg_2 ^ ~(select(~u_input.b, max(1u, 4294967295u), true) << (func_3() % 32u));
    var var_1 = u_input.a.yy;
    var_1 = u_input.a.zy;
    let var_2 = vec3<bool>(max(arg_1.x, _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(global1.x << (1u % 32u), 11u)], _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, arg_1.x, arg_1.x, u_input.c), arg_1))) <= u_input.c, arg_0.b.x, true);
    let var_3 = arg_0;
    return func_5(Struct_4(func_1(), _wgslsmith_f_op_f32(-arg_0.a.x), var_3.a.x), Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.a.x - 103f), -417f), _wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x), _wgslsmith_div_f32(-156f, _wgslsmith_f_op_f32(arg_0.a.x - 1879f)), var_3.a.x), min(abs(vec3<i32>(2147483647i, -16145i, u_input.c)), select(abs(vec3<i32>(arg_1.x, -10369i, u_input.c)), ~arg_1.xzy, vec3<bool>(true, arg_0.b.x, arg_0.b.x))), true));
}

fn func_7(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_4) -> Struct_5 {
    let var_0 = abs(vec3<u32>(~106384u ^ u_input.b, firstLeadingBit(u_input.a.x), (firstLeadingBit(global1.x) ^ (global1.x | 4294967295u)) & ~8744u));
    var var_1 = Struct_2(arg_2.a, u_input.a);
    let var_2 = -_wgslsmith_clamp_i32(-_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(arg_2.b, vec3<i32>(-2147483647i, -41550i, arg_1.x)), 0i), countOneBits(~_wgslsmith_clamp_i32(0i, 80995i, arg_1.x)), _wgslsmith_clamp_i32(-(global0[_wgslsmith_index_u32(4294967295u, 11u)] ^ u_input.c), -7644i, arg_1.x));
    var_1 = Struct_2(var_1.a, ~abs(vec4<u32>(var_1.b.x, 1u, 13160u, ~21218u)));
    var var_3 = Struct_4(func_2(vec2<bool>(arg_0.b.x, arg_0.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.a.x, 543f, -2158f))), vec3<f32>(var_1.a.x, 246f, 1284f), vec3<bool>(true, true, true)))), abs(~(-1i) ^ global0[_wgslsmith_index_u32(countOneBits(96822u), 11u)]), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b, var_1.a.x, -123f, 377f))), select(u_input.a, var_1.b, arg_3.a.a) ^ (vec4<u32>(global1.x, 1u, var_0.x, 4294967295u) >> (vec4<u32>(0u, var_0.x, global1.x, 63092u) % vec4<u32>(32u))))), 1f, _wgslsmith_f_op_f32(918f * var_1.a.x));
    return Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0.a.x)), _wgslsmith_f_op_f32(select(arg_2.a.x, 1437f, true)), arg_0.a.x, _wgslsmith_f_op_f32(-var_1.a.x))), func_5(arg_3, arg_2).b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = firstLeadingBit(_wgslsmith_mult_vec3_u32(~u_input.a.xyx, u_input.a.yxw));
    global0 = array<i32, 11>();
    var var_0 = func_7(func_6(func_5(Struct_4(func_1(), 1000f, _wgslsmith_f_op_f32(max(684f, -323f))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(102f, -441f, 1084f, 935f)), vec3<i32>(1i, 1i, 22874i), all(vec2<bool>(true, false)))), firstLeadingBit(-firstTrailingBit(vec4<i32>(-11895i, u_input.c, u_input.c, -2147483647i))), global1.x), -vec2<i32>(u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(36540u, 11u)], global0[_wgslsmith_index_u32(u_input.b, 11u)]) & vec2<i32>(2147483647i, -9564i), vec2<i32>(global0[_wgslsmith_index_u32(global1.x, 11u)], global0[_wgslsmith_index_u32(global1.x, 11u)]) & vec2<i32>(2147483647i, -14559i))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(839f + _wgslsmith_f_op_f32(f32(-1f) * -491f)), -224f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(676f + -404f))), 591f), -abs(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, -76413i, global0[_wgslsmith_index_u32(u_input.a.x, 11u)]), vec3<i32>(-18002i, -30270i, u_input.c))), !(-u_input.c == -global0[_wgslsmith_index_u32(39121u, 11u)])), Struct_4(Struct_3(false | func_2(vec2<bool>(false, true), vec3<f32>(-311f, -965f, -113f), global0[_wgslsmith_index_u32(24936u, 11u)], Struct_2(vec4<f32>(1706f, -527f, 344f, 1000f), vec4<u32>(global1.x, global1.x, global1.x, 4294967295u))).a, 1000f, vec2<bool>(true, true)), -585f, func_1().b));
    var var_1 = _wgslsmith_dot_vec2_u32(global1.xx, countOneBits(vec2<u32>(1u, 0u))) << (~22758u % 32u);
    var_0 = func_6(func_5(Struct_4(func_1(), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-var_0.a.x)), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(var_0.a)), func_4(var_0.b.x, Struct_3(false, var_0.a.x, vec2<bool>(false, true)), func_1(), vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x)).zwz, all(select(vec3<bool>(true, var_0.b.x, var_0.b.x), vec3<bool>(var_0.b.x, var_0.b.x, false), vec3<bool>(true, var_0.b.x, false))))), abs(~vec4<i32>(u_input.c, -35165i, -1i << (global1.x % 32u), ~(-9483i))), select(~(~firstLeadingBit(29858u)), 116526u | global1.x, 1u > global1.x));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_0.a * vec4<f32>(-1485f, _wgslsmith_f_op_f32(f32(-1f) * -136f), var_0.a.x, _wgslsmith_f_op_f32(var_0.a.x + var_0.a.x))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(var_0.a.x * -1478f), _wgslsmith_f_op_f32(-var_0.a.x)))), select(vec4<bool>(var_0.b.x, var_0.b.x || var_0.b.x, false, !var_0.b.x), select(vec4<bool>(var_0.b.x, var_0.b.x, false, var_0.b.x), select(vec4<bool>(true, var_0.b.x, false, var_0.b.x), vec4<bool>(true, var_0.b.x, true, var_0.b.x), vec4<bool>(true, var_0.b.x, false, var_0.b.x)), !var_0.b.x), select(select(vec4<bool>(var_0.b.x, true, var_0.b.x, true), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), true), vec4<bool>(false, false, true, var_0.b.x), select(vec4<bool>(var_0.b.x, false, false, var_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, true, var_0.b.x)))))), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(1u, u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, global1.x, 1558u), u_input.a.zyy)), 1u, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(38774u, 6982u), vec2<u32>(global1.x, 63585u))), u_input.a));
    let var_3 = 67133i;
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(var_0.a - vec4<f32>(-1092f, var_0.a.x, var_0.a.x, -815f)))) * vec4<f32>(_wgslsmith_f_op_f32(-710f + _wgslsmith_f_op_f32(trunc(-1795f))), var_0.a.x, var_2.a.x, 828f)), vec3<i32>(-2147483647i, ~firstLeadingBit(abs(23880i)), 0i), 59119u > var_2.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(func_5(Struct_4(Struct_3(true, var_4.a.x, var_0.b), _wgslsmith_f_op_f32(abs(var_0.a.x)), _wgslsmith_f_op_f32(var_4.a.x - var_4.a.x)), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1283f, 1221f, var_4.a.x, -1355f), var_0.a, var_0.b.x)), -var_4.b, all(vec4<bool>(false, var_4.c, false, var_4.c)))).a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - 2451f) - _wgslsmith_div_f32(var_0.a.x, -287f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1525f))), _wgslsmith_div_f32(var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))));
}

