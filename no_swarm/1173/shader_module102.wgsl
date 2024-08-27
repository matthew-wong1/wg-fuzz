struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: Struct_3,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(false, false, false), vec4<i32>(41583i, 16732i, i32(-2147483648), 1i), i32(-2147483648), vec4<f32>(-2140f, 1757f, -357f, 788f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: Struct_2, arg_3: vec2<f32>) -> f32 {
    global0 = Struct_1(vec3<bool>(~(~(-1i)) >= (~16911i | _wgslsmith_mult_i32(-1i, arg_0.c.c)), arg_1 || !global0.a.x, all(!(!vec2<bool>(arg_1, true)))), global0.b, _wgslsmith_mod_i32(firstLeadingBit(0i), -36825i), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1394f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1870f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.d.x, arg_3.x))), _wgslsmith_f_op_f32(global0.d.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.x) * -2779f)), _wgslsmith_f_op_f32(arg_3.x - 1852f)));
    var var_0 = Struct_4(13072i, 73666u, arg_2.d, arg_0.d, !(!select(select(vec2<bool>(global0.a.x, arg_2.d.a.x), arg_0.e, global0.a.xx), arg_2.d.a.xx, global0.a.x)));
    let var_1 = firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(23204u, 4294967295u, 1u), ~vec3<u32>(1u, countOneBits(18082u), ~arg_0.b)));
    var_0 = arg_0;
    return 824f;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3) -> vec3<bool> {
    var var_0 = vec3<u32>(~u_input.b.x, arg_0.b, _wgslsmith_clamp_u32(firstTrailingBit(u_input.b.x), u_input.b.x, ~(select(57418u, u_input.b.x, true) & arg_0.b)));
    return vec3<bool>(true, true, true);
}

fn func_2(arg_0: vec3<u32>, arg_1: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(global0.d.xyw))));
    var var_1 = Struct_2(Struct_1(func_4(Struct_4(~(-26544i), arg_0.x | 4294967295u, Struct_1(vec3<bool>(true, global0.a.x, global0.a.x), global0.b, u_input.a, global0.d), Struct_3(-1294f, var_0.x), vec2<bool>(arg_1, false)), Struct_3(_wgslsmith_div_f32(global0.d.x, 1027f), _wgslsmith_f_op_f32(func_3(Struct_4(2147483647i, u_input.b.x, Struct_1(vec3<bool>(global0.a.x, global0.a.x, global0.a.x), vec4<i32>(2147483647i, 1i, global0.c, global0.c), -17282i, global0.d), Struct_3(-555f, -789f), vec2<bool>(true, true)), global0.a.x, Struct_2(Struct_1(vec3<bool>(false, true, global0.a.x), vec4<i32>(u_input.a, u_input.a, global0.b.x, -16630i), 2147483647i, global0.d), Struct_1(global0.a, global0.b, global0.b.x, vec4<f32>(global0.d.x, -870f, 399f, -184f)), vec2<f32>(-749f, -373f), Struct_1(global0.a, vec4<i32>(-1i, u_input.a, 39240i, -12641i), u_input.a, global0.d)), vec2<f32>(-980f, -611f))))), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_add_i32(global0.c, 0i), global0.b.x, _wgslsmith_sub_i32(-2147483647i, global0.b.x), -1i), select(-global0.b, -global0.b, global0.b.x == global0.c)), _wgslsmith_mod_i32(u_input.a, -(u_input.a << (u_input.b.x % 32u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(global0.d.x)), _wgslsmith_f_op_f32(-global0.d.x), -1413f, _wgslsmith_f_op_f32(min(var_0.x, 1413f))))), Struct_1(func_4(Struct_4(select(31813i, -5813i, true), _wgslsmith_mult_u32(1u, 1230u), Struct_1(global0.a, vec4<i32>(u_input.a, u_input.a, global0.c, global0.c), u_input.a, vec4<f32>(var_0.x, 1000f, var_0.x, -103f)), Struct_3(317f, 971f), global0.a.yx), Struct_3(var_0.x, -629f)), vec4<i32>(370i, -2147483647i & (-26446i | u_input.a), ~1i, _wgslsmith_mod_i32(-19461i, -2147483647i) & abs(u_input.a)), _wgslsmith_div_i32(_wgslsmith_mod_i32(2147483647i, -u_input.a), 1i | ~u_input.a), vec4<f32>(_wgslsmith_f_op_f32(-377f * 102f), 1197f, _wgslsmith_f_op_f32(213f + 1178f), _wgslsmith_f_op_f32(max(-538f, _wgslsmith_div_f32(global0.d.x, -1370f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_0.xz)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-540f, var_0.x)))) + _wgslsmith_f_op_vec2_f32(-var_0.yx)) + global0.d.xz), Struct_1(select(!select(global0.a, global0.a, true), global0.a, select(vec3<bool>(true, global0.a.x, global0.a.x), select(global0.a, vec3<bool>(global0.a.x, arg_1, global0.a.x), vec3<bool>(false, true, false)), all(vec3<bool>(arg_1, arg_1, true)))), max(min(global0.b, max(vec4<i32>(u_input.a, 28489i, 2147483647i, global0.c), vec4<i32>(u_input.a, u_input.a, -1i, u_input.a))), vec4<i32>(firstTrailingBit(global0.c), u_input.a, countOneBits(u_input.a), ~u_input.a)), min(~u_input.a, ~(-48387i)) >> (_wgslsmith_dot_vec2_u32(u_input.b.yz | arg_0.yy, ~arg_0.yz) % 32u), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(global0.d.x - 891f), _wgslsmith_f_op_f32(191f + 2217f), _wgslsmith_f_op_f32(-global0.d.x), var_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.x, global0.d.x, -327f, 1457f) * vec4<f32>(-281f, -811f, global0.d.x, var_0.x)), vec4<bool>(func_4(Struct_4(global0.c, arg_0.x, Struct_1(global0.a, vec4<i32>(2147483647i, 39866i, -9326i, u_input.a), global0.c, global0.d), Struct_3(global0.d.x, -413f), vec2<bool>(global0.a.x, global0.a.x)), Struct_3(-494f, 1049f)).x, any(vec4<bool>(global0.a.x, true, false, false)), arg_1 || arg_1, !arg_1)))));
    var var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, _wgslsmith_add_u32(arg_0.x, 0u)), reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x << (arg_0.x % 32u), 4294967295u), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b.x), vec2<u32>(u_input.b.x, u_input.b.x)), select(u_input.b.x, u_input.b.x, arg_1)), arg_0.zy)));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -840f), 1442f);
    let var_4 = vec4<i32>(~max(-_wgslsmith_dot_vec4_i32(var_1.b.b, vec4<i32>(var_1.a.c, u_input.a, u_input.a, global0.b.x)), u_input.a), u_input.a << (0u % 32u), -1i, ~(global0.c >> (reverseBits(1u) % 32u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.d.x) + 1f));
}

fn func_1(arg_0: vec4<bool>) -> Struct_4 {
    global0 = Struct_1(global0.a, -global0.b, -2147483647i, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.x, _wgslsmith_f_op_f32(func_2(~vec3<u32>(10628u, u_input.b.x, u_input.b.x), true)), _wgslsmith_f_op_f32(-global0.d.x), 1879f) * vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-261f + -236f) * _wgslsmith_f_op_f32(func_2(u_input.b.yyx, true))), global0.d.x, global0.d.x)));
    let var_0 = Struct_1(!select(global0.a, vec3<bool>(any(arg_0), arg_0.x, all(arg_0)), vec3<bool>(!arg_0.x, !arg_0.x, true)), global0.b, global0.b.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-343f, _wgslsmith_f_op_f32(-global0.d.x), global0.d.x, _wgslsmith_f_op_f32(sign(260f)))));
    let var_1 = Struct_4(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(u_input.a, abs(1i)), ~_wgslsmith_add_i32(global0.c, 1i)), vec2<i32>(u_input.a, _wgslsmith_mod_i32(-1i, global0.c >> (1u % 32u)))), u_input.b.x, Struct_1(!vec3<bool>(any(vec2<bool>(false, global0.a.x)), global0.a.x, true), ~vec4<i32>(global0.c, -2147483647i, -var_0.b.x, -5962i << (u_input.b.x % 32u)), firstLeadingBit(1i), _wgslsmith_f_op_vec4_f32(-var_0.d)), Struct_3(-504f, 479f), !vec2<bool>(global0.b.x >= 1i, func_4(Struct_4(var_0.b.x, u_input.b.x, var_0, Struct_3(813f, -926f), global0.a.yz), Struct_3(global0.d.x, -1696f)).x));
    let var_2 = Struct_3(var_0.d.x, _wgslsmith_f_op_f32(-var_0.d.x));
    let var_3 = global0.b.zw;
    return Struct_4(global0.c, _wgslsmith_dot_vec4_u32(~u_input.b, vec4<u32>(_wgslsmith_div_u32(52891u, var_1.b), var_1.b, 1u | u_input.b.x, 15392u)) & _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.b.x, 64594u), ~(~var_1.b)), Struct_1(vec3<bool>(any(!vec3<bool>(arg_0.x, false, var_1.c.a.x)), true, true), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(var_0.b.x, -1i), ~var_3.x), -_wgslsmith_mult_i32(var_0.c, -46921i), u_input.a, 18864i), _wgslsmith_mult_i32(~(~var_3.x), _wgslsmith_add_i32(_wgslsmith_div_i32(global0.c, var_0.c), 1i)), vec4<f32>(2239f, 149f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1436f * -1000f) + _wgslsmith_f_op_f32(trunc(var_1.d.b))), 501f)), var_2, var_1.c.a.yz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!vec4<bool>(global0.a.x, true, any(!vec2<bool>(global0.a.x, global0.a.x)), any(!vec4<bool>(global0.a.x, false, global0.a.x, true))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-global0.d.x), global0.d.x, var_0.c.d.x);
    let var_2 = var_0;
    var var_3 = !(!any(global0.a));
    var var_4 = var_2.c;
    let var_5 = countOneBits(countOneBits(vec3<u32>(var_2.b, ~62173u, select(1u, _wgslsmith_sub_u32(0u, u_input.b.x), all(vec3<bool>(false, false, var_0.c.a.x))))));
    let var_6 = func_1(!(!(!(!vec4<bool>(false, false, var_0.e.x, true))))).d;
    var_3 = true;
    var var_7 = var_4.d.xx;
    let x = u_input.a;
    s_output = StorageBuffer(min(abs(countOneBits(func_1(vec4<bool>(global0.a.x, var_4.a.x, var_4.a.x, global0.a.x)).c.b.yx)), -_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -24577i), vec2<i32>(u_input.a, var_2.c.b.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(max(u_input.b.zzz, var_5), !var_0.e.x)))), -38397i);
}

