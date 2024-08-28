struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(-169f, 301f, -225f));

var<private> global1: array<f32, 13>;

var<private> global2: bool;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> i32 {
    let var_0 = Struct_1(global0.a);
    global2 = ~_wgslsmith_div_i32(-2147483647i, max(_wgslsmith_dot_vec4_i32(vec4<i32>(-13873i, -1i, 2147483647i, 3173i), vec4<i32>(3696i, 48327i, -4176i, 0i)), -2147483647i)) == -_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-12164i, -19573i), 1i, -2147483647i), vec3<i32>(-2147483647i, -2147483647i, -1i) >> (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u)));
    global2 = any(select(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true))), vec4<bool>(all(vec3<bool>(true, true, true)), all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true))), _wgslsmith_f_op_f32(abs(var_0.a.x)) < _wgslsmith_f_op_f32(step(var_0.a.x, global1[_wgslsmith_index_u32(53096u, 13u)])), any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)))), false));
    let var_1 = all(vec2<bool>(any(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(false, true, false))), true));
    var var_2 = _wgslsmith_div_vec2_f32(global0.a.xx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.x, global0.a.x), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-590f, arg_0))))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global0.a.xy * _wgslsmith_f_op_vec2_f32(vec2<f32>(-540f, -1394f) - arg_1.a))))));
    return -_wgslsmith_div_i32(-firstTrailingBit(~1i), -10751i);
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: vec3<u32>, arg_3: vec3<i32>) -> bool {
    let var_0 = -func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(133f - global1[_wgslsmith_index_u32(1u, 13u)]), _wgslsmith_f_op_f32(step(1087f, -583f)))) - 1000f), Struct_2(global0.a.zx, Struct_1(global0.a), Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1[_wgslsmith_index_u32(117888u, 13u)], -231f, 491f), vec3<f32>(901f, 1008f, 1000f)))), Struct_1(vec3<f32>(114f, -860f, 1104f))));
    var var_1 = Struct_2(_wgslsmith_div_vec2_f32(global0.a.yz, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(19815u, 13u)] * arg_1), 933f), vec2<f32>(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -410f)), true))), Struct_1(global0.a), Struct_1(global0.a), Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-320f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_2.x, 13u)]), arg_1), _wgslsmith_div_vec3_f32(global0.a, vec3<f32>(-619f, arg_1, -539f)), true && any(vec3<bool>(true, false, true))))));
    var var_2 = Struct_1(var_1.c.a);
    var var_3 = vec2<u32>(abs(_wgslsmith_dot_vec3_u32(arg_2, countOneBits(arg_2))), arg_2.x ^ abs(max(1u, 0u >> (u_input.a % 32u))));
    let var_4 = select(select(select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(any(vec2<bool>(false, true)), true), abs(-13262i) == _wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(2147483647i, arg_3.x, -15055i))), vec2<bool>(!any(vec2<bool>(true, true)), true), !select(vec2<bool>(true, false), vec2<bool>(true, false), true)), vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))), !any(vec2<bool>(false, true))), vec2<bool>(true, true));
    return !(arg_2.x <= _wgslsmith_sub_u32(50401u, 21266u));
}

fn func_1() -> f32 {
    var var_0 = u_input.a;
    let var_1 = -49304i;
    global2 = func_2(firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(1i, -2147483647i, var_1), vec3<i32>(max(11732i, var_1), var_1 & 1i, _wgslsmith_add_i32(var_1, var_1)))), 1f, ~firstLeadingBit(reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 39539u, u_input.a)))), vec3<i32>(-3251i, var_1, var_1 | -1i));
    var_0 = u_input.a;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(select(2187f, global0.a.x, false)), global1[_wgslsmith_index_u32(u_input.a, 13u)], _wgslsmith_f_op_f32(global0.a.x + global0.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(110f, 699f, 405f)) - vec3<f32>(1437f, global0.a.x, -545f)))))));
    return _wgslsmith_f_op_f32(-var_2.a.x);
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = u_input.a;
    let var_2 = arg_2;
    global2 = (_wgslsmith_dot_vec2_u32(~vec2<u32>(8146u, u_input.a), ~vec2<u32>(59450u, var_1) >> (vec2<u32>(93969u, u_input.a) % vec2<u32>(32u))) > var_1) != false;
    global2 = all(vec2<bool>(true, !any(!vec2<bool>(arg_0, true))));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), !(u_input.a >= 4294967295u)));
    let var_1 = func_4(any(vec3<bool>(any(vec2<bool>(false, false)), true, true)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1451f) * _wgslsmith_f_op_f32(func_1())))), Struct_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(select(global0.a.x, 1336f, true)), _wgslsmith_f_op_f32(-global0.a.x)), vec2<f32>(_wgslsmith_f_op_f32(-global0.a.x), 1184f))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.a, global0.a, true)))), Struct_1(global0.a), Struct_1(vec3<f32>(-354f, -1389f, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a, 13u)], 419f)))));
    let var_2 = _wgslsmith_sub_i32(-1i, 0i);
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(func_4(true, var_1.a.xz, Struct_2(vec2<f32>(-1149f, global1[_wgslsmith_index_u32(u_input.a, 13u)]), var_1, func_4(false, var_1.a.zy, Struct_2(var_1.a.zy, Struct_1(global0.a), var_1, var_1)), func_4(true, global0.a.zy, Struct_2(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 13u)], 159f), var_1, var_1, var_1)))).a.yy * var_1.a.xz), var_1, var_1, func_4(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, u_input.a, 107475u), _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a)) <= u_input.a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a.yy - global0.a.yx)))), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, -286f) * _wgslsmith_f_op_vec2_f32(ceil(var_1.a.xy))), Struct_1(global0.a), func_4(true, _wgslsmith_f_op_vec2_f32(-var_1.a.yy), Struct_2(vec2<f32>(-696f, 1181f), Struct_1(global0.a), Struct_1(vec3<f32>(var_1.a.x, 1034f, 1131f)), var_1)), Struct_1(_wgslsmith_f_op_vec3_f32(max(var_1.a, vec3<f32>(global0.a.x, 239f, 2223f)))))));
    let var_4 = func_4(!(-1i == var_2), _wgslsmith_div_vec2_f32(global0.a.yx, vec2<f32>(_wgslsmith_div_f32(-491f, _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(-func_4(false, vec2<f32>(global0.a.x, var_3.d.a.x), Struct_2(vec2<f32>(2238f, 635f), var_1, Struct_1(var_3.c.a), Struct_1(vec3<f32>(global0.a.x, var_1.a.x, -556f)))).a.x))), var_3);
    var_0 = select(func_2(-min(vec3<i32>(56422i, var_2, -2147483647i), vec3<i32>(-1i, var_2, 5425i)) << ((_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 67303u, u_input.a), vec3<u32>(0u, u_input.a, 8564u)) ^ ~vec3<u32>(u_input.a, 3240u, 18028u)) % vec3<u32>(32u)), var_1.a.x, min(vec3<u32>(select(34051u, u_input.a, true), 31478u, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(4651u, 57139u, u_input.a) >> (vec3<u32>(9666u, 3013u, 4294967295u) % vec3<u32>(32u)), ~vec3<u32>(u_input.a, 1u, 4294967295u))), vec3<i32>(~_wgslsmith_clamp_i32(-22315i, -31196i, 2147483647i), firstTrailingBit(-2147483647i), -37748i)), any(vec4<bool>(true, true, true, true)), any(select(vec4<bool>(false, any(vec3<bool>(true, false, true)), true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true), vec4<bool>(false, true, true, true))));
    global0 = var_1;
    global1 = array<f32, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(831f, global0.a.x, 134f, var_4.a.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 13u)], 158f, -672f, -1410f))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_4.a.x, var_1.a.x, -1806f, -1941f)))))))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(0u, u_input.a)))) | u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-global0.a.x)), ~vec3<i32>(~29465i, select(var_2, -13094i, u_input.a < u_input.a), _wgslsmith_mult_i32(var_2, firstTrailingBit(0i))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -384f), _wgslsmith_f_op_f32(min(global0.a.x, 114f)), true)) + var_3.d.a.x), _wgslsmith_f_op_f32(-global0.a.x))));
}

