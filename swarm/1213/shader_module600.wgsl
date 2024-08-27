struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<bool>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: f32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4>;

var<private> global1: array<Struct_1, 2>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = arg_2.a;
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d, 1342f, -1000f, arg_1.d.d)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.d, arg_1.d.d, arg_1.d.d, arg_1.d.d) * vec4<f32>(arg_1.d.d, 825f, arg_2.d, 906f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.d.d, -985f, 245f, arg_2.d))), select(vec4<bool>(arg_1.d.c.x, arg_1.d.c.x, true, false), vec4<bool>(arg_1.d.c.x, true, false, arg_1.d.e), global0[_wgslsmith_index_u32(63631u, 4u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-116f, arg_1.d.d, -447f, 192f))))))), vec4<f32>(562f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.d))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1005f, arg_2.d)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1.d.d, arg_1.d.d), _wgslsmith_f_op_f32(-arg_1.d.d), global0[_wgslsmith_index_u32(4294967295u >> (arg_0.x % 32u), 4u)]))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d))))));
    global1 = array<Struct_1, 2>();
    var var_2 = vec2<i32>(~firstTrailingBit(1i), _wgslsmith_mod_i32(_wgslsmith_add_i32(12546i, ~_wgslsmith_dot_vec3_i32(u_input.b.xyy, vec3<i32>(-2147483647i, arg_1.b, u_input.b.x))), _wgslsmith_add_i32(_wgslsmith_add_i32(~u_input.d, max(11304i, 0i)), firstTrailingBit(-2147483647i))));
    var var_3 = vec4<bool>(any(!vec3<bool>(any(arg_2.c), !arg_2.c.x, true)), !all(!select(arg_2.c.yz, arg_1.d.c.xy, true)), any(!(!(!vec3<bool>(arg_2.c.x, true, true)))), !(!all(select(vec4<bool>(arg_2.e, arg_2.e, false, global0[_wgslsmith_index_u32(arg_2.b.x, 4u)]), vec4<bool>(arg_1.d.e, true, global0[_wgslsmith_index_u32(arg_0.x, 4u)], arg_2.e), true))));
    return abs(~_wgslsmith_mult_vec4_i32(abs(u_input.b), vec4<i32>(arg_2.a, u_input.b.x, -2147483647i, -18441i)) & u_input.b);
}

fn func_2() -> f32 {
    var var_0 = max(u_input.b, _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.d, 19888i, -76586i) ^ vec4<i32>(u_input.b.x, u_input.b.x, 5188i, -49234i), func_3(vec4<u32>(u_input.c, u_input.e.x, 0u, u_input.e.x), Struct_2(53204u, 18375i, u_input.e.wyz, global1[_wgslsmith_index_u32(1u, 2u)]), global1[_wgslsmith_index_u32(67726u, 2u)])), u_input.b) << (~vec4<u32>(u_input.a, ~u_input.a, 0u, u_input.a) % vec4<u32>(32u)));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-497f - -1058f)), select(select(!vec4<bool>(global0[_wgslsmith_index_u32(57034u, 4u)], false, global0[_wgslsmith_index_u32(u_input.c, 4u)], false), vec4<bool>(true, global0[_wgslsmith_index_u32(countOneBits(48968u), 4u)], global0[_wgslsmith_index_u32(0u, 4u)], false), !select(vec4<bool>(false, global0[_wgslsmith_index_u32(11390u, 4u)], false, true), vec4<bool>(global0[_wgslsmith_index_u32(17665u, 4u)], true, false, true), global0[_wgslsmith_index_u32(u_input.e.x, 4u)])), select(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)], false, false), !select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 4u)], global0[_wgslsmith_index_u32(u_input.c, 4u)], true), vec4<bool>(false, false, false, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 4u)], true, true, global0[_wgslsmith_index_u32(2686u, 4u)])), select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 4u)], true, false, false), select(vec4<bool>(global0[_wgslsmith_index_u32(2942u, 4u)], global0[_wgslsmith_index_u32(u_input.e.x, 4u)], global0[_wgslsmith_index_u32(0u, 4u)], false), vec4<bool>(global0[_wgslsmith_index_u32(57857u, 4u)], global0[_wgslsmith_index_u32(u_input.a, 4u)], global0[_wgslsmith_index_u32(u_input.e.x, 4u)], true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 4u)], global0[_wgslsmith_index_u32(31679u, 4u)], global0[_wgslsmith_index_u32(u_input.a, 4u)], global0[_wgslsmith_index_u32(25766u, 4u)])), false)), vec4<bool>(!(var_0.x < -68962i), global0[_wgslsmith_index_u32(u_input.e.x, 4u)], true, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(46126u, u_input.c), 4u)])), 315f, u_input.e);
    let var_2 = !(1f >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1072f - var_1.a))));
    global0 = array<bool, 4>();
    let var_3 = Struct_2(~23861u, var_0.x, var_1.d.yxy, Struct_1(u_input.d, var_1.d.wx ^ firstLeadingBit(~vec2<u32>(0u, var_1.d.x)), var_1.b.xzy, _wgslsmith_f_op_f32(-var_1.c), all(var_1.b.xw)));
    return 2396f;
}

fn func_1() -> StorageBuffer {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), -655f)), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 4u)], true, select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 17877u), vec2<u32>(u_input.e.x, u_input.e.x)), 4u)], all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 4u)], false)), true), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~0u, 32242u), 4u)]), 1000f, vec4<u32>(u_input.a, 0u, firstLeadingBit(u_input.c), select(23235u, 61175u, _wgslsmith_sub_u32(4294967295u, 30567u) <= (u_input.c | 795u))));
    var var_1 = global1[_wgslsmith_index_u32(4294967295u, 2u)];
    var var_2 = Struct_2(var_1.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.b.x, 1i), abs(_wgslsmith_mod_vec2_i32(-u_input.b.wy, vec2<i32>(var_1.a, u_input.b.x)))), min(~u_input.e.wzy, _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.e.ywz, _wgslsmith_div_vec3_u32(u_input.e.wxz, vec3<u32>(1u, var_1.b.x, var_1.b.x)), vec3<u32>(var_1.b.x, u_input.e.x, 1u)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.b.x, 4294967295u, 4294967295u), countOneBits(var_0.d.yzz)))), global1[_wgslsmith_index_u32(0u, 2u)]);
    let var_3 = var_2.d;
    var_1 = var_2.d;
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, -1729f, var_0.a, var_3.d))))))), vec3<i32>(_wgslsmith_clamp_i32(-6590i, _wgslsmith_mult_i32(0i, 16292i), ~(-1i ^ u_input.b.x)), abs(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-56871i, 1i, var_1.a), ~var_2.d.a)), _wgslsmith_add_i32(-9908i, var_3.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    global1 = array<Struct_1, 2>();
    var var_1 = vec2<i32>(1i, -(abs(1i) >> (u_input.c % 32u)));
    let var_2 = _wgslsmith_dot_vec4_i32(-reverseBits(_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.b.x, var_1.x, -10053i, 11914i), ~u_input.b)), vec4<i32>(-1758i, countOneBits(-firstTrailingBit(42174i)), u_input.d, -5451i));
    global0 = array<bool, 4>();
    let x = u_input.a;
    s_output = func_1();
}

