struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30> = array<i32, 30>(-28613i, 2147483647i, 26453i, -1i, 0i, 18730i, i32(-2147483648), i32(-2147483648), 38019i, -3194i, 1i, 1360i, 1i, -1506i, 1i, 2147483647i, 9847i, -7136i, -39337i, -1i, 35849i, 0i, i32(-2147483648), 73624i, -31838i, -77210i, 0i, 0i, i32(-2147483648), 4450i);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global0 = array<i32, 30>();
    var var_0 = arg_1.d.x;
    var var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(377f + arg_1.c))) * arg_2.c));
    var var_3 = max(firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.a, 4841u, u_input.b, 12249u), firstTrailingBit(vec4<u32>(72650u, arg_1.a, 0u, arg_2.a))) << (abs(vec4<u32>(19832u, 4294967295u, 33702u, 37958u)) % vec4<u32>(32u))), firstLeadingBit(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, arg_1.b, 0u), vec4<u32>(26141u, 127978u, 105636u, 29810u)) | (vec4<u32>(0u, 1u, 0u, 0u) ^ vec4<u32>(arg_1.b, 2567u, 0u, arg_1.a)), vec4<u32>(~52654u, 18627u, ~4294967295u, u_input.c.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2)));
}

fn func_2() -> Struct_1 {
    var var_0 = (-(~countOneBits(vec3<i32>(-6707i, u_input.a, 76540i))) << (firstLeadingBit(~(vec3<u32>(u_input.b, 1u, u_input.c.x) >> (vec3<u32>(88013u, u_input.b, u_input.b) % vec3<u32>(32u)))) % vec3<u32>(32u))) | vec3<i32>(i32(-1i) * -u_input.a, u_input.a, -(~(-19826i)));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-940f, _wgslsmith_f_op_f32(max(403f, 110f)), -314f, 801f) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(-22125i, Struct_1(u_input.b, u_input.b, -451f, vec2<bool>(false, true)), Struct_1(u_input.c.x, 32060u, -1000f, vec2<bool>(false, false)))))), _wgslsmith_f_op_f32(sign(2332f)), _wgslsmith_f_op_f32(ceil(-1040f)), -424f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1346f, 923f, 977f, 788f))))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-232f, -191f, -475f, -979f)), _wgslsmith_div_vec4_f32(vec4<f32>(584f, 1993f, 1000f, 1312f), vec4<f32>(1348f, -635f, 141f, 285f))))))));
    let var_2 = Struct_1(~u_input.b, ~(u_input.c.x >> (_wgslsmith_clamp_u32(firstLeadingBit(32102u), u_input.c.x, 7340u) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1745f - -1109f)), vec2<bool>(false, true));
    var var_3 = 5210i;
    global0 = array<i32, 30>();
    return Struct_1(~min(_wgslsmith_div_u32(~85265u, select(var_2.a, 158340u, var_2.d.x)), var_2.a), u_input.b, 1094f, select(select(!(!var_2.d), var_2.d, vec2<bool>(var_2.d.x, false)), !vec2<bool>(var_2.d.x, var_2.d.x), vec2<bool>(true, !any(vec2<bool>(var_2.d.x, false)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    global0 = array<i32, 30>();
    var var_0 = true == arg_1.x;
    var var_1 = func_2();
    var_0 = arg_3.d.x;
    var_1 = func_2();
    return arg_3;
}

fn func_1(arg_0: f32) -> i32 {
    global0 = array<i32, 30>();
    var var_0 = func_4(func_2(), vec3<bool>(false | !any(vec2<bool>(false, false)), !(arg_0 != 378f) && all(vec4<bool>(false, true, true, true)), all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), false), true))), false, Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(54959u, u_input.c.x, 100639u, u_input.c.x), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 4565u, u_input.b), vec4<u32>(u_input.c.x, u_input.c.x, 15687u, u_input.b))), max(vec4<u32>(u_input.b, 32921u, u_input.b, 1u), ~vec4<u32>(23071u, u_input.c.x, u_input.c.x, 52013u))), 4895u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), vec2<bool>(any(vec3<bool>(true, true, true)) && true, all(vec2<bool>(true, true)))));
    global0 = array<i32, 30>();
    var var_1 = func_2();
    var_0 = Struct_1(~(~(69163u >> (~var_1.a % 32u))), ~25869u >> (0u % 32u), 372f, vec2<bool>(var_1.d.x, var_1.d.x));
    return 76400i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(countOneBits(countOneBits(~u_input.b & ~u_input.b)), abs(~1u) >> (u_input.c.x % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1558f - 1184f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1754f))))))), vec2<bool>(~global0[_wgslsmith_index_u32(6999u, 30u)] != func_1(1484f), true));
    let var_1 = 21190i;
    let var_2 = Struct_1(countOneBits(0u), 41935u, _wgslsmith_f_op_f32(-var_0.c), !var_0.d);
    global0 = array<i32, 30>();
    var var_3 = vec4<u32>(u_input.b, 4294967295u, firstLeadingBit(_wgslsmith_div_u32(1u, var_2.b | var_0.b)), u_input.b << (0u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_div_vec3_u32(~_wgslsmith_mult_vec3_u32(var_3.zwx, vec3<u32>(var_0.a, var_0.b, 1u)), abs(~vec3<u32>(100287u, u_input.b, 1u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.c, _wgslsmith_div_f32(342f, var_2.c), _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_div_f32(var_2.c, var_2.c))))), min(~(min(vec2<u32>(var_0.a, var_0.a), var_3.xz) >> (~vec2<u32>(49930u, 12865u) % vec2<u32>(32u))), ~(~vec2<u32>(0u, 0u)) & abs(u_input.c.zz)), i32(-1i) * -2147483647i);
}

