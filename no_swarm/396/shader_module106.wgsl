struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(-8611i, -1i, 0i, 1i));

var<private> global1: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec4<i32>(53106i, 88799i, -743i, 0i)), Struct_1(vec4<i32>(15054i, -42693i, 16245i, -1i)), Struct_1(vec4<i32>(2147483647i, -17890i, 24631i, 26940i)), Struct_1(vec4<i32>(i32(-2147483648), -3991i, -39726i, 1i)), Struct_1(vec4<i32>(1i, 0i, 17967i, 1142i)), Struct_1(vec4<i32>(-17636i, 3934i, 1i, 2147483647i)), Struct_1(vec4<i32>(-20837i, -21727i, -32851i, -26879i)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    global0 = Struct_1(global0.a);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-866f, 1011f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1560f)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1260f, -322f)) - _wgslsmith_f_op_f32(step(1000f, -335f)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2010f * -1716f) + _wgslsmith_f_op_f32(f32(-1f) * -1629f)));
    global1 = array<Struct_1, 7>();
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstLeadingBit(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, 17158u), 96978u)), ~min(1u, ~0u)), 7u)];
    global0 = Struct_1(vec4<i32>(global0.a.x, countOneBits(countOneBits(arg_0.x)), -16228i, arg_0.x) >> (firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)));
    return _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), min(abs(select(0u, 40536u, false)), 1u)), abs(~1u));
}

fn func_2(arg_0: i32) -> Struct_1 {
    global1 = array<Struct_1, 7>();
    global1 = array<Struct_1, 7>();
    var var_0 = global1[_wgslsmith_index_u32(func_3(global0.a.zy), 7u)];
    var var_1 = u_input.a & _wgslsmith_dot_vec4_i32(vec4<i32>(~(-1i), ~(~global0.a.x), countOneBits(arg_0) | _wgslsmith_clamp_i32(0i, 0i, var_0.a.x), (i32(-1i) * -1i) >> (countOneBits(0u) % 32u)), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, -var_0.a.x, global0.a.x, var_0.a.x & u_input.a), global0.a));
    var var_2 = -45537i;
    return global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~1u), (_wgslsmith_dot_vec3_u32(~vec3<u32>(22268u, 0u, 0u), abs(vec3<u32>(14429u, 0u, 64268u))) | reverseBits(min(5381u, 1u))) << (_wgslsmith_clamp_u32(91208u, 37821u, func_3(vec2<i32>(0i, global0.a.x))) % 32u)), 7u)];
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = func_2(global0.a.x);
    var var_1 = 11363u;
    let var_2 = false;
    var var_3 = select(1u, 82151u, var_2);
    let var_4 = Struct_1(abs(var_0.a));
    return func_2(_wgslsmith_dot_vec3_i32(~vec3<i32>(1i, 31512i, ~var_4.a.x), vec3<i32>(countOneBits(global0.a.x) >> (1u % 32u), 1i, _wgslsmith_div_i32(var_4.a.x, 0i) >> (~0u % 32u))));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> f32 {
    global1 = array<Struct_1, 7>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(615f + 1000f)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1856f, 165f, true)) + _wgslsmith_f_op_f32(f32(-1f) * -181f)), _wgslsmith_div_f32(-293f, -528f)))));
    var var_1 = ~((vec3<i32>(global0.a.x, 1i, abs(arg_1)) << (_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(24989u, 66120u, 30331u), vec3<u32>(0u, 1u, 1u), vec3<u32>(28858u, 1u, 11058u)), vec3<u32>(0u, 49000u, 4294967295u)) % vec3<u32>(32u))) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(35526u, 65152u, 1u), vec3<u32>(5512u, 19821u, 62851u)), vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)));
    var var_2 = Struct_1(vec4<i32>(abs(-2147483647i), global0.a.x, 1i, reverseBits(select(var_1.x, u_input.a, false))));
    var var_3 = arg_0;
    return _wgslsmith_f_op_f32(sign(-744f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1085f, 1835f, _wgslsmith_div_f32(873f, 1211f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(334f, -497f, -943f) + vec3<f32>(676f, -520f, -1270f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-1282f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -2351f) + _wgslsmith_f_op_f32(-373f * 256f)), _wgslsmith_f_op_f32(func_4(func_1(1009f), ~3368i)))));
    global0 = func_1(_wgslsmith_f_op_f32(-var_0.x));
    global0 = global1[_wgslsmith_index_u32(4294967295u, 7u)];
    var var_1 = vec3<f32>(1183f, var_0.x, var_0.x);
    var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-237f + -914f), -995f, _wgslsmith_f_op_f32(-1250f - var_1.x))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0), var_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1766f, -850f) * _wgslsmith_f_op_vec3_f32(var_0 - var_0))), select(vec3<bool>(true, any(vec3<bool>(true, true, false)), select(true, false, false)), vec3<bool>(any(vec4<bool>(true, false, false, false)), true, true), false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + 1811f)))));
}

