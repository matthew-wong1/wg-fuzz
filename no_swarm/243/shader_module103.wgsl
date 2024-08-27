struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 28> = array<vec4<i32>, 28>(vec4<i32>(6813i, 15058i, -26356i, i32(-2147483648)), vec4<i32>(0i, 0i, -25460i, 19453i), vec4<i32>(i32(-2147483648), i32(-2147483648), 14981i, 44430i), vec4<i32>(-6058i, 1i, -1i, -31295i), vec4<i32>(10910i, -10529i, 13i, -1i), vec4<i32>(2147483647i, -1i, 2147483647i, 1i), vec4<i32>(45718i, -326i, 2147483647i, 2147483647i), vec4<i32>(-1i, 0i, -19323i, 2733i), vec4<i32>(-24736i, 1i, -1i, 1i), vec4<i32>(-82677i, -2421i, 40288i, 2147483647i), vec4<i32>(1i, -69135i, -4630i, 7314i), vec4<i32>(1i, -1i, 6894i, 46033i), vec4<i32>(-17593i, -68756i, -15027i, 30006i), vec4<i32>(i32(-2147483648), 0i, -4489i, -22969i), vec4<i32>(14634i, -29244i, 19572i, i32(-2147483648)), vec4<i32>(0i, 87045i, i32(-2147483648), -1i), vec4<i32>(i32(-2147483648), -62635i, 14276i, -1i), vec4<i32>(-7945i, i32(-2147483648), 1i, 4794i), vec4<i32>(-34476i, 26865i, -868i, -50797i), vec4<i32>(-58468i, -38610i, -31032i, 2147483647i), vec4<i32>(-18163i, 57389i, -11651i, 688i), vec4<i32>(0i, 1730i, 0i, -1455i), vec4<i32>(-25917i, 1i, 0i, 45010i), vec4<i32>(31419i, 32099i, -1i, 0i), vec4<i32>(26062i, -11177i, 1i, 1i), vec4<i32>(2147483647i, 25946i, -39146i, -30217i), vec4<i32>(0i, 4033i, -17690i, i32(-2147483648)), vec4<i32>(7913i, i32(-2147483648), -3116i, 18255i));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> u32 {
    var var_0 = all(!select(vec4<bool>(true, all(vec3<bool>(false, false, true)), select(true, false, true), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)));
    return _wgslsmith_div_u32(u_input.e.x & ~25368u, 59879u);
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(~u_input.d.x, u_input.b, firstTrailingBit(40385u), u_input.b & 4294967295u), vec4<u32>(~1u, _wgslsmith_mod_u32(u_input.a.x, 31287u), func_3(), ~u_input.d.x)) >> (_wgslsmith_sub_vec4_u32(select(~vec4<u32>(11278u, 1u, 4294967295u, u_input.e.x), _wgslsmith_mod_vec4_u32(vec4<u32>(31518u, u_input.b, u_input.a.x, u_input.e.x), vec4<u32>(u_input.a.x, 21237u, 4294967295u, 4294967295u)), true), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, u_input.e.x, 16376u, u_input.a.x) << (vec4<u32>(9945u, 1u, u_input.d.x, 1u) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(16066u, u_input.d.x, u_input.b, 33441u)))) % vec4<u32>(32u)), max(firstTrailingBit(abs(~vec4<u32>(4294967295u, 1u, 1u, u_input.d.x))), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.a.x, 0u), vec4<u32>(u_input.e.x, u_input.d.x, u_input.e.x, 1u) ^ vec4<u32>(0u, u_input.a.x, u_input.d.x, 1u), vec4<u32>(35811u, 38005u, 4294967295u, 9886u)), ~(~vec4<u32>(13675u, 43019u, u_input.e.x, 1u)), vec4<u32>(~1u, 35619u, 1u, u_input.a.x))));
    let var_1 = vec4<bool>(true, select(u_input.c > -u_input.c, select(true, true, true), false & any(vec3<bool>(true, true, false))), false, !all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(false, false))));
    var var_2 = 547f;
    let var_3 = vec4<i32>(reverseBits(15723i), arg_0, ~8673i, u_input.c);
    var var_4 = _wgslsmith_clamp_u32(39069u, ~_wgslsmith_div_u32(var_0.x, ~(var_0.x & 4294967295u)), var_0.x);
    return Struct_1(-2147483647i, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-174f, 1f, 521f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(171f)), _wgslsmith_f_op_f32(trunc(-1013f)), _wgslsmith_f_op_f32(floor(420f)))))), _wgslsmith_mod_vec3_i32(abs(var_3.zyz), abs(var_3.xzz & vec3<i32>(-58334i, u_input.c, 0i))) ^ var_3.wwx, var_3.x);
}

fn func_1(arg_0: i32) -> vec3<f32> {
    global0 = array<vec4<i32>, 28>();
    global0 = array<vec4<i32>, 28>();
    let var_0 = func_2(abs(12902i));
    global0 = array<vec4<i32>, 28>();
    global0 = array<vec4<i32>, 28>();
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-1i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1737f, -1608f, 1084f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2358f, 431f, -813f), vec3<f32>(195f, 792f, 1985f), false)), vec3<bool>(true, true, true))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(u_input.c)))), vec3<i32>(countOneBits(countOneBits(u_input.c) & 1i), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(-1i, u_input.c), -vec2<i32>(u_input.c, 24498i)), ~vec2<i32>(2147483647i, -1i)), u_input.c), _wgslsmith_div_i32(min(u_input.c, _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.c, -2147483647i), -14477i)), -_wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.c, -21765i), _wgslsmith_clamp_i32(u_input.c, u_input.c, 2147483647i))));
    let var_1 = func_2(-var_0.d);
    let var_2 = !select(vec3<bool>(true, !any(vec4<bool>(false, false, true, true)), false), !vec3<bool>(any(vec2<bool>(false, true)), all(vec4<bool>(true, true, true, false)), all(vec2<bool>(true, true))), !vec3<bool>(all(vec3<bool>(true, true, false)), false, true));
    global0 = array<vec4<i32>, 28>();
    var var_3 = var_1.b;
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.zy * var_3.yz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1066f)), _wgslsmith_f_op_f32(var_4.x - var_0.b.x))), ~max(u_input.a.x, u_input.a.x), 1u, vec4<u32>(select(_wgslsmith_div_u32(~49677u, ~0u), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), u_input.d), ~u_input.d.x), var_2.x), 40885u, u_input.e.x, 4294967295u));
}

