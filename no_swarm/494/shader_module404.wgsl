struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(19751i), Struct_2(672i), Struct_2(-33127i), Struct_2(5095i), Struct_2(1i), Struct_2(9645i), Struct_2(-30630i), Struct_2(1i), Struct_2(2147483647i), Struct_2(49597i), Struct_2(-25986i), Struct_2(19526i), Struct_2(i32(-2147483648)), Struct_2(2147483647i), Struct_2(0i), Struct_2(1i), Struct_2(26488i), Struct_2(i32(-2147483648)), Struct_2(-1i), Struct_2(0i), Struct_2(1i), Struct_2(10635i), Struct_2(0i), Struct_2(0i), Struct_2(-1i), Struct_2(-1i), Struct_2(2147483647i), Struct_2(-1i), Struct_2(1i), Struct_2(2395i), Struct_2(0i), Struct_2(i32(-2147483648)));

var<private> global1: array<vec2<u32>, 29>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: bool, arg_3: u32) -> i32 {
    global0 = array<Struct_2, 32>();
    global1 = array<vec2<u32>, 29>();
    global1 = array<vec2<u32>, 29>();
    var var_0 = ~(-(-firstLeadingBit(vec4<i32>(arg_0.a, arg_0.a, u_input.e.x, -12860i)) | ~_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -2147483647i, 1i, arg_0.a), vec4<i32>(0i, u_input.e.x, u_input.e.x, 1i))));
    var var_1 = Struct_2(i32(-1i) * -_wgslsmith_mod_i32(_wgslsmith_add_i32(1i, var_0.x), u_input.b));
    return 4487i << (arg_1 % 32u);
}

fn func_2() -> Struct_2 {
    global0 = array<Struct_2, 32>();
    var var_0 = -_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(max(u_input.e.x, u_input.b), func_3(global0[_wgslsmith_index_u32(0u, 32u)], u_input.a.x, true, 23822u)), 12121i, -select(u_input.b, u_input.e.x, true), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b, -3564i, u_input.e.x) << (vec4<u32>(u_input.a.x, 0u, 3100u, 17100u) % vec4<u32>(32u)), vec4<i32>(-12151i, -2147483647i, -1i, u_input.b) << (vec4<u32>(4294967295u, u_input.c, u_input.c, 1u) % vec4<u32>(32u)))), vec4<i32>(1i, ~0i, 1i, u_input.b & u_input.e.x));
    let var_1 = !(!select(vec3<bool>(false, -10655i > var_0.x, any(vec3<bool>(false, true, true))), vec3<bool>(all(vec3<bool>(true, false, true)), true, true), false));
    global0 = array<Struct_2, 32>();
    return global0[_wgslsmith_index_u32(1u, 32u)];
}

fn func_1(arg_0: bool) -> vec2<f32> {
    var var_0 = u_input.a.x;
    let var_1 = u_input.a;
    var_0 = ~var_1.x;
    let var_2 = func_2();
    var var_3 = Struct_1(u_input.e.x, _wgslsmith_add_vec2_i32(select(_wgslsmith_sub_vec2_i32(u_input.e.yy, vec2<i32>(-1i, -29702i)), abs(u_input.e.xz), all(vec2<bool>(true, true))), u_input.e.yx));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1488f, 551f) - vec2<f32>(1751f, 264f)))))), vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1399f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    var_0 = ~u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(func_1(!((u_input.e.x <= select(-1i, u_input.b, false)) & (true || (u_input.e.x != 1i)))));
    let var_2 = vec4<bool>(!(!any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)))), false, all(vec4<bool>(true, true, true, true)) | (true & any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true)))), true);
    var_0 = _wgslsmith_add_u32(u_input.a.x, u_input.d);
    global1 = array<vec2<u32>, 29>();
    var var_3 = select(vec4<bool>(!(!all(vec2<bool>(false, true))), select(true, u_input.c < u_input.c, any(vec2<bool>(var_2.x, var_2.x))) | (~1u != (4294967295u << (u_input.c % 32u))), any(select(!var_2.wxz, select(vec3<bool>(true, var_2.x, true), vec3<bool>(true, var_2.x, true), var_2.wzy), vec3<bool>(true, false, true))), (u_input.d ^ 1u) != (~u_input.a.x << (u_input.a.x % 32u))), select(select(var_2, select(vec4<bool>(var_2.x, true, false, var_2.x), !var_2, var_2.x), all(var_2.wz) | !var_2.x), vec4<bool>(any(var_2.zy), false, abs(u_input.e.x) > u_input.e.x, _wgslsmith_clamp_u32(18685u, 21156u, 17933u) < u_input.a.x), all(var_2)), false);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec4_i32(select(~vec4<i32>(u_input.e.x, 2147483647i, u_input.b, 29518i), countOneBits(vec4<i32>(u_input.b, u_input.e.x, u_input.e.x, -1i)), select(vec4<bool>(var_2.x, true, false, var_2.x), vec4<bool>(var_3.x, false, false, true), vec4<bool>(false, false, true, true))), vec4<i32>(u_input.b, 23207i << (u_input.d % 32u), -u_input.b, 15158i)));
}

