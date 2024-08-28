struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(false, false, true, false, true, false, false, true, false, true, false, false, false, true, false, true, false, true, false, false, true);

var<private> global1: array<u32, 6> = array<u32, 6>(16981u, 34708u, 115892u, 39819u, 1u, 56320u);

var<private> global2: u32 = 0u;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_div_i32(-37626i, 1i);
    global2 = 9227u;
    let var_1 = u_input.d;
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -107f), -1398f) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1875f, -243f), vec2<f32>(230f, -890f), vec2<bool>(global0[_wgslsmith_index_u32(3088u, 21u)], global0[_wgslsmith_index_u32(52578u, 21u)]))) - _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -123f), vec2<f32>(807f, -921f)))))));
    var var_3 = !(!vec2<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(6691u, 21u)], false)), global0[_wgslsmith_index_u32(u_input.d, 21u)]));
    return Struct_1(vec4<f32>(-1907f, _wgslsmith_f_op_f32(1147f + _wgslsmith_f_op_f32(f32(-1f) * -392f)), _wgslsmith_f_op_f32(exp2(var_2.x)), _wgslsmith_div_f32(905f, 1000f)), vec4<u32>(4294967295u, 77967u, 4294967295u, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(4294967295u ^ global1[_wgslsmith_index_u32(0u, 6u)], _wgslsmith_add_u32(1u, 73212u)))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> u32 {
    let var_0 = -32691i;
    let var_1 = _wgslsmith_clamp_i32(firstLeadingBit(reverseBits(~(23822i << (u_input.b.x % 32u)))), u_input.a.x, ~abs(var_0));
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_add_u32(63040u, u_input.d), 3608u);
    global2 = _wgslsmith_dot_vec4_u32(vec4<u32>(abs(77617u), _wgslsmith_dot_vec3_u32(vec3<u32>(49911u, u_input.b.x, 45407u), abs(vec3<u32>(arg_1.b.x, 1u, 1u))) | 37703u, (max(u_input.b.x, 4856u) & _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(4475u, 6u)], 387u)) ^ 41819u, _wgslsmith_add_u32(~(~arg_1.b.x), 1u | u_input.d)), ~vec4<u32>(max(var_2, func_1().b.x), _wgslsmith_div_u32(u_input.d | 0u, 35297u), 4294967295u, abs(abs(4294967295u))));
    let var_3 = _wgslsmith_f_op_vec4_f32(arg_0 + _wgslsmith_f_op_vec4_f32(arg_0 - vec4<f32>(func_1().a.x, -1050f, arg_0.x, arg_1.a.x)));
    return _wgslsmith_clamp_u32(func_1().b.x, global1[_wgslsmith_index_u32(_wgslsmith_div_u32((4294967295u & select(var_2, global1[_wgslsmith_index_u32(u_input.d, 6u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2, 6u)], 21u)])) << (_wgslsmith_mult_u32(countOneBits(u_input.b.x), global1[_wgslsmith_index_u32(var_2, 6u)]) % 32u), ~abs(global1[_wgslsmith_index_u32(u_input.b.x, 6u)])), 6u)], ~(global1[_wgslsmith_index_u32(min(1u, ~0u), 6u)] << (36632u % 32u)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = ~(~arg_0.b.x) & func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(arg_0.a * arg_1.a), _wgslsmith_f_op_vec4_f32(arg_1.a + arg_2)))), arg_1);
    let var_1 = arg_0;
    global0 = array<bool, 21>();
    let var_2 = Struct_1(vec4<f32>(1f, 1f, 1f, 1f), arg_1.b);
    var var_3 = Struct_1(vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(exp2(arg_1.a.x))), 1110f, _wgslsmith_f_op_f32(func_1().a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)))), var_1.b);
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec3<f32> {
    var var_0 = func_2(func_1(), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1411f, arg_1.a.x, arg_0.a.x, arg_0.a.x)) - arg_1.a) + vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(select(-258f, arg_0.a.x, false)), arg_0.a.x, _wgslsmith_f_op_f32(arg_0.a.x + -994f))), ~vec4<u32>(~30101u, _wgslsmith_dot_vec4_u32(arg_1.b, arg_1.b), arg_0.b.x, ~u_input.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_0.a, arg_1.a, all(vec2<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7344u, 6u)], 21u)], global0[_wgslsmith_index_u32(arg_0.b.x, 21u)])))), arg_0.a)));
    return _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.a.x), -270f, true)), _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(-1000f + -540f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + _wgslsmith_f_op_f32(select(-1051f, 2710f, global0[_wgslsmith_index_u32(4294967295u, 21u)])))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.a.x, -1725f, -1246f), arg_0.a.wwy)), var_0.a.wxy)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, var_0.a.x, -1247f) * arg_1.a.wxw) + arg_1.a.zyy))))));
}

fn func_5(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    global1 = array<u32, 6>();
    let var_0 = -626f;
    var var_1 = vec4<i32>(max(select(-2147483647i, ~_wgslsmith_mod_i32(u_input.c.x, u_input.a.x), any(vec2<bool>(true, true))), ~(i32(-1i) * -66640i)), -u_input.c.x, _wgslsmith_sub_i32(-2147483647i, reverseBits(abs(-2147483647i))), u_input.c.x);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(f32(-1f) * -1443f))))), _wgslsmith_f_op_f32(1377f + var_0));
    let var_3 = arg_2;
    return func_2(func_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_3.a)), _wgslsmith_f_op_vec4_f32(-var_3.a)), ~_wgslsmith_add_vec4_u32(var_3.b, vec4<u32>(arg_2.b.x, u_input.b.x, var_3.b.x, 4294967295u))), func_2(func_1(), func_2(func_2(Struct_1(var_3.a, vec4<u32>(31229u, arg_2.b.x, arg_2.b.x, 91911u)), Struct_1(arg_2.a, vec4<u32>(global1[_wgslsmith_index_u32(0u, 6u)], arg_2.b.x, arg_2.b.x, u_input.b.x)), arg_2.a), func_1(), _wgslsmith_f_op_vec4_f32(-arg_2.a)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1058f, arg_0.x, 1052f, arg_2.a.x)))))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_vec3_f32(func_4(Struct_1(arg_2.a, var_3.b), var_3, u_input.b.x)).x, arg_1, _wgslsmith_f_op_f32(round(-993f)), _wgslsmith_f_op_f32(f32(-1f) * -651f))))), func_2(arg_2, var_3, var_3.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-251f - -1234f), -381f, _wgslsmith_f_op_f32(min(arg_1, 1000f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_3.a)) * _wgslsmith_div_vec4_f32(var_3.a, vec4<f32>(var_3.a.x, var_3.a.x, var_0, 1028f))))), var_3.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 21>();
    global1 = array<u32, 6>();
    global0 = array<bool, 21>();
    var var_0 = func_5(_wgslsmith_f_op_vec3_f32(func_4(func_2(func_1(), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-234f, 858f, -604f, -382f))), _wgslsmith_mod_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(28757u, 6u)], 1u, 4294967295u, u_input.d), vec4<u32>(1u, u_input.b.x, 1u, 0u))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1504f, -705f, 116f, -1433f))))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1399f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 130f, _wgslsmith_f_op_f32(trunc(889f))), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, u_input.b.x, u_input.b.x, 1u), vec4<u32>(4294967295u, 61875u, global1[_wgslsmith_index_u32(24301u, 6u)], u_input.b.x)), ~vec4<u32>(48633u, 89723u, 0u, 0u))), _wgslsmith_dot_vec4_u32(select(_wgslsmith_mod_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(48358u, 6u)], 0u, u_input.d, 0u), vec4<u32>(4294967295u, u_input.d, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 6u)], 6u)], 6u)], u_input.b.x)), ~vec4<u32>(global1[_wgslsmith_index_u32(19123u, 6u)], 1u, 36772u, global1[_wgslsmith_index_u32(20235u, 6u)]), any(vec4<bool>(global0[_wgslsmith_index_u32(8225u, 21u)], global0[_wgslsmith_index_u32(66697u, 21u)], false, true))), _wgslsmith_div_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], 14278u, 1u, u_input.b.x), min(vec4<u32>(1u, 0u, u_input.b.x, u_input.d), vec4<u32>(3992u, 1u, 0u, global1[_wgslsmith_index_u32(31105u, 6u)])))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(520f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-592f - 538f)))))), Struct_1(vec4<f32>(-1590f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1690f * 490f) + _wgslsmith_f_op_f32(1344f * 1794f)), 616f, -852f), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, global1[_wgslsmith_index_u32(4294967295u, 6u)], 34356u, 0u), vec4<u32>(1u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(6002u, 6u)], 6u)], 4294967295u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 6u)], 6u)], global1[_wgslsmith_index_u32(0u, 6u)], 1u, 38821u)) << (~select(vec4<u32>(u_input.b.x, 7286u, 22104u, global1[_wgslsmith_index_u32(4294967295u, 6u)]), vec4<u32>(u_input.b.x, 0u, 73340u, 29840u), vec4<bool>(global0[_wgslsmith_index_u32(36483u, 21u)], global0[_wgslsmith_index_u32(1u, 21u)], true, false)) % vec4<u32>(32u))));
    var var_1 = vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 21u)], !(!(!global0[_wgslsmith_index_u32(0u, 21u)])));
    let var_2 = vec2<bool>(var_0.a.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a.x))), global0[_wgslsmith_index_u32(1u, 21u)]);
    let var_3 = var_0.a.wy;
    let var_4 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -645f) + 253f)), _wgslsmith_f_op_f32(ceil(var_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + -1000f)))), func_1().b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-var_0.a), countOneBits(select(u_input.a.x, -u_input.a.x, all(vec4<bool>(global0[_wgslsmith_index_u32(var_0.b.x, 21u)], var_2.x, global0[_wgslsmith_index_u32(var_4.b.x, 21u)], true)))));
}

