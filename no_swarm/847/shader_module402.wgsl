struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: vec2<f32>,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: vec4<u32>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: u32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(-2297f, 47863i, 0u, vec4<f32>(538f, -1861f, 269f, -192f), 0u), Struct_1(795f, -31057i, 0u, vec4<f32>(1110f, -1130f, -530f, -617f), 51427u), Struct_1(538f, -9785i, 0u, vec4<f32>(836f, -585f, 633f, 733f), 4294967295u), Struct_1(-126f, -1i, 39109u, vec4<f32>(903f, -1000f, 620f, -282f), 61123u), Struct_1(-813f, 0i, 63915u, vec4<f32>(-398f, 1913f, -464f, 1297f), 42110u), Struct_1(235f, 15767i, 1u, vec4<f32>(-254f, -1000f, 1000f, 535f), 1004u), Struct_1(-766f, 27630i, 43093u, vec4<f32>(1000f, 225f, -990f, 171f), 0u), Struct_1(-529f, -1i, 97158u, vec4<f32>(-1484f, -1016f, 766f, -259f), 35751u), Struct_1(290f, 1i, 13662u, vec4<f32>(-1318f, 1547f, -674f, 353f), 48627u), Struct_1(1936f, -18911i, 41602u, vec4<f32>(1003f, 620f, -238f, 993f), 6823u));

var<private> global1: array<f32, 7>;

var<private> global2: array<Struct_4, 12>;

var<private> global3: array<i32, 24> = array<i32, 24>(0i, -28423i, 2147483647i, 13627i, 21210i, 23445i, 22002i, 1i, 47282i, -26764i, 44448i, 6551i, 20149i, i32(-2147483648), -1044i, 2147483647i, -12011i, 0i, -54513i, -15388i, 4825i, 2147483647i, 2147483647i, -8269i);

var<private> global4: array<i32, 31> = array<i32, 31>(2147483647i, 1i, 29819i, -4162i, 20030i, 31418i, -23096i, 9055i, -17032i, -70606i, 66101i, 72441i, 31165i, 1i, -44526i, -42648i, -7258i, 2147483647i, 91313i, -82219i, i32(-2147483648), 1i, 27060i, i32(-2147483648), 0i, 62543i, -21554i, 2147483647i, -14470i, 11103i, -44464i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_3) -> u32 {
    var var_0 = arg_1;
    let var_1 = global2[_wgslsmith_index_u32(1u, 12u)];
    return max(_wgslsmith_dot_vec4_u32(~min(vec4<u32>(0u, arg_1.e.e.x, arg_1.c.x, 9266u), var_1.b.c), ~vec4<u32>(4294967295u, 0u, var_1.c, 1911u) ^ u_input.e), ~(~0u)) >> (~4294967295u % 32u);
}

fn func_3() -> u32 {
    global0 = array<Struct_1, 10>();
    global4 = array<i32, 31>();
    let var_0 = global0[_wgslsmith_index_u32(u_input.e.x, 10u)];
    let var_1 = Struct_2(abs(u_input.c), min(firstLeadingBit(var_0.b), firstTrailingBit(-45670i)), vec2<f32>(_wgslsmith_f_op_f32(min(-863f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.d.x, var_0.d.x))))), -161f), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~30266u, 7u)]))), 24973i, 18234u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 7u)], 233f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, global1[_wgslsmith_index_u32(var_0.c, 7u)])), -604f, _wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(trunc(1063f)))), reverseBits(1u)), vec2<u32>(_wgslsmith_div_u32(min(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.e.x, u_input.b.x, var_0.c), vec4<u32>(47709u, var_0.c, u_input.e.x, var_0.c))), ~0u), u_input.a.x));
    let var_2 = true;
    return ~1u;
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: vec3<u32>) -> bool {
    let var_0 = 0u;
    let var_1 = global0[_wgslsmith_index_u32(abs(abs(_wgslsmith_mult_u32(func_2(vec3<bool>(true, true, true), Struct_3(arg_2, -951f, vec4<u32>(arg_3.x, var_0, 32118u, 40421u), Struct_2(u_input.c, u_input.c.x, vec2<f32>(-2009f, 1381f), Struct_1(1120f, -2147483647i, u_input.a.x, vec4<f32>(-2135f, -2366f, arg_0, global1[_wgslsmith_index_u32(u_input.a.x, 7u)]), arg_3.x), vec2<u32>(var_0, 1u)), Struct_2(vec2<i32>(u_input.d, global3[_wgslsmith_index_u32(818u, 24u)]), arg_1.x, vec2<f32>(-386f, 701f), Struct_1(arg_0, global4[_wgslsmith_index_u32(1u, 31u)], 4126u, vec4<f32>(arg_0, global1[_wgslsmith_index_u32(u_input.e.x, 7u)], arg_0, -1886f), 1u), arg_3.xz))), _wgslsmith_mod_u32(func_3(), 45800u)))), 10u)];
    let var_2 = _wgslsmith_div_f32(946f, arg_0);
    var var_3 = Struct_2(arg_1.zz, firstLeadingBit(-12336i), _wgslsmith_f_op_vec2_f32(trunc(var_1.d.zz)), Struct_1(-1886f, -min(1536i, select(-54180i, global3[_wgslsmith_index_u32(var_1.e, 24u)], false)), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(var_1.e, var_1.e, var_0, var_1.c)) << (var_0 % 32u), 4294967295u), vec4<f32>(-102f, _wgslsmith_f_op_f32(min(1192f, _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(arg_0 * var_2), -1747f), min(24139u, firstLeadingBit(30864u << (var_0 % 32u)))), u_input.e.yx);
    var var_4 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.d.zw) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -268f), -407f))), Struct_3(vec3<i32>(1i & firstLeadingBit(global3[_wgslsmith_index_u32(4294967295u, 24u)]), _wgslsmith_mod_i32(-37784i, global4[_wgslsmith_index_u32(~u_input.b.x, 31u)]), -42754i >> (u_input.b.x % 32u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -335f), _wgslsmith_f_op_f32(ceil(-709f)), true)))), reverseBits(vec4<u32>(min(var_1.e, 0u), var_3.e.x, ~u_input.e.x, ~1025u)), Struct_2(countOneBits(_wgslsmith_mod_vec2_i32(var_3.a, arg_1.yz)), 24721i, var_1.d.zw, var_3.d, abs(var_3.e)), Struct_2(vec2<i32>(-6722i, u_input.c.x), -2147483647i, vec2<f32>(_wgslsmith_f_op_f32(max(-1000f, 504f)), arg_0), global0[_wgslsmith_index_u32(~0u, 10u)], var_3.e)), func_2(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, all(vec4<bool>(false, false, false, false)), true), vec3<bool>(true, true, true)), Struct_3(vec3<i32>(_wgslsmith_sub_i32(u_input.d, arg_1.x), abs(var_1.b), -53611i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_1.c, 7u)] - var_2)), ~reverseBits(vec4<u32>(64174u, 4294967295u, 30718u, 19189u)), Struct_2(abs(vec2<i32>(0i, arg_1.x)), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(20182u, arg_3.x), 24u)], var_3.c, Struct_1(var_2, var_3.a.x, 71748u, var_1.d, var_3.e.x), arg_3.zy), Struct_2(u_input.c, _wgslsmith_mult_i32(var_3.b, -45268i), _wgslsmith_f_op_vec2_f32(select(var_1.d.zz, vec2<f32>(-811f, var_1.d.x), vec2<bool>(false, false))), Struct_1(var_3.d.a, global3[_wgslsmith_index_u32(27451u, 24u)], var_0, var_1.d, 4294967295u), vec2<u32>(var_3.e.x, 8844u)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, -912f, -848f, -906f))) - var_1.d), var_3.d.d));
    return (abs(firstTrailingBit(1u)) < var_1.e) | true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(u_input.e.x, 10u)];
    var var_1 = global0[_wgslsmith_index_u32(1u, 10u)];
    var var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(var_0.d.wx, vec2<f32>(191f, 382f))), vec2<f32>(-105f, 500f), true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d.zx) + _wgslsmith_f_op_vec2_f32(floor(var_1.d.wy)))), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, false), all(vec3<bool>(true, true, true)))))));
    let var_3 = global0[_wgslsmith_index_u32(~abs(2932u), 10u)];
    var var_4 = vec3<bool>(!(false & !func_1(-893f, vec3<i32>(var_0.b, -1i, 0i), vec3<i32>(32473i, -2147483647i, global3[_wgslsmith_index_u32(52646u, 24u)]), u_input.e.yyz)), false, any(select(select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)), vec3<bool>(all(vec2<bool>(false, true)), true, any(vec2<bool>(true, true))), true)));
    var var_5 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_0.d.zyx)) * var_0.d.zyz), vec3<f32>(_wgslsmith_f_op_f32(-var_1.a), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -307f)));
    var var_6 = vec2<f32>(_wgslsmith_f_op_f32(var_5.x - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(735f, 300f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_5.x, -2168f)))))), 626f);
    var var_7 = Struct_2(min(-vec2<i32>(0i, global4[_wgslsmith_index_u32(0u, 31u)] ^ var_0.b), select(firstTrailingBit(vec2<i32>(-2147483647i, var_1.b)), vec2<i32>(-u_input.d, i32(-1i) * -2147483647i), false)), -15245i, _wgslsmith_div_vec2_f32(var_0.d.ww, _wgslsmith_f_op_vec2_f32(-var_0.d.xw)), global0[_wgslsmith_index_u32(35008u, 10u)], vec2<u32>(u_input.e.x, 25541u));
    var var_8 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, ~33957u);
}

