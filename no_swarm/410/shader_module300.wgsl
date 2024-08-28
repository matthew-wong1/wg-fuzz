struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec3<i32>,
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

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(23459i, -120f, vec2<f32>(1039f, -1349f), true), Struct_1(-5858i, -783f, vec2<f32>(1000f, -385f), false), Struct_1(-13871i, -765f, vec2<f32>(1129f, 750f), false), Struct_1(i32(-2147483648), -781f, vec2<f32>(-491f, -2799f), false), Struct_1(i32(-2147483648), 519f, vec2<f32>(-999f, 431f), true), Struct_1(0i, 723f, vec2<f32>(-293f, -373f), true), Struct_1(5146i, 172f, vec2<f32>(-126f, -1346f), true), Struct_1(5629i, 718f, vec2<f32>(-544f, -783f), false), Struct_1(23629i, -2586f, vec2<f32>(885f, 952f), false), Struct_1(-22305i, 1000f, vec2<f32>(-1000f, -1164f), false), Struct_1(2147483647i, -911f, vec2<f32>(1439f, 663f), false), Struct_1(21479i, 251f, vec2<f32>(1203f, -121f), true), Struct_1(0i, -802f, vec2<f32>(1000f, 680f), true), Struct_1(2147483647i, -1462f, vec2<f32>(1000f, -1118f), false), Struct_1(70628i, 748f, vec2<f32>(-548f, -263f), false), Struct_1(1i, -1000f, vec2<f32>(487f, -711f), true), Struct_1(29918i, 761f, vec2<f32>(492f, -1040f), false), Struct_1(53798i, 1369f, vec2<f32>(444f, 561f), true), Struct_1(-22369i, -2078f, vec2<f32>(989f, 838f), false), Struct_1(-31456i, -1134f, vec2<f32>(419f, -1116f), false), Struct_1(-55477i, 647f, vec2<f32>(248f, 928f), false), Struct_1(50913i, 1376f, vec2<f32>(-481f, -542f), false), Struct_1(0i, -687f, vec2<f32>(935f, -206f), true), Struct_1(-13830i, 726f, vec2<f32>(-1302f, 322f), true), Struct_1(2147483647i, 1937f, vec2<f32>(-533f, -533f), true), Struct_1(-48651i, -409f, vec2<f32>(-204f, 846f), false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    return Struct_1(26769i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b - -2300f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.b)))))), vec2<f32>(arg_2.b, arg_2.b), !(_wgslsmith_div_u32(80262u, ~u_input.c.x) > ((65666u & u_input.c.x) >> (~28673u % 32u))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> bool {
    global0 = array<Struct_1, 26>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-236f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1063f)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(526f, 669f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.c.x)) * var_0.x));
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, _wgslsmith_f_op_f32(trunc(1293f)), _wgslsmith_f_op_f32(floor(-782f)), var_1)));
    return !(!(!func_2(func_2(false, arg_2.x, Struct_1(u_input.e.x, var_3.x, arg_1.c, arg_2.x), vec4<i32>(u_input.e.x, 1i, arg_1.a, 27694i)).d, 5096i >= arg_1.a, Struct_1(arg_0.a, 2245f, arg_0.c, arg_0.d), vec4<i32>(8462i, arg_1.a, arg_0.a, arg_1.a)).d));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<u32>) -> u32 {
    let var_0 = func_3(func_2(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), true, global0[_wgslsmith_index_u32(u_input.a, 26u)], arg_0), global0[_wgslsmith_index_u32(arg_1.x, 26u)], vec3<bool>(true, true, true));
    let var_1 = 51040u;
    var var_2 = select(vec2<u32>(max(_wgslsmith_add_u32(arg_1.x, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, 1u), _wgslsmith_mult_vec2_u32(u_input.b.zy, arg_1))), 4294967295u), vec2<u32>(countOneBits(var_1), 38584u), true);
    global0 = array<Struct_1, 26>();
    let var_3 = arg_1;
    return 35846u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global0 = array<Struct_1, 26>();
    var var_0 = 2256f;
    let var_1 = func_2(arg_2.d, !any(vec2<bool>(true, true)), Struct_1(-1i, _wgslsmith_f_op_f32(sign(arg_2.b)), arg_0.c, (_wgslsmith_mult_u32(9948u, u_input.b.x) <= ~u_input.b.x) && arg_0.d), firstTrailingBit((_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.a, arg_2.a, u_input.d.x, 43468i), vec4<i32>(arg_2.a, 10964i, arg_2.a, -18003i)) & _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.a, u_input.d.x, arg_0.a, arg_2.a), vec4<i32>(arg_2.a, arg_1.a, 1i, arg_0.a))) ^ vec4<i32>(~arg_0.a, ~(-2147483647i), 0i, firstLeadingBit(2147483647i))));
    let var_2 = select(24069i, 0i, (_wgslsmith_f_op_f32(round(func_2(true, false, var_1, vec4<i32>(u_input.d.x, -2147483647i, arg_1.a, u_input.d.x)).b)) != _wgslsmith_f_op_f32(select(-1064f, _wgslsmith_f_op_f32(-arg_2.b), all(vec2<bool>(false, arg_2.d))))) | arg_0.d);
    var_0 = func_2(true | var_1.d, select(arg_2.d, _wgslsmith_div_u32(u_input.c.x >> (u_input.a % 32u), u_input.c.x) < ((1399u >> (u_input.c.x % 32u)) >> (u_input.b.x % 32u)), !(!all(vec4<bool>(false, false, false, false)))), func_2(true, func_2(1662f > _wgslsmith_f_op_f32(-arg_0.b), false, global0[_wgslsmith_index_u32(4294967295u, 26u)], ~select(vec4<i32>(1i, 2147483647i, -3946i, 67196i), vec4<i32>(19355i, 19072i, arg_1.a, var_2), true)).d, func_2(var_1.d, arg_2.d, arg_0, _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.e.x, var_2, var_1.a, -19910i), vec4<i32>(arg_1.a, arg_0.a, arg_1.a, arg_2.a)), ~vec4<i32>(var_1.a, arg_2.a, var_2, 0i))), vec4<i32>(arg_0.a, 45454i, 0i, _wgslsmith_clamp_i32(arg_0.a, -40885i, 1i)) ^ -_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.a, 2147483647i, u_input.d.x, arg_2.a), vec4<i32>(0i, var_1.a, arg_1.a, 10975i), vec4<i32>(8434i, u_input.d.x, var_2, arg_1.a))), (vec4<i32>(2147483647i, -2332i, abs(var_2), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -1i), u_input.d)) << (~u_input.b % vec4<u32>(32u))) & _wgslsmith_sub_vec4_i32(vec4<i32>(26693i, 2147483647i, 0i, var_2) >> (~vec4<u32>(u_input.b.x, 56715u, 92922u, u_input.b.x) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(0i, 2147483647i)), ~(-43403i), ~6077i, func_2(arg_1.d, false, var_1, vec4<i32>(var_1.a, var_2, -1i, 6069i)).a))).c.x;
    return abs(_wgslsmith_clamp_u32(firstLeadingBit(u_input.c.x), 64331u, ~u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(u_input.a) << (func_4(Struct_1(11170i, _wgslsmith_f_op_f32(-436f * -494f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-800f, 359f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1649f, 1000f))), all(vec3<bool>(true, false, true))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(0u), func_1(_wgslsmith_mod_vec4_i32(vec4<i32>(13668i, -1i, u_input.e.x, 8631i), vec4<i32>(u_input.d.x, 2147483647i, 2147483647i, u_input.e.x)), select(vec2<u32>(u_input.c.x, 1u), vec2<u32>(43858u, u_input.b.x), vec2<bool>(true, false)))), 26u)], global0[_wgslsmith_index_u32(121301u, 26u)]) % 32u);
    var var_1 = func_2(22439u > var_0, var_0 <= var_0, func_2(!func_3(func_2(true, true, Struct_1(-15768i, -553f, vec2<f32>(-501f, -593f), true), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, -2147483647i)), Struct_1(u_input.e.x, -506f, vec2<f32>(-1268f, 1356f), false), vec3<bool>(false, false, true)), true, Struct_1(_wgslsmith_sub_i32(-12899i, u_input.e.x ^ -30488i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -389f) - _wgslsmith_f_op_f32(1505f - -348f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-364f, -110f))), !(0u == var_0)), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.d.x, u_input.e.x, u_input.e.x) ^ vec4<i32>(0i, 0i, u_input.d.x, 19920i), vec4<i32>(u_input.d.x, 33722i, firstLeadingBit(52215i), -2147483647i))), ~vec4<i32>(_wgslsmith_clamp_i32(reverseBits(60213i), -2147483647i, u_input.e.x << (u_input.c.x % 32u)), 12712i, u_input.e.x, i32(-1i) * -10952i));
    var_1 = global0[_wgslsmith_index_u32(u_input.b.x | 39229u, 26u)];
    global0 = array<Struct_1, 26>();
    let var_2 = global0[_wgslsmith_index_u32(var_0, 26u)];
    let var_3 = ~min(firstTrailingBit(max(vec3<u32>(4294967295u, var_0, 3473u), vec3<u32>(var_0, 30392u, var_0))), ~(~vec3<u32>(u_input.c.x, 1u, var_0)));
    var_1 = global0[_wgslsmith_index_u32(abs(60719u), 26u)];
    var var_4 = Struct_1(-10057i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - 125f)))), var_1.c, _wgslsmith_div_u32(u_input.a, var_3.x) > ~(~(~u_input.b.x)));
    global0 = array<Struct_1, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_div_i32(2147483647i, 24214i))));
}

