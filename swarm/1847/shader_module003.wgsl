struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(1000f), Struct_1(1000f), Struct_1(-1104f), Struct_1(209f), Struct_1(1520f), Struct_1(-1031f), Struct_1(530f), Struct_1(249f), Struct_1(-1000f), Struct_1(-2707f), Struct_1(478f), Struct_1(-1677f));

var<private> global1: array<Struct_1, 23>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<bool> {
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    let var_0 = Struct_1(2180f);
    let var_1 = vec4<u32>(1u, 5336u, ~1u, ~52088u) ^ max(vec4<u32>(0u, ~(~18297u), 1u, 1u), vec4<u32>(57937u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(8371u, 64414u, 32541u), vec3<u32>(13086u, 0u, 4208u)), 1u, 72748u));
    global1 = array<Struct_1, 23>();
    return select(vec4<bool>(false, true, false, any(select(vec2<bool>(true, false), vec2<bool>(false, false), true))), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false))), vec4<bool>(all(vec2<bool>(false, false)), false, u_input.a == u_input.a, all(vec3<bool>(false, true, false))), vec4<bool>(true, true, true, true)), true);
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: bool) -> vec3<bool> {
    global0 = array<Struct_1, 12>();
    let var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1462f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -904f) - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(197f, -1000f)))), _wgslsmith_f_op_f32(abs(452f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1427f + -1472f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1352f), _wgslsmith_f_op_f32(floor(1021f)), _wgslsmith_f_op_f32(select(-848f, 2191f, false)), _wgslsmith_f_op_f32(max(582f, -683f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(467f, -1000f, 1153f, 1019f) + vec4<f32>(972f, 178f, 1089f, -504f)), vec4<f32>(-108f, 352f, -393f, -651f), arg_2)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-911f, -1074f, -379f, 278f))) + vec4<f32>(1f, 1f, 1f, 1f)))))));
    global1 = array<Struct_1, 23>();
    global1 = array<Struct_1, 23>();
    global1 = array<Struct_1, 23>();
    return vec3<bool>(!all(vec4<bool>(true, !arg_2, true, true)), true, arg_2);
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> vec3<bool> {
    global0 = array<Struct_1, 12>();
    global1 = array<Struct_1, 23>();
    global0 = array<Struct_1, 12>();
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(i32(-1i) * -12906i, ~u_input.a, 0i)), reverseBits(firstTrailingBit(select(vec3<i32>(u_input.a, -26902i, u_input.a), vec3<i32>(u_input.a, u_input.a, -2147483647i), vec3<bool>(true, true, true))))), _wgslsmith_dot_vec2_i32(-vec2<i32>(0i, u_input.a) ^ vec2<i32>(~30794i, u_input.a), -vec2<i32>(-u_input.a, abs(-31388i))));
    var var_1 = Struct_1(686f);
    return func_4(!(!func_3()), any(vec2<bool>(var_1.a >= _wgslsmith_f_op_f32(-var_1.a), true)), true);
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = arg_2;
    global1 = array<Struct_1, 23>();
    return Struct_1(1285f);
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: i32, arg_3: bool) -> u32 {
    global1 = array<Struct_1, 23>();
    global1 = array<Struct_1, 23>();
    var var_0 = func_5(select(!vec3<bool>(all(vec3<bool>(false, arg_3, true)), arg_3, true), vec3<bool>(true, all(vec4<bool>(arg_3, arg_3, arg_3, arg_3)), false), select(vec3<bool>(!arg_3, true, arg_1.x <= arg_0), !(!vec3<bool>(arg_3, false, true)), func_2(Struct_1(1196f), 1000f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(412f, 1000f, 735f, -1000f) + vec4<f32>(-1036f, -216f, -119f, 563f))))))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~arg_1, arg_1), ~_wgslsmith_dot_vec4_u32(vec4<u32>(53735u, 4294967295u, arg_1.x, 3774u), ~vec4<u32>(arg_1.x, 4294967295u, 4294967295u, arg_1.x))), 12u)], _wgslsmith_add_vec2_u32(vec2<u32>(arg_1.x, ~arg_0 & firstLeadingBit(14121u)), ~_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(arg_1.ww, arg_1.zw), arg_1.yw)));
    let var_1 = true;
    let var_2 = global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(arg_1.wz >> (vec2<u32>(arg_0, 24609u) % vec2<u32>(32u)), countOneBits(vec2<u32>(arg_0, 0u))), arg_0), 115647u)), 23u)];
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 26157u;
    let var_1 = vec4<u32>(44146u, func_1(var_0, _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0, var_0, 0u, 18407u) >> (_wgslsmith_div_vec4_u32(vec4<u32>(14728u, var_0, 0u, 4294967295u), vec4<u32>(1020u, var_0, 4294967295u, var_0)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(48136u, var_0, var_0, var_0), abs(vec4<u32>(0u, 1u, var_0, var_0)), vec4<u32>(1u, 28964u, var_0, var_0) << (vec4<u32>(19325u, 4294967295u, 34481u, 0u) % vec4<u32>(32u))), ~_wgslsmith_add_vec4_u32(vec4<u32>(var_0, 4294967295u, var_0, var_0), vec4<u32>(2584u, var_0, var_0, var_0))), u_input.a, true), countOneBits(1768u), ~(~1u) & _wgslsmith_add_u32(var_0, ~31159u));
    global0 = array<Struct_1, 12>();
    global1 = array<Struct_1, 23>();
    var var_2 = _wgslsmith_div_vec2_u32(var_1.wx, ~var_1.ww << (_wgslsmith_clamp_vec2_u32(var_1.yx, _wgslsmith_clamp_vec2_u32(var_1.xw & var_1.xx, ~var_1.wz, var_1.zy), firstLeadingBit(_wgslsmith_mult_vec2_u32(var_1.xw, var_1.wz))) % vec2<u32>(32u)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-759f)))));
    var var_4 = var_0 >> (func_1(~select(var_0, var_1.x, true) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, var_1.x), var_1.yz) % 32u), ~var_1, -(~(-3500i)), func_3().x) % 32u);
    let var_5 = 1u | abs(select(var_2.x, var_2.x, true));
    let var_6 = Struct_1(_wgslsmith_f_op_f32(sign(-125f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-999f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1369f, 812f)) + _wgslsmith_f_op_f32(round(1102f)))) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), abs(select(select(var_1, var_1, true), var_1 | vec4<u32>(var_2.x, var_5, 55588u, 13633u), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)))) | vec4<u32>(~(~var_0), 44841u, ~var_1.x, ~var_0 << (~var_1.x % 32u)), ~var_2.x, _wgslsmith_f_op_f32(sign(var_3)));
}

