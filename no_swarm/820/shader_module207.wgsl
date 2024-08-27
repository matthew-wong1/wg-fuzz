struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<u32>, arg_3: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-1752f - -156f), -1283f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(-1110f, arg_0.a, -1384f), vec3<f32>(arg_0.a, arg_0.a, arg_0.a)), vec3<f32>(arg_0.a, arg_0.a, 768f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, arg_0.a, arg_0.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, -1264f, 1000f) * vec3<f32>(-1345f, arg_0.a, arg_0.a)))))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-821f * arg_0.a))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -384f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * _wgslsmith_div_f32(arg_0.a, 211f))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(arg_0.a - 2210f));
    let var_2 = var_1;
    let var_3 = u_input.d.x;
    var var_4 = vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, ~(~56150u), ~4294967295u), ~((vec3<u32>(1u, arg_2.x, 13552u) & vec3<u32>(u_input.a.x, arg_2.x, 36490u)) & (vec3<u32>(0u, 4294967295u, 18094u) >> (u_input.a.zyy % vec3<u32>(32u))))), ~u_input.a.x, 4294967295u, ~(~0u));
    return var_4.x;
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 34154u, 0u), reverseBits(vec3<u32>(0u, u_input.a.x, u_input.a.x))), 1u), u_input.a.x) > _wgslsmith_dot_vec3_u32(u_input.a.wwz, ~(vec3<u32>(52206u, u_input.a.x, 4294967295u) >> (firstTrailingBit(vec3<u32>(u_input.a.x, 17690u, u_input.a.x)) % vec3<u32>(32u))));
    var var_1 = vec2<bool>(true, true);
    let var_2 = Struct_2(abs(_wgslsmith_mod_vec3_u32(~u_input.a.zwx, vec3<u32>(~4294967295u, u_input.a.x, func_3(Struct_1(505f), vec3<bool>(false, false, true), u_input.a.xz, 2147483647i)))), ~(~_wgslsmith_add_u32(max(0u, u_input.a.x), 0u)), all(!vec3<bool>(var_1.x, false, all(vec3<bool>(false, false, var_1.x)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-430f)))) * 1292f)));
    var var_3 = 0u;
    let var_4 = var_2;
    return var_4;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: i32) -> f32 {
    let var_0 = func_2(-countOneBits(abs(_wgslsmith_mult_i32(u_input.c, arg_2))));
    var var_1 = var_0;
    let var_2 = _wgslsmith_mod_i32(arg_2, i32(-1i) * -2147483647i);
    var_1 = func_2(34874i);
    var var_3 = var_0;
    return var_1.d.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1652f, 1306f) * -2073f)), 1000f, true)), _wgslsmith_f_op_f32(f32(-1f) * -810f)));
    var_0 = _wgslsmith_f_op_f32(274f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(714f * -308f))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(15550u, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -116f) - -1285f)), firstLeadingBit(u_input.d.x))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-465f - -511f));
    var var_1 = vec4<i32>(select(-(~(-69904i)), select(max(u_input.d.x, 1i), -countOneBits(1i), !func_2(u_input.b).c), !select(true, u_input.a.x >= 4294967295u, all(vec3<bool>(true, false, true)))), -13181i, -(~max(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.c, -14714i, -1i), vec4<i32>(u_input.d.x, u_input.c, u_input.d.x, 69441i)))), _wgslsmith_div_i32(select(u_input.d.x, 43563i, true), ~u_input.b));
    var_0 = -285f;
    var var_2 = ~func_2(-_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(var_1.x, -2147483647i, -5360i), _wgslsmith_dot_vec2_i32(u_input.d.yz, vec2<i32>(u_input.b, var_1.x)), countOneBits(u_input.d.x))).a.x;
    var_2 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) - 1f) - _wgslsmith_div_f32(-513f, 1078f)), vec3<i32>(-65964i, var_1.x, _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.c, _wgslsmith_clamp_i32(u_input.d.x, var_1.x, 0i)), max(max(var_1.x, 2147483647i), var_1.x | u_input.d.x))), var_1.x, reverseBits(1i), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))));
}

