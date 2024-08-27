struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_3,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 6>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3) -> i32 {
    let var_0 = ~arg_1.b;
    var var_1 = arg_1;
    let var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-271f, var_2.a))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-602f, var_2.a))))));
    let var_4 = abs(vec2<i32>(-13965i, -(~arg_0.x)));
    return -1i;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_5(select(!vec2<bool>(any(vec2<bool>(true, true)), any(vec4<bool>(false, true, true, true))), vec2<bool>(true, !any(vec4<bool>(false, true, false, false))), false), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, 1018f)), _wgslsmith_f_op_f32(min(673f, 1360f))) + 176f), _wgslsmith_add_i32(-u_input.a.x >> (firstTrailingBit(36206u) % 32u), 1i >> (select(18308u, 1u, true) % 32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(118f, -883f, -1971f, 909f), vec4<f32>(-2813f, -837f, 1125f, 336f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(379f, 1616f, 1000f, -662f), vec4<f32>(151f, 1213f, -2373f, -325f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-561f, 192f, -1258f, 1000f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(387f, -231f, 1171f, -662f) - vec4<f32>(594f, 686f, 223f, -669f))))), ~(~abs(~vec4<u32>(1u, 4294967295u, 80684u, 48083u))));
    var var_1 = Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), -min(vec2<i32>(2147483647i, var_0.b.b), u_input.a.wz)), _wgslsmith_sub_i32(~_wgslsmith_div_i32(-1i, var_0.b.b), func_3(u_input.a.wx, var_0.b)), select(~u_input.a.x, _wgslsmith_div_i32(-1i, u_input.a.x), false) & min(0i, abs(var_0.b.b))), var_0.c.x, var_0.b.a);
    global0 = array<vec2<u32>, 6>();
    var var_2 = select(select(!select(!vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), select(vec3<bool>(false, var_0.a.x, var_0.a.x), vec3<bool>(var_0.a.x, var_0.a.x, true), var_0.a.x), true), !vec3<bool>(true, true, var_0.a.x), !(!vec3<bool>(var_0.a.x, false, var_0.a.x))), !vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<bool>(!var_0.a.x, all(vec4<bool>(false, var_0.a.x && false, !var_0.a.x, all(vec3<bool>(true, var_0.a.x, var_0.a.x)))), !select(var_0.a.x, var_0.a.x || true, var_0.d.x == 9810u)));
    var var_3 = vec2<u32>(var_0.d.x, countOneBits(~6560u));
    return Struct_2(_wgslsmith_sub_vec2_u32(var_0.d.xy, _wgslsmith_add_vec2_u32(~global0[_wgslsmith_index_u32(var_3.x, 6u)], global0[_wgslsmith_index_u32(81812u, 6u)])), 21751i, ~(-(max(vec3<i32>(5621i, var_0.b.b, -2147483647i), vec3<i32>(-37300i, -2147483647i, var_0.b.b)) >> (firstLeadingBit(vec3<u32>(0u, 90739u, 62159u)) % vec3<u32>(32u)))), var_0.d.wyz, Struct_1(var_1.a, var_1.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.b)) + _wgslsmith_f_op_f32(-var_0.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.a - var_0.c.x))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: f32, arg_3: Struct_4) -> Struct_1 {
    let var_0 = arg_0.e;
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(abs(334f));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.e.c, _wgslsmith_f_op_f32(-arg_0.e.b)))), arg_1.x);
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -206f);
    return arg_0.e;
}

fn func_1() -> u32 {
    let var_0 = Struct_2(~vec2<u32>(37991u, ~_wgslsmith_mod_u32(1u, 22544u)), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.a, abs(u_input.a)), abs(vec4<i32>(-22254i, 24000i, -45359i, -15987i))), u_input.a), _wgslsmith_mult_vec3_i32(vec3<i32>(firstTrailingBit(min(u_input.a.x, 27054i)), 1i, abs(u_input.a.x) & ~18352i), -_wgslsmith_div_vec3_i32(u_input.a.yzz >> (vec3<u32>(4294967295u, 4294967295u, 34848u) % vec3<u32>(32u)), u_input.a.zww)), ~vec3<u32>(55693u, 1u, _wgslsmith_add_u32(91330u, 1u)), func_4(func_2(), vec3<i32>(~(u_input.a.x ^ -23967i), max(min(-12959i, u_input.a.x), _wgslsmith_dot_vec3_i32(u_input.a.yxy, vec3<i32>(u_input.a.x, -3201i, u_input.a.x))), -(i32(-1i) * -25200i)), -1836f, Struct_4(func_2().e, (u_input.a.x ^ 13513i) >> (min(4294967295u, 4294967295u) % 32u))));
    global0 = array<vec2<u32>, 6>();
    let var_1 = Struct_2(select(~vec2<u32>(1u, var_0.d.x) & vec2<u32>(_wgslsmith_mult_u32(var_0.a.x, var_0.d.x), abs(0u)), var_0.d.xx, true), -2147483647i, ~max(u_input.a.wxy, var_0.c), _wgslsmith_add_vec3_u32(select(_wgslsmith_div_vec3_u32(var_0.d, vec3<u32>(var_0.a.x, 27020u, 4294967295u)), abs(var_0.d | vec3<u32>(1u, 4294967295u, 892u)), !any(vec3<bool>(true, false, false))), vec3<u32>(~var_0.d.x >> (~33088u % 32u), abs(_wgslsmith_div_u32(var_0.d.x, 15374u)), reverseBits(6501u))), Struct_1(abs(vec3<i32>(max(u_input.a.x, 31576i), 1i, var_0.b)), var_0.e.c, -1284f));
    global0 = array<vec2<u32>, 6>();
    var var_2 = vec3<i32>(-(var_1.e.a.x ^ -u_input.a.x), ~var_0.e.a.x, var_0.b);
    return max(_wgslsmith_mult_u32(~(_wgslsmith_dot_vec3_u32(var_1.d, vec3<u32>(var_1.d.x, var_0.a.x, var_1.d.x)) | 47191u), ~(~26834u)), ~(~var_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 6>();
    let var_0 = _wgslsmith_f_op_f32(max(1006f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(587f - -660f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -553f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1688f + -1230f))))));
    var var_1 = false || (_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-4830i, ~u_input.a.x, u_input.a.x), i32(-1i) * -1i) <= ~abs(~0i));
    var var_2 = firstTrailingBit(vec3<u32>(1u, 1u, 1u)) >> (firstLeadingBit(~vec3<u32>(firstTrailingBit(0u), ~9558u, func_1())) % vec3<u32>(32u));
    let var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(func_2().e.c, _wgslsmith_f_op_f32(f32(-1f) * -1082f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-223f, -267f, _wgslsmith_f_op_f32(min(-206f, _wgslsmith_f_op_f32(round(-871f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(var_0, var_0, var_0), vec3<f32>(1528f, -946f, var_0)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.e.b, var_3.e.b, -841f)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(238f, -1276f, 1055f), vec3<f32>(275f, -648f, -164f)))))));
}

