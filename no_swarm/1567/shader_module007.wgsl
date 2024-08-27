struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(Struct_2(Struct_1(vec2<i32>(2147483647i, -20402i), 1u), vec3<f32>(1900f, -1000f, 979f)), true), Struct_3(Struct_2(Struct_1(vec2<i32>(13043i, -1i), 78342u), vec3<f32>(456f, 681f, -1914f)), true), Struct_3(Struct_2(Struct_1(vec2<i32>(2147483647i, 0i), 40461u), vec3<f32>(570f, 1000f, 943f)), true), Struct_3(Struct_2(Struct_1(vec2<i32>(-1i, i32(-2147483648)), 4294967295u), vec3<f32>(1400f, 827f, 122f)), false), Struct_3(Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 1546i), 11717u), vec3<f32>(-385f, 796f, 1464f)), true), Struct_3(Struct_2(Struct_1(vec2<i32>(0i, -45440i), 0u), vec3<f32>(-229f, 1376f, -763f)), true), Struct_3(Struct_2(Struct_1(vec2<i32>(-10602i, -1i), 1u), vec3<f32>(-375f, 935f, -1331f)), true), Struct_3(Struct_2(Struct_1(vec2<i32>(-19319i, 7763i), 1u), vec3<f32>(1987f, -473f, -460f)), false), Struct_3(Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 76947i), 17920u), vec3<f32>(946f, 1038f, -428f)), false), Struct_3(Struct_2(Struct_1(vec2<i32>(-7859i, -22307i), 1u), vec3<f32>(1346f, -170f, -1276f)), true), Struct_3(Struct_2(Struct_1(vec2<i32>(2165i, -12316i), 30574u), vec3<f32>(-2296f, 1000f, 1477f)), false), Struct_3(Struct_2(Struct_1(vec2<i32>(-1i, -1i), 4294967295u), vec3<f32>(-699f, 778f, -1819f)), false));

var<private> global1: array<bool, 17>;

var<private> global2: array<i32, 1> = array<i32, 1>(23276i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: vec2<i32>) -> i32 {
    global1 = array<bool, 17>();
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2075f, arg_1.x, arg_2.a.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.a.b * arg_2.a.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.a.b)))))));
    global2 = array<i32, 1>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(var_0.x + -1103f), -1309f, arg_2.a.b.x, _wgslsmith_f_op_f32(sign(var_0.x))))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1301f)))), var_0.x, -1000f, -804f)) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(1426f * 1000f), _wgslsmith_div_f32(1092f, -1905f), _wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1072f, -738f, var_0.x, 1094f), vec4<f32>(arg_2.a.b.x, arg_2.a.b.x, var_0.x, -248f), vec4<bool>(global1[_wgslsmith_index_u32(35438u, 17u)], true, global1[_wgslsmith_index_u32(85261u, 17u)], global1[_wgslsmith_index_u32(arg_2.a.a.b, 17u)])))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.b.x, -1241f, -276f, var_0.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -112f, var_0.x, 1541f) - vec4<f32>(var_0.x, arg_1.x, 1356f, arg_1.x)))))));
    var var_2 = arg_2.a.a;
    return firstLeadingBit(-firstTrailingBit(-arg_3.x));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: bool, arg_3: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-476f, arg_3)) - _wgslsmith_f_op_f32(floor(arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(679f)) - _wgslsmith_div_f32(1000f, 1380f)), _wgslsmith_f_op_f32(exp2(arg_1))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(782f, arg_1, 1244f))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_3, arg_1, arg_3)))))));
    let var_1 = Struct_4(vec3<i32>(1i, reverseBits(_wgslsmith_sub_i32(func_3(global1[_wgslsmith_index_u32(1u, 17u)], var_0.zy, global0[_wgslsmith_index_u32(4294967295u, 12u)], u_input.b), select(u_input.a, global2[_wgslsmith_index_u32(u_input.e, 1u)], true))), 15403i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_3 * -527f), _wgslsmith_f_op_f32(-1293f - 429f), var_0.x, -336f))), arg_0, !(!select(true, all(vec2<bool>(arg_0, arg_2)), all(vec2<bool>(global1[_wgslsmith_index_u32(40300u, 17u)], arg_0)))));
    global0 = array<Struct_3, 12>();
    var var_2 = Struct_2(Struct_1(vec2<i32>(~2147483647i, 2147483647i << (u_input.e % 32u)), u_input.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b.xwx)));
    var_2 = Struct_2(Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(min(48855i, -1i), -3718i), var_1.a.zz), ~abs(u_input.d)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - 2103f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1317f, arg_1)) * _wgslsmith_f_op_f32(-arg_3))), 864f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1082f, 1019f))) + _wgslsmith_f_op_f32(var_0.x + var_2.b.x))));
    return _wgslsmith_f_op_f32(step(1397f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x)))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(777f, _wgslsmith_f_op_f32(f32(-1f) * -984f), all(vec4<bool>(global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(26347u, 17u)], false, global1[_wgslsmith_index_u32(u_input.e, 17u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-301f, 550f)) * _wgslsmith_f_op_f32(-1531f - -507f))), 1f, _wgslsmith_f_op_f32(-1112f - -394f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - vec4<f32>(_wgslsmith_f_op_f32(-159f * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-137f, 617f))), _wgslsmith_f_op_f32(func_2(false, _wgslsmith_f_op_f32(-1745f * 768f), global1[_wgslsmith_index_u32(u_input.c.x, 17u)] == true, -1243f)), _wgslsmith_div_f32(-1233f, -1181f))));
    var var_1 = vec2<bool>(select(global1[_wgslsmith_index_u32(~73302u, 17u)], true, any(!(!vec3<bool>(global1[_wgslsmith_index_u32(4730u, 17u)], global1[_wgslsmith_index_u32(u_input.e, 17u)], global1[_wgslsmith_index_u32(u_input.c.x, 17u)])))), any(select(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 17u)], false, true, global1[_wgslsmith_index_u32(u_input.c.x, 17u)]), vec4<bool>(true, true, all(vec2<bool>(global1[_wgslsmith_index_u32(40319u, 17u)], true)), all(vec2<bool>(false, global1[_wgslsmith_index_u32(64740u, 17u)]))), !select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(1u, 17u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.d, 17u)], true, true), global1[_wgslsmith_index_u32(4294967295u, 17u)]))));
    var var_2 = true;
    let var_3 = _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(~(-1552i), ~_wgslsmith_mult_i32(u_input.a, abs(-2147483647i)), 10847i), countOneBits(_wgslsmith_mod_i32(-1i, global2[_wgslsmith_index_u32(abs(u_input.c.x), 1u)]) >> (_wgslsmith_div_u32(~29325u, u_input.c.x) % 32u)), ~(-3951i));
    var var_4 = Struct_4(((vec3<i32>(var_3, 14544i, var_3) & -vec3<i32>(var_3, arg_0, -2147483647i)) << (u_input.c % vec3<u32>(32u))) ^ abs(abs(vec3<i32>(global2[_wgslsmith_index_u32(1u, 1u)], arg_0, 1i))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1610f - var_0.x))), var_0.x, var_0.x, _wgslsmith_f_op_f32(min(492f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_0.x))))))), !select(false != var_1.x, var_1.x, select(false, false, false)) && !global1[_wgslsmith_index_u32(4294967295u, 17u)], any(select(!select(vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 17u)]), vec2<bool>(false, false), vec2<bool>(global1[_wgslsmith_index_u32(43007u, 17u)], global1[_wgslsmith_index_u32(u_input.c.x, 17u)])), select(vec2<bool>(global1[_wgslsmith_index_u32(86859u, 17u)], var_1.x), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.d, 17u)], global1[_wgslsmith_index_u32(1u, 17u)]), vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, global1[_wgslsmith_index_u32(6808u, 17u)])), any(vec2<bool>(true, false))), true)));
    return Struct_1(~u_input.b, u_input.c.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_4, arg_3: i32) -> Struct_3 {
    var var_0 = abs(-_wgslsmith_mult_i32(_wgslsmith_mod_i32(-66296i, 8488i), arg_1.a.x) ^ ~(~(arg_3 | arg_0.a.x)));
    let var_1 = vec3<i32>(21757i, firstTrailingBit(arg_0.a.x), _wgslsmith_sub_i32(arg_0.a.x, -2147483647i));
    return global0[_wgslsmith_index_u32(u_input.c.x, 12u)];
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_4) -> StorageBuffer {
    let var_0 = func_1(firstTrailingBit(~(_wgslsmith_add_i32(2147483647i, 0i) | max(arg_1.a.a.a.x, u_input.a))));
    let var_1 = select(select(select(vec2<bool>(global1[_wgslsmith_index_u32(arg_1.a.a.b, 17u)], arg_3.d), vec2<bool>(false, arg_3.c & true), select(vec2<bool>(arg_3.d, false), select(vec2<bool>(arg_2.d, false), vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 17u)]), vec2<bool>(arg_1.b, false)), !arg_1.b)), !select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(arg_3.d, true)), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.d, 17u)]), !vec2<bool>(arg_2.d, arg_2.d)), !(!select(vec2<bool>(arg_3.d, true), vec2<bool>(arg_2.c, true), vec2<bool>(false, arg_1.b)))), vec2<bool>(!global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.b | 74093u, ~arg_1.a.a.b), 17u)], all(vec2<bool>(global1[_wgslsmith_index_u32(arg_1.a.a.b, 17u)], true))), select(select(select(select(vec2<bool>(false, arg_1.b), vec2<bool>(global1[_wgslsmith_index_u32(var_0.b, 17u)], global1[_wgslsmith_index_u32(0u, 17u)]), vec2<bool>(false, arg_2.d)), !vec2<bool>(true, arg_1.b), vec2<bool>(global1[_wgslsmith_index_u32(var_0.b, 17u)], arg_3.c)), !vec2<bool>(arg_1.b, false), false), vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(33934u, 8460u) & (u_input.d << (699u % 32u)), 17u)], func_4(arg_1.a.a, Struct_1(arg_1.a.a.a, 4294967295u), arg_2, 55308i).b), any(!(!vec2<bool>(true, arg_1.b)))));
    let var_2 = arg_3.b;
    global1 = array<bool, 17>();
    let var_3 = firstTrailingBit(abs(~(~vec4<u32>(34835u, arg_1.a.a.b, u_input.c.x, 4294967295u)))) << (firstTrailingBit(~reverseBits(vec4<u32>(u_input.e, 4294967295u, 0u, arg_1.a.a.b))) % vec4<u32>(32u));
    return StorageBuffer(_wgslsmith_mod_i32(arg_0, arg_1.a.a.a.x), arg_2.a.x >> (firstTrailingBit(46287u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 17>();
    let var_0 = ~abs(u_input.c.xx | u_input.c.yx);
    global1 = array<bool, 17>();
    let var_1 = ~(firstTrailingBit(_wgslsmith_mult_vec4_u32(~vec4<u32>(14265u, 0u, u_input.c.x, 21992u), ~vec4<u32>(56203u, 57521u, u_input.d, 12119u))) >> (vec4<u32>(~_wgslsmith_div_u32(59114u, 12242u), _wgslsmith_add_u32(var_0.x, 0u), u_input.d, countOneBits(~73991u)) % vec4<u32>(32u)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-918f - 1281f));
    global0 = array<Struct_3, 12>();
    let x = u_input.a;
    s_output = func_5(-55411i, func_4(Struct_1(vec2<i32>(1i, ~u_input.a), 19515u), func_1(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(u_input.e & var_0.x, 1u)], -u_input.a)), Struct_4(_wgslsmith_clamp_vec3_i32(-vec3<i32>(global2[_wgslsmith_index_u32(72268u, 1u)], -1i, -1i), vec3<i32>(58782i, 0i, u_input.b.x), vec3<i32>(1i, 1i, -1i) << (u_input.c % vec3<u32>(32u))), vec4<f32>(425f, _wgslsmith_f_op_f32(max(252f, -577f)), 791f, _wgslsmith_f_op_f32(ceil(920f))), false, global1[_wgslsmith_index_u32(~var_0.x, 17u)] & true), countOneBits(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 13561i, global2[_wgslsmith_index_u32(16453u, 1u)], global2[_wgslsmith_index_u32(var_0.x, 1u)]), vec4<i32>(-71974i, global2[_wgslsmith_index_u32(1u, 1u)], 28114i, -1i)), select(vec4<i32>(-2995i, global2[_wgslsmith_index_u32(u_input.e, 1u)], u_input.a, u_input.a), vec4<i32>(global2[_wgslsmith_index_u32(var_0.x, 1u)], -1i, global2[_wgslsmith_index_u32(1u, 1u)], 1i), false)))), Struct_4(vec3<i32>(-1i, 7023i, -u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1144f, 1358f, -1276f)) * vec4<f32>(596f, -225f, 1068f, 407f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(281f, -746f, 1136f, -883f))), !(global1[_wgslsmith_index_u32(countOneBits(u_input.c.x), 17u)] || true), global1[_wgslsmith_index_u32(var_1.x, 17u)]), Struct_4(~vec3<i32>(countOneBits(global2[_wgslsmith_index_u32(17189u, 1u)]), -29707i, func_3(global1[_wgslsmith_index_u32(var_1.x, 17u)], vec2<f32>(-492f, -1533f), global0[_wgslsmith_index_u32(53154u, 12u)], vec2<i32>(-27523i, -1i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -207f), _wgslsmith_f_op_f32(f32(-1f) * -355f), 875f, _wgslsmith_f_op_f32(max(-635f, -1523f)))), false, global1[_wgslsmith_index_u32(~reverseBits(0u), 17u)] != true));
}

