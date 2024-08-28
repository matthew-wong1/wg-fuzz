struct Struct_1 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: array<f32, 25>;

var<private> global2: array<bool, 9>;

var<private> global3: Struct_1 = Struct_1(false, 7114u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    var var_0 = Struct_1(false, u_input.c.x);
    var var_1 = ~(~_wgslsmith_add_u32(~global3.b, 1u)) < 51951u;
    global2 = array<bool, 9>();
    global1 = array<f32, 25>();
    let var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a.x, abs(4294967295u)) | 1u, 18013u), 21u)];
    return global3.b;
}

fn func_3(arg_0: f32, arg_1: bool) -> Struct_1 {
    var var_0 = ~vec4<u32>(~(~u_input.c.x), ~global3.b, ~(~global3.b), _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(19232u, u_input.a.x), u_input.a.x), _wgslsmith_sub_u32(u_input.a.x, 31581u)));
    return Struct_1(global3.a, _wgslsmith_mod_u32(firstLeadingBit(u_input.c.x), ~_wgslsmith_sub_u32(33117u, var_0.x)) >> (49529u % 32u));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = func_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(306f - _wgslsmith_f_op_f32(f32(-1f) * -799f))), global1[_wgslsmith_index_u32(func_2(!(!vec4<bool>(true, false, global3.a, false))), 25u)])), global2[_wgslsmith_index_u32(17468u >> ((_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), max(vec3<u32>(51068u, u_input.a.x, global3.b), u_input.c)) & 0u) % 32u), 9u)]);
    let var_1 = u_input.b;
    return Struct_1(true, 19198u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    global2 = array<bool, 9>();
    let var_0 = reverseBits(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global3.b), vec2<u32>(abs(global3.b), func_2(vec4<bool>(arg_1.a, global3.a, global3.a, true)))), 0u, _wgslsmith_mod_u32((global3.b << (39428u % 32u)) ^ (5145u ^ global3.b), ~_wgslsmith_clamp_u32(arg_1.b, 13137u, arg_3)), 1u));
    var var_1 = all(!vec4<bool>(!all(vec3<bool>(true, global3.a, false)), false, global3.a & true, any(!vec4<bool>(arg_1.a, false, true, false))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-429f, -307f, global1[_wgslsmith_index_u32(arg_3, 25u)], -1298f), vec4<f32>(global1[_wgslsmith_index_u32(var_0.x, 25u)], 525f, global1[_wgslsmith_index_u32(global3.b, 25u)], global1[_wgslsmith_index_u32(68426u, 25u)]), true)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(var_0.x, 25u)], global1[_wgslsmith_index_u32(298u, 25u)], global1[_wgslsmith_index_u32(0u, 25u)], global1[_wgslsmith_index_u32(0u, 25u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(178f, global1[_wgslsmith_index_u32(arg_1.b, 25u)], 1000f, global1[_wgslsmith_index_u32(1u, 25u)]))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(481f, 766f, global1[_wgslsmith_index_u32(4294967295u, 25u)], global1[_wgslsmith_index_u32(17006u, 25u)]), vec4<f32>(global1[_wgslsmith_index_u32(arg_2.b, 25u)], global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(8482u, 25u)], 710f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(14529u, 25u)], global1[_wgslsmith_index_u32(global3.b, 25u)], global1[_wgslsmith_index_u32(arg_0.b, 25u)], -946f) * vec4<f32>(global1[_wgslsmith_index_u32(20599u, 25u)], global1[_wgslsmith_index_u32(arg_3, 25u)], -1749f, -1000f)))))));
    global3 = arg_0;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(global3.b, 25u)], global1[_wgslsmith_index_u32(global3.b, 25u)]) - vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 25u)], global1[_wgslsmith_index_u32(global3.b, 25u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(25696u, 25u)], global1[_wgslsmith_index_u32(40247u, 25u)]) - vec2<f32>(-299f, 1073f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 25u)], global1[_wgslsmith_index_u32(global3.b, 25u)]) * vec2<f32>(global1[_wgslsmith_index_u32(118503u, 25u)], global1[_wgslsmith_index_u32(global3.b, 25u)])) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(580f, 253f)))))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2048f), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a >> (vec4<u32>(28867u, 0u, global3.b, global3.b) % vec4<u32>(32u)), max(vec4<u32>(1u, global3.b, global3.b, global3.b), vec4<u32>(u_input.a.x, u_input.a.x, global3.b, u_input.c.x))), 25u)])) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1267f, global1[_wgslsmith_index_u32(u_input.a.x, 25u)])) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-305f, 1000f), vec2<f32>(global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(77637u, 25u)]))))));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, var_0.x, global3.a)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~36920u, 25u)]))))));
    global1 = array<f32, 25>();
    let var_2 = global3.b & (_wgslsmith_mult_u32(global3.b, countOneBits(min(4294967295u, global3.b))) | 47209u);
    let var_3 = func_4(func_1(u_input.b.x), func_1(1i), func_3(_wgslsmith_f_op_f32(-var_1), all(vec3<bool>(true, global2[_wgslsmith_index_u32(73813u, 9u)], true)) || !select(false, true, false)), var_2);
    var var_4 = var_1;
    global2 = array<bool, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-670f + var_0.x), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_2, 25u)]))))), u_input.a.x, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(942f, -2073f, var_0.x))))), (select(u_input.a, reverseBits(vec4<u32>(23767u, var_2, 44306u, 1u)), !vec4<bool>(global3.a, var_3.a, false, global2[_wgslsmith_index_u32(global3.b, 9u)])) >> (vec4<u32>(var_2, var_3.b, ~var_2, 7374u) % vec4<u32>(32u))) & vec4<u32>(~u_input.a.x, ~_wgslsmith_add_u32(0u, var_3.b), _wgslsmith_sub_u32(global3.b, u_input.c.x >> (56791u % 32u)), global3.b));
}

