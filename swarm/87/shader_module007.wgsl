struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16> = array<u32, 16>(1u, 0u, 1u, 4294967295u, 1u, 9561u, 0u, 4294967295u, 0u, 0u, 0u, 4294967295u, 1u, 4294967295u, 112930u, 38848u);

var<private> global1: array<u32, 23>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = Struct_1(false, any(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), !(!(true && any(vec2<bool>(false, true)))), ~_wgslsmith_mult_vec2_i32(abs(vec2<i32>(u_input.b, 1i)), vec2<i32>(41152i, 68274i)));
    var_0 = Struct_1(all(vec4<bool>(true, var_0.c, true, true)), _wgslsmith_dot_vec4_i32(countOneBits(reverseBits(vec4<i32>(0i, 2147483647i, 13272i, -1i))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(29260i, 8342i, var_0.d.x, 2147483647i), vec4<i32>(-2147483647i, 14250i, var_0.d.x, u_input.b))) != _wgslsmith_clamp_i32(~(-var_0.d.x), -var_0.d.x, min(_wgslsmith_add_i32(-1i, u_input.a), _wgslsmith_mult_i32(var_0.d.x, -2147483647i))), var_0.b, firstLeadingBit(var_0.d));
    let var_1 = ~(~firstTrailingBit(0u));
    var var_2 = Struct_2(Struct_1(4294967295u > global0[_wgslsmith_index_u32(select(4294967295u, 1u, true), 16u)], any(select(!vec2<bool>(true, var_0.c), select(vec2<bool>(false, var_0.a), vec2<bool>(true, false), var_0.a), !var_0.c)), var_0.c & true, vec2<i32>(-var_0.d.x, -1i)), firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(9516u, 47080u, u_input.c.x, 20768u), vec4<u32>(global1[_wgslsmith_index_u32(u_input.d, 23u)], 17426u, global0[_wgslsmith_index_u32(0u, 16u)], arg_0)), max(1u, 10181u), arg_0 >> (74260u % 32u), u_input.c.x) | ~_wgslsmith_div_vec4_u32(vec4<u32>(73101u, 277u, global0[_wgslsmith_index_u32(0u, 16u)], var_1), vec4<u32>(global1[_wgslsmith_index_u32(var_1, 23u)], global1[_wgslsmith_index_u32(arg_0, 23u)], global1[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(arg_0, 16u)]))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1458f, 1338f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(128f)) - _wgslsmith_f_op_f32(trunc(662f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-602f, -1000f, true)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(floor(511f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1084f - _wgslsmith_f_op_f32(select(-1711f, -1949f, true))))));
    var var_3 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(~var_2.a.d.x, ~(-1i), var_0.d.x), u_input.a);
    return ~(~u_input.a);
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = Struct_2(Struct_1(false || !all(vec4<bool>(false, false, true, arg_1.a)), arg_1.b, true, ~vec2<i32>(-u_input.a, ~22744i)), countOneBits(select(vec4<u32>(global1[_wgslsmith_index_u32(min(u_input.c.x, u_input.c.x), 23u)], global0[_wgslsmith_index_u32(u_input.d << (0u % 32u), 16u)], 4294967295u, global0[_wgslsmith_index_u32(~7951u, 16u)]), ~select(vec4<u32>(global0[_wgslsmith_index_u32(1u, 16u)], u_input.d, u_input.c.x, u_input.c.x), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], global0[_wgslsmith_index_u32(u_input.d, 16u)], 1u, global1[_wgslsmith_index_u32(u_input.c.x, 23u)]), vec4<bool>(arg_1.a, arg_1.b, arg_1.c, arg_1.c)), vec4<bool>(true, true || arg_1.a, true, true))), vec4<f32>(1f, 1f, 1f, 1f));
    var var_1 = u_input.c;
    global0 = array<u32, 16>();
    var var_2 = all(vec2<bool>(true, any(select(select(vec2<bool>(true, var_0.a.b), vec2<bool>(arg_1.a, false), arg_1.c), !vec2<bool>(arg_1.a, false), any(vec4<bool>(true, arg_1.b, var_0.a.a, arg_1.a))))));
    var_2 = !arg_1.b | arg_1.b;
    return vec4<bool>(false, arg_1.b || arg_1.b, true || (var_0.a.b || (true != arg_1.a)), !(_wgslsmith_dot_vec4_u32(var_0.b, var_0.b) < (~var_1.x & ~global1[_wgslsmith_index_u32(11252u, 23u)])));
}

fn func_2(arg_0: Struct_2) -> f32 {
    let var_0 = arg_0;
    let var_1 = select(vec3<i32>(_wgslsmith_mod_i32(firstLeadingBit(~43929i), u_input.b), var_0.a.d.x, _wgslsmith_dot_vec4_i32(-firstTrailingBit(vec4<i32>(719i, 16437i, u_input.e, arg_0.a.d.x)), vec4<i32>(5411i, var_0.a.d.x, -var_0.a.d.x, arg_0.a.d.x & u_input.b))), max(firstLeadingBit(vec3<i32>(arg_0.a.d.x, u_input.b, var_0.a.d.x) >> (vec3<u32>(0u, 1u, 4294967295u) % vec3<u32>(32u))) >> (arg_0.b.xxw % vec3<u32>(32u)), abs(~vec3<i32>(2147483647i, arg_0.a.d.x, 1i))), arg_0.a.c);
    var var_2 = arg_0.a;
    var var_3 = select(vec4<bool>(any(!select(vec3<bool>(arg_0.a.c, var_2.c, var_2.a), vec3<bool>(var_2.a, var_2.c, var_2.a), vec3<bool>(var_2.a, arg_0.a.b, var_2.c))), var_0.a.c, arg_0.a.b, true), select(select(!(!vec4<bool>(var_2.c, false, arg_0.a.a, true)), !(!vec4<bool>(true, var_0.a.a, arg_0.a.b, var_2.c)), !vec4<bool>(false, false, arg_0.a.a, false)), select(vec4<bool>(var_2.b, any(vec2<bool>(arg_0.a.c, true)), true, !var_0.a.a), vec4<bool>(select(false, false, false), 809f < var_0.c.x, false, true), arg_0.a.c), !(!(!var_2.a))), var_0.a.b);
    var_3 = func_4(func_3(~arg_0.b.x), Struct_1(true, arg_0.c.x >= arg_0.c.x, true, _wgslsmith_div_vec2_i32(var_0.a.d, vec2<i32>(_wgslsmith_sub_i32(var_1.x, u_input.b), max(17126i, -1i)))));
    return _wgslsmith_f_op_f32(ceil(-1241f));
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = -u_input.a;
    var var_1 = Struct_2(Struct_1((true || all(vec2<bool>(true, true))) | true, true, any(vec3<bool>(1u < u_input.d, false, 1i < var_0)), _wgslsmith_add_vec2_i32(vec2<i32>(62261i, -40387i) << (~vec2<u32>(global1[_wgslsmith_index_u32(0u, 23u)], u_input.d) % vec2<u32>(32u)), reverseBits(-vec2<i32>(2147483647i, arg_0)))), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 23u)], global0[_wgslsmith_index_u32(u_input.c.x, 16u)], global1[_wgslsmith_index_u32(1u, 23u)]), vec4<u32>(u_input.d, 4294967295u, 5014u, global0[_wgslsmith_index_u32(u_input.d, 16u)]))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-2110f, 799f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-765f, -378f)), 1f, -599f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(565f)) - 1893f), _wgslsmith_f_op_f32(f32(-1f) * -474f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2079f + -1252f) + 728f), _wgslsmith_f_op_f32(f32(-1f) * -588f)))));
    var_1 = Struct_2(Struct_1(true, true, var_1.a.c, var_1.a.d), ~vec4<u32>(~19801u, global1[_wgslsmith_index_u32(~(~4294967295u), 23u)], 61330u, global0[_wgslsmith_index_u32(71487u, 16u)]), vec4<f32>(-943f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_2(var_1.a, var_1.b, var_1.c))) + _wgslsmith_f_op_f32(sign(var_1.c.x))) + 1591f), _wgslsmith_f_op_f32(var_1.c.x - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.c.x)))), _wgslsmith_f_op_f32(-var_1.c.x)));
    var var_2 = Struct_1(false, select((_wgslsmith_add_i32(34538i, -1i) != var_1.a.d.x) == all(!vec4<bool>(true, var_1.a.b, var_1.a.a, var_1.a.a)), func_4(var_1.a.d.x ^ _wgslsmith_clamp_i32(arg_0, var_1.a.d.x, var_0), Struct_1(any(vec4<bool>(true, var_1.a.a, false, true)), false, arg_0 <= -7314i, -var_1.a.d)).x, all(vec4<bool>(true, var_1.a.b, true, false))), !select(any(vec4<bool>(var_1.a.c, false, true, false)) && var_1.a.b, !var_1.a.c, true), ~vec2<i32>(arg_0, select(reverseBits(-6152i), arg_0, var_0 < var_0)));
    return var_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-636f, 1111f), vec2<f32>(-1004f, 1335f)) * vec2<f32>(1757f, -821f)))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(570f, _wgslsmith_f_op_f32(-450f + 111f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(1225f, 347f) + 432f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-481f + -2696f))))));
    let var_2 = !vec3<bool>(abs(global1[_wgslsmith_index_u32(firstLeadingBit(6246u), 23u)]) == global1[_wgslsmith_index_u32(4294967295u, 23u)], _wgslsmith_f_op_f32(func_1(~u_input.a)) >= var_1.x, all(vec3<bool>(var_0, true, false)));
    global1 = array<u32, 23>();
    var var_3 = all(vec2<bool>(var_0, var_0));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, -1397f, 765f, var_1.x), vec4<f32>(var_1.x, var_1.x, -444f, var_1.x), false))))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -526f, var_1.x, 1107f) + vec4<f32>(334f, var_1.x, var_1.x, var_1.x)))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(547f * 1383f), _wgslsmith_f_op_f32(1836f * var_1.x), var_1.x, var_1.x), vec4<f32>(_wgslsmith_f_op_f32(var_1.x - 981f), _wgslsmith_f_op_f32(abs(var_1.x)), var_1.x, _wgslsmith_f_op_f32(func_1(u_input.e)))), vec4<bool>(all(vec2<bool>(true, true)), select(true, any(vec3<bool>(var_2.x, var_2.x, false)), any(vec2<bool>(false, var_0))), any(vec4<bool>(true, true, true, var_0)) & var_0, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(select(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 16u)], 16u)], 28993u, 4294967295u), vec3<u32>(0u, 46241u, u_input.d)), ~4294967295u), 1u, var_0), reverseBits(1u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], 23u)]));
}

