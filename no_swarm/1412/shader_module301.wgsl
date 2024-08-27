struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: u32,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14> = array<i32, 14>(-75753i, 29657i, -24860i, 41370i, 2147483647i, -60379i, 2147483647i, 0i, i32(-2147483648), -1i, 1i, 1i, 2147483647i, 18756i);

var<private> global1: bool;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global0 = array<i32, 14>();
    let var_0 = arg_2.a.zzw;
    var var_1 = firstLeadingBit(~var_0.x);
    var var_2 = any(select(!select(vec3<bool>(true, arg_2.d, true), select(vec3<bool>(false, arg_3.b, false), vec3<bool>(true, arg_3.d, arg_1), vec3<bool>(true, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, arg_2.b, true), vec3<bool>(true, true, arg_3.d))), select(select(vec3<bool>(arg_3.b, arg_3.b, true), !vec3<bool>(arg_2.b, arg_2.b, false), true), vec3<bool>(arg_2.d, all(vec4<bool>(false, false, arg_1, true)), 4294967295u >= arg_3.c), all(vec2<bool>(true, true))), select(!vec3<bool>(arg_2.b, arg_2.b, arg_3.d), select(vec3<bool>(arg_3.b, true, true), !vec3<bool>(false, arg_1, false), true), false)));
    let var_3 = arg_0.c.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.d)));
}

fn func_2() -> bool {
    var var_0 = Struct_2(vec3<u32>(reverseBits(_wgslsmith_clamp_u32(abs(10148u), 191157u, 76063u)), ~(~(16399u << (0u % 32u))), 1u), vec2<i32>(-global0[_wgslsmith_index_u32(abs(4535u), 14u)], -(firstTrailingBit(u_input.a) & -global0[_wgslsmith_index_u32(41702u, 14u)])), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1366f + 1627f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -1367f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(vec3<u32>(4294967295u, 5031u, 94931u), vec2<i32>(-2256i, u_input.a), vec4<f32>(1397f, -1483f, 1360f, -981f), -332f), false, Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, -33955i, -27790i), false, 0u, true, vec2<i32>(u_input.b.x, -45577i)), Struct_1(vec4<i32>(u_input.a, 1i, 2147483647i, 1i), true, 13702u, false, vec2<i32>(0i, u_input.b.x)))) + _wgslsmith_f_op_f32(abs(-1443f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1094f, 182f)))))), _wgslsmith_f_op_f32(step(-809f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -726f)))))));
    return true & any(select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))));
}

fn func_1() -> u32 {
    var var_0 = any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec4<bool>(false, false, true, true)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    global1 = func_2();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(716f, _wgslsmith_f_op_f32(f32(-1f) * -1478f), -1274f))));
    var var_2 = Struct_1(vec4<i32>(-3576i, ~abs(_wgslsmith_add_i32(u_input.b.x, -1i)), countOneBits(-2147483647i), i32(-1i) * -global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 1u), 14u)]), (true && (abs(global0[_wgslsmith_index_u32(18712u, 14u)]) > ~global0[_wgslsmith_index_u32(1u, 14u)])) || !(!all(vec3<bool>(false, true, true))), ~_wgslsmith_clamp_u32(~1u, _wgslsmith_mult_u32(max(30319u, 28786u), 1u), 4294967295u), all(select(vec3<bool>(true, true, any(vec3<bool>(true, false, false))), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(true, false, true))))), vec2<i32>(7943i, -(~1i & u_input.b.x)));
    let var_3 = Struct_1(_wgslsmith_mod_vec4_i32(-countOneBits(var_2.a), var_2.a) << (vec4<u32>(_wgslsmith_mult_u32(var_2.c, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.c, 79721u, 47294u), vec3<u32>(var_2.c, 0u, var_2.c))), _wgslsmith_mod_u32(var_2.c, ~var_2.c), 0u << (0u % 32u), (var_2.c ^ 1u) & var_2.c) % vec4<u32>(32u)), false, 51877u, 1i <= ~_wgslsmith_dot_vec2_i32(abs(var_2.a.wz), firstLeadingBit(var_2.a.wy)), u_input.b.xz);
    return ~(~_wgslsmith_mod_u32(var_2.c | var_2.c, var_3.c));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -137f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1735f)))) < -670f, true, any(vec3<bool>(select(true, true, true), all(vec2<bool>(true, true)), true)));
    var var_0 = ~vec3<u32>(_wgslsmith_mult_u32(4294967295u, _wgslsmith_div_u32(1u, abs(41583u))), ~(~1u), reverseBits(~(~1u)));
    var_0 = ~(~(~vec3<u32>(var_0.x | var_0.x, func_1(), _wgslsmith_clamp_u32(1u, var_0.x, 0u))));
    var var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2013f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-286f + 1000f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-453f, -346f)), -633f)), -284f, 1854f);
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(vec3<u32>(~4294967295u, var_0.x, 0u), _wgslsmith_sub_vec2_i32(u_input.b.yx, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, -10190i), u_input.b.yy)), vec4<f32>(_wgslsmith_f_op_f32(var_1.x * 1627f), var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -468f), _wgslsmith_f_op_f32(-var_1.x)), var_1.x), all(vec4<bool>(true, true, true, true)), Struct_1(~vec4<i32>(u_input.c, -555i, -2147483647i, global0[_wgslsmith_index_u32(11108u, 14u)]) >> (vec4<u32>(var_0.x, var_0.x, var_0.x, 40607u) % vec4<u32>(32u)), true, _wgslsmith_dot_vec2_u32(vec2<u32>(2395u, var_0.x), countOneBits(vec2<u32>(var_0.x, 1u))), true, u_input.b.yx), Struct_1(vec4<i32>(1i, -327i, 36602i, -9240i), true, 0u, !func_2(), vec2<i32>(-1i) * -vec2<i32>(u_input.b.x, -1i)))), _wgslsmith_f_op_f32(f32(-1f) * -538f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) * _wgslsmith_f_op_f32(f32(-1f) * -939f)))), var_1.x);
    let var_2 = ~firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_add_u32(var_0.x, 77987u), ~var_0.x, 0u, ~var_0.x), vec4<u32>(13186u, 4294967295u, 28162u, var_0.x) << (~vec4<u32>(4294967295u, 0u, 37374u, 1u) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, ~min(global0[_wgslsmith_index_u32(~(~35590u), 14u)], ~countOneBits(u_input.c)));
}

