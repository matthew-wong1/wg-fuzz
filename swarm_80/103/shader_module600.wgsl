struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(298f, -763f, -994f, 1498f, 403f, -423f, 690f, -517f, -1567f, -2332f, -722f, 1000f, 370f, -798f, -181f, -128f, 1590f, 514f, 1614f, -505f, 492f, -380f, -1517f, -1897f, -643f, -419f, -1973f, -1221f, 446f, 1537f, -721f, -1439f);

var<private> global1: bool = false;

var<private> global2: f32 = 508f;

var<private> global3: array<bool, 20> = array<bool, 20>(false, false, false, false, false, false, false, true, false, false, false, false, true, true, false, true, true, false, false, true);

var<private> global4: u32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: Struct_3) -> Struct_2 {
    var var_0 = vec4<i32>(u_input.a.x, u_input.a.x, 23338i, _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(28815i, -2147483647i), _wgslsmith_mod_i32(u_input.a.x, -9687i)), 1i)) >> (vec4<u32>(~arg_0, _wgslsmith_mult_u32(56928u, _wgslsmith_mult_u32(arg_0, ~4294967295u)), abs(arg_2.a.a.x), ~54670u) % vec4<u32>(32u));
    global0 = array<f32, 32>();
    let var_1 = vec4<u32>(_wgslsmith_clamp_u32(arg_2.b.b.a.x, _wgslsmith_mod_u32(arg_2.c.a.x, 32288u), 4294967295u), 0u, arg_0, 0u);
    var_0 = vec4<i32>(u_input.a.x, u_input.a.x, 9643i >> (~(~_wgslsmith_dot_vec2_u32(arg_2.b.b.a.yz, vec2<u32>(var_1.x, 4294967295u))) % 32u), reverseBits(-1i ^ u_input.a.x));
    var var_2 = 0i;
    return Struct_2(Struct_1(vec4<u32>(var_1.x, arg_2.a.a.x << (arg_2.b.b.a.x % 32u), 1u >> (var_1.x % 32u), ~var_1.x) | (~var_1 >> (vec4<u32>(3621u, 0u, arg_2.c.a.x, var_1.x) % vec4<u32>(32u)))), arg_2.c);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: u32, arg_3: bool) -> u32 {
    let var_0 = !select(!(!(!vec2<bool>(global3[_wgslsmith_index_u32(arg_2, 20u)], false))), vec2<bool>(true, true), global3[_wgslsmith_index_u32(38952u, 20u)]);
    let var_1 = 55909i;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-698f + _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(1u, 32u)])) - _wgslsmith_f_op_f32(f32(-1f) * -527f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(7662u, 32u)]))))), arg_1, -1274f));
    global4 = arg_2;
    let var_3 = Struct_3(arg_0.a, Struct_2(Struct_1(arg_0.a.a), Struct_1(func_2(0u, reverseBits(u_input.a.x), Struct_3(arg_0.a, Struct_2(Struct_1(arg_0.b.a), Struct_1(vec4<u32>(3066u, arg_2, arg_0.b.a.x, arg_2))), Struct_1(arg_0.a.a))).b.a)), Struct_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(~arg_0.b.a, ~vec4<u32>(4294967295u, arg_2, arg_0.b.a.x, 4294967295u)), vec4<u32>(1u, arg_0.a.a.x, arg_0.a.a.x, arg_2) >> (vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(19182u, ~4294967295u, 37553u << (arg_2 % 32u), arg_0.a.a.x))));
    return ~(~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.b.a.x, arg_0.b.a.x), arg_0.b.a.xz)));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<i32>) -> vec2<i32> {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2310f, -1459f))), -669f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 32u)])), -350f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-390f)))));
    let var_0 = ~(-vec2<i32>(~countOneBits(-10869i), i32(-1i) * -22702i));
    global4 = ~((~(~4294967295u) >> (func_3(func_2(1u, -2147483647i, Struct_3(Struct_1(vec4<u32>(41968u, 6635u, 124245u, 247u)), Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, 16491u, 4294967295u)), Struct_1(vec4<u32>(37950u, 50300u, 2373u, 884u))), Struct_1(vec4<u32>(0u, 115044u, 0u, 5651u)))), _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(4294967295u, 32u)], 510f, false)), ~0u, !arg_0.x) % 32u)) | 18245u);
    global3 = array<bool, 20>();
    let var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(40450u, ~(~4294967295u), 73003u, 1u), abs(vec4<u32>(~22220u, _wgslsmith_sub_u32(~0u, _wgslsmith_mod_u32(0u, 15340u)), 0u, 23140u)));
    return select(vec2<i32>(2147483647i, var_0.x), ~var_0, !((!arg_0.x & true) & (_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a.x, -52284i), arg_1) > arg_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(firstLeadingBit(vec4<u32>(1u, abs(1u), 1u, 1u))) >> (~(~vec4<u32>(~55781u, ~4294967295u, min(2734u, 21473u), firstTrailingBit(30382u))) % vec4<u32>(32u));
    var var_1 = !any(select(select(vec2<bool>(false, false), vec2<bool>(false, global3[_wgslsmith_index_u32(var_0.x, 20u)]), vec2<bool>(true, true)), select(select(vec2<bool>(false, global3[_wgslsmith_index_u32(var_0.x, 20u)]), vec2<bool>(global3[_wgslsmith_index_u32(var_0.x, 20u)], true), global3[_wgslsmith_index_u32(4294967295u, 20u)]), !vec2<bool>(global3[_wgslsmith_index_u32(2243u, 20u)], global3[_wgslsmith_index_u32(var_0.x, 20u)]), !vec2<bool>(global3[_wgslsmith_index_u32(var_0.x, 20u)], false)), !vec2<bool>(global3[_wgslsmith_index_u32(47540u, 20u)], global3[_wgslsmith_index_u32(var_0.x, 20u)])));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-2480f, -143f), vec2<f32>(206f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1074f * 207f) + _wgslsmith_div_f32(-947f, global0[_wgslsmith_index_u32(var_0.x, 32u)])))));
    let var_3 = _wgslsmith_clamp_vec2_u32(var_0.zy >> (_wgslsmith_sub_vec2_u32(~var_0.yz, ~countOneBits(vec2<u32>(17786u, 0u))) % vec2<u32>(32u)), ~vec2<u32>(4294967295u, ~var_0.x), ~(~select(var_0.xy, vec2<u32>(4294967295u, 8881u), select(vec2<bool>(false, global3[_wgslsmith_index_u32(var_0.x, 20u)]), vec2<bool>(false, true), global3[_wgslsmith_index_u32(35616u, 20u)]))));
    var var_4 = _wgslsmith_dot_vec2_i32(u_input.a.yz, select(-func_1(vec2<bool>(true, false), u_input.a) & _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a.zz, vec2<i32>(u_input.a.x, 15947i)), vec2<i32>(u_input.a.x, u_input.a.x)), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-2147483647i, -1465i), 1i), ~u_input.a.zx), !global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_0, vec4<u32>(var_3.x, 63690u, 29015u, 1u)), 20u)]));
    let var_5 = !(!select(!select(vec2<bool>(global3[_wgslsmith_index_u32(var_3.x, 20u)], false), vec2<bool>(global3[_wgslsmith_index_u32(var_3.x, 20u)], false), global3[_wgslsmith_index_u32(24502u, 20u)]), vec2<bool>(any(vec4<bool>(global3[_wgslsmith_index_u32(0u, 20u)], global3[_wgslsmith_index_u32(4294967295u, 20u)], global3[_wgslsmith_index_u32(var_3.x, 20u)], global3[_wgslsmith_index_u32(4294967295u, 20u)])), all(vec4<bool>(global3[_wgslsmith_index_u32(var_3.x, 20u)], global3[_wgslsmith_index_u32(var_0.x, 20u)], global3[_wgslsmith_index_u32(var_0.x, 20u)], global3[_wgslsmith_index_u32(var_0.x, 20u)]))), select(!vec2<bool>(true, global3[_wgslsmith_index_u32(0u, 20u)]), vec2<bool>(true, true), select(vec2<bool>(false, global3[_wgslsmith_index_u32(var_3.x, 20u)]), vec2<bool>(global3[_wgslsmith_index_u32(var_0.x, 20u)], global3[_wgslsmith_index_u32(var_0.x, 20u)]), global3[_wgslsmith_index_u32(0u, 20u)]))));
    var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.x, 32u)] + -107f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1956f, var_2.x), vec2<f32>(global0[_wgslsmith_index_u32(var_3.x, 32u)], var_2.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) + vec2<f32>(var_2.x, global0[_wgslsmith_index_u32(var_0.x, 32u)]))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(509u, 32u)], 556f))))));
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-680f, var_2.x) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(783f, 1023f) - vec2<f32>(var_2.x, global0[_wgslsmith_index_u32(49720u, 32u)])))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 32u)] + -1296f), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_0.x, 32u)], 434f)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.x, var_2.x), vec2<f32>(var_2.x, var_2.x), vec2<bool>(var_5.x, false)))))))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-663f, -1000f))) - _wgslsmith_div_vec2_f32(vec2<f32>(var_2.x, 2074f), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(1u, 32u)], 1004f) - vec2<f32>(-691f, global0[_wgslsmith_index_u32(1u, 32u)])))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_0.x), var_3.x, _wgslsmith_sub_i32(~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, 30190i)), ~u_input.a.x), max(u_input.a.x, ~u_input.a.x) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(1042i, -2147483647i, u_input.a.x, 21249i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 32u)] + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_3.x, 32u)] * global0[_wgslsmith_index_u32(1u, 32u)]))), global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(~29079u, max(4294967295u, var_0.x))), 32u)]), var_0.x);
}

