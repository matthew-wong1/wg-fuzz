struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 32> = array<vec3<u32>, 32>(vec3<u32>(8927u, 4294967295u, 0u), vec3<u32>(43149u, 78989u, 4294967295u), vec3<u32>(4294967295u, 1u, 29762u), vec3<u32>(0u, 1006u, 18772u), vec3<u32>(0u, 9519u, 18642u), vec3<u32>(45576u, 1u, 4294967295u), vec3<u32>(1u, 20405u, 1u), vec3<u32>(1u, 1u, 65399u), vec3<u32>(122741u, 63433u, 24274u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(65777u, 4294967295u, 16097u), vec3<u32>(35141u, 10873u, 27639u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(22076u, 799u, 4294967295u), vec3<u32>(66068u, 59334u, 77300u), vec3<u32>(72121u, 2723u, 37428u), vec3<u32>(5460u, 4294967295u, 4294967295u), vec3<u32>(0u, 0u, 1u), vec3<u32>(44795u, 0u, 753u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(41253u, 1u, 8575u), vec3<u32>(20805u, 32u, 1u), vec3<u32>(16674u, 0u, 4294967295u), vec3<u32>(24402u, 4294967295u, 4294967295u), vec3<u32>(0u, 18997u, 1u), vec3<u32>(0u, 1u, 1u), vec3<u32>(4294967295u, 5208u, 20491u), vec3<u32>(0u, 33229u, 4294967295u), vec3<u32>(35755u, 1519u, 70101u), vec3<u32>(56685u, 1u, 12557u), vec3<u32>(39205u, 1u, 17955u), vec3<u32>(0u, 4294967295u, 4457u));

var<private> global1: Struct_2 = Struct_2(-1515f, Struct_1(-1991f, true, vec2<u32>(11616u, 29400u)), vec3<i32>(9762i, i32(-2147483648), 1i));

var<private> global2: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(233f, Struct_1(-1248f, false, vec2<u32>(77599u, 1u)), vec3<i32>(1i, 4199i, 31525i)), Struct_2(-808f, Struct_1(-1578f, true, vec2<u32>(1u, 24513u)), vec3<i32>(35651i, -26922i, i32(-2147483648))), Struct_2(204f, Struct_1(-585f, true, vec2<u32>(1214u, 1u)), vec3<i32>(-21853i, -68758i, 1i)), Struct_2(1013f, Struct_1(-2039f, true, vec2<u32>(1u, 4294967295u)), vec3<i32>(i32(-2147483648), 62073i, 2147483647i)), Struct_2(-1705f, Struct_1(-759f, true, vec2<u32>(0u, 110986u)), vec3<i32>(-1i, -47347i, -18984i)), Struct_2(416f, Struct_1(1183f, true, vec2<u32>(4294967295u, 4294967295u)), vec3<i32>(-24299i, -8613i, 0i)), Struct_2(-1045f, Struct_1(520f, true, vec2<u32>(0u, 56375u)), vec3<i32>(-46933i, 9016i, 9971i)), Struct_2(207f, Struct_1(-559f, false, vec2<u32>(4294967295u, 4294967295u)), vec3<i32>(-2948i, i32(-2147483648), -5415i)), Struct_2(-1839f, Struct_1(914f, true, vec2<u32>(3243u, 70036u)), vec3<i32>(9792i, -1i, i32(-2147483648))), Struct_2(412f, Struct_1(-1000f, true, vec2<u32>(0u, 74244u)), vec3<i32>(0i, 2147483647i, 18477i)), Struct_2(-607f, Struct_1(-1000f, false, vec2<u32>(0u, 59193u)), vec3<i32>(17579i, 14968i, 45614i)), Struct_2(603f, Struct_1(775f, false, vec2<u32>(0u, 0u)), vec3<i32>(40300i, 0i, 10524i)), Struct_2(-340f, Struct_1(-1694f, false, vec2<u32>(8747u, 0u)), vec3<i32>(-4617i, -28035i, -48818i)), Struct_2(-242f, Struct_1(-142f, false, vec2<u32>(1u, 0u)), vec3<i32>(-84450i, 28796i, 5052i)));

var<private> global3: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(1u, 97912u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 7899u), vec2<u32>(17223u, 4294967295u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: bool, arg_3: bool) -> vec4<bool> {
    global2 = array<Struct_2, 14>();
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.a, 2172f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.a, -160f)) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.a, arg_0.a))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.b.a, 887f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.a, 1341f) + vec2<f32>(-1000f, -509f))))));
    global0 = array<vec3<u32>, 32>();
    let var_1 = reverseBits(arg_0.b.c.x);
    var var_2 = -_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(26491i, 0i, 3179i), ~vec3<i32>(u_input.d, u_input.d, u_input.d)), (0i << (1u % 32u)) ^ (global1.c.x << (4294967295u % 32u)), -(-2147483647i ^ arg_0.c.x)), -vec3<i32>(-9578i, global1.c.x, max(-32600i, u_input.d)));
    return vec4<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a - var_0.x)))) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.a)))), _wgslsmith_clamp_u32(7478u, 1u, 4294967295u) < ~(~global1.b.c.x ^ ~4294967295u), ~firstLeadingBit(abs(0i)) >= u_input.d, true);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<bool>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)) + _wgslsmith_f_op_f32(f32(-1f) * -359f))), !(1f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2208f, arg_1.a)))), global1.b.c);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1142f)))), _wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(abs(var_0.a))), !select(true, arg_2.x & arg_1.b, true))), arg_1, vec3<i32>(u_input.c.x, 0i, _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.c.x, -37176i), ~_wgslsmith_sub_i32(global1.c.x, 34249i))));
    global3 = array<vec2<u32>, 5>();
    let var_2 = _wgslsmith_f_op_f32(-var_1.a);
    var_1 = Struct_2(-909f, var_0, _wgslsmith_add_vec3_i32(global1.c, max(var_1.c, var_1.c)));
    return ~reverseBits(~global1.b.c.x ^ _wgslsmith_mod_u32(max(4294967295u, 4294967295u), ~16579u));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: i32) -> vec2<bool> {
    let var_0 = ~min(func_4(true, Struct_1(global1.b.a, global1.b.b, global3[_wgslsmith_index_u32(30046u, 5u)] >> (global3[_wgslsmith_index_u32(global1.b.c.x, 5u)] % vec2<u32>(32u))), func_3(global2[_wgslsmith_index_u32(~arg_0.c.x, 14u)], 0u < arg_0.c.x, !arg_0.b, global1.b.b)), countOneBits(global1.b.c.x));
    var var_1 = u_input.a;
    let var_2 = _wgslsmith_sub_u32(~countOneBits(4294967295u), min(reverseBits(~46437u) >> (global1.b.c.x % 32u), u_input.b));
    let var_3 = _wgslsmith_f_op_f32(-arg_1.x);
    var var_4 = 40119u;
    return func_3(Struct_2(_wgslsmith_f_op_f32(-171f - -1063f), arg_0, global1.c), !(_wgslsmith_f_op_f32(arg_1.x - arg_1.x) > 974f) && (_wgslsmith_f_op_f32(ceil(arg_0.a)) <= -2349f), true, !(any(!vec3<bool>(arg_0.b, true, true)) && !arg_0.b)).wz;
}

fn func_1(arg_0: u32) -> vec4<bool> {
    global1 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global1.b.a)), global1.b.a, global1.b.b)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-284f * 2165f))), -539f), any(func_2(global1.b, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.a, global1.a, global1.b.a))), -1i)), _wgslsmith_mod_vec2_u32(vec2<u32>(~1u, global1.b.c.x ^ 54592u), vec2<u32>(arg_0 >> (global1.b.c.x % 32u), 3491u & u_input.b))), u_input.c.xzz);
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a, _wgslsmith_div_f32(-268f, global1.a))), global1.b.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1268f) + global1.a), _wgslsmith_f_op_f32(f32(-1f) * -838f)), 2254f), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1362f, 713f, -412f, -1000f), vec4<f32>(global1.a, 1000f, 1189f, 654f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1511f, global1.a, global1.b.a, global1.a)))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.a, _wgslsmith_f_op_f32(global1.b.a * global1.b.a), _wgslsmith_f_op_f32(f32(-1f) * -857f), _wgslsmith_div_f32(global1.a, -1814f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-278f, global1.a, -499f, global1.b.a)))), !vec4<bool>(global1.b.b, global1.b.b, false, global1.b.b)))));
    let var_1 = _wgslsmith_mult_u32(14113u, _wgslsmith_mult_u32(59966u, ~0u >> (~(arg_0 << (4294967295u % 32u)) % 32u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_0.x, global1.b.a, global1.b.b)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1000f, global1.a)))))));
    global3 = array<vec2<u32>, 5>();
    return vec4<bool>(!global1.b.b, false | global1.b.b, true, global1.b.b);
}

fn func_5(arg_0: vec4<bool>) -> vec2<bool> {
    global0 = array<vec3<u32>, 32>();
    global3 = array<vec2<u32>, 5>();
    global2 = array<Struct_2, 14>();
    var var_0 = Struct_2(-126f, global1.b, abs(select(global1.c, global1.c, select(vec3<bool>(arg_0.x, false, global1.b.b), vec3<bool>(false, arg_0.x, false), false && arg_0.x))));
    let var_1 = Struct_2(454f, Struct_1(-136f, func_1(~28490u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 17112u, 1u, 1u), vec4<u32>(69335u, 4294967295u, 1u, var_0.b.c.x))).x, abs(max(vec2<u32>(global1.b.c.x, var_0.b.c.x), select(var_0.b.c, vec2<u32>(global1.b.c.x, 21134u), arg_0.xy)))), ~select(_wgslsmith_sub_vec3_i32(countOneBits(u_input.c.zwy), _wgslsmith_sub_vec3_i32(vec3<i32>(44267i, 1i, u_input.c.x), vec3<i32>(global1.c.x, global1.c.x, global1.c.x))), reverseBits(abs(vec3<i32>(var_0.c.x, -1i, var_0.c.x))), !arg_0.x));
    return !(!select(arg_0.xx, vec2<bool>(true, 1i < global1.c.x), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    let var_1 = select(vec2<bool>(true, !(!global1.b.b)), func_5(select(select(select(vec4<bool>(global1.b.b, true, global1.b.b, false), vec4<bool>(false, global1.b.b, false, true), vec4<bool>(global1.b.b, true, global1.b.b, global1.b.b)), func_1(0u), false || global1.b.b), vec4<bool>(global1.b.b && false, true, global1.b.c.x > 26961u, func_3(Struct_2(-562f, Struct_1(-550f, global1.b.b, vec2<u32>(u_input.a, global1.b.c.x)), vec3<i32>(-1i, -2147483647i, 57932i)), false, true, false).x), _wgslsmith_f_op_f32(512f - global1.b.a) <= -338f)), any(select(!(!vec3<bool>(global1.b.b, false, false)), func_1(88749u).zxy, func_1(global1.b.c.x).x)));
    let var_2 = vec4<bool>(!global1.b.b & (_wgslsmith_mult_u32(abs(0u), _wgslsmith_add_u32(global1.b.c.x, global1.b.c.x)) <= u_input.b), any(!func_1(u_input.a)), any(vec2<bool>(false, global1.b.b)), false);
    let var_3 = Struct_2(_wgslsmith_f_op_f32(global1.a * global1.a), global1.b, abs(select(vec3<i32>(u_input.d, abs(53469i), abs(global1.c.x)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(8008i, var_0.x, global1.c.x), vec3<i32>(-7204i, global1.c.x, var_0.x)), vec3<bool>(global1.a <= 190f, all(vec2<bool>(var_2.x, var_1.x)), false))));
    let var_4 = -var_0.zzw;
    let var_5 = var_3;
    global2 = array<Struct_2, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(vec3<i32>(33724i, u_input.d, 14972i))));
}

