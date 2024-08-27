struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
    c: Struct_3,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_2 = Struct_2(1u, vec2<f32>(664f, 1437f));

var<private> global2: array<Struct_3, 6>;

var<private> global3: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(83499u, 24455u, 11479u), vec3<u32>(27362u, 24281u, 69656u), vec3<u32>(1u, 29271u, 4294967295u), vec3<u32>(22835u, 4294967295u, 4294967295u), vec3<u32>(29249u, 34327u, 0u), vec3<u32>(31766u, 1551u, 0u), vec3<u32>(4294967295u, 7370u, 1u), vec3<u32>(1u, 0u, 25471u), vec3<u32>(1u, 45079u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(98653u, 4294967295u, 1u), vec3<u32>(1u, 3382u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 24562u), vec3<u32>(4294967295u, 10891u, 4838u), vec3<u32>(4294967295u, 0u, 12197u), vec3<u32>(48784u, 4294967295u, 4294967295u), vec3<u32>(52040u, 16799u, 68439u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(20091u, 0u, 7163u), vec3<u32>(4294967295u, 4294967295u, 38802u), vec3<u32>(0u, 462u, 0u), vec3<u32>(27926u, 1u, 1u), vec3<u32>(0u, 0u, 0u), vec3<u32>(37850u, 10482u, 4294967295u), vec3<u32>(57010u, 0u, 1u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(33158u, 4294967295u, 4294967295u), vec3<u32>(11342u, 50051u, 4294967295u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> vec2<u32> {
    let var_0 = 1i;
    var var_1 = Struct_1(~_wgslsmith_sub_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(global1.a, 1u), u_input.e), u_input.e | ~u_input.e));
    global0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a))) + _wgslsmith_div_f32(global1.b.x, -1490f))));
    let var_2 = Struct_2(var_1.a.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(max(global0.a, _wgslsmith_f_op_f32(-467f - arg_1.a)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.a, 590f), _wgslsmith_f_op_vec2_f32(sign(global1.b)))))));
    let var_3 = _wgslsmith_add_i32(u_input.a.x | select(u_input.a.x, -11264i & _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, u_input.a.x, var_0), vec3<i32>(-2147483647i, u_input.a.x, var_0)), true || (-1478i < var_0)), 1i);
    return ~min(abs(_wgslsmith_mod_vec2_u32(u_input.e, select(u_input.e, vec2<u32>(48937u, 0u), true))), (~vec2<u32>(var_2.a, var_2.a) << (u_input.e % vec2<u32>(32u))) ^ u_input.e);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_4) -> f32 {
    var var_0 = arg_2;
    global0 = arg_2.c;
    global1 = arg_1.e;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(727f, global0.a), -505f);
    global1 = arg_2.e;
    return global1.b.x;
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(func_4(Struct_1(vec2<u32>(_wgslsmith_dot_vec2_u32(~u_input.e, func_3(Struct_3(global0.a), global2[_wgslsmith_index_u32(39226u, 6u)])), 9376u)), Struct_4(vec2<bool>(131564u > u_input.b, false), all(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false))), global2[_wgslsmith_index_u32(~(1u << (_wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(global1.a, 29u)], vec3<u32>(u_input.c, u_input.c, u_input.e.x)) % 32u)), 6u)], Struct_2(global1.a, arg_0.yx), Struct_2(1u, arg_0.yy)), Struct_4(select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)))), 460f <= _wgslsmith_f_op_f32(sign(global0.a)), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.b.x, arg_0.x)))), Struct_2(0u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global1.b, vec2<f32>(global0.a, -609f), false)))), Struct_2(4294967295u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_0.xy, vec2<f32>(-988f, 1395f), false)) + vec2<f32>(arg_0.x, -1765f))))));
    let var_1 = Struct_1(abs(select(~vec2<u32>(502u, 106442u), countOneBits(reverseBits(u_input.e)), (u_input.e.x ^ u_input.e.x) >= ~4294967295u)));
    let var_2 = vec4<i32>(min(_wgslsmith_mult_i32(0i, ~u_input.a.x), firstTrailingBit(1i)), 0i, -u_input.a.x, -1i) >> (min(vec4<u32>(global1.a, u_input.e.x, ~1u, 0u), vec4<u32>(0u, ~firstLeadingBit(u_input.e.x), global1.a, ~func_3(global2[_wgslsmith_index_u32(u_input.e.x, 6u)], Struct_3(563f)).x)) % vec4<u32>(32u));
    return 59436u;
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_mod_u32(abs(~(~4294967295u)), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 744f, -362f))) & abs(36863u)), global1.b);
    var var_1 = -_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(~u_input.a.x, u_input.a.x | 2147483647i, ~(-8513i), u_input.a.x), vec4<i32>(-1i, _wgslsmith_add_i32(-1i, 2147483647i), u_input.a.x, 1i)), -vec4<i32>(u_input.a.x, _wgslsmith_div_i32(39632i, u_input.a.x), u_input.a.x, ~1i));
    let var_2 = _wgslsmith_f_op_f32(388f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1303f))))));
    global2 = array<Struct_3, 6>();
    global2 = array<Struct_3, 6>();
    return arg_2;
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: i32) -> f32 {
    var var_0 = select(~firstTrailingBit(firstLeadingBit(~vec2<i32>(32980i, 0i))), u_input.a.xz, vec2<bool>(true, select(true, true, any(vec3<bool>(true, true, true)))));
    let var_1 = ~arg_1.a;
    var var_2 = 1027f;
    let var_3 = Struct_2(global1.a, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(global1.b, global1.b, vec2<bool>(true, true))))));
    global1 = var_3;
    return var_3.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - global1.b.x) * _wgslsmith_f_op_f32(func_5(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.zx ^ vec2<i32>(u_input.a.x, u_input.a.x)), func_1(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.b, 14569u), firstLeadingBit(vec4<u32>(u_input.d, global1.a, 17372u, global1.a))), global0.a, Struct_1(~u_input.e), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, global0.a))), global3[_wgslsmith_index_u32(~(60668u & global1.a), 29u)], -(u_input.a.x & 1i))));
    var var_1 = u_input.a.x;
    let var_2 = 627f;
    var var_3 = Struct_2(58005u, vec2<f32>(_wgslsmith_f_op_f32(func_4(Struct_1(vec2<u32>(global1.a, 894u)), Struct_4(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), true, global2[_wgslsmith_index_u32(~u_input.c, 6u)], Struct_2(84870u, vec2<f32>(global1.b.x, var_2)), Struct_2(33754u, global1.b)), Struct_4(vec2<bool>(true, true), all(vec3<bool>(false, false, false)), global2[_wgslsmith_index_u32(~global1.a, 6u)], Struct_2(global1.a, global1.b), Struct_2(u_input.d, vec2<f32>(-1343f, var_2))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1020f)))));
    global2 = array<Struct_3, 6>();
    let var_4 = Struct_4(!select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), any(vec4<bool>(true, true, false, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(256f + 1017f), 1000f) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1777f, global0.a))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1162f) - 1000f)), global2[_wgslsmith_index_u32(firstTrailingBit(~global1.a), 6u)], Struct_2(71189u, vec2<f32>(var_3.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2032f), _wgslsmith_div_f32(-638f, global0.a)))), Struct_2(abs(firstLeadingBit(1u)), _wgslsmith_f_op_vec2_f32(trunc(global1.b))));
    let var_5 = vec4<i32>(30755i, _wgslsmith_div_i32(u_input.a.x << (_wgslsmith_mod_u32(40083u, 4294967295u) % 32u), reverseBits(firstTrailingBit(u_input.a.x))) << (1u % 32u), _wgslsmith_add_i32(u_input.a.x, u_input.a.x), i32(-1i) * -u_input.a.x);
    global3 = array<vec3<u32>, 29>();
    var_1 = countOneBits(_wgslsmith_dot_vec2_i32((u_input.a.zz ^ u_input.a.yx) << ((u_input.e << (u_input.e % vec2<u32>(32u))) % vec2<u32>(32u)), select(-vec2<i32>(var_5.x, 0i), _wgslsmith_mod_vec2_i32(var_5.xw, vec2<i32>(u_input.a.x, u_input.a.x)), vec2<bool>(true, var_4.b)))) >> (~reverseBits(1u) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.e.b.x, -1513f) - -204f))), 0i, _wgslsmith_sub_vec2_u32(~firstLeadingBit(vec2<u32>(var_3.a, u_input.b) | u_input.e), vec2<u32>(~u_input.c, 4294967295u) | select(vec2<u32>(var_4.d.a, u_input.e.x) | u_input.e, vec2<u32>(u_input.b, 64714u), var_4.a)), _wgslsmith_clamp_i32(-24533i, _wgslsmith_mult_i32(min(1i, select(-1i, -2193i, var_4.a.x)), 1i), abs(select(15166i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_5.x, 30022i), vec2<i32>(0i, var_5.x)), var_4.e.a >= 0u))));
}

