struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 24> = array<vec2<i32>, 24>(vec2<i32>(1i, 2147483647i), vec2<i32>(1i, 0i), vec2<i32>(31136i, i32(-2147483648)), vec2<i32>(0i, 14550i), vec2<i32>(1i, 4398i), vec2<i32>(13888i, -22410i), vec2<i32>(9526i, -1i), vec2<i32>(i32(-2147483648), -21841i), vec2<i32>(-1i, 30736i), vec2<i32>(-46004i, 22233i), vec2<i32>(-94926i, 2147483647i), vec2<i32>(-1i, -36263i), vec2<i32>(-19898i, 0i), vec2<i32>(0i, -7459i), vec2<i32>(-1495i, 13558i), vec2<i32>(2147483647i, -1i), vec2<i32>(0i, 15926i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(57575i, -19654i), vec2<i32>(31686i, 28763i), vec2<i32>(-4170i, 1i), vec2<i32>(1i, 1i), vec2<i32>(-42149i, 19740i), vec2<i32>(-1577i, 2147483647i));

var<private> global1: array<f32, 14>;

var<private> global2: array<Struct_1, 14>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: f32) -> Struct_3 {
    global2 = array<Struct_1, 14>();
    var var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, arg_1.x, arg_0), vec4<i32>(arg_1.x, arg_0, arg_1.x, -2147483647i)), _wgslsmith_mod_i32(1i, 2147483647i)), (arg_1.x ^ 23611i) >> (1u % 32u)), vec2<i32>(~reverseBits(-2147483647i), firstTrailingBit(-arg_1.x))), ~33603i, countOneBits(-2147483647i | _wgslsmith_add_i32(min(-2147483647i, -27481i), 2147483647i >> (u_input.c.x % 32u))), arg_1.x);
    let var_1 = vec2<bool>(true, !any(vec2<bool>(false, true)));
    global2 = array<Struct_1, 14>();
    global1 = array<f32, 14>();
    return Struct_3(global2[_wgslsmith_index_u32(~4294967295u, 14u)], 0u, global1[_wgslsmith_index_u32(u_input.b, 14u)], select(select(vec3<u32>(u_input.c.x, ~u_input.b, 54587u), u_input.c.zyx, !(!vec3<bool>(var_1.x, true, false))), vec3<u32>(0u, 45977u, u_input.a.x), !(!(2147483647i <= arg_0))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2) -> i32 {
    let var_0 = ~arg_1.b.b.x ^ ~abs(_wgslsmith_sub_i32(8666i, min(35984i, 0i)));
    var var_1 = Struct_2(arg_1.b.d, arg_1.b);
    let var_2 = ~arg_1.b.a;
    var var_3 = -arg_0.x ^ arg_0.x;
    var var_4 = vec2<u32>(~abs(33449u), func_1(var_1.a, -vec3<i32>(var_0, var_0, arg_1.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1160f, global1[_wgslsmith_index_u32(1u, 14u)]))))).b | (arg_1.b.a << (func_1(var_1.a, vec3<i32>(arg_0.x, var_1.b.d, 51506i), arg_1.b.c).d.x % 32u)));
    return ~firstLeadingBit(-2054i);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3) -> i32 {
    var var_0 = -(~firstLeadingBit(abs(arg_1.a.b)) ^ vec4<i32>(arg_2.a.b.x, -14796i, ~(-1i), func_3(-arg_0.b.b.zz, Struct_2(24304i, global2[_wgslsmith_index_u32(arg_1.d.x, 14u)]))));
    global0 = array<vec2<i32>, 24>();
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.b.c))) >= arg_0.b.c;
    let var_2 = (u_input.c.xyy ^ u_input.c.yzz) | select(~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.d.x, arg_0.b.a, arg_1.a.a), vec3<u32>(7428u, arg_0.b.a, 4294967295u), arg_2.d) | arg_2.d, ~u_input.c.zzz, select(select(vec3<bool>(var_1, var_1, var_1), !vec3<bool>(true, var_1, false), vec3<bool>(true, false, var_1)), select(!vec3<bool>(false, var_1, false), select(vec3<bool>(false, var_1, var_1), vec3<bool>(var_1, var_1, true), vec3<bool>(true, false, false)), any(vec2<bool>(var_1, var_1))), !(!var_1)));
    global1 = array<f32, 14>();
    return firstTrailingBit(0i);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> Struct_1 {
    var var_0 = ~vec4<i32>(firstLeadingBit(arg_1.d), max(~arg_0.a.d, func_3(global0[_wgslsmith_index_u32(min(126582u, arg_1.a), 24u)], Struct_2(71515i, Struct_1(u_input.a.x, vec4<i32>(0i, 1i, 2147483647i, arg_1.b.x), -395f, -27258i)))), arg_1.b.x, min(firstTrailingBit(~arg_0.a.b.x), arg_0.a.d));
    var var_1 = func_1(func_1(arg_1.b.x, _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(6490i, arg_1.b.x), _wgslsmith_mult_i32(-1i, 1i), abs(var_0.x)), vec3<i32>(arg_1.d, arg_0.a.b.x, 1i)), _wgslsmith_f_op_f32(-2096f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1592u, 14u)])))).a.d, vec3<i32>(var_0.x, reverseBits(arg_0.a.d), 45992i), -317f).a;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-543f, arg_0.a.c, -1187f, arg_1.c), vec4<f32>(global1[_wgslsmith_index_u32(49008u, 14u)], 1111f, arg_0.c, var_1.c), vec4<bool>(true, true, false, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(855f, arg_1.c, 402f, 1272f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(1u, 14u)], -1325f, var_1.c, -584f), vec4<f32>(-113f, arg_1.c, 931f, arg_1.c)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 14u)], 823f, global1[_wgslsmith_index_u32(arg_0.b, 14u)], -1000f), vec4<f32>(var_1.c, arg_0.c, arg_0.a.c, -650f), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-364f, var_1.c, -326f, -1975f)))) * vec4<f32>(arg_1.c, _wgslsmith_f_op_f32(-var_1.c), 1029f, -922f))));
    let var_3 = ~select(arg_0.a.b, vec4<i32>(-(arg_1.b.x | 14766i), -2147483647i, max(var_1.d, -var_0.x), var_0.x), any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false), true)));
    var var_4 = _wgslsmith_add_i32(_wgslsmith_mod_i32(-12126i, ~_wgslsmith_div_i32(2147483647i, var_0.x ^ var_0.x)), arg_1.b.x);
    return arg_1;
}

fn func_5(arg_0: Struct_1) -> u32 {
    let var_0 = -332f;
    var var_1 = _wgslsmith_add_u32((~u_input.a.x >> (~0u % 32u)) ^ ~func_1(1i, vec3<i32>(arg_0.b.x, 0i, arg_0.b.x), -189f).a.a, firstTrailingBit(arg_0.a >> (~arg_0.a % 32u))) >= u_input.a.x;
    var var_2 = Struct_1(arg_0.a, arg_0.b, 100f, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(firstTrailingBit(~arg_0.b), arg_0.b), arg_0.b));
    var var_3 = ~min(1i, -31104i);
    let var_4 = !(!vec4<bool>(false, all(vec4<bool>(false, false, false, true)), true, !(var_0 != -2035f)));
    return func_4(Struct_3(func_1(var_2.d, firstTrailingBit(vec3<i32>(arg_0.b.x, 2147483647i, 1i)), _wgslsmith_f_op_f32(-var_2.c)).a, 4412u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) - _wgslsmith_f_op_f32(arg_0.c - var_0)) * _wgslsmith_f_op_f32(468f + 1045f)), ~firstLeadingBit(abs(u_input.c.zxx))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_2.a, ~arg_0.a) & 45120u, 14u)]).a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 14>();
    var var_0 = !(36442u < _wgslsmith_clamp_u32(1u, 16867u, (u_input.a.x & u_input.a.x) & 6213u));
    let var_1 = vec4<u32>(74433u, 2391u, u_input.d, func_5(func_4(func_1(abs(2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 9171i, 62894i), vec3<i32>(2147483647i, -2147483647i, 0i), vec3<i32>(-1i, -1i, -2147483647i)), _wgslsmith_f_op_f32(f32(-1f) * -436f)), func_1(func_2(Struct_2(2147483647i, global2[_wgslsmith_index_u32(u_input.d, 14u)]), Struct_3(global2[_wgslsmith_index_u32(u_input.b, 14u)], u_input.a.x, global1[_wgslsmith_index_u32(u_input.c.x, 14u)], u_input.a), Struct_3(global2[_wgslsmith_index_u32(21938u, 14u)], u_input.d, global1[_wgslsmith_index_u32(1u, 14u)], vec3<u32>(u_input.c.x, 4294967295u, 47603u))), vec3<i32>(-2147483647i, -1i, 42303i), -334f).a)));
    var var_2 = firstTrailingBit(vec4<u32>(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(var_1.xw, vec2<u32>(var_1.x, 16345u)), _wgslsmith_dot_vec4_u32(var_1, var_1)), var_1.x, var_1.x, _wgslsmith_add_u32(u_input.d, func_5(func_4(Struct_3(Struct_1(1u, vec4<i32>(2147483647i, 2147483647i, 2147483647i, 0i), -1076f, -58740i), u_input.b, 453f, vec3<u32>(42010u, var_1.x, var_1.x)), Struct_1(u_input.b, vec4<i32>(-2147483647i, 25248i, -1i, 2147483647i), -848f, 1i))))));
    global0 = array<vec2<i32>, 24>();
    global1 = array<f32, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 14u)], global1[_wgslsmith_index_u32(var_2.x, 14u)], global1[_wgslsmith_index_u32(var_2.x, 14u)], global1[_wgslsmith_index_u32(var_2.x, 14u)]), vec4<f32>(global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(u_input.d, 14u)], global1[_wgslsmith_index_u32(1u, 14u)], 396f))) - vec4<f32>(global1[_wgslsmith_index_u32(29653u, 14u)], global1[_wgslsmith_index_u32(var_2.x, 14u)], 654f, 825f)))), reverseBits(~u_input.b), ~var_1, var_2.x);
}

