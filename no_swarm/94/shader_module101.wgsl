struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: f32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1099f;

var<private> global1: array<f32, 25> = array<f32, 25>(1148f, -396f, 1064f, -298f, -192f, 1001f, -512f, -988f, 405f, 1545f, -865f, 1758f, 306f, -497f, -1661f, -885f, -1083f, 506f, 679f, 1679f, 1446f, 541f, -1499f, 187f, 1087f);

var<private> global2: array<vec2<bool>, 31>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = u_input.b;
    var var_1 = arg_3;
    var var_2 = arg_3.b;
    var var_3 = vec4<u32>(83216u & (u_input.a << (arg_2.x % 32u)), abs(u_input.a), arg_2.x, ~(_wgslsmith_add_u32(firstLeadingBit(0u), _wgslsmith_add_u32(20626u, arg_3.b)) << (arg_2.x % 32u)));
    let var_4 = u_input.b;
    return -firstLeadingBit(reverseBits(firstLeadingBit(~var_4.xxw)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> vec3<i32> {
    let var_0 = ~_wgslsmith_mod_u32(67253u, ~(~(~arg_1.b)));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-538f, global1[_wgslsmith_index_u32(44814u, 25u)])) + _wgslsmith_f_op_vec2_f32(vec2<f32>(2515f, global1[_wgslsmith_index_u32(0u, 25u)]) + vec2<f32>(168f, 1000f)))), vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(max(~69660u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.b), vec2<u32>(39932u, arg_1.b))), 25u)]), -1551f), any(vec4<bool>(arg_2.x, false, true, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0, 25u)]) >= global1[_wgslsmith_index_u32(abs(4294967295u), 25u)]))));
    global0 = var_1.x;
    let var_2 = true;
    var var_3 = arg_0;
    return vec3<i32>(-(~((i32(-1i) * -1i) & countOneBits(arg_1.a.x))), ~_wgslsmith_mult_i32(var_3.c.x ^ (24040i >> (var_3.b % 32u)), -u_input.b.x << (min(0u, 19966u) % 32u)), _wgslsmith_dot_vec2_i32(abs(arg_0.c), -func_3(arg_2.x, var_1, reverseBits(vec2<u32>(arg_0.b, var_3.b)), Struct_1(u_input.b.wxy, 90155u, var_3.a.xy)).xy));
}

fn func_2(arg_0: bool) -> vec3<u32> {
    global0 = 486f;
    var var_0 = Struct_1(func_4(Struct_1(select(_wgslsmith_mod_vec3_i32(u_input.b.wyz, u_input.b.zwx), countOneBits(vec3<i32>(u_input.b.x, u_input.b.x, -1i)), all(vec4<bool>(arg_0, arg_0, true, false))), _wgslsmith_clamp_u32(4294967295u, 62727u, _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a)), u_input.b.zx), Struct_1(select(abs(vec3<i32>(u_input.b.x, -1i, u_input.b.x)), func_3(arg_0, vec2<f32>(-2298f, -1118f), vec2<u32>(u_input.a, 23870u), Struct_1(vec3<i32>(4775i, u_input.b.x, u_input.b.x), u_input.a, vec2<i32>(u_input.b.x, u_input.b.x))), true), ~(~u_input.a), vec2<i32>(_wgslsmith_clamp_i32(-1i, -16616i, 2147483647i), u_input.b.x ^ u_input.b.x)), !vec3<bool>(arg_0, arg_0, all(vec3<bool>(arg_0, true, false)))), _wgslsmith_add_u32(u_input.a >> (~72165u % 32u), _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(1u, 1u), all(vec4<bool>(arg_0, true, true, false))), firstLeadingBit(~vec2<u32>(u_input.a, u_input.a)))), u_input.b.wx);
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(21761u, 25u)])));
    let var_2 = u_input.b.x;
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1405f - global1[_wgslsmith_index_u32(43896u, 25u)]))))));
    return vec3<u32>(~countOneBits(1u), 57213u, var_0.b);
}

fn func_1() -> StorageBuffer {
    var var_0 = countOneBits(_wgslsmith_sub_vec3_u32(~((vec3<u32>(1u, u_input.a, 1u) ^ vec3<u32>(u_input.a, u_input.a, u_input.a)) | ~vec3<u32>(u_input.a, 4294967295u, 114374u)), func_2(true)));
    global2 = array<vec2<bool>, 31>();
    global0 = 913f;
    var_0 = vec3<u32>(65177u, ~(~u_input.a), _wgslsmith_mult_u32(u_input.a, var_0.x));
    var var_1 = vec3<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.x, 25u)]) * _wgslsmith_f_op_f32(min(-701f, 438f))))) < _wgslsmith_f_op_f32(f32(-1f) * -796f), false || (_wgslsmith_sub_u32(1u, _wgslsmith_sub_u32(20474u, u_input.a)) >= ~reverseBits(0u)), true);
    return StorageBuffer(vec3<i32>(u_input.b.x, ~u_input.b.x, ~(u_input.b.x & (i32(-1i) * -1i))), abs(vec2<i32>(47252i, i32(-1i) * -1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(~4612u, 25u)]))), var_0.zy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.x, 25u)]) + 1038f) + -897f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 31>();
    global1 = array<f32, 25>();
    let var_0 = _wgslsmith_sub_vec4_u32(max(vec4<u32>(~_wgslsmith_clamp_u32(u_input.a, u_input.a, 4294967295u), _wgslsmith_clamp_u32(~43589u, 1u, _wgslsmith_div_u32(u_input.a, 60729u)), _wgslsmith_div_u32(u_input.a, u_input.a) | _wgslsmith_div_u32(u_input.a, u_input.a), 14985u), vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), max(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(u_input.a, 42248u, 22170u))), 0u, u_input.a, ~(~u_input.a))), ~(~(~(~vec4<u32>(u_input.a, 35357u, 108306u, u_input.a)))));
    global0 = _wgslsmith_f_op_f32(966f - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(928f * 664f))), _wgslsmith_f_op_f32(floor(-2125f))))));
    var var_1 = vec2<i32>(-36247i, 9203i);
    let x = u_input.a;
    s_output = func_1();
}

