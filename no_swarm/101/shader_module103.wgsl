struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-635f, -534f);

var<private> global1: array<f32, 12> = array<f32, 12>(249f, 401f, 1224f, 140f, -189f, 1224f, 735f, -1000f, 838f, -1608f, -955f, -577f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: u32) -> vec4<u32> {
    var var_0 = false;
    var var_1 = Struct_1(vec4<i32>(_wgslsmith_sub_i32(countOneBits(-arg_0.a.x), abs(abs(-1i))), -(~(i32(-1i) * -2147483647i)), 1i, _wgslsmith_clamp_i32(arg_1.x, ~13342i, -3545i)));
    let var_2 = arg_0;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -506f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 12u)], global1[_wgslsmith_index_u32(33191u, 12u)]) + vec2<f32>(-597f, -177f)))))));
    let var_3 = all(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), !select(vec2<bool>(true, true), vec2<bool>(false, false), true)));
    return vec4<u32>(~(~reverseBits(7059u)), arg_2, arg_2, arg_2);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec3<u32>) -> bool {
    let var_0 = select(~arg_3.yz, arg_1, select(false, false, true) && any(vec4<bool>(all(vec3<bool>(false, true, false)), true, global0.x > 1256f, true)));
    let var_1 = Struct_1(vec4<i32>(~(-(~arg_0.a.x)), _wgslsmith_dot_vec3_i32(~arg_0.a.yyw, vec3<i32>(-1i, arg_2.a.x, arg_0.a.x) ^ arg_2.a.yyx), -_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(32367i, 25413i), vec2<i32>(arg_2.a.x, arg_0.a.x)), arg_2.a.x), firstLeadingBit(abs(-34719i))));
    var var_2 = Struct_1(_wgslsmith_div_vec4_i32(arg_2.a, ~vec4<i32>(1i, 2147483647i, 0i, arg_0.a.x)));
    var_2 = Struct_1(vec4<i32>(1i, arg_0.a.x, min(countOneBits(1i), _wgslsmith_dot_vec3_i32(~var_1.a.wzz, firstTrailingBit(arg_0.a.xxw))), arg_0.a.x));
    var var_3 = _wgslsmith_div_vec4_u32(func_3(Struct_1(~(vec4<i32>(var_1.a.x, var_2.a.x, u_input.c, u_input.b) >> (vec4<u32>(50839u, 4294967295u, u_input.a, arg_1.x) % vec4<u32>(32u)))), vec3<i32>(-1i) * -vec3<i32>(u_input.b, arg_2.a.x, var_1.a.x), ~arg_3.x), ~vec4<u32>(var_0.x, _wgslsmith_mod_u32(reverseBits(0u), ~arg_3.x), ~_wgslsmith_add_u32(4294967295u, arg_1.x), _wgslsmith_div_u32(arg_3.x, var_0.x)));
    return !any(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), all(vec4<bool>(true, true, false, true)))));
}

fn func_1() -> u32 {
    global1 = array<f32, 12>();
    var var_0 = select(vec4<bool>(!(false & func_2(Struct_1(vec4<i32>(u_input.b, -2147483647i, u_input.b, -2147483647i)), u_input.d.yz, Struct_1(vec4<i32>(u_input.b, 39343i, 8916i, u_input.b)), u_input.d)), true, true, any(vec4<bool>(true, true, true, true))), !vec4<bool>(true, any(vec2<bool>(true, true)), false && any(vec2<bool>(true, true)), firstTrailingBit(-1i) > u_input.b), false);
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global1[_wgslsmith_index_u32(1u, 12u)]) + vec2<f32>(global0.x, global1[_wgslsmith_index_u32(0u, 12u)])))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(sign(global0.x))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(915f, global1[_wgslsmith_index_u32(62322u, 12u)])))))), _wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(41525u, 12u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_div_f32(447f, global0.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 12u)], 716f), vec2<f32>(844f, global1[_wgslsmith_index_u32(u_input.a, 12u)])))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-626f, 1327f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.x, global1[_wgslsmith_index_u32(u_input.a, 12u)]))))))));
    let var_2 = (4294967295u != u_input.d.x) | any(select(vec3<bool>(true, var_0.x, func_2(Struct_1(vec4<i32>(0i, 7965i, u_input.c, u_input.b)), u_input.d.xx, Struct_1(vec4<i32>(u_input.b, -1i, u_input.c, u_input.b)), u_input.d)), !select(vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.yxy, var_0.x), vec3<bool>(310f == global0.x, true, var_0.x)));
    let var_3 = func_3(Struct_1(~_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.c, u_input.b, 2147483647i) >> (vec4<u32>(u_input.a, 8916u, u_input.d.x, u_input.a) % vec4<u32>(32u)), -vec4<i32>(u_input.b, u_input.b, 0i, -2147483647i))), -_wgslsmith_mult_vec3_i32(vec3<i32>(0i, -14113i, u_input.c ^ 3994i), vec3<i32>(-13307i, -28202i, u_input.b) & -vec3<i32>(-12208i, 58254i, u_input.c)), _wgslsmith_div_u32(_wgslsmith_div_u32(~_wgslsmith_sub_u32(0u, u_input.d.x), 78509u), ~u_input.a)).x;
    return min(max(countOneBits(~u_input.d.x), _wgslsmith_add_u32(0u, ~(~var_3))), ~_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1756u, u_input.a, var_3, var_3), vec4<u32>(1u, 1u, u_input.d.x, var_3)), vec4<u32>(var_3, 1u, u_input.d.x, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_1();
    let var_1 = select(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true), vec4<bool>(~u_input.a > 55168u, true, true, !(1u != u_input.d.x))), !select(vec4<bool>(true, true, all(vec4<bool>(false, false, false, false)), true), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), true)), select(vec4<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false)), true, false, all(vec4<bool>(true, false, true, true))), select(vec4<bool>(true, true, true, all(vec4<bool>(true, false, true, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true)), true), all(vec3<bool>(true, true, true))), true));
    let var_2 = Struct_1(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, 8281i, 72267i, u_input.b) ^ (vec4<i32>(u_input.b, 2147483647i, u_input.b, -2147483647i) << (vec4<u32>(u_input.d.x, 0u, 4294967295u, u_input.a) % vec4<u32>(32u))), vec4<i32>(min(u_input.c, u_input.c), -u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1i, u_input.c), vec3<i32>(u_input.c, u_input.b, u_input.c)), -u_input.b)), firstLeadingBit(abs(-vec4<i32>(u_input.b, 37945i, u_input.c, u_input.c)))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 12u)], global1[_wgslsmith_index_u32(u_input.d.x, 12u)]), vec2<f32>(global0.x, -405f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-830f, global1[_wgslsmith_index_u32(u_input.d.x, 12u)]))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 12u)], -1000f), vec2<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 12u)], 651f), var_1.x))))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(189f, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d.x, 12u)]))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(u_input.a, 12u)])), global1[_wgslsmith_index_u32(u_input.d.x, 12u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(68068u, 12u)], 704f)))), var_1.zx)));
    let var_3 = 96888u | min(abs(u_input.d.x), u_input.a);
    let var_4 = 1i;
    global1 = array<f32, 12>();
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 741f)))))), vec2<f32>(1f, 1f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1225f, global1[_wgslsmith_index_u32(var_3, 12u)])))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -410f) * vec2<f32>(-424f, global1[_wgslsmith_index_u32(u_input.a, 12u)])) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 12u)], -1237f))))) * vec2<f32>(global0.x, -496f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i) * -firstTrailingBit(_wgslsmith_mult_vec2_i32(var_2.a.wy, vec2<i32>(u_input.b, 0i))), var_2.a.zy, vec4<u32>(_wgslsmith_dot_vec3_u32(reverseBits(firstTrailingBit(vec3<u32>(var_3, 20u, 6858u))), abs(vec3<u32>(19201u, 1u, u_input.d.x))), ~u_input.a, _wgslsmith_sub_u32(0u, u_input.a), var_3));
}

