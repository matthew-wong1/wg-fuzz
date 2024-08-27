struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29>;

var<private> global1: u32 = 1u;

var<private> global2: array<vec2<f32>, 5> = array<vec2<f32>, 5>(vec2<f32>(-654f, -135f), vec2<f32>(1011f, 612f), vec2<f32>(195f, -342f), vec2<f32>(-1944f, -1336f), vec2<f32>(-1264f, -778f));

var<private> global3: array<Struct_3, 23>;

var<private> global4: f32 = -460f;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_3(Struct_2(Struct_1(min(select(vec3<i32>(-2147483647i, u_input.e, u_input.d.x), vec3<i32>(u_input.d.x, u_input.d.x, 0i), vec3<bool>(false, true, false)), -vec3<i32>(u_input.e, u_input.d.x, u_input.d.x)), vec2<bool>(u_input.e > 2147483647i, false), u_input.c.x), any(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false)), !vec2<bool>(select(false, true, false), all(vec2<bool>(false, true))), Struct_1(vec3<i32>(~75006i, ~u_input.e, countOneBits(u_input.e)), vec2<bool>(true, true), firstTrailingBit(7911u) & 10279u), Struct_1(~(-vec3<i32>(-18077i, -2147483647i, 2147483647i)), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, true), true), true), 71829u)));
    let var_1 = ~(~32958u);
    global1 = 100891u;
    let var_2 = Struct_2(var_0.a.e, var_0.a.d.b.x != var_0.a.c.x, vec2<bool>(true, true), var_0.a.e, var_0.a.a);
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(702f * 443f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1678f)) * _wgslsmith_f_op_f32(select(-500f, -121f, true)))) * _wgslsmith_f_op_f32(min(-516f, 807f)))));
    return !(!select(!select(vec4<bool>(true, false, var_0.a.d.b.x, false), vec4<bool>(var_2.e.b.x, false, var_0.a.c.x, var_0.a.a.b.x), vec4<bool>(var_2.e.b.x, true, var_0.a.c.x, true)), vec4<bool>(var_2.c.x, false && var_0.a.a.b.x, false, false), true));
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: vec2<i32>, arg_3: vec4<i32>) -> vec2<bool> {
    var var_0 = vec4<bool>(false, false, any(!vec2<bool>(global0[_wgslsmith_index_u32(1u, 29u)] >= 4294967295u, true)), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-699f)) + _wgslsmith_f_op_f32(696f * arg_0.x)) > arg_0.x));
    global2 = array<vec2<f32>, 5>();
    let var_1 = func_3();
    var var_2 = -firstTrailingBit(~_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(0i, arg_2.x)), ~arg_3.zw));
    var var_3 = Struct_1(_wgslsmith_mult_vec3_i32(~vec3<i32>(_wgslsmith_add_i32(arg_2.x, arg_2.x), u_input.e, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, u_input.e, -1i), arg_3.xxx)), ~(vec3<i32>(-10021i, u_input.e, arg_2.x) | vec3<i32>(arg_1, 2147483647i, arg_1))), var_1.yz, global0[_wgslsmith_index_u32(78739u, 29u)]);
    return select(vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(517f * 1000f)) != _wgslsmith_f_op_f32(abs(165f)), false), !select(var_0.wx, select(select(vec2<bool>(false, true), var_3.b, false), vec2<bool>(true, true), true), false), select(false & var_0.x, select(false && (arg_0.x > arg_0.x), var_0.x, false), true));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec3<bool>, arg_3: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1262f))) - -1517f));
    var var_1 = Struct_3(Struct_2(Struct_1(~arg_3.a.e.a >> (~vec3<u32>(arg_0.c, 0u, 39427u) % vec3<u32>(32u)), vec2<bool>(arg_3.a.b, true), ~arg_0.c), arg_3.a.b, !(!(!vec2<bool>(arg_3.a.d.b.x, false))), arg_0, arg_0));
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(525f + -408f) + _wgslsmith_div_f32(584f, -623f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(960f)), _wgslsmith_f_op_f32(f32(-1f) * -1555f))))));
    let var_2 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-755f, 1843f, -1480f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1669f, 1898f, 1689f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(273f, 954f, 360f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1293f, -311f, 157f)))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(459f, 1767f, -117f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(227f, -565f, -1000f)))))))), arg_3.a.a.a.x, vec2<i32>(_wgslsmith_mod_i32(1i, select(arg_3.a.e.a.x, u_input.e, true) << (~arg_0.c % 32u)), i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(41155i, arg_3.a.e.a.x), vec2<i32>(u_input.d.x, u_input.e))), vec4<i32>(_wgslsmith_sub_i32(-arg_3.a.a.a.x >> (~1u % 32u), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_0.a.xx, vec2<i32>(2147483647i, u_input.d.x), vec2<i32>(var_1.a.a.a.x, -1i)), vec2<i32>(2147483647i, u_input.d.x))), -u_input.e, _wgslsmith_add_i32(arg_0.a.x & ~u_input.e, ~_wgslsmith_add_i32(6105i, u_input.e)), -(i32(-1i) * -11930i))).x;
    let var_3 = true;
    return Struct_1(arg_0.a, arg_3.a.a.b, arg_3.a.d.c);
}

fn func_1() -> f32 {
    let var_0 = Struct_2(func_4(Struct_1(select(~vec3<i32>(u_input.e, 0i, -1i), -vec3<i32>(-1i, u_input.d.x, 26655i), vec3<bool>(true, true, true)), func_2(_wgslsmith_div_vec3_f32(vec3<f32>(254f, 2248f, -989f), vec3<f32>(656f, 1729f, -1000f)), 0i, ~vec2<i32>(u_input.e, -21115i), abs(vec4<i32>(-35361i, u_input.e, u_input.e, u_input.d.x))), ~u_input.a.x), u_input.b.x, vec3<bool>(true, true, true), Struct_3(Struct_2(Struct_1(vec3<i32>(-2147483647i, 0i, u_input.d.x), vec2<bool>(true, true), global0[_wgslsmith_index_u32(u_input.b.x, 29u)]), true, vec2<bool>(true, true), Struct_1(vec3<i32>(-1i, u_input.e, u_input.d.x), vec2<bool>(false, false), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], 29u)]), Struct_1(vec3<i32>(-5924i, u_input.d.x, 0i), vec2<bool>(false, false), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 29u)], 29u)])))), !(reverseBits(-2147483647i) < u_input.d.x), !(!(!func_2(vec3<f32>(1000f, -306f, 249f), u_input.d.x, u_input.d, vec4<i32>(u_input.e, u_input.e, 28123i, u_input.d.x)))), func_4(Struct_1(-vec3<i32>(3971i, u_input.d.x, -1i) | (vec3<i32>(u_input.d.x, 0i, 0i) >> (u_input.c % vec3<u32>(32u))), func_3().xy, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstLeadingBit(u_input.a.x), ~u_input.a.x, _wgslsmith_div_u32(37491u, 4294967295u)), 29u)]), global0[_wgslsmith_index_u32(0u, 29u)], !vec3<bool>(true, func_4(Struct_1(vec3<i32>(2147483647i, u_input.e, u_input.d.x), vec2<bool>(false, false), global0[_wgslsmith_index_u32(8024u, 29u)]), 4294967295u, vec3<bool>(true, false, true), global3[_wgslsmith_index_u32(54040u, 23u)]).b.x, false), global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(~u_input.b.x), 29u)], 23u)]), func_4(Struct_1(vec3<i32>(u_input.d.x, i32(-1i) * -16888i, u_input.d.x), select(func_4(Struct_1(vec3<i32>(37570i, u_input.e, u_input.e), vec2<bool>(false, true), 1u), 21060u, vec3<bool>(false, false, true), global3[_wgslsmith_index_u32(11355u, 23u)]).b, vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(12361u, 29u)], 48918u)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(~33155u), firstLeadingBit(~0u), _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.c.x), ~u_input.c.x)), 29u)], select(select(vec3<bool>(false, true, true), func_3().xxy, func_2(vec3<f32>(471f, 1000f, 774f), u_input.d.x, u_input.d, vec4<i32>(u_input.e, u_input.d.x, u_input.e, u_input.e)).x), vec3<bool>(true, func_3().x, all(vec2<bool>(true, true))), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), Struct_3(Struct_2(Struct_1(vec3<i32>(u_input.d.x, u_input.e, u_input.e), vec2<bool>(false, true), 1u), true, func_4(Struct_1(vec3<i32>(-23899i, 27479i, u_input.e), vec2<bool>(true, false), 37145u), 0u, vec3<bool>(false, true, true), global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3812u, 29u)], 29u)], 23u)]).b, Struct_1(vec3<i32>(-13153i, u_input.d.x, 1i), vec2<bool>(true, true), 34502u), Struct_1(vec3<i32>(0i, 24096i, u_input.e), vec2<bool>(true, false), 1u)))));
    global4 = _wgslsmith_f_op_f32(min(-1347f, 204f));
    var var_1 = _wgslsmith_add_u32(~countOneBits(0u), var_0.d.c);
    let var_2 = var_0.a;
    var var_3 = vec4<i32>(0i, _wgslsmith_mod_i32(1i, _wgslsmith_dot_vec2_i32(~vec2<i32>(var_2.a.x, -3274i), vec2<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.e.a.x, 1i, -1i, 2147483647i), vec4<i32>(7092i, 2147483647i, var_0.a.a.x, -2147483647i))))), ~func_4(func_4(Struct_1(vec3<i32>(u_input.e, var_2.a.x, var_0.e.a.x), vec2<bool>(true, true), 4294967295u), var_2.c >> (0u % 32u), func_3().yyw, global3[_wgslsmith_index_u32(func_4(var_2, 47179u, vec3<bool>(true, false, false), Struct_3(var_0)).c, 23u)]), ~_wgslsmith_dot_vec3_u32(u_input.b, u_input.b), !(!vec3<bool>(var_0.a.b.x, var_2.b.x, var_2.b.x)), global3[_wgslsmith_index_u32(26517u, 23u)]).a.x, -min((var_2.a.x ^ -1i) << (1u % 32u), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(43182i, var_0.a.a.x, -39493i), vec3<i32>(-68645i, var_0.d.a.x, var_0.d.a.x)), _wgslsmith_clamp_i32(-73156i, -31399i, 4672i))));
    return -433f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 29>();
    global0 = array<u32, 29>();
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~global0[_wgslsmith_index_u32(u_input.a.x, 29u)]), u_input.b.x), 23u)];
    global0 = array<u32, 29>();
    var var_1 = vec2<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-551f))), _wgslsmith_div_f32(-485f, _wgslsmith_div_f32(-948f, -1069f))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_f_op_f32(max(201f, _wgslsmith_f_op_f32(1000f - -420f)))), all(var_0.a.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i >> (1u % 32u), ~(-1i), abs(var_0.a.e.a.x), _wgslsmith_div_i32(u_input.d.x, 1i)), countOneBits(vec4<i32>(-5497i, -3801i, -2147483647i, 37661i) | vec4<i32>(-32080i, var_0.a.d.a.x, 67026i, 2147483647i))), _wgslsmith_mult_i32(select(var_0.a.e.a.x, u_input.d.x << (var_0.a.d.c % 32u), true), 22765i)), ~countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], u_input.a.x), u_input.a)) ^ vec3<u32>(countOneBits(abs(30235u)), _wgslsmith_div_u32(_wgslsmith_clamp_u32(43344u, 15731u, 8935u), max(u_input.b.x, u_input.b.x)), func_4(Struct_1(var_0.a.d.a, vec2<bool>(var_1.x, true), global0[_wgslsmith_index_u32(4294967295u, 29u)]), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.c.x, 29u)], 71040u), !vec3<bool>(false, var_0.a.c.x, var_1.x), global3[_wgslsmith_index_u32(u_input.c.x, 23u)]).c), -25325i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))));
}

