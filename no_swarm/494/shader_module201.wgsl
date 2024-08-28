struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 7>;

var<private> global1: array<vec3<bool>, 13>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1() -> u32 {
    return _wgslsmith_sub_u32(u_input.a, _wgslsmith_mult_u32(~u_input.a, u_input.a) << (44108u % 32u));
}

fn func_3() -> vec2<bool> {
    global0 = array<vec2<i32>, 7>();
    let var_0 = reverseBits(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(1i, i32(-1i) * -2147483647i, ~(-1i)), -abs(7496i)), _wgslsmith_add_i32(2147483647i, _wgslsmith_dot_vec2_i32(reverseBits(global0[_wgslsmith_index_u32(0u, 7u)]), global0[_wgslsmith_index_u32(~u_input.a, 7u)])), ~u_input.b, ~(~u_input.b)));
    var var_1 = reverseBits(reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 8637u, 0u, u_input.a), vec4<u32>(u_input.a, u_input.a, 54426u, 4294967295u), ~vec4<u32>(0u, u_input.a, 0u, 83448u)) >> ((vec4<u32>(4294967295u, u_input.a, u_input.a, 1u) >> (~vec4<u32>(43334u, 4294967295u, u_input.a, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var_1 = abs(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, 7846u, var_1.x, 1u), vec4<u32>(~var_1.x, firstTrailingBit(39196u), 1u, firstLeadingBit(u_input.a))) & (~_wgslsmith_add_vec4_u32(vec4<u32>(23640u, 114095u, 27290u, 4294967295u), vec4<u32>(1u, u_input.a, 46702u, 4294967295u)) | min(~vec4<u32>(var_1.x, 1u, var_1.x, var_1.x), ~vec4<u32>(u_input.a, var_1.x, u_input.a, 0u))));
    let var_2 = var_1.yxx;
    return vec2<bool>(!(!all(!global1[_wgslsmith_index_u32(4294967295u, 13u)])), true);
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: vec3<i32>) -> u32 {
    var var_0 = func_3();
    let var_1 = Struct_1(abs(~u_input.a), vec2<f32>(827f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(844f - -714f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-286f, -1000f) - _wgslsmith_f_op_f32(select(-291f, -437f, true))))), arg_2.x);
    let var_2 = Struct_2(Struct_1(max(74029u, 0u), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1036f * 795f))), -1751f), 2147483647i), true, _wgslsmith_clamp_u32(25150u, _wgslsmith_add_u32(u_input.a, max(26243u, 0u)), _wgslsmith_div_u32(~_wgslsmith_clamp_u32(56781u, u_input.a, 6555u), arg_0.x)), vec3<u32>(~u_input.a, 45220u, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 60386u, 37599u, 6629u), ~(vec4<u32>(u_input.a, 4294967295u, 4294967295u, 26904u) << (vec4<u32>(89182u, 47416u, 1u, 89389u) % vec4<u32>(32u))))));
    var_0 = !vec2<bool>(false, var_2.b);
    let var_3 = ~var_1.a;
    return countOneBits(~((var_1.a << (var_1.a % 32u)) & 1u) | ~firstLeadingBit(~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(func_1(), firstTrailingBit(21495u) | 4294967295u, func_2(_wgslsmith_div_vec2_u32(~(~vec2<u32>(u_input.a, 96504u)), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), vec2<u32>(42900u, 17786u) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))), all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, false), vec2<bool>(true, true))), vec3<i32>(abs(-1i), -1i, 2147483647i)), reverseBits(select(abs(1u), 0u, true)));
    let var_1 = vec2<bool>(true, any(vec2<bool>(true, true)));
    var_0 = ~_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, ~23948u, max(1464u, 39863u), ~var_0.x), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, 1u, var_0.x, 27763u), vec4<u32>(u_input.a, u_input.a, 30000u, var_0.x))), abs(vec4<u32>(u_input.a, u_input.a, 3250u, 88382u)) & _wgslsmith_div_vec4_u32(~vec4<u32>(var_0.x, var_0.x, var_0.x, u_input.a), ~vec4<u32>(64412u, 21024u, 4294967295u, var_0.x)));
    global0 = array<vec2<i32>, 7>();
    var var_2 = max(_wgslsmith_sub_i32(select(~(~u_input.b), 0i, any(vec4<bool>(true, false, false, false))), ~firstLeadingBit(u_input.b)), 6601i);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1182f)));
    var_3 = -1925f;
    global1 = array<vec3<bool>, 13>();
    let var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -385f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-605f + 1000f), _wgslsmith_f_op_f32(max(624f, -2032f)), !var_1.x))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1108f - -377f) + _wgslsmith_f_op_f32(f32(-1f) * -1148f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(1i, 1i), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_4))))), (~var_0.xx << ((vec2<u32>(u_input.a, 17168u) << (_wgslsmith_div_vec2_u32(var_0.wy, vec2<u32>(var_0.x, 15051u)) % vec2<u32>(32u))) % vec2<u32>(32u))) | ~countOneBits(var_0.yx), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_4), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_4, var_4))), _wgslsmith_f_op_f32(var_4 - _wgslsmith_f_op_f32(round(-164f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-518f, 345f, 1059f))), max(-44917i, u_input.b));
}

