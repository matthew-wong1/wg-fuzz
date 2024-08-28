struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: u32) -> vec3<i32> {
    let var_0 = vec4<bool>(~(~u_input.c) != (u_input.c | countOneBits(0u)), any(vec3<bool>(true, all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), false)), any(vec2<bool>(true, true)))), false, ((_wgslsmith_f_op_f32(-arg_0) != _wgslsmith_f_op_f32(arg_0 * -400f)) | false) && any(vec2<bool>(true, true)));
    let var_1 = abs(_wgslsmith_mult_vec4_u32(vec4<u32>(firstLeadingBit(54348u), abs(u_input.c), ~u_input.c, 65649u) & ~(~vec4<u32>(u_input.c, 0u, arg_1, 56125u)), ~_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(39385u, u_input.c, 11959u, u_input.c), vec4<u32>(0u, arg_1, 0u, 0u)), vec4<u32>(arg_1, arg_1, 21563u, u_input.c) << (vec4<u32>(u_input.c, 1u, 4294967295u, u_input.c) % vec4<u32>(32u)))));
    var var_2 = _wgslsmith_mult_vec3_u32(var_1.wxw, var_1.zyx);
    var var_3 = Struct_1(vec3<u32>(_wgslsmith_mod_u32(u_input.c, ~(~1u)), _wgslsmith_div_u32(1u, ~min(4710u, var_2.x)), ~(u_input.c & ~var_1.x)), arg_0, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-328f - _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), -597f, arg_0), ~var_2.x);
    var var_4 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_3.c.xz)));
    return max(-abs(u_input.b) ^ (~u_input.b & u_input.b), u_input.b) & -(~(-min(u_input.b, vec3<i32>(43810i, -53674i, -2147483647i))));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1042f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, 389f))))));
    let var_1 = _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(-28103i, u_input.a.x | 0i, _wgslsmith_mod_i32(-2147483647i, u_input.b.x)), -firstLeadingBit(~vec3<i32>(u_input.b.x, u_input.a.x, u_input.b.x))), -u_input.b, ~min(u_input.b, _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 0i, u_input.b.x) | u_input.b, func_3(var_0, u_input.c), u_input.b | vec3<i32>(31254i, 1i, 0i))));
    let var_2 = ~min(~max(40169u, 66701u), u_input.c);
    let var_3 = Struct_2(-vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), countOneBits(var_1.x)) & var_1.zz, var_2);
    var var_4 = var_1.x;
    return Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.c >> (61682u % 32u), 23157u) & (min(vec3<u32>(var_3.b, var_3.b, 1u), vec3<u32>(0u, u_input.c, u_input.c)) | _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 0u, 46282u), vec3<u32>(u_input.c, u_input.c, 4294967295u))), ~(~(~vec3<u32>(47374u, var_3.b, 39898u)))), _wgslsmith_f_op_f32(f32(-1f) * -1526f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1293f, -1038f, var_0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(418f, var_0, -1788f))))), 0u);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32) -> u32 {
    var var_0 = Struct_2(~u_input.a, 4294967295u);
    var_0 = Struct_2(max(u_input.a, var_0.a), ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(arg_0.d, 1709u) ^ arg_0.d, arg_0.d ^ u_input.c, arg_0.a.x));
    let var_1 = arg_0;
    var var_2 = ~var_0.b;
    var_2 = 1u;
    return _wgslsmith_add_u32(_wgslsmith_add_u32(6394u, _wgslsmith_add_u32(38512u, ~(~1u))), 23702u);
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: vec3<f32>) -> u32 {
    var var_0 = u_input.b.yy;
    let var_1 = ~func_4(func_2(), vec4<bool>(true, arg_1, true, !arg_1), _wgslsmith_div_f32(-313f, -395f));
    var var_2 = _wgslsmith_mod_vec2_i32(firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(38091i, u_input.b.x) >> (arg_0 % vec2<u32>(32u)), vec2<i32>(u_input.b.x, var_0.x))) << (arg_0 % vec2<u32>(32u)), abs(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -7200i, u_input.a.x, var_0.x), vec4<i32>(var_0.x, u_input.a.x, -2147483647i, 7118i)), (u_input.b.x ^ var_0.x) ^ reverseBits(u_input.b.x))));
    let var_3 = firstTrailingBit(~(~u_input.b.xx));
    var_2 = vec2<i32>(countOneBits(var_0.x), -14497i);
    return _wgslsmith_add_u32(u_input.c, ~(~(~arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(1u, abs(0u) ^ (42580u ^ u_input.c), _wgslsmith_mod_u32(~firstTrailingBit(~u_input.c), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(54820u, 106021u, u_input.c, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 25647u, u_input.c, 42587u), _wgslsmith_add_vec4_u32(vec4<u32>(32699u, 37725u, u_input.c, u_input.c), vec4<u32>(1u, u_input.c, u_input.c, 70167u))))), u_input.c);
    let var_1 = Struct_2(_wgslsmith_sub_vec2_i32(~_wgslsmith_mult_vec2_i32(u_input.a, u_input.b.xy) << (max(reverseBits(vec2<u32>(36206u, 29357u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 43119u), var_0.xy, vec2<u32>(72525u, var_0.x))) % vec2<u32>(32u)), vec2<i32>(-1i, u_input.a.x) | u_input.a), u_input.c);
    var var_2 = vec4<u32>(~var_1.b >> (var_0.x % 32u), 4294967295u, abs(firstLeadingBit(~var_1.b)), ~1u << (abs(func_1(var_0.wz, false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1000f, 743f)))) % 32u));
    var_0 = ~_wgslsmith_div_vec4_u32(~max(vec4<u32>(0u, 0u, 0u, 27859u), vec4<u32>(var_1.b, u_input.c, var_1.b, 4294967295u)) >> (~_wgslsmith_add_vec4_u32(vec4<u32>(35439u, 4294967295u, 1u, var_2.x), vec4<u32>(var_2.x, var_1.b, var_0.x, var_1.b)) % vec4<u32>(32u)), (_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_2.x, 4294967295u, 36828u), vec4<u32>(var_0.x, 48071u, 46705u, 86175u)) | (vec4<u32>(var_2.x, var_2.x, var_2.x, 95304u) | vec4<u32>(var_0.x, var_1.b, var_0.x, 40303u))) << (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 5859u, 70918u, u_input.c), vec4<u32>(var_1.b, 4294967295u, var_1.b, u_input.c) & vec4<u32>(29192u, 63799u, var_1.b, var_0.x)) % vec4<u32>(32u)));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-392f - _wgslsmith_f_op_f32(f32(-1f) * -726f))), 1f);
    var var_4 = -max(u_input.a.x, 0i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-302f * _wgslsmith_f_op_f32(1454f - _wgslsmith_f_op_f32(sign(var_3.x)))) + _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_3.x)), _wgslsmith_f_op_f32(floor(693f))), var_3.x)), ~abs((var_1.b & 20050u) | 0u), vec4<f32>(_wgslsmith_div_f32(var_3.x, _wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(floor(261f)))), var_3.x, -2026f, var_3.x), ~(~countOneBits(u_input.b & u_input.b)));
}

