struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: f32) -> vec4<i32> {
    var var_0 = ~vec4<u32>(~(~16024u) >> (abs(0u) % 32u), ~countOneBits(~78101u), arg_0 & 1u, ~arg_0 & 1u);
    let var_1 = arg_1;
    var var_2 = Struct_1(~(var_1.a << (u_input.a % 32u)), var_1.b);
    let var_3 = _wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(round(-499f)));
    var var_4 = (firstTrailingBit(vec2<u32>(max(arg_0, var_0.x), 7024u)) & min(_wgslsmith_clamp_vec2_u32(~vec2<u32>(38373u, 36265u), countOneBits(vec2<u32>(var_0.x, 20004u)), _wgslsmith_clamp_vec2_u32(var_0.xx, vec2<u32>(48972u, 0u), vec2<u32>(0u, 28312u))), ~var_0.xz)) & abs(var_0.yw);
    return abs(-(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.a, arg_2.x, -59496i, -19395i), vec4<i32>(arg_2.x, 86511i, -43868i, -27768i)) << (vec4<u32>(u_input.a, var_4.x, 40729u, 4294967295u) % vec4<u32>(32u)))) & (~_wgslsmith_add_vec4_i32(-vec4<i32>(var_2.a, var_1.a, -2147483647i, 0i), reverseBits(vec4<i32>(var_2.a, arg_2.x, -1i, -25730i))) & vec4<i32>(var_2.a, _wgslsmith_dot_vec4_i32(select(vec4<i32>(-48028i, -2147483647i, arg_1.a, arg_1.a), vec4<i32>(arg_1.a, -2147483647i, 2147483647i, arg_2.x), vec4<bool>(true, false, false, false)), countOneBits(vec4<i32>(-2147483647i, u_input.c, -24647i, 2147483647i))), var_2.a, var_2.a));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec4<f32>) -> bool {
    let var_0 = Struct_1(_wgslsmith_dot_vec4_i32(select(func_3(arg_1, Struct_1(arg_0.a, -880f), -vec3<i32>(0i, 14979i, -2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -971f)), reverseBits(firstLeadingBit(vec4<i32>(arg_0.a, 0i, u_input.c, -25931i))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), true), any(vec3<bool>(true, false, true)))), vec4<i32>(2147483647i, (arg_0.a << (u_input.a % 32u)) | _wgslsmith_add_i32(-41712i, u_input.c), -20284i, u_input.c | u_input.b)), -116f);
    let var_1 = var_0;
    var var_2 = !(var_0.b <= var_1.b);
    let var_3 = 1u;
    return false;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = vec2<bool>(select(u_input.a <= u_input.a, true, min(41108u, _wgslsmith_mod_u32(95760u, u_input.a)) > min(0u, ~u_input.a)), _wgslsmith_sub_u32(u_input.a, u_input.a & ~20648u) > u_input.a);
    let var_1 = u_input.a;
    let var_2 = !(!select(vec4<bool>(!var_0.x, true | var_0.x, true, func_2(arg_0, 0u, vec4<f32>(-947f, arg_1.b, arg_0.b, arg_1.b))), !(!vec4<bool>(false, false, true, var_0.x)), vec4<bool>(false, false, false, true)));
    var var_3 = Struct_1(~(-1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(234f))))))));
    var var_4 = Struct_1(-arg_1.a, _wgslsmith_div_f32(arg_1.b, arg_0.b));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-478f, -394f, 171f)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1417f, -1269f, -955f), vec3<f32>(arg_1.b, -493f, 633f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-202f, 544f, -780f)), vec3<f32>(arg_0.b, var_4.b, var_4.b), select(var_2.ywy, var_2.wxz, var_0.x))) + vec3<f32>(-518f, _wgslsmith_f_op_f32(260f - arg_1.b), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(2147483647i, max(reverseBits(23663i), -abs(1i)));
    let var_1 = u_input.a > u_input.a;
    var var_2 = select(max(~(-(~vec3<i32>(2147483647i, u_input.b, var_0.x))), ~(-(~vec3<i32>(9092i, u_input.c, -43527i)))), ~(~(~vec3<i32>(0i, u_input.c, var_0.x))), !var_1);
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_1(var_2.x, -1082f), Struct_1(-8281i, 2242f))) * vec3<f32>(-768f, 194f, -1091f))))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1000f)), -1061f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(994f, -433f)))))), 4294967295u);
}

