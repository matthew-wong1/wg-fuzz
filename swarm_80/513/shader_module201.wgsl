struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 12> = array<vec4<f32>, 12>(vec4<f32>(693f, -474f, -781f, -1065f), vec4<f32>(1282f, -1579f, -928f, -223f), vec4<f32>(133f, 1000f, 303f, -232f), vec4<f32>(-401f, -1546f, -671f, 1366f), vec4<f32>(-1657f, -1698f, 1163f, 347f), vec4<f32>(-572f, 866f, -470f, -1285f), vec4<f32>(936f, 337f, -1545f, -320f), vec4<f32>(1000f, -1000f, -1003f, -773f), vec4<f32>(2066f, 967f, -516f, 679f), vec4<f32>(-1845f, 561f, 979f, 161f), vec4<f32>(-923f, 772f, -285f, 683f), vec4<f32>(689f, -915f, -130f, 884f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = Struct_1(-652f);
    var var_1 = ~_wgslsmith_div_vec3_i32(-vec3<i32>(-1i, ~50098i, _wgslsmith_mod_i32(u_input.b, -23206i)), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, u_input.b, -77163i), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 0i, 2147483647i), vec3<i32>(-1i, -2147483647i, u_input.b))) & ~abs(vec3<i32>(30998i, u_input.b, u_input.b)));
    let var_2 = reverseBits(-2147483647i >> (1u % 32u));
    let var_3 = ~vec4<u32>(u_input.c, _wgslsmith_sub_u32(u_input.a, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(67046u, 1u, 49165u), min(arg_0, arg_0))), _wgslsmith_mult_u32(~_wgslsmith_add_u32(4294967295u, 0u), 1u), arg_0);
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-311f)), _wgslsmith_f_op_f32(var_0.a - var_0.a))), -142f)));
    return -(~u_input.b) ^ _wgslsmith_mod_i32(0i, -21799i);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = array<vec4<f32>, 12>();
    var var_0 = ~firstLeadingBit(firstTrailingBit(select(vec3<u32>(64026u, 73853u, 34354u), vec3<u32>(u_input.a, 4294967295u, u_input.c) << (vec3<u32>(1u, u_input.a, 4294967295u) % vec3<u32>(32u)), true)));
    global0 = array<vec4<f32>, 12>();
    let var_1 = func_3(var_0.x);
    var_0 = vec3<u32>(firstLeadingBit(4294967295u) >> (1u % 32u), _wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(u_input.c, var_0.x, 99573u, 35526u)), countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, var_0.x, 0u, var_0.x), ~vec4<u32>(0u, u_input.a, u_input.a, u_input.a)))), u_input.a);
    return Struct_1(arg_0.a);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    global0 = array<vec4<f32>, 12>();
    global0 = array<vec4<f32>, 12>();
    let var_0 = func_2(arg_1);
    var var_1 = vec3<u32>(~45815u, ~u_input.c, select(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.c, 13827u), ~vec3<u32>(0u, 0u, u_input.a)), _wgslsmith_div_u32(u_input.c, u_input.a)), abs(1u), all(vec2<bool>(any(vec3<bool>(true, true, false)), false))));
    var var_2 = var_1.yz;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_mod_vec3_i32(-(~vec3<i32>(u_input.b, -1i, 44618i)), firstLeadingBit(vec3<i32>(u_input.b, 34276i, u_input.b))) | abs(-vec3<i32>(-48176i, 0i, u_input.b) >> (~vec3<u32>(u_input.c, 4294967295u, 13881u) % vec3<u32>(32u))), Struct_1(-314f));
    var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - -1247f)))), var_0.a));
    global0 = array<vec4<f32>, 12>();
    var var_1 = Struct_1(var_0.a);
    var_0 = func_2(func_2(func_2(func_1(-vec3<i32>(30702i, u_input.b, 0i), func_1(vec3<i32>(u_input.b, -2147483647i, u_input.b), Struct_1(var_0.a))))));
    global0 = array<vec4<f32>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1848f, var_0.a, 554f, 522f), global0[_wgslsmith_index_u32(0u, 12u)]) * global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 8169u), vec2<u32>(u_input.a, 2764u)), 12u)]), _wgslsmith_div_vec4_f32(vec4<f32>(-255f, var_0.a, 645f, -138f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, -2385f, var_0.a, -1761f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a, 1619f, var_0.a, var_1.a), global0[_wgslsmith_index_u32(u_input.a, 12u)])), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(10530u, 12u)] + vec4<f32>(var_1.a, var_0.a, var_1.a, -420f)) + vec4<f32>(var_0.a, var_1.a, -155f, var_1.a)), select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false)), true)))), ~1u, u_input.a);
}

