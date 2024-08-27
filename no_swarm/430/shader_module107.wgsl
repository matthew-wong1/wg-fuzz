struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<bool>,
    d: f32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 24> = array<vec3<f32>, 24>(vec3<f32>(-1124f, -103f, -1119f), vec3<f32>(2551f, 878f, -1000f), vec3<f32>(-296f, -151f, -632f), vec3<f32>(-1889f, -1588f, -746f), vec3<f32>(1423f, -227f, -1000f), vec3<f32>(2235f, -117f, 1385f), vec3<f32>(-764f, 564f, -688f), vec3<f32>(-2003f, 1509f, -995f), vec3<f32>(-262f, -105f, 505f), vec3<f32>(1052f, 841f, -592f), vec3<f32>(-1465f, -532f, 548f), vec3<f32>(-291f, 188f, 494f), vec3<f32>(705f, 787f, -1597f), vec3<f32>(-830f, -337f, -506f), vec3<f32>(302f, -1627f, -1705f), vec3<f32>(1381f, 1770f, -1467f), vec3<f32>(1312f, 490f, -1000f), vec3<f32>(247f, 803f, -340f), vec3<f32>(1116f, 1939f, 642f), vec3<f32>(800f, 1647f, 802f), vec3<f32>(-611f, 864f, -336f), vec3<f32>(1614f, 1111f, 1021f), vec3<f32>(645f, -1502f, -1028f), vec3<f32>(357f, 466f, -1314f));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_1(any(select(vec3<bool>(any(arg_0.e), all(vec2<bool>(false, false)), true), arg_0.c.xxz, arg_0.c.x | true)), arg_0.b, arg_0.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d) + _wgslsmith_f_op_f32(select(1000f, arg_0.d, arg_0.a))))), arg_0.d)), select(select(select(!arg_0.e, !arg_0.e, arg_0.e), arg_0.c.xxz, arg_0.c.ywy), vec3<bool>(true, true, true), any(!(!arg_0.e.zz))));
    var_0 = Struct_1(var_0.e.x, var_0.b & -30988i, !(!vec4<bool>(true, false, arg_0.a, any(vec2<bool>(arg_0.c.x, arg_0.a)))), -869f, arg_0.c.yxy);
    global0 = array<vec3<f32>, 24>();
    return select(28339u, 1u, any(vec4<bool>(firstLeadingBit(u_input.b) > (4294967295u >> (0u % 32u)), _wgslsmith_f_op_f32(ceil(-1191f)) == 710f, var_0.d != _wgslsmith_f_op_f32(f32(-1f) * -1724f), any(select(vec3<bool>(true, var_0.c.x, arg_0.e.x), vec3<bool>(arg_0.a, var_0.e.x, true), vec3<bool>(arg_0.a, false, true))))));
}

fn func_2() -> Struct_1 {
    let var_0 = reverseBits(58288u);
    global0 = array<vec3<f32>, 24>();
    var var_1 = vec4<i32>(max(_wgslsmith_mult_i32(select(0i, u_input.c, true), 16147i), u_input.a.x), _wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.a), vec2<i32>(-28862i, u_input.d)) ^ -1i, ~u_input.e.x, 0i) >> (vec4<u32>(~76996u, ~_wgslsmith_clamp_u32(~var_0, func_3(Struct_1(true, 56461i, vec4<bool>(false, true, true, true), 1213f, vec3<bool>(true, false, true))), 30588u), ~(~84378u) ^ (0u << (~var_0 % 32u)), ~_wgslsmith_mod_u32(~u_input.b, 1u)) % vec4<u32>(32u));
    var_1 = firstLeadingBit(~(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -1i, -8272i, var_1.x), vec4<i32>(1i, var_1.x, -12087i, 17310i))) >> (_wgslsmith_mod_vec4_u32(select(vec4<u32>(var_0, u_input.b, 4294967295u, u_input.b), vec4<u32>(u_input.b, var_0, 19279u, u_input.b), vec4<bool>(false, false, true, true)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 26388u, 40848u, 158015u), vec4<u32>(0u, 50558u, u_input.b, var_0))) % vec4<u32>(32u))));
    var_1 = -(~(~countOneBits(vec4<i32>(-50473i, 0i, u_input.d, 14100i)) | countOneBits(abs(vec4<i32>(var_1.x, -3997i, u_input.e.x, 0i)))));
    return Struct_1(false, ~min(1i, ~var_1.x & -53501i), select(vec4<bool>(false, any(vec2<bool>(true, true)), all(select(vec2<bool>(false, true), vec2<bool>(false, true), false)), true), select(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), false), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true))), false), -277f, select(!vec3<bool>(all(vec4<bool>(true, true, false, false)), true, any(vec3<bool>(false, false, true))), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1) -> bool {
    global0 = array<vec3<f32>, 24>();
    var var_0 = func_2();
    let var_1 = arg_2;
    global0 = array<vec3<f32>, 24>();
    var var_2 = reverseBits(vec3<i32>(arg_0.b, arg_0.b, -arg_0.b));
    return (arg_2.c.x | arg_0.a) & arg_2.a;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_2();
    global0 = array<vec3<f32>, 24>();
    var var_1 = -252f;
    var var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-170f)), -714f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) + -377f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(534f)) + _wgslsmith_f_op_f32(-438f + 830f))))), 807f);
    global0 = array<vec3<f32>, 24>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(all(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false)), -11618i, select(vec4<bool>(false, func_1(Struct_1(false, u_input.e.x, vec4<bool>(false, true, true, true), 1003f, vec3<bool>(false, true, true)), vec3<u32>(33023u, u_input.b, 4294967295u), Struct_1(true, u_input.d, vec4<bool>(false, false, false, true), -1081f, vec3<bool>(true, false, false))), u_input.b > u_input.b, true), vec4<bool>(true, true, u_input.c >= u_input.e.x, false), vec4<bool>(true, func_2().e.x, true, func_1(Struct_1(false, u_input.c, vec4<bool>(false, false, true, true), 103f, vec3<bool>(true, false, true)), vec3<u32>(u_input.b, 4294967295u, 0u), Struct_1(false, u_input.a.x, vec4<bool>(true, false, true, false), 208f, vec3<bool>(true, false, false))))), _wgslsmith_f_op_f32(f32(-1f) * -686f), select(!func_2().c.xwz, vec3<bool>(true, true, true), !func_2().e)));
    global0 = array<vec3<f32>, 24>();
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(426f - -250f), var_0.d, 846f, _wgslsmith_f_op_f32(1000f - 512f)) - vec4<f32>(_wgslsmith_f_op_f32(var_0.d - var_0.d), -335f, -206f, -228f)))));
    global0 = array<vec3<f32>, 24>();
    var var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_0.d) - _wgslsmith_div_f32(291f, 110f)), func_2().d, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -491f), _wgslsmith_f_op_f32(408f - var_0.d))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-var_1))))));
    var_2 = var_1;
    var var_3 = _wgslsmith_mult_u32(firstLeadingBit(max(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 39051u, u_input.b), vec3<u32>(55964u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, 69437u)), vec3<u32>(38974u, 16719u, 0u) & vec3<u32>(1u, u_input.b, 34368u)), u_input.b ^ firstLeadingBit(4294967295u))), _wgslsmith_mod_u32(firstLeadingBit(~(~u_input.b)), 25344u));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(reverseBits(-1i), u_input.c, ~u_input.d, var_0.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1 + var_1) + _wgslsmith_f_op_vec4_f32(var_1 * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.d, var_2.x, -764f, 355f), var_1) * var_1))), 2147483647i, _wgslsmith_clamp_vec3_u32(min(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<u32>(u_input.b, u_input.b, u_input.b)), vec3<u32>(806u, 4294967295u, u_input.b), vec3<u32>(0u, 0u, 0u) | vec3<u32>(4294967295u, u_input.b, u_input.b)), ~(~vec3<u32>(0u, u_input.b, u_input.b))), ~(~vec3<u32>(u_input.b, 1u, u_input.b)), ~abs(reverseBits(vec3<u32>(u_input.b, u_input.b, u_input.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * -1000f)));
}

