struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_1(select(vec4<bool>(true, true, all(vec2<bool>(true, true)), true), !vec4<bool>(true, true, select(true, true, false), true), vec4<bool>(true, true, true, true)));
    var var_1 = 0u;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(800f, -264f, -1995f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(-414f * -437f), 1f)), var_0.a.wyx)));
    var_1 = max(32511u, abs(~1u));
    var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-1828f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-242f, var_2.x, true)))), -342f));
    return ~vec3<i32>(_wgslsmith_div_i32(~_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), u_input.a.x), _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_div_i32(u_input.a.x, -u_input.a.x), min(~u_input.a.x, -u_input.a.x)), firstTrailingBit(max(select(u_input.a.x, u_input.a.x, false), ~u_input.a.x)));
}

fn func_2(arg_0: vec4<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -773f), _wgslsmith_f_op_f32(f32(-1f) * -1300f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(433f, -443f) - _wgslsmith_f_op_f32(ceil(-622f))))));
    var var_1 = ~arg_0;
    var var_2 = select(func_3(), vec3<i32>(-firstLeadingBit(u_input.a.x), -2147483647i, abs(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x))), any(vec3<bool>(true, true, true))) | select(vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), -vec3<i32>(98492i, 12053i, 0i)), 1i, countOneBits(max(-1i, -63283i))), firstTrailingBit(-vec3<i32>(u_input.a.x, 2147483647i, 1i)), select(vec3<bool>(true, any(vec4<bool>(false, false, false, true)), u_input.a.x >= u_input.a.x), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true))));
    var var_3 = u_input.a.x;
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0, -1068f, var_0)))))));
    return firstLeadingBit(func_3().x);
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = vec3<i32>(reverseBits(-u_input.a.x), _wgslsmith_mult_i32(0i, u_input.a.x), u_input.a.x);
    let var_1 = 1u;
    var_0 = -vec3<i32>(min(-var_0.x, -26019i), 1i << (var_1 % 32u), ~2147483647i) | vec3<i32>(_wgslsmith_add_i32(var_0.x, -func_2(vec4<u32>(0u, 29920u, 1u, 1u))), abs(var_0.x), var_0.x);
    var_0 = -vec3<i32>(0i, -var_0.x, u_input.a.x);
    var var_2 = vec3<bool>(arg_0.a.x, true, true);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1231f - -1000f), _wgslsmith_f_op_f32(step(-537f, 1000f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-153f - 1156f))))));
    let var_1 = Struct_1(!vec4<bool>(all(vec4<bool>(false, true, false, true)), true, any(vec3<bool>(true, false, false)) & true, any(vec3<bool>(true, true, true))));
    let var_2 = var_1;
    var var_3 = any(!vec2<bool>(true, func_1(Struct_1(vec4<bool>(var_1.a.x, var_1.a.x, var_2.a.x, true))) == _wgslsmith_mod_u32(0u, 16036u)));
    var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(func_1(Struct_1(vec4<bool>(true, true, true, var_1.a.x))), 4156u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(2045u, 0u, 40578u, 22074u), vec4<u32>(92685u, 0u, 4294967295u, 54850u), vec4<u32>(95325u, 63458u, 0u, 28699u))), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 32484u, 1u, 1u), vec4<u32>(13360u, 18995u, 18237u, 1u)) ^ ~0u)), firstLeadingBit(-u_input.a.x));
}

