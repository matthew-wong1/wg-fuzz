struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_2,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 3>;

var<private> global1: array<vec2<f32>, 4>;

var<private> global2: i32;

var<private> global3: array<vec3<f32>, 23>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec2<u32>) -> vec2<bool> {
    return vec2<bool>(true, (true | (any(vec3<bool>(true, false, true)) & true)) && true);
}

fn func_2(arg_0: i32, arg_1: vec3<f32>) -> Struct_3 {
    let var_0 = select(vec2<bool>(true, true), func_3(Struct_1(~vec4<u32>(u_input.c, 22838u, u_input.b.x, 4294967295u) ^ (vec4<u32>(u_input.b.x, 7002u, 2617u, 0u) >> (vec4<u32>(34315u, 4294967295u, u_input.b.x, 18269u) % vec4<u32>(32u)))), countOneBits(-select(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(u_input.a, arg_0), vec2<bool>(false, true))), vec2<u32>(u_input.c, _wgslsmith_add_u32(27931u >> (u_input.c % 32u), firstLeadingBit(0u)))), arg_1.x == _wgslsmith_f_op_f32(trunc(367f)));
    let var_1 = vec3<u32>(u_input.c, u_input.b.x, _wgslsmith_dot_vec2_u32(abs(u_input.b), vec2<u32>(~u_input.c ^ u_input.c, u_input.c)));
    var var_2 = Struct_3(Struct_1(~(~vec4<u32>(0u, 1u, 1u, var_1.x))), ~(~var_1), Struct_2(u_input.a, Struct_1(~(~vec4<u32>(u_input.b.x, 17247u, 101582u, 49767u))), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -2147483647i), abs(vec2<i32>(9722i, -16667i))), 57001i, ~(~0i)), Struct_1(~vec4<u32>(4294967295u, 1u, u_input.b.x, 0u)), vec2<i32>(-firstTrailingBit(u_input.a), _wgslsmith_sub_i32(arg_0, 1i))), vec3<f32>(-1000f, -1078f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-748f))))), ~(~(-(vec2<i32>(1i, arg_0) << (vec2<u32>(u_input.c, 1u) % vec2<u32>(32u))))));
    let var_3 = select(_wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(select(vec4<i32>(48968i, u_input.a, 58639i, -2147483647i), vec4<i32>(2147483647i, 39755i, arg_0, var_2.c.a), var_0.x), vec4<i32>(u_input.a, var_2.e.x, 42253i, 22547i)), vec4<i32>(-1i, min(-var_2.c.e.x, var_2.c.e.x), arg_0, arg_0)), firstLeadingBit(abs(~u_input.a)), all(vec3<bool>(true & all(vec3<bool>(false, var_0.x, var_0.x)), true, false)));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, 602f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d.x, -489f, var_2.d.x, -297f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d.x, 344f, var_2.d.x, 1000f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global0[_wgslsmith_index_u32(40626u, 3u)], vec4<f32>(-582f, 2623f, 282f, -541f), false)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1334f, arg_1.x, -100f, var_2.d.x))));
    return Struct_3(var_2.a, _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_div_u32(3709u, 38536u), 0u, ~var_1.x), vec3<u32>(var_2.a.a.x, 60704u, u_input.c)), var_2.c, arg_1, vec2<i32>(firstLeadingBit(-2147483647i) >> (_wgslsmith_clamp_u32(56762u, 4294967295u, 10037u) % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_3, -1i), select(vec3<i32>(var_2.e.x, var_3, -1i), vec3<i32>(-1i, -14620i, -5724i), var_0.x))) << (var_2.c.d.a.yw % vec2<u32>(32u)));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_5(Struct_4(arg_2.e.x, Struct_1(vec4<u32>(~0u, _wgslsmith_div_u32(82049u, 4294967295u), 54759u, reverseBits(1u)))), ~_wgslsmith_clamp_u32(arg_1.b.x, 0u, 56593u));
    global1 = array<vec2<f32>, 4>();
    let var_1 = func_2(~firstLeadingBit(abs(~arg_1.e.x)), vec3<f32>(arg_3.x, -2029f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1939f * _wgslsmith_f_op_f32(-arg_1.d.x)) - arg_1.d.x)));
    var var_2 = (abs(var_1.a.a.x) << (~u_input.c % 32u)) ^ max(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.c), ~vec2<u32>(var_0.b, 4294967295u))), min(abs(_wgslsmith_add_u32(0u, arg_1.a.a.x)), _wgslsmith_mult_u32(1u, ~54545u)));
    global3 = array<vec3<f32>, 23>();
    return func_2(abs(_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec2_i32(var_1.e, var_1.c.c.zx)) | -7467i), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1197f + 475f))), arg_2.d.x), _wgslsmith_f_op_f32(-arg_2.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x)) - _wgslsmith_f_op_f32(var_1.d.x - _wgslsmith_f_op_f32(-arg_3.x))))).c.d;
}

fn func_1() -> Struct_4 {
    global1 = array<vec2<f32>, 4>();
    global3 = array<vec3<f32>, 23>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-434f, 259f, 349f, -1895f))))) * global0[_wgslsmith_index_u32(firstLeadingBit(~61755u), 3u)]);
    global1 = array<vec2<f32>, 4>();
    var var_1 = Struct_2(u_input.a, func_4(_wgslsmith_f_op_f32(-556f - var_0.x), func_2(u_input.a, global3[_wgslsmith_index_u32(62626u, 23u)]), func_2(-(u_input.a ^ 1i), vec3<f32>(_wgslsmith_f_op_f32(var_0.x + -901f), _wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(round(-1393f)))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), -195f, _wgslsmith_f_op_f32(sign(var_0.x)), 1022f)), vec3<i32>(u_input.a, _wgslsmith_add_i32(u_input.a, i32(-1i) * -u_input.a), 15572i), func_2(u_input.a >> (0u % 32u), var_0.xzy).c.d, max(vec2<i32>(-1i) * -select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(2147483647i, u_input.a), vec2<bool>(false, true)), vec2<i32>(abs(u_input.a), -2147483647i)));
    return Struct_4(var_1.e.x, func_2(1i, _wgslsmith_f_op_vec3_f32(func_2(2147483647i, var_0.xww).d + var_0.zxw)).a);
}

fn func_5(arg_0: Struct_4, arg_1: i32) -> vec4<u32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1980f - -1000f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-2175f))))) + _wgslsmith_f_op_f32(-func_2(_wgslsmith_div_i32(4028i, arg_1), _wgslsmith_f_op_vec3_f32(vec3<f32>(-160f, 888f, 383f) + vec3<f32>(-763f, -753f, 228f))).d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -403f), _wgslsmith_f_op_f32(f32(-1f) * -941f)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(-1219f * var_0.x)))));
    global1 = array<vec2<f32>, 4>();
    global3 = array<vec3<f32>, 23>();
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(sign(-1742f))) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.x, 793f))))));
    return vec4<u32>(func_2(5904i >> (~u_input.c % 32u), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-1470f)), -295f, func_2(arg_1, vec3<f32>(var_1.x, -404f, var_0.x)).d.x) * vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), var_1.x, _wgslsmith_f_op_f32(var_1.x - var_1.x)))).c.d.a.x, 3876u, u_input.c, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<f32>, 23>();
    let var_0 = Struct_5(Struct_4(~2147483647i, Struct_1(firstLeadingBit(firstTrailingBit(vec4<u32>(u_input.c, u_input.b.x, 21891u, 0u))))), ~_wgslsmith_dot_vec4_u32(func_5(func_1(), func_2(u_input.a, vec3<f32>(-623f, -1608f, 232f)).c.a), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c, 6316u, u_input.b.x, u_input.b.x), vec4<u32>(4294967295u, u_input.b.x, 15340u, u_input.b.x) ^ vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x))));
    var var_1 = Struct_5(var_0.a, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a.b.a.x, _wgslsmith_mult_u32(u_input.c, var_0.b)), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a.b.a.x, 23533u), ~var_0.a.b.a.yz)), var_0.a.b.a.wz ^ (vec2<u32>(u_input.c, 0u) | min(var_0.a.b.a.zx, vec2<u32>(u_input.c, 15045u)))));
    let var_2 = any(select(vec3<bool>(all(vec2<bool>(false, false)), _wgslsmith_f_op_f32(f32(-1f) * -2211f) < _wgslsmith_f_op_f32(select(-865f, -1390f, true)), any(vec4<bool>(true, true, true, true))), vec3<bool>(true, true, true), vec3<bool>(true, all(vec3<bool>(true, true, true)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.a, _wgslsmith_dot_vec2_i32(~firstLeadingBit(vec2<i32>(var_0.a.a, 24891i)), select(countOneBits(vec2<i32>(2147483647i, var_1.a.a)), vec2<i32>(var_0.a.a, var_0.a.a), true)), 1i, 1i), _wgslsmith_div_f32(-1386f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(126f - 406f))), global1[_wgslsmith_index_u32(func_2(~u_input.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -508f, _wgslsmith_f_op_f32(497f - -263f)) + vec3<f32>(_wgslsmith_f_op_f32(step(-103f, 1265f)), _wgslsmith_f_op_f32(-1000f + 1568f), _wgslsmith_f_op_f32(step(-2146f, -1541f))))).c.d.a.x, 4u)], _wgslsmith_mod_vec4_i32(~(vec4<i32>(-1i) * -vec4<i32>(u_input.a, -2147483647i, var_0.a.a, u_input.a)), _wgslsmith_div_vec4_i32(vec4<i32>(1238i ^ u_input.a, -8913i & var_0.a.a, 0i >> (1u % 32u), reverseBits(var_0.a.a)), abs(~vec4<i32>(var_1.a.a, var_0.a.a, 7535i, 1i)))));
}

