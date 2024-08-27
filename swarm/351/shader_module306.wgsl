struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 735f;

var<private> global1: bool;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: vec2<bool>) -> bool {
    global1 = true;
    var var_0 = true;
    var var_1 = 0u;
    let var_2 = ~vec2<u32>(1u, ~max(29515u, 0u) << ((_wgslsmith_clamp_u32(5304u, 4448u, 68588u) | ~0u) % 32u));
    var var_3 = -arg_0;
    return false;
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.x - -192f))), 2318f));
    let var_1 = vec3<u32>(34185u, firstLeadingBit(~(~(1u << (1u % 32u)))), 1u);
    let var_2 = select(vec3<bool>(true, true, true), !(!vec3<bool>(any(vec2<bool>(false, false)), true, true)), true);
    var var_3 = vec2<i32>(-57396i, _wgslsmith_dot_vec2_i32(~u_input.b.zx, ~vec2<i32>(u_input.b.x, u_input.b.x)));
    let var_4 = 0u;
    return u_input.a;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec3<i32>(func_3(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(303f, arg_2.a, 468f, -150f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(104f, -249f, arg_0.d.x, -2086f)), !arg_2.c))))), 19156i, -2147483647i);
    let var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(firstLeadingBit(~4294967295u), 4071u >> (1u % 32u), firstLeadingBit(_wgslsmith_clamp_u32(6161u, 28718u, 31588u)), ~1u), firstTrailingBit(~reverseBits(vec4<u32>(0u, 5038u, 1u, 14609u))), vec4<u32>(1u, 1u, 1u, 1u)), select(~(countOneBits(vec4<u32>(8811u, 1u, 0u, 19327u)) >> (select(vec4<u32>(13255u, 92628u, 8262u, 0u), vec4<u32>(293u, 34840u, 4294967295u, 1109u), false) % vec4<u32>(32u))), firstTrailingBit(vec4<u32>(51232u, 0u, 14398u, _wgslsmith_add_u32(32729u, 1u))), arg_2.c));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1248f, 1000f, false))));
    let var_0 = 2147483647i;
    var var_1 = vec4<bool>(any(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), true), vec4<bool>(any(vec4<bool>(false, false, false, false)), true, true, true), false)), !select(!any(vec3<bool>(false, true, false)), any(vec2<bool>(true, true)), true), false & select(true, func_1(0i, Struct_1(170f, -1i, false, vec3<f32>(-1155f, -627f, 824f)), true, vec2<bool>(true, false)), func_1(1i, func_2(Struct_1(-2025f, -32540i, false, vec3<f32>(1395f, -1612f, 940f)), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), Struct_1(-2101f, 0i, false, vec3<f32>(-665f, 424f, 1000f))), true, select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)))), true);
    global0 = -458f;
    var var_2 = Struct_1(-266f, _wgslsmith_mod_i32(1i, var_0), select(any(var_1.xz), 4294967295u < _wgslsmith_add_u32(firstTrailingBit(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 57899u, 1u), vec3<u32>(17749u, 4294967295u, 99585u))), select(true, true, false)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_div_vec3_f32(vec3<f32>(827f, -1607f, -825f), vec3<f32>(745f, -2271f, 2473f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1017f, 615f, -300f) - vec3<f32>(-1000f, 1000f, -2064f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(func_2(Struct_1(_wgslsmith_f_op_f32(exp2(var_2.d.x)), -var_0, all(vec3<bool>(true, true, false)), vec3<f32>(-727f, var_2.a, -1000f)), _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(var_0, -28898i, 2147483647i, 2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-66253i, var_2.b, var_2.b, 0i), vec4<i32>(-2147483647i, 78931i, var_0, 2147483647i))), Struct_1(var_2.d.x, 1i, any(vec4<bool>(var_2.c, false, var_2.c, false)), vec3<f32>(var_2.a, 956f, -1398f))).d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.d.x))))), vec4<i32>(u_input.b.x, ~select(34744i, ~(-58488i), true), reverseBits(~55018i), u_input.a), ~vec4<u32>(1u, 1u, 1u, 1u), var_2.d.x);
}

