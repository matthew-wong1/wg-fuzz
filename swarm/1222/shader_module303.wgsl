struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 17> = array<vec4<u32>, 17>(vec4<u32>(45165u, 35057u, 1u, 33870u), vec4<u32>(4294967295u, 0u, 0u, 70815u), vec4<u32>(1u, 4294967295u, 12869u, 22798u), vec4<u32>(0u, 0u, 28252u, 8586u), vec4<u32>(1u, 4294967295u, 4294967295u, 0u), vec4<u32>(0u, 1u, 38078u, 1u), vec4<u32>(1u, 83339u, 86u, 7539u), vec4<u32>(37263u, 0u, 41781u, 4294967295u), vec4<u32>(42232u, 1778u, 4294967295u, 4294967295u), vec4<u32>(56962u, 39212u, 4294967295u, 29052u), vec4<u32>(9925u, 4294967295u, 0u, 70739u), vec4<u32>(53386u, 0u, 52560u, 1585u), vec4<u32>(0u, 23783u, 22422u, 0u), vec4<u32>(0u, 43572u, 21207u, 50351u), vec4<u32>(1u, 28301u, 1u, 0u), vec4<u32>(4757u, 49808u, 68868u, 4294967295u), vec4<u32>(11712u, 0u, 6557u, 4294967295u));

var<private> global1: bool = false;

var<private> global2: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = true;
    let var_1 = select(false, all(vec4<bool>(true, false, true, false)), false);
    global0 = array<vec4<u32>, 17>();
    global1 = !var_1;
    global1 = true;
    return _wgslsmith_f_op_f32(-117f + _wgslsmith_f_op_f32(trunc(arg_0)));
}

fn func_2(arg_0: f32) -> f32 {
    return _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(-848f)), arg_0, all(vec4<bool>(true, all(vec4<bool>(true, false, false, true)), true, true)))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    global0 = array<vec4<u32>, 17>();
    var var_1 = arg_3;
    let var_2 = Struct_1(all(arg_2.yzy), _wgslsmith_f_op_f32(f32(-1f) * -787f), false, !vec2<bool>(!(var_1.b <= var_1.b), any(arg_2.xyw)), 12210u >> (0u % 32u));
    var_1 = Struct_1(arg_2.x, -884f, all(arg_3.d), !select(select(select(arg_0.d, arg_3.d, vec2<bool>(arg_3.d.x, arg_0.c)), select(var_2.d, vec2<bool>(true, false), var_2.c), vec2<bool>(arg_0.c, false)), vec2<bool>(all(arg_2), all(arg_2.xww)), !arg_2.xy), ~(~arg_3.e));
    return arg_3;
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = u_input.a;
    global0 = array<vec4<u32>, 17>();
    global1 = !any(!select(vec4<bool>(true, true, arg_2.a, arg_2.d.x), !vec4<bool>(false, arg_2.c, arg_2.c, arg_2.c), arg_2.d.x | true));
    global2 = u_input.a;
    let var_1 = Struct_1(all(vec2<bool>(arg_2.d.x & false, (arg_1 << (0u % 32u)) <= ~arg_1)), -1646f, !select(true, arg_2.b == _wgslsmith_f_op_f32(-2492f * arg_2.b), arg_2.d.x || arg_2.a), !(!select(vec2<bool>(true, arg_2.c), vec2<bool>(true, arg_2.d.x), select(arg_2.d, arg_2.d, vec2<bool>(arg_2.d.x, arg_2.c)))), ~4294967295u);
    return func_4(Struct_1(any(select(!vec3<bool>(var_1.c, false, false), !vec3<bool>(arg_2.a, arg_2.c, arg_2.d.x), select(vec3<bool>(true, arg_2.d.x, false), vec3<bool>(var_1.d.x, arg_2.a, var_1.a), vec3<bool>(arg_2.c, arg_2.d.x, true)))), _wgslsmith_f_op_f32(func_2(-1112f)), select(false, var_1.c, all(vec4<bool>(arg_2.a, true, false, var_1.a))), var_1.d, var_0), min(_wgslsmith_add_i32(arg_0.x, 33748i), 1i) ^ _wgslsmith_div_i32(-arg_1, firstTrailingBit(abs(2731i))), !select(!vec4<bool>(true, false, var_1.c, var_1.a), select(select(vec4<bool>(true, var_1.c, arg_2.c, arg_2.a), vec4<bool>(true, arg_2.d.x, false, true), arg_2.c), vec4<bool>(arg_2.d.x, var_1.a, false, true), vec4<bool>(false, var_1.a, true, var_1.d.x)), !select(vec4<bool>(arg_2.d.x, false, var_1.c, false), vec4<bool>(var_1.d.x, var_1.c, true, true), arg_2.a)), Struct_1(!any(vec4<bool>(arg_2.c, var_1.a, true, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-258f)) - arg_2.b), var_1.b), arg_2.a & !any(vec2<bool>(false, arg_2.a)), var_1.d, ~max(1u, abs(26216u))));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: i32) -> i32 {
    global0 = array<vec4<u32>, 17>();
    let var_0 = vec3<bool>(true, !(!any(vec2<bool>(arg_2.d.x, true))), arg_2.c);
    let var_1 = func_1(_wgslsmith_clamp_vec2_i32(-select(vec2<i32>(arg_3, -2147483647i) & vec2<i32>(arg_3, arg_3), -vec2<i32>(-22907i, arg_3), !arg_2.d), ~_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_3, arg_3), vec2<i32>(arg_3, -2147483647i)), ~vec2<i32>(arg_3, arg_3)), _wgslsmith_add_vec2_i32(vec2<i32>(0i, ~arg_3), max(-vec2<i32>(2147483647i, arg_3), ~vec2<i32>(-30913i, arg_3)))), i32(-1i) * -arg_3, func_4(func_1(vec2<i32>(-arg_3, ~arg_3), reverseBits(-32866i), func_4(func_4(Struct_1(true, arg_2.b, var_0.x, vec2<bool>(arg_2.a, true), 13566u), 2147483647i, vec4<bool>(arg_2.a, true, true, arg_2.d.x), Struct_1(true, arg_2.b, arg_2.a, arg_2.d, arg_1.x)), min(25365i, 1i), select(vec4<bool>(arg_2.d.x, var_0.x, var_0.x, false), vec4<bool>(false, false, true, false), vec4<bool>(var_0.x, var_0.x, arg_2.a, true)), func_4(arg_2, arg_3, vec4<bool>(false, arg_2.a, var_0.x, var_0.x), Struct_1(false, arg_2.b, false, arg_2.d, 64915u)))), firstLeadingBit(-26290i), vec4<bool>(true, any(vec4<bool>(true, true, false, false)), select(true, arg_2.a, true), all(!vec4<bool>(false, true, var_0.x, var_0.x))), arg_2));
    global0 = array<vec4<u32>, 17>();
    var var_2 = Struct_1(var_1.d.x, _wgslsmith_f_op_f32(-var_1.b), true && !all(var_0.yx), vec2<bool>(false, !(arg_2.b >= _wgslsmith_f_op_f32(func_2(arg_2.b)))), ~_wgslsmith_sub_u32(_wgslsmith_add_u32(arg_2.e, abs(0u)), ~var_1.e));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_div_i32(-1i, ~0i) << (u_input.a % 32u);
    global1 = all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(false, false, true)), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))))) || true;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2091f, -215f)))))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(select(314f, -1204f, true)), -961f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1793f, 657f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(691f, -155f) * vec2<f32>(1005f, -335f))), true))));
    var var_2 = ~select(-reverseBits(reverseBits(vec2<i32>(-1i, 2147483647i))), -firstLeadingBit(vec2<i32>(-1i, 2147483647i)), select(select(false, true, false) & false, true, ~0u < u_input.a));
    var var_3 = var_2.x;
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.x, -919f)) + _wgslsmith_f_op_f32(max(-1000f, 624f))))), var_1.x, 494f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1070f, var_1.x, 1237f) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1689f, 1349f, var_1.x)))))));
    var_2 = vec2<i32>(countOneBits(max(var_2.x, func_5(vec2<u32>(u_input.a, 24028u), ~vec2<u32>(4294967295u, u_input.a), func_1(vec2<i32>(var_2.x, var_2.x), var_2.x, Struct_1(true, -280f, true, vec2<bool>(false, true), 0u)), _wgslsmith_sub_i32(28037i, var_2.x)))), var_2.x);
    let var_5 = ~select(vec2<u32>(u_input.a & u_input.a, u_input.a ^ u_input.a) << (~(vec2<u32>(59963u, 4294967295u) | vec2<u32>(1u, u_input.a)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(0u, u_input.a), 115817u), _wgslsmith_mod_u32(1u, u_input.a)), !(true && any(vec4<bool>(true, true, true, false))));
    var var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_4.x));
}

