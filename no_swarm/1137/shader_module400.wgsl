struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: vec2<f32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec4<bool>(true, false, false, true), 27701u, -1324f, vec2<f32>(-1898f, 1884f)), Struct_1(vec4<bool>(false, true, true, true), 25004u, -373f, vec2<f32>(-675f, -993f)), Struct_1(vec4<bool>(false, true, true, false), 4294967295u, -1000f, vec2<f32>(315f, 191f)), Struct_1(vec4<bool>(false, false, false, false), 4294967295u, 1000f, vec2<f32>(662f, 759f)), Struct_1(vec4<bool>(true, false, false, false), 1u, 1116f, vec2<f32>(886f, 833f)), Struct_1(vec4<bool>(true, false, false, false), 40259u, 1225f, vec2<f32>(-1018f, -1631f)), Struct_1(vec4<bool>(false, true, true, true), 5103u, -1326f, vec2<f32>(-750f, -135f)), Struct_1(vec4<bool>(true, false, false, true), 41359u, 1102f, vec2<f32>(-737f, -184f)), Struct_1(vec4<bool>(true, false, false, true), 0u, -573f, vec2<f32>(436f, 422f)), Struct_1(vec4<bool>(true, false, true, true), 16287u, 150f, vec2<f32>(-670f, 819f)), Struct_1(vec4<bool>(true, true, true, true), 13456u, 166f, vec2<f32>(-1521f, -1000f)), Struct_1(vec4<bool>(true, true, true, true), 1u, 2331f, vec2<f32>(-1000f, 1783f)), Struct_1(vec4<bool>(false, false, false, false), 0u, 563f, vec2<f32>(419f, 573f)), Struct_1(vec4<bool>(false, false, true, false), 18188u, 186f, vec2<f32>(698f, 310f)), Struct_1(vec4<bool>(false, true, true, true), 15649u, 1355f, vec2<f32>(555f, -944f)), Struct_1(vec4<bool>(false, false, true, false), 25587u, -233f, vec2<f32>(-1278f, -467f)), Struct_1(vec4<bool>(true, false, false, false), 1u, -1667f, vec2<f32>(170f, 432f)), Struct_1(vec4<bool>(true, true, true, false), 1u, -226f, vec2<f32>(165f, -1474f)), Struct_1(vec4<bool>(true, true, false, false), 1u, 290f, vec2<f32>(797f, 439f)), Struct_1(vec4<bool>(false, false, true, false), 1u, 523f, vec2<f32>(-1276f, 520f)), Struct_1(vec4<bool>(true, false, false, false), 1u, -895f, vec2<f32>(536f, 190f)));

var<private> global3: vec3<bool>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    let var_0 = any(!vec4<bool>(global3.x, true, all(vec4<bool>(true, global3.x, true, true)), true));
    global3 = !(!vec3<bool>(global3.x & (global1.x <= global1.x), global3.x, true));
    global0 = global1.x;
    let var_1 = ~(~_wgslsmith_add_vec3_u32(~vec3<u32>(52352u, global1.x, global1.x), vec3<u32>(_wgslsmith_div_u32(4294967295u, global1.x), reverseBits(18050u), abs(1u))));
    let var_2 = Struct_1(vec4<bool>(false, false, all(vec3<bool>(var_1.x == global1.x, true, !global3.x)), 18343u >= _wgslsmith_add_u32(1847u, ~var_1.x)), abs(28947u), 423f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(492f, 646f), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-191f, -381f))))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(588f, 1260f))))));
    return true;
}

fn func_2() -> f32 {
    var var_0 = func_3();
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1821f, 2290f, -1068f, 374f) + vec4<f32>(962f, -222f, 1000f, 618f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1393f), 1048f, -182f, _wgslsmith_f_op_f32(trunc(-1482f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1162f, -152f, 1589f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1886f, 2200f, -1000f, -671f), vec4<f32>(672f, -1059f, -107f, -455f)))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1853f, -1131f, 1255f, 1000f)))))));
    let var_2 = vec3<i32>(max(_wgslsmith_div_i32(-48578i, u_input.a.x), firstTrailingBit(u_input.a.x)), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, -14450i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(4641i, 0i, 0i)))), u_input.a.wxw), -59762i);
    let var_3 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-var_2.x, _wgslsmith_div_i32(u_input.a.x, u_input.a.x), -u_input.a.x), _wgslsmith_div_i32(countOneBits(var_2.x), -2147483647i)) ^ ((-var_2.x << (~0u % 32u)) ^ ~max(68387i, u_input.a.x)), countOneBits(abs(max(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, 2147483647i), u_input.a.zwy)))), _wgslsmith_dot_vec4_i32(select(u_input.a, -vec4<i32>(var_2.x, 0i, 1i, var_2.x), !vec4<bool>(true, global3.x, global3.x, global3.x)), vec4<i32>(_wgslsmith_sub_i32(10896i, -1i), 11891i, ~var_2.x, 1i)));
    global2 = array<Struct_1, 21>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1891f));
}

fn func_1() -> u32 {
    global3 = vec3<bool>(false, !(u_input.a.x >= _wgslsmith_sub_i32(_wgslsmith_add_i32(1i, -1i), u_input.a.x)), all(!global3.xx));
    global3 = select(vec3<bool>(global3.x & (global3.x == (false & global3.x)), any(vec2<bool>(global3.x, global3.x)), all(select(global3.yy, !global3.xz, select(global3.xx, global3.xz, false)))), select(!select(vec3<bool>(global3.x, false, global3.x), vec3<bool>(global3.x, global3.x, true), true), !select(!vec3<bool>(global3.x, global3.x, true), select(vec3<bool>(true, global3.x, false), vec3<bool>(false, true, global3.x), true), any(vec2<bool>(false, global3.x))), !global3.x), !(!select(vec3<bool>(true, global3.x, true), select(vec3<bool>(false, false, false), vec3<bool>(global3.x, true, true), vec3<bool>(global3.x, global3.x, global3.x)), true)));
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(358f - 1160f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(1889f * _wgslsmith_f_op_f32(func_2())))), vec3<f32>(_wgslsmith_f_op_f32(step(323f, _wgslsmith_f_op_f32(min(337f, _wgslsmith_f_op_f32(floor(-480f)))))), 1174f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(267f))) * 532f))));
    var var_1 = select(select(!vec3<bool>(-1108f >= var_0.x, any(vec3<bool>(global3.x, false, global3.x)), u_input.a.x > 2147483647i), vec3<bool>(global3.x, !any(global3.zz), true), !any(select(vec4<bool>(true, global3.x, global3.x, global3.x), vec4<bool>(true, false, global3.x, false), vec4<bool>(global3.x, global3.x, global3.x, true)))), select(select(vec3<bool>(global3.x, global3.x, true & global3.x), vec3<bool>(global3.x & global3.x, global3.x, true), !vec3<bool>(global3.x, true, global3.x)), !(!(!vec3<bool>(global3.x, true, global3.x))), true), !(!((global1.x << (22959u % 32u)) == _wgslsmith_add_u32(global1.x, 0u))));
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~global1.x;
    global1 = ~((vec3<u32>(0u, ~2445u, func_1()) ^ _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(30766u, global1.x, global1.x), vec3<u32>(global1.x, 58244u, 37305u)), vec3<u32>(global1.x, 30254u, global1.x))) | vec3<u32>(_wgslsmith_div_u32(~global1.x, min(global1.x, global1.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 25243u, 4294967295u, 61534u), vec4<u32>(global1.x, 4294967295u, global1.x, 1u) ^ vec4<u32>(6875u, 76433u, 14408u, 44924u)), max(_wgslsmith_mod_u32(global1.x, 4294967295u), global1.x)));
    global1 = abs(~firstLeadingBit(vec3<u32>(global1.x, 1u, global1.x)) ^ _wgslsmith_clamp_vec3_u32(select(vec3<u32>(4294967295u, 1u, 1u), ~vec3<u32>(global1.x, 4294967295u, 52559u), !vec3<bool>(true, false, global3.x)), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(global1.x, 32809u, 58460u)), firstLeadingBit(vec3<u32>(32623u, global1.x, global1.x))), select(vec3<u32>(30599u, 23629u, global1.x), vec3<u32>(global1.x, global1.x, 4294967295u), global3.x) & vec3<u32>(1u, 1u, 1u)));
    var var_0 = Struct_3(_wgslsmith_f_op_f32(floor(-1277f)), abs(~(~vec3<u32>(global1.x, global1.x, 61658u) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, global1.x, global1.x), vec3<u32>(global1.x, global1.x, 1u), vec3<u32>(global1.x, global1.x, global1.x)))), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(firstTrailingBit(~vec4<u32>(global1.x, 1u, global1.x, 4294967295u)), min(countOneBits(vec4<u32>(26000u, global1.x, 4294967295u, global1.x)), vec4<u32>(115148u, 4959u, global1.x, global1.x) << (vec4<u32>(global1.x, 29446u, 63063u, global1.x) % vec4<u32>(32u)))), vec4<u32>(global1.x, select(global1.x, 15680u, true) | ~global1.x, global1.x, 4294967295u)));
    let var_1 = Struct_5(Struct_2(!(!(!vec4<bool>(true, false, false, global3.x)))));
    global2 = array<Struct_1, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_add_vec3_i32(-(u_input.a.xyz << (var_0.b % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(u_input.a.xwy, vec3<i32>(-1i, -1i, 39i)) | firstTrailingBit(u_input.a.wwy)), _wgslsmith_clamp_vec3_i32(firstTrailingBit(firstLeadingBit(vec3<i32>(51362i, u_input.a.x, u_input.a.x))), min(firstTrailingBit(u_input.a.zxw), -u_input.a.wyw), min(abs(u_input.a.wzw), u_input.a.zzx | vec3<i32>(-2147483647i, -49489i, u_input.a.x)))), -1147f, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(var_0.a, -2311f, true)), var_0.a), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1756f, var_0.a)))), vec2<f32>(var_0.a, _wgslsmith_f_op_f32(-var_0.a)))), 854f);
}

