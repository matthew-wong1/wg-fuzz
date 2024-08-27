struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct Struct_5 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9> = array<f32, 9>(-232f, 1435f, -247f, 391f, -296f, 140f, 1000f, 107f, -2445f);

var<private> global1: Struct_1;

var<private> global2: array<bool, 18>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> u32 {
    return ~_wgslsmith_mult_u32(u_input.c & global1.b.x, min(u_input.a.x, abs(global1.a) ^ ~4294967295u));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: bool) -> u32 {
    var var_0 = Struct_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(260f * global0[_wgslsmith_index_u32(0u, 9u)])), 606f), global2[_wgslsmith_index_u32(26175u, 18u)]);
    let var_1 = vec4<u32>(36506u, ~(~(~_wgslsmith_clamp_u32(1u, 1u, arg_1.x))), global1.a, 1u);
    var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(step(arg_0.x, 1095f)))))), global1.d);
    global1 = Struct_1(4294967295u, vec3<u32>(firstTrailingBit(firstTrailingBit(arg_1.x)) << (46642u % 32u), ~func_2(), global1.e), global1.d, true, ~global1.b.x);
    global0 = array<f32, 9>();
    return _wgslsmith_dot_vec4_u32(var_1, countOneBits(vec4<u32>(select(1u, 10578u, false), u_input.c, ~arg_1.x, _wgslsmith_mult_u32(arg_1.x, 1u))) ^ ~(~(var_1 | var_1)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<i32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1.b.x, 9u)] + 252f));
    global2 = array<bool, 18>();
    let var_1 = vec4<u32>(u_input.c, ~u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.e, 4294967295u, ~302u), u_input.a), _wgslsmith_clamp_u32(~reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, global1.b.x), vec3<u32>(0u, 0u, u_input.c))), func_2(), _wgslsmith_sub_u32(~u_input.c, ~func_3(vec2<f32>(global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(36903u, 9u)]), u_input.a.zy, arg_0.x))));
    let var_2 = select(select(!select(select(arg_0.yz, vec2<bool>(arg_0.x, global1.d), arg_0.x), select(vec2<bool>(true, true), vec2<bool>(true, false), true), true), vec2<bool>(select(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, var_1.x), 18u)], true, true), true), all(vec4<bool>(true, true, any(arg_0), 1317f == global0[_wgslsmith_index_u32(4294967295u, 9u)]))), arg_0.yz, select(arg_0.zz, vec2<bool>(true, true), vec2<bool>((true | arg_0.x) & all(vec4<bool>(false, global1.d, true, true)), global1.c)));
    let var_3 = Struct_1(firstTrailingBit(62233u), _wgslsmith_mod_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, var_1.x, u_input.c), _wgslsmith_sub_vec3_u32(u_input.a, var_1.xzz), countOneBits(vec3<u32>(33798u, 32779u, u_input.c))), _wgslsmith_div_vec3_u32(select(_wgslsmith_add_vec3_u32(vec3<u32>(47306u, var_1.x, var_1.x), u_input.a), ~var_1.xyw, true), var_1.wwy)), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(~global1.a, 1u), ~1u >> (_wgslsmith_add_u32(var_1.x, 1u) % 32u)), 18u)], !select(false, true, true), _wgslsmith_mod_u32(~1u, ~_wgslsmith_add_u32(global1.e, ~u_input.a.x)));
    return select(vec2<bool>(any(select(var_2, !vec2<bool>(global2[_wgslsmith_index_u32(var_3.b.x, 18u)], false), !vec2<bool>(var_2.x, arg_0.x))), global1.c), select(select(!arg_0.zy, select(vec2<bool>(var_2.x, var_3.c), select(var_2, vec2<bool>(var_3.c, true), arg_0.xy), vec2<bool>(global1.c, false)), vec2<bool>(true, any(vec2<bool>(arg_0.x, var_2.x)))), !var_2, select(var_2, vec2<bool>(true, true), var_2)), countOneBits(1u) < _wgslsmith_div_u32(~var_1.x, abs(_wgslsmith_clamp_u32(4294967295u, u_input.a.x, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-137f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 9u)]))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(var_0, global0[_wgslsmith_index_u32(u_input.c, 9u)]), vec2<f32>(var_0, -2185f)))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], var_0)))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1527f, 1716f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(729f, var_0), vec2<f32>(global0[_wgslsmith_index_u32(113071u, 9u)], 1137f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0, global0[_wgslsmith_index_u32(u_input.a.x, 9u)]))), func_1(vec3<bool>(true, true, global1.c), u_input.b.xx)))))));
    var var_2 = Struct_4(var_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(abs(1f)))), select(!vec4<bool>(any(vec2<bool>(global2[_wgslsmith_index_u32(78672u, 18u)], false)), false, false, !global2[_wgslsmith_index_u32(u_input.a.x, 18u)]), select(!vec4<bool>(global2[_wgslsmith_index_u32(53796u, 18u)], global2[_wgslsmith_index_u32(u_input.a.x, 18u)], global1.d, global1.c), !select(vec4<bool>(global2[_wgslsmith_index_u32(19842u, 18u)], true, global2[_wgslsmith_index_u32(u_input.a.x, 18u)], global1.d), vec4<bool>(global1.d, false, global2[_wgslsmith_index_u32(17416u, 18u)], global1.c), vec4<bool>(false, false, global1.d, true)), select(vec4<bool>(global2[_wgslsmith_index_u32(42215u, 18u)], true, true, false), vec4<bool>(global1.c, false, false, false), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, var_1.x)) + _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(u_input.a.x, 9u)]))) == var_1.x), vec3<bool>(global2[_wgslsmith_index_u32(max(func_3(_wgslsmith_f_op_vec2_f32(round(var_1)), u_input.a.zz, !global2[_wgslsmith_index_u32(4294967295u, 18u)]), abs(func_2())), 18u)], global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(29081u, global1.e)), 18u)], !(any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 18u)], global2[_wgslsmith_index_u32(4294967295u, 18u)])) | true)));
    var var_3 = true;
    global0 = array<f32, 9>();
    let var_4 = -2147483647i;
    var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.a))), _wgslsmith_f_op_f32(115f + 1f), !select(var_2.c, select(vec4<bool>(var_2.d.x, true, var_2.c.x, global2[_wgslsmith_index_u32(u_input.c, 18u)]), !var_2.c, vec4<bool>(global1.d, true, var_2.d.x, true)), false), var_2.c.wwx);
    let x = u_input.a;
    s_output = StorageBuffer(~14049u, var_4 | var_4, _wgslsmith_sub_u32(abs(abs(~global1.a)), u_input.a.x));
}

