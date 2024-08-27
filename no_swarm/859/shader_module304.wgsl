struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_2) -> u32 {
    let var_0 = arg_2.b;
    return ~_wgslsmith_sub_u32(4294967295u, 85404u);
}

fn func_3() -> u32 {
    var var_0 = 2147483647i;
    let var_1 = 0i;
    let var_2 = firstLeadingBit(_wgslsmith_div_u32(~_wgslsmith_mod_u32(1u, _wgslsmith_add_u32(0u, 1u)), 1u));
    let var_3 = select(any(vec3<bool>(true, true, true)) | false, !any(vec4<bool>(false, false, false, true)) && true, true == any(vec2<bool>(true, true)));
    let var_4 = true;
    return 1u;
}

fn func_1(arg_0: vec2<f32>) -> bool {
    let var_0 = Struct_4(~_wgslsmith_mod_u32(31560u, 31980u));
    var var_1 = firstLeadingBit(~vec3<u32>(func_2(~u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1052f, -625f, arg_0.x, 1360f)), Struct_2(Struct_1(vec3<u32>(8462u, var_0.a, 1u), var_0.a, vec3<u32>(55319u, var_0.a, 1u), vec3<bool>(false, false, false), vec2<bool>(false, true)), false, true)), ~(~var_0.a), 4294967295u));
    var var_2 = var_0.a;
    let var_3 = !select(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), true), vec4<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false))), _wgslsmith_sub_i32(-9546i, u_input.a) == -21610i, all(vec3<bool>(false, false, true)), !all(vec2<bool>(false, true))), ~(var_0.a & var_0.a) <= (var_1.x | ~var_0.a));
    var_1 = ~vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(1u, ~var_1.x), ~_wgslsmith_div_u32(var_1.x, var_0.a)), var_0.a ^ 10359u, func_3());
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -firstTrailingBit(abs(firstTrailingBit(vec3<i32>(-2147483647i, -63216i, u_input.a)))) >> (max(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(~82830u, ~4294967295u, ~6500u)) % vec3<u32>(32u));
    let var_1 = vec4<f32>(-2426f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-947f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(496f, 1000f)), func_1(vec2<f32>(-669f, -483f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -329f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -180f) - 1583f), 296f, true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -933f), -1100f)), all(vec2<bool>(true, all(vec4<bool>(false, true, true, true)))))), _wgslsmith_div_f32(_wgslsmith_div_f32(-436f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-485f)), 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1083f - _wgslsmith_f_op_f32(ceil(820f))))));
    let var_2 = max(u_input.a, ~u_input.a);
    let var_3 = vec2<i32>(_wgslsmith_mult_i32(36588i, var_2), -(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(18448i, 2147483647i, var_2), var_0)) & var_2));
    let var_4 = firstLeadingBit(~var_2);
    let var_5 = 1000f;
    var var_6 = var_1;
    let var_7 = !select(select(select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), vec3<bool>(all(vec3<bool>(true, true, false)), true, func_1(var_6.ww)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), 1000f == var_5), false));
    let x = u_input.a;
    s_output = StorageBuffer(~(~35578u), ~_wgslsmith_mod_u32(func_3(), abs(func_2(var_4, var_1, Struct_2(Struct_1(vec3<u32>(50758u, 20046u, 4294967295u), 68825u, vec3<u32>(14928u, 1u, 23997u), vec3<bool>(false, var_7.x, false), vec2<bool>(var_7.x, false)), false, var_7.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(425f + _wgslsmith_f_op_f32(-var_6.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_5 + 2086f), _wgslsmith_f_op_f32(-var_5), _wgslsmith_f_op_f32(trunc(-645f)), var_1.x) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1400f, var_5, var_1.x, 990f))))))));
}

