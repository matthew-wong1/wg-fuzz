struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: vec2<f32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> i32 {
    let var_0 = vec3<u32>(125151u, firstTrailingBit(countOneBits(~66015u)), u_input.c.x) << (vec3<u32>(~(~(~u_input.a)), _wgslsmith_sub_u32(abs(4294967295u), ~(~u_input.a)), u_input.c.x) % vec3<u32>(32u));
    var var_1 = 17393i;
    var_1 = -_wgslsmith_clamp_i32(-_wgslsmith_dot_vec2_i32(~u_input.e, u_input.e), -1i, firstTrailingBit(u_input.e.x));
    var_1 = -31877i;
    var var_2 = !(!select(vec3<bool>(arg_1.a < arg_1.a, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), false)));
    return u_input.e.x;
}

fn func_2(arg_0: u32, arg_1: vec4<u32>) -> Struct_2 {
    var var_0 = ~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(func_3(-1i, Struct_1(-931f)), ~u_input.e.x, ~u_input.e.x), -(vec3<i32>(u_input.e.x, u_input.e.x, 32709i) & vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x))), -_wgslsmith_mult_i32(u_input.e.x, 20089i), reverseBits(u_input.e.x), -1i);
    var var_1 = _wgslsmith_clamp_i32(max(0i, ~var_0.x), min(select(~_wgslsmith_add_i32(-1i, u_input.e.x), var_0.x >> ((0u >> (1u % 32u)) % 32u), -2147483647i == func_3(u_input.e.x, Struct_1(-802f))), 44540i), -29262i);
    let var_2 = vec4<u32>(countOneBits(u_input.d.x), ~firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(49155u, 13247u, u_input.b.x, 1u), vec4<u32>(arg_1.x, 4294967295u, u_input.c.x, 0u)), 6308u | arg_0)), ~(_wgslsmith_add_u32(_wgslsmith_div_u32(0u, arg_1.x), _wgslsmith_div_u32(arg_0, 0u)) & _wgslsmith_sub_u32(~34310u, 38798u)), ~countOneBits(4294967295u));
    let var_3 = select(~min(min(var_2.x, arg_0), u_input.b.x << (arg_1.x % 32u)), min(var_2.x, ~abs(58662u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1162f - 846f))) < _wgslsmith_f_op_f32(floor(-1224f))) | ~arg_0;
    var var_4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-505f + _wgslsmith_f_op_f32(abs(712f))))), select(vec2<bool>(!(var_0.x >= -37732i), true), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_1(546f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), vec2<f32>(1000f, 833f)))))), vec3<u32>(u_input.a, arg_0, _wgslsmith_sub_u32(u_input.b.x | ~var_2.x, 1u)));
    return Struct_2(var_4.c, !var_4.b, var_4.c, var_4.d, u_input.b.yzz);
}

fn func_1(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = Struct_1(-1709f);
    let var_1 = 55607u;
    var var_2 = arg_0.wyw;
    var_2 = arg_0.zxw;
    let var_3 = u_input.e.x;
    return func_2(~(~1u), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(836f * -203f));
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-1348f - -842f)), _wgslsmith_div_f32(240f, _wgslsmith_f_op_f32(-var_0.a))));
    var_0 = Struct_1(var_0.a);
    var var_2 = func_1(vec4<bool>(any(vec4<bool>(4294967295u == u_input.d.x, true, true, true)), all(vec4<bool>(true, true, true, true)) && all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), -u_input.e.x != u_input.e.x, u_input.d.x <= ~u_input.a));
    let var_3 = min(min(reverseBits(~vec4<u32>(35850u, 22650u, 4294967295u, 0u)), min(vec4<u32>(var_2.e.x, u_input.b.x, 0u, 0u) ^ vec4<u32>(var_2.e.x, var_2.e.x, 0u, 13708u), vec4<u32>(0u, u_input.d.x, 31229u, u_input.d.x)) | ~vec4<u32>(83457u, 0u, 58550u, u_input.c.x)), vec4<u32>(0u, ~3299u, _wgslsmith_div_u32(_wgslsmith_div_u32(countOneBits(29464u), ~u_input.b.x), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 16986u, 55621u, 4294967295u), u_input.c))), 1u));
    var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1012f - var_2.c.a) + func_1(vec4<bool>(var_2.b.x, false, var_2.b.x, false)).a.a) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), var_2.b, func_1(!vec4<bool>(!var_2.b.x, true, var_2.b.x, true)).a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_2.a.a)), vec2<f32>(var_1.a, 331f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1909f, 1927f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1186f, -1000f) * var_2.d), var_2.b.x))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(var_1.a * -1829f), _wgslsmith_f_op_f32(step(var_0.a, 228f)))))), ~var_3.xzz);
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.e.x), vec4<f32>(func_2(u_input.d.x, select(vec4<u32>(var_2.e.x, 4294967295u, 11863u, u_input.b.x), vec4<u32>(37694u, 71883u, var_2.e.x, u_input.b.x), vec4<bool>(var_2.b.x, false, false, var_2.b.x)) ^ firstLeadingBit(u_input.b)).d.x, var_1.a, _wgslsmith_f_op_f32(var_2.c.a + -1071f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(104f)))) * func_2(u_input.c.x, vec4<u32>(15721u, 78906u, 4294967295u, var_3.x)).c.a)), abs(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(~var_2.e.xy, func_1(vec4<bool>(false, var_2.b.x, var_2.b.x, false)).e.zy), vec2<u32>(~var_3.x, 1u))), abs(-countOneBits(-vec3<i32>(-26044i, -1i, -10711i))));
}

