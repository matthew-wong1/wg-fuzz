struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<f32>;

var<private> global2: array<vec3<u32>, 30> = array<vec3<u32>, 30>(vec3<u32>(32676u, 0u, 0u), vec3<u32>(41232u, 19537u, 56961u), vec3<u32>(0u, 1u, 15249u), vec3<u32>(59598u, 4294967295u, 27595u), vec3<u32>(7976u, 0u, 1u), vec3<u32>(7037u, 8747u, 86852u), vec3<u32>(0u, 0u, 48330u), vec3<u32>(6886u, 1u, 1u), vec3<u32>(0u, 50182u, 0u), vec3<u32>(63006u, 1u, 53000u), vec3<u32>(1u, 0u, 0u), vec3<u32>(17163u, 41222u, 4294967295u), vec3<u32>(6452u, 26487u, 10080u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(78942u, 0u, 1u), vec3<u32>(1u, 25168u, 4294967295u), vec3<u32>(0u, 2657u, 1u), vec3<u32>(83543u, 4294967295u, 1u), vec3<u32>(64948u, 7748u, 42327u), vec3<u32>(860u, 15020u, 93324u), vec3<u32>(21189u, 1u, 0u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(29085u, 31615u, 8877u), vec3<u32>(57587u, 17491u, 22616u), vec3<u32>(1128u, 1u, 0u), vec3<u32>(48025u, 35198u, 1u), vec3<u32>(125193u, 29283u, 1u), vec3<u32>(0u, 4294967295u, 12120u), vec3<u32>(0u, 38324u, 11263u));

var<private> global3: Struct_1;

var<private> global4: array<Struct_1, 26>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>) -> vec4<u32> {
    global3 = Struct_1(abs(~firstTrailingBit(_wgslsmith_mod_u32(u_input.a.x, 4294967295u))), global3.b ^ global3.b, global3.c, vec4<f32>(755f, _wgslsmith_f_op_f32(-global3.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3.c.x)) + _wgslsmith_f_op_f32(round(global3.c.x)))), _wgslsmith_f_op_f32(f32(-1f) * -109f)));
    let var_0 = firstTrailingBit(~_wgslsmith_mult_vec2_u32(~(~u_input.a.xz), _wgslsmith_add_vec2_u32(~global3.b.wy, select(vec2<u32>(u_input.a.x, global3.b.x), vec2<u32>(72257u, u_input.d), true))));
    global4 = array<Struct_1, 26>();
    var var_1 = select(!select(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, false), false), true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))), true), vec2<bool>(true, !any(vec3<bool>(true, true, true))), all(select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), any(vec4<bool>(false, true, true, true))), vec3<bool>(all(vec3<bool>(true, false, false)), false, true), vec3<bool>(true, true, true))));
    global1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.c.x, global1.x, _wgslsmith_f_op_f32(-global3.d.x), -1139f)));
    return (_wgslsmith_sub_vec4_u32(min(_wgslsmith_div_vec4_u32(global3.b, global3.b), min(vec4<u32>(4294967295u, 1u, 86434u, 4294967295u), vec4<u32>(53320u, global3.a, u_input.a.x, 4294967295u))), ~max(global3.b, global3.b)) << (abs(select(global3.b ^ vec4<u32>(4294967295u, var_0.x, global3.a, 4294967295u), global3.b, !vec4<bool>(false, var_1.x, false, true))) % vec4<u32>(32u))) ^ abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, _wgslsmith_mult_u32(32782u, 0u), var_0.x, u_input.a.x), abs(vec4<u32>(global3.a, 1u, 821u, 0u)) ^ global3.b, countOneBits(~vec4<u32>(0u, var_0.x, global3.a, var_0.x))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>) -> vec2<bool> {
    var var_0 = arg_1.b.wyx;
    global1 = _wgslsmith_f_op_vec4_f32(-arg_1.c);
    let var_1 = Struct_1(94179u, func_3(_wgslsmith_clamp_vec2_i32(vec2<i32>(-37495i, -23137i), u_input.e.xz, (vec2<i32>(u_input.c, u_input.c) & vec2<i32>(u_input.b, u_input.e.x)) & reverseBits(vec2<i32>(0i, 27854i)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(arg_1.c)))) + vec4<f32>(_wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(global1.x - -1628f))), _wgslsmith_f_op_f32(f32(-1f) * -961f), arg_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(512f - arg_1.c.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.c)));
    var var_2 = global3.d.xx;
    var var_3 = _wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, 1i, 54914i), -u_input.e)), ~(~u_input.e.x) >> (var_1.b.x % 32u)) >= _wgslsmith_clamp_i32(max(-3596i, -_wgslsmith_mod_i32(u_input.c, u_input.c)), -10899i, reverseBits(-72081i));
    return vec2<bool>(any(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true), true)), true);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = select(!vec2<bool>(true, arg_2), select(vec2<bool>(true, any(select(vec2<bool>(false, false), vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, arg_2)))), !select(select(vec2<bool>(false, arg_2), vec2<bool>(true, arg_2), vec2<bool>(arg_2, arg_2)), func_2(global1.x, arg_1, global2[_wgslsmith_index_u32(1u, 30u)]), arg_2), vec2<bool>(!(arg_1.a == 77785u), all(select(vec3<bool>(false, false, arg_2), vec3<bool>(false, arg_2, arg_2), vec3<bool>(arg_2, arg_2, true))))), false);
    return !select(func_2(arg_0.c.x, Struct_1(u_input.d & 38084u, ~arg_0.b, vec4<f32>(global1.x, arg_1.c.x, -1016f, -951f), arg_0.d), ~(vec3<u32>(global3.a, arg_3.a, arg_3.b.x) >> (arg_0.b.zyy % vec3<u32>(32u)))), !vec2<bool>(var_0.x, true), !vec2<bool>(false, all(vec3<bool>(true, var_0.x, false))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec2<bool>) -> StorageBuffer {
    var var_0 = abs(~select(countOneBits(global3.b.zx), ~vec2<u32>(arg_1.b.x, global3.b.x), select(false, all(vec2<bool>(arg_3.x, false)), func_1(arg_1, Struct_1(18270u, vec4<u32>(global3.a, 23064u, 25531u, 54904u), vec4<f32>(global1.x, -167f, global1.x, 3046f), global3.d), true, Struct_1(13670u, global3.b, global3.d, vec4<f32>(arg_1.c.x, global3.d.x, global1.x, 1572f))).x)));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.x, global3.c.x))), _wgslsmith_f_op_vec2_f32(min(global1.zy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.d.x, -1427f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.c.x, arg_0.d.x) + global3.d.zy))))), _wgslsmith_f_op_vec3_f32(max(arg_1.c.yzy, global3.d.zwy)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1094f;
    var var_1 = global3.b.x;
    let var_2 = global3.d;
    let var_3 = _wgslsmith_f_op_vec4_f32(global3.d - global3.c);
    global4 = array<Struct_1, 26>();
    let var_4 = Struct_1(_wgslsmith_mod_u32(4294967295u, ~38028u), ~global3.b, global3.d, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(447f * 906f), _wgslsmith_f_op_f32(-global1.x))), -1006f, global1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(835f)), 1f, _wgslsmith_f_op_f32(global3.d.x * global1.x), var_3.x))));
    let x = u_input.a;
    s_output = func_4(global4[_wgslsmith_index_u32(~_wgslsmith_sub_u32(var_4.a, global3.b.x), 26u)], var_4, select(select(vec2<bool>(true, false), vec2<bool>(true, true), select(true, true, 34654u == u_input.a.x)), !vec2<bool>(true, u_input.e.x >= 30208i), select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), true), func_1(Struct_1(39939u, global3.b, vec4<f32>(global3.c.x, -550f, var_3.x, global1.x), global3.c), global4[_wgslsmith_index_u32(global3.a, 26u)], true, Struct_1(4294967295u, var_4.b, vec4<f32>(1124f, -1964f, -1571f, 1666f), var_3)), all(vec2<bool>(false, true)))), func_2(158f, Struct_1(u_input.d, vec4<u32>(8610u | var_4.a, 0u, max(global3.a, u_input.d), ~var_4.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 1111f, var_3.x, 1201f) * vec4<f32>(global3.c.x, -1514f, -1221f, var_4.d.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-751f, -1210f, var_2.x, var_4.c.x))))), ~var_4.b.zwx));
}

