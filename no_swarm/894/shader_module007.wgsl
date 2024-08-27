struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: vec2<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 31> = array<f32, 31>(1294f, 677f, 1290f, -1354f, -1000f, -491f, 328f, 140f, 1756f, -719f, -367f, -331f, 1516f, -133f, -389f, 736f, -542f, -230f, 471f, 1633f, 1471f, -234f, 2046f, -595f, 1620f, 1000f, -403f, 1000f, -1314f, 1589f, 181f);

var<private> global2: vec4<bool> = vec4<bool>(false, false, true, false);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(min(-295f, -2794f)), global0.b, 2979u, vec2<bool>(global0.d.x, any(select(select(arg_3.d, arg_3.d, global0.d), vec2<bool>(global0.d.x, false), all(global2.yxy)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -362f), arg_3.a, _wgslsmith_f_op_f32(abs(-968f))))));
    global0 = arg_3;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1767f, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(2185u, 1u), 31u)]) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_3.e.x)) - _wgslsmith_f_op_f32(var_0.e.x * -1315f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(817f * arg_3.e.x), -2167f)))), 1i, ~(~(~(~global0.c))), global0.d, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.a + arg_0.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(288f, arg_3.a)) + global0.a), var_0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.e * arg_0.e))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1034f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x)))))), 1105i, 1u, !(!select(select(global0.d, vec2<bool>(arg_3.d.x, false), vec2<bool>(true, false)), select(vec2<bool>(arg_0.d.x, false), vec2<bool>(var_1.d.x, global2.x), vec2<bool>(var_1.d.x, true)), all(vec4<bool>(false, var_0.d.x, var_1.d.x, false)))), _wgslsmith_f_op_vec3_f32(-global0.e));
    var var_3 = arg_0;
    return var_3.e.yx;
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    let var_0 = min(-vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(global0.b, -2396i), select(-1i, u_input.b, true)), 1i), vec2<i32>(global0.b, ~2147483647i));
    var var_1 = -_wgslsmith_sub_i32(var_0.x, 32646i) >= ~(-8087i);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global0.e.xx + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(arg_0.x, u_input.b, 1u, global2.wz, global0.e), global0.e.zy, u_input.c.x, Struct_1(-548f, global0.b, u_input.c.x, vec2<bool>(false, true), global0.e))))))) + global0.e.zx);
    let var_3 = 2147483647i;
    var var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(reverseBits(~(~4294967295u)), 31u)]), any(vec4<bool>(!all(vec4<bool>(global2.x, true, true, global0.d.x)), global2.x, global0.d.x, global2.x && false))));
    return var_0.x ^ var_0.x;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> f32 {
    var var_0 = -_wgslsmith_sub_vec2_i32(select(~vec2<i32>(global0.b, -1i), vec2<i32>(-2147483647i, firstLeadingBit(2147483647i)), -1000f > _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.c, 31u)])), _wgslsmith_clamp_vec2_i32(vec2<i32>(-37953i, global0.b) ^ -vec2<i32>(0i, global0.b), ~vec2<i32>(u_input.b, u_input.b), vec2<i32>(1i, 2147483647i)));
    var var_1 = select(abs(_wgslsmith_dot_vec2_i32(~vec2<i32>(var_0.x, 18428i) >> (abs(vec2<u32>(u_input.c.x, u_input.c.x)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(-vec2<i32>(global0.b, global0.b), reverseBits(vec2<i32>(u_input.b, u_input.b))))), _wgslsmith_add_i32(select(_wgslsmith_clamp_i32(2147483647i, -44029i, global0.b) ^ u_input.b, u_input.b >> (_wgslsmith_clamp_u32(u_input.d.x, u_input.c.x, u_input.c.x) % 32u), (global0.b >> (u_input.c.x % 32u)) < ~(-2147483647i)), 1i), all(select(global0.d, select(!vec2<bool>(global2.x, true), select(vec2<bool>(arg_1.d.x, arg_1.d.x), vec2<bool>(global2.x, true), global0.d.x), global0.d), global2.zy)));
    var_1 = 20496i;
    let var_2 = global2.wwz;
    let var_3 = Struct_1(global0.a, arg_1.b << (17217u % 32u), countOneBits(48529u), vec2<bool>(var_2.x, arg_1.d.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.e)))) + global0.e));
    return _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.c, u_input.c.x, var_3.c, 4294967295u), vec4<u32>(u_input.c.x, arg_1.c, 4294967295u, 10723u)) ^ 11315u, u_input.c.x), 31u)], 169f));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> u32 {
    var var_0 = global0.c;
    global0 = arg_2;
    global1 = array<f32, 31>();
    global0 = Struct_1(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-208f + arg_2.e.x), Struct_1(-174f, func_2(vec2<f32>(global0.a, global1[_wgslsmith_index_u32(arg_2.c, 31u)])), reverseBits(~0u), global0.d, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-834f, global1[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(global0.c, 31u)])), _wgslsmith_div_vec3_f32(arg_2.e, vec3<f32>(arg_2.e.x, 726f, global1[_wgslsmith_index_u32(1u, 31u)])), !arg_0))))), abs(-2147483647i), arg_2.c, !select(vec2<bool>(true, -152f != arg_2.a), global2.xx, !select(vec2<bool>(true, global2.x), global2.yw, arg_2.d)), _wgslsmith_f_op_vec3_f32(-arg_2.e));
    let var_1 = _wgslsmith_mult_u32(~arg_2.c, 1u);
    return _wgslsmith_div_u32(_wgslsmith_clamp_u32(firstLeadingBit(1u) << (var_1 % 32u), _wgslsmith_clamp_u32(~(~1u), firstLeadingBit(~0u), countOneBits(var_1 ^ global0.c)), var_1), ~(~abs(4294967295u)) ^ arg_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1181f, _wgslsmith_f_op_f32(-972f - -1881f)) - 1654f)) * -1846f);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(max(10965u, u_input.d.x), func_1(global2.x, global0.b, Struct_1(global0.a, 0i, 28685u, global0.d, vec3<f32>(global0.a, global0.a, global0.a)))), 31u)] * global1[_wgslsmith_index_u32(14931u, 31u)])), 8129i, max(u_input.d.x, max(51029u, reverseBits(global0.c))), select(!global2.xx, select(select(vec2<bool>(true, true), select(vec2<bool>(false, global0.d.x), vec2<bool>(global0.d.x, true), true), vec2<bool>(false, global0.d.x)), global2.xx, global0.d), min(16850i, global0.b & -5850i) > 16777i), global0.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(~global0.c, countOneBits(func_1(true, u_input.b, Struct_1(global1[_wgslsmith_index_u32(u_input.c.x, 31u)], -1i, u_input.d.x, vec2<bool>(var_1.d.x, true), var_1.e))), 0u), 4294967295u, ~(~_wgslsmith_add_vec4_u32(vec4<u32>(11505u, 0u, 4294967295u, global0.c), vec4<u32>(4294967295u, var_1.c, global0.c, global0.c)) & _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(14915u, u_input.c.x, u_input.d.x, global0.c)), min(vec4<u32>(global0.c, global0.c, 0u, 11513u), vec4<u32>(global0.c, var_1.c, u_input.c.x, global0.c)))));
}

