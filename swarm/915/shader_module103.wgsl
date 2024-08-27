struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: Struct_2,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23>;

var<private> global1: array<vec4<i32>, 30>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32, arg_3: vec2<bool>) -> vec3<i32> {
    global0 = array<bool, 23>();
    global1 = array<vec4<i32>, 30>();
    return -_wgslsmith_sub_vec3_i32(arg_0.d, _wgslsmith_mult_vec3_i32(abs(vec3<i32>(u_input.e.x, 2147483647i, u_input.e.x) >> (arg_1 % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(arg_0.d, vec3<i32>(-49423i, -27051i, u_input.e.x)), countOneBits(vec3<i32>(1i, u_input.e.x, -29449i)))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<f32>) -> vec3<i32> {
    var var_0 = Struct_1(global0[_wgslsmith_index_u32(~u_input.c.x, 23u)], any(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_1), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, -936f)))), ((-arg_0 & -vec3<i32>(-27448i, arg_0.x, u_input.e.x)) ^ vec3<i32>(_wgslsmith_clamp_i32(-5609i, -1i, u_input.e.x), 22137i, ~u_input.e.x)) ^ abs(arg_0));
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1765f, var_0.c.x, -2004f, arg_1.x) * vec4<f32>(arg_1.x, arg_1.x, var_0.c.x, -518f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, 295f, arg_1.x, 1000f) + vec4<f32>(var_0.c.x, var_0.c.x, arg_1.x, arg_1.x)))))));
    var var_2 = Struct_1(any(!(!(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 23u)], false)))), global0[_wgslsmith_index_u32(6682u, 23u)], _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, var_0.c.x)), vec2<f32>(var_1.x, 349f))))), vec3<i32>(firstLeadingBit(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, 2147483647i, 1i), vec3<i32>(-2147483647i, 0i, var_0.d.x))), -arg_0.x, 2147483647i));
    var var_3 = firstLeadingBit(1u);
    let var_4 = Struct_2(_wgslsmith_add_u32(~76292u, 14273u));
    return vec3<i32>(abs(-1i), u_input.e.x, 1i);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_5, arg_2: vec3<bool>, arg_3: Struct_1) -> f32 {
    let var_0 = func_4(~(~_wgslsmith_sub_vec3_i32(vec3<i32>(arg_3.d.x, u_input.e.x, -7419i), vec3<i32>(-2147483647i, arg_3.d.x, arg_3.d.x))) & ~(~func_3(arg_3, vec3<u32>(u_input.c.x, arg_0.a, 1u), -446f, arg_2.xz)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.c.x + 1758f) * _wgslsmith_f_op_f32(-arg_3.c.x)))));
    let var_1 = arg_3.c;
    global1 = array<vec4<i32>, 30>();
    global1 = array<vec4<i32>, 30>();
    var var_2 = _wgslsmith_f_op_f32(abs(arg_1.b.d.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c.x)))));
}

fn func_1(arg_0: vec2<u32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(788f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(Struct_2(1u), Struct_5(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)]), Struct_3(arg_0.x, u_input.c.wwz, Struct_2(arg_0.x), vec2<f32>(1097f, -492f))), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.x, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(u_input.d, 23u)]), Struct_1(true, true, vec2<f32>(879f, -665f), vec3<i32>(u_input.e.x, -675i, u_input.e.x))))))))));
    global0 = array<bool, 23>();
    var var_1 = Struct_4(Struct_3(~(u_input.a | 0u), u_input.c.wxw, Struct_2(7168u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2304f, -347f) + vec2<f32>(1051f, -153f)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(765f, 383f)))))));
    var_0 = var_1.a.d.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-693f, -1443f, -938f));
    return Struct_3(4294967295u, _wgslsmith_mod_vec3_u32(vec3<u32>(firstTrailingBit(var_1.a.a >> (69082u % 32u)), ~firstTrailingBit(22775u), _wgslsmith_mod_u32(max(9152u, 1u), 1u)), var_1.a.b), Struct_2(4294967295u), vec2<f32>(_wgslsmith_f_op_f32(step(var_1.a.d.x, -364f)), _wgslsmith_div_f32(-2486f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2525f))))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4) -> f32 {
    global0 = array<bool, 23>();
    global1 = array<vec4<i32>, 30>();
    return arg_1.a.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 30>();
    global1 = array<vec4<i32>, 30>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(func_1(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.c.x), vec2<u32>(61027u, u_input.a)) | u_input.c.wy), Struct_4(Struct_3(0u, u_input.c.ywx, Struct_2(u_input.d), vec2<f32>(-248f, -480f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1217f))));
    global0 = array<bool, 23>();
    global0 = array<bool, 23>();
    let var_1 = _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(~firstTrailingBit(vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, 0i) >> (u_input.c % vec4<u32>(32u))), -global1[_wgslsmith_index_u32(_wgslsmith_div_u32(74325u, u_input.d), 30u)]), firstTrailingBit(global1[_wgslsmith_index_u32(~u_input.a, 30u)]));
    let var_2 = _wgslsmith_add_i32(_wgslsmith_mult_i32(~abs(-u_input.e.x), u_input.e.x), -33682i);
    var var_3 = Struct_5(select(vec2<bool>(var_0 <= _wgslsmith_f_op_f32(round(var_0)), global0[_wgslsmith_index_u32(~4294967295u, 23u)]), !select(select(vec2<bool>(true, false), vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 23u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 23u)], false)), select(vec2<bool>(global0[_wgslsmith_index_u32(61725u, 23u)], true), vec2<bool>(global0[_wgslsmith_index_u32(1u, 23u)], true), true), true), !select(vec2<bool>(global0[_wgslsmith_index_u32(25806u, 23u)], true), vec2<bool>(true, false), -32762i != var_2)), Struct_3(_wgslsmith_add_u32(_wgslsmith_div_u32(~u_input.a, max(32619u, 4294967295u)), u_input.a << (~0u % 32u)), ~vec3<u32>(75615u, u_input.d & 17768u, _wgslsmith_clamp_u32(u_input.a, u_input.b, u_input.d)), func_1(u_input.c.zx).c, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(304f, 929f) * vec2<f32>(491f, -1261f)), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 23u)], true), vec2<bool>(global0[_wgslsmith_index_u32(49283u, 23u)], false), false)))))));
    var_3 = Struct_5(!vec2<bool>(false, any(vec3<bool>(global0[_wgslsmith_index_u32(24832u, 23u)], var_3.a.x, true))), Struct_3(_wgslsmith_mod_u32(28945u, countOneBits(_wgslsmith_dot_vec2_u32(u_input.c.xy, vec2<u32>(4294967295u, 54477u)))), vec3<u32>(4894u, ~4294967295u, 4294967295u), Struct_2(_wgslsmith_add_u32(~var_3.b.a, 1u)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.b.d), vec2<f32>(-113f, -1460f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-587f, var_3.b.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(574f))), _wgslsmith_f_op_f32(var_3.b.d.x - var_3.b.d.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1022f, var_0, var_0), _wgslsmith_f_op_vec3_f32(vec3<f32>(1040f, 105f, -1361f) + vec3<f32>(var_0, -1864f, var_0)), var_1.x == -33070i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-363f, 580f, var_3.b.d.x)))), (var_3.b.d.x <= -794f) & true))), -30305i, vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(~var_1.x, _wgslsmith_mod_i32(2147483647i, 1i), 0i), u_input.e.x), u_input.e.x));
}

