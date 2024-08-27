struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<f32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 1> = array<vec3<bool>, 1>(vec3<bool>(true, true, false));

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(68382i, vec4<i32>(-1i, 57818i, 75927i, -21124i), vec4<f32>(206f, -1000f, 303f, 242f)), Struct_1(i32(-2147483648), vec4<i32>(2147483647i, 1i, i32(-2147483648), 1i), vec4<f32>(-1000f, -611f, 1256f, 832f)), Struct_1(i32(-2147483648), vec4<i32>(-7519i, 27833i, -8208i, -33744i), vec4<f32>(-484f, -882f, 636f, 526f)), Struct_1(6549i, vec4<i32>(i32(-2147483648), -2698i, 2147483647i, -1i), vec4<f32>(365f, 358f, -985f, -1953f)), Struct_1(2147483647i, vec4<i32>(i32(-2147483648), -31739i, 28840i, i32(-2147483648)), vec4<f32>(628f, -1982f, -631f, -1302f)), Struct_1(i32(-2147483648), vec4<i32>(i32(-2147483648), -4382i, 39917i, 0i), vec4<f32>(-272f, -481f, 1388f, 818f)), Struct_1(5043i, vec4<i32>(0i, i32(-2147483648), 1i, 2147483647i), vec4<f32>(1000f, -3244f, -1000f, -763f)), Struct_1(1i, vec4<i32>(3692i, 1i, 2147483647i, 2147483647i), vec4<f32>(373f, 366f, 605f, 901f)), Struct_1(i32(-2147483648), vec4<i32>(-35207i, 2147483647i, -15493i, -14778i), vec4<f32>(-672f, -1000f, -580f, -1315f)), Struct_1(53604i, vec4<i32>(0i, -36650i, 2147483647i, -25730i), vec4<f32>(195f, 107f, 1068f, -359f)), Struct_1(i32(-2147483648), vec4<i32>(-1i, 34019i, -1i, 1i), vec4<f32>(-1000f, 1000f, -764f, 1417f)), Struct_1(0i, vec4<i32>(-29659i, -16325i, 18842i, 2147483647i), vec4<f32>(761f, -1000f, -671f, 247f)), Struct_1(i32(-2147483648), vec4<i32>(0i, -18019i, 0i, 57116i), vec4<f32>(-197f, 1353f, -326f, -556f)), Struct_1(15521i, vec4<i32>(18096i, -1i, 2147483647i, 74005i), vec4<f32>(315f, -1314f, -714f, 343f)), Struct_1(-43268i, vec4<i32>(-47876i, -9351i, 29614i, 0i), vec4<f32>(-1105f, 1000f, 363f, -470f)), Struct_1(2697i, vec4<i32>(-60914i, 34559i, -71355i, 54424i), vec4<f32>(-1000f, -710f, -1626f, -313f)), Struct_1(-52011i, vec4<i32>(0i, 30602i, 2147483647i, 0i), vec4<f32>(301f, -1207f, -170f, 1541f)), Struct_1(-1i, vec4<i32>(2147483647i, -1i, -2992i, 60903i), vec4<f32>(1404f, 1303f, 1052f, -1043f)), Struct_1(i32(-2147483648), vec4<i32>(2147483647i, 25180i, 14965i, 21493i), vec4<f32>(-768f, -293f, 313f, 399f)), Struct_1(-15500i, vec4<i32>(-1i, -37201i, -6956i, 0i), vec4<f32>(-134f, 569f, -139f, 1000f)), Struct_1(0i, vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, i32(-2147483648)), vec4<f32>(-272f, 1571f, 122f, -1000f)), Struct_1(24596i, vec4<i32>(-1i, -1i, 2147483647i, 26448i), vec4<f32>(-267f, -1279f, 3118f, -1000f)), Struct_1(i32(-2147483648), vec4<i32>(0i, 1i, 2147483647i, 6354i), vec4<f32>(142f, 1861f, -214f, 893f)), Struct_1(-22661i, vec4<i32>(-1i, 12061i, 0i, 33399i), vec4<f32>(2142f, -1822f, 116f, -2173f)), Struct_1(-575i, vec4<i32>(1i, 1i, -17749i, -5285i), vec4<f32>(-611f, 337f, 872f, -1980f)), Struct_1(-1i, vec4<i32>(-12253i, 1i, 2147483647i, -1738i), vec4<f32>(240f, 1866f, -472f, 1000f)), Struct_1(2147483647i, vec4<i32>(9080i, 0i, 2147483647i, 2147483647i), vec4<f32>(-820f, 1459f, -1566f, 1575f)), Struct_1(0i, vec4<i32>(47855i, i32(-2147483648), 21419i, 0i), vec4<f32>(-1048f, -396f, 462f, -1092f)), Struct_1(-1i, vec4<i32>(-1i, 0i, 20772i, 0i), vec4<f32>(1215f, 100f, -1584f, 1432f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_2, arg_3: i32) -> i32 {
    var var_0 = Struct_1(2147483647i, arg_1.a.a.b, _wgslsmith_f_op_vec4_f32(-arg_1.a.a.c));
    var var_1 = Struct_1(abs(_wgslsmith_sub_i32(min(0i, ~0i), 24431i)), arg_2.a.b, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-142f, -818f, -1054f, _wgslsmith_f_op_f32(min(arg_1.b.a.c.x, 1f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_2.a.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(740f, arg_1.a.a.c.x, 1645f, 135f) + arg_2.a.c), select(vec4<bool>(false, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, true, true), vec4<bool>(true, arg_0.x, false, arg_0.x)))) - vec4<f32>(-607f, -434f, _wgslsmith_f_op_f32(round(var_0.c.x)), var_0.c.x)), select(select(select(vec4<bool>(arg_0.x, false, arg_0.x, true), vec4<bool>(false, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), select(vec4<bool>(true, false, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), arg_0.x)), !vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), !any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))))));
    var_1 = arg_2.a;
    var_1 = Struct_1(-_wgslsmith_clamp_i32(arg_1.b.a.a, max(~arg_1.a.a.b.x, _wgslsmith_mod_i32(-1i, arg_1.b.a.b.x)), arg_3), min(countOneBits(~(var_0.b << (vec4<u32>(63482u, 11377u, 0u, 1u) % vec4<u32>(32u)))), -u_input.e), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-198f, arg_1.a.a.c.x, var_0.c.x, arg_2.a.c.x))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) - 277f), 448f, var_1.c.x, _wgslsmith_f_op_f32(abs(-629f)))));
    var var_2 = !(!any(select(vec2<bool>(false, false), vec2<bool>(arg_0.x, arg_0.x), arg_0.x))) & any(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, 29683u, 1u)), vec3<u32>(1u, 1u, 1u)) | 2758u, 1u)]);
    return 6624i;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> bool {
    var var_0 = Struct_3(Struct_2(arg_1), Struct_2(Struct_1(arg_2, arg_0.b, vec4<f32>(_wgslsmith_f_op_f32(round(977f)), _wgslsmith_div_f32(253f, -2017f), _wgslsmith_f_op_f32(abs(arg_1.c.x)), -1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(arg_0.c.wzx))))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-579f, _wgslsmith_f_op_f32(f32(-1f) * -384f)))), _wgslsmith_f_op_f32(-628f * -588f), 1275f));
    return 0u <= (_wgslsmith_div_u32(~1u, firstTrailingBit(10956u) ^ ~76444u) >> (1u % 32u));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_3(Struct_2(Struct_1(~_wgslsmith_mult_i32(arg_1.b.x, 0i), abs(vec4<i32>(-49077i, 27508i, 0i, u_input.e.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.c)))), Struct_2(arg_1), arg_1.c.wyx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -429f), 943f, _wgslsmith_f_op_f32(-246f + arg_1.c.x))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_1.c.zyz)))));
    global1 = array<Struct_1, 29>();
    var var_1 = !select(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), true)), !(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(false, _wgslsmith_div_i32(var_0.b.a.a, arg_1.b.x) >= _wgslsmith_dot_vec2_i32(u_input.c.yy, var_0.a.a.b.xy)));
    global1 = array<Struct_1, 29>();
    var_1 = vec2<bool>(func_4(global1[_wgslsmith_index_u32(4294967295u, 29u)], Struct_1(arg_1.b.x, u_input.e, _wgslsmith_f_op_vec4_f32(select(arg_1.c, _wgslsmith_f_op_vec4_f32(-arg_1.c), vec4<bool>(false, var_1.x, true, false)))), -func_3(!global0[_wgslsmith_index_u32(69965u, 1u)], Struct_3(Struct_2(var_0.b.a), Struct_2(Struct_1(11267i, var_0.b.a.b, vec4<f32>(-206f, -1283f, var_0.c.x, var_0.a.a.c.x))), arg_1.c.zyy, vec3<f32>(arg_1.c.x, -280f, arg_1.c.x)), var_0.a, arg_1.a ^ var_0.a.a.a)), true);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) - arg_1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-617f * arg_1.c.x))))), _wgslsmith_f_op_f32(f32(-1f) * -1900f));
}

fn func_1(arg_0: u32) -> Struct_1 {
    global0 = array<vec3<bool>, 1>();
    var var_0 = -(~u_input.c);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(43699u, Struct_1(2147483647i, u_input.e, vec4<f32>(548f, 2187f, 820f, 391f))))), 1077f, _wgslsmith_f_op_f32(-248f * _wgslsmith_f_op_f32(trunc(352f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1116f, -1758f), _wgslsmith_f_op_f32(abs(-349f)), _wgslsmith_f_op_f32(f32(-1f) * -1158f)) - vec3<f32>(-2678f, _wgslsmith_f_op_f32(f32(-1f) * -1477f), 1223f)), vec3<bool>(true, true, true))));
    var var_2 = Struct_2(global1[_wgslsmith_index_u32(arg_0 | _wgslsmith_sub_u32(arg_0, _wgslsmith_add_u32(max(38563u, arg_0), ~arg_0)), 29u)]);
    var_0 = ~vec3<i32>(-20831i, 59655i, ~var_2.a.a);
    return Struct_1(u_input.c.x, firstLeadingBit(select(-(~var_2.a.b), _wgslsmith_mod_vec4_i32(var_2.a.b, max(var_2.a.b, vec4<i32>(var_2.a.b.x, -18171i, 0i, u_input.d.x))), true)), _wgslsmith_f_op_vec4_f32(var_2.a.c + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(var_2.a.c.x)), _wgslsmith_f_op_f32(step(var_2.a.c.x, var_2.a.c.x)), _wgslsmith_f_op_f32(var_1.x * 767f), _wgslsmith_f_op_f32(-223f - var_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, true, all(select(!(!global0[_wgslsmith_index_u32(93039u, 1u)]), select(global0[_wgslsmith_index_u32(16142u, 1u)], select(vec3<bool>(false, true, false), global0[_wgslsmith_index_u32(0u, 1u)], vec3<bool>(true, true, true)), select(true, false, true)), true)), true);
    let var_1 = Struct_2(func_1(~4294967295u));
    let var_2 = select(vec4<bool>(false, false, false, var_0.x), select(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, true, var_0.x), var_0.x), all(vec2<bool>(var_0.x, var_0.x))), !vec4<bool>(false, select(var_0.x, var_0.x, false), true, true), false), !all(global0[_wgslsmith_index_u32(~0u, 1u)]));
    var var_3 = Struct_3(var_1, Struct_2(Struct_1(u_input.b, ~vec4<i32>(-2147483647i, 1i, u_input.c.x, u_input.a), var_1.a.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a.c.wyz) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-999f, -2205f, 1044f)))) + var_1.a.c.zyw), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1090f * -975f), 1657f, _wgslsmith_f_op_f32(func_2(abs(65743u), func_1(108112u)))) + var_1.a.c.zzy));
    let var_4 = Struct_3(var_3.b, Struct_2(Struct_1(~u_input.b | 1i, u_input.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1498f, var_1.a.c.x, var_3.c.x, var_3.d.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.c.x, -299f, var_1.a.c.x) + var_3.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_1.a.c.x, -1000f), 830f, 1706f) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(938f, var_1.a.c.x, var_3.c.x)))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_1.a.c.xzy, var_3.b.a.c.zwz, var_2.x)), var_3.d)))));
    var var_5 = var_4;
    var_0 = select(vec4<bool>(_wgslsmith_f_op_f32(-1000f + func_1(4294967295u).c.x) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1074f * 543f)), var_0.x, true || all(var_2), true), vec4<bool>(select(true, var_2.x, true), any(!(!var_0.xw)), var_0.x, true), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(func_1(reverseBits(abs(_wgslsmith_mod_u32(4294967295u, 41772u)))).c.xyz, 786f, 1u);
}

