struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: i32,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: i32, arg_3: f32) -> vec2<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(floor(arg_3)), vec2<u32>(arg_0.x, _wgslsmith_mod_u32(firstTrailingBit(~45335u), abs(0u))));
    let var_1 = 2147483647i;
    var_0 = Struct_1(512f, vec2<u32>(firstTrailingBit(abs(5776u)), countOneBits(~(~u_input.a.x))));
    var var_2 = Struct_1(arg_3, ~_wgslsmith_clamp_vec2_u32(max(select(vec2<u32>(121510u, 49348u), u_input.a.xy, true), arg_1 << (arg_1 % vec2<u32>(32u))), ~firstTrailingBit(var_0.b), max(~vec2<u32>(1u, 4294967295u), ~vec2<u32>(4294967295u, arg_1.x))));
    let var_3 = vec4<bool>(false, !(!any(vec2<bool>(true, true))), false, select(false, true, true));
    return ~(~(vec2<i32>(-1i) * -vec2<i32>(-2147483647i, u_input.b)));
}

fn func_2(arg_0: vec3<bool>) -> vec3<f32> {
    var var_0 = func_3(vec3<u32>(~u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.zx, ~(-74333i) >> (u_input.a.x % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-614f + 699f)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1000f * 1701f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f + -869f), -414f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1098f + -212f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    let var_2 = Struct_4(Struct_2(Struct_1(187f, vec2<u32>(countOneBits(u_input.a.x), u_input.a.x ^ 25583u)), var_1, 20480i, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.x)) - var_1.x), vec2<u32>(~4294967295u, 4294967295u)), ~_wgslsmith_sub_vec4_i32(max(vec4<i32>(2147483647i, 2147483647i, u_input.b, var_0.x), vec4<i32>(1i, 9767i, u_input.b, var_0.x)), ~vec4<i32>(0i, var_0.x, -1i, var_0.x))), var_0.x, Struct_1(var_1.x, _wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(1u, 0u))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1009f + var_1.x)) + var_1.x), countOneBits(u_input.a.yw)), Struct_3(true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x))), u_input.a.x));
    var var_3 = -u_input.b;
    let var_4 = max(-u_input.b & _wgslsmith_mod_i32(_wgslsmith_div_i32(var_2.b, var_0.x), -2147483647i), _wgslsmith_sub_i32(_wgslsmith_add_i32(~(~1i), -u_input.b), 2147483647i));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -700f)), _wgslsmith_f_op_f32(-var_1.x)));
}

fn func_1() -> f32 {
    var var_0 = u_input.a.wy;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(302f)), u_input.a.xy);
    var var_2 = Struct_2(Struct_1(-274f, select(u_input.a.wz, u_input.a.xz, (u_input.b ^ u_input.b) > abs(u_input.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(vec3<bool>(true, var_1.a >= var_1.a, true))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a, 2503f, var_1.a), vec3<f32>(-1336f, 926f, var_1.a), vec3<bool>(true, true, true))))) - vec3<f32>(var_1.a, _wgslsmith_f_op_f32(var_1.a - var_1.a), var_1.a))), ~u_input.b, var_1, select(_wgslsmith_mod_vec4_i32(-vec4<i32>(2147483647i, u_input.b, u_input.b, u_input.b), -vec4<i32>(-21881i, u_input.b, u_input.b, u_input.b)), -_wgslsmith_div_vec4_i32(-vec4<i32>(8982i, 1i, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), true));
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_2.b.x)))), var_1.a, _wgslsmith_f_op_vec3_f32(func_2(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)))).x, 283f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, 326f, _wgslsmith_f_op_f32(var_1.a + -1690f), _wgslsmith_f_op_f32(var_1.a - var_1.a)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_2.d.a, _wgslsmith_f_op_f32(-var_2.a.a)), _wgslsmith_f_op_f32(var_1.a + 776f), 829f, var_2.b.x) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-538f, 772f, var_2.d.a, -292f), vec4<f32>(134f, -1049f, var_1.a, var_2.b.x)))))), min(u_input.a.x, ~var_1.b.x) <= ~_wgslsmith_sub_u32(var_0.x, ~u_input.a.x)));
    var var_4 = 0i;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(1u, 1u), u_input.a.x), min(max(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u)), u_input.a.x), _wgslsmith_mult_u32(0u, 0u)), ~max(u_input.a.x, 4294967295u));
    let var_1 = var_0.yz;
    var var_2 = abs(abs(u_input.b));
    let var_3 = Struct_3(true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1()))), ~var_0.x);
    let var_4 = all(vec2<bool>(true, var_3.a));
    var_0 = u_input.a.wyx;
    var_2 = max(u_input.b, u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(u_input.a.wyx, u_input.a.zyx), ~(vec3<u32>(_wgslsmith_add_u32(67669u, u_input.a.x), ~4294967295u, abs(43703u)) ^ vec3<u32>(var_0.x, 4294967295u, var_1.x)));
}

