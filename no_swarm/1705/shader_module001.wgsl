struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<u32>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec3<f32>) -> vec3<bool> {
    var var_0 = Struct_1(1u, ~vec4<u32>(_wgslsmith_div_u32(arg_0, u_input.b.x), 1u, 19149u, min(arg_0, u_input.b.x)) & ~(~vec4<u32>(4294967295u, 0u, 4294967295u, arg_0)), vec4<bool>(true, u_input.c >= u_input.c, arg_1, true), vec3<i32>(-u_input.c << (u_input.a % 32u), u_input.c, min(reverseBits(max(u_input.c, 45914i)), 58816i)), firstLeadingBit(abs(~vec4<u32>(u_input.a, arg_0, u_input.a, 0u))));
    let var_1 = var_0.d;
    var var_2 = !var_0.c;
    var_0 = Struct_1(min(_wgslsmith_mult_u32(var_0.e.x, ~min(u_input.a, var_0.b.x)), 1u), select(max(~var_0.e, vec4<u32>(1u, u_input.b.x, 1u, arg_0)), abs(~var_0.e), vec4<bool>(arg_2.x != 1014f, any(var_2.zzx), var_2.x, 13539i == var_0.d.x)) & ~var_0.b, select(vec4<bool>(true, !all(vec4<bool>(false, arg_1, false, true)), any(select(vec3<bool>(arg_1, false, false), vec3<bool>(var_2.x, false, var_2.x), true)), all(var_0.c)), vec4<bool>(!(true & var_0.c.x), all(vec4<bool>(arg_1, var_0.c.x, false, true)), any(select(vec3<bool>(false, false, true), vec3<bool>(var_0.c.x, arg_1, false), arg_1)), (var_0.c.x | false) != true), vec4<bool>(any(vec3<bool>(arg_1, false, false)), !any(var_0.c.yx), true, any(vec3<bool>(var_0.c.x, arg_1, var_0.c.x)))), vec3<i32>(-1i) * -var_0.d, abs(~vec4<u32>(u_input.b.x, 4294967295u, 37896u, 0u) << (var_0.e % vec4<u32>(32u))) >> (_wgslsmith_mult_vec4_u32(countOneBits(var_0.e), firstTrailingBit(select(vec4<u32>(4294967295u, arg_0, 73844u, var_0.e.x), vec4<u32>(0u, var_0.e.x, arg_0, 0u), true))) % vec4<u32>(32u)));
    var_0 = Struct_1(var_0.e.x, var_0.e, vec4<bool>(var_2.x || arg_1, var_2.x, true, var_0.c.x), ~vec3<i32>(var_0.d.x, var_0.d.x, -19849i), vec4<u32>(_wgslsmith_sub_u32(~min(72553u, arg_0), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(var_0.b, var_0.b), arg_0)), select(~91703u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.e.x, 0u, 22336u, 3275u), var_0.e), _wgslsmith_clamp_u32(arg_0, 4294967295u, var_0.b.x)), !var_2.x && (true || var_2.x)), _wgslsmith_add_u32(select(arg_0 ^ u_input.a, ~63129u, false), 10909u), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.e.x, 1u), vec2<u32>(79159u, 4294967295u)))));
    return select(vec3<bool>(true, u_input.a > ~_wgslsmith_dot_vec3_u32(var_0.b.ywz, vec3<u32>(var_0.e.x, 4294967295u, u_input.b.x)), var_0.c.x), vec3<bool>(true, var_2.x & true, !(all(vec3<bool>(true, true, var_2.x)) & var_2.x)), true);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: i32, arg_3: vec3<bool>) -> bool {
    let var_0 = !select(vec4<bool>(true, true, true, arg_1.x), select(select(select(vec4<bool>(arg_1.x, true, arg_0.x, true), vec4<bool>(arg_1.x, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, arg_3.x, arg_0.x, arg_1.x)), select(vec4<bool>(arg_3.x, false, true, true), vec4<bool>(arg_3.x, true, false, arg_1.x), false), vec4<bool>(arg_3.x, false, false, false)), vec4<bool>(all(vec3<bool>(false, false, true)), arg_3.x || arg_3.x, true, true), false), arg_1.x);
    var var_1 = Struct_2(select(~abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, 33802i), vec2<i32>(16244i, -2147483647i), vec2<i32>(arg_2, 10971i))), ~vec2<i32>(firstLeadingBit(3004i), -7894i), !(!func_3(1u, true, vec3<f32>(-997f, 844f, 1666f)).xx)), Struct_1(_wgslsmith_sub_u32(reverseBits(u_input.b.x), u_input.b.x | ~0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.b.x, u_input.b.x, u_input.a | u_input.b.x, _wgslsmith_sub_u32(u_input.a, u_input.a)), select(vec4<u32>(u_input.a, 40257u, 7967u, u_input.a), ~vec4<u32>(0u, 1255u, 4294967295u, u_input.a), true), vec4<u32>(firstLeadingBit(0u), 1u, ~u_input.a, 121107u)), var_0, min(vec3<i32>(arg_2, 37963i, -2147483647i), firstTrailingBit(vec3<i32>(2147483647i, arg_2, u_input.c))) << (_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, 34250u, u_input.a), _wgslsmith_clamp_vec3_u32(u_input.b, vec3<u32>(4294967295u, 4294967295u, u_input.a), vec3<u32>(4294967295u, 37594u, 0u))) % vec3<u32>(32u)), vec4<u32>(~4294967295u, u_input.b.x, 4294967295u, _wgslsmith_dot_vec3_u32(u_input.b, u_input.b) >> (~u_input.b.x % 32u))), reverseBits(u_input.b), _wgslsmith_f_op_f32(max(1000f, -147f)), Struct_1(~(~(~u_input.b.x)), vec4<u32>(u_input.b.x, u_input.a, 0u, _wgslsmith_div_u32(~u_input.b.x, 1u)), var_0, ~vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.c), vec2<i32>(arg_2, arg_2)), reverseBits(46909i), -60190i), vec4<u32>(~u_input.a, u_input.a, abs(u_input.a), u_input.a) ^ firstTrailingBit(~vec4<u32>(33678u, u_input.b.x, u_input.a, 44413u))));
    let var_2 = var_1.c;
    let var_3 = var_1.d;
    let var_4 = _wgslsmith_mod_vec3_u32(var_1.b.e.zwy, vec3<u32>(8774u, ~u_input.a, abs(firstTrailingBit(1u))));
    return !(all(vec3<bool>(false, !arg_3.x, false)) | arg_3.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = true;
    var_0 = !arg_0.x;
    var_0 = all(vec4<bool>(true, true || arg_2.c.x, func_4(!(!arg_0), arg_0, countOneBits(_wgslsmith_mult_i32(arg_2.d.x, -2147483647i)), !func_3(25956u, arg_0.x, vec3<f32>(-227f, 971f, 217f))), func_4(arg_2.c.yz, !arg_2.c.xw, u_input.c, arg_2.c.wwy)));
    let var_1 = arg_2.c.yxx;
    var var_2 = 15898u;
    return !select(select(vec2<bool>(arg_2.c.x, false && arg_0.x), !(!vec2<bool>(var_1.x, false)), func_3(1175u, arg_2.c.x, vec3<f32>(172f, 1000f, 196f)).yx), select(vec2<bool>(true, arg_0.x), vec2<bool>(u_input.c == arg_2.d.x, arg_0.x), var_1.zy), arg_2.c.zz);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: bool, arg_3: u32) -> vec4<i32> {
    var var_0 = _wgslsmith_div_f32(679f, _wgslsmith_f_op_f32(-185f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-279f, arg_1.d) - _wgslsmith_f_op_f32(round(arg_1.d))))) < _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_1.d, _wgslsmith_f_op_f32(max(arg_1.d, _wgslsmith_div_f32(-378f, 853f))))));
    var_0 = arg_0.x;
    var_0 = all(select(!arg_1.b.c.wx, arg_1.e.c.yz, vec2<bool>(true, false)));
    let var_1 = Struct_1(arg_1.b.e.x, vec4<u32>(firstLeadingBit(arg_1.e.b.x), arg_1.c.x, u_input.b.x, arg_3), !vec4<bool>(arg_1.e.c.x | (true || arg_2), 29306u == _wgslsmith_div_u32(1u, arg_1.c.x), true, true), ~arg_1.e.d, abs(_wgslsmith_add_vec4_u32(reverseBits(countOneBits(arg_1.b.b)), vec4<u32>(~arg_3, ~1u, _wgslsmith_div_u32(4294967295u, arg_3), firstLeadingBit(23382u)))));
    let var_2 = abs(var_1.d.x);
    return -vec4<i32>(arg_1.b.d.x, ~min(countOneBits(arg_1.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a.x, u_input.c), arg_1.e.d.zy)), -25300i, _wgslsmith_dot_vec3_i32(select(var_1.d, vec3<i32>(u_input.c, var_1.d.x, -1i), arg_0.x) & select(var_1.d, var_1.d, vec3<bool>(false, var_1.c.x, true)), countOneBits(vec3<i32>(22385i, -16545i, var_2))));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(845f + -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -116f)))));
    return _wgslsmith_dot_vec4_i32(~vec4<i32>(abs(u_input.c), ~u_input.c, -u_input.c, _wgslsmith_mod_i32(-2147483647i, -47939i)) ^ -(~vec4<i32>(u_input.c, 24271i, u_input.c, 29608i)), ~max(~vec4<i32>(u_input.c, u_input.c, 52068i, u_input.c), ~vec4<i32>(-27517i, -2147483647i, u_input.c, 16599i)) ^ (~(vec4<i32>(u_input.c, u_input.c, u_input.c, -1i) ^ vec4<i32>(-2147483647i, -22104i, -53103i, u_input.c)) ^ func_5(func_2(vec2<bool>(false, true), vec3<u32>(52841u, 40861u, 1u), Struct_1(u_input.b.x, vec4<u32>(u_input.b.x, u_input.a, 1u, u_input.b.x), vec4<bool>(true, true, true, false), vec3<i32>(u_input.c, u_input.c, 2147483647i), vec4<u32>(4294967295u, 9424u, u_input.a, u_input.a))), Struct_2(vec2<i32>(u_input.c, u_input.c), Struct_1(u_input.b.x, vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, 4294967295u), vec4<bool>(false, true, true, false), vec3<i32>(14290i, u_input.c, -16963i), vec4<u32>(u_input.b.x, u_input.a, 1u, 60021u)), u_input.b, var_0, Struct_1(4294967295u, vec4<u32>(21439u, 0u, u_input.b.x, u_input.b.x), vec4<bool>(true, false, false, false), vec3<i32>(u_input.c, u_input.c, u_input.c), vec4<u32>(1u, u_input.b.x, u_input.b.x, 1u))), all(vec4<bool>(true, false, true, false)), u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits((vec3<i32>(-u_input.c, func_1(), -2147483647i & u_input.c) << (u_input.b % vec3<u32>(32u))) >> (min(vec3<u32>(reverseBits(u_input.b.x), 1u, 0u), _wgslsmith_div_vec3_u32(vec3<u32>(48017u, u_input.b.x, u_input.a), u_input.b)) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(trunc(1431f));
    let var_2 = Struct_1(firstTrailingBit(u_input.a), select(vec4<u32>(u_input.b.x ^ 0u, 0u, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(10684u, 0u, u_input.a, 0u)), ~vec4<u32>(1u, 63202u, u_input.a, 4294967295u)), 1u), ~vec4<u32>(u_input.b.x & 15919u, _wgslsmith_sub_u32(u_input.a, 1u), 69389u, u_input.a), vec4<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), func_2(vec2<bool>(true, true), u_input.b, Struct_1(u_input.a, vec4<u32>(77981u, 4294967295u, 7659u, 4294967295u), vec4<bool>(false, true, true, true), var_0, vec4<u32>(60411u, 0u, 4294967295u, u_input.a))).x, all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false)), true)), select(vec4<bool>(any(vec2<bool>(false, true)), any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false)), true, true), select(vec4<bool>(true, func_3(4294967295u, true, vec3<f32>(-308f, -1018f, -551f)).x, true, all(vec2<bool>(false, true))), vec4<bool>(true, true, true, true), func_3(41071u, any(vec2<bool>(false, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1246f, -222f))).x), vec4<bool>(true, true, 17795i >= u_input.c, all(vec3<bool>(true, true, true)))), _wgslsmith_sub_vec3_i32(var_0, vec3<i32>(-(~(-8776i)), abs(i32(-1i) * -16346i), 21782i)), vec4<u32>(1u >> (u_input.a % 32u), u_input.b.x, 31083u, u_input.a));
    var_1 = _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-613f + -780f))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(551f, 579f), _wgslsmith_f_op_f32(f32(-1f) * -2274f))))));
    var var_3 = true;
    var var_4 = var_2;
    let var_5 = -u_input.c;
    var_4 = Struct_1(_wgslsmith_mod_u32(~62967u | abs(var_4.b.x), var_4.b.x), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_4.e.x, u_input.a >> (var_4.b.x % 32u), ~var_2.a, abs(var_2.e.x)), var_2.b | ~vec4<u32>(u_input.b.x, var_2.b.x, 1u, 4294967295u), var_4.e), vec4<u32>(_wgslsmith_dot_vec3_u32(select(var_2.b.ywx, var_2.b.zwx, vec3<bool>(false, false, true)), ~var_2.b.xyz), ~var_2.e.x >> (var_2.b.x % 32u), var_4.e.x, _wgslsmith_div_u32(~0u, 47573u))), select(vec4<bool>(var_4.c.x, countOneBits(-17202i) != (u_input.c & 2147483647i), var_4.c.x, !all(vec3<bool>(false, var_2.c.x, var_2.c.x))), var_4.c, !(func_2(vec2<bool>(true, var_2.c.x), vec3<u32>(76710u, var_2.a, 4294967295u), Struct_1(var_2.a, vec4<u32>(423u, var_4.a, var_4.a, 1u), var_2.c, var_2.d, vec4<u32>(var_4.b.x, 0u, var_2.b.x, 15583u))).x | all(var_4.c.yw))), var_4.d, (vec4<u32>(32780u, ~9045u, var_4.e.x, 4294967295u) ^ vec4<u32>(~u_input.b.x, var_2.e.x, ~80042u, 1u)) << (_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(var_2.e, var_4.b, ~vec4<u32>(var_2.b.x, 4265u, 570u, u_input.b.x)), firstTrailingBit(vec4<u32>(var_2.e.x, 59200u, var_2.e.x, 4294967295u)) & var_4.e) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(firstLeadingBit(var_2.b.xzz & countOneBits(var_2.b.wyz))));
}

