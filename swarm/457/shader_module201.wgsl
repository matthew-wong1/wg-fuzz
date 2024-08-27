struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 6>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: f32) -> bool {
    var var_0 = select(_wgslsmith_mult_i32(-arg_1.c.c.x, _wgslsmith_clamp_i32(u_input.b, 2147483647i, arg_1.c.c.x)), u_input.a, all(select(select(!arg_1.c.a, global0[_wgslsmith_index_u32(arg_2.x, 6u)], true), select(global0[_wgslsmith_index_u32(0u, 6u)], select(global0[_wgslsmith_index_u32(u_input.c, 6u)], global0[_wgslsmith_index_u32(20022u, 6u)], vec4<bool>(false, arg_1.c.a.x, arg_1.c.b, arg_1.c.a.x)), !vec4<bool>(arg_1.c.b, true, false, arg_1.c.b)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.c, 32997u), 6u)])));
    let var_1 = vec3<i32>(arg_1.c.c.x, -30181i, _wgslsmith_sub_i32((u_input.b & 1i) << (firstTrailingBit(~4294967295u) % 32u), 2147483647i));
    let var_2 = Struct_4(var_1.x, arg_1, Struct_1(select(!vec4<bool>(arg_1.c.b, arg_1.c.b, true, false), select(vec4<bool>(arg_1.c.a.x, arg_1.c.a.x, arg_1.c.a.x, true), arg_1.c.a, !vec4<bool>(arg_1.c.b, arg_1.c.a.x, true, arg_1.c.a.x)), !arg_1.c.a.x), all(select(vec2<bool>(arg_1.c.b, false), select(vec2<bool>(false, false), arg_1.c.a.wx, arg_1.c.a.x), arg_1.c.a.xw)), arg_1.c.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(arg_1.c.d + arg_1.c.d))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.c.d)))), ~abs(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, arg_1.b.x)), vec2<u32>(1u, u_input.c) >> (vec2<u32>(arg_2.x, 0u) % vec2<u32>(32u)))), arg_1.c);
    global0 = array<vec4<bool>, 6>();
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(792f, 1289f, -122f, arg_3))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(562f, -530f, arg_3, 2067f))), var_2.c.a.x))), countOneBits(~(-vec2<i32>(27647i, var_2.c.c.x)) | _wgslsmith_add_vec2_i32(-var_1.yy, arg_1.c.c.yy)));
    return !arg_1.c.a.x;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<bool>) -> vec3<i32> {
    let var_0 = vec4<u32>(0u, u_input.d.x, 102121u, _wgslsmith_div_u32(u_input.c, ~(u_input.c & (0u >> (0u % 32u)))));
    global0 = array<vec4<bool>, 6>();
    global0 = array<vec4<bool>, 6>();
    let var_1 = Struct_1(!select(select(global0[_wgslsmith_index_u32(~u_input.d.x, 6u)], global0[_wgslsmith_index_u32(u_input.d.x, 6u)], arg_1.x), !(!global0[_wgslsmith_index_u32(29729u, 6u)]), arg_1.x), all(!vec2<bool>(!arg_1.x, arg_1.x)), vec4<i32>(-1i) * -firstTrailingBit(~vec4<i32>(-2147483647i, arg_0.x, u_input.b, arg_0.x)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(abs(1405f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-455f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1269f, -1160f)) * vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-306f, -394f))))));
    global0 = array<vec4<bool>, 6>();
    return vec3<i32>(1i, arg_0.x, _wgslsmith_mult_i32(arg_0.x, 5843i));
}

fn func_2(arg_0: vec4<i32>) -> vec3<f32> {
    let var_0 = true;
    let var_1 = Struct_4(_wgslsmith_dot_vec3_i32(func_4(vec2<i32>(i32(-1i) * -2147483647i, ~(-32588i)), vec3<bool>(func_3(vec4<u32>(u_input.c, 0u, 83661u, u_input.d.x), Struct_2(4294967295u, u_input.d, Struct_1(global0[_wgslsmith_index_u32(1u, 6u)], var_0, arg_0, vec2<f32>(-1214f, -924f))), vec3<u32>(4294967295u, 0u, 20156u), 259f), true, !var_0)), arg_0.ywz), Struct_2(abs(1u), vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 32219u, u_input.c, u_input.c), vec4<u32>(0u, u_input.c, 6726u, 7768u)), u_input.c), Struct_1(vec4<bool>(var_0, true, false, true), var_0, reverseBits(vec4<i32>(-26255i, 32909i, u_input.b, -2147483647i)) & select(vec4<i32>(u_input.a, 2147483647i, arg_0.x, u_input.b), arg_0, var_0), vec2<f32>(640f, _wgslsmith_div_f32(-483f, 1338f)))), Struct_1(global0[_wgslsmith_index_u32(~u_input.d.x, 6u)], true, ~vec4<i32>(~(-1401i), arg_0.x, -u_input.a, -5152i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(513f, -518f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1242f, -1047f) + vec2<f32>(-694f, 203f))))), ~(abs(u_input.d.x) ^ 56961u) << (_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(25519u, u_input.d.x)), vec2<u32>(max(3175u, 116502u), 26851u)) % 32u), Struct_1(select(vec4<bool>(var_0 & false, true, true, var_0), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 65606u), 6u)], vec4<bool>(true, var_0, false, var_0)), var_0, -_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -54280i, 0i, u_input.a), vec4<i32>(arg_0.x, u_input.a, 0i, 884i)) & vec4<i32>(~58226i, -77714i, 2147483647i, arg_0.x), vec2<f32>(_wgslsmith_f_op_f32(1249f * _wgslsmith_f_op_f32(abs(-1000f))), 918f)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(sign(261f)), var_1.e.d.x, _wgslsmith_div_f32(var_1.c.d.x, var_1.e.d.x))))));
}

fn func_1(arg_0: vec2<bool>) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-784f, 376f, 345f), vec3<f32>(-856f, 309f, -894f), vec3<bool>(arg_0.x, arg_0.x, arg_0.x))) * vec3<f32>(572f, -728f, 2508f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(-vec4<i32>(1i, 0i, u_input.b, u_input.b))))));
    let var_1 = abs(reverseBits(u_input.c)) >> (63356u % 32u);
    global0 = array<vec4<bool>, 6>();
    let var_2 = ~firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec2_i32(func_4(vec2<i32>(1792i, -170i), vec3<bool>(false, true, false)).xx, vec2<i32>(u_input.a, u_input.b)), u_input.a, 38878i, 13034i));
    global0 = array<vec4<bool>, 6>();
    return Struct_5(~abs(var_2.zz), u_input.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(select(-422f, var_0.x, false)), 1f, _wgslsmith_f_op_f32(1000f * var_0.x))))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_5) -> vec2<u32> {
    global0 = array<vec4<bool>, 6>();
    let var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(~(-13052i), countOneBits(~_wgslsmith_sub_i32(arg_1.a.x, arg_1.a.x)), ~(~reverseBits(u_input.a)), _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_1.a.x, 11636i, 0i), _wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(arg_0.b.x, arg_1.a.x, arg_0.b.x)), vec3<i32>(u_input.b, -32871i, u_input.a)))), -(vec4<i32>(abs(-31882i), ~arg_1.a.x, ~arg_0.b.x, reverseBits(arg_0.b.x)) ^ vec4<i32>(arg_0.b.x << (62410u % 32u), arg_0.b.x, ~arg_1.a.x, countOneBits(0i))));
    var var_1 = vec4<u32>(arg_1.b.x, ~(~(u_input.c ^ ~16509u)), firstLeadingBit(u_input.c), _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.c, ~abs(4294967295u)), 4294967295u));
    var var_2 = true;
    var var_3 = 12150i;
    return abs(abs(vec2<u32>(~u_input.d.x, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 6>();
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -abs(~vec4<i32>(u_input.b, u_input.a, u_input.b, 0i)), vec4<i32>(_wgslsmith_add_i32(firstTrailingBit(-1i) >> (~u_input.c % 32u), i32(-1i) * -24735i), _wgslsmith_sub_i32(_wgslsmith_div_i32(-1i, u_input.a), -2018i), _wgslsmith_clamp_i32(abs(u_input.b), -31460i, -2147483647i), u_input.b));
    let var_1 = ~15089u ^ countOneBits(u_input.c);
    var var_2 = Struct_2(u_input.d.x, ~func_5(Struct_3(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(476f, 521f, 241f, -1000f))), vec2<i32>(u_input.b, u_input.b)), func_1(vec2<bool>(true, true))), Struct_1(global0[_wgslsmith_index_u32(~1u, 6u)], _wgslsmith_mod_i32(func_4(vec2<i32>(u_input.b, u_input.a), vec3<bool>(true, true, false)).x, 22178i) <= (_wgslsmith_div_i32(-2147483647i, u_input.b) >> (func_1(vec2<bool>(true, true)).b.x % 32u)), vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.b, u_input.a, u_input.a), vec4<i32>(31148i, -33512i, u_input.a, -1i))), _wgslsmith_mult_i32(-1i, u_input.b), reverseBits(41360i), countOneBits(-1i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    var var_3 = Struct_4(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_2.c.c.x | _wgslsmith_div_i32(37563i, var_2.c.c.x), ~u_input.b), -u_input.a, -firstTrailingBit(_wgslsmith_mod_i32(-1i, -11363i))), Struct_2(~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(3304u, u_input.c, 53336u), vec3<u32>(4294967295u, var_2.a, u_input.c)), func_1(vec2<bool>(true, var_2.c.b)).b.x), u_input.d, var_2.c), Struct_1(vec4<bool>(true, !(var_2.c.b && false), all(select(var_2.c.a.xyy, var_2.c.a.xww, var_2.c.a.yyy)), any(!vec4<bool>(var_2.c.b, true, false, true))), true, _wgslsmith_mult_vec4_i32(var_2.c.c, min(firstTrailingBit(vec4<i32>(var_2.c.c.x, var_2.c.c.x, var_2.c.c.x, -53312i)), var_2.c.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_2.c.d)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(550f, var_2.c.d.x) * vec2<f32>(419f, var_2.c.d.x))))), u_input.c, Struct_1(!var_2.c.a, !var_2.c.a.x || var_2.c.b, ~var_2.c.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_2.c.d)) * _wgslsmith_div_vec2_f32(vec2<f32>(-612f, -1625f), vec2<f32>(var_2.c.d.x, var_2.c.d.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c.d.x, -1609f)))));
    var_3 = Struct_4(u_input.b, Struct_2(0u, u_input.d, var_2.c), Struct_1(var_3.c.a, var_3.b.c.a.x, _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.c.c.x, -52624i), vec2<i32>(var_3.c.c.x, u_input.a)), 2147483647i << (var_3.d % 32u), ~u_input.a, _wgslsmith_add_i32(0i, var_3.e.c.x)), var_3.e.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_3.e.d))) + _wgslsmith_f_op_vec2_f32(-var_3.b.c.d))), ~firstTrailingBit(var_1), Struct_1(vec4<bool>(_wgslsmith_f_op_f32(abs(var_2.c.d.x)) > -191f, true, true, var_3.c.b), true == var_2.c.b, ~vec4<i32>(var_2.c.c.x, var_2.c.c.x, reverseBits(var_2.c.c.x), max(-17121i, var_3.c.c.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.c.d + vec2<f32>(-220f, 390f)) * vec2<f32>(var_2.c.d.x, -912f)) * _wgslsmith_f_op_vec2_f32(ceil(var_3.b.c.d)))));
    let var_4 = select(vec2<bool>(true, true), vec2<bool>(var_3.c.b, true), select(!(!select(vec2<bool>(var_3.c.a.x, true), var_2.c.a.zw, var_3.e.a.x)), var_3.b.c.a.ww, var_3.b.c.a.xz));
    var var_5 = Struct_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c.d.x, 513f, 723f, var_3.c.d.x) * vec4<f32>(-215f, 564f, var_3.b.c.d.x, var_2.c.d.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.b.c.d.x, var_3.e.d.x, 1067f, -467f), vec4<f32>(1000f, -1787f, 418f, -553f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1356f, var_3.e.d.x, var_3.c.d.x, -1581f) + vec4<f32>(var_2.c.d.x, 194f, 1586f, var_2.c.d.x))))))), var_2.c.c.zw);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~68105i, ~abs(-1i)), min(_wgslsmith_add_vec2_u32(var_2.b, ~vec2<u32>(4294967295u, 1u) ^ ~var_3.b.b), ~(~func_5(Struct_3(vec4<f32>(377f, 1422f, 738f, var_3.e.d.x), var_3.c.c.xx), Struct_5(var_2.c.c.zy, vec2<u32>(4294967295u, var_1), var_5.a.zxw)))));
}

