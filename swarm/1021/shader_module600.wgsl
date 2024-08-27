struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 13> = array<vec2<i32>, 13>(vec2<i32>(2147483647i, -10860i), vec2<i32>(8847i, 2147483647i), vec2<i32>(9428i, 6343i), vec2<i32>(70589i, -6037i), vec2<i32>(41758i, -63636i), vec2<i32>(-21905i, 37945i), vec2<i32>(9970i, 1i), vec2<i32>(0i, 24694i), vec2<i32>(1i, 13936i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(32342i, 1i), vec2<i32>(40497i, 1i), vec2<i32>(2147483647i, -22515i));

var<private> global1: array<vec3<i32>, 25>;

var<private> global2: array<u32, 26>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32) -> vec2<u32> {
    let var_0 = Struct_1(min(_wgslsmith_div_u32(reverseBits(8193u), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 26u)], 26u)]), min(~10064u >> (~u_input.c.x % 32u), u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(ceil(-1576f)), _wgslsmith_f_op_f32(min(-155f, 1880f)), _wgslsmith_f_op_f32(sign(2184f))), firstLeadingBit(-1i));
    let var_1 = ~firstTrailingBit(0u);
    var var_2 = var_0;
    var var_3 = Struct_1(u_input.e, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(abs(-169f)), _wgslsmith_f_op_f32(879f * var_0.b.x), _wgslsmith_f_op_f32(-var_0.b.x))), var_2.b), var_0.c & 57357i);
    var var_4 = abs(-(~(-1i)));
    return ~_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(~var_2.a, 107317u << (u_input.a % 32u))), _wgslsmith_mod_vec2_u32(vec2<u32>(var_2.a | 0u, var_1), vec2<u32>(0u, var_0.a) & vec2<u32>(132823u, 0u)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<u32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_mult_u32(1u, 8966u), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.b.x, arg_1.b.x, 1402f, -796f))))))), max(23442i, firstLeadingBit(u_input.d)));
    let var_1 = 1142f;
    global2 = array<u32, 26>();
    let var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(463f, -1421f) + _wgslsmith_f_op_f32(round(-560f)))))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.b.x - 1998f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1235f + -410f))) - _wgslsmith_f_op_f32(min(-904f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(var_0.b.x - -548f)))))));
}

fn func_2() -> u32 {
    let var_0 = !all(vec2<bool>(all(vec4<bool>(true, true, true, false)), false));
    var var_1 = select(u_input.c.yx, _wgslsmith_mult_vec2_u32(~(_wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.c.x), vec2<u32>(global2[_wgslsmith_index_u32(96623u, 26u)], 38651u)) | vec2<u32>(57494u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 26u)], 26u)])), u_input.c.yw), any(!(!vec4<bool>(var_0, var_0, true, var_0))));
    var var_2 = Struct_1(4294967295u, vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1022f), 1071f))), -1405f, _wgslsmith_f_op_f32(f32(-1f) * -773f), _wgslsmith_f_op_f32(func_4(select(!vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, var_0, var_0), select(vec3<bool>(false, var_0, var_0), vec3<bool>(true, var_0, true), vec3<bool>(var_0, false, false))), Struct_1(~var_1.x, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(703f, 590f, 1867f, 421f))), -u_input.b), ~func_3(vec2<f32>(1927f, 1272f), u_input.b)))), _wgslsmith_dot_vec3_i32(abs(global1[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(select(var_1.x, global2[_wgslsmith_index_u32(96419u, 26u)], false), 26u)], 25u)]), global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.c.yx, u_input.c.xz), u_input.a)), 25u)]));
    var var_3 = !select(vec2<bool>(any(!vec3<bool>(var_0, var_0, false)), !var_0), select(select(select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, true), false), !vec2<bool>(var_0, var_0), !vec2<bool>(var_0, var_0)), select(vec2<bool>(var_0, var_0), vec2<bool>(true, true), !var_0), select(!vec2<bool>(var_0, false), select(vec2<bool>(true, false), vec2<bool>(true, var_0), vec2<bool>(var_0, false)), false)), !select(select(vec2<bool>(true, true), vec2<bool>(var_0, true), vec2<bool>(var_0, false)), vec2<bool>(false, true), vec2<bool>(var_0, var_0)));
    let var_4 = Struct_1(countOneBits(reverseBits(23553u)), var_2.b, u_input.b);
    return firstTrailingBit(~(~(~(var_2.a ^ 0u))));
}

fn func_1(arg_0: bool, arg_1: vec4<u32>) -> vec2<bool> {
    let var_0 = 4294967295u;
    var var_1 = Struct_1(_wgslsmith_clamp_u32((reverseBits(arg_1.x) | ~var_0) ^ func_2(), countOneBits(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.c.xxw, u_input.c.zyx), 1u)), var_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(979f * _wgslsmith_f_op_f32(round(-251f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-931f))), _wgslsmith_f_op_f32(floor(411f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(340f)) * _wgslsmith_f_op_f32(919f + 1000f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-128f, -338f, 1763f, -600f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(538f, -1051f, 106f, -2808f)))) + vec4<f32>(1f, 1f, 1f, 1f))), -max(-29010i, u_input.b) & -1i);
    var var_2 = _wgslsmith_add_u32(~_wgslsmith_add_u32(_wgslsmith_sub_u32(reverseBits(u_input.a), var_1.a), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 18980u, var_0) ^ vec3<u32>(1u, 0u, arg_1.x), u_input.c.wxw << (vec3<u32>(arg_1.x, 0u, var_0) % vec3<u32>(32u)))), var_0);
    let var_3 = _wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(227f, _wgslsmith_f_op_f32(step(638f, _wgslsmith_f_op_f32(exp2(var_1.b.x))))))));
    var var_4 = Struct_1(~max(_wgslsmith_add_u32(func_3(var_1.b.xy, u_input.b).x, _wgslsmith_dot_vec3_u32(arg_1.wyz, vec3<u32>(47344u, 91584u, 21991u))), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(var_0, 26u)], ~29928u), 26u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_3, _wgslsmith_f_op_f32(var_1.b.x - var_3), _wgslsmith_f_op_f32(func_4(vec3<bool>(false, false, false), Struct_1(22546u, vec4<f32>(var_1.b.x, var_3, 692f, var_1.b.x), u_input.d), vec2<u32>(var_0, 9362u))), _wgslsmith_f_op_f32(f32(-1f) * -839f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_1.b)) - vec4<f32>(var_1.b.x, 803f, 1617f, 1525f))))), ~(~(~u_input.d)));
    return !(!vec2<bool>(true, arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 13>();
    let var_0 = 0u;
    let var_1 = ~_wgslsmith_mod_u32(~var_0, firstTrailingBit(4294967295u)) << (~(~global2[_wgslsmith_index_u32(4294967295u, 26u)]) % 32u);
    let var_2 = select(select(vec2<bool>(firstLeadingBit(global2[_wgslsmith_index_u32(u_input.e, 26u)]) <= abs(var_1), _wgslsmith_f_op_f32(max(502f, -506f)) < _wgslsmith_f_op_f32(select(-748f, 1333f, true))), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), func_1(false, u_input.c), vec2<bool>(false, true)), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(any(vec2<bool>(var_0 <= 8468u, any(vec3<bool>(false, false, false)))), true), select(vec2<bool>((global2[_wgslsmith_index_u32(24961u, 26u)] <= var_1) & true, true), vec2<bool>(true, true), vec2<bool>(-1000f == _wgslsmith_f_op_f32(select(1000f, -286f, true)), true)));
    var var_3 = select(~max(~firstTrailingBit(vec3<u32>(48674u, 40879u, var_1)), vec3<u32>(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(var_0, 26u)], u_input.a), _wgslsmith_sub_u32(var_1, 42367u), var_1)), u_input.c.yzw, all(!(!vec3<bool>(var_2.x, var_2.x, false))));
    let var_4 = vec4<bool>(true, var_2.x, !var_2.x, 28042u < global2[_wgslsmith_index_u32(~reverseBits(countOneBits(23844u)), 26u)]);
    let var_5 = 343f;
    var var_6 = Struct_1(_wgslsmith_sub_u32(var_3.x, 135411u), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_5), _wgslsmith_f_op_f32(min(519f, var_5)), _wgslsmith_f_op_f32(var_5 * 384f), 520f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_5, var_5, var_5, 1723f))))))), -_wgslsmith_add_i32(~0i, select(firstLeadingBit(u_input.d), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.b, 0i), global1[_wgslsmith_index_u32(var_0, 25u)]), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -836f), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, ~select(u_input.c.x, 1u, true)), var_3.x, var_0), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_6.b.x * _wgslsmith_f_op_f32(f32(-1f) * -155f)))), var_6.b.x, var_6.b.x, var_6.b.x), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-668f, _wgslsmith_f_op_f32(floor(var_5)), _wgslsmith_f_op_f32(max(var_6.b.x, 167f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5, var_5, -2495f))))))), _wgslsmith_f_op_f32(-var_6.b.x));
}

