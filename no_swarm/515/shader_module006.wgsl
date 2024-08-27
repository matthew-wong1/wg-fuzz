struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<i32, 8>;

var<private> global2: Struct_3;

var<private> global3: array<vec2<i32>, 29>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> f32 {
    global2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -857f)), Struct_1(countOneBits(~global2.b.a)), Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-2142f)))), global2.a)), global2.b.a.x, ~vec3<i32>(12505i, i32(-1i) * -2147483647i, -2147483647i), any(select(select(vec2<bool>(global2.c.d, false), vec2<bool>(true, false), global2.c.d), select(vec2<bool>(false, false), vec2<bool>(global2.c.d, global2.c.d), false), !global2.c.d))), reverseBits(vec4<i32>(u_input.b.x, abs(0i), abs(55283i), _wgslsmith_sub_i32(u_input.b.x, global1[_wgslsmith_index_u32(u_input.a, 8u)]))));
    global3 = array<vec2<i32>, 29>();
    var var_0 = global2.c;
    global2 = Struct_3(_wgslsmith_f_op_f32(-var_0.a), Struct_1(u_input.c.yz), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(539f + -1185f)), ~(~(~var_0.b)), vec3<i32>(var_0.c.x, -_wgslsmith_add_i32(-44699i, global1[_wgslsmith_index_u32(global2.b.a.x, 8u)]), reverseBits(~2147483647i)), var_0.d), ~global2.d);
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1499f, var_0.a, -1585f), vec3<f32>(-531f, global2.a, 273f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c.a, global2.c.a, global2.a) * vec3<f32>(193f, -228f, -171f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1136f, var_0.a, 121f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(576f, var_0.a, -851f) + vec3<f32>(-1832f, var_0.a, global2.c.a))), select(!vec3<bool>(false, global2.c.d, false), vec3<bool>(false, global2.c.d, global2.c.d), var_0.d && global2.c.d)))), vec3<f32>(_wgslsmith_f_op_f32(max(global2.a, _wgslsmith_f_op_f32(f32(-1f) * -232f))), 682f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.c.a, global2.a, false))))));
    return -1640f;
}

fn func_2() -> u32 {
    global2 = Struct_3(_wgslsmith_f_op_f32(322f * _wgslsmith_f_op_f32(func_3(global2.b))), global2.b, global2.c, -_wgslsmith_mult_vec4_i32(min(max(global2.d, vec4<i32>(global2.c.c.x, 0i, 4326i, 1i)), vec4<i32>(-1174i, -2147483647i, 1i, u_input.b.x)), vec4<i32>(_wgslsmith_sub_i32(2147483647i, u_input.b.x), -46602i, global1[_wgslsmith_index_u32(global2.c.b, 8u)], global2.c.c.x)));
    global1 = array<i32, 8>();
    global0 = u_input.b.x;
    global2 = Struct_3(global2.a, global2.b, global2.c, firstLeadingBit(global2.d));
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(select(-743f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.a * global2.c.a)), global2.c.d))), 429f, global2.a);
    return abs(u_input.c.x);
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> Struct_3 {
    let var_0 = Struct_3(arg_0.a, global2.b, Struct_2(-1294f, arg_3, _wgslsmith_div_vec3_i32(-arg_0.c, _wgslsmith_add_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(arg_3, 8u)], global1[_wgslsmith_index_u32(4294967295u, 8u)], u_input.b.x) | arg_0.c, reverseBits(vec3<i32>(arg_0.c.x, arg_0.c.x, arg_0.c.x)))), u_input.b.x < 37058i), -(~(~global2.d ^ min(vec4<i32>(u_input.b.x, 0i, global1[_wgslsmith_index_u32(4294967295u, 8u)], 1i), global2.d))));
    var var_1 = Struct_3(arg_1, Struct_1(~reverseBits(reverseBits(u_input.c.xz))), var_0.c, select(_wgslsmith_mult_vec4_i32(-global2.d, global2.d), abs(vec4<i32>(u_input.b.x ^ global1[_wgslsmith_index_u32(arg_2.a.x, 8u)], 6857i, _wgslsmith_div_i32(var_0.d.x, 1i), _wgslsmith_clamp_i32(0i, global1[_wgslsmith_index_u32(4294967295u, 8u)], -2147483647i))), !(!(!vec4<bool>(false, true, global2.c.d, var_0.c.d)))));
    global3 = array<vec2<i32>, 29>();
    var_1 = Struct_3(global2.a, arg_2, global2.c, _wgslsmith_mult_vec4_i32(max(-global2.d, ~global2.d & ~vec4<i32>(global2.c.c.x, 2147483647i, var_0.c.c.x, 2147483647i)), vec4<i32>(u_input.b.x, -56500i, ~var_0.c.c.x, 51790i)));
    let var_2 = vec3<u32>(~_wgslsmith_dot_vec3_u32((u_input.c.xxz ^ vec3<u32>(global2.c.b, 6481u, var_1.b.a.x)) | vec3<u32>(0u, 15716u, arg_3), abs(max(vec3<u32>(13425u, 1u, arg_2.a.x), u_input.c.yyz))), abs(~arg_2.a.x), abs(~(arg_2.a.x & 1u)));
    return Struct_3(_wgslsmith_f_op_f32(1012f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), Struct_1(min(select(arg_2.a >> (global2.b.a % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(arg_2.a, arg_2.a), all(vec4<bool>(false, false, false, var_1.c.d))), var_1.b.a)), Struct_2(632f, ~global2.c.b, vec3<i32>(reverseBits(_wgslsmith_dot_vec3_i32(var_0.c.c, vec3<i32>(-82215i, var_1.d.x, -17562i))), global1[_wgslsmith_index_u32(26691u, 8u)], firstLeadingBit(global1[_wgslsmith_index_u32(34683u, 8u)])), true), var_1.d);
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: bool) -> Struct_3 {
    var var_0 = global2.b;
    return func_4(global2.c, global2.c.a, Struct_1(global2.b.a), _wgslsmith_clamp_u32(~func_2(), 39024u, reverseBits(u_input.c.x)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_0.b;
    global1 = array<i32, 8>();
    global3 = array<vec2<i32>, 29>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1307f)), arg_0.c.a) + arg_0.c.a), -1487f);
    var var_2 = -152f;
    return global2.b;
}

fn func_6(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = global2.c;
    var_0 = global2.c;
    global0 = (1i ^ func_1(1i, -abs(vec3<i32>(0i, -3461i, u_input.b.x)), !var_0.d).c.c.x) & firstTrailingBit(-45496i & (_wgslsmith_clamp_i32(u_input.b.x, 2147483647i, 2147483647i) | 2147483647i));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(324f - global2.c.a), -1416f) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -142f), _wgslsmith_f_op_f32(-986f * var_0.a)))));
    var var_2 = global1[_wgslsmith_index_u32(max(~(4294967295u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b, arg_0.a.x), vec2<u32>(4294967295u, arg_0.a.x)) % 32u)), func_5(Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1101f * var_0.a), func_1(30185i, global2.d.zxx, false).c.a, false)), global2.b, global2.c, vec4<i32>(countOneBits(u_input.b.x), -global2.c.c.x, _wgslsmith_sub_i32(u_input.b.x, 0i), u_input.b.x)), func_1(1i, vec3<i32>(_wgslsmith_add_i32(23209i, -5017i), func_4(Struct_2(1311f, 66285u, vec3<i32>(global2.d.x, 0i, u_input.b.x), true), 853f, arg_0, global2.b.a.x).d.x, global1[_wgslsmith_index_u32(4294967295u, 8u)] & 0i), true).b).a.x), 8u)];
    return vec4<bool>(all(vec2<bool>(global2.c.d, !var_0.d)), -2147483647i < ~_wgslsmith_sub_i32(-u_input.b.x, -u_input.b.x), func_1(1i, vec3<i32>(global1[_wgslsmith_index_u32(max(26160u, var_0.b) ^ select(1u, global2.c.b, false), 8u)], ~2147483647i, firstLeadingBit(countOneBits(u_input.b.x))), all(select(vec2<bool>(var_0.d, global2.c.d), !vec2<bool>(global2.c.d, var_0.d), false))).c.d, !var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.c.a;
    let var_1 = 46855i;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-global2.a), firstTrailingBit(firstLeadingBit(~_wgslsmith_clamp_u32(u_input.a, 0u, 48625u))), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(global2.d.wxx, vec3<i32>(_wgslsmith_add_i32(-22188i, var_1), -1i, 0i)), ~_wgslsmith_div_vec3_i32(vec3<i32>(22093i, var_1, u_input.b.x), global2.c.c)), all(func_6(func_5(func_1(-2147483647i, vec3<i32>(global1[_wgslsmith_index_u32(0u, 8u)], 0i, 14181i), global2.c.d), func_1(u_input.b.x, global2.d.xxy, global2.c.d).b))));
    var var_3 = !select(vec4<bool>(all(vec3<bool>(true, true, true)), var_2.d, select(true, func_6(global2.b).x, u_input.c.x != 0u), global2.c.d), !vec4<bool>(func_4(global2.c, var_2.a, global2.b, u_input.a).c.d, true, !global2.c.d, var_2.d), var_2.d);
    var var_4 = func_1(min(20213i, 7186i), -vec3<i32>(52793i, var_1, 1i), true).c;
    var var_5 = ~((firstTrailingBit(5133i) << (u_input.a % 32u)) | ~(-16107i));
    let var_6 = func_4(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(224f)) * -1000f), _wgslsmith_mult_u32(~func_5(Struct_3(417f, global2.b, Struct_2(590f, 41081u, vec3<i32>(19190i, var_4.c.x, var_1), true), global2.d), Struct_1(vec2<u32>(1u, u_input.a))).a.x, ~(~20892u)), vec3<i32>(1i, 0i, countOneBits(_wgslsmith_mod_i32(var_2.c.x, 2147483647i))), !(!(var_2.a <= var_2.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a)) * var_2.a), global2.b, ~(~(~min(37992u, 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~0u, _wgslsmith_div_u32(~2543u, 27938u)) | u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -1334f), u_input.b, vec2<u32>(~reverseBits(58748u), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 32077u) >> (vec3<u32>(0u, global2.b.a.x, var_2.b) % vec3<u32>(32u)), u_input.c.yzw)), -(abs(vec2<i32>(0i, 6923i)) & u_input.b));
}

