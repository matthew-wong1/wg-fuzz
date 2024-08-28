struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: f32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(509f)) * _wgslsmith_f_op_f32(f32(-1f) * -540f)))), _wgslsmith_f_op_f32(trunc(288f))), vec3<f32>(1274f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1777f - 1083f))), 1753f), select(!select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true))), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), true)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)))));
    let var_1 = ~select(abs(vec3<u32>(84745u, u_input.b, 65870u) ^ vec3<u32>(u_input.d, 21300u, 1u)) ^ ~vec3<u32>(31349u, 1u, u_input.b), vec3<u32>(u_input.b, select(_wgslsmith_clamp_u32(4294967295u, 0u, 52886u), countOneBits(u_input.b), !var_0.c.x), _wgslsmith_add_u32(1u, 1u) | u_input.d), firstLeadingBit(-16135i) == u_input.a);
    var var_2 = !select(var_0.c.yxz, !var_0.c.yyz, select(select(!var_0.c.wwz, var_0.c.zyw, !vec3<bool>(var_0.c.x, false, var_0.c.x)), var_0.c.zwx, vec3<bool>(!var_0.c.x, true, !var_0.c.x)));
    let var_3 = var_0.b.yx;
    global0 = array<Struct_3, 7>();
    return var_1.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: vec2<i32>, arg_3: vec2<f32>) -> vec4<u32> {
    global0 = array<Struct_3, 7>();
    global0 = array<Struct_3, 7>();
    var var_0 = Struct_2(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(1u, select(arg_0.x, u_input.d, true)), 54563u, 4294967295u & func_3(), _wgslsmith_mult_u32(~u_input.d, u_input.b)), vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 38371u) >> (arg_0.xz % vec2<u32>(32u)), vec2<u32>(31748u, 1308u)), 4294967295u, u_input.d)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_3.x)) * -1276f), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(738f, -124f, 1145f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_3.x, 1000f, arg_3.x)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_3.x, 430f, arg_3.x)))), !vec4<bool>(arg_0.x > 76610u, true, true, true)), any(vec2<bool>(true && all(vec2<bool>(false, false)), true)), Struct_1(arg_3.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_3.x, arg_3.x)) - 862f), _wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(floor(arg_3.x))), _wgslsmith_f_op_f32(f32(-1f) * -938f)), vec4<bool>(false, true, any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false)), true)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1476f))), vec3<f32>(_wgslsmith_f_op_f32(sign(arg_3.x)), _wgslsmith_f_op_f32(select(arg_3.x, _wgslsmith_f_op_f32(564f + 1225f), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) * -2062f)), vec4<bool>(true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)), true, true)));
    global0 = array<Struct_3, 7>();
    let var_1 = _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(~(-2147483647i), u_input.a & 0i, i32(-1i) * -4178i, _wgslsmith_div_i32(arg_2.x, arg_2.x)), vec4<i32>(firstLeadingBit(arg_2.x), ~0i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, 1i) ^ arg_2, _wgslsmith_clamp_vec2_i32(vec2<i32>(-28152i, arg_1), u_input.c.yy, u_input.c.xx)), _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_2.x, arg_2.x, -2147483647i, -33893i), ~vec4<i32>(arg_2.x, 0i, -2147483647i, u_input.a)))), select(-_wgslsmith_mod_vec4_i32(abs(vec4<i32>(arg_1, 108899i, 1i, u_input.a)), vec4<i32>(arg_1, arg_1, 0i, u_input.a)), select(vec4<i32>(arg_1, -10959i, _wgslsmith_mod_i32(u_input.a, -1i), 1i), min(vec4<i32>(-1i, 0i, arg_2.x, 1i), vec4<i32>(-38963i, u_input.c.x, u_input.a, arg_2.x) ^ vec4<i32>(arg_1, u_input.c.x, u_input.a, 1351i)), var_0.e.c), !(!vec4<bool>(false, true, var_0.e.c.x, false))));
    return select(firstLeadingBit(~vec4<u32>(1u, var_0.a.x << (var_0.a.x % 32u), u_input.d, 64920u)), vec4<u32>(arg_0.x, _wgslsmith_clamp_u32(57761u, 1u >> (0u % 32u), var_0.a.x), ~4294967295u, 46989u), var_0.b.c.x);
}

fn func_1(arg_0: vec2<bool>) -> vec3<bool> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-349f - _wgslsmith_f_op_f32(-2091f * 1159f)), -1000f);
    let var_1 = u_input.a >> (~0u % 32u);
    var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1215f, 310f), vec2<f32>(var_0.x, var_0.x))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -167f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 1000f) + vec2<f32>(1458f, 928f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-145f, 697f)))))));
    var var_2 = vec4<u32>(1u, abs(_wgslsmith_mod_u32(~49005u & u_input.b, ~u_input.d | 1u)), 4294967295u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~func_2(vec3<u32>(u_input.b, 0u, u_input.b), var_1, vec2<i32>(u_input.a, var_1), vec2<f32>(-873f, var_0.x)), max(abs(vec4<u32>(u_input.b, 4294967295u, u_input.d, 0u)), ~vec4<u32>(7144u, u_input.d, 33934u, 8808u))), u_input.b));
    var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, -743f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, 454f), vec2<f32>(var_0.x, var_0.x), arg_0)))))))));
    return select(vec3<bool>(var_0.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * var_0.x), arg_0.x, true), select(vec3<bool>(false, arg_0.x, !arg_0.x), select(!select(vec3<bool>(false, true, false), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(true, false, arg_0.x)), vec3<bool>(var_0.x <= var_0.x, all(vec4<bool>(arg_0.x, true, arg_0.x, true)), true), true), all(select(!vec4<bool>(true, arg_0.x, arg_0.x, false), !vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(true, true, true, true)))), any(vec4<bool>(!arg_0.x != all(vec2<bool>(arg_0.x, arg_0.x)), all(vec2<bool>(true, false)), !any(vec3<bool>(arg_0.x, false, arg_0.x)), all(select(vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(false, true, !all(select(func_1(vec2<bool>(false, true)), vec3<bool>(false, true, false), func_1(vec2<bool>(false, false)))));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1735f)))) * _wgslsmith_f_op_f32(-307f - _wgslsmith_f_op_f32(f32(-1f) * -795f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -243f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-414f * -612f)))) + -1655f)));
    let var_2 = _wgslsmith_mod_vec2_i32(u_input.c.zy, vec2<i32>(u_input.a, countOneBits(_wgslsmith_div_i32(min(58058i, 20844i), firstTrailingBit(u_input.a)))));
    var var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(-29359i >> (u_input.b % 32u), reverseBits(firstLeadingBit(reverseBits(41779i))), u_input.c.x, _wgslsmith_div_i32(1i, u_input.a)), vec4<i32>(-2147483647i, _wgslsmith_clamp_i32(u_input.c.x & (-2147483647i << (u_input.b % 32u)), var_2.x, _wgslsmith_add_i32(u_input.c.x, _wgslsmith_sub_i32(-1i, 71585i))), ~0i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(var_2.x, 40098i), abs(-1i), _wgslsmith_div_i32(2147483647i, var_2.x)) >> (((22146u >> (u_input.d % 32u)) >> (u_input.d % 32u)) % 32u)));
    let var_4 = Struct_4(select(func_1(var_0.xx).x || var_0.x, any(vec4<bool>(true, true, var_0.x, var_0.x)), ((var_2.x << (u_input.b % 32u)) & 1i) < (abs(-14603i) << (firstTrailingBit(65717u) % 32u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1032f))), -394f, -1000f)), select(true, !(!var_0.x), !var_0.x), _wgslsmith_f_op_f32(round(-560f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-524f, -539f, _wgslsmith_f_op_f32(select(-1618f, 1623f, var_0.x)), -789f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-523f, -1005f, 641f, 756f)))))));
    let var_5 = !func_1(func_1(vec2<bool>(true, var_0.x)).xz);
    let var_6 = Struct_3(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_4.e.x + -386f))), var_4.d, true)), var_4.e.wxz, select(select(vec4<bool>(false, var_4.c, var_0.x, false), select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(var_0.x, false, var_5.x, true), false), vec4<bool>(true, false, var_5.x, var_4.a)), select(select(vec4<bool>(true, false, var_0.x, true), vec4<bool>(var_5.x, false, var_0.x, var_0.x), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, var_4.c, true, false), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_5.x, false, var_0.x, var_5.x)), !vec4<bool>(var_0.x, true, false, var_5.x)), firstTrailingBit(45646u) <= abs(55577u))));
    var var_7 = u_input.d;
    let var_8 = ~(~_wgslsmith_mult_vec4_u32(max(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, u_input.b, 1007u, 85330u), vec4<u32>(4294967295u, 1u, u_input.b, u_input.d), vec4<u32>(u_input.d, 43172u, 1u, 4294967295u)), vec4<u32>(0u, 49975u, 4294967295u, u_input.d)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.d, u_input.b, u_input.d), vec4<u32>(u_input.d, 12798u, 45316u, 1u)) & (vec4<u32>(u_input.b, 4294967295u, 72711u, u_input.d) << (vec4<u32>(11619u, 4294967295u, 35382u, 1u) % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.c.yy, var_6.a.b.x, i32(-1i) * -7921i, -375f, vec3<i32>(u_input.a, u_input.c.x, var_2.x));
}

