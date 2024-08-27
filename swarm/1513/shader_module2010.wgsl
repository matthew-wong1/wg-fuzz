struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(45884u, 63648u, 28398u, 42803u);

var<private> global1: Struct_1 = Struct_1(vec2<u32>(87708u, 0u), vec4<i32>(-6388i, -26436i, i32(-2147483648), 2147483647i), -180f, i32(-2147483648));

var<private> global2: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(vec2<u32>(22617u, 54811u), vec4<i32>(-1i, 14867i, 19028i, -25746i), 1000f, -9123i)), Struct_2(Struct_1(vec2<u32>(4294967295u, 26658u), vec4<i32>(-34854i, 14118i, i32(-2147483648), -1i), 234f, i32(-2147483648))), Struct_2(Struct_1(vec2<u32>(47739u, 0u), vec4<i32>(1i, -46516i, -1i, -12476i), -872f, -29982i)), Struct_2(Struct_1(vec2<u32>(46034u, 0u), vec4<i32>(i32(-2147483648), 1i, 0i, 1i), -1000f, 1i)), Struct_2(Struct_1(vec2<u32>(4294967295u, 0u), vec4<i32>(5822i, -34665i, -1i, 2040i), 889f, 28884i)), Struct_2(Struct_1(vec2<u32>(1u, 14661u), vec4<i32>(4551i, 16626i, -16922i, 18370i), -1326f, 10262i)), Struct_2(Struct_1(vec2<u32>(4294967295u, 0u), vec4<i32>(-1i, 36694i, 48077i, -3753i), 1868f, 14869i)), Struct_2(Struct_1(vec2<u32>(0u, 4294967295u), vec4<i32>(39643i, 8942i, 5071i, -34601i), 110f, -14403i)), Struct_2(Struct_1(vec2<u32>(20819u, 15822u), vec4<i32>(16031i, 35592i, -31461i, 22664i), -350f, 2147483647i)), Struct_2(Struct_1(vec2<u32>(4294967295u, 6051u), vec4<i32>(1i, 13523i, 8304i, -3538i), 146f, -6448i)), Struct_2(Struct_1(vec2<u32>(4294967295u, 0u), vec4<i32>(3998i, -38988i, -14965i, -55707i), 1148f, -1i)), Struct_2(Struct_1(vec2<u32>(22455u, 4294967295u), vec4<i32>(917i, -40864i, -1i, 1i), 530f, -131i)), Struct_2(Struct_1(vec2<u32>(98297u, 0u), vec4<i32>(47803i, 1i, 1i, 15449i), 314f, 0i)), Struct_2(Struct_1(vec2<u32>(0u, 0u), vec4<i32>(18457i, i32(-2147483648), 2147483647i, 15004i), 1000f, 1i)), Struct_2(Struct_1(vec2<u32>(4294967295u, 59208u), vec4<i32>(-1i, -21148i, 21778i, 12186i), 2037f, i32(-2147483648))), Struct_2(Struct_1(vec2<u32>(1u, 1u), vec4<i32>(2147483647i, 0i, -1i, -1i), -1409f, 36575i)), Struct_2(Struct_1(vec2<u32>(16230u, 755u), vec4<i32>(-1i, -64546i, 0i, -23671i), 304f, -46449i)), Struct_2(Struct_1(vec2<u32>(52598u, 0u), vec4<i32>(2147483647i, -16112i, 1636i, 1i), 488f, 36741i)), Struct_2(Struct_1(vec2<u32>(1u, 0u), vec4<i32>(19149i, 1i, -50223i, -26848i), 2198f, 2147483647i)), Struct_2(Struct_1(vec2<u32>(0u, 19946u), vec4<i32>(0i, -39624i, 11272i, -41917i), -349f, 265i)), Struct_2(Struct_1(vec2<u32>(5489u, 0u), vec4<i32>(1i, 2147483647i, 0i, 1168i), -458f, -17244i)), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), vec4<i32>(-2273i, 53998i, 6846i, i32(-2147483648)), -141f, i32(-2147483648))), Struct_2(Struct_1(vec2<u32>(80791u, 1u), vec4<i32>(24930i, 2147483647i, -1i, 1i), 271f, 32209i)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: vec2<i32>) -> bool {
    let var_0 = arg_0.a.a;
    var var_1 = ~0u;
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-288f, _wgslsmith_f_op_f32(abs(226f)))));
    var var_3 = arg_0.b;
    let var_4 = ~arg_0.a.c;
    return !((reverseBits(abs(u_input.b)) < 2147483647i) && true);
}

fn func_4(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: vec2<bool>) -> vec2<bool> {
    let var_0 = arg_0.b;
    let var_1 = 12650u;
    let var_2 = Struct_4(Struct_3(all(select(arg_2, select(vec2<bool>(false, arg_0.a.a), arg_2, vec2<bool>(arg_0.c, arg_2.x)), true)), select(global0.zzx, abs(arg_0.a.c.xzx), !any(vec2<bool>(true, arg_2.x))), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1, var_1, ~var_1, var_0.a.x | 0u), _wgslsmith_clamp_vec4_u32(~arg_0.a.c, ~vec4<u32>(global1.a.x, 4294967295u, 6291u, global0.x), vec4<u32>(0u, 0u, 42485u, 73969u))), -vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<bool>(all(select(vec3<bool>(true, arg_0.a.e.x, false), vec3<bool>(arg_2.x, arg_0.a.a, true), arg_0.c)), (u_input.b ^ var_0.b.x) != max(u_input.b, -1i), !arg_2.x)), Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(4367u, firstTrailingBit(var_0.a.x)), vec2<u32>(firstTrailingBit(u_input.c.x), _wgslsmith_dot_vec3_u32(global0.wyx, vec3<u32>(global1.a.x, u_input.c.x, 0u)))), ~global1.b, global1.c, -_wgslsmith_mult_i32(_wgslsmith_mod_i32(20353i, -1i), abs(var_0.d))), arg_2.x && (arg_2.x & (arg_2.x && arg_2.x)), var_0.c);
    let var_3 = vec2<i32>(-1i) * -vec2<i32>(30732i, -_wgslsmith_mod_i32(var_0.d, 7288i));
    var var_4 = max(countOneBits(~7516i), firstLeadingBit(~_wgslsmith_sub_i32(-var_0.b.x, 1i)));
    return arg_0.a.e.yy;
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1938f, -1706f, _wgslsmith_f_op_f32(f32(-1f) * -517f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c * -2949f)))))));
    global0 = vec4<u32>(_wgslsmith_mod_u32(~firstTrailingBit(26566u), countOneBits(4294967295u)), 15808u, ~firstTrailingBit(~u_input.c.x), global0.x);
    let var_1 = func_4(Struct_4(Struct_3(!func_3(Struct_4(Struct_3(false, vec3<u32>(global0.x, 0u, global0.x), vec4<u32>(4294967295u, global1.a.x, 4294967295u, global1.a.x), global1.b.yzw, vec3<bool>(false, true, true)), Struct_1(vec2<u32>(global0.x, 0u), global1.b, -649f, global1.d), false, 1155f), global1.b.yx), ~max(global0.zzz, vec3<u32>(0u, global0.x, 206u)), vec4<u32>(max(9268u, global1.a.x), ~u_input.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, u_input.a.x), u_input.a.xy), 1u), global1.b.xzw, select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false))), Struct_1(~global0.zw, global1.b, global1.c, -3049i), true, -137f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -835f, global1.c, global1.c))))), vec2<bool>(!(!(global1.b.x <= u_input.b)), func_3(Struct_4(Struct_3(true, vec3<u32>(u_input.c.x, u_input.c.x, 44031u), vec4<u32>(global1.a.x, u_input.c.x, 4294967295u, global1.a.x), vec3<i32>(9751i, global1.b.x, u_input.b), vec3<bool>(false, false, true)), Struct_1(global0.zx, global1.b, 448f, u_input.b), any(vec4<bool>(true, false, false, true)), _wgslsmith_f_op_f32(select(var_0.x, var_0.x, false))), global1.b.yw)));
    global0 = ~(~u_input.d);
    var var_2 = u_input.c.x;
    return Struct_4(Struct_3(var_1.x, abs(abs(vec3<u32>(0u, u_input.a.x, global0.x))) ^ select(~vec3<u32>(4294967295u, global0.x, 1u), vec3<u32>(1u, global0.x, u_input.a.x), select(var_1.x, var_1.x, true)), ~(vec4<u32>(34002u, 58704u, u_input.a.x, global1.a.x) | vec4<u32>(global1.a.x, 4294967295u, global0.x, 4294967295u)), ~global1.b.wxz, select(!(!vec3<bool>(var_1.x, true, var_1.x)), vec3<bool>(!var_1.x, !var_1.x, true), false)), Struct_1(global0.yy, global1.b, 275f, i32(-1i) * -abs(-6995i)), max(abs(abs(0i)), global1.d >> (10813u % 32u)) > -u_input.b, global1.c);
}

fn func_1() -> u32 {
    let var_0 = func_2();
    let var_1 = global2[_wgslsmith_index_u32(global0.x, 23u)];
    let var_2 = var_0.a.e.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.b.c * global1.c))), _wgslsmith_f_op_f32(min(var_1.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1592f)))), var_0.b.c, var_0.b.c), vec4<f32>(_wgslsmith_f_op_f32(select(var_1.a.c, _wgslsmith_f_op_f32(var_0.d * var_1.a.c), true)), 414f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.a.c * 1754f), -1395f, var_0.c)), -131f, var_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.c, var_0.d) * var_1.a.c)))));
    var var_4 = reverseBits(~vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_1.a.b.x, 13272i), vec3<i32>(var_1.a.d, 1i, 2117i)) << (var_0.b.a.x % 32u), -37133i));
    return _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, ~22522u), vec2<u32>(~(global1.a.x ^ _wgslsmith_clamp_u32(0u, u_input.c.x, 11063u)), global1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_u32(~1497u, global0.x >> (_wgslsmith_mod_u32(global0.x, func_1()) % 32u));
    global0 = func_2().a.c;
    let var_1 = global1.b;
    global2 = array<Struct_2, 23>();
    var var_2 = Struct_3(all(vec2<bool>(true, true)), func_2().a.c.xxy, select(vec4<u32>(~(global0.x ^ var_0), 0u, ~0u, global1.a.x), u_input.d, !(!any(vec3<bool>(false, false, true)))), min(var_1.xzz, _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.d, u_input.b, 33829i), vec3<i32>(u_input.b, u_input.b, 539i)), -2147483647i, max(u_input.b, -12699i)), vec3<i32>(-global1.b.x, 1065i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -26019i), global1.b.yy)))), vec3<bool>(!(64133u <= (u_input.c.x | global1.a.x)), false, true));
    var var_3 = select(true, func_1() == 81215u, all(vec2<bool>(var_2.a, !var_2.e.x))) & var_2.e.x;
    var_3 = func_3(func_2(), ~(-var_1.yy));
    var var_4 = max(_wgslsmith_mod_i32(0i >> (0u % 32u), _wgslsmith_mult_i32(var_1.x, 0i)), -var_2.d.x) << (abs(0u) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(64009u << (u_input.c.x % 32u)), global1.a.x, func_1()), _wgslsmith_sub_u32((1u >> (~global1.a.x % 32u)) ^ ~select(27385u, var_0, false), u_input.c.x), firstTrailingBit(select(vec2<i32>(2147483647i, 0i), vec2<i32>(global1.b.x, u_input.b) | var_2.d.zy, func_4(Struct_4(Struct_3(true, u_input.d.wwy, vec4<u32>(1u, global1.a.x, 47552u, 0u), vec3<i32>(-23407i, 0i, u_input.b), vec3<bool>(true, var_2.e.x, var_2.e.x)), Struct_1(vec2<u32>(4294967295u, 4294967295u), global1.b, global1.c, 31922i), var_2.e.x, global1.c), vec4<f32>(711f, -1119f, global1.c, 1516f), vec2<bool>(var_2.e.x, var_2.e.x)))) & vec2<i32>(var_1.x, 35787i));
}

