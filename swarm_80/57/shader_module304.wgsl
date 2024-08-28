struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 19> = array<vec2<bool>, 19>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true));

var<private> global1: array<vec3<u32>, 30> = array<vec3<u32>, 30>(vec3<u32>(0u, 41627u, 96536u), vec3<u32>(1u, 4294967295u, 27237u), vec3<u32>(24752u, 1u, 49863u), vec3<u32>(8593u, 12754u, 11211u), vec3<u32>(40767u, 1u, 4294967295u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(34507u, 73432u, 33051u), vec3<u32>(4294967295u, 4294967295u, 45674u), vec3<u32>(13509u, 29264u, 1u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(13884u, 37061u, 84977u), vec3<u32>(0u, 10329u, 1u), vec3<u32>(28064u, 4294967295u, 1u), vec3<u32>(102968u, 1404u, 6531u), vec3<u32>(4294967295u, 26569u, 35096u), vec3<u32>(8236u, 36715u, 61936u), vec3<u32>(3716u, 1u, 10963u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(15403u, 1u, 55843u), vec3<u32>(1u, 40125u, 1u), vec3<u32>(4294967295u, 18388u, 26373u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(39445u, 78347u, 24909u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(6636u, 1u, 85039u), vec3<u32>(1u, 66914u, 1u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(0u, 34442u, 0u), vec3<u32>(1u, 0u, 28985u), vec3<u32>(36077u, 70281u, 0u));

var<private> global2: Struct_1 = Struct_1(i32(-2147483648), vec4<bool>(false, false, true, true), false);

var<private> global3: i32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    global3 = ~firstTrailingBit(global2.a);
    let var_0 = Struct_1(0i, select(select(select(select(arg_0.b, arg_0.b, global2.b), global2.b, any(vec2<bool>(true, false))), select(!vec4<bool>(true, global2.b.x, true, arg_0.c), vec4<bool>(true, true, true, false), global2.b.x), vec4<bool>(true, all(global0[_wgslsmith_index_u32(19766u, 19u)]), all(vec4<bool>(false, arg_0.c, false, arg_0.c)), true)), global2.b, !any(global2.b.xzw)), true);
    let var_1 = vec2<f32>(-414f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2052f - 1026f) * _wgslsmith_f_op_f32(f32(-1f) * -1003f))))));
    let var_2 = all(var_0.b.wyx);
    global2 = var_0;
    return select(var_0.b.zw, var_0.b.zz, !(!(!arg_0.b.yw)));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> u32 {
    var var_0 = Struct_2(!select(arg_2.c.b.wy, select(!global0[_wgslsmith_index_u32(86353u, 19u)], !global0[_wgslsmith_index_u32(arg_1, 19u)], -6949i > arg_2.d.a), global2.b.xw), global2.a, arg_2.c, arg_0.d);
    var var_1 = var_0.d;
    let var_2 = !(!vec3<bool>(!global2.b.x, all(arg_0.d.b), all(!arg_2.c.b.xz)));
    return abs(76245u);
}

fn func_2() -> bool {
    global3 = min(29444i, ~global2.a);
    var var_0 = vec4<u32>(u_input.c.x, u_input.c.x, ~(~u_input.a.x), func_4(Struct_2(!(!global0[_wgslsmith_index_u32(u_input.d.x, 19u)]), min(-global2.a, global2.a >> (28854u % 32u)), Struct_1(1i, select(global2.b, global2.b, global2.b.x), global2.b.x), Struct_1(abs(global2.a), global2.b, false)), _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(19984u, u_input.a.x, 26853u), global1[_wgslsmith_index_u32(u_input.b.x, 30u)]), 1012u), ~_wgslsmith_mult_u32(u_input.d.x, 4294967295u)), Struct_2(select(select(vec2<bool>(global2.b.x, false), global2.b.yx, vec2<bool>(true, global2.c)), func_3(Struct_1(-1i, global2.b, global2.b.x)), vec2<bool>(true, true)), _wgslsmith_mod_i32(global2.a, ~(-2147483647i)), Struct_1(_wgslsmith_mult_i32(global2.a, -86177i), vec4<bool>(true, true, global2.c, true), any(global2.b)), Struct_1(1i, vec4<bool>(global2.c, true, global2.b.x, global2.b.x), global2.b.x))));
    global1 = array<vec3<u32>, 30>();
    var var_1 = Struct_1(~_wgslsmith_dot_vec2_i32(vec2<i32>(min(global2.a, -2147483647i), firstTrailingBit(global2.a)), -_wgslsmith_add_vec2_i32(vec2<i32>(33680i, 2147483647i), vec2<i32>(global2.a, 13424i))), select(select(select(global2.b, !vec4<bool>(true, true, false, global2.c), vec4<bool>(false, false, global2.c, global2.b.x)), select(global2.b, select(global2.b, global2.b, global2.c), all(vec2<bool>(false, true))), func_3(Struct_1(global2.a, vec4<bool>(false, true, true, false), global2.b.x)).x), global2.b, select(select(!vec4<bool>(global2.b.x, global2.c, global2.b.x, global2.c), select(global2.b, vec4<bool>(true, global2.b.x, false, global2.b.x), false), select(true, false, global2.c)), global2.b, !global2.b)), any(vec3<bool>(global2.c, ~1u > var_0.x, !(global2.b.x || false))));
    var_1 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(-select(vec4<i32>(1i, 6601i, var_1.a, global2.a), vec4<i32>(-13702i, global2.a, -2315i, var_1.a), global2.b.x), vec4<i32>(reverseBits(-26242i), global2.a, -1i, _wgslsmith_mod_i32(var_1.a, global2.a))), max(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.a, 0i, 18221i, global2.a), vec4<i32>(global2.a, var_1.a, global2.a, var_1.a))), max(_wgslsmith_mod_vec4_i32(vec4<i32>(-36305i, 0i, -2147483647i, var_1.a), vec4<i32>(var_1.a, global2.a, var_1.a, global2.a)), vec4<i32>(-6200i, var_1.a, global2.a, global2.a)))), vec4<bool>(!(!all(global2.b.zy)), any(vec2<bool>(false, global2.b.x)), true, false), all(vec3<bool>(!all(vec3<bool>(var_1.b.x, global2.c, var_1.b.x)), -445f != _wgslsmith_f_op_f32(floor(1000f)), var_0.x < u_input.d.x)));
    return (-countOneBits(reverseBits(global2.a)) >= abs(~global2.a)) | !global2.b.x;
}

fn func_1(arg_0: i32, arg_1: vec4<bool>) -> vec2<bool> {
    global0 = array<vec2<bool>, 19>();
    var var_0 = Struct_2(vec2<bool>(func_2(), true), -select(~_wgslsmith_mod_i32(global2.a, global2.a), -(~0i), !arg_1.x), Struct_1(~_wgslsmith_dot_vec3_i32(vec3<i32>(global2.a, arg_0, arg_0), vec3<i32>(arg_0, global2.a, arg_0)) ^ -1i, vec4<bool>(_wgslsmith_f_op_f32(trunc(1921f)) <= -781f, 42851u >= u_input.b.x, func_2(), true), arg_1.x), Struct_1(_wgslsmith_mult_i32(-1i, -30957i), vec4<bool>(false, all(global2.b.zx), select(true, func_3(Struct_1(arg_0, global2.b, false)).x, select(arg_1.x, arg_1.x, true)), all(global2.b.zyw)), arg_1.x));
    var var_1 = Struct_2(arg_1.yw, -15458i, Struct_1(arg_0, global2.b, global2.c), var_0.d);
    var var_2 = 278f;
    var var_3 = !var_1.d.b.wwx;
    return global0[_wgslsmith_index_u32(countOneBits(u_input.c.x), 19u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-955f, 437f))))))) - vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1415f, 1000f)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-930f, 643f), vec2<f32>(544f, -352f))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1500f, -1208f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1360f, -659f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1067f, -718f))), global2.b.x))));
    let var_1 = Struct_2(func_1(-2147483647i, !global2.b), _wgslsmith_dot_vec2_i32(vec2<i32>(global2.a, global2.a) | _wgslsmith_add_vec2_i32(max(vec2<i32>(global2.a, -20796i), vec2<i32>(0i, 68457i)), vec2<i32>(-13189i, global2.a)), -_wgslsmith_sub_vec2_i32(vec2<i32>(global2.a, 0i) << (u_input.c.zz % vec2<u32>(32u)), vec2<i32>(global2.a, global2.a))), Struct_1(global2.a, global2.b, true), Struct_1(_wgslsmith_div_i32(-55383i, -1i) | global2.a, vec4<bool>(~u_input.c.x >= _wgslsmith_sub_u32(u_input.b.x, u_input.d.x), 2147483647i != max(global2.a, global2.a), any(!global2.b.zyy), true), func_1(~max(global2.a, global2.a), global2.b).x));
    global1 = array<vec3<u32>, 30>();
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -484f);
    let var_3 = Struct_1(global2.a, vec4<bool>(all(vec4<bool>(true, false, var_1.c.c, true)) || (min(25080u, 1u) != _wgslsmith_sub_u32(u_input.c.x, u_input.d.x)), true, global2.c, !(!(!var_1.a.x))), true);
    var var_4 = reverseBits(_wgslsmith_dot_vec3_i32(firstLeadingBit(reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(global2.a, var_3.a, global2.a), vec3<i32>(28502i, var_1.b, var_1.b)))), -vec3<i32>(-19623i, _wgslsmith_sub_i32(var_1.c.a, var_1.b), ~global2.a)));
    var var_5 = 196f;
    let x = u_input.a;
    s_output = StorageBuffer(~(-vec4<i32>(global2.a, var_1.d.a, -30100i, abs(42705i))), 87368u);
}

