struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24>;

var<private> global1: vec3<i32> = vec3<i32>(i32(-2147483648), -5635i, -36266i);

var<private> global2: Struct_1;

var<private> global3: array<vec4<f32>, 15> = array<vec4<f32>, 15>(vec4<f32>(-623f, -1224f, 162f, -1466f), vec4<f32>(-739f, -334f, 453f, 1078f), vec4<f32>(-1266f, 1125f, -1641f, 1418f), vec4<f32>(391f, -690f, 323f, 386f), vec4<f32>(-758f, 1275f, -486f, -554f), vec4<f32>(1014f, -680f, 215f, 236f), vec4<f32>(-1428f, -925f, -1775f, 1722f), vec4<f32>(364f, -746f, -1000f, -131f), vec4<f32>(471f, 751f, 1290f, 2141f), vec4<f32>(459f, -444f, -364f, 798f), vec4<f32>(-1689f, 1428f, -357f, -141f), vec4<f32>(1189f, 487f, -1998f, -1275f), vec4<f32>(1575f, -436f, 2237f, 176f), vec4<f32>(-239f, 1213f, 2658f, 838f), vec4<f32>(-253f, -2078f, 1000f, 1000f));

var<private> global4: array<vec4<u32>, 31>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1() -> vec3<i32> {
    let var_0 = !(!vec3<bool>(all(vec4<bool>(false, true, true, true)) == all(vec3<bool>(true, false, true)), any(vec4<bool>(false, false, false, false)), true));
    let var_1 = Struct_1(global2.a, ~((firstTrailingBit(43657u) << (countOneBits(global2.b) % 32u)) & 1u));
    let var_2 = var_1;
    global0 = array<f32, 24>();
    var var_3 = vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + 423f)), _wgslsmith_f_op_f32(f32(-1f) * -1425f), _wgslsmith_f_op_f32(abs(var_1.a.x)));
    return ~(~(-_wgslsmith_add_vec3_i32(vec3<i32>(global1.x, 18598i, 0i), ~vec3<i32>(u_input.b, 90264i, 47134i))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: f32) -> u32 {
    let var_0 = u_input.b;
    var var_1 = arg_1;
    global3 = array<vec4<f32>, 15>();
    let var_2 = all(select(vec4<bool>(!all(vec3<bool>(true, false, false)), all(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true)), !any(vec3<bool>(true, false, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), 4294967295u == var_1.b), vec4<bool>(true, true, true, true), any(vec3<bool>(false, false, false)) & true), vec4<bool>(true, true, _wgslsmith_f_op_f32(f32(-1f) * -911f) <= _wgslsmith_f_op_f32(global2.a.x - 796f), any(vec2<bool>(true, false)))));
    global4 = array<vec4<u32>, 31>();
    return firstLeadingBit(_wgslsmith_sub_u32(1u, global2.b));
}

fn func_4(arg_0: Struct_1) -> vec3<i32> {
    global4 = array<vec4<u32>, 31>();
    let var_0 = all(vec2<bool>((2147483647i >= abs(u_input.b)) | any(vec2<bool>(true, true)), _wgslsmith_mod_u32(arg_0.b >> (u_input.a % 32u), arg_0.b ^ global2.b) == 0u));
    global4 = array<vec4<u32>, 31>();
    var var_1 = Struct_1(arg_0.a, firstLeadingBit(1u));
    var var_2 = select(select(select(vec2<bool>(var_0, select(false, var_0, var_0)), vec2<bool>(var_0, true), select(vec2<bool>(var_0, true), !vec2<bool>(false, var_0), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, true), true))), vec2<bool>(true, any(select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), vec2<bool>(var_0, true)))), select(select(vec2<bool>(false, var_0), select(vec2<bool>(true, true), vec2<bool>(false, var_0), false), !vec2<bool>(var_0, var_0)), vec2<bool>(var_0, !var_0), 1u == u_input.a)), !(!select(select(vec2<bool>(true, var_0), vec2<bool>(true, false), vec2<bool>(var_0, var_0)), vec2<bool>(false, var_0), select(vec2<bool>(false, var_0), vec2<bool>(var_0, true), vec2<bool>(var_0, var_0)))), var_0);
    return min(vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-64427i, 2147483647i, 0i, global1.x), ~(-vec4<i32>(-24841i, -35975i, 18007i, global1.x))), ((u_input.b << (global2.b % 32u)) << (~49639u % 32u)) | -40073i, reverseBits(~u_input.b)), countOneBits(select(vec3<i32>(reverseBits(1i), _wgslsmith_mod_i32(u_input.b, -8038i), u_input.b), vec3<i32>(-1i, min(-2147483647i, u_input.b), ~u_input.b), vec3<bool>(all(vec3<bool>(var_2.x, var_2.x, true)), var_0, var_2.x || var_0))));
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(global3[_wgslsmith_index_u32(abs(10009u) << (~u_input.c % 32u), 15u)], global2.a)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(global2.b, 24u)], -537f, 1000f, global0[_wgslsmith_index_u32(1u, 24u)]) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, -623f, global0[_wgslsmith_index_u32(41955u, 24u)], global2.a.x))))), global2.b);
    global1 = func_4(Struct_1(var_0.a, ~func_3(1000f, Struct_1(var_0.a, 4294967295u), vec2<u32>(1u, 67014u), 1092f) & (~global2.b | 4294967295u)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0[_wgslsmith_index_u32(42285u, 24u)], global2.a.x, global2.a.x, 237f), _wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(u_input.c, 15u)]))) - vec4<f32>(_wgslsmith_f_op_f32(-2245f * 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), global0[_wgslsmith_index_u32(36681u & u_input.a, 24u)], var_0.a.x))), ~_wgslsmith_clamp_u32(1u, firstTrailingBit(var_0.b), var_0.b));
    let var_2 = select(vec4<bool>(true, select(any(vec2<bool>(true, true)), true, var_0.b > 4294967295u) || (_wgslsmith_clamp_u32(var_0.b, 0u, global2.b) < var_1.b), true, true), select(vec4<bool>(false, all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false))), all(vec4<bool>(true, true, true, true)), any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), false))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(false, true, true, true)), select(vec4<bool>(all(vec2<bool>(false, true)), false, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true))), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), all(vec2<bool>(false, true))))), !vec4<bool>(!(global1.x != -5491i), false, true, any(vec4<bool>(false, true, false, true))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(global2.a + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(645f, 537f, var_0.a.x, var_0.a.x))))), _wgslsmith_dot_vec2_u32(vec2<u32>(max(_wgslsmith_sub_u32(global2.b, 55093u), min(var_0.b, 4294967295u)), func_3(_wgslsmith_f_op_f32(select(var_0.a.x, -1005f, false)), Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(44517u, 24u)], 1496f, -997f, global0[_wgslsmith_index_u32(u_input.c, 24u)]), var_1.b), vec2<u32>(var_1.b, 1u), _wgslsmith_f_op_f32(173f + 1666f))), ~(vec2<u32>(4294967295u, 1u) ^ vec2<u32>(var_0.b, var_1.b)) & vec2<u32>(44921u, u_input.a)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-154f, var_3.a.x, 636f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(25094u, 24u)])))))), ~_wgslsmith_mult_u32(~30881u, global2.b ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, global2.b, 0u, 14852u), vec4<u32>(u_input.c, 0u, global2.b, var_3.b))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = !select(vec4<bool>(false, false, !all(vec2<bool>(true, false)), !any(vec2<bool>(true, false))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), global1.x > global1.x), all(vec3<bool>(true, true, true)));
    global4 = array<vec4<u32>, 31>();
    var var_1 = _wgslsmith_f_op_f32(floor(arg_0.a.x));
    var var_2 = 855f;
    var var_3 = _wgslsmith_f_op_vec2_f32(arg_0.a.xz + arg_0.a.xz);
    return arg_0;
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> Struct_1 {
    global1 = select(vec3<i32>(-1i, ~_wgslsmith_sub_i32(u_input.b, 12186i) >> ((global2.b ^ _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b, arg_3, arg_3), vec3<u32>(42102u, 1u, 11229u))) % 32u), ~(-u_input.b)), -_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, -11120i, u_input.b), reverseBits(vec3<i32>(u_input.b, 1i, -1i))), vec3<i32>(global1.x, ~(-39215i), min(3449i, u_input.b)), vec3<i32>(-31020i ^ global1.x, max(global1.x, global1.x), ~1i)), all(vec3<bool>(false, any(vec4<bool>(arg_2, true, false, arg_0)), arg_0)));
    global1 = select(_wgslsmith_div_vec3_i32(vec3<i32>(select(countOneBits(u_input.b), global1.x, arg_2), u_input.b, -17464i), max(func_4(Struct_1(vec4<f32>(284f, 962f, 919f, -2219f), arg_1.b)), -countOneBits(vec3<i32>(global1.x, 38867i, 3391i)))), _wgslsmith_mult_vec3_i32(vec3<i32>(global1.x, global1.x, -984i), vec3<i32>(_wgslsmith_add_i32(global1.x, global1.x), select(_wgslsmith_div_i32(0i, global1.x), 1i, true), u_input.b)), true);
    var var_0 = _wgslsmith_mod_u32(50534u, func_5(Struct_1(global3[_wgslsmith_index_u32(arg_1.b, 15u)], 4066u), Struct_1(arg_1.a, firstTrailingBit(func_5(Struct_1(vec4<f32>(global2.a.x, 295f, global0[_wgslsmith_index_u32(4294967295u, 24u)], arg_1.a.x), 1u), arg_1, vec4<i32>(global1.x, global1.x, 14188i, global1.x)).b)), vec4<i32>(global1.x, u_input.b, 1i, ~(-24887i))).b);
    let var_1 = reverseBits(global1.x);
    let var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -(~vec2<i32>(var_1, var_1)), -_wgslsmith_mod_vec2_i32(global1.yz, _wgslsmith_mod_vec2_i32(vec2<i32>(18815i, 22571i), global1.yy))) | vec2<i32>(global1.x, ~u_input.b >> (_wgslsmith_div_u32(global2.b >> (global2.b % 32u), _wgslsmith_mod_u32(4294967295u, u_input.c)) % 32u));
    return Struct_1(vec4<f32>(arg_1.a.x, -546f, _wgslsmith_f_op_f32(926f * arg_1.a.x), global0[_wgslsmith_index_u32(0u, 24u)]), ~_wgslsmith_mult_u32(arg_1.b, 19245u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    global2 = func_6(false, func_5(func_2(vec3<i32>(-48189i, global1.x, 25803i) | -vec3<i32>(-1i, 0i, global1.x), -_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, global1.x), global1.yz), func_1()), func_2(vec3<i32>(global1.x, global1.x, reverseBits(global1.x)), global1.x, vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global1.x), vec2<i32>(0i, global1.x)), u_input.b, _wgslsmith_mult_i32(10365i, -6292i))), countOneBits(~countOneBits(vec4<i32>(4200i, u_input.b, global1.x, -18302i)))), true, u_input.a);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.a.x, global2.a.x, -1000f, 1408f)))))), global2.a, select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), u_input.b >= -2147483647i)))), global2.b);
    let var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(106f - 618f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(333f + global2.a.x) - _wgslsmith_f_op_f32(-1244f - var_1.a.x)))), var_1.a.x, 275f), var_1.b);
    global0 = array<f32, 24>();
    var var_3 = global2.a.x;
    let var_4 = !(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(1019f - var_1.a.x), var_2.a.x, global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 24u)], func_2(vec3<i32>(u_input.b, 2147483647i, u_input.b), -14209i, vec3<i32>(u_input.b, global1.x, -5067i)).a.x), var_1.a)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1076f, global0[_wgslsmith_index_u32(4294967295u, 24u)], -945f, -121f), global3[_wgslsmith_index_u32(u_input.a, 15u)])), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(var_1.a, global3[_wgslsmith_index_u32(var_2.b, 15u)])), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-248f, var_1.a.x, 577f, var_2.a.x), vec4<f32>(global2.a.x, var_2.a.x, -1648f, 390f), false)))))), _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(-1i, u_input.b) >> (~u_input.a % 32u), _wgslsmith_clamp_i32(max(global1.x, u_input.b), u_input.b, global1.x)), func_1().x), vec3<u32>(~(~4773u ^ (var_2.b >> (global2.b % 32u))), min(25977u, 4294967295u), 1u));
}

