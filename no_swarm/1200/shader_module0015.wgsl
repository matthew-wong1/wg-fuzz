struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<f32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec4<f32>(-114f, 629f, 974f, 728f)), Struct_1(vec4<f32>(-922f, 872f, 1181f, -231f)), Struct_1(vec4<f32>(1121f, 1495f, 637f, -202f)), Struct_1(vec4<f32>(-463f, -149f, -333f, -224f)), Struct_1(vec4<f32>(327f, -482f, -811f, 735f)), Struct_1(vec4<f32>(1687f, -817f, -400f, 1000f)), Struct_1(vec4<f32>(113f, -1361f, -838f, -842f)), Struct_1(vec4<f32>(394f, 1000f, -1795f, -426f)), Struct_1(vec4<f32>(-1981f, 513f, -216f, 708f)), Struct_1(vec4<f32>(-454f, 490f, -572f, 691f)), Struct_1(vec4<f32>(1304f, 830f, -3092f, -620f)), Struct_1(vec4<f32>(1801f, -509f, 1672f, -214f)), Struct_1(vec4<f32>(931f, -698f, -920f, 433f)), Struct_1(vec4<f32>(1998f, 237f, 324f, -1155f)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_3) -> f32 {
    let var_0 = arg_0.a.a;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(sign(1519f))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-338f * arg_0.a.a.x)), arg_0.a.a.x)));
    return -1505f;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32, arg_3: Struct_4) -> vec4<f32> {
    var var_0 = _wgslsmith_div_f32(arg_1.a.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0.a.x, arg_0.a.x)), 995f));
    global0 = array<Struct_1, 14>();
    let var_1 = firstTrailingBit(u_input.c.xy);
    var var_2 = u_input.e.xzy;
    var_2 = ~_wgslsmith_div_vec3_i32(u_input.e.yyy, firstTrailingBit(-vec3<i32>(arg_1.b.x, 0i, 0i)));
    return arg_1.a.a;
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: u32, arg_3: f32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-569f, -399f, arg_1.a.x, -350f)) * _wgslsmith_f_op_vec4_f32(arg_1.b.a + vec4<f32>(arg_3, -887f, 1070f, 777f))) * vec4<f32>(arg_1.b.a.x, arg_3, _wgslsmith_f_op_f32(min(-611f, -1360f)), _wgslsmith_f_op_f32(trunc(-956f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, 1628f, -1458f, arg_3) - vec4<f32>(arg_3, -322f, arg_1.d, -257f))) * arg_1.b.a))));
    global0 = array<Struct_1, 14>();
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(1134f, _wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -418f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1422f)) * -715f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1169f, _wgslsmith_f_op_f32(f32(-1f) * -518f), _wgslsmith_f_op_f32(func_2(Struct_3(arg_1.b, u_input.e))), _wgslsmith_f_op_f32(-arg_3)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(var_0.a), Struct_3(var_0, u_input.e), 1u, Struct_4(vec3<bool>(true, false, true), arg_0))), _wgslsmith_f_op_vec4_f32(arg_1.b.a - vec4<f32>(arg_1.a.x, var_0.a.x, arg_3, 1094f))), false)) + _wgslsmith_f_op_vec4_f32(floor(var_0.a))));
    var var_2 = arg_0;
    global0 = array<Struct_1, 14>();
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec4<f32>(256f, -2797f, arg_1.b.a.x, 500f)), Struct_3(var_0, vec4<i32>(u_input.b, -31727i, 24333i, u_input.b)), arg_2, Struct_4(vec3<bool>(true, false, true), u_input.a))).x), arg_3)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -349f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), arg_1.b.a.x)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: vec2<u32>) -> vec3<bool> {
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    var var_0 = u_input.c.wxw;
    var var_1 = ~(~0u);
    global0 = array<Struct_1, 14>();
    return select(select(select(vec3<bool>(true, arg_2.x == 0u, any(vec4<bool>(true, false, false, true))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, select(true, 1000f >= arg_0.x, true), (u_input.a < 1u) && true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), !select(vec3<bool>(false, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), true & (arg_1 >= u_input.b)), !(!all(vec3<bool>(true, false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(170f)), -525f)), _wgslsmith_f_op_f32(func_1(4294967295u, Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-178f, -607f, 2550f)), Struct_1(vec4<f32>(-1056f, 1263f, 1268f, -184f)), vec3<f32>(-1000f, -211f, 561f), -529f), _wgslsmith_sub_u32(~u_input.a, u_input.a << (55515u % 32u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(400f)), 1000f))))), -abs(countOneBits(-44199i)), u_input.c.zz);
    var_0 = !vec3<bool>(!any(select(vec4<bool>(true, var_0.x, true, false), vec4<bool>(var_0.x, true, false, true), var_0.x)), !(!var_0.x), false);
    var var_1 = Struct_4(vec3<bool>(u_input.b == (max(u_input.b, -2147483647i) ^ (u_input.e.x & u_input.b)), all(select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(true, var_0.x, true, true), var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false), select(vec4<bool>(true, false, true, var_0.x), vec4<bool>(var_0.x, false, false, true), false))), var_0.x), abs(~67739u));
    let var_2 = !vec2<bool>(var_0.x, !any(vec4<bool>(var_0.x, var_0.x, var_1.a.x, var_0.x)) & var_0.x);
    global0 = array<Struct_1, 14>();
    var_1 = Struct_4(select(var_1.a, !vec3<bool>(false, var_1.a.x, var_2.x), true), 32245u);
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-872f)) - _wgslsmith_f_op_f32(-249f - -1143f)))), -2078f)), vec4<u32>(u_input.a, 4294967295u, abs(countOneBits(var_1.b | var_1.b)), _wgslsmith_mod_u32(min(u_input.a, u_input.d), ~1u) | ~79062u), _wgslsmith_add_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, -2147483647i, -1i), u_input.e), ~vec4<i32>(-14426i, _wgslsmith_add_i32(-1i, 2147483647i), -2147483647i, -2147483647i)), var_1.b);
}

