struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec2<f32>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_2 = Struct_2(vec4<f32>(245f, 1000f, 763f, -1000f), vec4<bool>(false, true, false, false), vec2<f32>(-199f, 826f), -1i, Struct_1(vec4<f32>(2981f, 579f, -652f, 773f), vec4<i32>(1i, -26400i, -26402i, -44168i), true));

var<private> global2: Struct_2 = Struct_2(vec4<f32>(-1850f, -934f, 863f, 520f), vec4<bool>(true, true, true, false), vec2<f32>(-1283f, -192f), -33066i, Struct_1(vec4<f32>(-628f, 175f, -117f, -1001f), vec4<i32>(1i, 2147483647i, 2147483647i, i32(-2147483648)), true));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(global1.a, global2.e.a))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, global1.e.a.x, global2.e.a.x, arg_1)) * _wgslsmith_f_op_vec4_f32(-global1.e.a)))), !(!(!(!global1.b))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(156f, -871f))))), 236f), _wgslsmith_mod_i32(abs(reverseBits(u_input.a.x)), u_input.a.x), global2.e);
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    global2 = func_1(_wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 201u, 4294967295u, 1u), vec4<u32>(9257u, 1655u, 64874u, 0u)), _wgslsmith_add_u32(80453u, 0u)), _wgslsmith_clamp_u32(1u << (1u % 32u), 10488u, ~4294967295u)), 1u << (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 0u), ~vec3<u32>(5144u, 56861u, 2291u)) % 32u)), arg_0.a.x);
    let var_0 = _wgslsmith_sub_i32(-2147483647i, _wgslsmith_sub_i32(i32(-1i) * -19940i, _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a.x, -1i), u_input.a.x))) & -33946i;
    var var_1 = func_1(1u, 473f).e;
    var var_2 = Struct_2(global2.e.a, global1.b, _wgslsmith_f_op_vec2_f32(global1.a.yy * global2.e.a.xx), _wgslsmith_clamp_i32(global2.e.b.x, abs(-var_1.b.x) ^ -44966i, var_1.b.x), arg_0);
    var var_3 = _wgslsmith_dot_vec2_u32(~firstTrailingBit(vec2<u32>(1u, 1u)) ^ ~vec2<u32>(33681u, _wgslsmith_add_u32(9283u, 32069u)), firstTrailingBit(countOneBits(vec2<u32>(95641u, 4294967295u) << (firstTrailingBit(vec2<u32>(1u, 1u)) % vec2<u32>(32u)))));
    return min(~select(~firstLeadingBit(vec4<u32>(22935u, 4294967295u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u), vec4<bool>(true, true, arg_0.c | global1.e.c, !arg_0.c)), reverseBits(~(~vec4<u32>(43683u, 4294967295u, 10533u, 28873u))));
}

fn func_2() -> vec2<u32> {
    global0 = -2147483647i;
    global0 = global2.e.b.x;
    var var_0 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(abs(max(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, 1u, 4294967295u, 4294967295u))), min(~func_3(global2.e), _wgslsmith_mod_vec4_u32(~vec4<u32>(45785u, 0u, 912u, 18672u), vec4<u32>(4294967295u, 44415u, 19613u, 47069u)))), reverseBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(19346u, 4294967295u, 0u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 0u, 0u)) & _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 39973u), vec2<u32>(32822u, 28281u)), reverseBits(0u))));
    var var_1 = reverseBits(u_input.a.x);
    var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(min(countOneBits(56095u), _wgslsmith_mod_u32(10154u, 4294967295u)), 22311u), min(~(35047u >> (1u % 32u)), _wgslsmith_dot_vec2_u32(select(vec2<u32>(58758u, 68284u), vec2<u32>(15957u, 42064u), global1.b.xw), ~vec2<u32>(0u, 1u))), ~(_wgslsmith_sub_u32(4294967295u, 9559u) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 6128u), vec3<u32>(11057u, 0u, 0u))), func_3(func_1(~4294967295u, global1.c.x).e).x), abs(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 16659u, 49551u), max(vec3<u32>(70530u, 6824u, 18453u), vec3<u32>(1u, 0u, 4294967295u))), ~0u >> (firstTrailingBit(58564u) % 32u), 0u, ~33568u | _wgslsmith_clamp_u32(11794u, 53993u, 0u))));
    return select(~(~(~vec2<u32>(0u, 4294967295u))), vec2<u32>(1u, 1u), false == (false && !all(global1.b.zxx)));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec4<f32>) -> StorageBuffer {
    global0 = u_input.a.x;
    let var_0 = func_1(0u >> (arg_1 % 32u), _wgslsmith_f_op_f32(sign(arg_0.c.x))).e;
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.e.a + arg_2))), _wgslsmith_f_op_vec4_f32(-var_0.a), vec4<bool>(!(!arg_0.e.c), true, global1.e.c, !global1.e.c))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + -1000f))), _wgslsmith_f_op_f32(sign(var_0.a.x)), global1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.e.a.x)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.e.a.x, -178f))))));
    var var_2 = arg_0.e.b.x == _wgslsmith_div_i32(_wgslsmith_clamp_i32(arg_0.e.b.x, reverseBits(0i), ~(~(-7888i))), abs(_wgslsmith_dot_vec3_i32(func_1(18328u, global1.e.a.x).e.b.zwz, -vec3<i32>(-2147483647i, global2.d, global2.e.b.x))));
    let var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_1.zwz)));
    return StorageBuffer(vec3<u32>(_wgslsmith_mult_u32(~arg_1, arg_1), abs(~67455u), 71694u), countOneBits(vec2<u32>(arg_1, 38292u)), vec3<i32>(~reverseBits(-11808i), global2.d, -global2.e.b.x), firstTrailingBit(~min(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1, arg_1, 38548u, arg_1), vec4<u32>(arg_1, arg_1, 5827u, arg_1)), vec4<u32>(arg_1, arg_1, 32030u, arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_mod_u32(4294967295u, 4294967295u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(376f + _wgslsmith_f_op_f32(-global1.e.a.x)))));
    let var_1 = func_1(~firstTrailingBit(1u), global2.a.x).e;
    global1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1187f - global1.c.x) - _wgslsmith_f_op_f32(var_0.e.a.x * global2.e.a.x))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), global2.a.x), _wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_div_f32(global1.e.a.x, var_0.c.x))), var_1.a.x, global1.e.a.x), !select(select(!vec4<bool>(global2.b.x, var_1.c, true, var_0.e.c), !global2.b, func_1(1u, -1125f).b), var_0.b, true), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_0.e.a.wx))), global1.d & ~(var_1.b.x ^ 50621i), global1.e);
    let var_2 = vec2<i32>(-_wgslsmith_sub_i32(i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(-global1.e.b, -var_1.b)), ~abs(37049i));
    var var_3 = global2.e;
    let x = u_input.a;
    s_output = func_4(func_1(~_wgslsmith_dot_vec2_u32(func_2(), _wgslsmith_sub_vec2_u32(vec2<u32>(22750u, 0u), vec2<u32>(0u, 0u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-532f))) - _wgslsmith_f_op_f32(-global2.c.x))), _wgslsmith_dot_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(func_3(Struct_1(vec4<f32>(1259f, 1384f, -643f, var_1.a.x), vec4<i32>(global1.e.b.x, global2.e.b.x, global2.e.b.x, 2147483647i), var_3.c)), vec4<u32>(25271u, 4294967295u, 0u, 4294967295u), firstTrailingBit(vec4<u32>(0u, 4294967295u, 0u, 71723u)))), select(vec4<u32>(17168u, _wgslsmith_div_u32(11784u, 11420u), ~0u, ~21606u), vec4<u32>(max(4294967295u, 1u), _wgslsmith_add_u32(15902u, 65995u), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(16833u, 47243u, 12371u), vec3<u32>(1u, 11611u, 0u))), vec4<bool>(!global2.e.c, true, true, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_1(1u, -940f).a.x, var_0.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.a.x, -518f))), _wgslsmith_f_op_f32(f32(-1f) * -522f))));
}

