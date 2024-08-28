struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(2222f, 831f), vec2<f32>(184f, -1000f), vec2<f32>(-982f, -1000f));

var<private> global1: array<Struct_2, 10>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    global0 = array<vec2<f32>, 3>();
    global0 = array<vec2<f32>, 3>();
    var var_0 = vec2<bool>(any(vec3<bool>(all(vec2<bool>(true, true)), !all(vec3<bool>(true, true, true)), true != all(vec3<bool>(true, false, false)))), all(vec3<bool>(true, true, select(false, false, false))) || any(vec2<bool>(true, true)));
    var var_1 = false;
    var var_2 = global1[_wgslsmith_index_u32(9449u, 10u)];
    return var_2.b.x;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    let var_0 = Struct_2(Struct_1(arg_1.a.a, _wgslsmith_clamp_i32(arg_1.a.b, _wgslsmith_add_i32(_wgslsmith_mult_i32(arg_2.a.d.x, arg_2.d.d.x), reverseBits(arg_2.d.c)), _wgslsmith_clamp_i32(~arg_1.a.d.x, -1i, arg_2.a.c)), ~_wgslsmith_add_i32(u_input.a.x, arg_2.a.c), vec4<i32>(u_input.a.x, ~(~arg_2.d.b), -(i32(-1i) * -37608i), arg_2.a.d.x)), vec2<u32>(arg_1.b.x, abs(4294967295u)), arg_2.c, arg_2.a);
    var var_1 = Struct_3(arg_0.xx);
    global1 = array<Struct_2, 10>();
    var var_2 = global1[_wgslsmith_index_u32(~max(var_0.b.x, abs(1u)), 10u)];
    return ~(_wgslsmith_mod_u32(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.b.x, arg_2.b.x, 0u), vec4<u32>(60416u, arg_2.b.x, arg_2.b.x, 1u))) << (var_2.b.x % 32u));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(trunc(226f));
    var var_1 = ~1u != abs(select(~40963u, max(4294967295u, 1u), true) & ~(~68014u));
    var var_2 = Struct_1(true, -1i, -(abs(u_input.a.x) ^ arg_1.x), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(arg_1.x, -76486i, u_input.a.x, -2147483647i)), ~vec4<i32>(arg_1.x, -40401i, 0i, u_input.a.x)) ^ max(-vec4<i32>(u_input.a.x, 40663i, -20886i, u_input.a.x), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i)), countOneBits(vec4<i32>(2147483647i, arg_1.x, _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(arg_1.x, -30524i)), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, -25366i, arg_1.x), vec3<i32>(7107i, 1102i, 11613i))))));
    var var_3 = true;
    let var_4 = vec3<u32>(func_4(select(!select(vec3<bool>(var_2.a, true, var_2.a), vec3<bool>(var_2.a, true, var_2.a), false), !vec3<bool>(var_2.a, var_2.a, false), vec3<bool>(true, var_2.a, true)), global1[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_0.yyy, arg_0.wyx, vec3<bool>(var_2.a, var_2.a, var_2.a))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1003f, arg_0.x, arg_0.x))))), 10u)], Struct_2(Struct_1(select(true, var_2.a, false), 57040i ^ u_input.a.x, u_input.a.x, var_2.d), vec2<u32>(1u, 1u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_0)), -128f)), Struct_1(true, _wgslsmith_dot_vec4_i32(var_2.d, var_2.d), -var_2.d.x, firstLeadingBit(var_2.d)))), abs(_wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(21261u, 4294967295u, 21537u), 35358u), 1u)), max(firstLeadingBit(6356u), 1u));
    return _wgslsmith_clamp_u32(var_4.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(var_4.x, 0u), var_4.x ^ var_4.x, _wgslsmith_mod_u32(34147u, 27896u)), _wgslsmith_clamp_vec3_u32(var_4, min(var_4, vec3<u32>(4294967295u, var_4.x, 3654u)), ~var_4)), max(var_4.x, 29079u)), 35695u);
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> bool {
    var var_0 = 2147483647i;
    let var_1 = func_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(arg_1 + _wgslsmith_f_op_vec4_f32(abs(arg_1))))), _wgslsmith_div_vec2_i32(u_input.a, _wgslsmith_sub_vec2_i32(u_input.a, ~vec2<i32>(u_input.a.x, u_input.a.x))));
    var_0 = _wgslsmith_mod_i32(min(u_input.a.x, u_input.a.x), -2147483647i);
    let var_2 = _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(select(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1, var_1, var_1, var_1) << (firstLeadingBit(vec4<u32>(var_1, 0u, var_1, var_1)) % vec4<u32>(32u)), max(vec4<u32>(1100u, 32285u, 40620u, 4294967295u), vec4<u32>(0u, 1822u, 74865u, var_1)) | ~vec4<u32>(8995u, var_1, var_1, var_1)), var_1, all(vec4<bool>(true, true, true, true))), 3u)]);
    global1 = array<Struct_2, 10>();
    return !all(vec2<bool>(false, true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 10>();
    global0 = array<vec2<f32>, 3>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1f * -1498f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-861f - -237f))))));
    let var_1 = !vec3<bool>(true, true || func_1(_wgslsmith_div_f32(var_0.x, -2552f), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<f32>(var_0.x, var_0.x, 1092f, 1678f))), true);
    let var_2 = Struct_1(var_1.x, u_input.a.x, u_input.a.x, vec4<i32>(u_input.a.x, ~u_input.a.x, ~(i32(-1i) * -33962i), u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, 1i, ~(~32111u), -800f);
}

