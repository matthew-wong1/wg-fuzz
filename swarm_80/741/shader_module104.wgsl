struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<u32>, 7>;

var<private> global2: array<vec2<bool>, 2> = array<vec2<bool>, 2>(vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global3: vec4<u32> = vec4<u32>(1u, 39777u, 0u, 16115u);

var<private> global4: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(true), Struct_3(false), Struct_3(true), Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(false), Struct_3(false), Struct_3(true), Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(true), Struct_3(true));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_4, arg_3: vec2<u32>) -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(arg_1.b.c.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d.x)))), _wgslsmith_f_op_f32(ceil(-878f)));
    global3 = arg_1.a.e;
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1068f, -1030f, -1004f, var_0.x))) - arg_2.d)), vec4<f32>(var_0.x, 890f, arg_1.a.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-372f - arg_1.a.c.x), -457f)));
    var var_2 = true;
    global1 = array<vec2<u32>, 7>();
    return arg_2.b.a.a.x;
}

fn func_2() -> i32 {
    global2 = array<vec2<bool>, 2>();
    global4 = array<Struct_3, 19>();
    let var_0 = Struct_1(_wgslsmith_add_vec4_u32(abs(~(~vec4<u32>(0u, u_input.b.x, u_input.b.x, 31713u))), vec4<u32>(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(361f, 100f) * vec2<f32>(-1392f, 563f)), Struct_2(Struct_1(vec4<u32>(global3.x, 1u, 11892u, global3.x), vec2<i32>(-1i, u_input.a), vec2<f32>(-1000f, -1845f), vec2<i32>(61917i, u_input.a), vec4<u32>(3036u, u_input.b.x, 52421u, global3.x)), Struct_1(vec4<u32>(0u, u_input.b.x, global3.x, global3.x), vec2<i32>(u_input.a, 9194i), vec2<f32>(-455f, 461f), vec2<i32>(u_input.a, u_input.a), vec4<u32>(u_input.b.x, 1u, global3.x, 25596u)), global3.x), Struct_4(vec4<bool>(true, false, true, true), Struct_2(Struct_1(vec4<u32>(global3.x, global3.x, 77273u, u_input.b.x), vec2<i32>(-17807i, u_input.a), vec2<f32>(-2027f, -595f), vec2<i32>(-4567i, u_input.a), vec4<u32>(1u, 4294967295u, u_input.b.x, global3.x)), Struct_1(vec4<u32>(62772u, u_input.b.x, 88024u, global3.x), vec2<i32>(u_input.a, 33128i), vec2<f32>(-529f, 111f), vec2<i32>(u_input.a, -16670i), vec4<u32>(u_input.b.x, global3.x, 1u, u_input.b.x)), global3.x), Struct_1(vec4<u32>(49785u, global3.x, 1u, 1u), vec2<i32>(-42622i, u_input.a), vec2<f32>(-1728f, -1104f), vec2<i32>(u_input.a, 779i), vec4<u32>(global3.x, 0u, 0u, 70791u)), vec4<f32>(-1000f, 720f, -1408f, -784f)), global3.yx), 1u, 6374u, global3.x)), vec2<i32>(-21801i, -1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1151f, -832f), vec2<f32>(-1000f, -1870f)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(364f, 550f)))) + vec2<f32>(1540f, _wgslsmith_f_op_f32(min(-896f, 827f)))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-562f, 176f) + vec2<f32>(464f, -242f))), vec2<f32>(-578f, _wgslsmith_f_op_f32(f32(-1f) * -1250f))))), vec2<i32>(u_input.a, 1i), vec4<u32>(select(~firstLeadingBit(0u), global3.x, true), ~(~2514u), 0u, firstTrailingBit(30602u)));
    var var_1 = Struct_2(Struct_1(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(var_0.e, _wgslsmith_mult_vec4_u32(var_0.a, var_0.a)), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, global3.x, u_input.b.x, u_input.b.x), vec4<u32>(var_0.e.x, 52706u, 14904u, 1u)), ~var_0.e)), _wgslsmith_mod_vec2_i32(vec2<i32>(-30169i, _wgslsmith_clamp_i32(u_input.a, u_input.a, -34147i)), vec2<i32>(-13178i, _wgslsmith_add_i32(var_0.d.x, var_0.d.x))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, var_0.c.x))), -firstLeadingBit(vec2<i32>(0i, var_0.d.x)), vec4<u32>(46380u & global3.x, 1u, global3.x, u_input.b.x) >> (~vec4<u32>(global3.x, 0u, var_0.e.x, global3.x) % vec4<u32>(32u))), Struct_1(var_0.e, vec2<i32>(-57290i, ~(u_input.a ^ 32297i)), var_0.c, var_0.b, _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.e.x, var_0.a.x, u_input.b.x, u_input.b.x), firstTrailingBit(vec4<u32>(4294967295u, u_input.b.x, 0u, 72786u))), firstLeadingBit(_wgslsmith_add_vec4_u32(var_0.a, vec4<u32>(u_input.b.x, 1020u, u_input.b.x, var_0.a.x))))), 92140u);
    global4 = array<Struct_3, 19>();
    return u_input.a;
}

fn func_1(arg_0: i32) -> vec2<i32> {
    var var_0 = -10508i;
    global1 = array<vec2<u32>, 7>();
    let var_1 = false;
    let var_2 = _wgslsmith_mod_i32(func_2(), arg_0 | select(~(-1i), -u_input.a & (arg_0 << (41719u % 32u)), false));
    global3 = _wgslsmith_add_vec4_u32(abs(vec4<u32>(~u_input.b.x, 29685u, _wgslsmith_mod_u32(1u, 49621u), _wgslsmith_div_u32(_wgslsmith_clamp_u32(global3.x, 25908u, u_input.b.x), ~23268u))), ~vec4<u32>(10455u, 3241u, u_input.b.x, u_input.b.x));
    return vec2<i32>(u_input.a >> (23584u % 32u), _wgslsmith_add_i32(firstLeadingBit(-reverseBits(18385i)), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(4294967295u, ~global3.x);
    global4 = array<Struct_3, 19>();
    var var_1 = Struct_1(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 4294967295u) >> (vec4<u32>(global3.x, 4626u, u_input.b.x, 1u) % vec4<u32>(32u)), ~vec4<u32>(8977u, 12735u, u_input.b.x, u_input.b.x), vec4<u32>(1u, u_input.b.x, global3.x, 0u))) << (~(~vec4<u32>(4294967295u, u_input.b.x, 94188u, 94327u)) % vec4<u32>(32u)), select(-abs(vec2<i32>(u_input.a, -1i)), -_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -13973i)), vec2<bool>(true, true)) >> (vec2<u32>(_wgslsmith_mult_u32(reverseBits(var_0.x), 1u), ~(~91822u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1055f, -428f) + vec2<f32>(2386f, 981f))))))), -func_1(_wgslsmith_div_i32(-u_input.a, ~u_input.a)), _wgslsmith_div_vec4_u32(~_wgslsmith_add_vec4_u32(min(vec4<u32>(11599u, var_0.x, var_0.x, 0u), vec4<u32>(u_input.b.x, 4294967295u, 20018u, var_0.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(19694u, u_input.b.x, 4294967295u, u_input.b.x), vec4<u32>(75727u, var_0.x, u_input.b.x, 1u))), vec4<u32>(u_input.b.x & 4855u, ~4294967295u << (0u % 32u), countOneBits(~1u), 14570u)));
    var_1 = Struct_1(_wgslsmith_mult_vec4_u32(var_1.a, ~(~vec4<u32>(1u, 0u, 60350u, 4294967295u))), _wgslsmith_sub_vec2_i32(var_1.b, var_1.b), _wgslsmith_f_op_vec2_f32(var_1.c + var_1.c), vec2<i32>(~_wgslsmith_mod_i32(_wgslsmith_mod_i32(1i, 8410i), ~18939i), -3715i), select(~(~var_1.a >> (vec4<u32>(4294967295u, 0u, var_1.e.x, u_input.b.x) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(~var_1.a, vec4<u32>(var_1.a.x << (0u % 32u), abs(4294967295u), ~75036u, _wgslsmith_mod_u32(38194u, u_input.b.x)), max(~var_1.a, ~vec4<u32>(var_0.x, u_input.b.x, var_0.x, var_1.a.x))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(global2[_wgslsmith_index_u32(24566u, 2u)]))));
    global4 = array<Struct_3, 19>();
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(133f, 1367f)))) + var_1.c.x), _wgslsmith_f_op_f32(abs(1468f)), var_1.c.x, var_1.c.x);
    var_0 = countOneBits(vec2<u32>(global3.x, 0u));
    var var_3 = Struct_4(vec4<bool>(true, true, true, true), Struct_2(Struct_1(var_1.e, -max(vec2<i32>(-55877i, -2147483647i), vec2<i32>(-1i, -4186i)), _wgslsmith_f_op_vec2_f32(var_2.wx - var_2.xz), var_1.b >> (~global3.ww % vec2<u32>(32u)), abs(vec4<u32>(89412u, global3.x, 8933u, 1u))), Struct_1(_wgslsmith_mult_vec4_u32(~vec4<u32>(global3.x, 30351u, var_0.x, var_1.e.x), vec4<u32>(26865u, 22609u, 1u, 45029u)), vec2<i32>(~var_1.d.x, _wgslsmith_div_i32(var_1.b.x, var_1.d.x)), var_2.xx, -var_1.b, vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 72480u), vec2<u32>(u_input.b.x, var_1.a.x)), ~6843u, func_3(vec2<f32>(var_1.c.x, 2073f), Struct_2(Struct_1(vec4<u32>(var_1.a.x, 52976u, u_input.b.x, 18521u), var_1.d, vec2<f32>(var_2.x, 244f), vec2<i32>(var_1.d.x, -1i), var_1.a), Struct_1(var_1.a, vec2<i32>(-54989i, 2147483647i), var_2.ww, vec2<i32>(-29831i, u_input.a), vec4<u32>(var_1.e.x, var_0.x, u_input.b.x, 8595u)), var_1.a.x), Struct_4(vec4<bool>(true, true, true, false), Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, u_input.b.x, u_input.b.x), vec2<i32>(-1i, 0i), vec2<f32>(-1494f, 890f), vec2<i32>(u_input.a, u_input.a), vec4<u32>(var_1.e.x, global3.x, u_input.b.x, var_0.x)), Struct_1(vec4<u32>(1u, u_input.b.x, 52068u, var_1.e.x), var_1.d, vec2<f32>(var_1.c.x, 373f), vec2<i32>(u_input.a, var_1.b.x), var_1.e), var_1.a.x), Struct_1(var_1.a, vec2<i32>(var_1.d.x, u_input.a), var_2.zz, vec2<i32>(2147483647i, -2147483647i), var_1.a), vec4<f32>(var_2.x, -219f, -1996f, -362f)), vec2<u32>(13571u, var_0.x)), ~u_input.b.x)), 11870u), Struct_1(~vec4<u32>(var_1.e.x, _wgslsmith_div_u32(1u, 4294967295u), countOneBits(var_1.a.x), 1u), firstLeadingBit(vec2<i32>(-760i, var_1.d.x)) & max(var_1.d ^ vec2<i32>(-1598i, -97032i), vec2<i32>(var_1.d.x, 2147483647i)), vec2<f32>(1157f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2139f - -719f) - _wgslsmith_f_op_f32(step(var_2.x, var_2.x)))), _wgslsmith_sub_vec2_i32(var_1.d >> ((vec2<u32>(0u, 58399u) | global3.wx) % vec2<u32>(32u)), vec2<i32>(reverseBits(2430i), -1i)), _wgslsmith_add_vec4_u32(max(select(vec4<u32>(global3.x, var_1.a.x, 15341u, 4294967295u), vec4<u32>(28189u, 4294967295u, global3.x, 4284u), vec4<bool>(true, true, false, false)), var_1.e), var_1.a)), vec4<f32>(129f, _wgslsmith_f_op_f32(f32(-1f) * -2052f), _wgslsmith_f_op_f32(f32(-1f) * -840f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.x * var_2.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-107f, 1u);
}

