struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 7>;

var<private> global1: array<u32, 28> = array<u32, 28>(90553u, 1u, 9190u, 1u, 2870u, 1u, 65579u, 4294967295u, 83546u, 0u, 4142u, 19299u, 80609u, 0u, 70153u, 5552u, 67733u, 4294967295u, 1u, 4294967295u, 4294967295u, 44989u, 0u, 0u, 78725u, 87853u, 0u, 0u);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: i32, arg_3: vec2<u32>) -> u32 {
    global1 = array<u32, 28>();
    global0 = array<vec4<bool>, 7>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1076f);
    global0 = array<vec4<bool>, 7>();
    var var_1 = _wgslsmith_mult_i32(~16976i, 1i);
    return 0u;
}

fn func_2(arg_0: i32, arg_1: bool) -> u32 {
    global0 = array<vec4<bool>, 7>();
    global0 = array<vec4<bool>, 7>();
    let var_0 = select(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 28u)], 7u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 28u)], 28u)], 28u)], 28u)], 28u)], 28u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 28u)], 28u)], 28u)], 28u)], 28u)], 28u)], 28u)], 28u)]) >> ((2312u >> (1u % 32u)) % 32u), 28u)] ^ _wgslsmith_add_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 28u)], 28u)], 0u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(81138u, 28u)], 28u)]), ~(func_3(vec4<bool>(false, true, arg_1, arg_1), vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(38862u, 28u)], 1u), arg_0, vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17443u, 28u)], 28u)], 28u)], 28u)], 28u)], 28u)], 28u)], 28u)], 76691u)) ^ global1[_wgslsmith_index_u32(4294967295u, 28u)])), 7u)], vec4<bool>(((37792u << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22417u, 28u)], 28u)] % 32u)) >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7095u, 28u)], 28u)] % 32u)) != _wgslsmith_dot_vec4_u32(vec4<u32>(90815u, 1u, global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(69817u, 28u)], 28u)]) ^ vec4<u32>(global1[_wgslsmith_index_u32(96932u, 28u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 28u)], 28u)], global1[_wgslsmith_index_u32(23853u, 28u)], 55780u), vec4<u32>(4294967295u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 28u)], 28u)], 28u)], 0u)), any(select(global0[_wgslsmith_index_u32(select(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13032u, 28u)], 28u)], 28u)], 28u)], 0u, arg_1), 7u)], vec4<bool>(true, false, arg_1, true), false)), arg_1 || false, false));
    global0 = array<vec4<bool>, 7>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-976f, -1429f, 602f, -1000f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1326f, -598f, -502f, -1263f))))), -1256f, 54728i);
    return _wgslsmith_dot_vec2_u32(vec2<u32>((_wgslsmith_div_u32(25324u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(53980u, 28u)], 28u)]) ^ ~0u) >> (_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(47008u ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19631u, 28u)], 28u)], 28u)], 28u)], 0u) % 32u), 26947u), _wgslsmith_sub_vec2_u32(abs(~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 28308u), vec2<u32>(global1[_wgslsmith_index_u32(5427u, 28u)], global1[_wgslsmith_index_u32(29892u, 28u)]))), vec2<u32>(1u, abs(0u))));
}

fn func_1() -> u32 {
    let var_0 = min(countOneBits(_wgslsmith_dot_vec4_i32(~(vec4<i32>(u_input.a.x, u_input.b, u_input.a.x, 9058i) >> (vec4<u32>(global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15931u, 28u)], 28u)], 28u)], 50237u, 64087u) % vec4<u32>(32u))), firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(1977i, -2147483647i, 0i, u_input.a.x), vec4<i32>(u_input.b, u_input.b, u_input.a.x, -3641i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.c))))), u_input.c);
    global1 = array<u32, 28>();
    let var_1 = Struct_1(vec4<f32>(902f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -354f) * _wgslsmith_f_op_f32(-109f + 1804f))), _wgslsmith_f_op_f32(max(-962f, -594f)), _wgslsmith_f_op_f32(f32(-1f) * -834f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-124f, -819f)), -1000f)))), ~var_0);
    global0 = array<vec4<bool>, 7>();
    global0 = array<vec4<bool>, 7>();
    return _wgslsmith_div_u32(abs(~_wgslsmith_sub_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(82685u, 28u)], 28u)], firstTrailingBit(global1[_wgslsmith_index_u32(0u, 28u)]))), func_2(-71202i, u_input.b != -37891i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 28>();
    var var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(func_1(), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(func_3(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(48493u, 28u)], 52455u), 28u)], 28u)], 7u)], vec3<u32>(43691u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 28u)], 28u)], 28u)], global1[_wgslsmith_index_u32(0u, 28u)]), 30441i, ~vec2<u32>(8171u, global1[_wgslsmith_index_u32(0u, 28u)])), 28u)], 28u)], 28u)], 1u, global1[_wgslsmith_index_u32(~select(global1[_wgslsmith_index_u32(11274u, 28u)], global1[_wgslsmith_index_u32(0u, 28u)], true), 28u)] & global1[_wgslsmith_index_u32(max(7390u, global1[_wgslsmith_index_u32(1u, 28u)]) | countOneBits(1u), 28u)]), vec4<u32>(countOneBits(~12679u), global1[_wgslsmith_index_u32(abs(~1u), 28u)], 33689u, _wgslsmith_mod_u32(0u, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.zw, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1238f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-347f)) + _wgslsmith_f_op_f32(f32(-1f) * -1667f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(860f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(341f * 1176f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-438f - 1925f), _wgslsmith_f_op_f32(1138f - -1483f), _wgslsmith_f_op_f32(-1502f * 1000f), _wgslsmith_f_op_f32(trunc(971f)))))), 4294967295u);
}

