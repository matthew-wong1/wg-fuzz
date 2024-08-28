struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 13>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = vec4<f32>(-209f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(308f))) + 532f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(252f, 1846f, true)))) * _wgslsmith_div_f32(-751f, -590f)), _wgslsmith_f_op_f32(2086f * _wgslsmith_f_op_f32(trunc(2051f)))), _wgslsmith_f_op_f32(abs(585f)));
    let var_1 = select(!select(!select(vec3<bool>(arg_1.b, true, false), vec3<bool>(arg_1.b, false, true), true), vec3<bool>(any(vec4<bool>(false, arg_1.b, true, arg_1.b)), arg_1.b | arg_1.b, true), select(all(vec2<bool>(arg_1.b, false)), arg_1.b, arg_1.a <= arg_1.a)), select(vec3<bool>(true, true, true), !vec3<bool>(u_input.a <= arg_1.c.x, true, !arg_1.b), true), select(!select(!vec3<bool>(false, arg_1.b, arg_1.b), vec3<bool>(false, arg_1.b, false), false), vec3<bool>(!arg_1.b, false, all(!vec4<bool>(arg_1.b, false, arg_1.b, arg_1.b))), arg_1.b));
    global0 = array<vec3<u32>, 13>();
    let var_2 = i32(-1i) * -arg_1.c.x;
    global0 = array<vec3<u32>, 13>();
    return !vec2<bool>(true, !select(true, all(vec2<bool>(var_1.x, true)), var_1.x));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    return vec4<bool>(any(!func_3(arg_3.a, arg_3)), !arg_2.b, (any(select(vec4<bool>(arg_2.b, arg_2.b, true, arg_2.b), vec4<bool>(arg_2.b, false, arg_3.b, true), true)) & arg_2.b) | true, _wgslsmith_f_op_f32(min(-1233f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(837f * arg_1.x))))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -581f) * _wgslsmith_f_op_f32(ceil(arg_1.x))), 714f));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> u32 {
    global0 = array<vec3<u32>, 13>();
    global0 = array<vec3<u32>, 13>();
    var var_0 = vec2<bool>(!all(vec2<bool>(false, arg_0.b | false)), any(select(!(!vec4<bool>(true, arg_0.b, false, true)), !func_2(arg_0.c.zyw, vec2<f32>(116f, -138f), arg_0, arg_0), (i32(-1i) * -18451i) <= u_input.a)));
    var var_1 = false;
    var_0 = vec2<bool>(all(vec4<bool>(true, func_3(46363u, arg_0).x, false, select(false, arg_0.b, arg_0.b) | true)), func_3(_wgslsmith_div_u32(114781u, ~(~1u)), arg_0).x);
    return ~(~arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 13>();
    let var_0 = Struct_1(0u, false, vec4<i32>(~(u_input.a << (31618u % 32u)), u_input.a, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, -1i), ~vec2<i32>(u_input.a, u_input.a)), ~(-39766i), -1i), u_input.a));
    var var_1 = Struct_1(func_1(Struct_1(~(~0u), false, abs(var_0.c)), countOneBits(abs(-u_input.a))), !var_0.b, vec4<i32>(max(u_input.a, 1i), abs(1i), -(~(~u_input.a)), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, var_0.c.x, u_input.a), -var_0.c))));
    var_1 = var_0;
    var var_2 = Struct_1(~_wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(abs(var_0.a), var_1.a)), ~min(1u, ~40806u) != ~firstTrailingBit(4294967295u ^ var_1.a), vec4<i32>(1i, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(23706i, -68521i)) << ((vec2<u32>(1u, var_1.a) ^ vec2<u32>(var_1.a, var_0.a)) % vec2<u32>(32u)), select(vec2<i32>(var_1.c.x, -2147483647i), -vec2<i32>(u_input.a, 29788i), !vec2<bool>(var_0.b, true))), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(var_0.c, var_0.c), var_1.c, select(var_1.c, vec4<i32>(0i, -4382i, -42458i, var_1.c.x), false)), vec4<i32>(-2147483647i, -44317i, var_0.c.x, var_1.c.x) | vec4<i32>(u_input.a, u_input.a, 2147483647i, var_1.c.x)), _wgslsmith_sub_i32(-23928i, var_1.c.x)));
    let var_3 = Struct_1(_wgslsmith_div_u32(64818u, 64800u & var_2.a), _wgslsmith_f_op_f32(floor(-1411f)) >= -1391f, select(firstLeadingBit(~var_0.c) & _wgslsmith_mult_vec4_i32(~vec4<i32>(-2147483647i, -2147483647i, u_input.a, var_0.c.x), abs(vec4<i32>(u_input.a, u_input.a, -2147483647i, -1539i))), vec4<i32>(0i, countOneBits(var_1.c.x | var_0.c.x), _wgslsmith_clamp_i32(-1i, var_2.c.x, var_1.c.x) | _wgslsmith_dot_vec2_i32(var_2.c.xz, var_0.c.xx), ~(-18237i)), true && all(vec4<bool>(false, var_0.b, var_0.b, false))));
    global0 = array<vec3<u32>, 13>();
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-491f, _wgslsmith_f_op_f32(f32(-1f) * -982f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-308f, 1784f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(839f, -446f) - vec2<f32>(2233f, 1240f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1400f))))), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(479f, 166f))))) + var_4.x), max(_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(var_1.a, 6234u, 649u, 17456u)), vec4<u32>(0u, var_0.a, var_1.a, var_1.a) << (vec4<u32>(0u, var_1.a, var_3.a, var_3.a) % vec4<u32>(32u))), vec4<u32>(20370u << (var_3.a % 32u), _wgslsmith_sub_u32(var_1.a, var_2.a), var_2.a, _wgslsmith_dot_vec2_u32(vec2<u32>(36708u, var_0.a), vec2<u32>(1u, var_3.a)))) & vec4<u32>(abs(countOneBits(var_3.a)), _wgslsmith_div_u32(_wgslsmith_add_u32(var_0.a, var_2.a), var_2.a), var_3.a, 41337u), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(min(var_3.a, var_1.a), var_0.a), abs(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 40094u), vec2<u32>(var_3.a, 1u)))), vec2<u32>(~1u, ~var_1.a)), abs(select(countOneBits(~vec4<u32>(0u, 4294967295u, 47318u, 63582u)), ~vec4<u32>(var_0.a, var_3.a, 62631u, var_2.a) >> (~vec4<u32>(var_1.a, 13178u, 4294967295u, 1u) % vec4<u32>(32u)), false)), firstLeadingBit(-8606i));
}

