struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec3<f32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 13>;

var<private> global1: i32;

var<private> global2: array<Struct_1, 9>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: vec4<u32>) -> i32 {
    var var_0 = false;
    var var_1 = Struct_2(i32(-1i) * -23584i);
    let var_2 = Struct_2(0i);
    let var_3 = _wgslsmith_div_vec3_u32(~select(vec3<u32>(~122598u, ~1u, arg_3.x), vec3<u32>(arg_3.x, arg_3.x, 4294967295u) ^ _wgslsmith_div_vec3_u32(arg_3.wzz, arg_3.wyz), select(arg_2.c.b.x, select(false, true, true), arg_2.b.b.x == true)), vec3<u32>(firstTrailingBit(~u_input.a), _wgslsmith_mult_u32(min(arg_3.x, arg_2.c.d) << (arg_2.c.d % 32u), ~select(4294967295u, 29491u, true)), ~_wgslsmith_dot_vec3_u32(arg_3.xzw, vec3<u32>(arg_2.b.d, u_input.a, 0u)) ^ (_wgslsmith_sub_u32(39806u, u_input.a) & 1u)));
    global1 = countOneBits(~_wgslsmith_mod_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 8512i, u_input.b.x, arg_0), global0[_wgslsmith_index_u32(33124u, 13u)]), select(0i, arg_0, arg_2.b.b.x) << ((12017u ^ arg_3.x) % 32u)));
    return -(firstLeadingBit(u_input.b.x) & abs(var_1.a));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec3<bool>) -> i32 {
    global0 = array<vec4<i32>, 13>();
    let var_0 = _wgslsmith_mod_i32(func_3(u_input.b.x, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-arg_0), arg_1, _wgslsmith_f_op_f32(step(arg_0, arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -350f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, -2171f, arg_0, arg_1), vec4<f32>(639f, arg_0, -353f, 1629f), true))))), Struct_3(u_input.b, global2[_wgslsmith_index_u32(~4294967295u, 9u)], Struct_1(abs(vec3<i32>(u_input.b.x, u_input.b.x, -24651i)), vec3<bool>(arg_2.x, arg_2.x, arg_2.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-818f, -536f, -952f)), ~u_input.a, -619f)), ~(~(~vec4<u32>(0u, u_input.a, 59959u, 14117u)))), firstTrailingBit(-6424i));
    let var_1 = Struct_1(reverseBits(~vec3<i32>(2147483647i, 14159i, u_input.b.x) << (max(~vec3<u32>(u_input.a, u_input.a, u_input.a), select(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), true)) % vec3<u32>(32u))), select(!(!vec3<bool>(arg_2.x, arg_2.x, arg_2.x)), select(vec3<bool>(false, !arg_2.x, false), arg_2, any(!vec3<bool>(arg_2.x, arg_2.x, false))), !(~u_input.a == u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_f32(307f - 1115f), -1410f))), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))), arg_1))));
    var var_2 = Struct_3(~reverseBits(~countOneBits(u_input.b)), var_1, Struct_1(firstLeadingBit(var_1.a), !select(!var_1.b, vec3<bool>(var_1.b.x, true, true), var_1.b), var_1.c, select(11949u, ~13577u & var_1.d, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1047f, arg_1) + _wgslsmith_f_op_f32(-var_1.c.x)))));
    var var_3 = _wgslsmith_div_i32(_wgslsmith_sub_i32(var_1.a.x, u_input.b.x), 0i);
    return ~countOneBits(-23464i);
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: Struct_2, arg_3: bool) -> vec3<i32> {
    global1 = func_2(arg_0, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-arg_1)), vec3<bool>(select(538f < arg_0, false, arg_3), all(vec4<bool>(true, arg_3, true, false)), arg_0 != arg_1));
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-415f))), 1000f, arg_3)), 680f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-945f * 1000f) + 947f))), -2500f)));
    var var_1 = vec4<i32>(u_input.b.x, -firstLeadingBit(9004i) >> (min(u_input.a, 108u) % 32u), min(u_input.b.x, countOneBits(_wgslsmith_sub_i32(u_input.b.x, _wgslsmith_add_i32(u_input.b.x, -2147483647i)))), arg_2.a);
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(select(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 32292u, 4294967295u)), vec3<u32>(4294967295u, 4294967295u, u_input.a), select(vec3<bool>(false, false, false), vec3<bool>(true, true, arg_3), arg_3)), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 0u, u_input.a), vec3<u32>(39010u, 15832u, 1u)) | _wgslsmith_div_vec3_u32(vec3<u32>(19576u, 1u, 4294967295u), vec3<u32>(u_input.a, u_input.a, 4294967295u))), u_input.a), 9u)];
    var var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - 180f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1126f - _wgslsmith_div_f32(arg_0, arg_1)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_2.c + vec3<f32>(863f, arg_1, var_0.x)))));
    return _wgslsmith_sub_vec3_i32(vec3<i32>(~var_2.a.x & -67409i, var_1.x, ~_wgslsmith_mult_i32(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(32766i, 2147483647i, var_2.a.x, 1i), global0[_wgslsmith_index_u32(u_input.a, 13u)]))), reverseBits(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 32400i, arg_2.a, var_2.a.x), vec4<i32>(874i, var_1.x, var_1.x, 0i)), _wgslsmith_div_vec4_i32(vec4<i32>(7420i, arg_2.a, u_input.b.x, var_1.x), vec4<i32>(u_input.b.x, 35712i, -52600i, -2147483647i))), ~_wgslsmith_div_i32(var_2.a.x, var_1.x), ~938i)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: u32, arg_3: bool) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_0.c))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(arg_0.c, vec3<f32>(arg_0.e, arg_0.c.x, 1015f), arg_0.b))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(685f, arg_0.c.x, arg_0.e)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-436f, 196f, arg_0.e))), vec3<f32>(arg_0.e, arg_0.e, -632f))), select(arg_0.b, !vec3<bool>(arg_0.b.x, false, true), arg_0.b.x)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -224f) * var_0.x);
    var var_2 = ~1u;
    var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1017f, var_0.x))), 1f, (u_input.a ^ 0u) != arg_1));
    var_1 = -894f;
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(_wgslsmith_mod_vec3_i32(-min(vec3<i32>(u_input.b.x, u_input.b.x, 1i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_add_vec3_i32(func_1(-318f, -204f, Struct_2(u_input.b.x), true), abs(vec3<i32>(-25189i, 15015i, u_input.b.x)))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(false, true, true)) != true), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(684f, 1357f)) + -859f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-259f - -1201f) - _wgslsmith_f_op_f32(-765f - -1666f)), _wgslsmith_f_op_f32(max(772f, _wgslsmith_f_op_f32(trunc(1473f))))), ~u_input.a, -336f), 0u, 1u, all(!vec2<bool>(true, all(vec2<bool>(true, true)))));
    var var_1 = Struct_1(vec3<i32>(reverseBits(8272i << (~u_input.a % 32u)), -1379i, func_3(-_wgslsmith_mult_i32(0i, -33285i), vec4<f32>(_wgslsmith_f_op_f32(round(300f)), _wgslsmith_f_op_f32(max(1034f, 990f)), 515f, _wgslsmith_f_op_f32(abs(-1312f))), Struct_3(-u_input.b, global2[_wgslsmith_index_u32(12992u, 9u)], Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), var_0, vec3<f32>(543f, -112f, 266f), u_input.a, -2238f)), vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a) << ((vec4<u32>(1u, u_input.a, u_input.a, 1u) ^ vec4<u32>(180u, 4301u, 63727u, u_input.a)) % vec4<u32>(32u)))), func_4(Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x)) << (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 66185u, u_input.a), vec3<u32>(u_input.a, 70613u, u_input.a)) % vec3<u32>(32u)), !var_0, vec3<f32>(_wgslsmith_f_op_f32(round(1244f)), _wgslsmith_f_op_f32(f32(-1f) * -975f), _wgslsmith_f_op_f32(f32(-1f) * -181f)), 4596u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1039f, 486f) - _wgslsmith_f_op_f32(278f - -265f))), 4294967295u, 7497u, true), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-793f, 208f, -373f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1043f, 1003f, -142f) * vec3<f32>(-378f, -1047f, 766f))))))), _wgslsmith_div_u32(~(~(~28753u)), max(39439u, _wgslsmith_mod_u32(u_input.a, u_input.a))), 318f);
    global1 = _wgslsmith_mult_i32(4594i, func_2(_wgslsmith_f_op_f32(-var_1.c.x), var_1.e, select(var_1.b, !vec3<bool>(true, var_0.x, true), select(true, false, !var_0.x))));
    var var_2 = Struct_2(-1i);
    global1 = -func_2(_wgslsmith_f_op_f32(min(-1366f, var_1.e)), var_1.c.x, select(!vec3<bool>(false, var_1.b.x, var_1.b.x), vec3<bool>(any(var_0), false, true), var_1.b));
    let var_3 = 665f;
    let var_4 = Struct_3(~(-vec2<i32>(var_2.a, var_1.a.x & var_1.a.x)), global2[_wgslsmith_index_u32(~(~u_input.a), 9u)], Struct_1(~(-_wgslsmith_div_vec3_i32(vec3<i32>(var_2.a, var_2.a, var_1.a.x), var_1.a)), !vec3<bool>(any(vec4<bool>(var_1.b.x, false, var_1.b.x, var_0.x)), true, false), var_1.c, ~_wgslsmith_mod_u32(select(107914u, 4294967295u, var_0.x), u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-581f * var_1.c.x)))));
    var var_5 = var_1.c;
    var var_6 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(25256u, ~abs(15237u), _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_4.c.d, var_1.d, var_1.d, 29862u), vec4<u32>(0u, var_4.c.d, u_input.a, var_1.d), vec4<bool>(false, false, true, true)), min(vec4<u32>(var_1.d, var_4.c.d, 33804u, var_1.d), vec4<u32>(20260u, u_input.a, 14061u, var_4.c.d)))) << (_wgslsmith_div_vec3_u32(~(~vec3<u32>(var_1.d, var_6.b.d, var_4.c.d)), reverseBits(vec3<u32>(63124u, 63841u, 0u))) % vec3<u32>(32u)), select(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, var_6.c.a.x, 1509i, 3414i), global0[_wgslsmith_index_u32(var_4.c.d, 13u)]) << (~vec4<u32>(4294967295u, 0u, var_4.c.d, var_1.d) % vec4<u32>(32u)), vec4<i32>(1i, u_input.b.x << (u_input.a % 32u), var_2.a, _wgslsmith_mod_i32(var_1.a.x, 63005i)), !vec4<bool>(var_0.x, false, false, var_4.c.b.x)) >> (max(vec4<u32>(62324u, max(0u, var_6.c.d), 21575u, select(4294967295u, u_input.a, var_0.x)), _wgslsmith_div_vec4_u32(min(vec4<u32>(var_6.c.d, var_1.d, 0u, 62864u), vec4<u32>(17601u, 40064u, u_input.a, var_4.b.d)), ~vec4<u32>(48575u, u_input.a, 9662u, var_1.d))) % vec4<u32>(32u)), var_4.b.a.yz, ~(~(i32(-1i) * -1i)));
}

