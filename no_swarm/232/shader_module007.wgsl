struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<u32, 15> = array<u32, 15>(49710u, 1u, 4294967295u, 0u, 9866u, 25607u, 11870u, 0u, 27004u, 19829u, 87273u, 4294967295u, 0u, 64386u, 0u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    let var_0 = ~(_wgslsmith_sub_i32(-1i, 15577i) >> (_wgslsmith_add_u32(u_input.a.x, (1u >> (arg_1.c.a.x % 32u)) ^ ~arg_1.a.a.x) % 32u));
    let var_1 = 10018i;
    global0 = true;
    let var_2 = Struct_2(arg_0, any(vec3<bool>((true | arg_1.d) && !arg_1.b, true || !arg_1.b, false)), Struct_1(~arg_1.c.a), (_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(518f)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2275f, 118f)))) | (var_0 == firstTrailingBit(_wgslsmith_div_i32(u_input.c, var_0))));
    global1 = array<u32, 15>();
    return 1840f;
}

fn func_2(arg_0: vec2<bool>) -> Struct_2 {
    let var_0 = select(2147483647i, i32(-1i) * -(u_input.c | -18908i), true) << ((u_input.b ^ global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, ~u_input.a), 15u)], _wgslsmith_add_u32(~u_input.b, ~u_input.b)), 15u)]) % 32u);
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 105269u, u_input.a.x, u_input.b) >> (vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], u_input.a.x, u_input.b, u_input.b) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, 89779u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 15u)], 15u)])))) & _wgslsmith_mult_vec4_u32(~reverseBits(vec4<u32>(global1[_wgslsmith_index_u32(1u, 15u)], u_input.b, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 15u)])), ~(~vec4<u32>(global1[_wgslsmith_index_u32(26547u, 15u)], u_input.a.x, 9620u, u_input.a.x))), ~(~_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, global1[_wgslsmith_index_u32(u_input.a.x, 15u)], global1[_wgslsmith_index_u32(48577u, 15u)], 4294967295u), vec4<u32>(u_input.b, global1[_wgslsmith_index_u32(17211u, 15u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 15u)], 15u)], 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(78541u, 64814u, 17333u, 1u), vec4<u32>(12687u, 54377u, u_input.a.x, 63973u))))), 15u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(990f, -1000f, -285f, 1580f), vec4<f32>(-662f, -1438f, -1119f, -981f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1532f, 278f, 718f, 1726f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1161f, _wgslsmith_f_op_f32(-570f - 1000f), _wgslsmith_f_op_f32(func_3(Struct_1(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(u_input.b, 15u)], u_input.a.x)), Struct_2(Struct_1(vec3<u32>(global1[_wgslsmith_index_u32(85924u, 15u)], 43474u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], 15u)])), false, Struct_1(u_input.a), arg_0.x))), _wgslsmith_f_op_f32(sign(701f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1783f, 1906f, -1021f, 867f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(535f, _wgslsmith_f_op_f32(-843f + 591f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1175f, 1000f) * -1420f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(754f)) + _wgslsmith_f_op_f32(f32(-1f) * -1477f)))));
    return Struct_2(Struct_1(~abs(u_input.a ^ u_input.a)), !arg_0.x, Struct_1(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(u_input.b, 15u)], 5403u), ~global1[_wgslsmith_index_u32(4294967295u, 15u)]), ~firstLeadingBit(u_input.a.x), _wgslsmith_mult_u32(firstLeadingBit(u_input.a.x), _wgslsmith_add_u32(1u, global1[_wgslsmith_index_u32(u_input.b, 15u)])))), true);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<f32>) -> u32 {
    var var_0 = func_2(vec2<bool>(!(!arg_1.d) || all(select(vec3<bool>(arg_1.d, true, arg_1.b), vec3<bool>(false, true, arg_1.d), vec3<bool>(false, arg_1.d, arg_1.b))), arg_1.d));
    let var_1 = func_2(select(!vec2<bool>(arg_1.d, 4294967295u != arg_1.c.a.x), !select(vec2<bool>(false, false), select(vec2<bool>(false, var_0.b), vec2<bool>(false, true), arg_1.d), vec2<bool>(var_0.d, arg_1.b)), select(!(!vec2<bool>(var_0.b, arg_1.d)), !(!vec2<bool>(var_0.d, true)), var_0.d))).a;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * 1000f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1000f))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2, arg_2.x))))), -365f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.x)) + var_2)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-435f - var_2)), var_2, func_2(select(vec2<bool>(arg_1.d, false), vec2<bool>(var_0.d, false), false)).d))));
    var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_3.x, -1990f, 2130f, -1794f))))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_2, arg_2.x)))), 361f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -796f))));
    return 43189u;
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = func_2(arg_2.yz);
    let var_1 = func_2(!select(select(arg_2.zy, !vec2<bool>(var_0.d, var_0.b), arg_1 > 0u), select(vec2<bool>(var_0.d, false), vec2<bool>(false, false), var_0.b), select(select(arg_2.yy, vec2<bool>(arg_2.x, true), vec2<bool>(false, false)), arg_2.zy, !arg_2.zy))).c;
    var var_2 = var_0.a.a.x;
    let var_3 = Struct_1(var_0.c.a);
    let var_4 = func_2(!arg_2.yy);
    return var_0.c;
}

fn func_1(arg_0: f32, arg_1: bool) -> vec3<u32> {
    let var_0 = Struct_2(Struct_1(u_input.a), !arg_1, func_5(_wgslsmith_f_op_f32(arg_0 + -1021f), _wgslsmith_mult_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)] & 0u, ~4294967295u), func_4(Struct_1(vec3<u32>(18483u, 14194u, global1[_wgslsmith_index_u32(u_input.b, 15u)])), func_2(vec2<bool>(false, arg_1)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0, -175f, arg_0), vec3<f32>(-347f, 1637f, -649f))))), !(!(!vec3<bool>(false, arg_1, arg_1)))), arg_1);
    global0 = func_2(select(select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, arg_1), false), vec2<bool>(false, true), vec2<bool>(true, arg_1)), !(!vec2<bool>(true, arg_1))), vec2<bool>(true, true), true)).d;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(~var_0.c.a), Struct_2(var_0.c, func_2(vec2<bool>(true, arg_1)).b, Struct_1(vec3<u32>(43444u, 79505u, var_0.c.a.x)), true)))), arg_0, 1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1841f - arg_0) * -418f), 786f)), _wgslsmith_f_op_f32(round(arg_0))));
    let var_2 = select(!select(select(select(vec4<bool>(arg_1, false, false, true), vec4<bool>(arg_1, var_0.b, true, false), vec4<bool>(false, var_0.b, var_0.b, true)), vec4<bool>(true, var_0.d, true, false), true), !(!vec4<bool>(true, var_0.b, true, false)), vec4<bool>(true, true, !arg_1, !var_0.b)), !vec4<bool>(!arg_1, !select(false, true, arg_1), any(vec4<bool>(arg_1, false, var_0.d, true)), any(vec3<bool>(arg_1, var_0.b, true))), select(!(!select(vec4<bool>(var_0.b, true, var_0.b, var_0.d), vec4<bool>(var_0.b, false, arg_1, arg_1), arg_1)), vec4<bool>(true, any(vec4<bool>(false, arg_1, false, false)) & var_0.d, !(arg_1 | arg_1), true), !select(vec4<bool>(var_0.b, true, true, true), !vec4<bool>(arg_1, var_0.d, arg_1, arg_1), vec4<bool>(true, var_0.b, var_0.d, false))));
    global0 = var_0.b;
    return vec3<u32>(func_5(arg_0, ~min(_wgslsmith_add_u32(1u, var_0.c.a.x), ~global1[_wgslsmith_index_u32(34395u, 15u)]), vec3<bool>(func_2(vec2<bool>(false, false)).b, var_2.x | var_2.x, all(var_2.xxx) | var_0.b)).a.x, ~global1[_wgslsmith_index_u32(var_0.c.a.x, 15u)] ^ 4294967295u, _wgslsmith_div_u32(~u_input.a.x, u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_clamp_vec3_u32(firstLeadingBit(countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.b, 4294967295u), vec3<u32>(9832u, 4294967295u, 1u)))), vec3<u32>(firstLeadingBit(u_input.b), _wgslsmith_sub_u32(0u & global1[_wgslsmith_index_u32(4294967295u, 15u)], firstTrailingBit(62264u)), _wgslsmith_sub_u32(~17337u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.b, 15u)], global1[_wgslsmith_index_u32(u_input.a.x, 15u)], u_input.b, 1u), vec4<u32>(95401u, 0u, u_input.b, u_input.b)))), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -938f)), true));
    var var_1 = func_5(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -945f)))), var_0.x, select(vec3<bool>(any(vec2<bool>(true, true)), all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false)), true), !(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true)), (all(vec2<bool>(false, true)) || true) || false));
    let var_2 = _wgslsmith_mod_u32(50704u, (var_1.a.x | countOneBits(var_1.a.x ^ 0u)) << (func_1(_wgslsmith_f_op_f32(round(2055f)), true).x % 32u));
    global1 = array<u32, 15>();
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-731f + -893f) + 1f) + _wgslsmith_f_op_f32(-1694f * 225f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1340f, -551f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-215f * 823f))));
    let var_4 = Struct_1(var_0 ^ (reverseBits(vec3<u32>(var_1.a.x, 7943u, 18394u)) | _wgslsmith_add_vec3_u32(abs(vec3<u32>(4294967295u, var_1.a.x, 4294967295u)), ~var_0)));
    global0 = all(vec3<bool>(true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~_wgslsmith_sub_u32(_wgslsmith_div_u32(var_1.a.x, 9167u), min(var_0.x, global1[_wgslsmith_index_u32(32296u, 15u)])), reverseBits(_wgslsmith_dot_vec3_u32(u_input.a, ~var_4.a))), var_1.a.xz ^ _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(var_1.a.xy, ~vec2<u32>(global1[_wgslsmith_index_u32(35852u, 15u)], 1u)), var_1.a.zy, abs(vec2<u32>(61637u, 1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-234f, var_3.x)), _wgslsmith_f_op_f32(-1647f - var_3.x))) * var_3.x) - -1043f), _wgslsmith_sub_u32(4949u, _wgslsmith_clamp_u32(var_2, u_input.a.x, var_0.x) ^ reverseBits(var_4.a.x)));
}

