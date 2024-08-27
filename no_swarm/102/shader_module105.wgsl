struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> bool {
    var var_0 = 26625u;
    return true;
}

fn func_3() -> f32 {
    var var_0 = -(~countOneBits(-5565i));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-2573f, -570f)))))));
    var var_2 = reverseBits(10832i);
    var_1 = Struct_1(vec2<f32>(479f, var_1.a.x));
    let var_3 = vec2<bool>(true && !func_2(Struct_1(var_1.a), var_1.a.x, Struct_1(var_1.a)), !any(vec3<bool>(true, any(vec3<bool>(true, false, false)), true)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2226f, _wgslsmith_f_op_f32(969f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))), var_3.x)) + _wgslsmith_f_op_f32(-2415f * _wgslsmith_div_f32(-544f, 2153f)));
}

fn func_1(arg_0: vec2<u32>) -> vec2<f32> {
    let var_0 = _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(~select(vec3<i32>(-1i, -57592i, -9291i), vec3<i32>(u_input.a, u_input.a, -42210i), false)), max(firstTrailingBit(~vec3<i32>(-1i, u_input.a, -2147483647i)), ~abs(vec3<i32>(-6940i, u_input.a, u_input.a))), ~(~vec3<i32>(-2147483647i, -39735i, u_input.a))), _wgslsmith_mod_vec3_i32(vec3<i32>(i32(-1i) * -119263i, u_input.a, 1i) & vec3<i32>(-u_input.a, 2147483647i, firstTrailingBit(u_input.a)), vec3<i32>(-u_input.a, -38749i, ~u_input.a) << (~vec3<u32>(55622u, 23474u, 4294967295u) % vec3<u32>(32u))));
    var var_1 = !select(vec4<bool>(true & any(vec3<bool>(true, true, true)), all(vec2<bool>(true, true)), any(vec2<bool>(true, false)) && true, true), vec4<bool>(select(true, true, true), _wgslsmith_add_i32(51301i, 1i) != var_0.x, false, false), true);
    var_1 = vec4<bool>(any(var_1.zx), ~(~0u >> (~arg_0.x % 32u)) < abs(~arg_0.x), all(vec4<bool>(false, true, var_1.x, any(!var_1.wx))), all(!vec3<bool>(any(var_1.zy), !var_1.x, false)));
    var var_2 = select(vec2<bool>(true, select(var_1.x, var_1.x, firstLeadingBit(var_0.x) > _wgslsmith_dot_vec3_i32(var_0, var_0))), vec2<bool>(!all(vec4<bool>(var_1.x, var_1.x, var_1.x, false)), !var_1.x), vec2<bool>(all(select(vec2<bool>(false, false), var_1.yz, var_1.xx)) & true, !func_2(Struct_1(vec2<f32>(-578f, -1547f)), -659f, Struct_1(vec2<f32>(-957f, -636f)))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1029f, -1000f)) + vec2<f32>(-513f, -2328f)))));
    return vec2<f32>(var_3.a.x, _wgslsmith_f_op_f32(func_3()));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1078f, 1077f)))))), _wgslsmith_f_op_vec2_f32(func_1(vec2<u32>(_wgslsmith_add_u32(32360u, 77340u), ~0u))))));
    var var_1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0)), var_0)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(var_1.a)));
    var var_3 = !(u_input.a == -u_input.a) != (all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))) || (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x * var_0.x)) == 1081f));
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.a));
    var_1 = Struct_1(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, ~(vec4<u32>(~52972u, 51078u, ~0u, ~23847u) | select(vec4<u32>(57846u, 4294967295u, 0u, 4294967295u), ~vec4<u32>(0u, 4715u, 1u, 54474u), vec4<bool>(true, false, true, true))), vec3<u32>(0u >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 78851u), ~vec2<u32>(9038u, 4294967295u)) % 32u), 1u, 1u), vec4<i32>(1i, -(~max(u_input.a, -18684i)), 2147483647i, countOneBits(~(-u_input.a))));
}

