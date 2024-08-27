struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: bool,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 29> = array<vec3<i32>, 29>(vec3<i32>(2147483647i, 0i, 0i), vec3<i32>(-21565i, i32(-2147483648), -25630i), vec3<i32>(-1i, -13946i, 47087i), vec3<i32>(-21874i, -13295i, -1i), vec3<i32>(1i, -1i, -30593i), vec3<i32>(7510i, -56314i, -5166i), vec3<i32>(-1i, -30014i, 2147483647i), vec3<i32>(-33859i, 1i, -1i), vec3<i32>(-10031i, -1i, -1i), vec3<i32>(80783i, -1683i, 6137i), vec3<i32>(0i, 56582i, 101225i), vec3<i32>(-41983i, 43530i, -41818i), vec3<i32>(0i, 0i, 1i), vec3<i32>(-3306i, -18796i, 1i), vec3<i32>(-1i, 16511i, -1i), vec3<i32>(-46838i, -23705i, -3961i), vec3<i32>(43175i, -337i, 2147483647i), vec3<i32>(0i, 32687i, 1i), vec3<i32>(-1i, 1i, -12150i), vec3<i32>(-1i, i32(-2147483648), 1i), vec3<i32>(-26626i, 1i, 0i), vec3<i32>(-5084i, -20927i, -1i), vec3<i32>(43242i, 1i, 1062i), vec3<i32>(1i, -55269i, 1i), vec3<i32>(55852i, 26575i, 17193i), vec3<i32>(i32(-2147483648), 46962i, -1i), vec3<i32>(12848i, 0i, -67874i), vec3<i32>(-12351i, -7194i, -9076i), vec3<i32>(-1i, 0i, -1i));

var<private> global1: f32;

var<private> global2: array<Struct_3, 22>;

var<private> global3: array<u32, 24> = array<u32, 24>(14876u, 37120u, 47510u, 0u, 13277u, 0u, 2540u, 0u, 35570u, 31086u, 6848u, 4294967295u, 33800u, 41711u, 1u, 4294967295u, 0u, 38776u, 4294967295u, 7104u, 4294967295u, 1u, 92701u, 23311u);

var<private> global4: bool = false;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: Struct_4) -> Struct_2 {
    let var_0 = ~select(_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.d, 4260u, ~6533u, _wgslsmith_add_u32(arg_2.d, 58139u)), _wgslsmith_add_vec4_u32(~vec4<u32>(arg_3.b, 51461u, arg_3.b, 24075u), vec4<u32>(global3[_wgslsmith_index_u32(arg_3.b, 24u)], global3[_wgslsmith_index_u32(arg_2.d, 24u)], 1u, 37212u) << (vec4<u32>(arg_3.b, 17465u, arg_3.b, 1u) % vec4<u32>(32u)))), select(vec4<u32>(arg_3.b, global3[_wgslsmith_index_u32(1u, 24u)], 15265u, 24996u), select(vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(arg_2.d, 24u)], 4294967295u, 22602u), vec4<u32>(1219u, arg_3.b, 18018u, 30339u), false), arg_3.d.x) & ~max(vec4<u32>(arg_3.b, 0u, 31339u, arg_3.b), vec4<u32>(4294967295u, 0u, 27511u, 32522u)), false);
    return Struct_2(~countOneBits(~_wgslsmith_mult_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(arg_3.b, 24u)], 50897u, var_0.x), var_0.wzx)));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: bool) -> vec2<f32> {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(442f, _wgslsmith_div_f32(arg_1, arg_1)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 139f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1567f) * _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(max(arg_1, 687f))))), _wgslsmith_f_op_f32(f32(-1f) * -642f));
    let var_1 = ~(-(~arg_0.x));
    global2 = array<Struct_3, 22>();
    var var_2 = false;
    let var_3 = global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 24u)], 24u)];
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), arg_1))), _wgslsmith_f_op_f32(arg_1 - 2700f));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: vec2<f32>) -> u32 {
    let var_0 = ~_wgslsmith_mult_u32((arg_0.d & ~50141u) >> (reverseBits(arg_2.a.x) % 32u), arg_2.a.x);
    let var_1 = Struct_4(global2[_wgslsmith_index_u32(arg_2.a.x, 22u)], ~_wgslsmith_mod_u32(12744u, 4294967295u & select(arg_0.d, arg_0.d, true)), false, select(arg_0.b.xw, !arg_0.b.xx, true));
    let var_2 = countOneBits(~(~_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(arg_2.a.zz, arg_2.a.zx), abs(arg_2.a.zz))));
    global3 = array<u32, 24>();
    let var_3 = select(vec4<i32>(_wgslsmith_dot_vec4_i32(-(vec4<i32>(1i, u_input.a, u_input.a, var_1.a.a.x) << (vec4<u32>(arg_0.d, 27335u, 20681u, 37579u) % vec4<u32>(32u))), -(~vec4<i32>(-26735i, 41131i, 4287i, 2147483647i))), u_input.a, var_1.a.a.x & (~var_1.a.a.x << (firstTrailingBit(16230u) % 32u)), ~0i), (vec4<i32>(firstLeadingBit(32244i), _wgslsmith_mult_i32(1i, var_1.a.a.x), abs(11233i), u_input.a) & (~vec4<i32>(var_1.a.a.x, 0i, u_input.a, -2147483647i) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_1.b, var_0, 35539u), vec4<u32>(4294967295u, var_1.b, 0u, var_1.b)) % vec4<u32>(32u)))) >> (abs(firstLeadingBit(~vec4<u32>(var_0, 0u, 2047u, 0u))) % vec4<u32>(32u)), any(select(!arg_0.b.zyx, !(!vec3<bool>(true, arg_0.b.x, true)), select(vec3<bool>(false, false, arg_1), !arg_0.b.wxx, vec3<bool>(var_1.c, true, arg_1)))));
    return global3[_wgslsmith_index_u32(~(~(~var_0)), 24u)];
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    global2 = array<Struct_3, 22>();
    let var_0 = -1i;
    let var_1 = Struct_2(vec3<u32>(45765u >> (1u % 32u), global3[_wgslsmith_index_u32(min(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~arg_1.a.x, 24u)], 24u)]), 24u)], _wgslsmith_sub_u32(func_4(arg_0, true, func_2(true, u_input.a, arg_0, Struct_4(Struct_3(vec3<i32>(1i, u_input.a, -1i)), arg_1.a.x, true, arg_0.b.yy)), _wgslsmith_f_op_vec2_f32(func_3(vec2<i32>(var_0, var_0), -488f, arg_0.c))), 1u)));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-830f, arg_0.a, -496f, 401f), vec4<f32>(974f, arg_0.a, -1963f, arg_0.a)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a, 1698f, 783f, -1099f), vec4<f32>(724f, 434f, -1061f, 248f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.a, 1000f, arg_0.a, -1161f))))))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(701f, arg_0.a, -918f, 150f)))) + vec4<f32>(arg_0.a, 1000f, _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_div_f32(-595f, -509f))), vec4<f32>(-102f, _wgslsmith_f_op_f32(120f * _wgslsmith_f_op_f32(exp2(arg_0.a))), _wgslsmith_f_op_f32(1402f * _wgslsmith_f_op_f32(1422f - 1926f)), arg_0.a), _wgslsmith_sub_u32(arg_1.a.x, arg_0.d) <= ~(~0u))));
    return var_1.a.x;
}

fn func_5(arg_0: u32, arg_1: vec4<bool>) -> bool {
    global0 = array<vec3<i32>, 29>();
    let var_0 = vec3<bool>(all(arg_1.xy), true, false);
    let var_1 = -6819i & _wgslsmith_mod_i32(_wgslsmith_add_i32(-39029i, _wgslsmith_add_i32(0i, u_input.a) ^ min(19894i, 14117i)), -1i);
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-869f, 453f))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(max(-162f, 870f)), _wgslsmith_f_op_vec2_f32(func_3(vec2<i32>(37139i, -15187i), 147f, var_0.x)).x))))));
    let var_3 = vec4<bool>(arg_1.x, !var_0.x, !(!all(arg_1.yxx)), (_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 12341i), vec2<i32>(u_input.a, var_1)) <= ~u_input.a) && true);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1291f, _wgslsmith_f_op_f32(255f - 383f))), -468f));
    let var_1 = select(select(vec3<bool>(true, true, true), select(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, false, true), _wgslsmith_mod_i32(2147483647i, u_input.a) >= -u_input.a), vec3<bool>(!any(vec3<bool>(false, true, false)), -u_input.a > select(u_input.a, 32671i, false), !any(vec2<bool>(false, true)))), vec3<bool>(func_5(func_1(Struct_1(var_0, vec4<bool>(true, true, false, true), true, 1u), Struct_2(vec3<u32>(global3[_wgslsmith_index_u32(31070u, 24u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(14370u, 24u)], 24u)], 24u)], 24u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(22383u, 24u)], 24u)]))), vec4<bool>(true, any(vec3<bool>(true, false, true)), 15017u > global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(41399u, 24u)], 24u)], true)), !func_5(1u, vec4<bool>(true, true, true, true)), func_5(71116u, !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false)))), !any(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(false, true, true, false), true)));
    var var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(abs(-38853i << (firstLeadingBit(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(99646u, 24u)], 24u)]) % 32u)), firstTrailingBit(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-1i, 1i, 47339i)), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, -41026i, u_input.a), global0[_wgslsmith_index_u32(4294967295u, 29u)])))), _wgslsmith_mult_vec2_i32(~vec2<i32>(_wgslsmith_div_i32(2147483647i, -2147483647i), -2147483647i), reverseBits(vec2<i32>(u_input.a, u_input.a))));
    let var_3 = Struct_4(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 24u)], 22u)], global3[_wgslsmith_index_u32(~(func_4(Struct_1(-1049f, vec4<bool>(var_1.x, false, false, var_1.x), var_1.x, 0u), var_1.x, Struct_2(vec3<u32>(0u, 1u, 61435u)), _wgslsmith_div_vec2_f32(vec2<f32>(var_0, -825f), vec2<f32>(1179f, -281f))) | func_4(Struct_1(1000f, vec4<bool>(var_1.x, false, false, true), var_1.x, 4294967295u), false, func_2(false, -24627i, Struct_1(-1000f, vec4<bool>(var_1.x, true, true, true), var_1.x, global3[_wgslsmith_index_u32(12124u, 24u)]), Struct_4(Struct_3(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 24u)], 24u)], 24u)], 29u)]), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], var_1.x, var_1.xy)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1407f, -272f) + vec2<f32>(var_0, 444f)))), 24u)], true, select(var_1.zx, !vec2<bool>(!var_1.x, true), true));
    let var_4 = var_3.a;
    let var_5 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-417f, var_0, true))))))), !select(vec4<bool>(var_1.x, all(var_3.d), true, var_0 == var_0), vec4<bool>(var_3.d.x | true, var_3.d.x, true, !var_3.d.x), !vec4<bool>(var_3.c, true, true, true)), false, _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 1u, 4294967295u), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 18551u, 60659u), vec3<u32>(global3[_wgslsmith_index_u32(1u, 24u)], global3[_wgslsmith_index_u32(0u, 24u)], global3[_wgslsmith_index_u32(0u, 24u)]))), min(vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 24u)], 1u, global3[_wgslsmith_index_u32(23161u, 24u)]), func_2(false, -6256i, Struct_1(var_0, vec4<bool>(true, true, true, var_1.x), false, 29258u), Struct_4(var_4, global3[_wgslsmith_index_u32(32437u, 24u)], false, vec2<bool>(false, var_1.x))).a))));
    var var_6 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(select(firstTrailingBit(var_4.a.xy), abs(~vec2<i32>(var_3.a.a.x, var_2.x)), vec2<bool>(true, all(var_6.b.wy))), vec2<i32>(1i, ~var_2.x)), ~var_3.a.a, vec4<u32>(0u >> (func_2(var_1.x, var_3.a.a.x, var_5, Struct_4(Struct_3(var_3.a.a), var_6.d, false, var_5.b.wx)).a.x % 32u), ~35518u | reverseBits(global3[_wgslsmith_index_u32(74423u, 24u)]), var_6.d, ~(var_3.b & 51858u)) >> (countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(var_6.d, var_6.d, 17018u, global3[_wgslsmith_index_u32(46267u, 24u)]), vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 24u)], global3[_wgslsmith_index_u32(var_5.d, 24u)], global3[_wgslsmith_index_u32(4294967295u, 24u)], 1u)) << (_wgslsmith_add_vec4_u32(vec4<u32>(var_6.d, 13754u, 38218u, 1u), vec4<u32>(1u, var_3.b, 0u, global3[_wgslsmith_index_u32(93845u, 24u)])) % vec4<u32>(32u))) % vec4<u32>(32u)), min(_wgslsmith_dot_vec3_u32(~(vec3<u32>(24623u, var_5.d, global3[_wgslsmith_index_u32(var_5.d, 24u)]) | vec3<u32>(var_3.b, 0u, global3[_wgslsmith_index_u32(var_3.b, 24u)])), vec3<u32>(var_5.d, 1u >> (var_6.d % 32u), var_3.b << (var_3.b % 32u))), var_6.d));
}

