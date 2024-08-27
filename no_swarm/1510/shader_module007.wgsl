struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 7757u;

var<private> global1: array<i32, 26>;

var<private> global2: array<Struct_2, 23>;

var<private> global3: array<f32, 32> = array<f32, 32>(-1200f, 2650f, 375f, 2389f, 565f, 144f, 425f, 1000f, -110f, -614f, -1000f, 434f, 1000f, -281f, 785f, -591f, -862f, 137f, -399f, 764f, -609f, 872f, -1000f, 313f, 1000f, -103f, 502f, -981f, 313f, 527f, 1000f, 511f);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> f32 {
    global3 = array<f32, 32>();
    let var_0 = -38671i;
    let var_1 = ~(-vec2<i32>(_wgslsmith_sub_i32(var_0, 1i), _wgslsmith_mult_i32(~0i, max(-847i, -677i))));
    var var_2 = !(!select(vec4<bool>(any(vec3<bool>(true, true, true)), all(vec2<bool>(true, true)), -316f >= global3[_wgslsmith_index_u32(u_input.c.x, 32u)], any(vec2<bool>(false, false))), vec4<bool>(true, true, true, true), true));
    let var_3 = 468f;
    return -272f;
}

fn func_2() -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1121f, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(36721u, u_input.b), 32u)], 790f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-474f, global3[_wgslsmith_index_u32(u_input.a.x, 32u)], -981f) - vec3<f32>(730f, -582f, global3[_wgslsmith_index_u32(u_input.a.x, 32u)])))), global1[_wgslsmith_index_u32(u_input.a.x, 26u)] | global1[_wgslsmith_index_u32(5332u, 26u)], _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.b, 32u)] * global3[_wgslsmith_index_u32(u_input.b, 32u)]), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(abs(297f)))))), _wgslsmith_mult_u32(u_input.c.x, 1u), 710f, Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(u_input.c.x, 32u)])), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b, 32u)]), 1843f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(502f, -858f, -1019f))), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true))))), ~36181i, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3[_wgslsmith_index_u32(~u_input.a.x, 32u)], -1125f, _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(1u, 32u)])))))), any(vec3<bool>(true, !any(vec4<bool>(true, false, true, true)), 1262f >= _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(818u, 32u)]))));
    global2 = array<Struct_2, 23>();
    return abs(19914u);
}

fn func_1() -> f32 {
    var var_0 = vec3<bool>(true, _wgslsmith_div_f32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 25149u, 1u), vec3<u32>(u_input.c.x, 1u, 70604u)), vec3<u32>(36909u, u_input.c.x, 21194u)), 32u)], 102f) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), -374f)), true);
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 26u)], 59517i, _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(~func_2(), 26u)], _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 25853i), vec2<i32>(global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(u_input.c.x, 26u)]) << (vec2<u32>(50563u, 34301u) % vec2<u32>(32u)))), global1[_wgslsmith_index_u32(~u_input.c.x, 26u)]), vec4<i32>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, 1u) & u_input.c.x, 26u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 48844u), u_input.c.yz), abs(u_input.c.x)), ~_wgslsmith_div_vec2_u32(vec2<u32>(102278u, 17603u), vec2<u32>(u_input.a.x, 25533u))), 26u)], -global1[_wgslsmith_index_u32(~(u_input.c.x << (u_input.b % 32u)), 26u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.c.x & 77374u), 26u)]));
    var var_2 = 21949i;
    var_0 = vec3<bool>(all(!vec3<bool>(any(vec4<bool>(var_0.x, var_0.x, var_0.x, true)), all(vec4<bool>(true, true, var_0.x, var_0.x)), var_0.x)), false & !all(vec3<bool>(var_0.x, false, var_0.x)), true);
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1358f, -870f, 2476f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(0u, 32u)], 836f, global3[_wgslsmith_index_u32(u_input.a.x, 32u)]) - vec3<f32>(global3[_wgslsmith_index_u32(1u, 32u)], 408f, 143f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(135f, -559f, global3[_wgslsmith_index_u32(28025u, 32u)]))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3[_wgslsmith_index_u32(u_input.b, 32u)], global3[_wgslsmith_index_u32(u_input.b, 32u)], global3[_wgslsmith_index_u32(21774u, 32u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(u_input.b, 32u)], global3[_wgslsmith_index_u32(20040u, 32u)], global3[_wgslsmith_index_u32(u_input.c.x, 32u)])), var_0.x || var_0.x)))), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, abs(func_2()), max(min(~u_input.b, reverseBits(u_input.b)), u_input.a.x)), 26u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(u_input.b, 32u)], global3[_wgslsmith_index_u32(27857u, 32u)], -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1636f, -144f, global3[_wgslsmith_index_u32(u_input.c.x, 32u)])), !var_0.x)) + vec3<f32>(_wgslsmith_f_op_f32(570f + -638f), global3[_wgslsmith_index_u32(~u_input.b, 32u)], global3[_wgslsmith_index_u32(u_input.b, 32u)])) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(~62538u, 32u)], 473f, -912f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global3[_wgslsmith_index_u32(u_input.b, 32u)], global3[_wgslsmith_index_u32(u_input.a.x, 32u)], 1000f), vec3<f32>(-356f, -600f, global3[_wgslsmith_index_u32(u_input.c.x, 32u)]))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 32u)], 228f, 1026f)))))));
    return global3[_wgslsmith_index_u32(u_input.a.x, 32u)];
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<bool>) -> u32 {
    global1 = array<i32, 26>();
    global3 = array<f32, 32>();
    var var_0 = arg_2.a;
    global0 = arg_0.x;
    global1 = array<i32, 26>();
    return 4294967295u;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    var var_0 = -vec4<i32>(-7637i, -1i, i32(-1i) * -arg_1.b, _wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(5048i, -8072i, global1[_wgslsmith_index_u32(4294967295u, 26u)]), vec3<i32>(1i, 34119i, -7048i)), max(-2147483647i, arg_2.a.b)), abs(max(58148i, arg_1.b))));
    global1 = array<i32, 26>();
    var var_1 = ~firstTrailingBit(u_input.a);
    global2 = array<Struct_2, 23>();
    global2 = array<Struct_2, 23>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(788f)), _wgslsmith_f_op_f32(-arg_2.d.a.x), _wgslsmith_f_op_f32(-arg_2.c)))), arg_1.b >> (~(~var_1.x) % 32u), vec3<f32>(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0, -510f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.c)))), global3[_wgslsmith_index_u32(1u, 32u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(0i, global1[_wgslsmith_index_u32(reverseBits(u_input.b), 26u)], -2147483647i) & firstLeadingBit(reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(24849u, 26u)], global1[_wgslsmith_index_u32(u_input.c.x, 26u)], -9986i), vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(5632u, 26u)], global1[_wgslsmith_index_u32(1u, 26u)])))), firstLeadingBit(min(firstLeadingBit(abs(vec3<i32>(1i, 7473i, 0i))), ~(-vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 26u)], global1[_wgslsmith_index_u32(u_input.a.x, 26u)], -9237i)))));
    let var_1 = _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(-abs(vec3<i32>(2147483647i, -1i, 14564i)), vec3<i32>(-1i) * -vec3<i32>(-36811i, var_0.x, -1i)), max(firstTrailingBit(_wgslsmith_mod_vec3_i32(select(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 26u)], 2147483647i, global1[_wgslsmith_index_u32(u_input.b, 26u)]), vec3<i32>(var_0.x, -19391i, global1[_wgslsmith_index_u32(45910u, 26u)]), vec3<bool>(false, false, true)), vec3<i32>(global1[_wgslsmith_index_u32(65625u, 26u)], 0i, 11727i) >> (u_input.c.ywx % vec3<u32>(32u)))), -vec3<i32>(var_0.x, var_0.x, 0i) & vec3<i32>(var_0.x ^ -1i, var_0.x << (51882u % 32u), _wgslsmith_sub_i32(17467i, 42222i))));
    var var_2 = func_5(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(885f)), global3[_wgslsmith_index_u32(func_4(_wgslsmith_add_vec3_u32(u_input.c.yyw << (vec3<u32>(u_input.a.x, u_input.a.x, 16877u) % vec3<u32>(32u)), u_input.c.wxx), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(1u, 32u)], -1000f, global3[_wgslsmith_index_u32(0u, 32u)]) - vec3<f32>(1597f, global3[_wgslsmith_index_u32(4294967295u, 32u)], 737f)), -1i, _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 32u)], -1256f, global3[_wgslsmith_index_u32(4294967295u, 32u)]) + vec3<f32>(-198f, 980f, global3[_wgslsmith_index_u32(u_input.c.x, 32u)]))), Struct_2(Struct_1(vec3<f32>(global3[_wgslsmith_index_u32(1u, 32u)], -273f, 1198f), 24494i, vec3<f32>(global3[_wgslsmith_index_u32(u_input.b, 32u)], 427f, -822f)), ~u_input.b, _wgslsmith_f_op_f32(func_1()), Struct_1(vec3<f32>(-452f, 1108f, global3[_wgslsmith_index_u32(u_input.c.x, 32u)]), global1[_wgslsmith_index_u32(u_input.c.x, 26u)], vec3<f32>(global3[_wgslsmith_index_u32(21263u, 32u)], 663f, global3[_wgslsmith_index_u32(21242u, 32u)])), all(vec3<bool>(true, false, true))), vec4<bool>(any(vec4<bool>(true, true, true, false)), 1553f <= global3[_wgslsmith_index_u32(12818u, 32u)], true, true)), 32u)], ~(~global1[_wgslsmith_index_u32(u_input.a.x, 26u)]) != (i32(-1i) * -var_0.x))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(294f, -1800f, global3[_wgslsmith_index_u32(u_input.c.x, 32u)]))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-475f, 338f, global3[_wgslsmith_index_u32(0u, 32u)])))), _wgslsmith_mult_i32(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(28219u, u_input.a.x, 48526u), 26u)], var_0.x), max(var_1.x, -17643i) ^ global1[_wgslsmith_index_u32(firstLeadingBit(u_input.b), 26u)]), vec3<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b, 4294967295u, u_input.c.x), 32u)] + _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(0u, 32u)], global3[_wgslsmith_index_u32(u_input.c.x, 32u)], true))), -207f, global3[_wgslsmith_index_u32(countOneBits(abs(0u)), 32u)])), global2[_wgslsmith_index_u32(abs(~1u), 23u)]);
    let var_3 = Struct_1(vec3<f32>(-1026f, -695f, var_2.c.x), _wgslsmith_sub_i32(var_1.x, _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, global1[_wgslsmith_index_u32(u_input.a.x, 26u)], -78092i)), vec3<f32>(_wgslsmith_f_op_f32(step(549f, 1151f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1879f, global3[_wgslsmith_index_u32(0u, 32u)]) * 201f) * var_2.a.x), _wgslsmith_f_op_f32(-var_2.a.x)));
    let var_4 = true;
    var var_5 = global2[_wgslsmith_index_u32(func_4(u_input.c.zyw, var_3, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~(1u ^ (u_input.b << (13515u % 32u))), _wgslsmith_clamp_u32(~(~4294967295u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(21145u, u_input.a.x), min(45320u, u_input.a.x)), 1u)), 23u)], vec4<bool>(var_4, _wgslsmith_f_op_f32(1307f * _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 32u)])) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -707f) + var_2.a.x), _wgslsmith_dot_vec4_u32(u_input.c, reverseBits(u_input.c)) >= (~u_input.c.x | 61060u), all(select(vec4<bool>(var_4, var_4, true, var_4), select(vec4<bool>(var_4, true, true, true), vec4<bool>(true, var_4, true, var_4), vec4<bool>(true, var_4, var_4, var_4)), !vec4<bool>(var_4, true, true, true))))), 23u)];
    var var_6 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_2.c + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(662f, var_3.a.x, -497f))) + _wgslsmith_f_op_vec3_f32(-var_5.d.a))))), 16664i, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_3.c, var_3.c) + vec3<f32>(-1246f, _wgslsmith_f_op_f32(abs(-412f)), var_2.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.b, _wgslsmith_div_f32(-907f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a.x, 32u)] - var_2.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global3[_wgslsmith_index_u32(var_5.b, 32u)], 435f, -356f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_6.c.x, global3[_wgslsmith_index_u32(25161u, 32u)], -1301f, 1036f))) + vec4<f32>(_wgslsmith_f_op_f32(floor(var_3.a.x)), 1f, 447f, _wgslsmith_f_op_f32(342f + var_3.a.x)))), ~vec3<i32>(~var_5.d.b, abs(4329i), var_2.b) ^ var_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-234f * var_3.c.x) + _wgslsmith_f_op_f32(abs(var_3.c.x))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1848f))))))));
}

