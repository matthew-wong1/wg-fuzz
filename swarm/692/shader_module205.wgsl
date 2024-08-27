struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
    d: u32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(293f, vec2<i32>(-1i, 2147483647i), Struct_1(vec4<bool>(false, true, false, false), vec3<bool>(false, true, false)), 1u, vec4<i32>(7128i, 32784i, 0i, -26284i));

var<private> global1: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(83313u, 0u, 0u, 18820u), vec4<u32>(3430u, 1u, 4294967295u, 1u), vec4<u32>(17554u, 45692u, 4294967295u, 4294967295u), vec4<u32>(51777u, 0u, 0u, 0u), vec4<u32>(66351u, 0u, 70074u, 28677u), vec4<u32>(66224u, 3128u, 42418u, 18543u), vec4<u32>(4294967295u, 0u, 96153u, 1u), vec4<u32>(0u, 57619u, 66474u, 24818u), vec4<u32>(0u, 4294967295u, 0u, 1u), vec4<u32>(1u, 47528u, 54349u, 1u), vec4<u32>(20083u, 2303u, 4294967295u, 0u), vec4<u32>(1u, 1u, 1u, 4294967295u), vec4<u32>(70248u, 0u, 103782u, 5618u), vec4<u32>(0u, 0u, 54498u, 40644u), vec4<u32>(7132u, 76929u, 0u, 1u), vec4<u32>(35695u, 115550u, 29352u, 3387u), vec4<u32>(24812u, 1u, 0u, 35017u), vec4<u32>(32324u, 4294967295u, 73428u, 51215u), vec4<u32>(44714u, 4651u, 8900u, 0u), vec4<u32>(112528u, 1u, 0u, 18411u), vec4<u32>(65113u, 1u, 4294967295u, 74560u), vec4<u32>(63367u, 22993u, 43927u, 39200u), vec4<u32>(1u, 8078u, 4294967295u, 44072u), vec4<u32>(30552u, 39619u, 0u, 8771u), vec4<u32>(0u, 0u, 1u, 33686u), vec4<u32>(1u, 0u, 0u, 1u), vec4<u32>(58137u, 4344u, 4294967295u, 32522u), vec4<u32>(50227u, 4294967295u, 19371u, 58792u), vec4<u32>(130u, 1u, 0u, 4294967295u), vec4<u32>(0u, 1u, 1u, 6327u), vec4<u32>(24618u, 12592u, 0u, 43540u));

var<private> global2: vec3<u32> = vec3<u32>(57707u, 4294967295u, 22053u);

var<private> global3: array<i32, 30> = array<i32, 30>(-38391i, 0i, 21221i, 1115i, -1i, 0i, 2147483647i, 1i, -1i, 2147483647i, -1i, 1i, -11809i, -1i, 41466i, i32(-2147483648), 1i, 0i, 40776i, 0i, i32(-2147483648), 1i, 0i, i32(-2147483648), 19162i, 0i, -14025i, -1i, 1i, -10282i);

var<private> global4: array<u32, 30> = array<u32, 30>(63818u, 44473u, 4294967295u, 28645u, 20999u, 4294967295u, 40017u, 1u, 1u, 4294967295u, 0u, 61039u, 43960u, 4294967295u, 11157u, 1u, 14595u, 33180u, 1u, 0u, 8646u, 28354u, 0u, 79782u, 0u, 27785u, 46833u, 10448u, 1u, 1u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: bool) -> u32 {
    let var_0 = Struct_2(-2265f, firstTrailingBit(_wgslsmith_mod_vec2_i32(select(arg_2.xw, _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, arg_2.x), global0.e.zx), select(global0.c.a.zx, global0.c.a.wx, arg_1.yy)), _wgslsmith_sub_vec2_i32(vec2<i32>(-34994i, global0.e.x), vec2<i32>(-1i, global3[_wgslsmith_index_u32(9529u, 30u)])))), Struct_1(vec4<bool>(true, arg_3, arg_1.x, select(arg_3, arg_1.x, arg_3 & global0.c.b.x)), vec3<bool>(any(vec4<bool>(arg_1.x, global0.c.a.x, global0.c.a.x, arg_1.x)) && all(arg_1), true, arg_1.x)), global4[_wgslsmith_index_u32(~31158u, 30u)], firstLeadingBit(global0.e));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(475f, 1000f))))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), -1248f), _wgslsmith_f_op_f32(837f + _wgslsmith_f_op_f32(f32(-1f) * -804f)), !any(vec2<bool>(global0.c.a.x, arg_3)))));
    let var_2 = ~vec3<u32>(_wgslsmith_div_u32(reverseBits(1u), u_input.a.x), _wgslsmith_mod_u32(~global2.x, min(abs(29274u), max(17857u, u_input.a.x))), u_input.a.x);
    global2 = ~var_2;
    global3 = array<i32, 30>();
    return _wgslsmith_clamp_u32(34693u, ~0u << (~(~(1u << (var_2.x % 32u))) % 32u), _wgslsmith_mult_u32(_wgslsmith_sub_u32(global2.x, countOneBits(0u)), var_2.x | global2.x));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>) -> u32 {
    var var_0 = 2147483647i;
    let var_1 = Struct_1(global0.c.a, arg_0.b);
    let var_2 = Struct_1(select(arg_0.a, vec4<bool>(_wgslsmith_f_op_f32(exp2(global0.a)) < global0.a, !(global0.d >= 4294967295u), global0.c.b.x, false), !all(vec3<bool>(arg_0.a.x, var_1.b.x, var_1.a.x))), arg_0.a.wzx);
    var var_3 = Struct_2(-267f, abs(global0.e.ww), var_1, global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, func_3(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(arg_1.x, 30u)], _wgslsmith_clamp_u32(4294967295u, 16517u, global0.d)), 30u)], vec3<bool>(false, global0.c.a.x, arg_0.b.x | global0.c.b.x), global0.e, false)), 30u)], countOneBits(vec4<i32>(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(3290u, 30u)], 31u)], global1[_wgslsmith_index_u32(43061u, 31u)]), 30u)], _wgslsmith_add_i32(global0.e.x, global3[_wgslsmith_index_u32(reverseBits(0u), 30u)]), ~global0.e.x, _wgslsmith_div_i32(global0.b.x, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2.x, 4294967295u), 30u)]))));
    var_3 = Struct_2(-260f, global0.b | (firstTrailingBit(global0.b | var_3.e.yz) ^ _wgslsmith_div_vec2_i32(max(vec2<i32>(global3[_wgslsmith_index_u32(4485u, 30u)], 28979i), global0.e.zx), ~vec2<i32>(-59167i, global3[_wgslsmith_index_u32(global0.d, 30u)]))), var_3.c, _wgslsmith_dot_vec4_u32(~reverseBits(_wgslsmith_sub_vec4_u32(global1[_wgslsmith_index_u32(var_3.d, 31u)], global1[_wgslsmith_index_u32(1u, 31u)])), _wgslsmith_div_vec4_u32(abs(global1[_wgslsmith_index_u32(~arg_1.x, 31u)]), max(~global1[_wgslsmith_index_u32(global0.d, 31u)], ~global1[_wgslsmith_index_u32(global2.x, 31u)]))), reverseBits(~var_3.e & var_3.e));
    return 1u;
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    global2 = vec3<u32>(global2.x ^ max(~u_input.a.x, 111601u), ~_wgslsmith_div_u32(~_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(0u, 30u)], arg_0.x), ~func_2(Struct_1(global0.c.a, global0.c.b), u_input.a)), global0.d);
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-445f + global0.a)))), select(global0.e.zw, vec2<i32>(abs(_wgslsmith_add_i32(global3[_wgslsmith_index_u32(global0.d, 30u)], global0.e.x)), _wgslsmith_dot_vec3_i32(global0.e.yxx, _wgslsmith_add_vec3_i32(global0.e.wxz, global0.e.www))), true && global0.c.b.x), Struct_1(select(select(global0.c.a, select(global0.c.a, vec4<bool>(global0.c.a.x, true, global0.c.b.x, false), global0.c.a.x), !global0.c.a), global0.c.a, global0.c.a), global0.c.b), ~min(reverseBits(abs(4294967295u)), u_input.a.x), global0.e);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-880f, _wgslsmith_f_op_f32(-var_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 30>();
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(~_wgslsmith_sub_vec2_u32(vec2<u32>(global2.x, 0u), u_input.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.a)) - -624f)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + -1099f)), -1589f)));
    var var_1 = 1u;
    global1 = array<vec4<u32>, 31>();
    var_1 = _wgslsmith_add_u32(56634u, ~countOneBits(func_3(_wgslsmith_add_i32(7240i, global0.e.x), select(global0.c.b, vec3<bool>(global0.c.b.x, false, true), global0.c.b.x), reverseBits(vec4<i32>(-11838i, 0i, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global0.d, 30u)], 30u)], -1i)), global0.c.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a, ~(reverseBits(-global0.e) | global0.e), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(555f * global0.a))), _wgslsmith_f_op_f32(f32(-1f) * -1898f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1760f)))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.a, global0.a, 188f))), vec3<f32>(global0.a, global0.a, 100f)))))), (abs(global4[_wgslsmith_index_u32(global2.x, 30u)]) >> ((_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(65796u, 31u)], vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global0.d, 30u)], 30u)], global0.d, global0.d, u_input.a.x)) >> (firstLeadingBit(15511u) % 32u)) % 32u)) | func_3(_wgslsmith_div_i32(abs(-27163i), 1i), select(vec3<bool>(global0.c.b.x, true, global0.c.b.x), select(vec3<bool>(false, global0.c.a.x, false), vec3<bool>(true, false, true), true), global0.c.b.x), global0.e, global4[_wgslsmith_index_u32(~global0.d, 30u)] > _wgslsmith_add_u32(35480u, 18671u)));
}

