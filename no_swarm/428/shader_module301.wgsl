struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

var<private> global1: array<i32, 32>;

var<private> global2: Struct_1 = Struct_1(true);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = 20407u;
    global2 = Struct_1(global0.x);
    let var_1 = abs(countOneBits(u_input.b.x));
    global2 = Struct_1(select(global2.a, firstTrailingBit(global1[_wgslsmith_index_u32(1u, 32u)]) != firstLeadingBit(-var_1), !any(select(vec2<bool>(global2.a, global0.x), global0.zy, global2.a))));
    var var_2 = Struct_1(false);
    return !(false & (any(!vec4<bool>(true, true, var_2.a, true)) || true));
}

fn func_2() -> vec2<f32> {
    let var_0 = select(vec4<bool>(false, global2.a, global2.a, any(vec3<bool>(u_input.a.x > 38486u, func_3(), false))), select(!select(select(vec4<bool>(global2.a, global0.x, true, true), vec4<bool>(true, true, true, global0.x), false), select(vec4<bool>(false, false, true, true), vec4<bool>(global0.x, global0.x, true, global2.a), true), vec4<bool>(true, true, true, true)), !(!select(vec4<bool>(global2.a, true, true, false), vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global2.a, global2.a, false, global0.x))), any(select(vec4<bool>(global0.x, true, global0.x, global2.a), vec4<bool>(global0.x, false, global0.x, true), global0.x)) || global2.a), select(!select(vec4<bool>(global2.a, false, global0.x, global0.x), select(vec4<bool>(true, false, true, global0.x), vec4<bool>(false, true, global0.x, false), global2.a), global2.a), vec4<bool>(all(!vec3<bool>(global0.x, false, global0.x)), global0.x, !all(vec3<bool>(false, false, global2.a)), global2.a), select(select(vec4<bool>(true, global2.a, true, global2.a), !vec4<bool>(true, false, global2.a, true), vec4<bool>(global0.x, false, global2.a, true)), vec4<bool>(global0.x, false, true, global2.a), (-1i >= global1[_wgslsmith_index_u32(12364u, 32u)]) || (global1[_wgslsmith_index_u32(u_input.d, 32u)] == -35114i))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1557f));
    return vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1354f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1361f)), 1357f, false))))), 1191f);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(166f, -992f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-872f, -705f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(479f, -1862f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1852f, -113f) - vec2<f32>(-746f, 956f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-332f, -594f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()) + vec2<f32>(-1343f, -262f)))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(777f, 608f) * vec2<f32>(-2437f, -579f)), _wgslsmith_div_vec2_f32(vec2<f32>(298f, 1021f), vec2<f32>(-694f, 678f)))))));
    let var_1 = Struct_1(select(global0.x, any(!vec3<bool>(false, false, global2.a)), !(u_input.a.x > u_input.a.x) != any(!vec4<bool>(false, global2.a, arg_1.a, arg_1.a))));
    global1 = array<i32, 32>();
    var var_2 = Struct_1(all(select(!select(vec4<bool>(true, var_1.a, false, false), vec4<bool>(false, false, false, false), vec4<bool>(var_1.a, false, false, var_1.a)), !(!vec4<bool>(global2.a, false, true, false)), select(!vec4<bool>(global2.a, true, false, var_1.a), !vec4<bool>(false, global0.x, var_1.a, false), select(vec4<bool>(arg_1.a, global0.x, true, global2.a), vec4<bool>(global2.a, true, arg_1.a, false), vec4<bool>(true, true, true, true))))));
    global1 = array<i32, 32>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, var_0.x)))), _wgslsmith_div_f32(1391f, _wgslsmith_f_op_f32(var_0.x + 115f)))) + var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-326f)), _wgslsmith_f_op_f32(func_1(vec4<i32>(global1[_wgslsmith_index_u32(0u, 32u)], global1[_wgslsmith_index_u32(17548u, 32u)], 29779i, u_input.b.x), Struct_1(false)))))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1635f * -1179f) + _wgslsmith_f_op_f32(trunc(484f)))))));
    let var_1 = -(~(-_wgslsmith_mod_i32(71691i, 2147483647i)) | reverseBits(~(u_input.c & -1i)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<f32>(var_0.x, -107f, var_0.x, var_0.x)))), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 833f, -1205f, var_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -1000f) - vec4<f32>(var_0.x, -604f, 668f, -1315f)))))));
    var var_3 = Struct_1((!all(vec3<bool>(true, global2.a, global0.x)) || !all(global0.yz)) && (global2.a || (_wgslsmith_dot_vec2_u32(u_input.a.zz, vec2<u32>(0u, 1u)) < 5303u)));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2));
    let var_5 = select(!(!select(!vec3<bool>(global0.x, global0.x, global2.a), !vec3<bool>(global2.a, global2.a, global0.x), vec3<bool>(true, true, false))), select(vec3<bool>(any(global0.zx), all(vec4<bool>(global0.x, global2.a, var_3.a, var_3.a)), _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-2147483647i, u_input.b.x, var_1, global1[_wgslsmith_index_u32(u_input.d, 32u)])) > ~1i), !(!vec3<bool>(true, global2.a, true)), !vec3<bool>(!var_3.a, all(vec3<bool>(var_3.a, var_3.a, false)), var_3.a | var_3.a)), vec3<bool>(-1000f != _wgslsmith_f_op_f32(-var_0.x), all(select(global0.xx, select(global0.xy, vec2<bool>(false, true), global0.x), select(vec2<bool>(true, global0.x), global0.zz, false))), !select(false, true, !global0.x)));
    global0 = select(vec3<bool>(var_5.x, true, var_5.x != global2.a), vec3<bool>(~_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(var_1, global1[_wgslsmith_index_u32(u_input.a.x, 32u)], -14420i, -1i)) > -_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(u_input.d, 32u)], -2147483647i), var_5.x, _wgslsmith_clamp_i32(firstTrailingBit(u_input.b.x), _wgslsmith_div_i32(var_1, var_1), countOneBits(global1[_wgslsmith_index_u32(u_input.d, 32u)])) < -global1[_wgslsmith_index_u32(~3040u, 32u)]), !var_5);
    var_4 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-875f, -1732f, var_0.x, var_4.x))))) + _wgslsmith_f_op_vec4_f32(var_2 * vec4<f32>(2185f, _wgslsmith_f_op_f32(sign(var_2.x)), var_4.x, -1310f)))));
    let x = u_input.a;
    s_output = StorageBuffer(1822f, var_2, ~abs(countOneBits(vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 32u)], var_1)) ^ ~vec2<i32>(1i, u_input.b.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1282f) - var_0.x))))), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.d, 0u, u_input.d), abs(u_input.d)), u_input.d, max(_wgslsmith_add_u32(77128u, u_input.a.x), u_input.d >> (23787u % 32u)), 1u), ~_wgslsmith_clamp_vec4_u32(select(vec4<u32>(33662u, u_input.a.x, u_input.a.x, u_input.d), vec4<u32>(u_input.a.x, 41198u, u_input.a.x, u_input.d), vec4<bool>(true, var_3.a, false, global0.x)), reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(24773u, 0u, u_input.a.x, 24481u), vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x)))));
}

