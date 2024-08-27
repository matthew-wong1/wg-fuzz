struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> bool {
    let var_0 = arg_2;
    let var_1 = u_input.a;
    let var_2 = arg_0;
    let var_3 = var_2;
    var var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1010f))))))));
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> vec2<bool> {
    var var_0 = arg_1 & arg_0.a.x;
    var_0 = 20074u;
    let var_1 = u_input.a;
    let var_2 = !(!select(vec3<bool>(true, true, func_2(arg_0, true, arg_1)), vec3<bool>(arg_1 < 31542u, arg_1 <= 4294967295u, true), all(vec4<bool>(true, true, true, true))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(2049f, 499f, arg_2, 848f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1470f, 1000f, arg_2, arg_2))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1000f, 264f, -863f) * vec4<f32>(arg_2, arg_2, 930f, -184f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1152f, 286f, 1091f, arg_2))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, arg_2, -329f, -663f), vec4<f32>(-1000f, -602f, arg_2, 388f), any(var_2.zx))))));
    return vec2<bool>(-1000f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-412f * arg_2))), true);
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: vec4<u32>, arg_3: i32) -> i32 {
    var var_0 = !select(select(vec3<bool>(true, arg_0 > 601f, !arg_1.x), vec3<bool>(all(vec4<bool>(false, false, arg_1.x, true)), arg_1.x, true), !vec3<bool>(arg_1.x, false, arg_1.x)), select(!(!vec3<bool>(arg_1.x, true, false)), vec3<bool>(!arg_1.x, false, arg_1.x), select(vec3<bool>(true, false, arg_1.x), !vec3<bool>(true, true, arg_1.x), !arg_1.x)), select(vec3<bool>(arg_3 > u_input.b, arg_1.x, false), !vec3<bool>(true, arg_1.x, true), vec3<bool>(!arg_1.x, select(true, arg_1.x, arg_1.x), arg_1.x || arg_1.x)));
    var var_1 = arg_2.xzz;
    var_1 = select(vec3<u32>(_wgslsmith_sub_u32(~1u, var_1.x) >> (~(~arg_2.x) % 32u), var_1.x, arg_2.x), ~_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(arg_2.wxw << (vec3<u32>(1u, 4294967295u, arg_2.x) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(var_1.x, 19426u, 4294967295u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(47428u, 4294967295u, 4294967295u), arg_2.zxx, vec3<u32>(0u, arg_2.x, 0u)) | vec3<u32>(var_1.x, var_1.x, 4294967295u), ~(arg_2.zwx << (vec3<u32>(1u, 15628u, 4294967295u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-861f, -560f) * arg_0) < _wgslsmith_f_op_f32(trunc(arg_0)));
    var var_2 = ~(min(4294967295u, (var_1.x ^ var_1.x) >> (18301u % 32u)) & ~var_1.x);
    var_1 = _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>((arg_2.x & var_1.x) & arg_2.x, firstLeadingBit(~61025u), 28917u)), ~_wgslsmith_div_vec3_u32((arg_2.wwz | vec3<u32>(arg_2.x, 25537u, 0u)) & ~arg_2.xww, max(arg_2.zwx, vec3<u32>(0u, 4294967295u, 38616u)) & min(arg_2.zwx, arg_2.yxy)));
    return reverseBits(-1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec2<bool>(true, false));
    var_0 = !(firstLeadingBit(func_3(_wgslsmith_f_op_f32(abs(420f)), func_1(Struct_1(vec4<u32>(0u, 9320u, 31504u, 43056u), u_input.a, vec3<i32>(42967i, 18493i, u_input.a), vec2<i32>(-45521i, -1569i)), 1358u, 1000f), vec4<u32>(34588u, 1u, 4294967295u, 15131u), 0i)) >= _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(u_input.b, -82647i)), ~vec2<i32>(992i, u_input.b)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-205f, 269f, false)), _wgslsmith_f_op_f32(f32(-1f) * -1194f)) * -327f))) - _wgslsmith_f_op_f32(max(-1240f, -719f)));
    var_0 = !(all(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), false)) | func_1(Struct_1(vec4<u32>(1u, 1u, 1u, 1u), -62060i, vec3<i32>(u_input.a, u_input.b, u_input.b), countOneBits(vec2<i32>(-40535i, 2147483647i))), ~_wgslsmith_add_u32(0u, 4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -742f)).x);
    let var_2 = vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, select(2140u, 4294967295u, true)), ~max(vec2<u32>(16839u, 34358u), vec2<u32>(4294967295u, 79531u))), _wgslsmith_div_u32(26207u, 1u), ~(~1u), _wgslsmith_clamp_u32(1u, ~(~4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(47392u, 87439u, 22334u, 1u), vec4<u32>(8104u, 4294967295u, 4294967295u, 1u)))) << (_wgslsmith_sub_vec4_u32(vec4<u32>(firstTrailingBit(4294967295u), 0u, ~72905u, select(0u, 0u, true)) & vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(32904u, _wgslsmith_clamp_u32(38425u, 1u, 1u), abs(42940u), ~0u) ^ vec4<u32>(0u, _wgslsmith_clamp_u32(1u, 1665u, 40586u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 80224u, 29869u, 4294967295u), vec4<u32>(50019u, 45001u, 4294967295u, 1u)), 0u << (0u % 32u))) % vec4<u32>(32u));
    let var_3 = Struct_1(~firstTrailingBit(var_2) >> (max(_wgslsmith_clamp_vec4_u32(~vec4<u32>(7982u, var_2.x, var_2.x, 8480u), ~vec4<u32>(var_2.x, var_2.x, var_2.x, 1u), var_2), min(~var_2, ~vec4<u32>(var_2.x, var_2.x, var_2.x, 38452u))) % vec4<u32>(32u)), 89027i, ~(-(~vec3<i32>(-17034i, -9603i, u_input.b) | firstTrailingBit(vec3<i32>(1i, u_input.a, u_input.a)))), max(~(~vec2<i32>(-1i, u_input.a) & vec2<i32>(-6987i, u_input.b)), ~vec2<i32>(~u_input.b, reverseBits(0i))));
    var var_4 = 35176i;
    let x = u_input.a;
    s_output = StorageBuffer(-85766i << (~abs(var_2.x) % 32u), countOneBits(vec4<i32>(-37520i, 0i, -var_3.d.x, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(-2147483647i, var_3.d.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(45840i, -2147483647i), vec2<i32>(u_input.b, 1i))))));
}

