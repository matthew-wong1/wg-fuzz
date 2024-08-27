struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: u32,
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

var<private> global0: array<vec3<f32>, 19> = array<vec3<f32>, 19>(vec3<f32>(422f, 1000f, 1456f), vec3<f32>(679f, -937f, -560f), vec3<f32>(1851f, 580f, 138f), vec3<f32>(1147f, 2488f, 203f), vec3<f32>(-255f, -376f, 1664f), vec3<f32>(-2551f, -129f, -1843f), vec3<f32>(540f, 1177f, -1084f), vec3<f32>(-1000f, -115f, -252f), vec3<f32>(-1000f, 756f, 421f), vec3<f32>(-287f, -1271f, -345f), vec3<f32>(-1206f, 465f, -876f), vec3<f32>(-2353f, 1302f, -243f), vec3<f32>(136f, 1598f, 1157f), vec3<f32>(-2200f, 164f, 1789f), vec3<f32>(-142f, -126f, -516f), vec3<f32>(-104f, 816f, 301f), vec3<f32>(226f, -550f, 1567f), vec3<f32>(2022f, -1069f, 484f), vec3<f32>(-496f, -2161f, 1766f));

var<private> global1: vec3<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> f32 {
    global1 = vec3<u32>(~4294967295u, ~1u << ((17694u << (u_input.b % 32u)) % 32u), ~max(global1.x, global1.x));
    let var_0 = u_input.c.x;
    global0 = array<vec3<f32>, 19>();
    var var_1 = arg_0;
    return 398f;
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: u32) -> u32 {
    var var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(-_wgslsmith_add_i32(1i, arg_0), u_input.c.x, -u_input.d), -max(vec3<i32>(arg_0, -6158i, u_input.a) >> (vec3<u32>(0u, u_input.b, 26796u) % vec3<u32>(32u)), vec3<i32>(-21861i, arg_0, u_input.d))) | -_wgslsmith_clamp_vec3_i32(select(reverseBits(vec3<i32>(u_input.a, u_input.a, arg_0)), ~vec3<i32>(0i, 0i, arg_0), vec3<bool>(true, true, true)), ~(-vec3<i32>(-18984i, u_input.d, arg_0)), ~vec3<i32>(u_input.c.x, -19441i, 2147483647i) ^ ~vec3<i32>(u_input.a, 2147483647i, -30844i));
    let var_1 = countOneBits(~(-39469i));
    var_0 = reverseBits(vec3<i32>(_wgslsmith_clamp_i32(var_0.x, max(var_1, var_1), var_0.x & var_0.x), select(var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-62070i, var_0.x, var_0.x), vec3<i32>(arg_0, var_1, var_0.x)), true), (arg_0 >> (1u % 32u)) << (_wgslsmith_add_u32(0u, 36017u) % 32u))) & abs(abs(vec3<i32>(u_input.d, 0i, var_0.x) | ~vec3<i32>(-1i, arg_0, u_input.d)));
    var var_2 = Struct_1(any(vec3<bool>(true, false, true)) || false, vec4<i32>(abs(~(-5484i)) ^ -(~arg_0), 29818i, ~var_1, ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, arg_0, u_input.a, arg_0), vec4<i32>(u_input.c.x, -1i, arg_0, 12611i)) << (1u % 32u)), min(global1.xz & vec2<u32>(~global1.x, ~1u), _wgslsmith_mult_vec2_u32(min(~global1.xx, global1.xx), global1.zx)), vec3<i32>(select(u_input.a, ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1, var_1, -5659i, 32413i), vec4<i32>(arg_0, var_1, var_1, var_0.x)), true), u_input.a, _wgslsmith_sub_i32(-25947i, u_input.d)));
    let var_3 = ~vec3<u32>(_wgslsmith_mod_u32(~4294967295u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 1u), global1.zz)), ~20541u, min(0u, global1.x));
    return ~(~reverseBits(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, global1.x), vec2<u32>(67771u, u_input.b)), abs(global1.xx))));
}

fn func_2() -> vec3<u32> {
    var var_0 = _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(~u_input.b, 4294967295u, ~4294967295u), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(4294967295u, u_input.b, u_input.b)), vec3<u32>(global1.x, 1u & global1.x, 4294967295u))), vec3<u32>(4294967295u, global1.x, min((global1.x >> (1u % 32u)) << (global1.x % 32u), u_input.e)), min(vec3<u32>(25554u, abs(_wgslsmith_sub_u32(global1.x, 92766u)), 38344u), vec3<u32>(select(global1.x, _wgslsmith_div_u32(global1.x, 98181u), true), firstLeadingBit(12918u), global1.x)));
    global0 = array<vec3<f32>, 19>();
    global1 = ~vec3<u32>(_wgslsmith_sub_u32(func_3(1i << (var_0.x % 32u), _wgslsmith_f_op_vec3_f32(abs(global0[_wgslsmith_index_u32(global1.x, 19u)])), u_input.e), global1.x), reverseBits(_wgslsmith_mod_u32(firstLeadingBit(0u), ~0u)), var_0.x);
    var_0 = select(~(~(vec3<u32>(var_0.x, u_input.b, var_0.x) | vec3<u32>(0u, 113380u, u_input.b)) & vec3<u32>(1u, _wgslsmith_clamp_u32(10771u, 4294967295u, u_input.e), abs(23967u))), ~(~countOneBits(vec3<u32>(var_0.x, 18520u, u_input.e) | vec3<u32>(global1.x, global1.x, 4294967295u))), true);
    var var_1 = 1u << (0u % 32u);
    return select(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, _wgslsmith_clamp_u32(u_input.b, u_input.e, 4294967295u), 37416u & var_0.x), vec3<u32>(firstLeadingBit(global1.x), var_0.x, u_input.e)), vec3<u32>(firstLeadingBit(0u) ^ u_input.e, 0u, 35880u), select(vec3<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true))), false, true), vec3<bool>(select(true, 29264i >= u_input.c.x, true), any(vec2<bool>(true, true)), true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), all(vec2<bool>(true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i << (1u % 32u);
    global0 = array<vec3<f32>, 19>();
    var var_1 = !(!vec4<bool>(true, 1334f <= _wgslsmith_f_op_f32(func_1(Struct_1(true, vec4<i32>(u_input.d, var_0, 1i, -10318i), global1.xz, vec3<i32>(2014i, var_0, -31355i)), vec2<bool>(false, false), Struct_1(true, vec4<i32>(u_input.d, -13933i, -60908i, u_input.c.x), vec2<u32>(1u, 31296u), vec3<i32>(var_0, var_0, 2147483647i)))), true, true));
    global1 = vec3<u32>(~4294967295u, global1.x, _wgslsmith_dot_vec3_u32(abs(abs(func_2())), ~(~(~vec3<u32>(u_input.b, 0u, u_input.e)))));
    let var_2 = _wgslsmith_f_op_f32(func_1(Struct_1(!var_1.x, reverseBits(~vec4<i32>(u_input.a, var_0, -2147483647i, -1i)), min(~_wgslsmith_add_vec2_u32(global1.xy, global1.yx), vec2<u32>(global1.x, 76206u) & (vec2<u32>(u_input.e, 1u) ^ global1.yx)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.c.x, var_0), vec3<i32>(u_input.a, var_0, -64480i)) << (~(~vec3<u32>(4294967295u, u_input.e, u_input.b)) % vec3<u32>(32u))), var_1.xz, Struct_1(all(var_1.ywz), vec4<i32>(_wgslsmith_add_i32(~u_input.a, ~var_0), 46746i, _wgslsmith_dot_vec2_i32(max(vec2<i32>(-45031i, u_input.c.x), vec2<i32>(55044i, var_0)), firstLeadingBit(vec2<i32>(1i, 1i))), -5172i), min(countOneBits(~vec2<u32>(u_input.b, global1.x)), global1.zz), vec3<i32>(_wgslsmith_div_i32(var_0, -35064i), _wgslsmith_clamp_i32(14681i, u_input.a, -1i), var_0) << (firstLeadingBit(vec3<u32>(43906u, 0u, global1.x)) % vec3<u32>(32u)))));
    global0 = array<vec3<f32>, 19>();
    var var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(1961f, -1938f, false)), _wgslsmith_f_op_f32(round(847f)), _wgslsmith_f_op_f32(-var_2), _wgslsmith_div_f32(var_2, -891f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2, var_2, var_2, -311f), vec4<f32>(-221f, 764f, var_2, 435f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_2, var_2, 388f) + vec4<f32>(309f, 852f, var_2, 171f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 1128f, 1654f, var_2)))))), vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 1613f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), 326f)), _wgslsmith_f_op_f32(var_2 + 1f))));
    global1 = ~(~(~min(vec3<u32>(global1.x, 34881u, 36144u), vec3<u32>(global1.x, u_input.b, u_input.e))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(countOneBits(var_0) >> (func_3(-u_input.a, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1137f, var_3.x, 1231f))), 1u) % 32u), -27970i, u_input.c.x, 0i));
}

