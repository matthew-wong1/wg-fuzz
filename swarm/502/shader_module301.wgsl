struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec4<f32>,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_5, arg_3: Struct_4) -> vec4<i32> {
    let var_0 = _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(~u_input.a.x, ~48378u), u_input.a.x, reverseBits(select(arg_0, 1u, false))), vec3<u32>(1u, 32625u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 22431u, 47660u) ^ u_input.a, vec3<u32>(1u, 37084u, arg_0) ^ vec3<u32>(34466u, u_input.a.x, 86128u)))), vec3<u32>(1u, 4294967295u, ~abs(arg_0) & 1u), u_input.a);
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1096f, arg_3.a, -1004f, 798f)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_3.a, 140f, 1000f, 2321f)))))), vec4<f32>(-1641f, 959f, arg_3.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1556f + _wgslsmith_div_f32(642f, 1279f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_3.a, 1036f)))))));
    let var_2 = ~select(arg_3.b.a.x, _wgslsmith_dot_vec3_i32(firstLeadingBit(arg_3.b.a), vec3<i32>(-arg_1, arg_3.b.a.x, -arg_1)), all(vec4<bool>(arg_2.a == true, arg_2.a || true, false, arg_2.a != false)));
    var var_3 = Struct_2(firstLeadingBit(31864u), 1i, arg_3.b, arg_3.b, Struct_1(arg_3.b.a));
    var var_4 = Struct_3(select(vec2<bool>(_wgslsmith_f_op_f32(round(-121f)) <= -1048f, arg_2.a), !select(select(vec2<bool>(arg_2.a, true), vec2<bool>(arg_2.a, arg_2.a), false), vec2<bool>(true, false), vec2<bool>(arg_2.a, true)), select(!(!vec2<bool>(arg_2.a, arg_2.a)), !select(vec2<bool>(false, arg_2.a), vec2<bool>(true, arg_2.a), false), true)), select(select(select(!vec3<bool>(true, arg_2.a, true), select(vec3<bool>(arg_2.a, true, false), vec3<bool>(arg_2.a, false, true), vec3<bool>(true, arg_2.a, arg_2.a)), any(vec2<bool>(arg_2.a, arg_2.a))), vec3<bool>(true, select(true, arg_2.a, arg_2.a), select(false, false, arg_2.a)), arg_2.a), !(!select(vec3<bool>(arg_2.a, true, arg_2.a), vec3<bool>(true, arg_2.a, false), arg_2.a)), !(!arg_2.a)), var_1, _wgslsmith_mod_i32(min(_wgslsmith_mult_i32(-2147483647i, _wgslsmith_div_i32(var_3.e.a.x, arg_3.b.a.x)), -2147483647i), -12346i), Struct_1(_wgslsmith_sub_vec3_i32(~_wgslsmith_clamp_vec3_i32(arg_3.b.a, var_3.c.a, vec3<i32>(-1i, -2147483647i, arg_1)), vec3<i32>(-12052i, 1i, var_3.b) | select(vec3<i32>(arg_3.b.a.x, arg_1, -1i), vec3<i32>(arg_3.b.a.x, 2147483647i, var_3.b), vec3<bool>(arg_2.a, arg_2.a, false)))));
    return vec4<i32>(-17459i, (min(var_4.d, var_3.e.a.x) | var_3.c.a.x) ^ _wgslsmith_mod_i32(var_4.e.a.x, -37241i), -1i, _wgslsmith_dot_vec4_i32(-firstLeadingBit(-vec4<i32>(1i, var_2, var_4.d, var_4.d)), ~(-vec4<i32>(arg_3.b.a.x, -70327i, -2147483647i, arg_1) << (vec4<u32>(9723u, u_input.a.x, 0u, u_input.a.x) % vec4<u32>(32u)))));
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = reverseBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(func_3(~4294967295u, 0i, Struct_5(false), Struct_4(-878f, Struct_1(vec3<i32>(-5123i, -1i, -5141i)))), vec4<i32>(_wgslsmith_sub_i32(-8540i, 1i), min(-16074i, -38366i), _wgslsmith_mult_i32(-2244i, 1i), ~0i)), select(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_mod_vec4_i32(-vec4<i32>(2147483647i, -1i, 11325i, 28418i), vec4<i32>(1i, 1i, 1i, 1i)), vec4<bool>(all(vec4<bool>(true, false, false, false)), select(true, false, false), any(vec4<bool>(true, true, false, true)), select(false, false, true))), -(firstTrailingBit(vec4<i32>(-2147483647i, -41651i, 1i, -30263i)) & vec4<i32>(1i, 1i, 1i, 1i))));
    let var_1 = vec4<u32>(u_input.a.x, ~arg_0, u_input.a.x, ~_wgslsmith_add_u32(reverseBits(0u), _wgslsmith_clamp_u32(12372u, ~0u, arg_0)));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1374f) * -1581f)))), Struct_1(~(~_wgslsmith_mod_vec3_i32(vec3<i32>(0i, var_0.x, -21127i), vec3<i32>(1i, -10627i, var_0.x)))));
    var var_3 = -vec2<i32>(_wgslsmith_dot_vec2_i32(var_0.ww, var_0.zw), abs(var_0.x));
    let var_4 = _wgslsmith_mod_u32(select(83102u, ~arg_0, all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true))), 4411u) >> (u_input.a.x % 32u);
    return var_2.a;
}

fn func_1(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(func_2(u_input.a.x));
    let var_1 = Struct_3(vec2<bool>(u_input.a.x < ~_wgslsmith_add_u32(4703u, 6196u), !(!select(true, false, false))), vec3<bool>(false, !any(select(vec2<bool>(true, true), vec2<bool>(false, false), false)), any(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-250f)), _wgslsmith_f_op_f32(sign(-102f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-142f + -1460f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-119f - -1426f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 279f)))), firstLeadingBit(arg_0.a.x), arg_0);
    let var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -var_1.e.a.yz, _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, var_1.d), vec2<i32>(arg_0.a.x, arg_0.a.x)), arg_0.a.yz & vec2<i32>(24788i, 2147483647i))) ^ (vec2<i32>(-1i) * -vec2<i32>(-17349i, var_1.d)), -vec2<i32>(-1i, arg_0.a.x));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_1.c.x, 1394f)))), -264f));
    var var_3 = Struct_2(_wgslsmith_add_u32(u_input.a.x, _wgslsmith_sub_u32(54140u, u_input.a.x) & 4294967295u), -(min(-52208i, _wgslsmith_clamp_i32(arg_0.a.x, arg_0.a.x, 16635i)) & arg_0.a.x), Struct_1(-vec3<i32>(~var_1.e.a.x, min(-1i, 35716i), reverseBits(18290i))), Struct_1(var_1.e.a), Struct_1(vec3<i32>(-var_2, 12881i, _wgslsmith_sub_i32(-18638i, arg_0.a.x))));
    return max(~(~_wgslsmith_clamp_vec3_u32(u_input.a, ~u_input.a, ~vec3<u32>(var_3.a, 1u, 51517u))), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(~vec4<u32>(~1338u, u_input.a.x, 1u, _wgslsmith_add_u32(8482u, 66526u)));
    let var_1 = Struct_1(vec3<i32>((0i << (~var_0.x % 32u)) >> (var_0.x % 32u), 1i, -65425i));
    let var_2 = vec4<u32>(_wgslsmith_dot_vec3_u32(~var_0.wzy, _wgslsmith_clamp_vec3_u32(func_1(var_1), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 0u, u_input.a.x), var_0.zzz), ~var_0.xwz)), u_input.a.x, abs(1u), 1u) & vec4<u32>(countOneBits(u_input.a.x), u_input.a.x, _wgslsmith_mod_u32(0u, ~firstLeadingBit(0u)), 4294967295u);
    var_0 = vec4<u32>(~(_wgslsmith_add_u32(u_input.a.x, u_input.a.x << (2087u % 32u)) | firstLeadingBit(17341u)), u_input.a.x, max(~1u, 0u), 199898u);
    var_0 = min(var_2, var_2 >> (~(~var_2) % vec4<u32>(32u)));
    var var_3 = _wgslsmith_add_vec2_i32(vec2<i32>(var_1.a.x | ~firstLeadingBit(4505i), 0i << (abs(var_0.x) % 32u)), vec2<i32>(var_1.a.x << (0u % 32u), var_1.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-319f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-883f, -678f)), 666f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(228f)) * _wgslsmith_f_op_f32(-598f * 477f)), _wgslsmith_f_op_f32(min(480f, _wgslsmith_f_op_f32(f32(-1f) * -562f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(386f, 2380f, -562f, 870f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2941f, -593f, 750f, 902f))), true)))), _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, ~var_0.x)), 1u), abs(firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, var_2.x, var_2.x), var_0.ywz), ~u_input.a.x, _wgslsmith_clamp_u32(var_2.x, var_2.x, 4294967295u), ~26515u))), ~var_1.a ^ (vec3<i32>(-1i) * -var_1.a));
}

