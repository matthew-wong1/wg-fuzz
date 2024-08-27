struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25>;

var<private> global1: vec2<u32> = vec2<u32>(3522u, 0u);

var<private> global2: i32 = 0i;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global1.x, _wgslsmith_mult_u32(u_input.a, _wgslsmith_clamp_u32(u_input.a, u_input.b, global1.x))), 25u)])) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(reverseBits(global1.x), 25u)] * global0[_wgslsmith_index_u32(90843u, 25u)]));
    var_0 = -1000f;
    global1 = max(countOneBits(vec2<u32>(1u, 18010u)), min(firstTrailingBit(~reverseBits(vec2<u32>(u_input.b, 0u))), max(~vec2<u32>(0u, u_input.b), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, global1.x), vec2<u32>(global1.x, global1.x), vec2<u32>(0u, u_input.a)) | ~vec2<u32>(u_input.b, global1.x))));
    global1 = vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(31374u, 20454u, 26021u)), vec3<u32>(u_input.b, 101962u, global1.x) << (vec3<u32>(global1.x, 0u, 1u) % vec3<u32>(32u))), ~firstTrailingBit(vec3<u32>(118790u, 50225u, u_input.a))), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(108243u, 4294967295u, 0u), ~vec3<u32>(u_input.b, u_input.b, 17646u)), countOneBits(select(vec3<u32>(global1.x, global1.x, 0u), vec3<u32>(834u, global1.x, 0u), true)))), _wgslsmith_div_u32(u_input.a, global1.x));
    let var_1 = Struct_1(vec4<u32>(global1.x, _wgslsmith_mult_u32(~35738u, ~u_input.a), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 98379u, global1.x, u_input.b), vec4<u32>(1u, u_input.b, u_input.b, 1u)), select(vec4<u32>(27928u, 51196u, u_input.b, 51820u), vec4<u32>(u_input.b, 72612u, global1.x, 1u), vec4<bool>(false, false, true, true))), reverseBits(33984u)) ^ ~(~(~vec4<u32>(u_input.b, global1.x, global1.x, 63092u))), true, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, firstLeadingBit(12308u)), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, global1.x), countOneBits(vec2<u32>(86114u, global1.x))), vec2<u32>(~global1.x, _wgslsmith_div_u32(0u, u_input.a)))));
    return 1u;
}

fn func_2() -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(702f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2478f - global0[_wgslsmith_index_u32(u_input.a, 25u)])))))) * -825f);
    var var_1 = Struct_1(~(~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 0u, 1u, u_input.a), vec4<u32>(1u, 0u, 1u, 112068u)), ~vec4<u32>(u_input.a, 18551u, u_input.a, 4294967295u))), true, firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a >> (4294967295u % 32u), min(4294967295u, u_input.a), func_3(vec4<i32>(39653i, 1i, -1i, -2147483647i))), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, 49139u, global1.x), vec3<u32>(21049u, global1.x, u_input.a)), select(vec3<u32>(u_input.b, 15492u, 67456u), vec3<u32>(global1.x, u_input.a, 60161u), true)))));
    var_0 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 25u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1451f, _wgslsmith_f_op_f32(1059f - 456f))))));
    return vec4<f32>(global0[_wgslsmith_index_u32(58209u, 25u)], _wgslsmith_f_op_f32(2733f - -681f), 2014f, -1736f);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<u32>) -> bool {
    var var_0 = 1715f;
    global2 = _wgslsmith_div_i32(max(-1i, ~1i), -30231i) & firstTrailingBit(-abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 600i, 51211i), vec3<i32>(39205i, -3841i, -32552i))));
    var_0 = 1480f;
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, global0[_wgslsmith_index_u32(4294967295u, 25u)], -200f, -168f), vec4<f32>(-352f, 182f, 437f, 1211f)) - vec4<f32>(1000f, 1157f, 790f, global0[_wgslsmith_index_u32(arg_2.x, 25u)]))), _wgslsmith_f_op_vec4_f32(func_2()), !arg_1))));
    let var_2 = Struct_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b, 1u, arg_0.c, 0u), ~vec4<u32>(global1.x, global1.x, arg_0.c, 4294967295u)), vec4<u32>(_wgslsmith_sub_u32(abs(arg_0.a.x), u_input.b), 46641u, ~(~8003u), 4294967295u), min(firstTrailingBit(~vec4<u32>(33319u, arg_2.x, u_input.a, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(50450u, 1u, 60102u, arg_2.x), arg_0.a, arg_0.a) | arg_0.a)), firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_add_u32(1u, arg_2.x), countOneBits(global1.x))) > 4294967295u, _wgslsmith_add_u32(0u, 4294967295u));
    return !any(arg_1.zwx);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 25>();
    var var_0 = all(vec4<bool>(((u_input.b < 1u) && func_1(Struct_1(vec4<u32>(16819u, 0u, 0u, 4294967295u), false, 4294967295u), vec4<bool>(true, false, true, false), vec3<u32>(5374u, 16217u, u_input.a))) & (~40308u < _wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, u_input.b), vec2<u32>(global1.x, 4294967295u))), false, false, global0[_wgslsmith_index_u32(max(~u_input.b, 70475u), 25u)] == 520f));
    var var_1 = (true | all(vec4<bool>(true, true, true, true))) == false;
    global0 = array<f32, 25>();
    var var_2 = true;
    var var_3 = Struct_1(vec4<u32>(max(_wgslsmith_dot_vec2_u32(~vec2<u32>(global1.x, u_input.b), _wgslsmith_sub_vec2_u32(vec2<u32>(global1.x, 10437u), vec2<u32>(u_input.b, u_input.b))), abs(~1u)), firstLeadingBit(~1u), _wgslsmith_add_u32(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global1.x), vec2<u32>(u_input.a, 20075u))), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a, global1.x, u_input.a), 15030u)), _wgslsmith_dot_vec3_u32(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.x, 4294967295u, 4294967295u), vec3<u32>(u_input.b, 0u, 1u), vec3<u32>(79083u, 82920u, global1.x)), ~vec3<u32>(4935u, 17451u, u_input.b), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.x, 4294967295u, u_input.a), vec3<u32>(u_input.b, global1.x, global1.x))))), all(vec2<bool>(true, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.x, 25u)]) <= global0[_wgslsmith_index_u32(~global1.x, 25u)])), ~u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.xzz, 0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(454f)))) + -435f));
}

