struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec3<u32>,
    e: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: Struct_4) -> i32 {
    let var_0 = arg_1.d.b;
    var var_1 = arg_1;
    let var_2 = -1i;
    let var_3 = select(countOneBits(-_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.a.c.b.c, 1i, -34664i), vec3<i32>(var_2, -5805i, 28142i))), vec3<i32>(0i ^ (arg_1.c << (18589u % 32u)), arg_1.a.e.e, _wgslsmith_sub_i32(firstTrailingBit(arg_1.d.c), _wgslsmith_mod_i32(-2147483647i, var_1.b.c))), vec3<bool>(any(select(var_1.b.d, vec2<bool>(true, false), false)), !var_1.b.d.x, (i32(-1i) * -48196i) == _wgslsmith_add_i32(u_input.a, -1i))) << (_wgslsmith_add_vec3_u32(select(var_1.a.b.d, vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(arg_1.d.a, arg_1.a.b.a.a)), ~arg_1.d.a, var_1.d.a), var_1.a.c.b.d.x), var_1.a.c.d) % vec3<u32>(32u));
    global0 = false;
    return ~(-select(var_3.x, ~var_3.x, false));
}

fn func_2(arg_0: vec4<u32>) -> vec2<bool> {
    var var_0 = 34187u;
    var var_1 = ~_wgslsmith_mod_vec2_i32(reverseBits(-firstTrailingBit(vec2<i32>(0i, 27019i))), vec2<i32>(43866i, func_3(-143f, Struct_4(Struct_3(vec2<bool>(true, false), Struct_2(Struct_1(arg_0.x, -374f, u_input.a, vec2<bool>(false, false)), Struct_1(20403u, -1667f, -1i, vec2<bool>(false, false)), false, arg_0.xxz, -32559i), Struct_2(Struct_1(4294967295u, -1543f, u_input.a, vec2<bool>(false, true)), Struct_1(arg_0.x, 1034f, u_input.a, vec2<bool>(true, false)), true, vec3<u32>(arg_0.x, arg_0.x, arg_0.x), u_input.a), Struct_1(arg_0.x, 840f, -1i, vec2<bool>(false, true)), Struct_2(Struct_1(0u, -602f, 2147483647i, vec2<bool>(true, true)), Struct_1(29611u, -203f, -12810i, vec2<bool>(true, false)), false, vec3<u32>(3656u, arg_0.x, arg_0.x), u_input.a)), Struct_1(arg_0.x, 151f, u_input.a, vec2<bool>(false, true)), u_input.a, Struct_1(4294967295u, -1000f, 2147483647i, vec2<bool>(true, false)), -2147483647i))));
    let var_2 = false || !(!(!all(vec2<bool>(true, true))));
    var var_3 = Struct_1(_wgslsmith_dot_vec4_u32(arg_0, ~(~arg_0)), 216f, _wgslsmith_dot_vec2_i32(~(~abs(vec2<i32>(0i, 40912i))), ~(~_wgslsmith_add_vec2_i32(vec2<i32>(var_1.x, -1i), vec2<i32>(75576i, 16727i)))), vec2<bool>(any(select(select(vec2<bool>(true, var_2), vec2<bool>(var_2, var_2), var_2), !vec2<bool>(var_2, false), var_2)), !(!(false || var_2))));
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1813f), var_3.b, _wgslsmith_div_f32(var_3.b, -1505f), -2836f) * vec4<f32>(_wgslsmith_f_op_f32(var_3.b + _wgslsmith_f_op_f32(select(-1220f, _wgslsmith_f_op_f32(-var_3.b), true))), -372f, _wgslsmith_div_f32(var_3.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.b)))), _wgslsmith_f_op_f32(-333f * _wgslsmith_f_op_f32(-657f - var_3.b))));
    return select(!vec2<bool>(!var_2 | (var_3.d.x | var_3.d.x), var_3.d.x), !var_3.d, var_2);
}

fn func_1() -> vec4<bool> {
    global1 = array<vec4<bool>, 3>();
    global1 = array<vec4<bool>, 3>();
    global1 = array<vec4<bool>, 3>();
    var var_0 = Struct_4(Struct_3(select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), func_2(vec4<u32>(0u, 10705u, 849u, 1u))), u_input.a < 2147483647i), Struct_2(Struct_1(reverseBits(4294967295u), -1460f, ~0i, vec2<bool>(true, true)), Struct_1(~0u, _wgslsmith_f_op_f32(408f - 538f), u_input.a, vec2<bool>(true, true)), func_2(~vec4<u32>(9903u, 80446u, 19885u, 1u)).x, vec3<u32>(max(4294967295u, 0u), 13946u, 53029u), u_input.a), Struct_2(Struct_1(_wgslsmith_add_u32(36525u, 1u), 1f, select(46516i, 0i, false), vec2<bool>(true, false)), Struct_1(~4294967295u, _wgslsmith_f_op_f32(-144f - 139f), u_input.a, select(vec2<bool>(true, true), vec2<bool>(true, false), true)), _wgslsmith_f_op_f32(round(1000f)) == _wgslsmith_f_op_f32(-1117f + -930f), _wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(1u, 35824u, 1u)), ~vec3<u32>(0u, 19955u, 52683u)), -_wgslsmith_add_i32(u_input.a, 2147483647i)), Struct_1(~firstTrailingBit(15182u), 170f, ~1i, vec2<bool>(true, true)), Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(60931u, 11572u, 1u, 0u), vec4<u32>(1u, 0u, 58268u, 102155u)), -977f, countOneBits(-30359i), vec2<bool>(true, true)), Struct_1(1u, _wgslsmith_f_op_f32(min(-1000f, -599f)), ~(-39726i), func_2(vec4<u32>(4294967295u, 0u, 30531u, 72638u))), true, vec3<u32>(~28543u, 3086u, 25797u), _wgslsmith_div_i32(abs(0i), select(-18560i, -20210i, true)))), Struct_1(_wgslsmith_div_u32(4278u, ~1u), -540f, u_input.a, !select(func_2(vec4<u32>(4294967295u, 4294967295u, 36816u, 1u)), vec2<bool>(true, true), vec2<bool>(true, true))), ~(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a, 1i), _wgslsmith_div_i32(39544i, u_input.a)) | 1i), Struct_1(1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-128f * 1346f), _wgslsmith_f_op_f32(max(-1000f, 406f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1077f)))), -func_3(-128f, Struct_4(Struct_3(vec2<bool>(false, true), Struct_2(Struct_1(1u, -724f, -1i, vec2<bool>(true, true)), Struct_1(6348u, -1000f, 2147483647i, vec2<bool>(false, false)), false, vec3<u32>(56605u, 0u, 0u), 1i), Struct_2(Struct_1(0u, -342f, u_input.a, vec2<bool>(false, false)), Struct_1(1u, -190f, u_input.a, vec2<bool>(false, true)), true, vec3<u32>(6494u, 0u, 4294967295u), 14327i), Struct_1(1u, -601f, -12225i, vec2<bool>(true, true)), Struct_2(Struct_1(5253u, -273f, u_input.a, vec2<bool>(false, true)), Struct_1(1u, -1000f, u_input.a, vec2<bool>(true, false)), false, vec3<u32>(4294967295u, 4294967295u, 0u), u_input.a)), Struct_1(4294967295u, -859f, u_input.a, vec2<bool>(true, false)), u_input.a, Struct_1(71027u, -1367f, u_input.a, vec2<bool>(false, true)), u_input.a)) ^ u_input.a, !select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(true, true, true)))), ~func_3(_wgslsmith_div_f32(-264f, -1972f), Struct_4(Struct_3(vec2<bool>(true, false), Struct_2(Struct_1(0u, -536f, 1i, vec2<bool>(true, false)), Struct_1(4294967295u, 1120f, -9296i, vec2<bool>(false, false)), false, vec3<u32>(1u, 20074u, 72299u), 26876i), Struct_2(Struct_1(27794u, 925f, u_input.a, vec2<bool>(false, true)), Struct_1(43996u, 719f, 2147483647i, vec2<bool>(false, true)), false, vec3<u32>(59566u, 76361u, 4294967295u), u_input.a), Struct_1(0u, -783f, u_input.a, vec2<bool>(false, false)), Struct_2(Struct_1(37193u, 1000f, u_input.a, vec2<bool>(true, true)), Struct_1(48116u, -516f, u_input.a, vec2<bool>(false, true)), false, vec3<u32>(7329u, 0u, 64292u), u_input.a)), Struct_1(14771u, 110f, 7181i, vec2<bool>(false, true)), _wgslsmith_sub_i32(u_input.a, -1i), Struct_1(12388u, 144f, u_input.a, vec2<bool>(true, true)), countOneBits(61154i))));
    var_0 = Struct_4(Struct_3(var_0.b.d, var_0.a.b, var_0.a.e, var_0.a.c.b, var_0.a.c), var_0.b, _wgslsmith_sub_i32(u_input.a, -7350i), var_0.b, _wgslsmith_dot_vec3_i32((-vec3<i32>(2147483647i, -2147483647i, -1i) << ((var_0.a.e.d ^ var_0.a.b.d) % vec3<u32>(32u))) >> (_wgslsmith_add_vec3_u32(~var_0.a.c.d, _wgslsmith_div_vec3_u32(vec3<u32>(var_0.a.d.a, var_0.d.a, var_0.b.a), vec3<u32>(var_0.d.a, 36127u, 135792u))) % vec3<u32>(32u)), firstTrailingBit(~vec3<i32>(2147483647i, 30576i, 0i)) ^ vec3<i32>(_wgslsmith_mod_i32(u_input.a, -1i), -28118i, -14894i)));
    return global1[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, var_0.d.a, 4294967295u) & var_0.a.b.d, ~(~var_0.a.c.d))), 3u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    global0 = true;
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-489f)))), _wgslsmith_f_op_f32(-638f * 509f))))) <= 864f;
    let var_1 = select(func_1(), global1[_wgslsmith_index_u32(~140839u, 3u)], func_1());
    var var_2 = Struct_3(!vec2<bool>(true, !var_1.x), Struct_2(Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(87146u, 0u, 1u, 1u), vec4<u32>(34762u, 4294967295u, 0u, 4294967295u)), -135f, 18010i, select(vec2<bool>(true, true), var_1.wx, select(vec2<bool>(var_1.x, false), var_1.yz, false))), Struct_1(1u, _wgslsmith_f_op_f32(sign(-197f)), _wgslsmith_clamp_i32(firstTrailingBit(u_input.a), u_input.a >> (4294967295u % 32u), -1i), !select(var_1.yx, var_1.xz, var_1.x)), var_1.x, max(vec3<u32>(1u, _wgslsmith_mult_u32(25917u, 1480u), 1u), vec3<u32>(~6778u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 75701u), vec3<u32>(0u, 1u, 1u)), ~12922u)), max(reverseBits(u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(-7354i, u_input.a, -2147483647i, 39160i) ^ vec4<i32>(56513i, u_input.a, 25685i, 1i), vec4<i32>(6709i, u_input.a, -10445i, u_input.a)))), Struct_2(Struct_1(35159u, 1f, min(countOneBits(15269i), u_input.a), var_1.ww), Struct_1(1u, _wgslsmith_f_op_f32(round(970f)), 1i, var_1.yy), true, ~vec3<u32>(~0u, 40101u, ~13534u), u_input.a), Struct_1(_wgslsmith_mult_u32(~1u, 1u), _wgslsmith_f_op_f32(round(219f)), -35936i, !vec2<bool>(!var_1.x, select(true, var_1.x, var_1.x))), Struct_2(Struct_1(~abs(34404u), _wgslsmith_f_op_f32(318f - -1409f), _wgslsmith_clamp_i32(reverseBits(u_input.a), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, 14872i), vec3<i32>(u_input.a, u_input.a, u_input.a))), var_1.wx), Struct_1(firstLeadingBit(~0u), 1246f, -1i, vec2<bool>(true, func_1().x)), !func_2(~vec4<u32>(21852u, 1u, 1301u, 4294967295u)).x, vec3<u32>(1u, 1u, 1u), firstLeadingBit(-u_input.a & -40472i)));
    var_2 = Struct_3(vec2<bool>(true, var_1.x), Struct_2(Struct_1(_wgslsmith_add_u32(var_2.b.a.a, var_2.c.d.x), var_2.c.a.b, _wgslsmith_mod_i32(countOneBits(-56338i), -2147483647i), vec2<bool>(true, var_2.c.b.b == -605f)), var_2.e.b, any(var_1) && var_1.x, var_2.e.d, var_2.e.a.c), var_2.c, Struct_1(var_2.b.b.a, _wgslsmith_f_op_f32(trunc(var_2.e.b.b)), u_input.a, var_1.yz), var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(-315f);
}

