struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: bool,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7>;

var<private> global1: array<vec2<bool>, 30> = array<vec2<bool>, 30>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global2: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(-1041f, 2147483647i, vec4<f32>(297f, 1429f, -1315f, -1961f), vec4<i32>(-37463i, -55936i, -71i, -1i), vec3<u32>(8994u, 4294967295u, 4294967295u)));

var<private> global3: vec4<u32> = vec4<u32>(6140u, 114985u, 21805u, 0u);

var<private> global4: bool;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2) -> u32 {
    let var_0 = 2147483647i;
    global4 = true;
    let var_1 = Struct_1(~(-28647i), select(!select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(arg_1.e.x, 7u)], false, true), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 7u)], true, true), global0[_wgslsmith_index_u32(56280u, 7u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(arg_1.e.x, 7u)], false), select(vec4<bool>(false, false, false, true), vec4<bool>(global0[_wgslsmith_index_u32(arg_1.e.x, 7u)], global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(u_input.d, 7u)], global0[_wgslsmith_index_u32(1u, 7u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 7u)], false, global0[_wgslsmith_index_u32(u_input.d, 7u)], global0[_wgslsmith_index_u32(51782u, 7u)]))), select(!vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(7560u, 7u)]), vec4<bool>(all(vec3<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u, 7u)])), true, global0[_wgslsmith_index_u32(1u, 7u)], true), !select(vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(arg_1.e.x, 7u)], global0[_wgslsmith_index_u32(u_input.a, 7u)]), vec4<bool>(global0[_wgslsmith_index_u32(99382u, 7u)], global0[_wgslsmith_index_u32(arg_1.e.x, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)], false), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -634f) * _wgslsmith_f_op_f32(922f + arg_0.x)) == arg_0.x), false && global0[_wgslsmith_index_u32(59626u, 7u)], firstTrailingBit(u_input.c) << (_wgslsmith_add_u32(_wgslsmith_mod_u32(select(36315u, 2550u, false), 1u), ~20186u) % 32u), ~reverseBits(~(~global3.x)));
    global3 = ~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(25164u, arg_1.e.x, global3.x, 16859u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.e.x, 37366u, u_input.d, 0u) ^ vec4<u32>(var_1.e, 0u, var_1.e, 25369u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, global3.x, 1u, arg_1.e.x), vec4<u32>(1u, var_1.e, 4294967295u, arg_1.e.x))));
    let var_2 = Struct_2(_wgslsmith_div_f32(-975f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.x + _wgslsmith_f_op_f32(abs(-1888f))) + _wgslsmith_f_op_f32(f32(-1f) * -221f))), countOneBits(_wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, arg_1.d.x, 1i), vec3<i32>(-2147483647i, u_input.c, -61843i)) << (~(~u_input.d) % 32u)), _wgslsmith_f_op_vec4_f32(-arg_1.c), arg_1.d, ~vec3<u32>(arg_1.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_1.e.x, arg_1.e.x, u_input.d) << (vec4<u32>(arg_1.e.x, 4294967295u, u_input.d, arg_1.e.x) % vec4<u32>(32u)), vec4<u32>(25772u, arg_1.e.x, 6962u, 2440u)), u_input.a ^ arg_1.e.x));
    return _wgslsmith_sub_u32(~_wgslsmith_mult_u32(1u, 1u), select(~(~_wgslsmith_sub_u32(arg_1.e.x, 13241u)), _wgslsmith_mult_u32((var_1.e | 0u) >> (global3.x % 32u), 1u >> (global3.x % 32u)), _wgslsmith_f_op_f32(f32(-1f) * -2321f) == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_0.x))))));
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    return Struct_1(u_input.e, !vec4<bool>(!(global0[_wgslsmith_index_u32(arg_0, 7u)] && global0[_wgslsmith_index_u32(4294967295u, 7u)]), false, all(vec3<bool>(global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(u_input.d, 7u)], global0[_wgslsmith_index_u32(u_input.a, 7u)])), any(vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 7u)], global0[_wgslsmith_index_u32(arg_1.e.x, 7u)], global0[_wgslsmith_index_u32(arg_1.e.x, 7u)]))), any(select(vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, u_input.a), 7u)], !global0[_wgslsmith_index_u32(13040u, 7u)], 1i != arg_1.b, all(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(u_input.a, 7u)]))), vec4<bool>(true, true, true, true), any(vec2<bool>(false, global0[_wgslsmith_index_u32(arg_1.e.x, 7u)])))), 2147483647i << (_wgslsmith_mult_u32(func_3(arg_1.c.yyw, global2[_wgslsmith_index_u32(~36644u, 1u)]), ~arg_1.e.x) % 32u), max(~arg_1.e.x, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.a), global3.zw)) << (0u % 32u)));
}

fn func_4(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = ~2147483647i;
    global0 = array<bool, 7>();
    global3 = vec4<u32>(49605u, 0u, ~arg_0.e, 4294967295u);
    let var_1 = global2[_wgslsmith_index_u32(1u, 1u)];
    global3 = select(vec4<u32>(_wgslsmith_mod_u32(4294967295u, 30133u), _wgslsmith_sub_u32(0u, _wgslsmith_mult_u32(func_3(var_1.c.ywz, Struct_2(var_1.c.x, arg_0.a, vec4<f32>(var_1.c.x, 289f, var_1.a, 1095f), vec4<i32>(arg_0.d, -2147483647i, arg_0.d, arg_0.a), global3.xzz)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, global3.x, 17037u), var_1.e))), ~55667u, ~17346u), vec4<u32>(_wgslsmith_mult_u32(u_input.d, func_2(arg_0.e, Struct_2(var_1.c.x, u_input.b.x, vec4<f32>(var_1.a, var_1.a, var_1.c.x, var_1.a), var_1.d, vec3<u32>(var_1.e.x, var_1.e.x, u_input.d))).e), arg_0.e, func_3(vec3<f32>(var_1.a, var_1.a, -791f), global2[_wgslsmith_index_u32(42190u, 1u)]), var_1.e.x) | vec4<u32>(~(~1u), func_3(var_1.c.yxw, global2[_wgslsmith_index_u32(~var_1.e.x, 1u)]), 70748u, min(var_1.e.x, _wgslsmith_add_u32(var_1.e.x, 10359u))), global0[_wgslsmith_index_u32(~abs(select(~arg_0.e, global3.x | u_input.d, -2147483647i <= arg_0.a)), 7u)]);
    return vec4<u32>(countOneBits(_wgslsmith_add_u32(global3.x, 0u)), ~global3.x, firstTrailingBit(~abs(firstTrailingBit(var_1.e.x))), func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.c.x, -1779f, var_1.c.x))) - _wgslsmith_f_op_vec3_f32(var_1.c.xxw * vec3<f32>(var_1.c.x, var_1.a, var_1.a))), Struct_2(-933f, -19242i, vec4<f32>(var_1.a, -2574f, var_1.c.x, 338f), firstLeadingBit(vec4<i32>(-1035i, var_1.d.x, 10058i, var_1.b)), min(global3.wyw, var_1.e))) ^ ~u_input.d);
}

fn func_1() -> vec4<bool> {
    global3 = ~((max(vec4<u32>(19504u, u_input.d, 0u, global3.x) << (vec4<u32>(34773u, 273u, u_input.d, u_input.a) % vec4<u32>(32u)), select(vec4<u32>(12461u, 1u, global3.x, 1u), vec4<u32>(global3.x, 1u, u_input.a, 1u), global0[_wgslsmith_index_u32(0u, 7u)])) | min(~vec4<u32>(2463u, 8942u, 4294967295u, global3.x), _wgslsmith_add_vec4_u32(vec4<u32>(87572u, global3.x, 4294967295u, global3.x), vec4<u32>(1u, 1u, u_input.a, global3.x)))) & _wgslsmith_sub_vec4_u32(func_4(func_2(62671u, global2[_wgslsmith_index_u32(1u, 1u)])), ~vec4<u32>(1u, global3.x, 4294967295u, 41282u)));
    let var_0 = u_input.b;
    var var_1 = func_2(~16234u, Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-461f * _wgslsmith_f_op_f32(442f - 966f)))), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0.x, var_0.x, var_0.x), vec4<i32>(select(var_0.x, u_input.c, true), ~var_0.x, select(var_0.x, u_input.b.x, global0[_wgslsmith_index_u32(u_input.a, 7u)]), -var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(840f, -330f, -1799f, 828f))), vec4<i32>(var_0.x, i32(-1i) * -1i, -21463i, select(var_0.x, -1i, global0[_wgslsmith_index_u32(4294967295u, 7u)] && true)), _wgslsmith_add_vec3_u32(global3.wyw, func_4(Struct_1(52924i, vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 7u)], false, global0[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(global3.x, 7u)]), global0[_wgslsmith_index_u32(51471u, 7u)], 19945i, 4294967295u)).wyz)));
    return vec4<bool>(var_1.b.x, var_1.b.x, false | any(func_2(31719u << (global3.x % 32u), Struct_2(1424f, -30984i, vec4<f32>(-1176f, -1108f, 903f, -234f), vec4<i32>(var_0.x, 83008i, var_0.x, var_0.x), global3.zxx)).b.zz), true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 30>();
    global3 = ~vec4<u32>(~_wgslsmith_add_u32(~u_input.d, _wgslsmith_add_u32(global3.x, u_input.d)), select(~global3.x, 5008u, any(select(vec3<bool>(global0[_wgslsmith_index_u32(global3.x, 7u)], global0[_wgslsmith_index_u32(u_input.d, 7u)], global0[_wgslsmith_index_u32(u_input.d, 7u)]), vec3<bool>(global0[_wgslsmith_index_u32(34913u, 7u)], false, global0[_wgslsmith_index_u32(66389u, 7u)]), vec3<bool>(true, true, global0[_wgslsmith_index_u32(23052u, 7u)])))), global3.x, _wgslsmith_sub_u32(global3.x, 1u) ^ global3.x);
    var var_0 = Struct_1(countOneBits(u_input.e), select(select(func_1(), select(!vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 7u)], true, true), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 7u)], false, false, false), select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(global3.x, 7u)], false), vec4<bool>(global0[_wgslsmith_index_u32(6497u, 7u)], global0[_wgslsmith_index_u32(global3.x, 7u)], false, true), global0[_wgslsmith_index_u32(u_input.d, 7u)])), global0[_wgslsmith_index_u32(firstTrailingBit(u_input.d), 7u)]), !func_1(), func_2(~func_2(u_input.a, Struct_2(-1000f, 13800i, vec4<f32>(-1888f, -273f, 747f, -1327f), vec4<i32>(-78514i, u_input.b.x, 0i, 31985i), global3.zxy)).e, Struct_2(-504f, abs(-37200i), _wgslsmith_div_vec4_f32(vec4<f32>(312f, -877f, -1859f, 971f), vec4<f32>(658f, -608f, -845f, 996f)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.e, -2147483647i, u_input.e), vec4<i32>(u_input.e, -16053i, u_input.c, -6851i)), min(global3.wxy, global3.yzy))).b), select(true, !all(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 7u)], false, global0[_wgslsmith_index_u32(global3.x, 7u)])), true), _wgslsmith_dot_vec3_i32(abs(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -908i, 1i), vec3<i32>(-78770i, -67624i, u_input.c)), vec3<i32>(0i, u_input.b.x, 22167i))), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, -u_input.c, abs(u_input.e)), -vec3<i32>(u_input.e, 1i, u_input.c))), min(~u_input.a, func_2(4294967295u, Struct_2(255f, 27976i, vec4<f32>(-334f, -578f, 731f, 1256f), reverseBits(vec4<i32>(-1i, u_input.b.x, u_input.c, -1i)), firstLeadingBit(vec3<u32>(u_input.a, u_input.d, global3.x)))).e));
    let var_1 = vec2<bool>(any(!func_2(4294967295u, Struct_2(-1804f, var_0.d, vec4<f32>(800f, 1202f, -501f, -1033f), vec4<i32>(1i, 2147483647i, var_0.d, var_0.a), vec3<u32>(var_0.e, 68321u, u_input.a))).b.xx), true);
    var var_2 = firstLeadingBit(-reverseBits(select(vec3<i32>(2147483647i, 49393i, 1i), vec3<i32>(u_input.c, u_input.b.x, 2267i), var_0.b.yyz)) | _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.e, 0i, var_0.d), -abs(vec3<i32>(var_0.d, u_input.c, 41068i)), reverseBits(vec3<i32>(u_input.b.x, u_input.c, u_input.e))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(118f)), -1467f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1283f, 203f) - vec2<f32>(-827f, 1965f))))), _wgslsmith_div_u32(4294967295u, ~_wgslsmith_dot_vec3_u32(min(global3.yzy, global3.xwz), vec3<u32>(1u, 30367u, var_0.e))), _wgslsmith_mult_vec3_u32(~(~vec3<u32>(1u, global3.x, 0u)), global3.yyx));
}

