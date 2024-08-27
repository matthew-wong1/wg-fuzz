struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_2,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 14> = array<vec2<u32>, 14>(vec2<u32>(4294967295u, 27508u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 30019u), vec2<u32>(33954u, 4294967295u), vec2<u32>(4294967295u, 35057u), vec2<u32>(1u, 2224u), vec2<u32>(61336u, 1u), vec2<u32>(0u, 1u), vec2<u32>(103838u, 30529u), vec2<u32>(32676u, 84758u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 9265u), vec2<u32>(48111u, 1u), vec2<u32>(1u, 0u));

var<private> global1: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(vec2<u32>(0u, 1u), vec2<f32>(-2098f, 506f), Struct_1(0u, -1i, vec4<i32>(51663i, 11512i, 1i, 0i), 4244i, 187f), Struct_2(vec3<i32>(-15660i, 1i, 22688i), Struct_1(0u, 17236i, vec4<i32>(2147483647i, 12019i, -1i, 1i), 1i, -849f), Struct_1(41417u, 26616i, vec4<i32>(-29871i, i32(-2147483648), -53415i, 37714i), -16037i, 1000f), vec3<bool>(true, true, false)), vec2<i32>(1i, 17448i)), Struct_3(vec2<u32>(0u, 0u), vec2<f32>(1328f, -380f), Struct_1(57887u, i32(-2147483648), vec4<i32>(44808i, i32(-2147483648), -1i, 6620i), i32(-2147483648), 1049f), Struct_2(vec3<i32>(-14415i, -58444i, -9709i), Struct_1(18900u, -24227i, vec4<i32>(9407i, -1880i, 95325i, -39788i), -45019i, -529f), Struct_1(1u, 27714i, vec4<i32>(25995i, 1i, -24593i, 31660i), 0i, 1263f), vec3<bool>(true, false, true)), vec2<i32>(-27648i, -1i)), Struct_3(vec2<u32>(0u, 4294967295u), vec2<f32>(959f, -351f), Struct_1(58880u, 17575i, vec4<i32>(-37708i, -1i, 1i, -71334i), 22623i, 1000f), Struct_2(vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), Struct_1(30174u, -2891i, vec4<i32>(2147483647i, 2147483647i, -18787i, 11260i), 2147483647i, 215f), Struct_1(4294967295u, -7275i, vec4<i32>(-28992i, 46319i, i32(-2147483648), 33020i), -1i, -1905f), vec3<bool>(false, false, false)), vec2<i32>(0i, 1i)));

var<private> global2: vec3<u32>;

var<private> global3: array<vec2<u32>, 8> = array<vec2<u32>, 8>(vec2<u32>(79250u, 3380u), vec2<u32>(18678u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(48698u, 29904u), vec2<u32>(45120u, 22803u), vec2<u32>(62997u, 21985u), vec2<u32>(1u, 13298u), vec2<u32>(16036u, 0u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> i32 {
    var var_0 = !all(vec2<bool>(any(vec3<bool>(true, false, true)), !select(true, false, false)));
    var_0 = !(u_input.b <= firstLeadingBit(u_input.e));
    global3 = array<vec2<u32>, 8>();
    let var_1 = true;
    global1 = array<Struct_3, 3>();
    return u_input.a.x;
}

fn func_2() -> Struct_1 {
    global1 = array<Struct_3, 3>();
    let var_0 = Struct_2(abs(u_input.a), Struct_1(61563u, _wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.a.x, u_input.a.x, 1i), u_input.a, false), ~u_input.a)), ~_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, 36719i, -59148i), vec4<i32>(u_input.a.x, 38486i, -2147483647i, 0i)), _wgslsmith_div_i32(0i, abs(-38445i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-243f)), -817f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1597f, -1409f, false)) + _wgslsmith_div_f32(1294f, -1018f)))), Struct_1(_wgslsmith_div_u32(u_input.c.x, ~(u_input.e & global2.x)), firstTrailingBit(func_3()) | 0i, -_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 23225i, -31619i, 1i), -vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, -30700i)), -46552i, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-367f, _wgslsmith_f_op_f32(step(395f, 421f)))))), !vec3<bool>(any(vec3<bool>(true, true, true)), any(vec4<bool>(true, false, true, true)) || all(vec2<bool>(false, false)), true));
    let var_1 = vec4<i32>(-1204i, ((var_0.c.d ^ u_input.a.x) << (var_0.c.a % 32u)) & -(~1i), _wgslsmith_div_i32(_wgslsmith_clamp_i32(var_0.b.b, 0i, _wgslsmith_mult_i32(u_input.a.x, -1i)), ~(var_0.c.d << (0u % 32u))), var_0.b.d ^ var_0.c.b) | min(var_0.c.c | var_0.c.c, vec4<i32>(max(-7428i, var_0.a.x), var_0.b.d, 1i, _wgslsmith_add_i32(33598i, -1i)));
    var var_2 = _wgslsmith_dot_vec2_u32(~(~(~reverseBits(global2.xz))), firstTrailingBit(~firstLeadingBit(vec2<u32>(41760u, var_0.b.a))));
    let var_3 = firstLeadingBit(var_1.ywy);
    return Struct_1(~(~_wgslsmith_dot_vec3_u32(select(vec3<u32>(89338u, 0u, 0u), u_input.d, vec3<bool>(true, true, false)), ~u_input.d)), _wgslsmith_div_i32(abs(var_1.x) & -2147483647i, 2147483647i), -var_1, i32(-1i) * -_wgslsmith_mod_i32(firstLeadingBit(2285i), var_1.x), var_0.b.e);
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: i32, arg_3: vec4<f32>) -> Struct_4 {
    var var_0 = Struct_2(firstLeadingBit(countOneBits(firstTrailingBit(arg_1))), func_2(), func_2(), !vec3<bool>(any(vec2<bool>(false, true)), any(vec4<bool>(true, true, true, true)), true));
    global2 = u_input.d;
    let var_1 = Struct_4(u_input.a.zx, var_0.b.c, -33361i);
    var var_2 = select(select(!vec4<bool>(var_0.d.x && true, true, select(false, var_0.d.x, var_0.d.x), true), select(vec4<bool>(var_0.d.x, var_0.b.a >= 51044u, true, var_0.d.x), vec4<bool>(false, true, var_0.b.a > 49508u, true), false), !(!(!vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x)))), select(vec4<bool>(var_0.d.x, true, all(vec4<bool>(false, var_0.d.x, var_0.d.x, var_0.d.x)), true), vec4<bool>((var_0.d.x & true) && false, !(!var_0.d.x), true, all(var_0.d.yx) & var_0.d.x), any(vec2<bool>(true, true))), true);
    let var_3 = arg_3.x;
    return var_1;
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_4, arg_3: vec4<i32>) -> Struct_4 {
    let var_0 = Struct_2(vec3<i32>(-1i) * -select(vec3<i32>(1i, 53364i, -18529i), vec3<i32>(arg_3.x, 19653i, 2147483647i), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), func_2(), func_2(), !select(vec3<bool>(false, 850f <= arg_1, false), select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2().e - -1356f), arg_1), arg_1));
    var var_2 = func_2();
    var var_3 = !all(vec2<bool>(!(-379f >= var_2.e), var_0.d.x));
    var var_4 = reverseBits(1473i);
    return Struct_4(arg_3.xy, _wgslsmith_div_vec4_i32(select(var_0.b.c, select(~arg_3, vec4<i32>(var_2.d, 31844i, 2147483647i, -1i), vec4<bool>(var_0.d.x, var_0.d.x, true, var_0.d.x)), !select(vec4<bool>(var_0.d.x, false, false, var_0.d.x), vec4<bool>(true, var_0.d.x, false, true), true)), arg_2.b), 0i);
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: i32, arg_3: vec4<f32>) -> Struct_3 {
    let var_0 = Struct_2(vec3<i32>(-2147483647i, arg_2, arg_1.c), func_2(), func_2(), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false));
    var var_1 = -_wgslsmith_clamp_i32(-(-1i ^ arg_2) | var_0.c.c.x, u_input.a.x, var_0.c.d);
    let var_2 = func_2();
    let var_3 = Struct_1(max(~_wgslsmith_sub_u32(~var_0.b.a, u_input.c.x | u_input.d.x), var_0.b.a), -8615i << (u_input.c.x % 32u), var_2.c, i32(-1i) * -1i, _wgslsmith_div_f32(-1244f, 1000f));
    global0 = array<vec2<u32>, 14>();
    return Struct_3(_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(var_2.a, 0u)), ~(~u_input.c.zx), _wgslsmith_clamp_vec2_u32(global2.xz, global3[_wgslsmith_index_u32(global2.x, 8u)], max(global3[_wgslsmith_index_u32(var_0.c.a, 8u)], global2.xz))) >> (~firstTrailingBit(vec2<u32>(24484u, var_0.c.a)) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-arg_0), Struct_1(func_2().a, arg_2, vec4<i32>(~var_2.d, _wgslsmith_sub_i32(-1i, 35917i), _wgslsmith_sub_i32(u_input.a.x & 2147483647i, firstTrailingBit(var_3.c.x)), arg_1.b.x), countOneBits(func_1(_wgslsmith_mult_u32(var_0.b.a, var_0.c.a), _wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, var_3.d, u_input.a.x)), ~u_input.a.x, arg_3).a.x), _wgslsmith_f_op_f32(-arg_0.x)), var_0, (min(firstTrailingBit(vec2<i32>(2147483647i, 41081i)), -vec2<i32>(-1978i, u_input.a.x)) & -vec2<i32>(-11768i, 43058i)) >> (_wgslsmith_add_vec2_u32(~u_input.c.yz | (global0[_wgslsmith_index_u32(var_2.a, 14u)] ^ vec2<u32>(4294967295u, 20208u)), ~_wgslsmith_sub_vec2_u32(u_input.d.yz, u_input.c.yz)) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 426f) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1411f, -222f))))), vec2<f32>(_wgslsmith_f_op_f32(max(1426f, _wgslsmith_f_op_f32(f32(-1f) * -827f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1391f, 1000f, false)), _wgslsmith_f_op_f32(f32(-1f) * -804f)))))), func_4(max(4294967295u, global2.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2586f))))), func_1(~35164u, -u_input.a, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 53287i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2695f, 415f, 961f, -1000f) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, -626f, -1200f, -880f))))), vec4<i32>(~u_input.a.x, ~u_input.a.x, -1i, 11875i) << (~(vec4<u32>(24570u, 4294967295u, global2.x, 84721u) ^ vec4<u32>(8907u, global2.x, 4294967295u, global2.x)) % vec4<u32>(32u))), _wgslsmith_add_i32(1i, u_input.a.x | -u_input.a.x), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(ceil(func_2().e)), _wgslsmith_div_f32(626f, _wgslsmith_f_op_f32(f32(-1f) * -547f)), 358f, _wgslsmith_f_op_f32(f32(-1f) * -708f)))));
    let var_1 = -_wgslsmith_add_vec3_i32(select(~var_0.d.c.c.zzy, firstLeadingBit(vec3<i32>(var_0.d.b.d, -67712i, u_input.a.x)), var_0.d.d) >> (max(vec3<u32>(var_0.d.c.a, 4294967295u, u_input.c.x), vec3<u32>(4294967295u, 116631u, 61198u)) % vec3<u32>(32u)), vec3<i32>(-1i) * -vec3<i32>(1i, u_input.a.x, var_0.e.x));
    var var_2 = var_0.d;
    global2 = firstLeadingBit(~u_input.c);
    var var_3 = vec4<bool>(!(!any(var_0.d.d.xx)) && true, false, var_0.d.d.x, var_2.d.x);
    var var_4 = Struct_4(vec2<i32>(func_4(firstTrailingBit(43836u) >> (87425u % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(871f)) - -1164f), Struct_4(var_0.c.c.yy, -var_0.c.c, func_3()), vec4<i32>(-21883i, 0i, -16560i, _wgslsmith_mult_i32(var_1.x, u_input.a.x))).b.x, countOneBits(-var_1.x)), _wgslsmith_add_vec4_i32(var_0.c.c, var_2.b.c), var_0.c.c.x);
    let var_5 = Struct_3(global0[_wgslsmith_index_u32(4294967295u << (~(~var_2.b.a) % 32u), 14u)], _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b), _wgslsmith_div_vec2_f32(var_0.b, vec2<f32>(-432f, -1648f))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.c.e, 395f)))))))), func_2(), var_0.d, vec2<i32>(-(~16624i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.c.d, -8941i, func_2().c.x, -2147483647i), -(vec4<i32>(-29342i, 1i, -1i, 7381i) >> (vec4<u32>(global2.x, 0u, 12723u, u_input.b) % vec4<u32>(32u))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(func_5(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(var_0.b)))), func_1(abs(global2.x), ~vec3<i32>(u_input.a.x, var_5.e.x, 2147483647i), var_2.c.d, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(554f, var_0.d.c.e, -888f, var_5.d.b.e)))), -2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.b.x, 1245f, var_2.c.e, var_2.c.e) + vec4<f32>(var_2.c.e, var_0.d.c.e, 1088f, -1061f)))).a, vec2<u32>(~countOneBits(var_0.c.a), 1u)), _wgslsmith_f_op_f32(round(var_2.b.e)), ~(~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2.x, 62858u, 14168u), vec4<u32>(var_2.b.a, var_2.c.a, u_input.b, 4294967295u)), global2.x)), -u_input.a.x);
}

