struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 12>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> vec4<i32> {
    global0 = ~(~u_input.a);
    var var_0 = Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true), select(select(vec4<u32>(arg_0, u_input.a, 0u, 31388u), vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(24803u, 12u)], 1847u, global1[_wgslsmith_index_u32(arg_0, 12u)]), vec4<bool>(true, true, true, false)), vec4<u32>(0u, u_input.a, arg_0, u_input.a), vec4<bool>(true, true, true, true))), _wgslsmith_div_i32(-u_input.b, u_input.b), false, Struct_1(vec3<bool>(true, false, true), _wgslsmith_mult_vec4_u32(~vec4<u32>(55327u, global1[_wgslsmith_index_u32(5264u, 12u)], arg_0, 54422u), min(vec4<u32>(arg_0, 1u, 64815u, 1u), vec4<u32>(arg_0, u_input.a, 4294967295u, 1u))))), vec2<i32>(u_input.b, u_input.b));
    global1 = array<u32, 12>();
    let var_1 = !var_0.a.d.a.yx;
    global0 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(~(~u_input.a), firstTrailingBit(arg_0), firstLeadingBit(u_input.a), 0u), _wgslsmith_div_vec4_u32(vec4<u32>(reverseBits(10376u), 48005u, ~global1[_wgslsmith_index_u32(26547u, 12u)], ~global1[_wgslsmith_index_u32(u_input.a, 12u)]), reverseBits(vec4<u32>(var_0.a.d.b.x, 4294967295u, u_input.a, 0u)))), abs(abs(firstLeadingBit(var_0.a.d.b)) >> (vec4<u32>(~u_input.a, 69632u ^ arg_0, _wgslsmith_mod_u32(arg_0, 0u), min(21526u, 0u)) % vec4<u32>(32u))));
    return _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-10711i, _wgslsmith_dot_vec2_i32(var_0.b, var_0.b), firstLeadingBit(u_input.b), max(3560i, 22671i)), vec4<i32>(-u_input.b, 4808i, var_0.b.x, u_input.b)), vec4<i32>(u_input.b, firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(45450i, 44630i, var_0.b.x), vec3<i32>(-2147483647i, -19181i, u_input.b))), countOneBits(max(-1i, var_0.a.b)), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_0.b.x, 1i) & vec3<i32>(0i, -1i, var_0.b.x), reverseBits(vec3<i32>(64449i, var_0.b.x, -15601i))))) << (var_0.a.a.b % vec4<u32>(32u));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_1 = true;
    var var_2 = Struct_2(Struct_1(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(27568u, global1[_wgslsmith_index_u32(u_input.a, 12u)], u_input.a, 0u), vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 12u)], 12u)], 12u)], u_input.a, global1[_wgslsmith_index_u32(4294967295u, 12u)])))), _wgslsmith_dot_vec4_i32(arg_1, arg_1), false, Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(true, true, true)), true, false), vec3<bool>(true, true, true)), ~reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, global1[_wgslsmith_index_u32(u_input.a, 12u)], 0u, 0u), vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(66627u, 12u)], u_input.a, 57923u)))));
    var var_3 = Struct_2(Struct_1(!vec3<bool>(var_2.a.a.x, select(false, false, var_2.a.a.x), true), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 8528u, 0u, u_input.a), var_2.d.b), ~vec4<u32>(1u, global1[_wgslsmith_index_u32(14206u, 12u)], 0u, u_input.a))), abs(~firstTrailingBit(-1i)), false, var_2.a);
    global0 = _wgslsmith_mult_u32(~_wgslsmith_sub_u32(~1u, _wgslsmith_sub_u32(u_input.a, var_2.a.b.x)) >> ((_wgslsmith_div_u32(~var_2.d.b.x, u_input.a >> (u_input.a % 32u)) | ~1u) % 32u), firstLeadingBit(abs(~var_2.a.b.x)) | 4294967295u);
    return var_3.a.b.x;
}

fn func_2(arg_0: f32) -> Struct_2 {
    global1 = array<u32, 12>();
    var var_0 = abs(firstTrailingBit(((u_input.b & u_input.b) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(1u, 12u)], 244u), vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(20772u, 12u)], 8425u)) % 32u)) << (_wgslsmith_add_u32(20927u, 0u) % 32u)));
    global0 = ~(~4294967295u);
    global0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1191f, 627f, _wgslsmith_div_f32(-1308f, 1497f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1767f, -478f, arg_0)))) * vec3<f32>(1000f, arg_0, arg_0)), vec4<i32>(-25480i, -(~u_input.b), u_input.b, 1i) | ~(~func_3(u_input.a)));
    let var_1 = _wgslsmith_f_op_f32(-arg_0);
    return Struct_2(Struct_1(vec3<bool>(true, any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), true)), !(u_input.b >= 2147483647i)), _wgslsmith_add_vec4_u32(~(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 12u)], 4294967295u, u_input.a) ^ vec4<u32>(global1[_wgslsmith_index_u32(12656u, 12u)], u_input.a, 105227u, 1u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 86031u, 4294967295u), vec3<u32>(2713u, u_input.a, u_input.a)), ~1u, ~u_input.a, u_input.a))), _wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.b | 1i, u_input.b), firstLeadingBit(vec2<i32>(-1i) * -vec2<i32>(-2147483647i, u_input.b))), true, Struct_1(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false))), reverseBits(vec4<u32>(~global1[_wgslsmith_index_u32(59477u, 12u)], _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(39435u, 12u)], 0u, 4294967295u), 25809u, 14461u))));
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: vec4<i32>) -> vec2<bool> {
    var var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(154f, 666f)));
    let var_1 = Struct_3(func_2(_wgslsmith_f_op_f32(690f * -323f)), _wgslsmith_add_vec2_i32(arg_1.yx | reverseBits(arg_2.zx), _wgslsmith_mult_vec2_i32(arg_1.yx, countOneBits(vec2<i32>(19183i, 1i)))) << (var_0.a.b.wz % vec2<u32>(32u)));
    let var_2 = vec3<bool>(reverseBits(2147483647i) <= u_input.b, var_0.a.a.x, any(!vec2<bool>(var_1.a.a.a.x, !var_0.c)));
    global0 = var_0.a.b.x;
    global1 = array<u32, 12>();
    return select(!select(vec2<bool>(arg_0 && false, arg_0), var_2.zx, var_2.yy), !func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-809f, -1129f)))).d.a.zx, var_2.yx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a >= abs(4294967295u);
    var var_1 = vec4<u32>(global1[_wgslsmith_index_u32(0u, 12u)], ~min(1u, 12566u), global1[_wgslsmith_index_u32(39991u, 12u)], 56213u);
    let var_2 = vec3<bool>(!any(select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, false))), any(func_1(!all(vec3<bool>(false, true, true)), select(-vec3<i32>(-41991i, -3744i, -3650i), -vec3<i32>(-2147483647i, u_input.b, u_input.b), true), ~abs(vec4<i32>(u_input.b, 25190i, 2147483647i, -8235i)))), ~u_input.b == _wgslsmith_sub_i32(1i, 0i));
    var var_3 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-135f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -745f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * 1599f))) + 576f)));
    global1 = array<u32, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(~(vec4<u32>(10160u, _wgslsmith_div_u32(1u, var_1.x), ~14916u, ~1u) << (~func_2(-633f).d.b % vec4<u32>(32u))), u_input.b, firstLeadingBit((~vec2<u32>(var_1.x, u_input.a) ^ vec2<u32>(16708u, 4294967295u)) << (~min(var_3.a.b.xy, var_3.a.b.zz) % vec2<u32>(32u))), var_1.www);
}

