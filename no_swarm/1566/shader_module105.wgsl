struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec4<f32>,
    e: u32,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = ~(~(~_wgslsmith_dot_vec3_i32(select(vec3<i32>(-1i, -1i, u_input.a), vec3<i32>(u_input.a, -22513i, u_input.a), false), vec3<i32>(-2147483647i, 1i, -40407i))));
    var_0 = reverseBits(2147483647i & -u_input.a);
    let var_1 = arg_0;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -462f), _wgslsmith_f_op_f32(177f * 577f), -1224f);
    return min(~reverseBits(~_wgslsmith_mod_u32(5269u, var_1.a)), _wgslsmith_clamp_u32(firstLeadingBit(11178u), var_1.a, 4294967295u));
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_add_u32(arg_0.a, ~_wgslsmith_add_u32(arg_0.a ^ arg_0.a, 69735u)), select(arg_0.a, func_3(arg_0), true));
    var_0 = _wgslsmith_clamp_u32(arg_0.a, 4294967295u, arg_0.a | arg_0.a);
    return all(select(!vec3<bool>(true, u_input.a >= u_input.a, select(true, false, true)), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), any(select(vec2<bool>(true, false), vec2<bool>(false, true), true)))));
}

fn func_1() -> Struct_1 {
    var var_0 = !func_2(Struct_1(~0u));
    var var_1 = Struct_1(4294967295u);
    let var_2 = ~min(~(vec3<u32>(1u, var_1.a, 83566u) | vec3<u32>(var_1.a, var_1.a, var_1.a)), firstTrailingBit(select(vec3<u32>(37049u, var_1.a, var_1.a), vec3<u32>(59237u, 1u, 29704u), vec3<bool>(true, false, false)))) << (~vec3<u32>(func_3(Struct_1(var_1.a)), _wgslsmith_div_u32(_wgslsmith_sub_u32(var_1.a, var_1.a), _wgslsmith_add_u32(var_1.a, 1u)), var_1.a | ~20091u) % vec3<u32>(32u));
    var_0 = true | all(vec2<bool>(true, true));
    let var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(513f, 831f), vec2<f32>(173f, -369f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(661f, -1689f), vec2<f32>(644f, 921f)))))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(374f, 274f)) - _wgslsmith_div_vec2_f32(vec2<f32>(1342f, 234f), vec2<f32>(-761f, 222f)))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-918f, -611f), vec2<f32>(-181f, -2274f), vec2<bool>(false, false))) + vec2<f32>(-1000f, -309f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(479f, -320f))))))));
    return Struct_1(_wgslsmith_sub_u32(_wgslsmith_sub_u32(firstTrailingBit(var_2.x), func_3(Struct_1(4294967295u))) << (13605u % 32u), var_2.x));
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> u32 {
    let var_0 = func_1();
    let var_1 = arg_3;
    let var_2 = vec2<bool>(~_wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, arg_2), 1u) >= (var_1.a >> (0u % 32u)), false);
    var var_3 = ~0i;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1000f, -158f)))))) - -1207f);
    return ~_wgslsmith_clamp_u32(12695u, var_1.a, ~0u);
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: i32) -> vec3<u32> {
    let var_0 = 0u << (_wgslsmith_dot_vec3_u32(vec3<u32>(~arg_1.a, arg_1.a, ~countOneBits(36169u)), vec3<u32>(1712u, arg_1.a, select(~arg_2.x, arg_1.a, true))) % 32u);
    let var_1 = 804f > _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(529f + arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-461f)))), _wgslsmith_f_op_f32(-arg_0), false));
    let var_2 = arg_1;
    let var_3 = Struct_1(_wgslsmith_mult_u32(reverseBits(min(abs(1u), _wgslsmith_div_u32(arg_2.x, 0u))), _wgslsmith_add_u32(_wgslsmith_clamp_u32(~arg_1.a, 17906u, 41772u ^ arg_2.x), _wgslsmith_div_u32(var_0, ~30832u))));
    var var_4 = 1i;
    return _wgslsmith_mod_vec3_u32(~(~vec3<u32>(var_0 | 41875u, 0u, 50112u)), arg_2.ywz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(267f, -363f)), Struct_1(~36602u), _wgslsmith_mod_vec4_u32(vec4<u32>(24053u, _wgslsmith_mod_u32(1u, 50104u), func_4(~vec2<u32>(4898u, 74308u), -2147483647i & u_input.a, _wgslsmith_add_u32(4294967295u, 0u), func_1()), _wgslsmith_add_u32(~4294967295u, 11713u)), vec4<u32>(1u, 1u, 1u, 1u) | vec4<u32>(func_3(Struct_1(39299u)), ~77965u, abs(95514u), 4294967295u)), -37595i);
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-1987f * 923f), _wgslsmith_f_op_f32(sign(-1379f)), _wgslsmith_f_op_f32(f32(-1f) * -411f), _wgslsmith_f_op_f32(max(-1000f, 2703f))))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-327f, 1066f, -934f, -220f))))))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, ~_wgslsmith_clamp_u32(~(~var_0.x), 4294967295u, 4294967295u), vec3<i32>(u_input.a, -2147483647i, _wgslsmith_add_i32(1i, 1i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(972f, 284f, true)))), _wgslsmith_f_op_f32(-1581f * _wgslsmith_f_op_f32(abs(1343f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -134f) * _wgslsmith_f_op_f32(-var_1.x)), 1796f) + vec4<f32>(_wgslsmith_f_op_f32(min(869f, -1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.x * var_1.x))), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + var_1.x) * _wgslsmith_f_op_f32(f32(-1f) * -1033f)))), 1u);
}

