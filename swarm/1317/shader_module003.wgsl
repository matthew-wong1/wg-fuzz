struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: bool,
    d: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: vec4<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6> = array<bool, 6>(false, false, false, true, false, true);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_5) -> vec4<u32> {
    var var_0 = !select(arg_0.b.wxx, !vec3<bool>(true, global0[_wgslsmith_index_u32(~arg_0.c.a, 6u)], any(vec2<bool>(global0[_wgslsmith_index_u32(arg_0.c.a, 6u)], false))), vec3<bool>(select(4294967295u != arg_0.c.a, false, all(vec4<bool>(false, true, global0[_wgslsmith_index_u32(83642u, 6u)], true))), true, select(true, true, !global0[_wgslsmith_index_u32(arg_0.c.a, 6u)])));
    return vec4<u32>(countOneBits(select(arg_0.c.a, arg_0.c.a, firstLeadingBit(arg_0.c.a) == ~9655u)), abs(firstLeadingBit(~arg_0.c.a)), 4294967295u, ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_0.c.a, arg_0.c.a, arg_0.c.a)), vec3<u32>(3743u, 53735u, 14986u)));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>) -> Struct_5 {
    var var_0 = ~(i32(-1i) * -1i);
    var var_1 = _wgslsmith_add_vec4_u32(func_3(Struct_5(_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_0, 30888i, u_input.a.x), _wgslsmith_add_vec3_i32(vec3<i32>(0i, u_input.a.x, arg_0), vec3<i32>(16373i, u_input.a.x, -19568i))), select(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 6u)], false, false, global0[_wgslsmith_index_u32(4294967295u, 6u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(28637u, 6u)], false, global0[_wgslsmith_index_u32(0u, 6u)]), !vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(0u, 6u)])), Struct_3(1u))), ~select(vec4<u32>(0u, ~1u, _wgslsmith_add_u32(0u, 1u), 8135u), select(vec4<u32>(24984u, 4294967295u, 4294967295u, 1u), vec4<u32>(60304u, 4294967295u, 99739u, 4294967295u), vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(34969u, 6u)], false)) | ~vec4<u32>(39314u, 0u, 31046u, 43952u), vec4<bool>(!global0[_wgslsmith_index_u32(13899u, 6u)], !global0[_wgslsmith_index_u32(10797u, 6u)], arg_1.x == arg_1.x, select(true, global0[_wgslsmith_index_u32(13109u, 6u)], false))));
    var_1 = ~(~vec4<u32>(11672u, ~var_1.x, ~(~18154u), ~firstLeadingBit(var_1.x)));
    let var_2 = Struct_3(~var_1.x);
    var var_3 = Struct_4(Struct_2(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(552f * _wgslsmith_f_op_f32(arg_1.x - arg_1.x))), ~(var_2.a >> (var_2.a % 32u)), Struct_1(u_input.a.x | 34937i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1859f))), -2147483647i)), var_2, arg_1.x >= arg_1.x, Struct_1(_wgslsmith_mod_i32(u_input.a.x, i32(-1i) * -arg_0), arg_1.x, i32(-1i) * -2147483647i));
    return Struct_5(-var_3.d.c, select(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(var_3.a.b, 6u)], true, global0[_wgslsmith_index_u32(4294967295u, 6u)])), vec4<bool>(global0[_wgslsmith_index_u32(1u, 6u)] | false, true, var_3.c, true), vec4<bool>(true, true, true, true)), Struct_3(12950u));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_5) -> vec2<bool> {
    let var_0 = arg_1;
    let var_1 = -2147483647i;
    var var_2 = Struct_3(func_3(arg_1).x);
    var_2 = Struct_3(firstLeadingBit(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(22041u, 0u, 19490u), vec3<u32>(var_0.c.a, 13226u, var_0.c.a)), vec3<u32>(var_0.c.a, 1u, var_2.a))));
    let var_3 = vec4<u32>(51457u ^ (arg_1.c.a ^ reverseBits(68736u)), var_2.a, _wgslsmith_dot_vec2_u32(vec2<u32>(~var_0.c.a, ~1u), firstLeadingBit(vec2<u32>(var_0.c.a, 4294967295u))), min(func_3(Struct_5(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a, -1i), u_input.a), vec4<bool>(var_0.b.x, var_0.b.x, false, arg_1.b.x), func_2(arg_1.a, vec2<f32>(-249f, arg_0.x)).c)).x, 59262u));
    return !(!arg_1.b.wz);
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    global0 = array<bool, 6>();
    let var_0 = select(vec2<bool>(!global0[_wgslsmith_index_u32(firstTrailingBit(0u), 6u)], !any(!vec4<bool>(global0[_wgslsmith_index_u32(24451u, 6u)], true, global0[_wgslsmith_index_u32(37407u, 6u)], false))), select(vec2<bool>(!(-341f != arg_0.x), global0[_wgslsmith_index_u32(1u, 6u)] | global0[_wgslsmith_index_u32(~5646u, 6u)]), !func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 1259f, arg_0.x)), func_2(81556i, arg_0)), !select(!vec2<bool>(global0[_wgslsmith_index_u32(10335u, 6u)], global0[_wgslsmith_index_u32(27853u, 6u)]), vec2<bool>(global0[_wgslsmith_index_u32(40755u, 6u)], global0[_wgslsmith_index_u32(1u, 6u)]), func_4(vec3<f32>(arg_0.x, arg_0.x, 304f), Struct_5(u_input.a.x, vec4<bool>(false, false, global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(21966u, 6u)]), Struct_3(18113u))))), false);
    global0 = array<bool, 6>();
    global0 = array<bool, 6>();
    global0 = array<bool, 6>();
    return ~_wgslsmith_add_u32(1u, reverseBits(26556u)) & (48257u & select(~1u, firstTrailingBit(~78635u), any(select(vec3<bool>(var_0.x, true, global0[_wgslsmith_index_u32(1u, 6u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(67387u, 6u)], var_0.x), var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(abs(1u), abs(~firstTrailingBit(0u)), 6013u, _wgslsmith_clamp_u32(1u, min(reverseBits(27244u), 37992u), 9461u));
    var var_1 = 66384u & _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(1u, 14743u), ~var_0.x) ^ var_0.x, (func_1(vec2<f32>(-594f, -1391f)) << (func_3(Struct_5(-2098i, vec4<bool>(global0[_wgslsmith_index_u32(15542u, 6u)], global0[_wgslsmith_index_u32(var_0.x, 6u)], true, global0[_wgslsmith_index_u32(23414u, 6u)]), Struct_3(27541u))).x % 32u)) << (4294967295u % 32u));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1714f, -230f) - vec2<f32>(-883f, -1000f)), vec2<f32>(-266f, 1469f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1583f, -1051f)))))) - vec2<f32>(-115f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-196f + 1637f)))));
    let var_3 = vec2<bool>(any(!vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 6u)], false)) && !any(!vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 6u)], true, false)), true);
    var var_4 = Struct_1(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, ~u_input.a.x, u_input.a.x ^ u_input.a.x, -35142i), countOneBits(vec4<i32>(1i, 64416i, -2147483647i, u_input.a.x))), 811f, ~(-48884i));
    var var_5 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b);
}

