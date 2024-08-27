struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 23>;

var<private> global1: array<i32, 11>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32) -> u32 {
    global1 = array<i32, 11>();
    var var_0 = vec2<bool>(true && any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), true), arg_0 <= 56164u)), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(894f * 662f)) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(624f, 1000f))))));
    global1 = array<i32, 11>();
    let var_1 = Struct_4(vec3<f32>(1f, 1f, 1f), Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(498f, -131f, -643f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-764f, -775f, 1000f) + vec3<f32>(-1625f, -1038f, 858f)))))), Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-176f - 412f), -748f, _wgslsmith_f_op_f32(ceil(-1240f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2033f, 1932f, 585f) + vec3<f32>(1243f, 108f, 1051f))), vec3<bool>(true & var_0.x, true, true)))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(22062u, arg_0), 11u)] & u_input.a.x);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1492f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -507f))), -761f, 1124f);
    return 102u;
}

fn func_2(arg_0: i32) -> vec2<bool> {
    global0 = array<vec3<bool>, 23>();
    global0 = array<vec3<bool>, 23>();
    let var_0 = abs(func_3(~1u));
    global1 = array<i32, 11>();
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1667f))))), 1745f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-660f, 1300f)))))));
    return vec2<bool>(true, !(!all(vec3<bool>(true, true, true))));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32) -> Struct_3 {
    var var_0 = select(!vec2<bool>(abs(u_input.a.x) == ~global1[_wgslsmith_index_u32(arg_1, 11u)], false), func_2(_wgslsmith_add_i32(min(global1[_wgslsmith_index_u32(0u, 11u)], global1[_wgslsmith_index_u32(arg_1, 11u)]) ^ _wgslsmith_div_i32(7894i, -42429i), 43005i >> (~arg_1 % 32u))), any(vec4<bool>(true, any(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(30041u, arg_1), 23u)]), true, true)));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(arg_0)), _wgslsmith_f_op_vec3_f32(-arg_0))) * vec3<f32>(_wgslsmith_div_f32(arg_0.x, -1027f), 1452f, _wgslsmith_f_op_f32(abs(-1125f))))));
    let var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~_wgslsmith_mult_vec3_i32(~u_input.a, u_input.a), ~reverseBits(vec3<i32>(global1[_wgslsmith_index_u32(arg_1, 11u)], -1i, 29766i))), u_input.a);
    global1 = array<i32, 11>();
    var var_3 = -393f;
    return Struct_3(var_1.a);
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_3, arg_3: Struct_4) -> Struct_1 {
    var var_0 = !all(select(global0[_wgslsmith_index_u32(abs(1u), 23u)], select(!global0[_wgslsmith_index_u32(27737u, 23u)], vec3<bool>(true, true, true), true), vec3<bool>(all(vec2<bool>(true, true)), func_2(global1[_wgslsmith_index_u32(21568u, 11u)]).x, true)));
    global0 = array<vec3<bool>, 23>();
    global1 = array<i32, 11>();
    var_0 = true;
    var var_1 = !any(vec2<bool>(false, true));
    return arg_2.a;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(min(-483f, _wgslsmith_f_op_f32(-arg_1.d.x)));
    var var_1 = all(vec3<bool>(false, true, (func_3(21769u) > 52421u) & false));
    let var_2 = reverseBits(~(-_wgslsmith_div_i32(global1[_wgslsmith_index_u32(25703u, 11u)], -2147483647i)) >> ((1u >> (_wgslsmith_div_u32(1u, ~1u) % 32u)) % 32u));
    let var_3 = arg_0.a;
    var_1 = true;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_3(func_4(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1531f, 1000f, 2270f) + vec3<f32>(-1516f, 1796f, 325f)))), _wgslsmith_f_op_f32(-304f - 1000f), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-527f, -584f, 610f)), _wgslsmith_mod_u32(28215u, 80744u)), Struct_4(vec3<f32>(274f, -1869f, 970f), Struct_3(Struct_1(vec3<f32>(-2333f, 154f, 947f))), Struct_1(vec3<f32>(-1602f, -1022f, 633f)), _wgslsmith_sub_i32(2147483647i, u_input.a.x)))), Struct_2(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1662f, 1000f, -337f) * vec3<f32>(321f, -701f, 669f)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2692f, -1000f, 1000f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(978f)))), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 463f, -409f)), ~9803u), Struct_4(vec3<f32>(-461f, -260f, -1402f), func_1(vec3<f32>(-238f, -849f, -1689f), 4294967295u), func_1(vec3<f32>(831f, 608f, 1000f), 1u).a, _wgslsmith_mult_i32(0i, global1[_wgslsmith_index_u32(1u, 11u)]))), func_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(825f, -143f, -305f))), vec3<f32>(353f, -336f, -1201f), global1[_wgslsmith_index_u32(16928u, 11u)] > -2147483647i)), -1269f, func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1317f, 1000f)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(6913u, 31364u, 1u))), Struct_4(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-235f, -795f, -1194f), vec3<f32>(3082f, 371f, 730f))), Struct_3(Struct_1(vec3<f32>(214f, -1431f, -2182f))), Struct_1(vec3<f32>(-1738f, -346f, 1956f)), -2147483647i)), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-485f, 682f, -1000f)), _wgslsmith_clamp_u32(1u, 17616u, 4294967295u)).a, vec3<f32>(-348f, 162f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(154f, -1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, 1934f))))))), _wgslsmith_add_i32(2147483647i | _wgslsmith_sub_i32(u_input.a.x, 2147483647i), ~_wgslsmith_mult_i32(-u_input.a.x, 76842i)));
    let var_1 = Struct_3(func_5(func_1(vec3<f32>(_wgslsmith_f_op_f32(-1000f * 321f), -268f, var_0.a.a.x), _wgslsmith_sub_u32(22098u, 1u) << (0u % 32u)), func_5(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-819f, var_0.c.a.x, -265f)), max(1u, 1u)), Struct_2(var_0.b, var_0.a, Struct_1(var_0.c.a), _wgslsmith_f_op_vec3_f32(-var_0.b.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.c.a.yx, vec2<f32>(1542f, -949f), vec2<bool>(true, true))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1883f, 117f))), ~global1[_wgslsmith_index_u32(27265u, 11u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.a.xx) - vec2<f32>(123f, var_0.d.x))), i32(-1i) * -63115i).b);
    global1 = array<i32, 11>();
    global1 = array<i32, 11>();
    global0 = array<vec3<bool>, 23>();
    let var_2 = abs(~vec3<u32>(~4294967295u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 33534u), vec2<u32>(4556u, 14850u)), 4294967295u));
    let var_3 = 803f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(100929u, ~_wgslsmith_add_u32(1u, 1u), ~max(20774u, 1u), firstLeadingBit(var_2.x)) ^ vec4<u32>(~var_2.x, _wgslsmith_sub_u32(var_2.x & 1u, var_2.x), 4294967295u, 4294967295u ^ _wgslsmith_clamp_u32(var_2.x, 23950u, var_2.x)), firstLeadingBit(countOneBits(~vec4<i32>(1i, u_input.a.x, 8487i, 2147483647i))), ~var_2.x, _wgslsmith_sub_vec2_u32(var_2.zz, _wgslsmith_mod_vec2_u32(var_2.xy, ~max(var_2.yx, var_2.zx))));
}

