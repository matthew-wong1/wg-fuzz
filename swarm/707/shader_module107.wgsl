struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: Struct_3,
    d: vec4<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: array<Struct_5, 10> = array<Struct_5, 10>(Struct_5(Struct_1(1i, true), Struct_2(true, Struct_1(38578i, true), vec4<bool>(false, false, false, false), vec3<bool>(false, false, true), vec2<f32>(-460f, 1393f)), 0u, vec2<i32>(0i, i32(-2147483648))), Struct_5(Struct_1(2147483647i, false), Struct_2(true, Struct_1(-32643i, false), vec4<bool>(false, false, true, true), vec3<bool>(true, false, false), vec2<f32>(263f, 342f)), 38236u, vec2<i32>(-1i, 15624i)), Struct_5(Struct_1(80682i, true), Struct_2(false, Struct_1(19985i, false), vec4<bool>(false, false, false, true), vec3<bool>(true, false, true), vec2<f32>(999f, 312f)), 11973u, vec2<i32>(i32(-2147483648), -1393i)), Struct_5(Struct_1(8824i, false), Struct_2(false, Struct_1(2147483647i, true), vec4<bool>(true, true, true, false), vec3<bool>(false, false, false), vec2<f32>(528f, 135f)), 4294967295u, vec2<i32>(165i, i32(-2147483648))), Struct_5(Struct_1(i32(-2147483648), false), Struct_2(false, Struct_1(9647i, true), vec4<bool>(false, true, true, true), vec3<bool>(false, false, false), vec2<f32>(495f, -2033f)), 7222u, vec2<i32>(-1i, -13319i)), Struct_5(Struct_1(2147483647i, false), Struct_2(false, Struct_1(i32(-2147483648), true), vec4<bool>(true, false, true, true), vec3<bool>(false, false, false), vec2<f32>(-463f, -1000f)), 40649u, vec2<i32>(1i, 29361i)), Struct_5(Struct_1(-30461i, false), Struct_2(true, Struct_1(i32(-2147483648), true), vec4<bool>(false, true, false, true), vec3<bool>(true, false, false), vec2<f32>(-1751f, -876f)), 28292u, vec2<i32>(-36436i, 32813i)), Struct_5(Struct_1(1i, true), Struct_2(true, Struct_1(-34601i, true), vec4<bool>(true, true, false, false), vec3<bool>(false, true, true), vec2<f32>(384f, 963f)), 0u, vec2<i32>(44483i, 11475i)), Struct_5(Struct_1(-1i, true), Struct_2(false, Struct_1(0i, false), vec4<bool>(true, true, true, false), vec3<bool>(true, false, true), vec2<f32>(-927f, 1509f)), 18609u, vec2<i32>(-16017i, -2765i)), Struct_5(Struct_1(25166i, false), Struct_2(false, Struct_1(-9990i, true), vec4<bool>(false, false, false, false), vec3<bool>(true, false, false), vec2<f32>(453f, -2063f)), 1u, vec2<i32>(i32(-2147483648), -37135i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> i32 {
    global0 = abs(-1i);
    let var_0 = vec2<u32>(~u_input.a.x ^ 1u, abs(reverseBits(abs(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(6646u, 1u, u_input.a.x))))));
    global0 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(2147483647i, ~_wgslsmith_mod_i32(1i, countOneBits(2147483647i)), -2147483647i), -firstTrailingBit(select(_wgslsmith_dot_vec4_i32(vec4<i32>(-31949i, 0i, -17266i, 14840i), vec4<i32>(26458i, 0i, -8883i, -1i)), _wgslsmith_div_i32(-11106i, 2147483647i), false)));
    let var_1 = 1i;
    var var_2 = countOneBits(max(reverseBits(vec2<i32>(var_1, var_1) >> (vec2<u32>(var_0.x, 1u) % vec2<u32>(32u))), vec2<i32>(var_1 >> (4294967295u % 32u), _wgslsmith_add_i32(var_1, var_1)))) ^ ~(-(~(vec2<i32>(15491i, var_1) ^ vec2<i32>(var_1, var_1))));
    return _wgslsmith_sub_i32(_wgslsmith_add_i32(1i, -89842i), _wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, -2147483647i), vec2<i32>(var_2.x, var_2.x)) & -1i) & _wgslsmith_sub_i32(-43402i, -var_1);
}

fn func_2() -> i32 {
    let var_0 = Struct_3(Struct_2(any(vec4<bool>(true, true, all(vec4<bool>(false, false, false, false)), false)), Struct_1(_wgslsmith_clamp_i32(1i, 1i, func_3()), true), vec4<bool>(true, true, true, true), select(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), any(vec2<bool>(true, true))), vec3<bool>(false, false, all(vec4<bool>(true, true, false, true)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1169f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -950f) + 1f))), func_3(), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-951f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1686f + 588f)))));
    var var_1 = vec3<bool>(max(-2147483647i, ~var_0.b) > 2147483647i, !all(var_0.a.c.zzw), var_0.a.a & select(var_0.a.d.x, !var_0.a.d.x, var_0.a.a));
    global1 = array<Struct_5, 10>();
    let var_2 = max(u_input.a, vec3<u32>(1u, 119306u, 0u));
    var var_3 = Struct_1(-1i, var_0.a.a);
    return var_3.a;
}

fn func_1() -> Struct_5 {
    var var_0 = select(vec2<bool>((_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -15634i, -40285i), vec3<i32>(2147483647i, 22692i, 0i)) == func_2()) || true, true), !vec2<bool>(select(true, select(false, false, false), true), true), select(select(vec2<bool>(true, any(vec4<bool>(false, true, true, false))), vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), false)), select(vec2<bool>(true, any(vec3<bool>(true, false, true))), vec2<bool>(true, true), false), !all(vec2<bool>(true, true))));
    let var_1 = vec4<bool>(true, all(vec2<bool>(true, true)), _wgslsmith_div_i32((i32(-1i) * -38796i) ^ _wgslsmith_clamp_i32(13577i, 57683i, 1i), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(17899i, -4565i, -2147483647i), ~26512i)) >= _wgslsmith_sub_i32(-2147483647i, 1i), !any(!vec4<bool>(var_0.x, var_0.x, var_0.x, false)));
    global0 = ~31924i;
    var var_2 = Struct_1(-reverseBits(-1i), !all(vec2<bool>(any(vec2<bool>(true, var_1.x)), any(var_1))));
    let var_3 = ~u_input.a;
    return Struct_5(Struct_1(_wgslsmith_mult_i32(-var_2.a, abs(7326i)), var_0.x), Struct_2(select(var_0.x, true, !(!var_0.x)), Struct_1(var_2.a << ((var_3.x >> (101094u % 32u)) % 32u), any(select(var_1, var_1, false))), var_1, !var_1.ywz, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(min(-599f, -832f)), _wgslsmith_f_op_f32(-1636f * -1747f))))), u_input.b >> (select(countOneBits(var_3.x), 1u, var_0.x) % 32u), vec2<i32>(~var_2.a, (i32(-1i) * -2147483647i) ^ (_wgslsmith_add_i32(var_2.a, -2147483647i) | _wgslsmith_div_i32(var_2.a, 0i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -18083i;
    var var_1 = func_1();
    var var_2 = Struct_2(!var_1.a.b, var_1.b.b, vec4<bool>(all(select(!var_1.b.c, var_1.b.c, var_0 > -55498i)), !var_1.b.a, var_1.b.a, all(vec4<bool>(var_1.a.b, true, true, var_1.a.b))), select(vec3<bool>(var_1.a.b, true & any(var_1.b.d), any(vec2<bool>(true, var_1.b.a))), vec3<bool>(true, !all(vec3<bool>(var_1.a.b, true, var_1.b.b.b)), _wgslsmith_mod_i32(7795i, var_1.a.a) == (var_0 ^ 1i)), any(!(!var_1.b.d.yz))), var_1.b.e);
    let var_3 = var_1.b.c;
    var var_4 = var_2.b;
    var var_5 = Struct_2(any(!var_3.yy), var_1.b.b, !vec4<bool>(any(!var_3.xyy), true, var_3.x, true), vec3<bool>(var_4.b, var_4.b, var_2.c.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_2.e), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.e.x, _wgslsmith_f_op_f32(-101f - var_2.e.x))), var_4.b)));
    var_4 = func_1().a;
    let var_6 = var_2.e;
    var_1 = Struct_5(var_2.b, func_1().b, 36492u, firstLeadingBit(vec2<i32>(~(-7883i), 0i)) | abs(_wgslsmith_mod_vec2_i32(-vec2<i32>(857i, 47217i), var_1.d)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d);
}

