struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: f32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: bool,
    d: vec2<i32>,
    e: bool,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 33025u;

var<private> global1: array<f32, 16> = array<f32, 16>(-1075f, -373f, -296f, 216f, 2398f, 352f, 446f, -103f, 1483f, 443f, 1376f, 192f, -883f, -173f, -1461f, 1448f);

var<private> global2: vec3<i32> = vec3<i32>(17554i, 0i, 2147483647i);

var<private> global3: vec4<bool>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_div_f32(501f, 213f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 16u)], 506f) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0, 16u)] + 1371f))))));
    var var_1 = global2.x;
    var var_2 = global2.x;
    let var_3 = vec4<i32>(global2.x, i32(-1i) * -1i, min(u_input.c.x, ~_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(global2.xz, vec2<i32>(u_input.c.x, global2.x)), countOneBits(vec2<i32>(u_input.b.x, -77796i)))), _wgslsmith_dot_vec2_i32(vec2<i32>(~global2.x, -1i << (arg_0 % 32u)), ~_wgslsmith_sub_vec2_i32(global2.yy, _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, u_input.c.x), vec2<i32>(global2.x, global2.x)))));
    var var_4 = Struct_2(global3.x, (~vec3<u32>(arg_0, 0u, 1u) & min(~vec3<u32>(97114u, arg_0, arg_0), abs(vec3<u32>(49010u, 43577u, 56978u)))) ^ _wgslsmith_add_vec3_u32(select(~vec3<u32>(arg_0, arg_0, 39879u), ~vec3<u32>(arg_0, arg_0, 0u), global3.xyy), select(min(vec3<u32>(1u, arg_0, arg_0), vec3<u32>(arg_0, 0u, arg_0)), countOneBits(vec3<u32>(77157u, 4294967295u, arg_0)), true)), 1947f, !any(global3.zyy), Struct_1(all(!select(vec3<bool>(true, true, global3.x), vec3<bool>(global3.x, global3.x, global3.x), global3.yzw)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2317f, global1[_wgslsmith_index_u32(26078u, 16u)])) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(2835f, global1[_wgslsmith_index_u32(arg_0, 16u)]))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(arg_0, 16u)], global1[_wgslsmith_index_u32(72745u, 16u)]) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 16u)], -559f) + vec2<f32>(global1[_wgslsmith_index_u32(arg_0, 16u)], global1[_wgslsmith_index_u32(arg_0, 16u)]))))), !(!select(global3.wz, vec2<bool>(global3.x, true), true))));
    return true;
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> i32 {
    var var_0 = Struct_2(false, firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1, 159497u, arg_1), max(vec3<u32>(4294967295u, 4294967295u, 26238u), vec3<u32>(arg_0.b, 27226u, arg_0.b))), _wgslsmith_div_u32(39197u << (1u % 32u), ~26657u), reverseBits(279u))), _wgslsmith_f_op_f32(ceil(430f)), select(max(countOneBits(57947u), arg_0.b) != ~_wgslsmith_div_u32(arg_0.b, arg_0.b), all(!global3.yzy), countOneBits(_wgslsmith_mod_i32(u_input.c.x, -1i)) >= (u_input.a << (reverseBits(4294967295u) % 32u))), Struct_1(4294967295u > ~(~arg_0.b), vec2<f32>(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(4294967295u >> (arg_0.b % 32u), 16u)], 424f, func_3(arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-542f)) + 1085f)), select(global3.xx, select(global3.xx, global3.wx, !global3.xx), func_3(~18635u))));
    let var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_add_i32(abs(19615i), global2.x) ^ global2.x, 2147483647i), reverseBits(abs(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(9653i, u_input.a, 64660i), u_input.c, vec3<i32>(arg_0.d.x, -6656i, arg_0.d.x)), max(vec3<i32>(arg_0.d.x, arg_0.d.x, 2147483647i), vec3<i32>(u_input.b.x, arg_0.d.x, arg_0.d.x)), vec3<i32>(u_input.c.x, 1i, u_input.a)))));
    var_0 = Struct_2(!(!(!var_0.d) && global3.x), select(_wgslsmith_clamp_vec3_u32(vec3<u32>(~var_0.b.x, var_0.b.x, firstLeadingBit(var_0.b.x)), var_0.b, _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.b, arg_0.b, 8708u), var_0.b, vec3<u32>(17672u, 4715u, var_0.b.x)), vec3<u32>(4213u, 25760u, 1u) >> (vec3<u32>(var_0.b.x, arg_0.b, var_0.b.x) % vec3<u32>(32u)), var_0.b)), var_0.b, var_0.d), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(var_0.b, _wgslsmith_mult_vec3_u32(var_0.b, _wgslsmith_mod_vec3_u32(var_0.b, var_0.b))), var_0.b.x), 16u)], select(true, arg_0.c, var_0.a), Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1838f, -1151f)))), vec2<bool>(false, global1[_wgslsmith_index_u32(46491u, 16u)] < global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 43068u, 4294967295u), 16u)])));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(max(1510f, -200f)) <= var_0.c);
    global1 = array<f32, 16>();
    return arg_0.d.x;
}

fn func_2() -> Struct_5 {
    let var_0 = Struct_4(true);
    let var_1 = countOneBits(max(_wgslsmith_mod_vec2_i32(select(vec2<i32>(63167i, -47705i), vec2<i32>(u_input.c.x, 0i) << (vec2<u32>(12465u, 84498u) % vec2<u32>(32u)), vec2<bool>(false, false)), select(vec2<i32>(-2147483647i, global2.x), global2.xy, vec2<bool>(true, true))), max(vec2<i32>(-global2.x, u_input.b.x), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, u_input.c.x), _wgslsmith_div_vec2_i32(u_input.c.yy, vec2<i32>(u_input.a, 3211i))))));
    let var_2 = ~u_input.b.x;
    let var_3 = !vec2<bool>(!var_0.a, true);
    var var_4 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(8133u, 0u), 16u)]);
    return Struct_5(func_4(Struct_3(func_3(1u), _wgslsmith_add_u32(19143u, 11564u), any(vec4<bool>(false, false, var_0.a, global3.x)) & (global3.x != true), u_input.c.yz, true), 1u), vec4<u32>(~0u, firstTrailingBit(1u), 9528u, ~(~firstLeadingBit(50166u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1[_wgslsmith_index_u32(9372u, 16u)], -205f, 980f))), vec3<f32>(1297f, global1[_wgslsmith_index_u32(9636u, 16u)], global1[_wgslsmith_index_u32(87054u, 16u)]), false)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1[_wgslsmith_index_u32(38945u, 16u)], global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(29384u, 16u)]))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(732f, -1625f, -1000f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(193f - global1[_wgslsmith_index_u32(1u, 16u)]), _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(1u, 16u)], -310f)), _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(45128u, 16u)]))))), Struct_1(false, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(0u, 16u)], -296f), vec2<f32>(153f, -299f)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)])))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(1u, 16u)]) - vec2<f32>(global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(104301u, 16u)])) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-339f, global1[_wgslsmith_index_u32(49279u, 16u)]), vec2<f32>(global1[_wgslsmith_index_u32(825u, 16u)], global1[_wgslsmith_index_u32(28393u, 16u)]))))), select(!vec2<bool>(global3.x, false), var_3, select(vec2<bool>(var_3.x, var_0.a), select(vec2<bool>(global3.x, var_3.x), vec2<bool>(false, false), var_0.a), !global3.zy))), vec2<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(abs(u_input.c), vec3<i32>(1i, global2.x, u_input.c.x))), var_1.x));
}

fn func_1() -> i32 {
    let var_0 = func_2();
    let var_1 = Struct_4(var_0.d.c.x);
    global2 = ~(~u_input.c);
    global1 = array<f32, 16>();
    let var_2 = 93079u;
    return _wgslsmith_dot_vec4_i32(firstLeadingBit(~(-vec4<i32>(u_input.b.x, global2.x, u_input.c.x, 27202i) | -vec4<i32>(2147483647i, 0i, u_input.c.x, -6932i))), -vec4<i32>(_wgslsmith_div_i32(-1i, u_input.c.x), abs(_wgslsmith_mod_i32(global2.x, global2.x)), ~func_2().e.x, 7688i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = firstTrailingBit(select(-(~u_input.c), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global2.x, -2147483647i, u_input.b.x), vec3<i32>(0i, u_input.b.x, 1i)), ~vec3<i32>(global2.x, global2.x, global2.x)), vec3<bool>(true, global3.x, all(vec3<bool>(global3.x, true, false)))) | min(abs(vec3<i32>(global2.x, global2.x, 0i)) & u_input.c, vec3<i32>(-24834i, -36112i, 0i) << (countOneBits(vec3<u32>(78436u, 49598u, 22904u)) % vec3<u32>(32u))));
    global1 = array<f32, 16>();
    global1 = array<f32, 16>();
    let var_0 = Struct_5(func_1(), _wgslsmith_div_vec4_u32(vec4<u32>(firstTrailingBit(_wgslsmith_sub_u32(78653u, 1u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(79436u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(0u, 1u, 26866u, 66062u)), reverseBits(abs(4294967295u)), 49961u), vec4<u32>(~58536u, abs(4294967295u) >> (abs(0u) % 32u), 4294967295u, _wgslsmith_sub_u32(1u, 1u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1[_wgslsmith_index_u32(~1u, 16u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 48392u, 64782u), vec3<u32>(0u, 4294967295u, 1905u)), 16u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 16u)])))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-630f, 801f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4059u, 16u)] * -1247f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(4673u, 16u)], global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(1u, 16u)])) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)], -1311f) + vec3<f32>(global1[_wgslsmith_index_u32(1u, 16u)], 218f, global1[_wgslsmith_index_u32(1u, 16u)])))))), func_2().d, firstLeadingBit(global2.zz));
    global0 = 23201u;
    let var_1 = Struct_3(all(select(select(vec4<bool>(var_0.d.a, false, true, false), vec4<bool>(false, true, false, global3.x), !vec4<bool>(false, global3.x, global3.x, var_0.d.a)), !select(vec4<bool>(true, var_0.d.c.x, var_0.d.a, true), vec4<bool>(var_0.d.c.x, global3.x, true, var_0.d.a), vec4<bool>(true, false, global3.x, false)), vec4<bool>(select(var_0.d.a, global3.x, var_0.d.a), true, false, true))), _wgslsmith_mult_u32(~19532u, _wgslsmith_add_u32(select(var_0.b.x, 63974u, global3.x), max(var_0.b.x, var_0.b.x))) & _wgslsmith_mult_u32((4294967295u >> (var_0.b.x % 32u)) ^ min(var_0.b.x, var_0.b.x), max(var_0.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(28674u, 11912u, var_0.b.x), var_0.b.xww))), true, global2.zy, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(u_input.a, func_2().a), ~var_0.b.wyz, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.d.b.x, var_0.d.b.x, -1000f, 601f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.b.x, 1000f, var_0.d.b.x, global1[_wgslsmith_index_u32(var_0.b.x, 16u)]))) - vec4<f32>(1028f, _wgslsmith_f_op_f32(step(var_0.c.x, -719f)), _wgslsmith_f_op_f32(min(var_0.d.b.x, var_0.d.b.x)), 1258f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1[_wgslsmith_index_u32(var_0.b.x, 16u)], -500f, global1[_wgslsmith_index_u32(var_1.b, 16u)], 1163f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1758f, var_0.d.b.x, var_0.c.x, 759f))), !global3.x)))), vec4<u32>(~select(20853u, var_1.b, global3.x), 17261u, ~1u, var_1.b), var_1.b);
}

