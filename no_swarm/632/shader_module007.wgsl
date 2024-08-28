struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec4<f32>(1000f, 1092f, -251f, 101f), vec2<bool>(false, false)), Struct_1(vec4<f32>(242f, -242f, 866f, -1250f), vec2<bool>(true, false)), Struct_1(vec4<f32>(1178f, -821f, -304f, -1019f), vec2<bool>(false, false)), Struct_1(vec4<f32>(700f, -994f, 500f, -161f), vec2<bool>(false, true)), Struct_1(vec4<f32>(1222f, 1986f, 1182f, -1387f), vec2<bool>(true, true)), Struct_1(vec4<f32>(1316f, -2147f, 1477f, -173f), vec2<bool>(true, true)), Struct_1(vec4<f32>(-476f, -1000f, -1155f, -1179f), vec2<bool>(false, true)), Struct_1(vec4<f32>(131f, -2350f, 213f, 223f), vec2<bool>(true, false)), Struct_1(vec4<f32>(-983f, 1286f, 329f, -585f), vec2<bool>(true, true)), Struct_1(vec4<f32>(1487f, 1172f, -585f, 655f), vec2<bool>(false, true)), Struct_1(vec4<f32>(1581f, 1731f, 422f, -296f), vec2<bool>(false, false)), Struct_1(vec4<f32>(1000f, 451f, 1120f, -1570f), vec2<bool>(true, false)), Struct_1(vec4<f32>(-628f, 1233f, -237f, -588f), vec2<bool>(false, true)), Struct_1(vec4<f32>(1830f, -915f, 937f, -1307f), vec2<bool>(true, true)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec3<bool> {
    var var_0 = Struct_1(vec4<f32>(-656f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) * _wgslsmith_f_op_f32(f32(-1f) * -692f)), _wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(_wgslsmith_div_f32(1666f, 515f) * _wgslsmith_div_f32(arg_0.a.x, 617f))), arg_0.a.x), vec2<bool>(arg_0.b.x && true, all(select(select(vec3<bool>(true, arg_0.b.x, arg_1.b.x), vec3<bool>(arg_0.b.x, arg_0.b.x, false), vec3<bool>(arg_1.b.x, false, false)), !vec3<bool>(false, false, arg_1.b.x), 1u > arg_2))));
    var var_1 = 29087i;
    let var_2 = ~22530i;
    let var_3 = abs(arg_2 >> ((abs(54894u) | arg_2) % 32u));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x * -246f));
    return vec3<bool>(any(!select(vec4<bool>(arg_1.b.x, arg_0.b.x, var_0.b.x, arg_0.b.x), !vec4<bool>(var_0.b.x, true, var_0.b.x, true), !vec4<bool>(false, arg_0.b.x, true, true))), arg_0.b.x, true);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> u32 {
    let var_0 = vec2<f32>(arg_1.a.x, _wgslsmith_f_op_f32(abs(arg_0)));
    let var_1 = func_3(global1[_wgslsmith_index_u32(min(~u_input.a.x, abs(29693u)), 14u)], arg_1, 87040u);
    var var_2 = arg_1.a.zw;
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(arg_0 + 1000f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1104f, arg_0))), (arg_1.b.x || var_1.x) != arg_2)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1333f * var_2.x), -1033f) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(286f, 256f)))))))));
    var var_4 = !any(vec4<bool>(!func_3(Struct_1(arg_1.a, var_1.xx), arg_1, u_input.a.x).x, arg_2, var_1.x, true));
    return ~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(firstLeadingBit(u_input.a.x), firstLeadingBit(29877u), 4294967295u), _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(u_input.a.x, 0u, u_input.a.x)), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 4294967295u), vec3<u32>(16516u, u_input.a.x, u_input.a.x)))), ~(~vec3<u32>(u_input.a.x, 0u, u_input.a.x)));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = firstLeadingBit(-arg_1.x);
    global0 = array<Struct_1, 11>();
    global1 = array<Struct_1, 14>();
    let var_1 = vec3<bool>(true, true, false);
    var var_2 = _wgslsmith_div_f32(arg_3.a.x, 620f);
    return global1[_wgslsmith_index_u32(max(func_2(_wgslsmith_f_op_f32(-arg_3.a.x), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_3.a + vec4<f32>(arg_0, arg_0, -293f, 1357f)), _wgslsmith_f_op_vec4_f32(abs(arg_3.a))), !(!arg_3.b)), arg_2 >= ~u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(81418u, ~(arg_2 | 1u), _wgslsmith_mod_u32(71814u, u_input.a.x)), ~(max(vec3<u32>(1u, 30427u, u_input.a.x), vec3<u32>(1u, u_input.a.x, 11980u)) | ~vec3<u32>(arg_2, u_input.a.x, 1u)))), 14u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 14>();
    global0 = array<Struct_1, 11>();
    global1 = array<Struct_1, 14>();
    var var_0 = global0[_wgslsmith_index_u32(4294967295u >> (~u_input.a.x % 32u), 11u)];
    var_0 = func_1(var_0.a.x, _wgslsmith_mult_vec3_i32(~reverseBits(firstLeadingBit(vec3<i32>(-2147483647i, 1i, -17805i))), ~(-select(vec3<i32>(0i, 1i, 11134i), vec3<i32>(594i, -1i, 0i), var_0.b.x))), 1u, global1[_wgslsmith_index_u32(1u, 14u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-25491i, -34678i, 1i, 2147483647i), ~reverseBits(vec4<i32>(1i, -5025i, 37774i, -27464i))), _wgslsmith_add_vec4_u32(vec4<u32>(~(u_input.a.x << (u_input.a.x % 32u)), 43979u, abs(firstTrailingBit(u_input.a.x)), countOneBits(max(0u, 4294967295u))), ~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 44185u, u_input.a.x), vec4<u32>(u_input.a.x, 0u, 1u, 4294967295u)), firstLeadingBit(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 1u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - -772f), _wgslsmith_f_op_f32(exp2(var_0.a.x)));
}

