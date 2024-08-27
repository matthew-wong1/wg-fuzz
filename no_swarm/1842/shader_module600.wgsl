struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = ~(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, _wgslsmith_sub_u32(26246u, 23997u), 15075u, ~38868u)) >> ((_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1582u, 0u, 44119u)) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))) % 32u));
    let var_1 = Struct_1(arg_1.a);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(arg_1.a)))));
    var var_3 = var_1;
    var_3 = var_1;
    return abs(u_input.b.yy);
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = abs(36280u);
    var var_1 = select(func_3(true, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1854f))))), _wgslsmith_mult_vec2_i32(u_input.b.yx, reverseBits(reverseBits(vec2<i32>(u_input.a.x, u_input.a.x)))), arg_0);
    var_1 = vec2<i32>(firstLeadingBit(countOneBits(-(~var_1.x))), _wgslsmith_dot_vec4_i32(u_input.b, u_input.b) & _wgslsmith_clamp_i32(-46551i, 2147483647i, abs(0i)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-132f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1417f, _wgslsmith_f_op_f32(f32(-1f) * -516f))))));
    var_1 = u_input.b.yz;
    return ~_wgslsmith_sub_u32(~1u, max(_wgslsmith_mod_u32(abs(1u), ~68103u), 1u));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = vec4<u32>(~0u, arg_0 << (abs(9364u) % 32u), arg_0 & 1u, ~_wgslsmith_clamp_u32(47013u, arg_0, max(1u, ~arg_0)));
    let var_1 = vec3<bool>(!(arg_0 > func_2(true)), any(select(vec3<bool>(any(vec4<bool>(true, true, true, true)), true, true), vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false)))), false);
    var var_2 = 318f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2408f, -408f) + -202f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-219f - -1100f))))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-886f, 415f))), 524f)));
    var var_3 = ~(~_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(select(var_0.xy, vec2<u32>(19825u, arg_0), var_1.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0, arg_0), var_0.ww, vec2<u32>(var_0.x, 1u))), ~var_0.yx));
    let var_4 = 182f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -206f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-447f, -505f)) + _wgslsmith_f_op_f32(sign(438f))), 2196f));
    return Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1921f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 813f;
    var var_1 = func_1(31680u);
    var var_2 = true;
    var var_3 = all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, any(vec2<bool>(true, true))), reverseBits(select(76537u, 1u, false)) <= ~_wgslsmith_div_u32(42027u, 40807u)));
    let var_4 = false;
    var var_5 = ~countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(~25491u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, 4294967295u), vec4<u32>(31376u, 0u, 71527u, 0u))), ~vec2<u32>(1u, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(select(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.a.x, 2147483647i, u_input.a.x), abs(vec4<i32>(2147483647i, 43950i, -2147483647i, u_input.a.x))), select(vec4<i32>(u_input.a.x, u_input.b.x, -2147483647i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, -72477i, u_input.b.x), vec4<bool>(true, false, var_4, true)), !(!var_4))), _wgslsmith_f_op_f32(-var_1.a), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * -483f), -767f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(380f, 550f)))))), ~firstTrailingBit(~select(vec3<u32>(var_5.x, 0u, var_5.x), vec3<u32>(19335u, 1u, 23887u), false)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, -973f, var_1.a)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.a, var_1.a, -351f), vec3<f32>(var_1.a, var_1.a, -1000f))))))));
}

