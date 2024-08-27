struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = true;
    var var_1 = u_input.a;
    var var_2 = Struct_1(4294967295u, ~abs(_wgslsmith_div_u32(~45973u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(1u, 29533u)))));
    var_1 = ~u_input.a;
    var_1 = arg_0.c.a;
    return !select(select(select(!vec4<bool>(arg_0.e, false, var_0, arg_0.e), select(vec4<bool>(arg_0.e, true, var_0, true), vec4<bool>(false, false, true, true), vec4<bool>(arg_0.e, arg_0.e, var_0, false)), all(vec4<bool>(true, false, false, arg_0.e))), select(vec4<bool>(arg_0.e, var_0, true, arg_0.e), vec4<bool>(false, var_0, true, var_0), select(vec4<bool>(var_0, true, false, true), vec4<bool>(var_0, true, true, var_0), true)), vec4<bool>(true, arg_0.e & true, var_0, var_2.a > 0u)), !(!(!vec4<bool>(arg_0.e, true, false, true))), var_0);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1376f);
    let var_1 = arg_2;
    let var_2 = !(!(!select(func_3(Struct_2(arg_2, var_1, Struct_1(u_input.a, 0u), vec2<f32>(515f, 1668f), true)), vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x), true)));
    var var_3 = var_1;
    var var_4 = 122f;
    return Struct_2(arg_2, var_1, Struct_1(17156u, reverseBits(var_1.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(784f, 121f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1287f)), any(arg_1)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1100f, var_0))))), any(vec3<bool>(false, false, arg_1.x)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = !vec3<bool>(584f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.d.x)) + -228f), arg_0.e || false, all(select(select(vec4<bool>(false, false, arg_0.e, arg_0.e), vec4<bool>(arg_0.e, false, false, arg_0.e), false), vec4<bool>(arg_0.e, arg_0.e, arg_0.e, arg_0.e), !vec4<bool>(arg_0.e, false, true, true))));
    var var_1 = ~vec4<u32>(_wgslsmith_clamp_u32(arg_0.c.a >> (4294967295u % 32u), ~select(0u, u_input.a, false), max(abs(arg_1.a), 11180u)), arg_2.b, _wgslsmith_div_u32(arg_1.b, 26005u), ~u_input.a);
    var_1 = ~vec4<u32>(_wgslsmith_dot_vec3_u32(var_1.xxy, ~var_1.yzz >> (var_1.yxw % vec3<u32>(32u))), u_input.a, 0u, 4384u);
    return countOneBits(func_2(max(~reverseBits(vec4<u32>(arg_0.c.a, 0u, arg_1.a, 5288u)), vec4<u32>(12953u | u_input.a, _wgslsmith_sub_u32(arg_2.a, 69686u), u_input.a, 0u)), vec3<bool>(true, !var_0.x, !(arg_0.e & false)), Struct_1(select(arg_1.b, ~1u, all(var_0.xx)), (var_1.x | 43042u) | min(1u, arg_2.b))).c.a);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<i32>) -> f32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-arg_0.x))) + _wgslsmith_f_op_f32(max(460f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, true)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0.x)), 1309f))));
    let var_1 = vec3<u32>(u_input.a, firstTrailingBit(2396u) << (u_input.a % 32u), _wgslsmith_sub_u32(~4294967295u, _wgslsmith_clamp_u32(firstTrailingBit(58192u), abs(~14281u), func_4(func_2(vec4<u32>(u_input.a, 3293u, u_input.a, 36952u), vec3<bool>(true, true, false), Struct_1(49048u, 3170u)), Struct_1(u_input.a, u_input.a), Struct_1(u_input.a, u_input.a)))));
    var var_2 = var_1.x;
    var var_3 = ~_wgslsmith_add_i32(2147483647i << (func_4(Struct_2(Struct_1(1u, u_input.a), Struct_1(56148u, u_input.a), Struct_1(var_1.x, 4094u), arg_0.zy, true), Struct_1(u_input.a, var_1.x), Struct_1(4294967295u, u_input.a)) % 32u), -18500i);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-173f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, -391f)) - _wgslsmith_f_op_f32(f32(-1f) * -3219f))))));
    return 399f;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-730f - 1f) * 826f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(660f, -1686f, -1416f, -1341f) + vec4<f32>(-2018f, -1121f, -1110f, -1175f)), countOneBits(vec4<i32>(-14174i, -56382i, -30471i, 19086i))))))), _wgslsmith_mod_i32(_wgslsmith_mod_i32(~_wgslsmith_mod_i32(32972i, 1i), ~max(28566i, -15753i)), _wgslsmith_add_i32(max(-14530i, reverseBits(2147483647i)), 1i)), vec2<i32>(1i, -1i));
}

