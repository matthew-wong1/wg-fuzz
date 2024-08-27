struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17>;

var<private> global1: vec3<i32>;

var<private> global2: Struct_1 = Struct_1(false, vec3<u32>(36230u, 1u, 68020u));

var<private> global3: f32;

var<private> global4: array<u32, 21>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = all(vec3<bool>(all(vec4<bool>(!global2.a, !global2.a, true, false)), any(!select(vec4<bool>(global2.a, false, global2.a, global2.a), vec4<bool>(false, global2.a, true, global2.a), false)), global2.a));
    var var_1 = _wgslsmith_dot_vec3_i32(~select(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 0i, global1.x), vec3<i32>(global1.x, global1.x, -1i)), _wgslsmith_mult_vec3_i32(vec3<i32>(global1.x, -27228i, -49666i), vec3<i32>(global1.x, 1i, global1.x)), var_0) << (abs(u_input.a.zyz) % vec3<u32>(32u)), reverseBits(_wgslsmith_clamp_vec3_i32(~(~vec3<i32>(global1.x, global1.x, global1.x)), select(firstLeadingBit(vec3<i32>(global1.x, -17325i, -2147483647i)), vec3<i32>(29625i, 1i, 2147483647i) ^ vec3<i32>(global1.x, global1.x, global1.x), true), reverseBits(vec3<i32>(global1.x, -1i, -33647i)) & select(vec3<i32>(1i, global1.x, global1.x), vec3<i32>(-1i, 0i, global1.x), false))));
    var var_2 = Struct_2(u_input.a.x);
    let var_3 = _wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(firstTrailingBit(0u >> (arg_0 % 32u)), 0u, _wgslsmith_sub_u32(global2.b.x, _wgslsmith_mult_u32(28367u, u_input.a.x)), var_2.a), u_input.a, firstLeadingBit(u_input.a)));
    let var_4 = Struct_2(1u);
    return 4294967295u;
}

fn func_2(arg_0: f32, arg_1: vec2<bool>) -> Struct_1 {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(global2.b.x, 17u)])) * _wgslsmith_f_op_f32(-1720f - 908f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * global0[_wgslsmith_index_u32(global2.b.x, 17u)]))))));
    let var_0 = _wgslsmith_mult_u32(global4[_wgslsmith_index_u32(~(~(~(~global4[_wgslsmith_index_u32(u_input.a.x, 21u)]))), 21u)], func_3(1u & (global2.b.x | global2.b.x)));
    var var_1 = u_input.a.zz;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(select(-103f, _wgslsmith_f_op_f32(f32(-1f) * -853f), true)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~var_1.x, 17u)] * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 17u)])), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, arg_0) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 17u)] * arg_0))))));
    var var_3 = select(select(select(!select(vec4<bool>(false, true, false, global2.a), vec4<bool>(global2.a, global2.a, false, global2.a), false), vec4<bool>(u_input.a.x < var_1.x, true, true, arg_1.x), true), vec4<bool>(global2.a & !arg_1.x, any(select(vec4<bool>(arg_1.x, false, global2.a, global2.a), vec4<bool>(global2.a, false, arg_1.x, arg_1.x), true)), true, 2147483647i < ~global1.x), !vec4<bool>(true, !arg_1.x, true, false)), !select(!vec4<bool>(false, global2.a, global2.a, global2.a), vec4<bool>(arg_1.x, !global2.a, false & global2.a, false), true), !vec4<bool>(true, arg_1.x, true, true));
    return Struct_1(false, min(~firstLeadingBit(u_input.a.yxx), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(global2.b, vec3<u32>(0u, var_0, 1u)), func_3(1u)), abs(_wgslsmith_dot_vec2_u32(u_input.a.zw, u_input.a.wy)), ~1u)));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: vec3<f32>) -> f32 {
    global2 = func_2(_wgslsmith_f_op_f32(1000f * -687f), !vec2<bool>(arg_1.x, !(global2.a | false)));
    var var_0 = Struct_1(false, vec3<u32>(reverseBits(_wgslsmith_mult_u32(70640u, 24121u)), min(global4[_wgslsmith_index_u32(~1u, 21u)], 20589u), u_input.a.x));
    let var_1 = ~firstTrailingBit(abs(_wgslsmith_add_vec4_i32(vec4<i32>(global1.x, global1.x, global1.x, global1.x), firstTrailingBit(vec4<i32>(-2147483647i, global1.x, -2147483647i, global1.x)))));
    var var_2 = firstLeadingBit(0u);
    global1 = firstTrailingBit(vec3<i32>(firstTrailingBit(max(-var_1.x, -1567i)), 17083i, -1i));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(trunc(arg_2.x))) + -218f) * 550f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(48686u, 17u)] - _wgslsmith_f_op_f32(-arg_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1674f, _wgslsmith_div_f32(-1168f, global0[_wgslsmith_index_u32(0u, 17u)]))) * global0[_wgslsmith_index_u32(~53091u, 17u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(global2.b, !vec4<bool>(false, true, global2.a, true), vec3<f32>(-230f, global0[_wgslsmith_index_u32(1u, 17u)], -528f)))))));
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -1209f);
    let var_1 = -vec3<i32>(-1i, max(1i, select(global1.x, -global1.x, !global2.a)), global1.x);
    var var_2 = true;
    global4 = array<u32, 21>();
    var var_3 = vec4<bool>(global2.a, global2.a, true, global2.a);
    let var_4 = Struct_2(countOneBits(~(_wgslsmith_add_u32(global2.b.x, u_input.a.x) ^ select(16954u, global4[_wgslsmith_index_u32(global2.b.x, 21u)], false))));
    var var_5 = func_2(-2664f, select(vec2<bool>(true, true), var_3.zy, true || global2.a));
    var var_6 = func_2(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~var_5.b.x), ~global2.b.x, abs(abs(4294967295u))), 21u)], 17u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), var_0.x))), select(vec2<bool>(any(vec4<bool>(false, var_5.a, global2.a, true)), true), !var_3.xz, !var_3.wy));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1740f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1088f - _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(22448u, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)]))))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-764f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 17u)]))))), max(~(~_wgslsmith_add_vec3_u32(var_6.b, u_input.a.zzy)), vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 62175u, 45042u), vec3<u32>(88828u, var_5.b.x, var_4.a)), 1u, func_2(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_5.b.x, 17u)] + var_0.x), var_3.yz).b.x)));
}

