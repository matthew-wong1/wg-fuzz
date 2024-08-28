struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec3<f32>,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(-717f, -1143f), vec2<u32>(58773u, 19715u));

var<private> global2: f32;

var<private> global3: array<Struct_3, 23>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    var var_0 = 1u;
    let var_1 = -vec3<i32>(1i ^ u_input.a.x, global0[_wgslsmith_index_u32(u_input.b.x, 9u)], -2147483647i);
    global0 = array<i32, 9>();
    global3 = array<Struct_3, 23>();
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-global1.a.x)))) * vec2<f32>(192f, global1.a.x)), u_input.b.yz);
    return (true != any(vec3<bool>(global1.b.x <= global1.b.x, all(vec4<bool>(false, false, false, false)), true))) | true;
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_2, arg_3: Struct_3) -> Struct_1 {
    var var_0 = !select(any(!select(vec3<bool>(false, arg_3.a, false), vec3<bool>(arg_3.a, false, true), false)), true, false);
    var var_1 = ~arg_3.e;
    global1 = Struct_1(global1.a, ~arg_3.d.c.b);
    var var_2 = arg_2;
    var var_3 = vec3<bool>((func_3() || !arg_3.a) | (~arg_3.e == 0i), arg_2.a, false);
    return Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(536f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-173f - 1000f)))))), vec2<u32>(~1u, 0u));
}

fn func_4(arg_0: vec2<u32>, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, 1295f, 387f))))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.a.x, arg_3.a.x, _wgslsmith_f_op_f32(step(arg_3.a.x, _wgslsmith_f_op_f32(f32(-1f) * -506f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1745f, -1717f, 192f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(219f, global1.a.x, 2067f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, 1420f, arg_3.a.x)))), select(vec3<bool>(false, arg_1 && arg_1, false), !(!vec3<bool>(arg_1, true, true)), !(!arg_1))))));
    let var_1 = func_2(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.x, -1434f))), _wgslsmith_f_op_f32(select(-1485f, _wgslsmith_div_f32(-679f, _wgslsmith_f_op_f32(abs(-957f))), ~24069i >= u_input.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1272f, _wgslsmith_f_op_f32(global1.a.x + -1795f))), _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(-1271f - global1.a.x))))), global1.a.x, Struct_2(false, vec2<f32>(-392f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, 1675f)))), arg_3), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(~reverseBits(u_input.b)), firstLeadingBit(firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(6118u, 33107u, arg_0.x), u_input.b)))), 23u)]);
    global3 = array<Struct_3, 23>();
    var var_2 = -395f;
    var_2 = global1.a.x;
    return func_2(var_0, _wgslsmith_f_op_f32(round(func_2(var_0, _wgslsmith_div_f32(-2665f, _wgslsmith_f_op_f32(-562f + global1.a.x)), Struct_2(false, _wgslsmith_f_op_vec2_f32(-arg_3.a), var_1), global3[_wgslsmith_index_u32(func_2(var_0, _wgslsmith_f_op_f32(round(702f)), Struct_2(arg_1, global1.a, arg_3), Struct_3(true, -626f, vec3<f32>(768f, arg_3.a.x, 1489f), Struct_2(arg_1, vec2<f32>(957f, 1174f), Struct_1(vec2<f32>(arg_3.a.x, -389f), vec2<u32>(92987u, arg_3.b.x))), 4359i)).b.x, 23u)]).a.x)), Struct_2(!(true || arg_1), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_0.xz - var_1.a))), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, global1.a.x, 1091f)))), _wgslsmith_div_f32(-769f, _wgslsmith_f_op_f32(-arg_3.a.x)), Struct_2(global1.a.x > -812f, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, arg_3.a.x) * vec2<f32>(548f, var_0.x)), func_2(vec3<f32>(1000f, 1235f, 575f), -1316f, Struct_2(arg_1, vec2<f32>(892f, 1388f), Struct_1(global1.a, arg_3.b)), global3[_wgslsmith_index_u32(0u, 23u)])), global3[_wgslsmith_index_u32(~0u, 23u)])), global3[_wgslsmith_index_u32(3923u, 23u)]);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: i32) -> Struct_2 {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_1.a.x, -1116f)), _wgslsmith_f_op_f32(func_2(vec3<f32>(global1.a.x, 142f, arg_1.a.x), global1.a.x, Struct_2(true, vec2<f32>(global1.a.x, global1.a.x), arg_1), Struct_3(true, global1.a.x, vec3<f32>(arg_1.a.x, -1157f, arg_1.a.x), Struct_2(true, arg_1.a, arg_1), arg_2)).a.x * _wgslsmith_f_op_f32(step(arg_1.a.x, _wgslsmith_f_op_f32(select(-575f, arg_1.a.x, false))))))) + -483f);
    let var_0 = Struct_2(!all(vec3<bool>(true, all(vec2<bool>(true, false)), all(vec3<bool>(false, false, true)))), vec2<f32>(312f, _wgslsmith_f_op_f32(floor(-549f))), Struct_1(_wgslsmith_f_op_vec2_f32(-global1.a), vec2<u32>(arg_1.b.x, 109337u)));
    global3 = array<Struct_3, 23>();
    global1 = arg_1;
    var var_1 = var_0.a;
    return Struct_2(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.a))) - var_0.c.a), func_2(vec3<f32>(global1.a.x, var_0.b.x, _wgslsmith_f_op_f32(-var_0.c.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1000f, -393f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-112f)) * _wgslsmith_f_op_f32(global1.a.x - global1.a.x)))), var_0, global3[_wgslsmith_index_u32(arg_0, 23u)]));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3, arg_2: f32) -> Struct_2 {
    let var_0 = vec2<i32>(_wgslsmith_add_i32(2147483647i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, 1i, 22515i, arg_1.e), _wgslsmith_add_vec4_i32(vec4<i32>(arg_1.e, 2147483647i, u_input.a.x, arg_1.e), vec4<i32>(global0[_wgslsmith_index_u32(arg_1.d.c.b.x, 9u)], 33120i, 17112i, u_input.a.x))), select(u_input.a.x, global0[_wgslsmith_index_u32(global1.b.x, 9u)] << (global1.b.x % 32u), 1u == arg_0.c.b.x))), _wgslsmith_dot_vec4_i32(abs(select(vec4<i32>(u_input.a.x, 35944i, -10879i, global0[_wgslsmith_index_u32(global1.b.x, 9u)]), ~vec4<i32>(0i, global0[_wgslsmith_index_u32(arg_0.c.b.x, 9u)], 2147483647i, 64156i), arg_1.d.a)), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(global0[_wgslsmith_index_u32(u_input.d, 9u)], global0[_wgslsmith_index_u32(57431u, 9u)], arg_1.e, -13783i)) & (vec4<i32>(-2147483647i, 0i, -1i, global0[_wgslsmith_index_u32(global1.b.x, 9u)]) ^ vec4<i32>(2147483647i, u_input.a.x, 0i, 24007i)), vec4<i32>(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(1u, 9u)], -2147483647i), -55730i, -1i, select(u_input.a.x, global0[_wgslsmith_index_u32(global1.b.x, 9u)], false)))));
    global3 = array<Struct_3, 23>();
    var var_1 = global3[_wgslsmith_index_u32(~reverseBits(_wgslsmith_mult_u32(1u, 82166u)), 23u)];
    var var_2 = arg_1.d;
    return Struct_2(all(select(!(!vec4<bool>(true, false, true, var_2.a)), !select(vec4<bool>(arg_0.a, var_1.a, arg_0.a, false), vec4<bool>(arg_1.a, false, true, true), vec4<bool>(arg_0.a, true, var_2.a, true)), false)), arg_1.c.xx, func_4(var_2.c.b, ~firstTrailingBit(1982u) < 4294967295u, _wgslsmith_sub_i32(-1i, u_input.a.x), arg_0.c));
}

fn func_7(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    var var_0 = -vec3<i32>(_wgslsmith_dot_vec4_i32(~(vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 9u)], u_input.a.x, 1i, -23210i) | vec4<i32>(28837i, u_input.a.x, global0[_wgslsmith_index_u32(arg_0.c.b.x, 9u)], u_input.a.x)), vec4<i32>(92063i, u_input.a.x, firstLeadingBit(0i), -15234i)), ~(~_wgslsmith_add_i32(global0[_wgslsmith_index_u32(0u, 9u)], 2147483647i)), abs(-_wgslsmith_add_i32(u_input.a.x, u_input.a.x)));
    var var_1 = arg_1;
    var_0 = vec3<i32>(firstLeadingBit(max(firstTrailingBit(-22555i), select(1i, var_0.x, true))), -max(-min(var_0.x, global0[_wgslsmith_index_u32(1u, 9u)]), u_input.a.x), var_0.x);
    global3 = array<Struct_3, 23>();
    var_0 = vec3<i32>(1i, _wgslsmith_sub_i32(select(-5239i, ~var_0.x | 17326i, all(!vec4<bool>(arg_1.a, var_1.a, false, true))), ~(-countOneBits(-4i))), ~var_0.x);
    return arg_0.c;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: bool, arg_3: u32) -> Struct_1 {
    var var_0 = global1.a.x;
    let var_1 = _wgslsmith_clamp_i32(-(~(-arg_0.x) << (44513u % 32u)), -(_wgslsmith_dot_vec3_i32(~vec3<i32>(-63992i, -20192i, arg_0.x), ~vec3<i32>(-25921i, global0[_wgslsmith_index_u32(1u, 9u)], 27296i)) << (~_wgslsmith_sub_u32(u_input.c, u_input.c) % 32u)), 3779i);
    return func_7(func_6(func_5(global1.b.x | u_input.d, func_4(~vec2<u32>(1u, 25137u), arg_2 | false, 2147483647i, func_2(vec3<f32>(1789f, global1.a.x, global1.a.x), global1.a.x, Struct_2(true, global1.a, Struct_1(global1.a, vec2<u32>(0u, 1u))), global3[_wgslsmith_index_u32(global1.b.x, 23u)])), i32(-1i) * -var_1), Struct_3(true, global1.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-419f, 411f, -703f)), func_5(arg_3, Struct_1(vec2<f32>(global1.a.x, 247f), u_input.b.yy), -arg_0.x), reverseBits(select(-2147483647i, var_1, false))), 1802f), Struct_2(true, vec2<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global1.a.x, global1.a.x), _wgslsmith_f_op_f32(255f * 119f)))), Struct_1(global1.a, u_input.b.zz)), _wgslsmith_f_op_f32(-global1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_3, 23>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global1.a + global1.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-524f, global1.a.x))))))), global1.b);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -632f));
    global3 = array<Struct_3, 23>();
    var var_2 = select(true, true, true);
    var var_3 = func_1(_wgslsmith_add_vec2_i32(vec2<i32>(abs(1i), u_input.a.x), u_input.a), firstLeadingBit(vec3<u32>(~countOneBits(var_0.b.x), reverseBits(_wgslsmith_mod_u32(u_input.d, global1.b.x)), ~global1.b.x)), true || (u_input.b.x > ~0u), _wgslsmith_dot_vec2_u32(global1.b, u_input.b.zx));
    var_2 = func_5(_wgslsmith_mod_u32(_wgslsmith_add_u32(34416u, func_4(var_3.b, true, global0[_wgslsmith_index_u32(~75105u, 9u)], Struct_1(vec2<f32>(-1074f, var_1.x), vec2<u32>(0u, var_0.b.x))).b.x), _wgslsmith_div_u32((130199u & var_3.b.x) & 36250u, ~0u)), func_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(func_7(Struct_2(false, vec2<f32>(global1.a.x, var_0.a.x), Struct_1(var_1, vec2<u32>(4294967295u, 34714u))), Struct_2(true, vec2<f32>(1419f, 834f), var_0), -807f).a.x, func_4(vec2<u32>(1u, 4294967295u), true, -10308i, var_0).a.x, _wgslsmith_f_op_f32(-757f * global1.a.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.a.x))))), func_6(Struct_2(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.x, global1.a.x)), Struct_1(global1.a, vec2<u32>(var_0.b.x, var_0.b.x))), Struct_3(true, _wgslsmith_f_op_f32(var_1.x + -453f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a.x, var_1.x, -351f) - vec3<f32>(-1000f, var_0.a.x, var_3.a.x)), Struct_2(false, var_1, var_0), max(1i, 1i)), _wgslsmith_f_op_f32(-389f - _wgslsmith_f_op_f32(var_0.a.x - -185f))), global3[_wgslsmith_index_u32(~(~0u), 23u)]), -1i >> (~reverseBits(u_input.b.x & 128560u) % 32u)).a;
    var var_4 = _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(-_wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(0i, -8875i)), u_input.a), -(vec2<i32>(-1i) * -(~u_input.a)), vec2<i32>(-1i, u_input.a.x));
    let var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.a.x, func_2(vec3<f32>(var_0.a.x, var_5.a.x, -1000f), var_3.a.x, Struct_2(false, global1.a, var_5), global3[_wgslsmith_index_u32(54691u, 23u)]).a.x, var_1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-329f, -258f, -1078f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, global1.a.x, 1000f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(var_5.a.x, -336f, -2398f), vec3<f32>(var_1.x, -1193f, -370f)), vec3<f32>(var_0.a.x, var_5.a.x, 1353f), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false))))), vec4<f32>(-814f, global1.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.a.x))))), 883f));
}

