struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 13> = array<vec2<u32>, 13>(vec2<u32>(27899u, 0u), vec2<u32>(1u, 2810u), vec2<u32>(32344u, 4294967295u), vec2<u32>(14987u, 0u), vec2<u32>(69761u, 0u), vec2<u32>(11757u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 27828u), vec2<u32>(1u, 0u), vec2<u32>(16789u, 91609u), vec2<u32>(1u, 20889u), vec2<u32>(1u, 30696u), vec2<u32>(1u, 49343u));

var<private> global1: array<bool, 17> = array<bool, 17>(true, false, false, false, true, false, false, false, false, false, false, false, true, true, true, true, true);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_1) -> vec4<bool> {
    global0 = array<vec2<u32>, 13>();
    global0 = array<vec2<u32>, 13>();
    var var_0 = abs(max(arg_1.wzx & _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_1.zww, arg_1.yyz, arg_1.zwy), select(arg_1.xxy, arg_1.wzy, arg_3.d)), arg_1.yxx));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1405f, -856f, -219f, -802f)))) + vec4<f32>(856f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a))), -1000f, _wgslsmith_f_op_f32(1048f - _wgslsmith_f_op_f32(min(arg_0.b.x, arg_0.b.x))))), vec4<f32>(arg_3.a, _wgslsmith_div_f32(-278f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_3.b.x)))), _wgslsmith_f_op_f32(-486f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1540f)), arg_3.b.x)), -241f), !(!(!select(vec4<bool>(arg_3.d, arg_3.d, false, arg_0.d), vec4<bool>(arg_2, false, true, true), vec4<bool>(true, arg_2, arg_2, true))))));
    let var_2 = -vec2<i32>(abs(u_input.a), 29245i);
    return vec4<bool>(1735i < _wgslsmith_mod_i32(-2147483647i, (-1i >> (arg_3.c % 32u)) | ~11741i), any(select(select(vec2<bool>(true, arg_0.d), vec2<bool>(arg_2, arg_3.d), !vec2<bool>(arg_2, true)), select(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 17u)], false), vec2<bool>(false, true), vec2<bool>(arg_0.d, arg_2)), !(!vec2<bool>(arg_0.d, global1[_wgslsmith_index_u32(52969u, 17u)])))), false, false);
}

fn func_2() -> f32 {
    let var_0 = Struct_1(-742f, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1594f)))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1627f, -128f, global1[_wgslsmith_index_u32(u_input.b.x, 17u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1075f, -1136f)) + _wgslsmith_f_op_f32(-230f * -1000f))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(445f, -266f, 572f, -2379f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(537f, 1000f, -539f, 311f), vec4<f32>(189f, 992f, 455f, -147f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-795f, 904f, 1253f, 2432f)))))), u_input.b.x, all(func_3(Struct_1(-557f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-845f, 1187f, 1116f, 1237f)), _wgslsmith_mult_u32(u_input.b.x, 1u), false), -(vec4<i32>(43672i, 25958i, -2147483647i, u_input.a) & vec4<i32>(u_input.a, 14712i, u_input.a, -2147483647i)), all(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 17u)])), Struct_1(950f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-220f, 780f, 146f, 1031f)), 29583u | u_input.b.x, u_input.a == 0i))));
    let var_1 = vec3<u32>(reverseBits(firstTrailingBit(~(~u_input.b.x))), _wgslsmith_div_u32(~select(_wgslsmith_clamp_u32(4294967295u, 31013u, 8674u), 1u, all(vec2<bool>(global1[_wgslsmith_index_u32(0u, 17u)], var_0.d))), _wgslsmith_sub_u32(~1u, u_input.b.x)), var_0.c);
    global0 = array<vec2<u32>, 13>();
    var var_2 = countOneBits(vec2<u32>((u_input.b.x & 1u) | ~var_0.c, var_1.x) & vec2<u32>(_wgslsmith_mod_u32(~var_1.x, 0u), _wgslsmith_div_u32(~var_1.x, _wgslsmith_mod_u32(var_0.c, var_1.x))));
    let var_3 = vec2<u32>(var_0.c, _wgslsmith_dot_vec2_u32(vec2<u32>(~1u, ~var_1.x), ~vec2<u32>(u_input.b.x << (4294967295u % 32u), firstTrailingBit(1u))));
    return -105f;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2072f, _wgslsmith_f_op_f32(-arg_3.a))) + _wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(-arg_3.a))))), arg_1.b, 4294967295u, (all(vec4<bool>(true, arg_1.d, global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(1u, 17u)])) || arg_0.d) | true);
    let var_1 = Struct_1(var_0.b.x, vec4<f32>(334f, _wgslsmith_f_op_f32(ceil(arg_3.b.x)), arg_1.a, 107f), firstLeadingBit(u_input.b.x), arg_1.d);
    let var_2 = 63191u;
    global0 = array<vec2<u32>, 13>();
    global0 = array<vec2<u32>, 13>();
    return -(_wgslsmith_clamp_i32(-19021i, i32(-1i) * -39506i, u_input.a) | 32533i);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = arg_1;
    let var_1 = func_4(arg_2, arg_2, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, 895f))), _wgslsmith_f_op_f32(func_2()))), arg_2);
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1098f, -1643f)) + _wgslsmith_f_op_f32(1665f * 1634f)))), 2388f));
    let var_3 = vec3<bool>(true, true, false);
    var var_4 = countOneBits(select(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, var_1, u_input.a), firstTrailingBit(vec3<i32>(var_1, 1i, u_input.a))), vec3<i32>(-7141i, 20722i, var_1), any(vec4<bool>(true, false, arg_2.d, true)) == any(vec3<bool>(arg_1.x, true, true))));
    return select(countOneBits(vec3<u32>(~max(u_input.b.x, u_input.b.x), ~reverseBits(arg_2.c), 1u)), abs(firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, arg_3.c, 0u), vec3<u32>(50747u, u_input.b.x, 2940u))) >> (~(~vec3<u32>(0u, arg_3.c, 1u)) % vec3<u32>(32u))), var_3);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 17>();
    var var_0 = true;
    global1 = array<bool, 17>();
    var var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, reverseBits(~(~8768u)), u_input.b.x), vec3<u32>(~0u, ~(~u_input.b.x) << (~select(17543u, 23232u, global1[_wgslsmith_index_u32(u_input.b.x, 17u)]) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, _wgslsmith_clamp_u32(u_input.b.x, 0u, u_input.b.x), ~0u), min(func_1(vec4<f32>(265f, 1420f, 1135f, -1000f), vec3<bool>(global1[_wgslsmith_index_u32(9364u, 17u)], global1[_wgslsmith_index_u32(u_input.b.x, 17u)], global1[_wgslsmith_index_u32(u_input.b.x, 17u)]), Struct_1(-285f, vec4<f32>(-801f, -556f, 908f, -928f), 63638u, global1[_wgslsmith_index_u32(u_input.b.x, 17u)]), Struct_1(308f, vec4<f32>(-150f, -1401f, -906f, 1261f), u_input.b.x, true)), vec3<u32>(41372u, 1u, 81135u) & vec3<u32>(u_input.b.x, 24757u, u_input.b.x)))));
    let var_2 = func_3(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-565f, -659f)))), -1332f), vec4<f32>(_wgslsmith_f_op_f32(min(-920f, _wgslsmith_f_op_f32(f32(-1f) * -1506f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-212f + -1000f), _wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -695f)), 469f), _wgslsmith_add_u32(max(u_input.b.x, 55485u) | 1u, firstLeadingBit(u_input.b.x)), global1[_wgslsmith_index_u32(u_input.b.x, 17u)]), ~_wgslsmith_add_vec4_i32(firstTrailingBit(~vec4<i32>(u_input.a, 1i, u_input.a, 26952i)), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 6175i, u_input.a, -26852i), vec4<i32>(-16268i, u_input.a, u_input.a, -1i)), -vec4<i32>(u_input.a, -1i, 14542i, u_input.a))), all(vec4<bool>(false, any(vec3<bool>(true, true, true)), all(!vec4<bool>(global1[_wgslsmith_index_u32(43655u, 17u)], global1[_wgslsmith_index_u32(u_input.b.x, 17u)], global1[_wgslsmith_index_u32(var_1.x, 17u)], false)), true)), Struct_1(-957f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1628f, -1327f, -2139f, -1178f) * vec4<f32>(-1096f, -348f, 1176f, -645f)))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(25854u, u_input.b.x, 80944u, 23061u), vec4<u32>(var_1.x, u_input.b.x, u_input.b.x, u_input.b.x) | vec4<u32>(1u, u_input.b.x, 0u, var_1.x)), !global1[_wgslsmith_index_u32(~25774u, 17u)]));
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

