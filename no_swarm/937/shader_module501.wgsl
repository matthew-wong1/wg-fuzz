struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    let var_0 = Struct_1(vec3<bool>(false, true, select(true, all(vec2<bool>(false, true)) | false, true)), u_input.a);
    global0 = false;
    global0 = true;
    global0 = _wgslsmith_mod_i32(-_wgslsmith_div_i32(~u_input.b.x, -2147483647i), -(-24328i >> (~var_0.b % 32u))) != u_input.d.x;
    global0 = true;
    return !(!(!var_0.a.x));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: vec3<i32>) -> i32 {
    let var_0 = _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(arg_3, ~vec3<i32>(arg_3.x, arg_3.x, -64335i)), firstLeadingBit(arg_3)), ~vec3<i32>(abs(1i), 10307i, (u_input.d.x ^ u_input.d.x) ^ _wgslsmith_mod_i32(32712i, -2147483647i)));
    global0 = true;
    var var_1 = Struct_1(!select(!select(vec3<bool>(false, false, false), arg_0.a, arg_0.a.x), select(arg_0.a, arg_0.a, vec3<bool>(arg_2, false, false)), func_3()), _wgslsmith_dot_vec4_u32((_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 76781u, u_input.c, 47888u), vec4<u32>(arg_0.b, 64856u, arg_0.b, 1u)) ^ ~vec4<u32>(4294967295u, arg_0.b, u_input.c, arg_0.b)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 1u, arg_0.b, 25021u) >> (vec4<u32>(arg_0.b, 76898u, arg_0.b, 4294967295u) % vec4<u32>(32u)), vec4<u32>(u_input.c, 43993u, arg_0.b, 0u)), ~(~vec4<u32>(1u, u_input.a, 0u, u_input.a))));
    global0 = false && func_3();
    var var_2 = max(~firstLeadingBit(1u), 0u);
    return reverseBits(firstTrailingBit(0i));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: i32, arg_3: bool) -> Struct_1 {
    let var_0 = -func_2(Struct_1(select(vec3<bool>(false, arg_3, arg_3), vec3<bool>(false, true, arg_3), select(true, arg_3, true)), min(arg_1, ~47751u)), -3644f, any(vec4<bool>(true, arg_3, !arg_3, arg_3)), vec3<i32>(arg_0, u_input.e.x, _wgslsmith_add_i32(-arg_2, -arg_2)));
    global0 = all(select(!vec2<bool>(select(false, arg_3, true), all(vec3<bool>(arg_3, false, arg_3))), !(!vec2<bool>(arg_3, false)), -2147483647i <= (-2279i | countOneBits(u_input.e.x))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-448f)))) * 1271f);
    var var_2 = 132f;
    global0 = true;
    return Struct_1(!select(!select(vec3<bool>(false, false, arg_3), vec3<bool>(true, false, arg_3), vec3<bool>(false, arg_3, false)), !vec3<bool>(arg_3, arg_3, true), !select(vec3<bool>(arg_3, false, true), vec3<bool>(true, arg_3, arg_3), vec3<bool>(arg_3, arg_3, false))), arg_1);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1418f, arg_0) + vec2<f32>(arg_0, arg_0)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, 1134f), vec2<f32>(arg_0, arg_0), arg_1.a.yz))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1687f, arg_0) + vec2<f32>(-780f, arg_0))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(682f, arg_0), vec2<f32>(329f, arg_0))))));
    var var_1 = 2356u;
    var var_2 = Struct_1(select(func_1(u_input.e.x, _wgslsmith_add_u32(firstLeadingBit(arg_2.b), arg_2.b), min(u_input.e.x | arg_3, _wgslsmith_dot_vec4_i32(vec4<i32>(-18002i, -49942i, u_input.e.x, -1i), u_input.d)), !(!arg_2.a.x)).a, !arg_2.a, _wgslsmith_sub_u32(0u, ~arg_2.b) >= u_input.c), arg_2.b >> (abs(arg_1.b ^ u_input.a) % 32u));
    let var_3 = true;
    let var_4 = func_1(-arg_3 << (4294967295u % 32u), var_2.b, firstLeadingBit(reverseBits(u_input.d.x)), true & (firstTrailingBit(0u) == abs(arg_2.b)));
    return Struct_1(var_4.a, 45191u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-839f, -1358f, false)), 149f, -267f) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -209f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-491f + 1172f))), _wgslsmith_f_op_f32(-1f)));
    let var_1 = -1000f;
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1, var_1)))), _wgslsmith_f_op_f32(162f - _wgslsmith_f_op_f32(abs(1433f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1137f, _wgslsmith_f_op_f32(max(-1220f, var_0.x)), true)), -346f, false))) + vec3<f32>(_wgslsmith_f_op_f32(step(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(360f + var_1) + _wgslsmith_div_f32(var_1, 139f)))), var_0.x, var_1));
    var var_2 = Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(true, false)), true, true), -u_input.d.x > ~u_input.d.x), min(~u_input.c, 128u));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1 * -755f))))), var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-442f)) - _wgslsmith_f_op_f32(round(-1601f))) + var_0.x), _wgslsmith_f_op_f32(-var_1)));
    let var_3 = ~u_input.e.x;
    let var_4 = func_4(var_0.x, func_1(_wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-15987i, 21741i), _wgslsmith_clamp_i32(-20536i, 1i, u_input.b.x)), var_3), 4294967295u, var_3, any(var_2.a.xz)), func_1(u_input.d.x, 15964u, _wgslsmith_clamp_i32((u_input.e.x << (0u % 32u)) & (var_3 & u_input.d.x), _wgslsmith_mult_i32(var_3, -63313i), -91169i), var_2.a.x), abs(-10509i));
    var_0 = vec3<f32>(_wgslsmith_div_f32(518f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, var_0.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1, var_1)) * -196f))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1, var_1)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~var_3, min(0i, -u_input.d.x), var_3, _wgslsmith_add_i32(var_3, _wgslsmith_mod_i32(abs(var_3), u_input.e.x))), firstLeadingBit(reverseBits(u_input.d.xxy)), _wgslsmith_div_vec3_u32((countOneBits(vec3<u32>(var_4.b, 57502u, u_input.c)) | (vec3<u32>(4294967295u, var_4.b, u_input.c) ^ vec3<u32>(56235u, 1u, u_input.a))) | select(vec3<u32>(38392u, var_4.b, 54371u), ~vec3<u32>(var_2.b, 1u, 53445u), var_2.a.x), ~reverseBits(vec3<u32>(0u, var_2.b, var_2.b))));
}

