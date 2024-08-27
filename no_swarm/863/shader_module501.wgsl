struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

var<private> global1: f32 = -1173f;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32) -> vec2<u32> {
    return abs(countOneBits(_wgslsmith_sub_vec2_u32(arg_0, reverseBits(~vec2<u32>(arg_0.x, arg_0.x)))));
}

fn func_2() -> Struct_2 {
    let var_0 = vec2<i32>(global0[_wgslsmith_index_u32(35678u, 6u)], _wgslsmith_mod_i32(_wgslsmith_div_i32(countOneBits(_wgslsmith_mult_i32(-2147483647i, 1i)), -1i << (~4294967295u % 32u)), -14765i));
    let var_1 = _wgslsmith_sub_u32(max(9605u, _wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(69091u, 26032u, 23214u, 4294967295u)), abs(vec4<u32>(1u, 2363u, 0u, 4294967295u))), ~(~114724u))), min(firstLeadingBit(0u), firstLeadingBit(~(~21477u))));
    var var_2 = ~_wgslsmith_clamp_vec2_u32(~(_wgslsmith_mod_vec2_u32(vec2<u32>(28135u, var_1), vec2<u32>(40093u, var_1)) ^ (vec2<u32>(var_1, 71525u) << (vec2<u32>(var_1, 4294967295u) % vec2<u32>(32u)))), ~func_3(abs(vec2<u32>(var_1, var_1)), reverseBits(1i)), vec2<u32>(_wgslsmith_mult_u32(4294967295u, var_1 << (var_1 % 32u)), var_1));
    let var_3 = Struct_2(10807i);
    var var_4 = -((max(vec2<i32>(var_3.a, u_input.b.x), var_0) << (_wgslsmith_mod_vec2_u32(vec2<u32>(47490u, 47733u), vec2<u32>(4294967295u, var_1)) % vec2<u32>(32u))) ^ u_input.b.xz) << ((~abs(_wgslsmith_div_vec2_u32(vec2<u32>(0u, var_1), vec2<u32>(17833u, 0u))) >> (~reverseBits(~vec2<u32>(var_1, var_1)) % vec2<u32>(32u))) % vec2<u32>(32u));
    return Struct_2(0i);
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(212f, -2067f)) * -135f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-539f - _wgslsmith_f_op_f32(abs(-1340f))), _wgslsmith_f_op_f32(ceil(-225f)))))), _wgslsmith_f_op_f32(f32(-1f) * -663f));
    var var_1 = func_2();
    var var_2 = _wgslsmith_clamp_i32(abs(-global0[_wgslsmith_index_u32(1u, 6u)]) & (-1i ^ u_input.b.x), countOneBits(0i), -2147483647i);
    var var_3 = ~firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(1u, func_3(vec2<u32>(4294967295u, 157u), 0i).x, max(4159u, 40669u)), ~reverseBits(vec3<u32>(1u, 16125u, 37641u))));
    global0 = array<i32, 6>();
    return Struct_2(var_1.a);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(-597f))), vec2<f32>(-926f, _wgslsmith_f_op_f32(floor(-470f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -1292f) * vec2<f32>(-342f, -667f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * vec2<f32>(744f, -450f)), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-863f, -651f) - vec2<f32>(-604f, arg_0))))), vec2<bool>(true, true))));
    var var_1 = firstTrailingBit(_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(1u, 1u, 1u)), firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 1u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 13191u, 4294967295u), vec3<u32>(4294967295u, 2872u, 0u), vec3<u32>(4294967295u, 29623u, 0u))))));
    var_1 = vec3<u32>(var_1.x, var_1.x, var_1.x);
    global1 = arg_0;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.x, 280f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, 1121f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-891f, arg_0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, arg_0))))))));
    return ~var_1.x == _wgslsmith_clamp_u32(~0u, firstTrailingBit(_wgslsmith_clamp_u32(4294967295u, var_1.x, var_1.x) | 0u), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 6>();
    let var_0 = u_input.b.xx ^ u_input.b.yw;
    let var_1 = !select(!vec4<bool>(all(vec4<bool>(true, false, true, true)), true, false, true), vec4<bool>(!all(vec4<bool>(false, false, true, false)), true, select(true, any(vec4<bool>(true, false, false, false)), true), select(true, true, true)), func_4(605f, Struct_1(vec2<i32>(2343i, 55974i)), func_1(Struct_1(vec2<i32>(33868i, u_input.b.x)))));
    let var_2 = vec3<bool>(var_1.x, true, !any(select(vec2<bool>(var_1.x, false), !var_1.wz, var_1.xz)));
    let var_3 = _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1331f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-288f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) - 124f) * _wgslsmith_f_op_f32(abs(772f)))));
    global0 = array<i32, 6>();
    let var_4 = vec2<f32>(-659f, -2486f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_3)), _wgslsmith_f_op_f32(f32(-1f) * -620f))) - var_4.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_4.x, _wgslsmith_f_op_f32(var_3 + var_4.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)))), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~49675u, abs(68957u)), ~vec2<u32>(0u, 24018u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~(~vec3<u32>(4294967295u, 46241u, 1u)))), ~(~_wgslsmith_sub_u32(select(4294967295u, 1u, var_1.x), _wgslsmith_dot_vec2_u32(vec2<u32>(25050u, 1u), vec2<u32>(35046u, 4294967295u)))));
}

