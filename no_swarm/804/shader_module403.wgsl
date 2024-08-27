struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: bool,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, 21040i, -4161i, 1i);

var<private> global1: Struct_1 = Struct_1(vec2<u32>(45127u, 1u), vec4<f32>(872f, -1783f, -1098f, 1278f), true, 0i, false);

var<private> global2: vec4<f32> = vec4<f32>(-1878f, -1000f, -455f, 671f);

var<private> global3: array<vec4<u32>, 12> = array<vec4<u32>, 12>(vec4<u32>(10547u, 37789u, 11004u, 41904u), vec4<u32>(4294967295u, 0u, 0u, 58230u), vec4<u32>(0u, 34180u, 22513u, 1u), vec4<u32>(6191u, 44197u, 78064u, 45189u), vec4<u32>(1u, 45566u, 23381u, 79231u), vec4<u32>(37993u, 0u, 4294967295u, 9197u), vec4<u32>(0u, 4294967295u, 0u, 0u), vec4<u32>(4384u, 1u, 15389u, 28682u), vec4<u32>(1u, 63574u, 41017u, 4294967295u), vec4<u32>(4294967295u, 36348u, 15898u, 0u), vec4<u32>(6330u, 1u, 0u, 0u), vec4<u32>(4294967295u, 11330u, 18451u, 0u));

var<private> global4: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<u32>) -> u32 {
    global0 = vec4<i32>(reverseBits(~_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, 2147483647i), global0.xzz), 1i & u_input.a)), _wgslsmith_dot_vec2_i32(vec2<i32>(global4.d, firstLeadingBit(max(-12870i, global4.d))), vec2<i32>(_wgslsmith_mult_i32(global0.x, -global0.x), -(~global4.d))), ~(-1i), global0.x);
    var var_0 = 1947f;
    return reverseBits(6070u);
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: f32) -> u32 {
    return ~select(_wgslsmith_sub_u32(~func_3(global0.zz, vec4<u32>(global1.a.x, 31560u, global1.a.x, 1u)), _wgslsmith_sub_u32(1u, global1.a.x)), global1.a.x, true);
}

fn func_1() -> vec4<bool> {
    var var_0 = ~(~(~vec3<u32>(u_input.e ^ global1.a.x, 0u << (global1.a.x % 32u), func_2(u_input.e, vec2<f32>(1943f, global1.b.x), vec3<bool>(global4.e, global4.c, global1.c), global4.b.x))));
    let var_1 = false;
    var var_2 = vec3<u32>(global1.a.x, _wgslsmith_clamp_u32(u_input.e, ~(var_0.x << (~var_0.x % 32u)), 139257u), _wgslsmith_dot_vec4_u32(~(~(global3[_wgslsmith_index_u32(u_input.e, 12u)] << (global3[_wgslsmith_index_u32(7264u, 12u)] % vec4<u32>(32u)))), vec4<u32>(12071u, _wgslsmith_mult_u32(func_2(35117u, global1.b.xw, vec3<bool>(global4.e, true, false), global2.x), _wgslsmith_add_u32(var_0.x, u_input.e)), abs(global1.a.x), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, global4.a.x, 4294967295u), vec3<u32>(var_0.x, global4.a.x, u_input.e))))));
    global3 = array<vec4<u32>, 12>();
    var var_3 = Struct_3(abs(vec2<i32>(-global0.x, _wgslsmith_clamp_i32(global0.x, i32(-1i) * -21691i, _wgslsmith_div_i32(-3877i, global4.d)))), global3[_wgslsmith_index_u32(15807u, 12u)]);
    return vec4<bool>(var_1, (_wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.e, var_0.x, 0u), var_3.b.zzz), ~var_3.b.xwz) | 47401u) > _wgslsmith_add_u32(var_3.b.x, 1u), min(13326u ^ ~var_3.b.x, ~global4.a.x) < 0u, !global4.c);
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    global3 = array<vec4<u32>, 12>();
    global1 = Struct_1(min(~global4.a, min(firstLeadingBit(max(vec2<u32>(1u, 23666u), global1.a)), vec2<u32>(~0u, _wgslsmith_mult_u32(global4.a.x, global1.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(-global1.b.x), 1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x * arg_1.b.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), true, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, _wgslsmith_div_i32(arg_0, arg_0), _wgslsmith_sub_i32(2147483647i, 1i), -44110i), vec4<i32>(-29206i, ~global0.x, max(-2147483647i, global0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, global0.x), u_input.c.xw))) & 1i, true);
    var var_0 = Struct_3(~(~(vec2<i32>(u_input.d.x, global0.x) ^ u_input.b.yz)) | ~u_input.c.yw, ~_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(global4.a.x, 39191u, 10090u, 1u)), global3[_wgslsmith_index_u32(global4.a.x, 12u)]), global3[_wgslsmith_index_u32(18083u, 12u)]));
    let var_1 = 1i;
    let var_2 = Struct_3(select(u_input.b.xx, reverseBits(var_0.a), vec2<bool>(true, false)), abs(vec4<u32>(4294967295u, 22234u, 4294967295u, _wgslsmith_sub_u32(var_0.b.x & 1u, u_input.e))));
    return Struct_2(Struct_1(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(global1.a, vec2<u32>(29074u, 13574u)), ~var_2.b.zw, vec2<u32>(global4.a.x, arg_1.a.x)) | (~vec2<u32>(42776u, 51725u) & (vec2<u32>(global4.a.x, global1.a.x) << (global4.a % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(global4.b, global1.b)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(385f, global4.b.x, 781f, global2.x))))), true, -2147483647i, ~1u != _wgslsmith_dot_vec3_u32(var_2.b.xzw, _wgslsmith_mult_vec3_u32(var_2.b.www, var_2.b.wyw))));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: bool, arg_3: Struct_2) -> Struct_2 {
    global3 = array<vec4<u32>, 12>();
    let var_0 = _wgslsmith_div_i32(min(abs(u_input.b.x), arg_3.a.d), 21846i);
    let var_1 = arg_2;
    let var_2 = _wgslsmith_mod_u32(global1.a.x, _wgslsmith_add_u32(~arg_3.a.a.x, global4.a.x)) > _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global4.a.x, global4.a.x, u_input.e, global1.a.x), global3[_wgslsmith_index_u32(countOneBits(global4.a.x), 12u)]), firstLeadingBit(~global3[_wgslsmith_index_u32(14091u, 12u)])), 4294967295u);
    let var_3 = ~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, global1.a.x, global1.a.x), max(reverseBits(vec3<u32>(u_input.e, 0u, 42744u)), max(max(vec3<u32>(6310u, global1.a.x, global1.a.x), vec3<u32>(u_input.e, global4.a.x, arg_3.a.a.x)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.e, u_input.e, u_input.e), vec3<u32>(global1.a.x, u_input.e, u_input.e)))));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.e;
    global2 = global1.b;
    let var_1 = u_input.e;
    global4 = Struct_1(reverseBits(select(global4.a, global4.a, global1.c) & _wgslsmith_clamp_vec2_u32(global1.a >> (global1.a % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(var_1, 0u), global4.a), global1.a)), vec4<f32>(global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.b.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1289f))))), -1191f), all(vec4<bool>(!global1.e, _wgslsmith_f_op_f32(-556f + global2.x) >= _wgslsmith_f_op_f32(trunc(-1971f)), false, u_input.e >= u_input.e)), 1i, true);
    var var_2 = func_5(vec2<i32>(abs(global1.d), -max(_wgslsmith_mult_i32(global4.d, u_input.c.x), 46705i)), u_input.d.yx, false, func_4(~abs(1i), Struct_1(firstLeadingBit(~vec2<u32>(56920u, 4294967295u)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global4.b.x, global2.x, -1044f, -1000f))), any(func_1()), abs(_wgslsmith_sub_i32(global0.x, u_input.a)), false)));
    let var_3 = ~(~(~_wgslsmith_mod_u32(var_2.a.a.x, u_input.e)));
    var var_4 = _wgslsmith_dot_vec4_u32(min(_wgslsmith_clamp_vec4_u32(abs(global3[_wgslsmith_index_u32(abs(global1.a.x), 12u)]), ~global3[_wgslsmith_index_u32(var_3, 12u)] & _wgslsmith_mod_vec4_u32(global3[_wgslsmith_index_u32(var_1, 12u)], global3[_wgslsmith_index_u32(u_input.e, 12u)]), vec4<u32>(9399u, 0u ^ var_3, global4.a.x | global1.a.x, _wgslsmith_div_u32(4786u, 50069u))), vec4<u32>(var_3, _wgslsmith_mod_u32(var_2.a.a.x, var_1 & 33497u), ~(0u | var_1), var_2.a.a.x ^ var_1)), firstTrailingBit(~(~vec4<u32>(var_2.a.a.x, global4.a.x, var_2.a.a.x, global4.a.x))) | ((vec4<u32>(38320u, 1u, var_1, global1.a.x) & (vec4<u32>(var_2.a.a.x, 4294967295u, global1.a.x, var_1) | vec4<u32>(33095u, global4.a.x, var_1, var_1))) << (~(vec4<u32>(var_1, 0u, 12500u, u_input.e) >> (vec4<u32>(47736u, var_2.a.a.x, var_3, global1.a.x) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_5 = Struct_3(-global0.yz, global3[_wgslsmith_index_u32(~(var_3 << (~func_5(vec2<i32>(global1.d, global4.d), u_input.c.xw, global1.c, Struct_2(var_2.a)).a.a.x % 32u)), 12u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(func_4(global0.x, func_5(var_5.a, vec2<i32>(var_5.a.x, 1i), true, func_4(u_input.b.x, var_2.a)).a).a.a.x, ~max(~global1.a.x, ~3810u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-571f, 813f)))), func_4(min(_wgslsmith_mult_i32(var_2.a.d, 2147483647i), _wgslsmith_sub_i32(-42939i, var_5.a.x)), Struct_1(reverseBits(var_5.b.xx), _wgslsmith_f_op_vec4_f32(vec4<f32>(649f, 685f, -353f, 711f) + var_2.a.b), true, reverseBits(-11491i), true)).a.b.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a.d, u_input.c.x), vec2<i32>(var_5.a.x, global0.x)), ~(-2147483647i)) > (12213i ^ var_2.a.d))));
}

