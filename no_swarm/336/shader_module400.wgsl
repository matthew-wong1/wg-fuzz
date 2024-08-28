struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28> = array<bool, 28>(false, false, false, false, false, false, true, false, true, false, false, false, false, true, true, false, false, true, true, true, true, false, false, true, false, true, true, true);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2() -> vec4<u32> {
    global0 = array<bool, 28>();
    var var_0 = min(countOneBits(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(47474u, 0u), vec2<u32>(0u, 0u)), 1u, ~24836u, select(0u, 98721u, false)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 41011u, 1u, 1u))), ~vec4<u32>(select(0u, 44760u, global0[_wgslsmith_index_u32(95068u, 28u)]), abs(4273u), _wgslsmith_sub_u32(12394u, 0u), 1u) | firstLeadingBit(vec4<u32>(~1830u, ~8811u, 1u, 0u << (1u % 32u))));
    let var_1 = vec3<i32>(2147483647i, -(_wgslsmith_clamp_i32(0i, -u_input.a.x, u_input.a.x) & max(u_input.a.x, max(u_input.a.x, u_input.a.x))), _wgslsmith_sub_i32(-1i, i32(-1i) * -u_input.a.x));
    let var_2 = var_1.x;
    var var_3 = any(vec2<bool>(global0[_wgslsmith_index_u32(16172u, 28u)], true));
    return min(_wgslsmith_add_vec4_u32(~vec4<u32>(firstLeadingBit(1u), 1u, var_0.x, var_0.x), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(54128u, var_0.x), var_0.x, 4294967295u, 70513u), _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(var_0.x, var_0.x, 4555u, 70868u)), firstTrailingBit(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x))))), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.x, var_0.x, 1u, 0u), abs(vec4<u32>(var_0.x, 0u, 4294967295u, 45441u))), abs(vec4<u32>(47304u, var_0.x, 0u, 4294967295u))), _wgslsmith_add_vec4_u32(vec4<u32>(38494u, var_0.x, var_0.x, var_0.x) << (firstLeadingBit(vec4<u32>(var_0.x, var_0.x, var_0.x, 19565u)) % vec4<u32>(32u)), ~(vec4<u32>(var_0.x, var_0.x, var_0.x, 62725u) | vec4<u32>(var_0.x, 48544u, var_0.x, 20178u)))));
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: vec2<f32>) -> vec2<f32> {
    var var_0 = ~(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, 4294967295u, 27734u, arg_1.x), vec4<u32>(0u, arg_1.x, arg_1.x, arg_1.x)) ^ (vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x) ^ vec4<u32>(arg_1.x, arg_1.x, 52713u, 1u))) << ((firstLeadingBit(vec4<u32>(1u, arg_1.x, arg_1.x, arg_1.x) & vec4<u32>(26149u, arg_1.x, 0u, arg_1.x)) | func_2()) % vec4<u32>(32u)));
    let var_1 = vec2<u32>(~6159u, abs(0u)) << (~select(_wgslsmith_mod_vec2_u32(abs(arg_1), vec2<u32>(arg_1.x, 70387u)), ~countOneBits(var_0.xw), any(!vec2<bool>(false, global0[_wgslsmith_index_u32(arg_1.x, 28u)]))) % vec2<u32>(32u));
    let var_2 = Struct_2(~(_wgslsmith_add_u32(~0u, ~var_0.x) >> (var_0.x % 32u)));
    global0 = array<bool, 28>();
    let var_3 = 4169u | _wgslsmith_add_u32(var_1.x, var_2.a & _wgslsmith_mod_u32(4294967295u, 1u));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.x, arg_2.x), _wgslsmith_f_op_vec2_f32(arg_2 - arg_2), global0[_wgslsmith_index_u32(min(32055u, var_2.a), 28u)])), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(979f, arg_2.x), vec2<f32>(342f, 182f)))))))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: vec2<f32>) -> u32 {
    global0 = array<bool, 28>();
    var var_0 = all(vec3<bool>(all(!select(vec2<bool>(false, false), vec2<bool>(true, false), true)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 33025u, 14928u, arg_0.x), vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), _wgslsmith_div_vec4_u32(select(vec4<u32>(1u, arg_0.x, arg_0.x, arg_0.x), vec4<u32>(arg_0.x, 0u, 4294967295u, 107292u), vec4<bool>(false, true, true, true)), ~vec4<u32>(4294967295u, 22349u, arg_0.x, arg_0.x))), 28u)], any(!(!vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 28u)], false, false, global0[_wgslsmith_index_u32(arg_0.x, 28u)])))));
    var_0 = true;
    var var_1 = firstTrailingBit(abs(~reverseBits(vec3<u32>(arg_0.x, 4294967295u, arg_0.x)) << (vec3<u32>(arg_0.x & 158811u, ~59376u, ~arg_0.x) % vec3<u32>(32u))));
    let var_2 = select(select(vec2<bool>(any(!vec2<bool>(true, global0[_wgslsmith_index_u32(arg_0.x, 28u)])), true), vec2<bool>(all(!vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 28u)], global0[_wgslsmith_index_u32(19149u, 28u)])), true), !vec2<bool>(true, !global0[_wgslsmith_index_u32(16922u, 28u)])), vec2<bool>(!(_wgslsmith_f_op_f32(arg_2.x - 172f) > _wgslsmith_f_op_f32(1526f - arg_2.x)), true), vec2<bool>(select(true, true, _wgslsmith_add_u32(4294967295u, var_1.x) < ~1u), false));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(func_3(abs(~vec2<u32>(1u, 1u)), u_input.a.yz >> (~(~vec2<u32>(1u, 106592u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(445f, -1436f), _wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-512f, 386f) - _wgslsmith_f_op_vec2_f32(func_1(u_input.a.x, vec2<u32>(1u, 22542u), vec2<f32>(-2139f, 1000f)))), true))), abs(~1u));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), vec3<i32>(~_wgslsmith_dot_vec2_i32(u_input.a.zx, firstLeadingBit(u_input.a.wx)), countOneBits(-1i) >> (countOneBits(var_0.x) % 32u), -u_input.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1553f, 1048f) + vec2<f32>(-350f, 1065f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-275f + -127f), 979f)))))), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1852f)) * _wgslsmith_f_op_f32(171f * _wgslsmith_f_op_f32(trunc(390f)))))));
    global0 = array<bool, 28>();
    let var_2 = vec4<u32>(max(var_0.x, _wgslsmith_div_u32(48260u, var_0.x)), abs(~var_0.x), ~34078u, _wgslsmith_mult_u32(14762u, var_0.x));
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(587f, -1000f, var_1.e, var_1.d), vec4<f32>(-1289f, 552f, -750f, var_1.d), vec4<bool>(false, true, false, true)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(620f, -1731f, 1000f, var_1.d))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, var_1.e, 666f, -719f)))) + vec4<f32>(var_1.c.x, var_1.d, -1000f, _wgslsmith_f_op_f32(ceil(902f)))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.a, var_1.c.x, 386f, var_1.c.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1039f, var_1.d, var_1.e, -101f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, var_1.a, var_1.e, var_1.e) - vec4<f32>(-730f, 227f, -136f, -1137f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, u_input.a.x, max(var_1.b.x, countOneBits(~u_input.a.x)), firstTrailingBit(max(vec3<i32>(2147483647i, var_1.b.x, u_input.a.x), u_input.a.yww) << (_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(var_2.x, 27017u, var_0.x)), ~var_2.zwy) % vec3<u32>(32u))));
}

