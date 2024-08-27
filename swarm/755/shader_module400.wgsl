struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = Struct_3(reverseBits(firstLeadingBit(vec4<i32>(u_input.c, reverseBits(2147483647i), select(1i, u_input.c, true), u_input.c))));
    return _wgslsmith_f_op_f32(round(-926f));
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(114f + _wgslsmith_f_op_f32(func_3())), -691f)))), true, vec2<i32>(firstTrailingBit(u_input.c), 0i));
    var var_1 = select(!vec2<bool>(any(vec4<bool>(var_0.b, var_0.b, false, false)), false), !vec2<bool>(!(!var_0.b), any(!vec3<bool>(var_0.b, true, true))), vec2<bool>(false, !all(select(vec4<bool>(true, false, var_0.b, var_0.b), vec4<bool>(false, var_0.b, var_0.b, false), vec4<bool>(var_0.b, true, true, false)))));
    let var_2 = _wgslsmith_mult_vec4_i32(-_wgslsmith_sub_vec4_i32(-arg_0.a, ~(~vec4<i32>(var_0.c.x, u_input.c, u_input.c, -1i))), ~abs(arg_0.a));
    return Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(285f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-426f - var_0.a) - _wgslsmith_f_op_f32(var_0.a * -812f))))), any(!select(vec3<bool>(var_0.b, var_1.x, false), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_0.b, true, false), vec3<bool>(true, var_0.b, var_0.b)), vec3<bool>(var_1.x, false, false))), vec2<i32>(var_2.x, _wgslsmith_add_i32(arg_0.a.x, -2147483647i)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32) -> vec2<u32> {
    var var_0 = u_input.b;
    var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_div_u32(arg_2, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, arg_2), vec2<u32>(20706u, arg_2))), _wgslsmith_dot_vec2_u32(~u_input.b, u_input.b)) << (_wgslsmith_add_vec2_u32(countOneBits(~vec2<u32>(var_0.x, 35003u)), vec2<u32>(var_0.x >> (27571u % 32u), 73275u)) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(u_input.b, u_input.b));
    var_0 = min(_wgslsmith_add_vec2_u32(u_input.b, ~abs(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, 4294967295u), u_input.b))), ~vec2<u32>(1u, _wgslsmith_dot_vec2_u32(u_input.b, u_input.b)));
    var_0 = vec2<u32>(var_0.x ^ ~90145u, 4294967295u);
    var var_1 = u_input.c;
    return u_input.b;
}

fn func_1() -> i32 {
    var var_0 = vec2<u32>(0u, ~6995u);
    let var_1 = var_0.x;
    var_0 = func_4(Struct_3(_wgslsmith_sub_vec4_i32(firstLeadingBit(firstLeadingBit(vec4<i32>(u_input.c, 35907i, 1i, u_input.c))), ~(vec4<i32>(-35869i, u_input.c, 3746i, u_input.c) | vec4<i32>(u_input.c, -22384i, u_input.c, 2147483647i)))), func_2(Struct_3(vec4<i32>(-1i, abs(u_input.c), abs(-14543i), i32(-1i) * -86916i))), 4294967295u);
    return min(-45993i, u_input.c);
}

fn func_5(arg_0: Struct_3, arg_1: vec3<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(454f * -2106f), _wgslsmith_f_op_f32(f32(-1f) * -235f), 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(852f, -490f, -893f) + vec3<f32>(-127f, 318f, -744f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-450f, -1194f, -2175f)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(823f, -1283f, -720f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(254f, 1000f, -457f) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(104f, 634f, 330f))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(325f, 427f)), _wgslsmith_f_op_f32(f32(-1f) * -644f), -1000f))));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1408f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2052f) + _wgslsmith_div_f32(1847f, var_0.x))), _wgslsmith_f_op_f32(591f - 296f), 1f));
    let var_1 = var_0.xz;
    let var_2 = arg_0;
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1126f, var_1.x)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1024f, -1456f, var_1.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1009f, 685f, var_0.x) - vec3<f32>(390f, 1334f, -1090f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(538f, var_0.x, -1475f) + vec3<f32>(518f, var_1.x, 371f)))))), _wgslsmith_div_vec3_f32(vec3<f32>(1156f, _wgslsmith_f_op_f32(select(413f, var_0.x, true)), -1000f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, -393f), vec3<f32>(-335f, -1902f, -943f), false)) - vec3<f32>(var_0.x, var_0.x, var_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(237f, 1017f, 3581f) * vec3<f32>(607f, var_0.x, -942f))), select(select(false, false, false), false, true)))));
    return Struct_2(-_wgslsmith_dot_vec3_i32(select(vec3<i32>(arg_0.a.x, u_input.c, -38851i), ~vec3<i32>(-40221i, 0i, 3781i), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), firstTrailingBit(arg_1)), vec3<i32>(0i, -(~var_2.a.x), min(_wgslsmith_sub_i32(countOneBits(-27826i), ~u_input.c), u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_3(vec4<i32>(select(func_1(), abs(u_input.c), func_2(Struct_3(vec4<i32>(-25973i, u_input.c, u_input.c, u_input.c))).b), u_input.c, -u_input.c & -1i, -2147483647i)), _wgslsmith_clamp_vec3_i32(countOneBits(-vec3<i32>(u_input.c, u_input.c, u_input.c)), vec3<i32>(~(-2147483647i), u_input.c << (u_input.a % 32u), u_input.c), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-22908i, u_input.c, 1i), vec3<i32>(u_input.c, u_input.c, u_input.c)), vec3<i32>(26357i, u_input.c, u_input.c))) & vec3<i32>(_wgslsmith_mod_i32(-1i, u_input.c >> (70494u % 32u)), u_input.c, u_input.c));
    let var_1 = vec2<bool>(true, !all(vec4<bool>(22209u <= u_input.b.x, all(vec4<bool>(false, false, false, false)), true, false)));
    let var_2 = Struct_3(~_wgslsmith_mod_vec4_i32(vec4<i32>(1i, u_input.c, var_0.b.x, u_input.c) >> (vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 4294967295u) % vec4<u32>(32u)), ~vec4<i32>(-2147483647i, 1i, var_0.a, u_input.c)) & -reverseBits(-vec4<i32>(7473i, var_0.b.x, 1i, var_0.b.x)));
    var var_3 = Struct_1(-358f, !(!(41795u != max(0u, u_input.a))), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, 41646i), vec3<i32>(var_0.b.x, var_0.a, var_0.b.x)), 0i), 2147483647i), vec2<i32>(~(-u_input.c), -1i)));
    var_3 = Struct_1(_wgslsmith_f_op_f32(round(var_3.a)), true, -var_3.c);
    let var_4 = var_2;
    var_3 = Struct_1(534f, any(vec3<bool>(all(select(vec3<bool>(false, false, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, true, false))), true, var_3.a >= var_3.a)), _wgslsmith_div_vec2_i32(var_3.c | min(vec2<i32>(var_3.c.x, var_0.b.x), firstLeadingBit(var_4.a.wx)), -vec2<i32>(1i, u_input.c) << (vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, 1u), vec3<u32>(u_input.b.x, 1u, 5732u)), firstTrailingBit(22765u)) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(var_2.a, vec4<i32>(9242i & var_0.b.x, _wgslsmith_clamp_i32(var_4.a.x << (4294967295u % 32u), 2147483647i ^ u_input.c, var_2.a.x << (4294967295u % 32u)), -_wgslsmith_mult_i32(var_0.a, var_3.c.x), countOneBits(32312i))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(322f, var_3.a, var_3.a, 1387f)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1060f, 493f, -1152f, var_3.a), vec4<f32>(1000f, var_3.a, var_3.a, 251f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(368f, var_3.a, var_3.a, 997f)))))), firstTrailingBit(-var_2.a) | var_4.a, select(vec3<u32>(u_input.b.x, select(~8802u, u_input.a | u_input.b.x, 663f <= var_3.a), _wgslsmith_clamp_u32(4294967295u, 6763u, u_input.a) & firstTrailingBit(u_input.b.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, ~70287u, 6191u), countOneBits(~vec3<u32>(10615u, 1u, 4294967295u))), true), _wgslsmith_f_op_vec3_f32(vec3<f32>(1286f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.a), _wgslsmith_div_f32(708f, var_3.a))), _wgslsmith_f_op_f32(-var_3.a)) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1611f), 492f, 647f)));
}

