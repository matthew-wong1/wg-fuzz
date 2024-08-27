struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2;

var<private> global2: array<f32, 6>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: vec3<f32>) -> vec2<i32> {
    global0 = Struct_2(global0.a, Struct_1(u_input.d.xx, vec4<bool>(global0.c.b.x, !(global1.c.b.x & true), (global1.b.a.x | -1i) >= max(61333i, u_input.d.x), true), ~select(global1.c.c, vec3<i32>(0i, 0i, global0.c.c.x), false)), global1.c);
    var var_0 = Struct_1(abs(global0.b.c.xz), vec4<bool>(!(!global0.b.b.x), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 0u, u_input.a.x), vec4<u32>(global1.a, 55770u, 65631u, u_input.b.x)), reverseBits(global1.a)) > 35930u, !(arg_0 || true), !((u_input.b.x > 1529u) == any(vec4<bool>(true, false, true, arg_0)))), ~global0.b.c);
    var var_1 = select(vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -14212i, global1.c.a.x, var_0.a.x), vec4<i32>(global0.b.a.x, var_0.a.x, global0.c.a.x, u_input.c)) & _wgslsmith_div_i32(0i, u_input.c)), i32(-1i) * -6333i, u_input.c), global1.b.c ^ u_input.d.yxy, false);
    var var_2 = false;
    let var_3 = 39485u;
    return -_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(3239i, 20165i), -8552i) & abs(~var_0.a), -global0.c.a);
}

fn func_2(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = any(select(global0.b.b, vec4<bool>(false, global1.b.b.x, true, global0.b.b.x), select(vec4<bool>(!global0.b.b.x, global1.c.b.x, true, true), !global0.c.b, select(vec4<bool>(global0.c.b.x, false, global1.c.b.x, false), vec4<bool>(global0.b.b.x, global0.c.b.x, false, global1.b.b.x), global1.b.b))));
    let var_1 = vec3<bool>(!(!(!all(global0.b.b.xzx))), false, true);
    var var_2 = 1u;
    let var_3 = Struct_1(func_3(global1.b.b.x, vec3<f32>(_wgslsmith_f_op_f32(arg_0.x * -111f), -1366f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1598f - -130f) * _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(27615u, 6u)], global2[_wgslsmith_index_u32(0u, 6u)], arg_0.x) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(157f, 1625f, global2[_wgslsmith_index_u32(4294967295u, 6u)]), arg_0.xxx))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-624f, 505f, -369f)), arg_0.xzy)))), global1.c.b, global0.c.c);
    var var_4 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-196f, 338f, -743f)));
    return Struct_2(_wgslsmith_dot_vec4_u32(~(~u_input.b), select(abs(u_input.b) << (reverseBits(u_input.b) % vec4<u32>(32u)), ~(~u_input.b), var_3.b)), Struct_1(vec2<i32>(abs(_wgslsmith_mult_i32(u_input.c, u_input.d.x)), 17492i), global1.b.b, countOneBits(global0.c.c & reverseBits(vec3<i32>(0i, u_input.c, global0.c.c.x)))), global1.b);
}

fn func_1() -> Struct_2 {
    var var_0 = global1.c;
    global0 = func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2[_wgslsmith_index_u32(global1.a, 6u)], global2[_wgslsmith_index_u32(29143u, 6u)], global2[_wgslsmith_index_u32(4294967295u, 6u)], global2[_wgslsmith_index_u32(1u, 6u)]), vec4<f32>(502f, 819f, global2[_wgslsmith_index_u32(u_input.a.x, 6u)], global2[_wgslsmith_index_u32(global1.a, 6u)])))) - vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(35044u, 6u)]), global2[_wgslsmith_index_u32(~u_input.b.x, 6u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 6u)]), _wgslsmith_f_op_f32(f32(-1f) * -273f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1366f, -702f, global2[_wgslsmith_index_u32(4294967295u, 6u)], -879f)), vec4<f32>(934f, global2[_wgslsmith_index_u32(global1.a, 6u)], global2[_wgslsmith_index_u32(60948u, 6u)], 173f), global0.c.b)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1114f, global2[_wgslsmith_index_u32(global0.a, 6u)], -1173f, 769f) - vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 6u)], -1000f, 267f, -649f)))), vec4<bool>(true, true, false, true))));
    var var_1 = func_2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1105f), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(19639u, 6u)] * 1313f)), _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(global0.a ^ global1.a, 6u)], -844f, var_0.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(1u, 6u)], -1091f, -1590f, global2[_wgslsmith_index_u32(0u, 6u)]) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 6u)], -1685f, global2[_wgslsmith_index_u32(0u, 6u)], -718f))))))).c;
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 6u)]), _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(u_input.a.x, 6u)])), _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(global1.a, 6u)])), _wgslsmith_div_f32(891f, 1558f)) - vec4<f32>(-1311f, _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(u_input.a.x, 6u)])), global2[_wgslsmith_index_u32(global0.a, 6u)], _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(1u, 6u)], global2[_wgslsmith_index_u32(u_input.a.x, 6u)], global1.c.b.x))))));
    let var_3 = any(var_2.c.b);
    return func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-817f, 453f, global2[_wgslsmith_index_u32(22045u, 6u)], -227f)), vec4<f32>(global2[_wgslsmith_index_u32(13475u, 6u)], global2[_wgslsmith_index_u32(global0.a, 6u)], 741f, 543f), any(var_1.b))))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0.a, 6u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_2.a, 6u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(55445u, 6u)]), 163f), vec4<f32>(_wgslsmith_f_op_f32(sign(828f)), _wgslsmith_f_op_f32(1649f * -791f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.a, 6u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.a, 6u)]))))));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    var var_0 = u_input.a.x;
    var_0 = 0u;
    let var_1 = (15261i << (arg_2.a % 32u)) & reverseBits(0i ^ (_wgslsmith_mod_i32(u_input.d.x, global1.c.c.x) << (_wgslsmith_add_u32(43074u, arg_3.a) % 32u)));
    global0 = func_1();
    var var_2 = Struct_2(~(~min(55928u, global1.a) | 21839u), arg_1.b, arg_2.c);
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(_wgslsmith_dot_vec3_i32(~select(-global1.b.c, -u_input.d.xzx, global1.c.b.x), vec3<i32>(~global0.c.a.x, _wgslsmith_dot_vec3_i32(global0.b.c, global1.c.c), -6480i) ^ max(_wgslsmith_mod_vec3_i32(global0.b.c, u_input.d.ywz), ~vec3<i32>(global1.b.a.x, 14496i, global0.c.c.x))), func_1(), Struct_2(30065u, Struct_1(global1.b.c.yz, !(!global0.c.b), global0.b.c), func_1().c), Struct_2(~4294967295u, global0.c, func_1().b));
    let var_0 = ~(~_wgslsmith_sub_u32(global1.a, 1u));
    global1 = Struct_2(u_input.b.x << (13105u % 32u), global0.b, global0.b);
    var var_1 = !global0.c.b.x;
    var var_2 = firstTrailingBit(~_wgslsmith_div_vec3_u32(~(~u_input.b.zyz), u_input.a));
    var var_3 = Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(select(vec2<i32>(15815i, global1.c.c.x), global1.b.a, global1.b.b.x), global0.b.c.xx), global0.b.a), !vec4<bool>(false, !global0.c.b.x, true, reverseBits(30505u) == ~global0.a), _wgslsmith_clamp_vec3_i32(abs(-max(global0.c.c, u_input.d.zxx)), abs(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(935f, global2[_wgslsmith_index_u32(1u, 6u)], global2[_wgslsmith_index_u32(var_2.x, 6u)], 101f))).b.c), _wgslsmith_sub_vec3_i32(firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(-11044i, global0.c.c.x, u_input.c), vec3<i32>(-2147483647i, global1.c.c.x, global1.b.a.x))), u_input.d.yzw)));
    global1 = Struct_2(reverseBits(select(4294967295u, ~var_0, true)) >> (~global0.a % 32u), global1.b, func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, global2[_wgslsmith_index_u32(global0.a, 6u)], -1415f, -202f), vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 6u)], global2[_wgslsmith_index_u32(0u, 6u)], -161f, global2[_wgslsmith_index_u32(2867u, 6u)])) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-552f, global2[_wgslsmith_index_u32(global1.a, 6u)], -260f, global2[_wgslsmith_index_u32(var_2.x, 6u)])))))).c);
    var_3 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.d.ww, firstLeadingBit(global1.b.c.yz)));
}

