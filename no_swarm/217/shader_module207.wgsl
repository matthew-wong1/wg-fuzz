struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(-1i, 0i, -18764i, i32(-2147483648)));

var<private> global1: Struct_1;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> i32 {
    return -reverseBits(i32(-1i) * -1i);
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: i32, arg_3: f32) -> vec3<u32> {
    var var_0 = ~_wgslsmith_sub_i32(29758i, ~u_input.a.x);
    global1 = Struct_1(global0.a, global1.b);
    var var_1 = Struct_1(vec4<bool>(global0.a.x, true, !(!all(vec2<bool>(global1.a.x, global0.a.x))), global1.a.x), global1.b);
    let var_2 = abs(_wgslsmith_sub_u32(0u, arg_0));
    var_0 = (reverseBits(global0.b.x) & ((max(-2147483647i, var_1.b.x) | arg_1.x) << (min(min(var_2, var_2), _wgslsmith_mult_u32(arg_0, arg_0)) % 32u))) << (_wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, firstTrailingBit(_wgslsmith_clamp_u32(arg_0, 2496u, arg_0))), _wgslsmith_dot_vec3_u32(firstLeadingBit(firstLeadingBit(vec3<u32>(0u, var_2, arg_0))), ~firstTrailingBit(vec3<u32>(4294967295u, 22737u, var_2))), var_2) % 32u);
    return abs(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(var_2 >> (var_2 % 32u), var_2, var_2), 1u, var_2), vec3<u32>(_wgslsmith_div_u32(23219u, 15362u) & _wgslsmith_add_u32(var_2, 1u), 4263u, ~min(arg_0, arg_0))));
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(!vec4<bool>(!(global0.b.x <= -41278i), false, true, global0.a.x), ~abs(~min(global0.b, vec4<i32>(global1.b.x, -2147483647i, global1.b.x, -1i))));
    let var_0 = func_4(4294967295u, _wgslsmith_mult_vec3_i32(select(-vec3<i32>(u_input.b, -1i, 1i), ~global0.b.zyx, global0.a.xyw), _wgslsmith_div_vec3_i32(~u_input.a, _wgslsmith_mod_vec3_i32(vec3<i32>(46039i, -20239i, -7346i), vec3<i32>(global0.b.x, global0.b.x, u_input.b))) ^ _wgslsmith_mod_vec3_i32(-u_input.a, _wgslsmith_div_vec3_i32(vec3<i32>(global0.b.x, global0.b.x, global0.b.x), vec3<i32>(-19800i, global0.b.x, global0.b.x)))), func_3(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(315f * -1764f), -153f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-660f - 1113f)))) * _wgslsmith_f_op_f32(-1000f * -332f)));
    var var_1 = vec4<bool>(false, true, global0.a.x, !(!global0.a.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-509f, -925f, 705f)))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-593f, 1000f, -537f))))))));
    var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.x, -492f, 779f))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.x, var_2.x, 296f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-734f, 417f, var_2.x), vec3<f32>(var_2.x, var_2.x, var_2.x), vec3<bool>(true, global1.a.x, false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -141f, var_2.x)))))));
    return Struct_1(!vec4<bool>(global0.a.x, all(var_1.xyz), global1.a.x | global1.a.x, global0.a.x), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, ~global1.b.x << (~var_0.x % 32u), 0i, max(global1.b.x, -2147483647i)), countOneBits(select(-vec4<i32>(29896i, 2147483647i, -55830i, global1.b.x), ~global0.b, any(vec2<bool>(var_1.x, false))))));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = func_2();
    var var_2 = Struct_1(var_1.a, min(arg_3.b, abs(var_1.b)));
    let var_3 = Struct_1(vec4<bool>(var_0.a.x, select((var_0.b.x << (4294967295u % 32u)) > global0.b.x, arg_1.a.x, false), true, any(var_0.a)), ~abs(~var_1.b));
    let var_4 = _wgslsmith_clamp_u32(~arg_2, 29750u, arg_2);
    return Struct_1(func_2().a, ~vec4<i32>(1i, arg_1.b.x, 4339i, var_0.b.x >> (~arg_0 % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec2_u32(~(~(~firstTrailingBit(vec2<u32>(16083u, 37526u)))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(~4294967295u, 1u), ~(~vec2<u32>(1u, 1u)), ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, 0u), firstLeadingBit(vec2<u32>(4294967295u, 1u)), min(vec2<u32>(36673u, 0u), vec2<u32>(0u, 0u)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-470f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(634f, -1691f)), _wgslsmith_f_op_f32(step(1833f, -434f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(716f * -1620f) + _wgslsmith_f_op_f32(select(-497f, -927f, true))), global1.a.x)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2018f + _wgslsmith_f_op_f32(1589f - -712f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-457f, 301f)))))));
    global0 = func_1(~(~0u), Struct_1(global0.a, global0.b), firstLeadingBit(var_0.x), Struct_1(!global1.a, _wgslsmith_div_vec4_i32(vec4<i32>(firstTrailingBit(u_input.b), -u_input.b, -4252i, global0.b.x), _wgslsmith_add_vec4_i32(vec4<i32>(global0.b.x, 2147483647i, -13665i, 0i), _wgslsmith_sub_vec4_i32(global1.b, global0.b)))));
    var var_2 = -select(firstLeadingBit(global0.b.x), global1.b.x, any(global0.a)) >= u_input.b;
    var_2 = any(!vec3<bool>(true, global1.a.x, global1.a.x));
    var var_3 = func_1(~(~var_0.x), Struct_1(global1.a, vec4<i32>(50250i, i32(-1i) * -39533i, (global0.b.x ^ u_input.a.x) & _wgslsmith_dot_vec2_i32(vec2<i32>(-43117i, -21146i), global0.b.zx), 1i)), var_0.x, Struct_1(global0.a, -(~vec4<i32>(-2147483647i, u_input.a.x, global1.b.x, global0.b.x)) ^ (global1.b | vec4<i32>(u_input.a.x, global0.b.x, -2147483647i, global0.b.x)))).b.x;
    global0 = func_2();
    var_3 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(502f, 742f, var_1)))) * _wgslsmith_div_vec3_f32(vec3<f32>(1512f, var_1, var_1), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1697f, 1116f, 581f))))))));
}

