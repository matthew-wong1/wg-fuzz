struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(i32(-2147483648), -1i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32) -> vec3<i32> {
    global0 = _wgslsmith_div_vec2_i32(-_wgslsmith_div_vec2_i32(u_input.a, abs(select(u_input.a, u_input.a, false))), u_input.a);
    let var_0 = vec3<i32>(select(max(-8996i, 39694i), _wgslsmith_mult_i32(arg_0, u_input.a.x) >> (u_input.b % 32u), ~34014u > (u_input.b | ~u_input.b)), u_input.a.x, global0.x);
    global0 = vec2<i32>(~max(68353i, _wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.a), select(u_input.a, vec2<i32>(arg_0, u_input.a.x), vec2<bool>(false, true)))), _wgslsmith_add_i32(1i, min(select(2147483647i, 22239i, false), 0i)));
    global0 = ~firstTrailingBit(select(u_input.a, vec2<i32>(0i, min(2147483647i, arg_0)), false));
    let var_1 = any(vec3<bool>(true, false, any(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)))));
    return var_0 | var_0;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(-firstTrailingBit(func_3(-u_input.a.x)), vec4<u32>(4294967295u, select(_wgslsmith_dot_vec3_u32(~vec3<u32>(37495u, 1u, u_input.b), min(vec3<u32>(u_input.b, 4294967295u, u_input.b), vec3<u32>(u_input.b, 8523u, 1u))), u_input.b, all(vec4<bool>(false, true, false, false))), _wgslsmith_add_u32(19508u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, 92717u, 44308u), u_input.b & 3218u)), _wgslsmith_clamp_u32(min(4294967295u, 16966u), u_input.b, min(u_input.b, 14593u)) ^ u_input.b), u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -455f))))));
    let var_1 = Struct_2(var_0.a, ~vec4<u32>(min(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, var_0.c), vec2<u32>(u_input.b, var_0.b.x)), reverseBits(0u)), 4294967295u, max(4294967295u, ~4427u), ~_wgslsmith_add_u32(var_0.c, 4294967295u)), 8443u, -559f);
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_1.d))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(885f, _wgslsmith_f_op_f32(var_1.d + 140f))), var_0.d), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(348f, -574f, var_1.d)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1270f, 375f, -2405f), vec3<f32>(var_1.d, var_1.d, 1214f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.d, var_1.d, -1308f)))))));
    return Struct_2(-func_3(u_input.a.x), ~select(abs(var_1.b), vec4<u32>(22001u >> (var_0.c % 32u), 1u, ~u_input.b, u_input.b), _wgslsmith_clamp_u32(var_0.c, var_0.c, var_1.b.x) < 1u), 4294967295u, -1182f);
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: Struct_2) -> vec2<f32> {
    global0 = arg_3.a.xy;
    global0 = u_input.a;
    return vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(step(-1745f, arg_0)))))), _wgslsmith_f_op_f32(arg_3.d * 313f));
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: i32, arg_3: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-659f, arg_1.x), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_1), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-981f, arg_0)))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1303f, -927f) - vec2<f32>(arg_1.x, arg_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0, 647f))))))), all(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(arg_3 > arg_2, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), false)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(func_4(arg_1.x, 2147483647i, firstTrailingBit(_wgslsmith_clamp_u32(u_input.b, 67645u, 68450u) << ((41900u ^ ~u_input.b) % 32u)), func_2()));
    var_1 = arg_1;
    global0 = ~vec2<i32>(0i, ~u_input.a.x) & func_2().a.xy;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 49222u;
    var var_1 = Struct_2(-vec3<i32>(global0.x, u_input.a.x | 44761i, global0.x), reverseBits(vec4<u32>(~var_0, u_input.b, firstTrailingBit(u_input.b), u_input.b)) << (vec4<u32>(reverseBits(33198u), var_0, var_0, ~(~41356u)) % vec4<u32>(32u)), var_0 >> (~(1u << (_wgslsmith_mult_u32(var_0, 49651u) % 32u)) % 32u), -409f);
    global0 = var_1.a.xx;
    global0 = -_wgslsmith_sub_vec2_i32(u_input.a, ~_wgslsmith_mod_vec2_i32(u_input.a, -var_1.a.xz));
    var_1 = func_1(_wgslsmith_f_op_f32(359f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.d)) - _wgslsmith_f_op_f32(ceil(-1000f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1547f, var_1.d), vec2<f32>(1845f, var_1.d), vec2<bool>(true, true))) - vec2<f32>(var_1.d, 513f)), vec2<f32>(var_1.d, var_1.d), select(true, true, var_1.a.x >= -15062i))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.d, 542f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-629f, 541f) - vec2<f32>(1341f, -548f)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))))))), global0.x, -firstTrailingBit(abs(2147483647i)) ^ _wgslsmith_div_i32(30817i, -1i));
    let var_2 = min(func_2().b.x, 4294967295u) ^ max(39384u, var_0);
    global0 = firstLeadingBit(u_input.a);
    var var_3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(~(~firstTrailingBit(_wgslsmith_add_u32(var_2, var_2))));
}

