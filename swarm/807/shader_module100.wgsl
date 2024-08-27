struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: i32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 9> = array<vec3<bool>, 9>(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false));

var<private> global1: Struct_2;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: bool, arg_3: bool) -> i32 {
    let var_0 = Struct_3(max(arg_0, 3083u), -(~(-_wgslsmith_div_i32(-49966i, 2147483647i))), Struct_1(vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(73424i, -41824i, -21755i, 1i), vec4<i32>(global1.c, global1.c, global1.c, global1.c) << (vec4<u32>(4294967295u, 32225u, 65315u, 28737u) % vec4<u32>(32u))), ~(~1i), -_wgslsmith_add_i32(-27691i, global1.c)), _wgslsmith_div_vec3_u32(vec3<u32>(35265u, 4294967295u, arg_0), vec3<u32>(4294967295u, 0u, arg_0)) & reverseBits(vec3<u32>(global1.a, global1.a, 0u)), global1.d.x), !any(vec4<bool>(all(global0[_wgslsmith_index_u32(arg_0, 9u)]), arg_2, global1.b, true)));
    var var_1 = Struct_1((var_0.c.a >> (firstLeadingBit(var_0.c.b) % vec3<u32>(32u))) | vec3<i32>(var_0.b, select(~1i, global1.c & var_0.b, any(global0[_wgslsmith_index_u32(arg_0, 9u)])), var_0.c.a.x), ~vec3<u32>(var_0.c.b.x, firstLeadingBit(1u), var_0.a), !var_0.d);
    global1 = Struct_2(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2726f))) < 1000f, _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, _wgslsmith_mod_i32(var_0.c.a.x, 1i)), _wgslsmith_sub_vec2_i32((vec2<i32>(global1.c, global1.c) & vec2<i32>(var_1.a.x, 1i)) >> (var_1.b.xy % vec2<u32>(32u)), min(vec2<i32>(var_0.c.a.x, var_1.a.x), ~var_1.a.xx))), !(!vec3<bool>(true, any(vec4<bool>(true, true, false, false)), true)));
    let var_2 = Struct_1((~vec3<i32>(1i, -7239i, var_1.a.x) | vec3<i32>(-2147483647i, 1i >> (0u % 32u), _wgslsmith_sub_i32(var_1.a.x, var_1.a.x))) >> (select(_wgslsmith_sub_vec3_u32(~u_input.e, vec3<u32>(4294967295u, u_input.c, var_0.a) << (vec3<u32>(31008u, 28708u, 58873u) % vec3<u32>(32u))), abs(u_input.e), vec3<bool>(true, !var_1.c, !var_0.d)) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(var_1.b << (u_input.b.wxy % vec3<u32>(32u)), vec3<u32>(1u, u_input.b.x, _wgslsmith_div_u32(~var_1.b.x, _wgslsmith_dot_vec3_u32(var_0.c.b, u_input.b.xwy))), _wgslsmith_div_vec3_u32(vec3<u32>(67939u, _wgslsmith_mod_u32(4294967295u, 29378u), 1u), var_0.c.b)), !var_0.d);
    global1 = Struct_2(~_wgslsmith_dot_vec2_u32(abs(var_2.b.yz), vec2<u32>(var_0.a ^ var_1.b.x, 1u & arg_0)), select(!(var_1.b.x > 4294967295u), true, all(vec2<bool>(false, true))) & select(arg_1, var_1.c, arg_1), 53154i, select(vec3<bool>(!global1.d.x, true, !var_0.c.c & arg_1), vec3<bool>(all(global1.d.zz), true, false), all(vec4<bool>(arg_1, true, false, arg_3)) | var_1.c));
    return firstTrailingBit(26742i);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<f32>) -> vec2<u32> {
    let var_0 = _wgslsmith_clamp_vec4_i32(select(vec4<i32>(global1.c, func_3(global1.a, true, global1.d.x, global1.c < global1.c), -(global1.c ^ 2147483647i), select(global1.c, 18163i, arg_0.x || true)), vec4<i32>(-2147483647i, firstLeadingBit(min(global1.c, 44552i)), -31274i, global1.c), vec4<bool>(true, _wgslsmith_f_op_f32(arg_1.x - arg_1.x) <= _wgslsmith_f_op_f32(floor(arg_1.x)), arg_1.x != 725f, true)), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(~(vec4<i32>(global1.c, -44223i, global1.c, global1.c) ^ vec4<i32>(global1.c, global1.c, global1.c, -41772i)), vec4<i32>(-58841i << (global1.a % 32u), 12100i, ~global1.c, 14129i)), vec4<i32>(_wgslsmith_mult_i32(-4331i, -4079i), firstLeadingBit(global1.c), max(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.c, 2147483647i, 2147483647i, global1.c), vec4<i32>(global1.c, global1.c, global1.c, -74187i))), -(i32(-1i) * -31978i))), (~(-vec4<i32>(7771i, 13888i, -1i, global1.c)) | _wgslsmith_add_vec4_i32(~vec4<i32>(-8700i, 16494i, -2147483647i, 1i), vec4<i32>(42079i, global1.c, global1.c, -26451i))) ^ firstLeadingBit(vec4<i32>(~global1.c, global1.c, -600i, -1i)));
    var var_1 = all(!select(vec2<bool>(any(vec4<bool>(true, arg_0.x, global1.b, false)), global1.b), global1.d.zx, !vec2<bool>(arg_0.x, global1.d.x)));
    global1 = Struct_2(~(~countOneBits(~u_input.c)), all(!arg_0), var_0.x, global0[_wgslsmith_index_u32(global1.a, 9u)]);
    let var_2 = _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(641f + 1205f))), 575f, !global1.b)));
    var var_3 = var_0.xwy;
    return max(~vec2<u32>(u_input.b.x, global1.a), ~u_input.e.xz);
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_1(vec3<i32>(-global1.c, -5828i, -74078i), min(vec3<u32>(_wgslsmith_dot_vec2_u32(func_2(vec2<bool>(false, global1.d.x), vec4<f32>(-1344f, -1788f, -137f, 842f)), u_input.b.xw), (30755u >> (u_input.c % 32u)) << (func_2(global1.d.zx, vec4<f32>(-1184f, 408f, 637f, -237f)).x % 32u), 1u), select(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.a, 29175u), vec2<u32>(u_input.b.x, 1u)), 1u, countOneBits(0u)), firstLeadingBit(u_input.b.xwy), !select(global1.d, vec3<bool>(true, true, false), global1.b))), global1.b);
    let var_1 = 18706u;
    let var_2 = Struct_3(global1.a, 4987i, Struct_1(var_0.a, vec3<u32>(1u, _wgslsmith_clamp_u32(global1.a, _wgslsmith_dot_vec2_u32(u_input.b.zx, vec2<u32>(30048u, u_input.b.x)), 0u << (u_input.c % 32u)), var_0.b.x >> (0u % 32u)), global1.b | true), false && (_wgslsmith_add_i32(func_3(0u, true, true, global1.d.x), _wgslsmith_sub_i32(var_0.a.x, -4229i)) >= 1i));
    global1 = Struct_2(_wgslsmith_add_u32(~_wgslsmith_div_u32(global1.a | 18553u, ~0u), _wgslsmith_mod_u32(countOneBits(12842u), ~var_2.a)), var_0.c, min(abs(1i), -1i), !select(global0[_wgslsmith_index_u32(58609u, 9u)], select(!vec3<bool>(var_2.d, false, false), select(vec3<bool>(false, true, false), global0[_wgslsmith_index_u32(global1.a, 9u)], vec3<bool>(var_0.c, true, true)), !vec3<bool>(false, global1.b, global1.b)), !(!global1.d.x)));
    let var_3 = !var_2.c.c;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = Struct_2(func_2(global1.d.yy, vec4<f32>(_wgslsmith_f_op_f32(ceil(-508f)), _wgslsmith_f_op_f32(sign(596f)), _wgslsmith_f_op_f32(trunc(181f)), _wgslsmith_f_op_f32(round(-807f)))).x, all(global1.d.yx), var_0.c.a.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~(u_input.d >> (var_0.a % 32u)), 0u), ~abs(var_0.c.b.zz)), 9u)]);
    let var_1 = ~var_0.a;
    global0 = array<vec3<bool>, 9>();
    var var_2 = var_0.c;
    var var_3 = 487f;
    var_0 = func_1();
    var var_4 = reverseBits(firstTrailingBit(~var_1));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, ~abs(var_0.c.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + -415f), -1000f), ~_wgslsmith_clamp_vec4_u32(min(vec4<u32>(34855u, var_1, 4294967295u, 81849u), vec4<u32>(4294967295u, 21717u, 4294967295u, global1.a)), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(var_1, global1.a, 0u, u_input.b.x)), ~vec4<u32>(54480u, global1.a, var_0.a, 30174u)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_0.a, 4294967295u, global1.a), u_input.b) >> (~u_input.b % vec4<u32>(32u))), abs(vec4<u32>(~(~13666u), 10469u, ~global1.a, 1u)));
}

