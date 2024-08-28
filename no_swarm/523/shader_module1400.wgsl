struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: array<vec4<u32>, 18> = array<vec4<u32>, 18>(vec4<u32>(1u, 34094u, 62911u, 4294967295u), vec4<u32>(4546u, 2209u, 16924u, 30365u), vec4<u32>(42092u, 4294967295u, 19754u, 1u), vec4<u32>(0u, 61357u, 4294967295u, 58248u), vec4<u32>(139341u, 4294967295u, 0u, 26814u), vec4<u32>(4294967295u, 1u, 38983u, 4294967295u), vec4<u32>(8454u, 4294967295u, 4294967295u, 29559u), vec4<u32>(1u, 4294967295u, 1u, 48504u), vec4<u32>(15569u, 0u, 37060u, 825u), vec4<u32>(0u, 0u, 0u, 4294967295u), vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<u32>(16386u, 4294967295u, 31130u, 12454u), vec4<u32>(4294967295u, 32097u, 106250u, 0u), vec4<u32>(33480u, 1u, 20311u, 1u), vec4<u32>(67629u, 10442u, 0u, 48468u), vec4<u32>(0u, 4294967295u, 18375u, 1155u), vec4<u32>(0u, 1u, 63655u, 0u), vec4<u32>(30020u, 4294967295u, 0u, 38397u));

var<private> global2: u32 = 16506u;

var<private> global3: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: vec3<u32>) -> vec3<bool> {
    let var_0 = vec2<f32>(-308f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-532f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1282f, 218f, global3.x)) - _wgslsmith_f_op_f32(1313f - 2506f))))));
    global0 = array<Struct_1, 24>();
    global2 = _wgslsmith_clamp_u32(1u, select(abs(arg_0), arg_1.x, global3.x), firstTrailingBit(_wgslsmith_clamp_u32(~17741u, 65096u, arg_1.x)));
    global2 = _wgslsmith_dot_vec2_u32(u_input.b.yx, u_input.a);
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, 1f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(-967f - 167f), true))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2083f * _wgslsmith_f_op_f32(max(-289f, 480f))), _wgslsmith_f_op_f32(step(-1103f, var_0.x))))));
    return !select(!(!(!vec3<bool>(true, true, global3.x))), vec3<bool>(true, true, any(select(vec2<bool>(global3.x, global3.x), global3.yz, global3.yy))), vec3<bool>(!global3.x & true, true, true));
}

fn func_2(arg_0: vec4<u32>) -> bool {
    global2 = arg_0.x;
    var var_0 = arg_0.x ^ abs(_wgslsmith_mod_u32(~4294967295u, _wgslsmith_mod_u32(~arg_0.x, ~9666u)));
    let var_1 = ~vec2<i32>(_wgslsmith_mod_i32(-(i32(-1i) * -2147483647i), 1i), -2147483647i);
    var var_2 = func_3(firstLeadingBit(0u), ~u_input.b);
    global1 = array<vec4<u32>, 18>();
    return any(select(func_3(0u, _wgslsmith_sub_vec3_u32(select(arg_0.xwy, vec3<u32>(u_input.b.x, 1u, arg_0.x), true), ~vec3<u32>(u_input.a.x, 4294967295u, 0u))), select(!select(vec3<bool>(true, true, var_2.x), vec3<bool>(false, true, var_2.x), vec3<bool>(true, global3.x, false)), !select(vec3<bool>(var_2.x, true, false), vec3<bool>(var_2.x, var_2.x, global3.x), vec3<bool>(true, false, var_2.x)), var_2.x), true));
}

fn func_1(arg_0: bool) -> u32 {
    let var_0 = countOneBits(_wgslsmith_clamp_vec3_i32(-vec3<i32>(1i, 1i, 1i), -vec3<i32>(1i, 1i, 1i), _wgslsmith_add_vec3_i32(select(-vec3<i32>(1i, 3836i, 6018i), -vec3<i32>(0i, 48686i, 0i), !arg_0), select(vec3<i32>(1i, 1i, 1i), vec3<i32>(-1i, 39494i, 0i), false || arg_0))));
    global3 = select(vec3<bool>(!arg_0, any(select(global3.zx, !vec2<bool>(global3.x, global3.x), func_2(global1[_wgslsmith_index_u32(u_input.a.x, 18u)]))), func_3(u_input.b.x, ~vec3<u32>(u_input.b.x, u_input.b.x, 1179u)).x), !select(!(!vec3<bool>(global3.x, global3.x, global3.x)), !(!vec3<bool>(true, global3.x, true)), !select(vec3<bool>(false, arg_0, global3.x), vec3<bool>(arg_0, global3.x, arg_0), vec3<bool>(false, true, true))), vec3<bool>(false, global3.x, global3.x));
    var var_1 = var_0.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(2635f, 1863f), vec2<f32>(199f, -1566f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1548f, 328f), vec2<f32>(-915f, -406f), false)))))));
    var var_3 = u_input.b.x << (_wgslsmith_mult_u32(min(u_input.a.x, ~(~1u)), 0u) % 32u);
    return ~70042u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(781f, 1381f)), _wgslsmith_div_f32(-352f, 207f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -719f) + -580f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-225f, -1307f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2010f, 1000f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-401f)) * 1662f), _wgslsmith_f_op_f32(-2005f * _wgslsmith_f_op_f32(-517f - -453f))), global3.zy)));
    var var_1 = global3.x;
    let var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(1u & u_input.b.x, 18u)], ~global1[_wgslsmith_index_u32(1u, 18u)]), 0u) | u_input.b, vec3<u32>(_wgslsmith_clamp_u32(17241u, _wgslsmith_mod_u32(func_1(true), _wgslsmith_mult_u32(32213u, u_input.a.x)), u_input.b.x), u_input.b.x, _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a.x, ~u_input.b.x), 99160u & u_input.b.x)));
    global0 = array<Struct_1, 24>();
    var var_3 = vec2<bool>(false, true);
    let var_4 = _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(abs(abs(vec2<i32>(1i, -2147483647i)) << (vec2<u32>(30122u, u_input.a.x) % vec2<u32>(32u))), -(~select(vec2<i32>(-1i, 31679i), vec2<i32>(46493i, -9584i), true))), _wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), ~(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(2147483647i, 56265i)) & firstTrailingBit(vec2<i32>(-1i, -2147483647i)))));
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.b + -844f))))), var_0.b)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_0.c.x, _wgslsmith_div_f32(var_0.b, var_0.b))))));
    let var_6 = -var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(firstLeadingBit(u_input.b.zz)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(199f * -462f)), 561f), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, var_0.c.x, -2290f)))))))), _wgslsmith_f_op_f32(832f * var_0.b));
}

