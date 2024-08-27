struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_1, 31>;

var<private> global2: array<Struct_1, 13>;

var<private> global3: array<f32, 13> = array<f32, 13>(-105f, -2820f, 2001f, 2118f, 676f, 1625f, 1731f, -1136f, -818f, 401f, -341f, 2008f, -100f);

var<private> global4: array<i32, 21>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(611f, arg_0.a.x, 436f, global3[_wgslsmith_index_u32(20403u, 13u)]) * arg_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_1)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 13u)] + 1000f), _wgslsmith_div_f32(global0.x, -688f), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 13u)] - arg_0.a.x), -569f))), ~(~(~arg_0.b)));
    let var_1 = Struct_1(vec4<f32>(-450f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-909f - global0.x), -165f), var_0.b);
    var var_2 = var_0;
    var var_3 = Struct_1(arg_1, firstTrailingBit(abs(~min(vec2<u32>(arg_0.b.x, var_1.b.x), vec2<u32>(arg_0.b.x, var_0.b.x)))));
    let var_4 = firstLeadingBit(_wgslsmith_clamp_vec4_u32(min(abs(~vec4<u32>(var_3.b.x, var_0.b.x, 19081u, var_2.b.x)), abs(vec4<u32>(var_3.b.x, 1u, var_1.b.x, u_input.b)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(var_3.b.x, 4294967295u, 29616u, var_1.b.x), vec4<u32>(u_input.a, 90416u, 1u, var_1.b.x), vec4<u32>(var_3.b.x, var_1.b.x, 0u, 0u))), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, 94887u, 0u), vec4<u32>(4294967295u, 14783u, var_3.b.x, var_0.b.x)) << (vec4<u32>(4294967295u, 42502u, u_input.c.x, var_0.b.x) % vec4<u32>(32u)), countOneBits(select(vec4<u32>(4294967295u, u_input.b, 25266u, var_0.b.x), vec4<u32>(49375u, 17271u, arg_0.b.x, 0u), false))), ~vec4<u32>(var_1.b.x, ~var_0.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(55227u, 1u, 94605u, 0u), vec4<u32>(var_1.b.x, 4294967295u, 1u, var_2.b.x)), firstTrailingBit(4294967295u))));
    return _wgslsmith_f_op_vec3_f32(floor(var_1.a.wxx));
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(global2[_wgslsmith_index_u32(14568u, 13u)], vec4<f32>(143f, global3[_wgslsmith_index_u32(34782u, 13u)], 1091f, 571f), global4[_wgslsmith_index_u32(1u, 21u)])) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 13u)], global3[_wgslsmith_index_u32(u_input.c.x, 13u)], global3[_wgslsmith_index_u32(u_input.a, 13u)]))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1000f, global3[_wgslsmith_index_u32(u_input.b, 13u)]) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, global0.x, -144f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, 23480u), 13u)], _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-155f, global0.x, -1070f, global0.x), vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 13u)], global0.x, global3[_wgslsmith_index_u32(56748u, 13u)], 1050f), vec4<bool>(arg_0, arg_0, arg_0, arg_0))), 2147483647i >> (u_input.c.x % 32u))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-261f, -1458f, -1515f)))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(25322u, 13u)], global0.x, 2265f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(287f, global3[_wgslsmith_index_u32(u_input.c.x, 13u)], -3086f)))))), !vec3<bool>(arg_0, _wgslsmith_f_op_f32(global0.x - global0.x) <= _wgslsmith_f_op_f32(global0.x + global0.x), true || !arg_0)));
    global2 = array<Struct_1, 13>();
    var var_1 = select(select(select(select(select(vec2<bool>(true, false), vec2<bool>(arg_0, false), vec2<bool>(false, arg_0)), select(vec2<bool>(true, false), vec2<bool>(true, false), true), any(vec4<bool>(arg_0, false, arg_0, false))), vec2<bool>(true, true), all(!vec2<bool>(true, arg_0))), select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 13u)] > var_0.x, true), !(!vec2<bool>(arg_0, false)), any(select(vec4<bool>(true, arg_0, true, true), vec4<bool>(false, true, arg_0, arg_0), vec4<bool>(true, arg_0, arg_0, true)))), select(select(select(vec2<bool>(false, true), vec2<bool>(arg_0, arg_0), false), vec2<bool>(false, true), !vec2<bool>(arg_0, true)), select(vec2<bool>(true, true), !vec2<bool>(arg_0, arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0), arg_0)), arg_0)), vec2<bool>(true, false && all(vec4<bool>(arg_0, false, false, arg_0))), vec2<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1596f + 165f) * _wgslsmith_f_op_f32(step(1375f, global3[_wgslsmith_index_u32(1u, 13u)]))) > global3[_wgslsmith_index_u32(u_input.a, 13u)]));
    var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(-556f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(select(33273u, 4294967295u, false), 13u)] * -268f) * _wgslsmith_f_op_f32(sign(1382f))), -1000f), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-729f, -759f, global0.x), vec3<f32>(-1689f, 122f, -651f), arg_0)), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec4<f32>(var_0.x, -1000f, 1301f, 1000f), vec2<u32>(13763u, u_input.c.x)), vec4<f32>(var_0.x, global0.x, -806f, 1441f), global4[_wgslsmith_index_u32(1u, 21u)])))))))));
    var var_2 = vec3<f32>(-502f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(u_input.c.x, 13u)]))), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(63421u, 13u)]))))), var_0.x);
    return _wgslsmith_f_op_f32(round(var_2.x));
}

fn func_1(arg_0: vec4<u32>) -> i32 {
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(reverseBits((0u << (0u % 32u)) | u_input.a), u_input.a), 4294967295u);
    global3 = array<f32, 13>();
    global0 = _wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(1u, 13u)], 1263f, global0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-867f, _wgslsmith_f_op_f32(step(-1283f, _wgslsmith_f_op_f32(func_2(true)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f - global3[_wgslsmith_index_u32(arg_0.x, 13u)]), _wgslsmith_f_op_f32(func_2(false)))))));
    global3 = array<f32, 13>();
    var var_1 = firstLeadingBit(-(~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(1u, 21u)], -1i, -66737i, -1i), vec4<i32>(global4[_wgslsmith_index_u32(var_0, 21u)], global4[_wgslsmith_index_u32(4294967295u, 21u)], global4[_wgslsmith_index_u32(13923u, 21u)], 10606i)), -1i, min(global4[_wgslsmith_index_u32(arg_0.x, 21u)], 53358i))));
    return ~(-global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.yy, vec2<u32>(20169u, _wgslsmith_sub_u32(24594u, var_0))), 21u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 13>();
    let var_0 = u_input.a;
    global4 = array<i32, 21>();
    var var_1 = true;
    var var_2 = vec3<i32>(func_1(vec4<u32>(1u, var_0, ~(~15073u), min(u_input.c.x | 83192u, min(16591u, u_input.c.x)))), -countOneBits(-18714i), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec2_u32(vec2<u32>(22581u, u_input.c.x), vec2<u32>(var_0, 0u)));
}

