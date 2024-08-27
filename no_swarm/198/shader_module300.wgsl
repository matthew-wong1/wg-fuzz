struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

var<private> global1: array<i32, 2> = array<i32, 2>(14635i, 31052i);

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(vec2<u32>(4294967295u, 1u));

var<private> global4: array<vec2<u32>, 3> = array<vec2<u32>, 3>(vec2<u32>(48471u, 23425u), vec2<u32>(0u, 1u), vec2<u32>(1u, 4294967295u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool) -> vec2<u32> {
    let var_0 = global0[_wgslsmith_index_u32(global2.a.x, 19u)];
    let var_1 = vec3<u32>(_wgslsmith_sub_u32(global3.a.x, var_0.a.x), ~var_0.a.x, max(~_wgslsmith_clamp_u32(55975u, _wgslsmith_mult_u32(global3.a.x, 4294967295u), 1u), global3.a.x));
    var var_2 = Struct_1(var_1.zx);
    global0 = array<Struct_1, 19>();
    var var_3 = 802f;
    return abs(reverseBits(vec2<u32>(countOneBits(max(1u, var_2.a.x)), ~(~var_0.a.x))));
}

fn func_2() -> vec2<f32> {
    let var_0 = -1929f;
    var var_1 = global0[_wgslsmith_index_u32(~(_wgslsmith_div_u32(1u, global3.a.x & 1u) & 1u), 19u)];
    var var_2 = global0[_wgslsmith_index_u32(global3.a.x << ((global3.a.x & ~(global2.a.x ^ _wgslsmith_add_u32(global3.a.x, global2.a.x))) % 32u), 19u)];
    let var_3 = vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.b, -_wgslsmith_clamp_vec4_i32(firstTrailingBit(u_input.b), -u_input.b, _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 5967i, -2627i, u_input.c), u_input.b))), u_input.c, -global1[_wgslsmith_index_u32(71882u, 2u)], i32(-1i) * -1i);
    var_2 = Struct_1(func_3(all(vec2<bool>(true, true))));
    return _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-275f, _wgslsmith_f_op_f32(abs(-861f))), vec2<f32>(1439f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(908f, var_0)))))), !(!any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: u32, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(arg_1.x, arg_1.x)))), 107f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-287f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(arg_1.x)))))), 985f);
    var var_1 = 109232u;
    let var_2 = global0[_wgslsmith_index_u32(global2.a.x, 19u)];
    let var_3 = vec2<u32>(62236u, reverseBits(82287u) << (0u % 32u));
    var var_4 = global0[_wgslsmith_index_u32(~1u, 19u)];
    return global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(global2.a.x, 1u), ~_wgslsmith_sub_u32(arg_2, 0u)), 19u)];
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1) -> f32 {
    global2 = arg_1;
    let var_0 = vec4<i32>(~reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, global1[_wgslsmith_index_u32(global3.a.x, 2u)], -34547i, u_input.e), u_input.b)) ^ u_input.e, global1[_wgslsmith_index_u32(1u, 2u)], ((_wgslsmith_dot_vec3_i32(u_input.b.wzx, u_input.b.yxx) ^ -15886i) << (6589u % 32u)) ^ 1i, -23110i);
    let var_1 = arg_1;
    global0 = array<Struct_1, 19>();
    global1 = array<i32, 2>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1622f) - -674f) * -1441f);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(~(~0u), ~(~arg_1.a.x)), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(arg_0.xz, max(vec2<u32>(arg_1.a.x, 70845u), global2.a)), ~global3.a)));
    global1 = array<i32, 2>();
    global1 = array<i32, 2>();
    global4 = array<vec2<u32>, 3>();
    var var_1 = _wgslsmith_add_u32(4294967295u, arg_1.a.x);
    return _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1877f, -2768f, -1001f) - vec3<f32>(324f, 296f, 1430f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(423f, -166f, 320f))), true)))), func_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1132f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-447f + 1112f), -558f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-211f, 1000f), vec2<f32>(115f, 643f))), _wgslsmith_f_op_vec2_f32(func_2()))) + vec2<f32>(-1965f, -1098f)), select(arg_1.a.x, _wgslsmith_mod_u32(firstLeadingBit(arg_0.x), global3.a.x), -global1[_wgslsmith_index_u32(var_0.a.x, 2u)] != global1[_wgslsmith_index_u32(global2.a.x, 2u)]), vec3<bool>(true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_1(~(~firstTrailingBit(~vec3<u32>(89308u, 1u, 1u))), Struct_1(vec2<u32>(1u >> ((4294967295u >> (global3.a.x % 32u)) % 32u), global2.a.x))));
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(27583u, ~global3.a.x), vec2<u32>(0u, ~34713u), all(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false))), global3.a), 19u)];
    var var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.b.xwx, ~_wgslsmith_sub_vec3_i32(vec3<i32>(-24630i, u_input.b.x, u_input.a), u_input.b.xyy)), select(~(-1i), u_input.d, true)), vec2<i32>(1i, u_input.a));
    var var_2 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(197f, 1339f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(994f, 288f))))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -734f)), -245f))), func_4(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(396f)), -794f), _wgslsmith_f_op_f32(func_5(vec3<f32>(1f, 1f, 1f), func_4(vec2<f32>(993f, 1581f), vec2<f32>(-476f, -728f), global3.a.x, vec3<bool>(true, false, false))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(1553f)), -1771f) * vec2<f32>(-1085f, -1565f)), _wgslsmith_sub_u32(~41144u, 39218u), vec3<bool>(false, true, true)).a.x, vec3<bool>(!(true == any(vec4<bool>(false, false, true, false))), false, true));
    var var_3 = vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-u_input.b.yx, -vec2<i32>(1i, -14726i) << (_wgslsmith_add_vec2_u32(vec2<u32>(10921u, var_2.a.x), vec2<u32>(global3.a.x, global2.a.x)) % vec2<u32>(32u))), global1[_wgslsmith_index_u32(17355u, 2u)] >> (global3.a.x % 32u)), reverseBits(var_1.x & -74066i), abs(~(33247i >> (func_4(vec2<f32>(210f, 1766f), vec2<f32>(119f, 538f), var_2.a.x, vec3<bool>(true, false, false)).a.x % 32u))), _wgslsmith_mult_i32(1i >> (1u % 32u), -countOneBits(_wgslsmith_sub_i32(0i, 0i))));
    var_3 = u_input.b;
    var var_4 = vec4<u32>(327u ^ _wgslsmith_mult_u32(_wgslsmith_sub_u32(global2.a.x, reverseBits(9380u)), _wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global3.a.x, var_2.a.x, 4294967295u), vec4<u32>(global2.a.x, 43256u, 9237u, 4294967295u)))), global3.a.x, 4294967295u, ~abs(0u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~(~max(vec4<u32>(1u, 109959u, 1u, var_2.a.x), vec4<u32>(var_2.a.x, var_4.x, var_4.x, var_4.x))), vec4<u32>(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_2.a.x), var_4.xz)), global3.a.x, ~abs(var_2.a.x), 21062u)), -441f, vec2<u32>(10508u, var_4.x), 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1106f)), _wgslsmith_f_op_f32(max(-905f, -676f))))));
}

