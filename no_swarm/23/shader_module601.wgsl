struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(vec4<bool>(true, true, true, true)), Struct_2(vec4<bool>(false, true, true, true)), Struct_2(vec4<bool>(true, false, true, true)), Struct_2(vec4<bool>(true, false, true, false)), Struct_2(vec4<bool>(false, false, false, true)));

var<private> global1: array<i32, 21>;

var<private> global2: array<i32, 28>;

var<private> global3: array<bool, 6>;

var<private> global4: u32 = 4294967295u;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1() -> Struct_2 {
    let var_0 = -19929i;
    return global0[_wgslsmith_index_u32(4294967295u, 5u)];
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    var var_0 = Struct_2(func_1().a);
    global2 = array<i32, 28>();
    global1 = array<i32, 21>();
    var var_1 = global0[_wgslsmith_index_u32(0u, 5u)];
    global0 = array<Struct_2, 5>();
    return _wgslsmith_clamp_i32(firstLeadingBit(-(~(-36917i))) & global2[_wgslsmith_index_u32(~firstTrailingBit(max(u_input.a.x, u_input.a.x)), 28u)], -_wgslsmith_add_i32(~(~global1[_wgslsmith_index_u32(u_input.a.x, 21u)]), _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(22245u, 28u)], -global1[_wgslsmith_index_u32(u_input.a.x, 21u)])), min(~(~u_input.c) ^ -global2[_wgslsmith_index_u32(69767u, 28u)], 1i));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    var var_0 = func_3(vec4<bool>(0i <= (58571i ^ ~global1[_wgslsmith_index_u32(u_input.a.x, 21u)]), all(!vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 6u)], arg_0.a.x)), _wgslsmith_f_op_f32(trunc(314f)) == 261f, true));
    let var_1 = arg_0;
    let var_2 = -(vec4<i32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(61565u | u_input.a.x, ~11482u), 21u)], min(_wgslsmith_mod_i32(0i, global1[_wgslsmith_index_u32(4294967295u, 21u)]), max(-28191i, u_input.b)), -1i, 2147483647i) | _wgslsmith_sub_vec4_i32(~(-vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], global2[_wgslsmith_index_u32(u_input.a.x, 28u)], 0i, global1[_wgslsmith_index_u32(u_input.a.x, 21u)])), ~min(vec4<i32>(1i, 10074i, global2[_wgslsmith_index_u32(49970u, 28u)], 1i), vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 28u)], u_input.c, global2[_wgslsmith_index_u32(4294967295u, 28u)], -1i))));
    global4 = _wgslsmith_add_u32(u_input.a.x, ~4294967295u);
    var var_3 = !(_wgslsmith_dot_vec2_u32(vec2<u32>(~69615u, 11631u), ~u_input.a) > ~(~u_input.a.x ^ _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)));
    return global0[_wgslsmith_index_u32(4294967295u, 5u)];
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(countOneBits(~(~1u) | (1u | ~(~u_input.a.x))), 28u)];
    var var_1 = arg_0;
    global4 = arg_1;
    var var_2 = func_1();
    var var_3 = _wgslsmith_f_op_f32(988f * 156f);
    return arg_1;
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: i32) -> u32 {
    global1 = array<i32, 21>();
    let var_0 = Struct_1(firstTrailingBit(-(vec4<i32>(-41662i, global2[_wgslsmith_index_u32(2398u, 28u)], arg_2, -2147483647i) ^ vec4<i32>(-1i, global1[_wgslsmith_index_u32(u_input.a.x, 21u)], -2147483647i, global2[_wgslsmith_index_u32(4294967295u, 28u)])) ^ -_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -925i, -35456i, 0i), vec4<i32>(u_input.c, arg_2, 1i, global1[_wgslsmith_index_u32(0u, 21u)]))));
    var var_1 = ~vec3<i32>(54781i, 0i, arg_2 ^ 6507i);
    let var_2 = !(false || !global3[_wgslsmith_index_u32(arg_0, 6u)]);
    global3 = array<bool, 6>();
    return ~arg_0;
}

fn func_6(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: f32) -> Struct_1 {
    global2 = array<i32, 28>();
    let var_0 = select(!(~24183u >= ~u_input.a.x) & true, any(select(vec3<bool>(true, false, true), arg_0.a.xzx, false)), !(184f < _wgslsmith_f_op_f32(-1463f * _wgslsmith_f_op_f32(abs(arg_2)))));
    let var_1 = arg_2;
    var var_2 = 1983u;
    var var_3 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1, _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))), vec2<f32>(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1507f) - _wgslsmith_f_op_f32(arg_2 * -1000f)))), false));
    return Struct_1(select(vec4<i32>(-global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), 21u)], _wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(0u, 28u)], u_input.c, global1[_wgslsmith_index_u32(20215u, 21u)], 13661i), firstLeadingBit(vec4<i32>(1i, 0i, 2147483647i, 1i))), reverseBits(_wgslsmith_div_i32(-2147483647i, 55026i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, -48405i, global2[_wgslsmith_index_u32(u_input.a.x, 28u)]), -vec4<i32>(global2[_wgslsmith_index_u32(1u, 28u)], u_input.c, -38197i, u_input.b))), ~countOneBits(vec4<i32>(global1[_wgslsmith_index_u32(8856u, 21u)], -49185i, 0i, global1[_wgslsmith_index_u32(u_input.a.x, 21u)]) & vec4<i32>(5938i, -1i, -36239i, global1[_wgslsmith_index_u32(65452u, 21u)])), select(func_2(Struct_2(vec4<bool>(true, false, true, false))).a, func_1().a, arg_0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = firstLeadingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(select(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), reverseBits(vec3<u32>(51128u, 28054u, 93810u)), global3[_wgslsmith_index_u32(~3368u, 6u)]), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 0u) | vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(4294967295u, 101921u, 23686u) ^ vec3<u32>(u_input.a.x, 26279u, u_input.a.x))), reverseBits(~u_input.a.x & ~u_input.a.x)));
    global1 = array<i32, 21>();
    global1 = array<i32, 21>();
    global0 = array<Struct_2, 5>();
    var var_0 = func_6(global0[_wgslsmith_index_u32(func_5(func_4(func_2(func_1()), 59547u >> (~u_input.a.x % 32u)), Struct_2(select(!vec4<bool>(false, global3[_wgslsmith_index_u32(9327u, 6u)], false, global3[_wgslsmith_index_u32(26089u, 6u)]), func_1().a, global3[_wgslsmith_index_u32(~u_input.a.x, 6u)])), 17890i), 5u)], select(func_2(func_1()).a.xz, !func_2(global0[_wgslsmith_index_u32(u_input.a.x, 5u)]).a.yw, !func_2(Struct_2(vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.a.x, 6u)], global3[_wgslsmith_index_u32(40994u, 6u)], global3[_wgslsmith_index_u32(0u, 6u)]))).a.zx), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1000f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -113f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-291f - -1482f), _wgslsmith_f_op_f32(-465f - 191f))), 454f, true)), 563f, global3[_wgslsmith_index_u32(u_input.a.x, 6u)])), ~(select(vec3<u32>(4294967295u, 20470u, u_input.a.x), ~vec3<u32>(u_input.a.x, 8482u, 0u), true) | ~(vec3<u32>(0u, 1u, u_input.a.x) ^ vec3<u32>(1u, 4294967295u, u_input.a.x))), 732f);
}

