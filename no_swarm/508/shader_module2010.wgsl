struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: i32,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<bool, 31> = array<bool, 31>(false, false, false, false, true, true, true, false, true, false, false, true, true, false, true, true, true, true, true, true, true, false, false, false, true, true, true, false, false, true, true);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> bool {
    var var_0 = Struct_2(733f, u_input.b.x, ~0i, true, vec3<bool>(false, true, global0.e.x));
    let var_1 = var_0.e;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1386f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * -1000f))))));
    let var_3 = -vec2<i32>(-1i, min(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 0i, arg_0.x, 15425i), arg_0), _wgslsmith_mod_i32(_wgslsmith_sub_i32(var_0.c, arg_0.x), 30910i)));
    global1 = array<bool, 31>();
    return false;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: Struct_2) -> bool {
    var var_0 = -563f;
    let var_1 = select(vec4<bool>(arg_0.e.x, false, arg_0.d, !(global1[_wgslsmith_index_u32(arg_2.b, 31u)] & global1[_wgslsmith_index_u32(arg_3.b, 31u)]) || true), !vec4<bool>(!global0.d, any(!vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 31u)])), func_3(-vec4<i32>(-2147483647i, u_input.c, 2147483647i, 1i), Struct_1(arg_0.e.x)), !global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, 4294967295u), 31u)]), select(vec4<bool>(_wgslsmith_mod_u32(26182u, arg_0.b) <= arg_2.b, true, true, global1[_wgslsmith_index_u32(~64372u, 31u)]), !select(vec4<bool>(true, arg_3.e.x, arg_2.e.x, true), vec4<bool>(global1[_wgslsmith_index_u32(arg_0.b, 31u)], global1[_wgslsmith_index_u32(1u, 31u)], global0.e.x, false), !arg_3.d), false));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, -795f));
    var var_2 = ~arg_3.b;
    global1 = array<bool, 31>();
    return all(!(!var_1));
}

fn func_4(arg_0: Struct_1) -> f32 {
    global1 = array<bool, 31>();
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(620f + _wgslsmith_f_op_f32(-750f + global0.a)))), u_input.b.x ^ _wgslsmith_mult_u32(u_input.b.x, ~(~1u)), i32(-1i) * -(~u_input.d), all(!(!(!vec3<bool>(true, arg_0.a, global1[_wgslsmith_index_u32(global0.b, 31u)])))), select(!(!(!global0.e)), vec3<bool>(all(vec3<bool>(true, arg_0.a, true)), !any(global0.e.yy), all(select(global0.e.yx, global0.e.yy, global0.e.yx))), vec3<bool>(all(select(vec4<bool>(global0.e.x, global0.e.x, false, true), vec4<bool>(true, global0.e.x, global1[_wgslsmith_index_u32(63385u, 31u)], arg_0.a), global1[_wgslsmith_index_u32(92081u, 31u)])), global1[_wgslsmith_index_u32(0u, 31u)], !global0.d && true)));
    global1 = array<bool, 31>();
    var var_0 = firstLeadingBit(min(select(abs(~vec3<u32>(global0.b, 1u, 16074u)), ~u_input.b, global0.e), _wgslsmith_add_vec3_u32(~u_input.b, _wgslsmith_add_vec3_u32(select(vec3<u32>(46684u, 26012u, 41727u), u_input.b, true), ~u_input.b))));
    global1 = array<bool, 31>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -464f));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_2 {
    let var_0 = ~10302u;
    var var_1 = Struct_1(false);
    var var_2 = vec2<f32>(-2266f, global0.a);
    let var_3 = global0.e;
    var var_4 = arg_1;
    return arg_2;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: u32, arg_3: f32) -> Struct_2 {
    global1 = array<bool, 31>();
    var var_0 = func_5(vec3<f32>(_wgslsmith_f_op_f32(func_4(Struct_1(func_2(Struct_2(1392f, 4294967295u, -1i, false, vec3<bool>(arg_0.x, global0.e.x, true)), vec2<f32>(-167f, arg_3), Struct_2(1000f, arg_2, global0.c, global1[_wgslsmith_index_u32(19643u, 31u)], vec3<bool>(false, false, true)), Struct_2(773f, global0.b, -22601i, true, global0.e))))), _wgslsmith_div_f32(-507f, -775f), 347f), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * _wgslsmith_div_f32(arg_3, 301f))), _wgslsmith_sub_u32(_wgslsmith_add_u32(arg_2, _wgslsmith_clamp_u32(arg_1.x, 0u, 37543u)), _wgslsmith_mult_u32(u_input.b.x, ~1u)), global0.c, !(!arg_0.x || true), global0.e), Struct_2(-239f, _wgslsmith_dot_vec2_u32(arg_1.zy, arg_1.xx), _wgslsmith_div_i32(firstTrailingBit(-17237i), _wgslsmith_div_i32(countOneBits(global0.c), 3355i)), true, global0.e), vec4<u32>(u_input.b.x, ~(~(~1u)), 20882u, arg_2));
    var_0 = Struct_2(_wgslsmith_f_op_f32(arg_3 + global0.a), _wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(arg_2), 82062u, arg_2), u_input.b), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.c, -global0.c, _wgslsmith_sub_i32(u_input.c, -64129i), abs(-1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, global0.c, -2147483647i, 8905i), abs(vec4<i32>(var_0.c, global0.c, u_input.a, -1i)))), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(var_0.c, global0.c, u_input.c, 1i)) | abs(vec4<i32>(28249i, -1i, 2147483647i, -34186i)), countOneBits(vec4<i32>(-5905i, 2147483647i, 1626i, global0.c)))), !(!func_3(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.c, 0i, u_input.c, var_0.c), vec4<i32>(-21980i, var_0.c, -46689i, -34349i)), Struct_1(false))), global0.e);
    global0 = func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(min(-899f, -1086f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1250f, global0.a, global0.a)))), vec3<f32>(func_5(vec3<f32>(608f, arg_3, global0.a), Struct_2(523f, 0u, 17325i, false, var_0.e), Struct_2(-1196f, 1u, u_input.c, global1[_wgslsmith_index_u32(1u, 31u)], vec3<bool>(var_0.e.x, false, false)), vec4<u32>(4294967295u, 32886u, arg_1.x, 1u)).a, _wgslsmith_f_op_f32(func_4(Struct_1(false))), _wgslsmith_f_op_f32(f32(-1f) * -1130f)))), Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * arg_3)), var_0.a)), 0u | arg_1.x, -1i, global0.d, func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(338f, 582f, 244f) + vec3<f32>(arg_3, 166f, -1357f))), func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-624f, -1587f, arg_3)), Struct_2(global0.a, u_input.b.x, 4932i, global0.e.x, arg_0), Struct_2(-1041f, global0.b, 43611i, global1[_wgslsmith_index_u32(4294967295u, 31u)], vec3<bool>(false, false, arg_0.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_0.b, 1u, 17310u), vec4<u32>(1u, global0.b, 0u, global0.b))), func_5(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_3, arg_3, var_0.a))), func_5(vec3<f32>(439f, -514f, 349f), Struct_2(750f, 35728u, 2147483647i, false, arg_0), Struct_2(global0.a, 34918u, 2147483647i, var_0.d, global0.e), vec4<u32>(8345u, 4294967295u, 1u, var_0.b)), func_5(vec3<f32>(1000f, 663f, -1398f), Struct_2(-1379f, 4294967295u, -2147483647i, arg_0.x, arg_0), Struct_2(656f, 0u, 55401i, global1[_wgslsmith_index_u32(arg_1.x, 31u)], vec3<bool>(false, var_0.e.x, false)), vec4<u32>(arg_2, 0u, arg_1.x, 31411u)), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.b, var_0.b, 21317u, global0.b), vec4<u32>(global0.b, 0u, 4294967295u, 4294967295u))).e), Struct_2(arg_3, _wgslsmith_add_u32(0u, abs(u_input.b.x)), reverseBits(-2147483647i), !global1[_wgslsmith_index_u32(arg_1.x, 31u)], var_0.e), vec4<u32>(~_wgslsmith_sub_u32(0u, firstTrailingBit(1u)), u_input.b.x, _wgslsmith_mod_u32(_wgslsmith_mod_u32(~u_input.b.x, firstLeadingBit(arg_2)), firstLeadingBit(abs(var_0.b))), _wgslsmith_add_u32(~46525u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(72712u, 33061u, 0u, global0.b), vec4<u32>(0u, var_0.b, var_0.b, u_input.b.x)))));
    var var_1 = func_5(vec3<f32>(func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(237f, 162f, -2428f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(498f, 1382f, 125f), vec3<f32>(-190f, arg_3, 109f), global1[_wgslsmith_index_u32(2153u, 31u)]))), func_5(vec3<f32>(-1516f, 1195f, 398f), func_5(vec3<f32>(-1070f, -1180f, arg_3), Struct_2(var_0.a, u_input.b.x, global0.c, arg_0.x, vec3<bool>(true, false, true)), Struct_2(global0.a, 0u, -21410i, true, arg_0), vec4<u32>(0u, var_0.b, u_input.b.x, arg_2)), Struct_2(379f, 24245u, u_input.d, true, arg_0), vec4<u32>(4294967295u, 0u, 56905u, 12610u)), Struct_2(966f, _wgslsmith_dot_vec3_u32(vec3<u32>(33094u, 4294967295u, arg_1.x), vec3<u32>(0u, var_0.b, 100989u)), -1i, true, vec3<bool>(false, false, false)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.b, global0.b, 4294967295u, arg_2), vec4<u32>(104185u, u_input.b.x, 38252u, arg_2))).a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(174f + arg_3))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3)))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a * arg_3))) + func_5(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-114f, -408f, var_0.a))), Struct_2(var_0.a, 32975u, 1i, global1[_wgslsmith_index_u32(4294967295u, 31u)], vec3<bool>(var_0.d, global1[_wgslsmith_index_u32(global0.b, 31u)], true)), Struct_2(314f, 92332u, u_input.d, true, vec3<bool>(arg_0.x, true, global1[_wgslsmith_index_u32(arg_1.x, 31u)])), ~vec4<u32>(1u, 26663u, arg_1.x, 137700u)).a), 62257u, u_input.c, -_wgslsmith_sub_i32(var_0.c, -1i) != func_5(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.a, 1291f, -388f))), Struct_2(637f, arg_1.x, global0.c, true, vec3<bool>(false, global1[_wgslsmith_index_u32(arg_2, 31u)], false)), Struct_2(var_0.a, 0u, 1i, true, vec3<bool>(false, false, false)), vec4<u32>(var_0.b, var_0.b, 61564u, 28689u) | vec4<u32>(29605u, var_0.b, var_0.b, arg_1.x)).c, select(select(select(vec3<bool>(var_0.d, global0.d, false), var_0.e, vec3<bool>(false, var_0.d, global1[_wgslsmith_index_u32(1u, 31u)])), global0.e, !vec3<bool>(global0.d, true, global0.e.x)), arg_0, vec3<bool>(true, true, true))), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1078f), arg_1.x, i32(-1i) * -2147483647i, select(var_0.e.x, any(vec3<bool>(false, false, false)), global0.e.x), !select(vec3<bool>(true, global0.e.x, false), select(vec3<bool>(true, arg_0.x, false), vec3<bool>(true, false, false), arg_0), global0.e)), ~countOneBits(vec4<u32>(arg_2, u_input.b.x, arg_2, arg_2) >> (max(vec4<u32>(17936u, 0u, 1u, global0.b), vec4<u32>(26616u, var_0.b, 0u, arg_1.x)) % vec4<u32>(32u)))).e.xz;
    return func_5(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-380f, var_0.a, global0.a), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(770f, global0.a, 950f)))), any(!vec4<bool>(var_1.x, false, false, false)))))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -406f))) + _wgslsmith_f_op_f32(1f + 528f)), var_0.b, u_input.a, !(arg_1.x >= 71333u) | !(arg_3 == 1252f), select(vec3<bool>(var_0.d, false, true), var_0.e, arg_0.x)), func_5(vec3<f32>(_wgslsmith_f_op_f32(837f * -522f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.a, arg_3))), -749f), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a - var_0.a) - global0.a), 64548u, ~(u_input.c >> (u_input.b.x % 32u)), true, global0.e), func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.a, arg_3, global0.a)))), func_5(vec3<f32>(1172f, 141f, -214f), func_5(vec3<f32>(var_0.a, 1497f, arg_3), Struct_2(global0.a, 0u, u_input.a, false, global0.e), Struct_2(-447f, 78499u, -1i, var_0.e.x, var_0.e), vec4<u32>(74191u, global0.b, 1u, global0.b)), func_5(vec3<f32>(1323f, var_0.a, 1261f), Struct_2(var_0.a, var_0.b, 14396i, arg_0.x, arg_0), Struct_2(arg_3, var_0.b, var_0.c, var_0.e.x, arg_0), vec4<u32>(global0.b, 8676u, 0u, arg_1.x)), abs(vec4<u32>(0u, arg_2, 57843u, 4294967295u))), func_5(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.a, global0.a, -840f))), Struct_2(arg_3, 78533u, var_0.c, true, global0.e), func_5(vec3<f32>(-261f, -668f, 796f), Struct_2(arg_3, 19453u, global0.c, false, var_0.e), Struct_2(-1163f, arg_2, -44756i, false, vec3<bool>(false, true, var_1.x)), vec4<u32>(u_input.b.x, 50009u, arg_1.x, var_0.b)), ~vec4<u32>(66082u, 53688u, 61238u, global0.b)), vec4<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, 58676u, 4294967295u), vec4<u32>(37155u, arg_2, global0.b, 4294967295u)), global0.b, ~var_0.b)), vec4<u32>(0u, _wgslsmith_add_u32(max(arg_2, var_0.b), u_input.b.x), ~(var_0.b & arg_2), arg_1.x)), vec4<u32>(_wgslsmith_div_u32(1u >> (min(global0.b, 50084u) % 32u), firstTrailingBit(~u_input.b.x)), 0u, arg_2, ~u_input.b.x));
}

fn func_6(arg_0: Struct_2) -> Struct_2 {
    global1 = array<bool, 31>();
    global1 = array<bool, 31>();
    global0 = Struct_2(-513f, u_input.b.x, 1i, global0.c != -1i, !global0.e);
    global1 = array<bool, 31>();
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_add_u32(global0.b, 69963u << (u_input.b.x % 32u)), u_input.b.x);
    return func_5(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-892f * -553f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.a, -773f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, arg_0.a, arg_0.a) - vec3<f32>(global0.a, 909f, arg_0.a))) * vec3<f32>(-1402f, -1875f, 1338f))), arg_0, Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + arg_0.a))), var_0, 10976i, !func_2(Struct_2(1282f, u_input.b.x, 1i, global1[_wgslsmith_index_u32(arg_0.b, 31u)], arg_0.e), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-428f, global0.a))), Struct_2(-1000f, var_0, global0.c, false, vec3<bool>(global1[_wgslsmith_index_u32(arg_0.b, 31u)], global1[_wgslsmith_index_u32(10512u, 31u)], true)), arg_0), arg_0.e), vec4<u32>(27997u, _wgslsmith_add_u32(65364u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.b.x), vec3<u32>(global0.b, 4294967295u, 1u))), ~46462u, ~3373u >> (0u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 31>();
    global0 = func_6(func_1(!(!(!global0.e)), _wgslsmith_mod_vec3_u32(u_input.b, ~vec3<u32>(global0.b, 18725u, global0.b)), u_input.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -530f)))));
    global0 = Struct_2(global0.a, 4294967295u, -55522i << (func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(332f, global0.a, 534f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, 946f, global0.a))), func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(611f, 780f, -173f)), Struct_2(-1888f, 37542u, global0.c, global1[_wgslsmith_index_u32(u_input.b.x, 31u)], vec3<bool>(true, global0.e.x, global1[_wgslsmith_index_u32(global0.b, 31u)])), Struct_2(849f, 4294967295u, global0.c, true, vec3<bool>(false, global0.d, global0.d)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, global0.b, global0.b, 1u), vec4<u32>(60303u, 82480u, 4294967295u, 1u))), Struct_2(_wgslsmith_f_op_f32(862f + -1000f), ~61065u, ~9403i, global1[_wgslsmith_index_u32(~4294967295u, 31u)], global0.e), select(vec4<u32>(0u, 636u, u_input.b.x, global0.b) | vec4<u32>(71027u, 4294967295u, 1u, 1u), ~vec4<u32>(0u, u_input.b.x, 96254u, 1u), true)).b % 32u), global1[_wgslsmith_index_u32(u_input.b.x, 31u)], func_1(vec3<bool>(all(func_1(global0.e, u_input.b, 0u, global0.a).e), true, true), ~max(reverseBits(vec3<u32>(u_input.b.x, 0u, 91001u)), u_input.b), 1u, _wgslsmith_f_op_f32(func_4(Struct_1(true)))).e);
    global1 = array<bool, 31>();
    let var_0 = func_3(vec4<i32>(i32(-1i) * -(u_input.a << (0u % 32u)), max(~1i, u_input.d), global0.c, -86137i), Struct_1(func_1(global0.e, ~select(u_input.b, vec3<u32>(global0.b, 1u, 7809u), global0.e), ~(~u_input.b.x), func_1(vec3<bool>(false, true, false), vec3<u32>(global0.b, u_input.b.x, u_input.b.x), 70609u & u_input.b.x, _wgslsmith_f_op_f32(exp2(global0.a))).a).e.x));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(select(vec3<i32>(global0.c, 43162i, u_input.c), vec3<i32>(1i, global0.c, -6892i), global0.e), countOneBits(vec3<i32>(global0.c, u_input.a, 57997i))), vec3<i32>(u_input.c, global0.c, global0.c & global0.c)), func_6(Struct_2(1245f, func_6(func_5(vec3<f32>(-1347f, 1895f, global0.a), Struct_2(1306f, 29024u, 0i, global0.e.x, vec3<bool>(global0.d, global0.e.x, true)), Struct_2(global0.a, 75691u, global0.c, true, global0.e), vec4<u32>(4294967295u, u_input.b.x, global0.b, 84545u))).b, u_input.c, !(global0.b < 235u), vec3<bool>(!global0.d, !global0.d, var_0))).a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.a * 247f))))), _wgslsmith_f_op_f32(-global0.a)));
}

