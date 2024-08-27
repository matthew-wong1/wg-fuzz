struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec3<u32>(1u, 0u, 23283u), -55766i), Struct_1(vec3<u32>(51u, 8858u, 64922u), i32(-2147483648)), Struct_1(vec3<u32>(0u, 7862u, 34746u), 2147483647i), Struct_1(vec3<u32>(23836u, 0u, 4294967295u), 7539i), Struct_1(vec3<u32>(86161u, 71861u, 23143u), 33829i), Struct_1(vec3<u32>(15168u, 15485u, 85636u), 23509i), Struct_1(vec3<u32>(49474u, 37143u, 1u), -18431i), Struct_1(vec3<u32>(570u, 18163u, 1u), 0i), Struct_1(vec3<u32>(4294967295u, 8503u, 24312u), 34705i), Struct_1(vec3<u32>(0u, 17627u, 1u), 0i), Struct_1(vec3<u32>(4294967295u, 42095u, 22053u), 62910i), Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u), 33657i), Struct_1(vec3<u32>(39946u, 1u, 8893u), 6615i), Struct_1(vec3<u32>(26644u, 108454u, 0u), 10766i), Struct_1(vec3<u32>(1u, 58365u, 0u), -3560i), Struct_1(vec3<u32>(4294967295u, 19385u, 104754u), 24786i));

var<private> global2: array<u32, 27> = array<u32, 27>(0u, 1u, 67279u, 23425u, 36294u, 0u, 0u, 0u, 1432u, 40833u, 4294967295u, 0u, 1970u, 64663u, 1u, 65714u, 0u, 4294967295u, 4294967295u, 38773u, 42207u, 15036u, 33284u, 1u, 1u, 4294967295u, 74824u);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    global1 = array<Struct_1, 16>();
    var var_0 = arg_0;
    var_0 = Struct_1(countOneBits(arg_1.a), -_wgslsmith_sub_i32(0i, arg_1.b));
    var var_1 = _wgslsmith_add_vec2_u32(vec2<u32>(40893u, var_0.a.x) << (((select(vec2<u32>(63670u, 47409u), vec2<u32>(u_input.a.x, arg_1.a.x), vec2<bool>(false, true)) | _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 40194u), u_input.a, vec2<u32>(4294967295u, var_0.a.x))) << (countOneBits(firstTrailingBit(vec2<u32>(arg_1.a.x, 27466u))) % vec2<u32>(32u))) % vec2<u32>(32u)), ~vec2<u32>(4294967295u, arg_1.a.x));
    global2 = array<u32, 27>();
    return ~u_input.b;
}

fn func_2(arg_0: bool) -> i32 {
    global0 = array<Struct_1, 5>();
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u | _wgslsmith_add_u32(u_input.b, 46244u), u_input.a.x & select(func_3(global1[_wgslsmith_index_u32(44072u, 16u)], Struct_1(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], 27u)], 0u, 73106u), 25976i)) ^ ~48115u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], 27u)]), ~global2[_wgslsmith_index_u32(1u, 27u)], _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 52772u, 13815u, u_input.a.x), vec4<u32>(u_input.a.x, global2[_wgslsmith_index_u32(0u, 27u)], u_input.a.x, 1u))), true)), 16u)];
    global1 = array<Struct_1, 16>();
    var var_1 = 0u;
    global0 = array<Struct_1, 5>();
    return var_0.b;
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1) -> vec3<i32> {
    global1 = array<Struct_1, 16>();
    var var_0 = -1094f;
    var var_1 = ~40680u;
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    return -vec3<i32>(_wgslsmith_clamp_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_2.b), vec2<i32>(38381i, -10046i)), func_2(any(vec4<bool>(true, false, false, false))), 0i), 2147483647i & arg_2.b, ~_wgslsmith_div_i32(1i, arg_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(~0u, 16u)];
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    let var_1 = -178f;
    let var_2 = _wgslsmith_mult_vec3_i32(-((~vec3<i32>(var_0.b, var_0.b, 86076i) << (abs(var_0.a) % vec3<u32>(32u))) ^ ~select(vec3<i32>(var_0.b, 0i, var_0.b), vec3<i32>(var_0.b, var_0.b, 0i), vec3<bool>(true, true, true))), _wgslsmith_add_vec3_i32(-_wgslsmith_clamp_vec3_i32(func_1(vec4<f32>(-534f, -1014f, 1000f, 361f), -1857f, Struct_1(vec3<u32>(62924u, 4294967295u, u_input.a.x), -69674i)), _wgslsmith_add_vec3_i32(vec3<i32>(1i, -1i, 69767i), vec3<i32>(var_0.b, var_0.b, 2147483647i)), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 17443i, var_0.b), vec3<i32>(var_0.b, var_0.b, 58173i))), vec3<i32>(~var_0.b, ~var_0.b & ~(-21695i), var_0.b)));
    global2 = array<u32, 27>();
    var var_3 = vec4<f32>(-272f, -606f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -835f))) + -714f), var_1);
    var var_4 = _wgslsmith_mod_u32(~1u, 4294967295u | global2[_wgslsmith_index_u32(~7032u >> (u_input.b % 32u), 27u)]);
    global1 = array<Struct_1, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.a.yy << (~(vec2<u32>(26031u, global2[_wgslsmith_index_u32(15550u, 27u)]) & select(u_input.a, vec2<u32>(1u, global2[_wgslsmith_index_u32(u_input.a.x, 27u)]), vec2<bool>(false, false))) % vec2<u32>(32u)), ~vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(7471u, 74286u, 12129u, 0u), vec4<u32>(var_0.a.x, 64835u, global2[_wgslsmith_index_u32(var_0.a.x, 27u)], 1u)), ~18082u, ~(~var_0.a.x)));
}

