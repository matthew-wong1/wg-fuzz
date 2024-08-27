struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, 7872i, vec4<i32>(-10161i, 2147483647i, -52735i, -1i));

var<private> global1: array<i32, 7> = array<i32, 7>(8598i, i32(-2147483648), 45318i, 55696i, i32(-2147483648), -50435i, 2147483647i);

var<private> global2: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(8547i, -36615i, 0i, 11349i), vec4<i32>(1462i, 18211i, 1i, 6263i), vec4<i32>(8760i, i32(-2147483648), 10600i, 2147483647i), vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), 0i), vec4<i32>(-3152i, 13005i, 2147483647i, -1i), vec4<i32>(60954i, -25707i, -9412i, i32(-2147483648)), vec4<i32>(2012i, 2147483647i, -3606i, i32(-2147483648)), vec4<i32>(15568i, -1i, -20149i, 17910i), vec4<i32>(93884i, i32(-2147483648), -31858i, -42055i), vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), 1i), vec4<i32>(1i, -61852i, -1i, 1606i), vec4<i32>(2147483647i, 47324i, 42567i, 1i), vec4<i32>(22106i, -13851i, -1i, 45388i), vec4<i32>(-19974i, -1i, i32(-2147483648), 20750i), vec4<i32>(-1i, -53775i, -1i, -14910i));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> bool {
    global0 = Struct_1(true, global0.b, ~reverseBits(countOneBits(u_input.a) | _wgslsmith_mult_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(1u, 7u)], u_input.a.x, global0.b, 1i), vec4<i32>(-1i, 2147483647i, global0.b, -2147483647i))));
    let var_0 = -1268f;
    let var_1 = _wgslsmith_mod_vec4_u32(abs(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(_wgslsmith_add_u32(~abs(4294967295u), 2430u), _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(1u, 26220u)), vec2<u32>(1u, 1u)), 1u, 0u));
    global2 = array<vec4<i32>, 15>();
    let var_2 = abs(_wgslsmith_sub_vec4_u32(select(abs(vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x)), ~vec4<u32>(var_1.x, 14318u, var_1.x, var_1.x), vec4<bool>(true, global0.a, global0.a, global0.a)), vec4<u32>(countOneBits(var_1.x), 56771u, 40563u, 0u)) | vec4<u32>(~var_1.x, ~var_1.x | ~52208u, firstTrailingBit(~var_1.x), ~64650u));
    return true;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: u32, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = arg_3;
    global2 = array<vec4<i32>, 15>();
    var var_1 = Struct_1(any(arg_0) & true, -(~abs(firstTrailingBit(u_input.a.x))), max(vec4<i32>(firstTrailingBit(-28994i), -6548i, 2147483647i, 2147483647i), vec4<i32>(arg_3.b | arg_3.c.x, 16695i, i32(-1i) * -1i, u_input.a.x)));
    let var_2 = arg_3;
    var_1 = Struct_1(arg_0.x, min(-8651i, 48506i), -vec4<i32>(-(var_0.c.x << (arg_2 % 32u)), max(-2147483647i, _wgslsmith_div_i32(-17244i, arg_1.x)), i32(-1i) * -global0.c.x, select(18505i, 0i, any(arg_0))));
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(317f, -958f, 1262f, 557f))))) - vec4<f32>(982f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-869f, -1000f)), _wgslsmith_div_f32(1777f, -138f), -632f))));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(vec4<bool>(true, arg_3.a, !global0.a, func_3()), ~arg_1.c.zz, 4294967295u, Struct_1(arg_3.a, ~(~1i), _wgslsmith_mod_vec4_i32(arg_1.c, -vec4<i32>(0i, u_input.a.x, arg_1.c.x, global1[_wgslsmith_index_u32(0u, 7u)]))))) * _wgslsmith_f_op_vec4_f32(func_4(select(vec4<bool>(true, any(vec4<bool>(arg_0.x, true, arg_1.a, arg_3.a)), false, any(vec3<bool>(true, true, false))), !select(vec4<bool>(true, arg_1.a, global0.a, arg_3.a), vec4<bool>(global0.a, true, arg_0.x, false), global0.a), arg_0.x), global0.c.zx, 1u, Struct_1(arg_3.a, arg_1.c.x, arg_3.c))));
    global2 = array<vec4<i32>, 15>();
    global2 = array<vec4<i32>, 15>();
    global1 = array<i32, 7>();
    global2 = array<vec4<i32>, 15>();
    return arg_0.x;
}

fn func_5(arg_0: bool, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = -2147483647i;
    global0 = Struct_1(!(var_0 > -var_0), (global1[_wgslsmith_index_u32(~24777u, 7u)] & -1i) >> (1u % 32u), u_input.a);
    global1 = array<i32, 7>();
    global0 = Struct_1(arg_0, ~var_0, _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(-u_input.a, u_input.a), vec4<i32>(_wgslsmith_mult_i32(2147483647i, global0.c.x), 1i, ~28057i, _wgslsmith_add_i32(global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(1u, 7u)]))), firstLeadingBit(-vec4<i32>(1i, global0.c.x, var_0, 16204i))));
    var var_1 = vec3<i32>(countOneBits(i32(-1i) * -(global1[_wgslsmith_index_u32(29901u, 7u)] & -15806i)), -33538i, -15808i);
    return Struct_1((global0.a || global0.a) & false, _wgslsmith_mult_i32(~global0.b, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(global0.c.x, var_0), -27290i, ~u_input.a.x, i32(-1i) * -23949i), vec4<i32>(30097i, select(48201i, 2147483647i, false), 10236i >> (1u % 32u), abs(-1i)))), u_input.a);
}

fn func_1() -> f32 {
    global1 = array<i32, 7>();
    global0 = func_5(!(!func_2(vec2<bool>(true, true), Struct_1(global0.a, u_input.a.x, vec4<i32>(4847i, -2147483647i, -5632i, 0i)), vec3<f32>(276f, 1953f, 325f), Struct_1(false, global1[_wgslsmith_index_u32(1u, 7u)], vec4<i32>(-8242i, 0i, 3115i, 2147483647i)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1475f * 2642f), _wgslsmith_f_op_vec4_f32(func_4(vec4<bool>(true, global0.a, global0.a, global0.a), global0.c.xy, 25086u, Struct_1(global0.a, -3622i, vec4<i32>(0i, 2147483647i, -44646i, 19580i)))).x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(158f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(689f + 347f), _wgslsmith_f_op_f32(998f - 1608f)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-2486f, -1035f)))), 1000f, 1593f));
    var var_0 = reverseBits(~(~countOneBits(vec2<u32>(9507u, 1u))) << (_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, 0u), vec2<u32>(1u, 1u)), ~(~vec2<u32>(1u, 1u))) % vec2<u32>(32u)));
    var_0 = vec2<u32>(firstTrailingBit(~_wgslsmith_add_u32(54915u ^ var_0.x, var_0.x)), ~(~_wgslsmith_div_u32(~4294967295u, min(var_0.x, var_0.x))));
    let var_1 = func_5(global0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-994f * 1000f) * _wgslsmith_f_op_f32(step(-598f, -1370f))), -1346f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-243f))), -1069f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(412f, -103f, 227f, 280f), vec4<f32>(-667f, 957f, -1310f, 946f)) * vec4<f32>(-679f, _wgslsmith_f_op_f32(-929f + 728f), 590f, _wgslsmith_f_op_f32(-478f + 1098f)))));
    return _wgslsmith_f_op_f32(f32(-1f) * -160f);
}

fn func_6(arg_0: u32, arg_1: f32) -> Struct_1 {
    let var_0 = !global0.a;
    var var_1 = _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(193f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec4_f32(func_4(vec4<bool>(false, global0.a, var_0, true), vec2<i32>(global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(arg_0, 7u)]), 4294967295u, Struct_1(true, global0.c.x, vec4<i32>(49647i, 2147483647i, global1[_wgslsmith_index_u32(1u, 7u)], u_input.a.x)))).x)))));
    var var_2 = _wgslsmith_div_vec3_u32(vec3<u32>(arg_0, ~(~arg_0), arg_0), ~vec3<u32>(arg_0, 0u, arg_0) >> (vec3<u32>(~arg_0, _wgslsmith_div_u32(4294967295u, arg_0), 1u) % vec3<u32>(32u))) | reverseBits(abs(~vec3<u32>(36942u, arg_0, arg_0) << (~vec3<u32>(arg_0, 4294967295u, 15756u) % vec3<u32>(32u))));
    let var_3 = -vec3<i32>(36174i, reverseBits(1i | func_5(global0.a, vec4<f32>(arg_1, -141f, arg_1, arg_1)).c.x), global0.b);
    var var_4 = func_5(any(vec2<bool>(global0.a, var_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(703f, 378f, -723f, arg_1) * vec4<f32>(-389f, arg_1, 510f, arg_1))))));
    return func_5(false, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1, arg_1))), _wgslsmith_f_op_f32(ceil(-1199f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-414f, 1000f), -1170f)), arg_1) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-267f, arg_1, arg_1, arg_1))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(753f, 577f, arg_1, arg_1))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(~1u, _wgslsmith_f_op_f32(-1734f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(350f)) + _wgslsmith_f_op_f32(round(273f))), _wgslsmith_f_op_f32(func_1()))));
    var var_1 = _wgslsmith_div_vec4_i32(global0.c >> (~vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), -u_input.a) << (firstTrailingBit(abs(vec4<u32>(firstTrailingBit(64054u), ~1950u, 1u, ~51646u))) % vec4<u32>(32u));
    let var_2 = _wgslsmith_mult_u32(1u, _wgslsmith_clamp_u32(34377u, 44749u, ~77711u) | _wgslsmith_add_u32(31642u, firstTrailingBit(97242u))) | 1u;
    let var_3 = reverseBits(vec3<i32>(~(-49846i), firstLeadingBit(abs(global1[_wgslsmith_index_u32(0u, 7u)])), 17065i));
    global2 = array<vec4<i32>, 15>();
    global0 = Struct_1(false, -select(select(abs(-1i), func_5(global0.a, vec4<f32>(-593f, 2069f, -1878f, 1859f)).b, global0.a), firstLeadingBit(-27159i) & var_0.c.x, false), u_input.a);
    var var_4 = global0.a;
    global1 = array<i32, 7>();
    let var_5 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-954f - -871f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1627f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), func_3()))), _wgslsmith_f_op_f32(738f - _wgslsmith_div_f32(-1277f, -653f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(34558u, 1u)), ~vec2<u32>(0u, var_2)), 1u), ((vec4<u32>(23360u, var_2, 0u, 62404u) | ~vec4<u32>(var_2, var_2, var_2, var_2)) << (countOneBits(select(vec4<u32>(var_2, var_2, 0u, 29375u), vec4<u32>(1u, 4294967295u, var_2, 51253u), vec4<bool>(var_0.a, true, global0.a, false))) % vec4<u32>(32u))) >> (~(vec4<u32>(26392u, var_2, 1u, var_2) ^ (vec4<u32>(var_2, var_2, var_2, var_2) & vec4<u32>(var_2, 0u, 17346u, 15913u))) % vec4<u32>(32u)));
}

