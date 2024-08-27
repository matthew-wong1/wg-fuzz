struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    let var_0 = -497f;
    return max(~(~140576u), 1u);
}

fn func_2() -> Struct_2 {
    let var_0 = vec4<i32>(u_input.b.x | countOneBits(32006i), firstLeadingBit(~(-(~(-1i)))), ~(~_wgslsmith_add_i32(-39274i, 1i)) << (func_3(vec4<bool>(true, true, true, true)) % 32u), 17597i);
    let var_1 = Struct_2(var_0, !vec4<bool>(true, _wgslsmith_f_op_f32(select(-589f, 1071f, true)) > -874f, true, all(select(vec2<bool>(true, false), vec2<bool>(true, false), true))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-911f, 439f, -619f, -414f))))), _wgslsmith_clamp_i32(2147483647i, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-24806i, -6121i, 1i, 0i)), var_0), _wgslsmith_mod_i32(u_input.a, u_input.b.x) << (~19226u % 32u))), select(select(vec3<bool>(select(true, true, true), true, true), vec3<bool>(select(false, false, true), true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, any(vec3<bool>(true, true, true))), !(!any(vec3<bool>(false, true, true)))));
    let var_2 = var_1.c;
    let var_3 = var_1.a;
    return var_1;
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: u32) -> u32 {
    let var_0 = func_2();
    let var_1 = 0i;
    let var_2 = _wgslsmith_div_f32(var_0.c.a.x, _wgslsmith_f_op_f32(max(var_0.c.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1000f)), 402f))));
    var var_3 = abs(_wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(0u), abs(83964u)), vec2<u32>(countOneBits(arg_2), ~arg_2))) << (_wgslsmith_sub_u32(10666u, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, arg_2, arg_2), vec3<u32>(4294967295u, 27644u, arg_2)))) % 32u);
    var_3 = ~_wgslsmith_clamp_u32(1u ^ func_3(select(vec4<bool>(var_0.b.x, var_0.d.x, false, var_0.d.x), vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.b.x), var_0.b.x)), ~(~arg_2), ~(~(arg_2 & arg_2)));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32((arg_2 | arg_2) | 9123u, ~0u), reverseBits(select(1u, _wgslsmith_mod_u32(arg_2, arg_2), !var_0.b.x))), _wgslsmith_mult_vec2_u32(vec2<u32>(38491u | min(63166u, arg_2), arg_2), vec2<u32>(~arg_2, 36123u)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = arg_2;
    var_0 = arg_2;
    let var_2 = arg_2.c;
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~1u;
    let var_1 = func_4(max(vec4<u32>(var_0, 13806u, firstTrailingBit(18442u), func_1(~u_input.b, _wgslsmith_sub_i32(0i, u_input.b.x), 16608u)), vec4<u32>(0u, 16471u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_0, var_0, var_0)), firstLeadingBit(vec3<u32>(var_0, var_0, 0u))), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, var_0, var_0, var_0)), ~vec4<u32>(var_0, var_0, var_0, var_0)))), vec4<bool>(func_2().b.x, true, (true & (u_input.a < 0i)) & true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-604f)))) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -328f)))), Struct_2(-vec4<i32>(-33237i, u_input.b.x, select(u_input.a, 4387i, false), _wgslsmith_div_i32(u_input.b.x, u_input.a)), select(vec4<bool>(true, true, true, true), !func_2().b, select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true), true)), func_2().c, !select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), func_2().d)));
    let var_2 = -13250i;
    let var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(194f))), var_1.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(595f)) - _wgslsmith_f_op_f32(-153f - 1686f)))), var_1.a.x), 17023i);
    let var_4 = -vec3<i32>(0i, var_2, var_3.b);
    let var_5 = 1u;
    var var_6 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.x, 3247f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a.x, 1000f) + var_1.a.zz)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_3.a.wz - var_3.a.ww), var_1.a.zz, select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))))) - vec2<f32>(func_2().c.a.x, var_3.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

