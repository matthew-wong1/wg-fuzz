struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<i32>,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17>;

var<private> global1: array<f32, 17> = array<f32, 17>(-187f, 186f, -135f, 1195f, -544f, -1361f, -317f, -870f, 2846f, 117f, 1000f, -595f, -479f, -794f, 434f, -1083f, 1755f);

var<private> global2: array<vec4<u32>, 29>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: bool) -> bool {
    global2 = array<vec4<u32>, 29>();
    var var_0 = 989f;
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -145f);
    global0 = array<bool, 17>();
    var var_1 = _wgslsmith_sub_i32(~2147483647i, _wgslsmith_mod_i32(_wgslsmith_add_i32(1i, _wgslsmith_add_i32(min(u_input.d.x, -1i), _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(u_input.c, -28570i, u_input.c)))), u_input.d.x >> (~u_input.e % 32u)));
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> i32 {
    global2 = array<vec4<u32>, 29>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.e, 1744f, arg_1.d.x, arg_1.d.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(arg_2, 17u)], arg_1.d.x, arg_0.d.x, arg_1.e) * vec4<f32>(arg_0.d.x, arg_0.d.x, arg_0.e, arg_0.d.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, global1[_wgslsmith_index_u32(u_input.b, 17u)], arg_0.d.x, global1[_wgslsmith_index_u32(u_input.a.x, 17u)]))), all(!select(vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 17u)], arg_0.b), vec3<bool>(true, global0[_wgslsmith_index_u32(15538u, 17u)], false), arg_1.a)))) * vec4<f32>(1055f, _wgslsmith_f_op_f32(abs(-2100f)), _wgslsmith_f_op_f32(f32(-1f) * -403f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(arg_2, 17u)])))))));
    return 0i | firstTrailingBit(~(2147483647i << (u_input.e % 32u)));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_div_i32(func_4(arg_1, Struct_1(func_3(vec3<bool>(false, true, true), _wgslsmith_f_op_vec2_f32(arg_1.d.zz * vec2<f32>(global1[_wgslsmith_index_u32(arg_0.x, 17u)], -995f)), arg_1.e <= global1[_wgslsmith_index_u32(0u, 17u)]), all(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 17u)], global0[_wgslsmith_index_u32(66837u, 17u)], false, global0[_wgslsmith_index_u32(4294967295u, 17u)]), vec4<bool>(false, false, arg_1.b, false), vec4<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 17u)], false))), (arg_1.c >> (vec4<u32>(4294967295u, arg_0.x, u_input.a.x, 15662u) % vec4<u32>(32u))) ^ vec4<i32>(-2147483647i, u_input.c, u_input.c, 0i), vec3<f32>(_wgslsmith_f_op_f32(min(443f, 1000f)), _wgslsmith_f_op_f32(sign(-106f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.e, 17u)])), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.d.x), -1000f))), arg_0.x), u_input.d.x);
    var var_1 = _wgslsmith_div_f32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_mult_u32(countOneBits(u_input.e), 53554u), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.xz, vec2<u32>(u_input.b, u_input.b)), _wgslsmith_add_vec2_u32(vec2<u32>(42794u, 71309u), u_input.a.xw)) & ~(~1u)), 17u)], 1000f);
    var_1 = 2342f;
    var var_2 = countOneBits(u_input.a.x << (~u_input.a.x % 32u));
    var var_3 = firstTrailingBit(arg_1.c.x);
    return arg_1;
}

fn func_5(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = arg_2;
    global0 = array<bool, 17>();
    let var_1 = u_input.b;
    let var_2 = -(~_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(arg_1, vec2<i32>(-45129i, 2147483647i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, var_0.c.x), vec2<i32>(arg_0, 0i), vec2<i32>(26229i, -16233i))), ~var_0.c.xx, func_2(vec3<u32>(1u, u_input.a.x, 78870u), Struct_1(global0[_wgslsmith_index_u32(35125u, 17u)], false, vec4<i32>(2147483647i, 14072i, var_0.c.x, u_input.c), arg_2.d, var_0.e)).c.zz));
    var_0 = Struct_1(false, select(arg_2.a, !any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(min(arg_3.x, arg_2.e)) > var_0.e), func_2(vec3<u32>(0u ^ (534u >> (var_1 % 32u)), _wgslsmith_dot_vec2_u32(u_input.a.xw, u_input.a.wx), _wgslsmith_div_u32(1u & u_input.b, 1u << (var_1 % 32u))), Struct_1(false, global0[_wgslsmith_index_u32(var_1, 17u)], vec4<i32>(arg_2.c.x, arg_2.c.x, firstLeadingBit(20552i), -var_2.x), vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 17u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 17u)] - -1499f), _wgslsmith_f_op_f32(f32(-1f) * -712f)), -1411f)).c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-2205f + -2710f), -1008f, arg_2.d.x))), arg_3.x);
    return arg_2;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<bool>) -> bool {
    var var_0 = _wgslsmith_div_f32(-1000f, 1000f);
    var var_1 = u_input.d;
    var_1 = u_input.d;
    let var_2 = 0i;
    let var_3 = vec3<f32>(686f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(-2147483647i, vec2<i32>(0i, u_input.d.x), arg_0, arg_0.d).e - _wgslsmith_f_op_f32(select(130f, arg_0.e, global0[_wgslsmith_index_u32(u_input.e, 17u)]))))), global1[_wgslsmith_index_u32(firstTrailingBit(~u_input.e), 17u)]);
    return (!arg_1.x && any(arg_1)) & !global0[_wgslsmith_index_u32(1u, 17u)];
}

fn func_1() -> f32 {
    let var_0 = u_input.e;
    global0 = array<bool, 17>();
    global0 = array<bool, 17>();
    var var_1 = Struct_1(!global0[_wgslsmith_index_u32(~u_input.a.x, 17u)] == global0[_wgslsmith_index_u32(u_input.e, 17u)], func_6(func_5(u_input.c ^ ~(-1i), ~(-vec2<i32>(u_input.d.x, u_input.c)), func_2(vec3<u32>(1u, 4294967295u, var_0), Struct_1(false, false, vec4<i32>(17069i, 1i, -1i, -43530i), vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 17u)], global1[_wgslsmith_index_u32(0u, 17u)], -580f), global1[_wgslsmith_index_u32(u_input.a.x, 17u)])), vec3<f32>(global1[_wgslsmith_index_u32(~4294967295u, 17u)], _wgslsmith_f_op_f32(select(-632f, -1040f, true)), _wgslsmith_div_f32(-2270f, 1922f))), vec3<bool>(any(select(vec3<bool>(global0[_wgslsmith_index_u32(107087u, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(17724u, 17u)]), vec3<bool>(global0[_wgslsmith_index_u32(27682u, 17u)], global0[_wgslsmith_index_u32(42693u, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.e, 17u)], false, false))), !(!global0[_wgslsmith_index_u32(u_input.b, 17u)]), true)), -vec4<i32>(u_input.d.x, _wgslsmith_mult_i32(u_input.d.x, _wgslsmith_sub_i32(u_input.d.x, 38225i)), ~(u_input.d.x & u_input.c), 30066i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(u_input.b, 17u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(var_0, 17u)], global1[_wgslsmith_index_u32(u_input.a.x, 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(var_0, 0u), 17u)]) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-363f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(31127u, 17u)])), global1[_wgslsmith_index_u32(~(var_0 >> (u_input.e % 32u)), 17u)]))));
    var var_2 = select(vec2<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_0, 1u, var_0), global2[_wgslsmith_index_u32(reverseBits(u_input.e), 29u)]), 17u)] && any(!vec2<bool>(var_1.b, global0[_wgslsmith_index_u32(var_0, 17u)]))), !vec2<bool>(false, -6279i > firstTrailingBit(var_1.c.x)), !select(vec2<bool>(true || global0[_wgslsmith_index_u32(33857u, 17u)], true), vec2<bool>(any(vec2<bool>(true, global0[_wgslsmith_index_u32(var_0, 17u)])), u_input.c > -8055i), !(!var_1.b)));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_1.e, _wgslsmith_f_op_f32(sign(func_2(u_input.a.yzy, Struct_1(false, var_2.x, var_1.c, var_1.d, -794f)).e)), func_3(vec3<bool>(true, global0[_wgslsmith_index_u32(66156u, 17u)], var_2.x), _wgslsmith_f_op_vec2_f32(var_1.d.zx - vec2<f32>(-897f, global1[_wgslsmith_index_u32(u_input.e, 17u)])), any(vec3<bool>(var_1.b, false, false)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true, all(vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, u_input.e) | (u_input.b & 4294967295u), 17u)], false, all(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 17u)], false)), false)), firstLeadingBit(_wgslsmith_add_vec4_i32(max(vec4<i32>(u_input.c, 1i, u_input.d.x, 0i), vec4<i32>(1i, u_input.d.x, u_input.d.x, 8624i)), max(vec4<i32>(0i, u_input.d.x, u_input.d.x, -2147483647i), vec4<i32>(40257i, -2097i, u_input.c, u_input.c)))) | vec4<i32>(1i, u_input.d.x, _wgslsmith_sub_i32(u_input.d.x, u_input.d.x & -29122i), _wgslsmith_mult_i32(u_input.d.x, _wgslsmith_dot_vec2_i32(u_input.d.xx, vec2<i32>(-2147483647i, 1i)))), vec3<f32>(-1029f, -519f, _wgslsmith_f_op_f32(func_1())), -232f);
    global1 = array<f32, 17>();
    global1 = array<f32, 17>();
    let var_1 = -40200i;
    let var_2 = vec4<u32>(reverseBits(abs(_wgslsmith_div_u32(u_input.e, _wgslsmith_dot_vec2_u32(u_input.a.yw, vec2<u32>(4294967295u, u_input.a.x))))), countOneBits(select(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 92584u), u_input.a.zy), ~u_input.a.x, false)), ~1u, u_input.b);
    var var_3 = vec4<bool>(var_0.b, true, func_2(~(~u_input.a.yzw), var_0).d.x >= -1785f, all(select(!vec3<bool>(global0[_wgslsmith_index_u32(var_2.x, 17u)], var_0.a, false), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.e, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(2365u, 17u)]), !vec3<bool>(var_0.a, true, false), select(vec3<bool>(false, false, var_0.b), vec3<bool>(false, false, true), vec3<bool>(false, var_0.a, false))), all(!vec4<bool>(global0[_wgslsmith_index_u32(61646u, 17u)], false, false, true)))));
    let var_4 = var_0.b;
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-646f, _wgslsmith_f_op_f32(abs(func_2(u_input.a.yww, var_0).e))), _wgslsmith_f_op_f32(f32(-1f) * -527f))) * _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(9680u, 94861u) | vec2<u32>(24736u, var_2.x), u_input.a.wz), 17u)])));
    var var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(4053i, vec4<u32>(_wgslsmith_mod_u32(4294967295u, firstLeadingBit(4294967295u) | ~var_2.x), _wgslsmith_sub_u32(15355u, 1u), 45732u, 92303u << (abs(var_2.x << (19355u % 32u)) % 32u)));
}

