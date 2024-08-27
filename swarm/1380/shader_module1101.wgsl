struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32) -> u32 {
    var var_0 = Struct_1(~_wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(1u, 1u)), vec2<u32>(firstLeadingBit(0u), ~1802u)));
    return var_0.a.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(step(-280f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(182f * -1070f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-124f - _wgslsmith_f_op_f32(max(1655f, 1399f))) + 1f)))));
    let var_1 = Struct_1(~vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(0u, 37366u), 1316u), func_3(vec2<bool>(true, true), countOneBits(-29949i))));
    var var_2 = var_1;
    var_0 = _wgslsmith_f_op_f32(floor(986f));
    var var_3 = !arg_0.x & true;
    return Struct_1(var_2.a);
}

fn func_4(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -653f))) - _wgslsmith_f_op_f32(round(-1000f)))));
    let var_1 = Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(func_3(vec2<bool>(true, true), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(10054u, arg_0.a.x, 1u), vec3<u32>(89179u, 1u, 4294967295u)), vec3<u32>(0u, arg_0.a.x, 4294967295u))), firstTrailingBit(arg_0.a)));
    var var_2 = firstLeadingBit(_wgslsmith_div_vec2_i32(select(u_input.a.xy, u_input.a.yw & vec2<i32>(-6881i, 1i), true), -vec2<i32>(1i, u_input.a.x)) ^ u_input.a.wx);
    let var_3 = all(!vec4<bool>(false, any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), true, any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false))));
    let var_4 = u_input.a;
    return all(vec3<bool>((!var_3 | all(vec3<bool>(false, var_3, var_3))) || false, select(false, all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(round(289f)) >= var_0), true));
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = 588f;
    var var_1 = func_2(!(!select(select(vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(true, false, arg_0, arg_0), vec4<bool>(arg_0, true, false, arg_0)), !vec4<bool>(arg_0, arg_0, true, arg_0), true)), _wgslsmith_sub_i32(-1i, u_input.a.x));
    var_1 = Struct_1(var_1.a);
    var_1 = arg_1;
    var_1 = Struct_1(~_wgslsmith_sub_vec2_u32(arg_1.a, vec2<u32>(~33229u, _wgslsmith_dot_vec4_u32(vec4<u32>(49200u, var_1.a.x, 13895u, arg_1.a.x), vec4<u32>(var_1.a.x, var_1.a.x, 1u, 37770u)))));
    return Struct_1(var_1.a);
}

fn func_1() -> Struct_1 {
    let var_0 = func_5(func_4(func_2(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), true), ~1i)) && (any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true))) || all(select(vec2<bool>(true, false), vec2<bool>(true, true), false))), Struct_1(~vec2<u32>(13639u >> (1u % 32u), abs(6990u))));
    var var_1 = abs(u_input.a.zz);
    var var_2 = var_0;
    let var_3 = (_wgslsmith_mult_i32(~u_input.a.x, u_input.a.x | u_input.a.x) ^ (-u_input.a.x & u_input.a.x)) ^ ~u_input.a.x;
    var var_4 = Struct_2(vec2<bool>(true, true), Struct_1(~var_2.a), ~vec3<u32>(60399u, var_2.a.x, ~var_0.a.x), Struct_1(min(~vec2<u32>(0u, var_0.a.x), var_0.a)), var_0);
    return var_4.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec2<bool>(false, select(!(u_input.a.x >= u_input.a.x), all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true)), false)), Struct_1(vec2<u32>(1u, 1u)), ~vec3<u32>(1u, 77129u, ~36703u), Struct_1(~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 0u), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 41573u), vec2<u32>(13145u, 13639u)))), func_1());
    let var_1 = _wgslsmith_f_op_f32(trunc(-1936f));
    var var_2 = var_0;
    let var_3 = vec2<i32>(abs(firstLeadingBit(u_input.a.x | u_input.a.x)) ^ (_wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec3_i32(u_input.a.yzw, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_mult_i32(u_input.a.x, 49386i)) >> (var_0.d.a.x % 32u)), 18067i);
    var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1799f * 823f), _wgslsmith_f_op_f32(trunc(var_1)), var_1)), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -886f))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-1071f - var_1)))), -var_3.x);
}

