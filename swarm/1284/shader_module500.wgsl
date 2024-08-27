struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: u32,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec2<i32>, 23>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: u32, arg_3: vec3<i32>) -> vec3<bool> {
    var var_0 = 1i >> (arg_2 % 32u);
    var var_1 = vec2<bool>(all(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), true))), select(_wgslsmith_f_op_f32(-global0.x) == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-230f)), global0.x)), all(vec2<bool>(true, false)), any(!select(vec2<bool>(true, true), vec2<bool>(true, false), false))));
    let var_2 = vec4<bool>(all(!(!select(vec2<bool>(false, false), vec2<bool>(var_1.x, var_1.x), var_1.x))), true, -194f > _wgslsmith_f_op_f32(-global0.x), var_1.x);
    var var_3 = Struct_1(var_2.x, ~(~(arg_0.wxx << (countOneBits(arg_0.zxy) % vec3<u32>(32u)))), _wgslsmith_dot_vec3_u32(select(~(vec3<u32>(4294967295u, 11294u, u_input.a.x) ^ u_input.a.yzw), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2, 4294967295u, 0u), ~arg_0.www, ~u_input.a.yyx), var_2.wyx), reverseBits(_wgslsmith_mod_vec3_u32(~arg_0.zwx, _wgslsmith_mod_vec3_u32(u_input.a.ywx, vec3<u32>(u_input.b, 0u, arg_2))))), select(!var_2.zwx, !var_2.zzx, vec3<bool>(u_input.b > 1u, !var_1.x, _wgslsmith_dot_vec3_u32(u_input.a.xww, vec3<u32>(arg_0.x, 4294967295u, u_input.b)) > _wgslsmith_mult_u32(0u, u_input.a.x))), arg_3);
    var_1 = !select(!vec2<bool>(var_1.x, all(vec3<bool>(var_2.x, true, false))), var_3.d.xz, false);
    return !vec3<bool>(!var_1.x, false, any(select(var_2.yy, vec2<bool>(var_2.x, var_3.d.x), var_2.yz)));
}

fn func_2(arg_0: bool, arg_1: f32) -> vec3<bool> {
    var var_0 = !select(vec3<bool>(arg_0, any(!vec4<bool>(true, arg_0, false, false)), arg_0 | true), !(!(!vec3<bool>(arg_0, false, arg_0))), select(vec3<bool>(true, any(vec4<bool>(arg_0, false, arg_0, arg_0)), !arg_0), select(vec3<bool>(arg_0, true, true), !vec3<bool>(true, arg_0, true), false | arg_0), func_3(~u_input.a, 1i, _wgslsmith_add_u32(u_input.a.x, 0u), vec3<i32>(78331i, 3513i, 1i))));
    var var_1 = Struct_1(false, vec3<u32>(u_input.b, _wgslsmith_clamp_u32(50601u, max(0u, u_input.b), 2727u) | 0u, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(~u_input.b, u_input.a.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 4294967295u, 1u, 0u), vec4<u32>(4294967295u, 4294967295u, u_input.a.x, u_input.b) & vec4<u32>(u_input.a.x, 0u, 4294967295u, u_input.a.x)), u_input.a.x, u_input.b), firstTrailingBit(select(u_input.a, u_input.a, false)) | (u_input.a ^ _wgslsmith_mod_vec4_u32(u_input.a, u_input.a))), !(!func_3(u_input.a, -10160i, _wgslsmith_div_u32(12820u, u_input.b), vec3<i32>(2147483647i, -1i, 6282i))), reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_div_i32(1i, -1809i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2147483647i, 8978i), vec3<i32>(-9776i, 18407i, -40636i)), i32(-1i) * -5019i), vec3<i32>(1i, 0i, 2147483647i >> (u_input.b % 32u)))));
    var var_2 = Struct_1(var_0.x, ~vec3<u32>(abs(15132u), ~4294967295u, 1u), ~_wgslsmith_div_u32(u_input.b, firstLeadingBit(var_1.c)), !vec3<bool>(!(u_input.b > 1u), arg_0, true), -_wgslsmith_clamp_vec3_i32(vec3<i32>(~var_1.e.x, _wgslsmith_dot_vec2_i32(var_1.e.zx, global1[_wgslsmith_index_u32(74880u, 23u)]), var_1.e.x), ~(-var_1.e), abs(~vec3<i32>(-5631i, var_1.e.x, var_1.e.x))));
    var var_3 = Struct_1(true, ~var_1.b, ~(~(~abs(50081u))), func_3(firstTrailingBit(vec4<u32>(var_2.c, firstLeadingBit(66911u), u_input.b, min(1u, var_2.c))), var_1.e.x, 4294967295u, vec3<i32>(var_2.e.x, _wgslsmith_mod_i32(var_2.e.x & var_2.e.x, 0i), var_1.e.x)), select(-_wgslsmith_mod_vec3_i32(~var_2.e, ~vec3<i32>(-30769i, var_1.e.x, -18805i)), var_2.e, var_1.e.x >= ~var_2.e.x));
    let var_4 = 52360u >> (0u % 32u);
    return select(!(!(!var_2.d)), vec3<bool>(!var_0.x, any(!(!vec4<bool>(true, false, var_3.d.x, true))), true), all(select(!(!vec2<bool>(var_3.a, arg_0)), select(select(vec2<bool>(arg_0, var_0.x), var_0.yz, var_0.x), vec2<bool>(true, true), !var_1.a), select(select(var_1.d.zy, vec2<bool>(var_2.a, var_0.x), false), var_3.d.xx, !vec2<bool>(var_2.d.x, var_0.x)))));
}

fn func_1(arg_0: bool, arg_1: vec3<i32>) -> vec2<u32> {
    var var_0 = Struct_1(!(~_wgslsmith_mult_u32(u_input.a.x, 41581u) > ~0u), ~(max(vec3<u32>(40458u, 0u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(48857u, u_input.b, 0u), vec3<u32>(u_input.b, u_input.a.x, u_input.a.x))) << (vec3<u32>(u_input.a.x, 4294967295u, 31264u) % vec3<u32>(32u))), 0u, select(vec3<bool>(!arg_0, arg_0, true), vec3<bool>(all(!vec3<bool>(false, arg_0, arg_0)), true, 14661u >= (u_input.b ^ 4294967295u)), func_2(any(!vec3<bool>(true, arg_0, arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1471f) + 459f))), _wgslsmith_add_vec3_i32(~arg_1, firstLeadingBit(firstTrailingBit(~arg_1))));
    var var_1 = false;
    let var_2 = Struct_1(all(func_3(u_input.a, arg_1.x, u_input.b, abs(vec3<i32>(-6511i, arg_1.x, -44406i)) >> (~var_0.b % vec3<u32>(32u)))), u_input.a.zzx ^ reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(35654u, var_0.b.x, var_0.c), vec3<u32>(u_input.a.x, u_input.a.x, var_0.b.x))), 4294967295u, !vec3<bool>(all(vec3<bool>(false, var_0.d.x, false)), false, true), -vec3<i32>(var_0.e.x, ~(i32(-1i) * -33419i), 0i));
    let var_3 = all(!select(vec4<bool>(arg_1.x < var_2.e.x, true, var_0.d.x || false, !var_0.d.x), select(!vec4<bool>(arg_0, false, var_0.a, var_0.a), select(vec4<bool>(arg_0, true, var_2.d.x, var_0.d.x), vec4<bool>(true, var_2.d.x, arg_0, false), vec4<bool>(var_2.d.x, var_2.a, true, var_2.d.x)), any(vec4<bool>(true, var_2.a, false, arg_0))), true));
    let var_4 = Struct_1(arg_0, ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, var_0.c, 14589u) & var_0.b, _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 45768u, 8206u), u_input.a.wxw), vec3<u32>(var_0.b.x, 0u, 45233u))), var_0.c, var_2.d, abs(vec3<i32>(abs(60706i), -36935i, abs(-1i))));
    return vec2<u32>(~0u, ~var_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1219f)), _wgslsmith_f_op_f32(global0.x - global0.x)))))));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(-var_0))), 593f, _wgslsmith_f_op_f32(-var_0)));
    let var_1 = u_input.a;
    let var_2 = Struct_1(all(select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), false))) || false, var_1.zwy, u_input.b >> (u_input.a.x % 32u), select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), true), vec3<bool>(false, _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(u_input.b, 23u)], vec2<i32>(-2147483647i, 7562i)) < 0i, select(true, true, true)), (_wgslsmith_sub_i32(-1i, -20917i) << (min(4294967295u, var_1.x) % 32u)) >= 1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-8013i, -31981i, -36088i), vec3<i32>(i32(-1i) * -20877i, -13279i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, -1i, -35927i), vec4<i32>(0i, -2147483647i, -28524i, -30303i) << (var_1 % vec4<u32>(32u)))), vec3<i32>(-90383i, 1i, i32(-1i) * -2147483647i)));
    global1 = array<vec2<i32>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(select((_wgslsmith_mult_vec2_u32(vec2<u32>(var_2.c, 37838u), var_2.b.yx) | func_1(false, vec3<i32>(var_2.e.x, 11664i, -1i))) | _wgslsmith_add_vec2_u32(var_1.zw, _wgslsmith_add_vec2_u32(var_2.b.xy, vec2<u32>(26558u, 0u))), ~firstLeadingBit(~u_input.a.xx), true), var_1);
}

