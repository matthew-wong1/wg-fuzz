struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: Struct_2,
    d: i32,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 10>;

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(13544i, i32(-2147483648), true, vec3<bool>(true, true, true), vec2<i32>(10856i, -10233i)), Struct_1(42145i, 1i, true, vec3<bool>(true, false, true), vec2<i32>(-1i, 2147483647i)), Struct_1(-1i, 1i, true, vec3<bool>(true, false, true), vec2<i32>(61158i, 51504i)), Struct_1(2147483647i, -13563i, true, vec3<bool>(false, true, true), vec2<i32>(-10587i, 2147483647i)), Struct_1(-32i, 1i, true, vec3<bool>(false, true, true), vec2<i32>(-1i, 1i)), Struct_1(0i, 2147483647i, true, vec3<bool>(false, true, true), vec2<i32>(-62348i, 1i)), Struct_1(-1i, -1i, false, vec3<bool>(false, true, true), vec2<i32>(-1i, -23212i)), Struct_1(2147483647i, -52653i, false, vec3<bool>(true, false, false), vec2<i32>(2147483647i, -6187i)), Struct_1(1i, 1i, true, vec3<bool>(true, true, false), vec2<i32>(18232i, -1i)), Struct_1(i32(-2147483648), i32(-2147483648), false, vec3<bool>(false, false, true), vec2<i32>(2147483647i, 1i)), Struct_1(-25723i, 0i, false, vec3<bool>(true, false, true), vec2<i32>(1i, 0i)), Struct_1(0i, 36167i, false, vec3<bool>(false, false, false), vec2<i32>(-1i, 1i)), Struct_1(1i, 0i, false, vec3<bool>(true, false, false), vec2<i32>(45830i, -38301i)), Struct_1(42300i, 14757i, true, vec3<bool>(true, false, false), vec2<i32>(-36443i, -17984i)), Struct_1(1031i, 12769i, false, vec3<bool>(true, true, false), vec2<i32>(-1i, 1i)), Struct_1(-43801i, 32318i, true, vec3<bool>(true, false, true), vec2<i32>(-9109i, 1i)), Struct_1(i32(-2147483648), 0i, true, vec3<bool>(false, false, true), vec2<i32>(52235i, 1i)), Struct_1(0i, -1i, true, vec3<bool>(true, true, false), vec2<i32>(25824i, -17252i)), Struct_1(-19012i, -7648i, false, vec3<bool>(true, false, true), vec2<i32>(1i, 21197i)));

var<private> global2: array<f32, 19> = array<f32, 19>(-1000f, -353f, 1274f, -1168f, -126f, -104f, -1000f, -764f, 538f, 442f, 648f, -970f, 260f, -327f, -395f, 926f, 179f, -174f, -837f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(-702f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(498f - 315f)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(670f))), -1373f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1910f, 1f)))));
    global2 = array<f32, 19>();
    global0 = array<vec4<bool>, 10>();
    let var_1 = vec3<u32>(u_input.a, u_input.a, ~abs(~firstLeadingBit(0u)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(reverseBits(u_input.a), 19u)])));
    return arg_0.e.x & -arg_0.e.x;
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> i32 {
    let var_0 = Struct_1(1i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-_wgslsmith_mod_i32(-1i, -48918i), _wgslsmith_clamp_i32(-2590i, -69500i, 2147483647i) << (4294967295u % 32u), ~1i), -reverseBits(func_3(global1[_wgslsmith_index_u32(u_input.a, 19u)]))), true, !vec3<bool>(all(vec2<bool>(true, true)) && all(vec3<bool>(true, true, false)), any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), global0[_wgslsmith_index_u32(1u, 10u)])), true), vec2<i32>(1i, 1i));
    global2 = array<f32, 19>();
    var var_1 = ~_wgslsmith_mod_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(arg_1.x, 1u), vec2<u32>(4294967295u, u_input.a)), reverseBits(arg_1));
    var_1 = abs(firstTrailingBit(_wgslsmith_mod_vec2_u32(~max(arg_1, arg_1), _wgslsmith_mod_vec2_u32(abs(arg_1), _wgslsmith_mod_vec2_u32(vec2<u32>(50278u, 0u), vec2<u32>(4294967295u, arg_1.x))))));
    global1 = array<Struct_1, 19>();
    return -1i;
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_1(-1i, _wgslsmith_clamp_i32(func_2(abs(0u), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, u_input.a, 1u), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)), 4294967295u)), _wgslsmith_sub_i32(-2147483647i, 1i << (firstLeadingBit(u_input.a) % 32u)), ~78168i), !any(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, ~u_input.a), 10u)]), select(select(vec3<bool>(false, true, all(vec3<bool>(false, false, false))), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), 3999u < u_input.a), vec3<bool>(true, true, true)), vec2<i32>(0i, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(51881i, 17355i)))));
    let var_1 = vec2<f32>(global2[_wgslsmith_index_u32(u_input.a ^ abs(~u_input.a << (0u % 32u)), 19u)], global2[_wgslsmith_index_u32(u_input.a, 19u)]);
    let var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-119f, _wgslsmith_f_op_f32(select(1784f, _wgslsmith_div_f32(869f, var_1.x), var_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 19u)] * global2[_wgslsmith_index_u32(0u, 19u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_div_f32(global2[_wgslsmith_index_u32(0u, 19u)], -383f))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(select(429f, -756f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1006f))))), Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(1u, 19u)], -1000f, 321f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(23981u, 19u)], var_1.x, 1180f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1345f, 1027f, -293f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(38821u, 19u)], global2[_wgslsmith_index_u32(u_input.a, 19u)], -1000f))))), global1[_wgslsmith_index_u32(41339u, 19u)]));
    let var_3 = !(!(u_input.a < (_wgslsmith_sub_u32(0u, u_input.a) << (max(u_input.a, u_input.a) % 32u))));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f - -835f))), 455f, var_1.x, -1000f);
    return Struct_2(_wgslsmith_f_op_vec3_f32(-var_4.xyx), Struct_1(~(-28877i), abs(40692i), !((var_3 && false) && any(vec3<bool>(var_0.c, false, false))), select(var_2.b.b.d, var_0.d, var_2.b.b.d.x), vec2<i32>(18063i, abs(select(var_0.e.x, var_2.b.b.a, var_0.d.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!any(vec2<bool>(any(vec3<bool>(false, false, true)), false)));
    global2 = array<f32, 19>();
    var var_1 = -532i;
    global0 = array<vec4<bool>, 10>();
    var var_2 = func_1();
    global2 = array<f32, 19>();
    global0 = array<vec4<bool>, 10>();
    global2 = array<f32, 19>();
    global2 = array<f32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_mod_u32(1u, u_input.a), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(5811u, 19u)]));
}

