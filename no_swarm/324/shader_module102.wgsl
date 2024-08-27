struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2> = array<f32, 2>(1102f, -1985f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_4) -> vec3<f32> {
    global0 = array<f32, 2>();
    var var_0 = Struct_4(Struct_2(arg_0.b, ~select(arg_0.a.b << (0u % 32u), 3134i, true)), arg_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.b, 2u)]), arg_0.a.a.a), _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_clamp_i32(u_input.c, arg_0.a.b, 7102i)), -14626i) >= (_wgslsmith_clamp_i32(_wgslsmith_sub_i32(arg_0.a.b, -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.d), vec2<i32>(2147483647i, arg_0.a.b)), -11154i) << (_wgslsmith_div_u32(~0u, u_input.b) % 32u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1326f * _wgslsmith_f_op_f32(min(130f, -152f))) - global0[_wgslsmith_index_u32(~u_input.b, 2u)]), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-633f, var_0.a.a.b.x) + var_0.a.a.a), 1f));
    let var_2 = Struct_3(_wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.b, u_input.b, firstTrailingBit(81753u), abs(u_input.b >> (109985u % 32u))), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.b, ~1u), max(_wgslsmith_mod_vec4_u32(vec4<u32>(29841u, u_input.b, u_input.b, 0u), vec4<u32>(u_input.b, u_input.b, u_input.b, 1u)), max(vec4<u32>(u_input.b, u_input.b, u_input.b, 13712u), vec4<u32>(u_input.b, 1u, 96181u, 4294967295u))))), Struct_1(142f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-359f, -248f, _wgslsmith_f_op_f32(max(367f, 1257f)))), true), -vec3<i32>(76328i, firstTrailingBit(var_0.a.b), -3715i << (firstTrailingBit(29839u) % 32u)));
    var_0 = Struct_4(arg_0.a, Struct_1(607f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(arg_0.b.b + var_1), _wgslsmith_f_op_vec3_f32(var_0.a.a.b * vec3<f32>(global0[_wgslsmith_index_u32(var_2.a.x, 2u)], -188f, var_2.b.b.x))))), !arg_0.a.a.c), var_1.x, true);
    return var_1;
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(36607u, 2u)] * _wgslsmith_f_op_f32(2967f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c + -1000f) * -679f))));
    let var_1 = !vec2<bool>(var_0 == arg_1.c, !arg_2);
    let var_2 = _wgslsmith_f_op_vec3_f32(func_3(arg_1));
    global0 = array<f32, 2>();
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_2.x, global0[_wgslsmith_index_u32(0u, 2u)]))));
    return abs(_wgslsmith_mult_i32(max(arg_1.a.b, (arg_1.a.b | -27217i) | u_input.c), -u_input.e.x));
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = vec2<i32>(-(func_2(_wgslsmith_div_u32(6058u, 14360u), Struct_4(Struct_2(Struct_1(-205f, vec3<f32>(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(arg_1, 2u)], -210f), true), u_input.a.x), Struct_1(1000f, vec3<f32>(-750f, arg_2.x, 1935f), false), global0[_wgslsmith_index_u32(1u, 2u)], true), true) << (firstTrailingBit(max(u_input.b, arg_1)) % 32u)), -min(countOneBits(0i), 1i));
    let var_1 = _wgslsmith_mod_i32(-1i, -2147483647i);
    var var_2 = u_input.e.x;
    var_0 = ~arg_0;
    var var_3 = _wgslsmith_f_op_vec3_f32(func_3(Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(arg_2.x * 862f), _wgslsmith_div_vec3_f32(vec3<f32>(-897f, global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(arg_1, 2u)]), vec3<f32>(arg_2.x, global0[_wgslsmith_index_u32(arg_1, 2u)], global0[_wgslsmith_index_u32(0u, 2u)])), true), 38949i), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 2u)] * -562f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-415f, -852f, arg_2.x) * vec3<f32>(arg_2.x, global0[_wgslsmith_index_u32(arg_1, 2u)], -818f)) + vec3<f32>(arg_2.x, arg_2.x, global0[_wgslsmith_index_u32(arg_1, 2u)])), true), _wgslsmith_f_op_f32(-1721f - 361f), true))).x;
    return Struct_1(arg_2.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(682f, -1000f, _wgslsmith_f_op_f32(480f + global0[_wgslsmith_index_u32(0u, 2u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, 1428f, -756f) * vec3<f32>(144f, arg_2.x, arg_2.x))), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(false, true, true), vec3<bool>(false, false, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_4(Struct_2(Struct_1(436f, vec3<f32>(arg_2.x, arg_2.x, 381f), true), -2147483647i), Struct_1(-961f, vec3<f32>(-848f, -807f, arg_2.x), true), 1180f, false)))), select(false, all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true))), any(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true))));
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<f32>) -> i32 {
    let var_0 = func_4(vec2<i32>(_wgslsmith_clamp_i32(func_2(u_input.b, Struct_4(Struct_2(Struct_1(arg_0, arg_2.wxz, false), -6855i), Struct_1(arg_2.x, vec3<f32>(744f, arg_1.x, 736f), true), arg_1.x, true), true), ~u_input.d, 0i | u_input.d), u_input.c) & vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.c, -2147483647i, 1i), -u_input.e), select(~(-50427i), _wgslsmith_div_i32(0i, u_input.a.x), true)), u_input.b, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_2.wz), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1589f, arg_2.x))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_2.zz + arg_1), vec2<f32>(arg_0, arg_2.x), vec2<bool>(false, true)))))));
    return 0i >> (u_input.b % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec4<i32>(~func_1(global0[_wgslsmith_index_u32(u_input.b, 2u)], vec2<f32>(global0[_wgslsmith_index_u32(32803u, 2u)], 1000f), vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(u_input.b, 2u)], global0[_wgslsmith_index_u32(0u, 2u)])), _wgslsmith_clamp_i32(select(u_input.d, min(0i, u_input.c), true), 1i, min(firstLeadingBit(u_input.e.x), u_input.c)), abs(-_wgslsmith_sub_i32(-1i, -41109i)), -1i);
    let var_1 = vec3<bool>((~u_input.b << (u_input.b % 32u)) <= 32295u, false != (all(vec4<bool>(true, true, true, true)) == !all(vec2<bool>(false, true))), !(!all(vec3<bool>(true, true, true))));
    var var_2 = vec4<u32>(u_input.b, u_input.b ^ (select(1u, u_input.b, var_1.x) >> (u_input.b % 32u)), 0u, max(~(~u_input.b), _wgslsmith_sub_u32(4294967295u, _wgslsmith_add_u32(26252u, u_input.b)))) & vec4<u32>(33776u << (firstLeadingBit(4294967295u) % 32u), u_input.b, u_input.b, ~_wgslsmith_add_u32(16102u, u_input.b));
    let var_3 = -135f;
    var_0 = ~(u_input.e | u_input.e);
    var_0 = _wgslsmith_sub_vec4_i32(-(~u_input.e), min(firstTrailingBit(select(vec4<i32>(-37957i, u_input.e.x, -14823i, -43459i), vec4<i32>(-30096i, var_0.x, 0i, u_input.c) ^ u_input.e, false || var_1.x)), ~reverseBits(_wgslsmith_mod_vec4_i32(u_input.e, u_input.e))));
    var var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_3, _wgslsmith_f_op_f32(2239f * 655f)));
    var var_5 = Struct_2(Struct_1(_wgslsmith_f_op_f32(func_4(vec2<i32>(var_0.x, u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, var_2.x, 0u, 31478u), vec4<u32>(4294967295u, var_2.x, u_input.b, u_input.b)), _wgslsmith_f_op_vec2_f32(-var_4.zz)).a * _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.b, 2u)]))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 2u)]))), var_4.x, _wgslsmith_f_op_vec3_f32(func_3(Struct_4(Struct_2(Struct_1(1319f, vec3<f32>(var_4.x, global0[_wgslsmith_index_u32(4294967295u, 2u)], var_4.x), var_1.x), u_input.c), Struct_1(1122f, vec3<f32>(-246f, -977f, global0[_wgslsmith_index_u32(11580u, 2u)]), var_1.x), 1000f, false))).x), true | (abs(var_2.x) <= ~4294967295u)), ~_wgslsmith_mod_i32(0i, 7537i));
    var var_6 = ~(~0u);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_add_vec3_u32(var_2.wzy, select(var_2.xww, ~var_2.yyw, var_0.x < var_5.b))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_5.a.b + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.a.a, var_3, var_3))))), vec3<f32>(var_4.x, var_4.x, _wgslsmith_f_op_f32(sign(-383f))))), var_0.x, var_4.x);
}

