struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 30>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> u32 {
    global0 = array<vec4<i32>, 30>();
    let var_0 = vec3<bool>(u_input.c != 1u, !any(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true);
    var var_1 = abs(abs(~(~(vec3<u32>(u_input.d, 20268u, 28326u) ^ vec3<u32>(u_input.d, 4294967295u, u_input.c)))));
    let var_2 = -u_input.b.x;
    global0 = array<vec4<i32>, 30>();
    return 35684u;
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = Struct_1(vec2<u32>(0u, 1u));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-602f, 1000f)), _wgslsmith_f_op_f32(1100f - 169f)), -1589f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -912f) - _wgslsmith_f_op_f32(min(593f, 406f))), _wgslsmith_f_op_f32(f32(-1f) * -1657f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(2707f, 440f, -312f, -296f), vec4<f32>(355f, -463f, 822f, 554f))))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -448f) * _wgslsmith_f_op_f32(-220f + -1392f)), 1f, -814f, _wgslsmith_f_op_f32(-625f * -1459f)))));
    let var_2 = vec3<u32>(~(~1u), 1u, ~abs(82880u));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(734f, 485f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x) + _wgslsmith_f_op_f32(abs(-245f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, var_1.x, -1270f, 651f), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x))) + _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -1153f, var_1.x, 220f), vec4<f32>(-1725f, var_1.x, var_1.x, var_1.x)))))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(var_1.x * var_1.x), var_1.x, _wgslsmith_div_f32(var_1.x, -910f), _wgslsmith_f_op_f32(f32(-1f) * -453f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1234f, -419f, -677f, var_1.x))))))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(floor(-448f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2017f)))), -738f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-310f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -142f) * _wgslsmith_f_op_f32(sign(var_1.x))), !(u_input.a == u_input.b.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1497f))));
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>) -> u32 {
    let var_0 = select(1u, 7475u, !all(vec3<bool>(any(vec3<bool>(true, true, false)), func_3(9233i), true)));
    let var_1 = Struct_1(~arg_1);
    var var_2 = false;
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-226f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(337f)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-567f, -1639f, true)))))))));
    let var_4 = abs(vec3<i32>(-_wgslsmith_div_i32(1i << (var_0 % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 25561i, u_input.b.x), vec3<i32>(u_input.a, u_input.a, 2147483647i))), u_input.a, u_input.a));
    return 8578u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~(vec3<i32>(1i, 0i, ~(-1i)) >> (vec3<u32>(func_1(), 1u, func_2(Struct_1(vec2<u32>(0u, 39167u)), vec2<u32>(u_input.c, 35122u))) % vec3<u32>(32u))));
    var var_1 = abs(abs(-(vec3<i32>(u_input.a, u_input.b.x, -2147483647i) | vec3<i32>(1i, -53839i, var_0.x)))) << (select(vec3<u32>(40601u, firstLeadingBit(4294967295u), u_input.d), select(~vec3<u32>(1u, 41179u, u_input.d), abs(vec3<u32>(0u, u_input.c, 22333u)), vec3<bool>(true, false, false)) | _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.c, 20832u, 66678u), select(vec3<u32>(u_input.c, u_input.c, 18716u), vec3<u32>(u_input.c, u_input.c, 31890u), false)), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true))) % vec3<u32>(32u));
    var_1 = -select(~_wgslsmith_clamp_vec3_i32(~vec3<i32>(-929i, var_1.x, var_0.x), firstLeadingBit(vec3<i32>(38490i, 4574i, 74896i)), vec3<i32>(var_1.x, -50261i, 2147483647i) ^ vec3<i32>(1i, -21833i, u_input.b.x)), vec3<i32>(~var_0.x << (u_input.c % 32u), _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, var_0.x, 2147483647i), vec3<i32>(15223i, u_input.b.x, var_0.x)), var_0.x), func_3(~(-1913i)) == true);
    var_1 = ~_wgslsmith_mod_vec3_i32(~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.b.x, u_input.a), vec3<i32>(var_1.x, -2147483647i, var_1.x)), u_input.b.x, u_input.b.x), vec3<i32>(~u_input.b.x, ~2147483647i, var_0.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-771f, 243f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1130f, -105f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(2235f, -161f))))))));
    var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(abs(_wgslsmith_mod_i32(~var_1.x, reverseBits(17448i))), -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(u_input.b.x, var_0.x)), var_1.x), vec3<i32>(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.b.x, var_0.x), vec3<i32>(-65113i, 1i, var_0.x))), ~6695i, _wgslsmith_add_i32(u_input.a, -2147483647i)) & (vec3<i32>(_wgslsmith_clamp_i32(u_input.b.x, -2433i, 43152i), var_1.x, ~u_input.a) | select(~vec3<i32>(1i, -17725i, var_1.x), vec3<i32>(-1i, 1i, u_input.a), any(vec2<bool>(true, true)))));
    let var_3 = Struct_1(_wgslsmith_mult_vec2_u32(~abs(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(u_input.d, u_input.d))), abs(vec2<u32>(u_input.d, ~1u))));
    var_1 = max(vec3<i32>(-29200i, _wgslsmith_dot_vec2_i32(-_wgslsmith_div_vec2_i32(var_0.xz, vec2<i32>(-20703i, u_input.a)), vec2<i32>(1860i, -2147483647i)), ~(-(var_1.x | u_input.a))), reverseBits(max(firstTrailingBit(vec3<i32>(var_1.x, 1i, u_input.a)) << (~vec3<u32>(1183u, u_input.d, u_input.d) % vec3<u32>(32u)), vec3<i32>(var_0.x, _wgslsmith_mult_i32(-21078i, var_0.x), ~var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -abs(-15973i), ~var_3.a.x, ~(var_1.x >> (23048u % 32u)));
}

