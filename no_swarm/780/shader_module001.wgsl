struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: f32,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = Struct_2(all(!arg_2.b.wx), u_input.a, reverseBits(~51715u));
    return select(max(vec2<u32>(75253u, arg_1.c), vec2<u32>(_wgslsmith_sub_u32(~4294967295u, ~arg_2.d.x), 32397u)), arg_2.d.zy, !arg_2.b.yw);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_3) -> vec3<i32> {
    let var_0 = vec3<bool>(arg_1.x < (firstTrailingBit(abs(39538u)) ^ arg_3.b.d.x), !any(vec4<bool>(true, arg_3.e.d.x < 33882u, true, arg_3.c)), true);
    var var_1 = Struct_2(all(!vec2<bool>(!arg_3.e.b.x, all(arg_3.b.b))), -19275i, ~(~(~28676u)));
    var var_2 = arg_2;
    var var_3 = arg_3;
    var_2 = var_3.e;
    return arg_2.a << (~var_3.e.d.yyz % vec3<u32>(32u));
}

fn func_5(arg_0: Struct_1) -> i32 {
    let var_0 = ~(vec3<i32>(-1i) * -arg_0.a) << (arg_0.d.ywx % vec3<u32>(32u));
    let var_1 = ~(~16693u);
    return var_0.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: vec2<f32>) -> Struct_3 {
    var var_0 = arg_0.d.yy;
    let var_1 = func_5(Struct_1(_wgslsmith_div_vec3_i32(func_4(arg_0.a.zz, func_3(Struct_2(arg_0.b.x, 0i, arg_1.b.d.x), Struct_2(arg_1.e.b.x, 1i, arg_0.d.x), arg_1.b), arg_1.e, Struct_3(arg_0.b.x, arg_0, false, arg_1.b.a, Struct_1(arg_1.b.a, arg_0.b, 1006f, vec4<u32>(1u, arg_1.e.d.x, 4294967295u, 19848u), -21579i))), arg_0.a), select(select(vec4<bool>(true, false, true, true), select(arg_1.e.b, arg_1.e.b, vec4<bool>(arg_0.b.x, false, true, false)), false), select(!arg_0.b, arg_0.b, false), reverseBits(21668u) <= ~arg_1.e.d.x), _wgslsmith_f_op_f32(exp2(arg_3.x)), arg_1.b.d, abs(_wgslsmith_div_i32(7219i, 1i) << (_wgslsmith_div_u32(arg_0.d.x, 7423u) % 32u))));
    var var_2 = Struct_2(true, ~_wgslsmith_mod_i32(firstTrailingBit(arg_2.x), ~u_input.a), _wgslsmith_mod_u32(~(~firstLeadingBit(arg_0.d.x)), _wgslsmith_mod_u32(~19871u, ~arg_0.d.x)));
    var var_3 = arg_0;
    var_0 = arg_1.b.d.yz;
    return Struct_3(var_3.b.x, arg_0, !var_3.b.x, vec3<i32>(arg_0.e, 0i, 6521i), arg_0);
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: Struct_3) -> vec3<i32> {
    let var_0 = arg_0.b;
    var var_1 = arg_2.b.d;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - 392f)), 926f)));
    var_1 = vec4<u32>(~(arg_0.c ^ _wgslsmith_sub_u32(~var_1.x, 4294967295u)), _wgslsmith_div_u32(var_1.x, func_2(func_2(func_2(Struct_1(arg_2.d, arg_2.b.b, arg_2.e.c, arg_2.e.d, -50615i), Struct_3(arg_0.a, arg_2.e, false, vec3<i32>(3183i, u_input.a, u_input.a), arg_2.e), arg_2.e.a.xx, var_2).b, Struct_3(arg_2.c, arg_2.e, false, arg_2.e.a, arg_2.e), ~arg_2.e.a.zy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.e.c, -968f))).b, arg_2, _wgslsmith_div_vec2_i32(~arg_2.d.zx, arg_2.d.xy), var_2).b.d.x), var_1.x, arg_0.c);
    return ~(-arg_2.d);
}

fn func_1(arg_0: i32, arg_1: i32) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -476f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-392f + -1654f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -269f), _wgslsmith_f_op_f32(f32(-1f) * -878f)))), 1379f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-467f)))));
    let var_1 = Struct_3(true, Struct_1(firstLeadingBit(func_6(Struct_2(false, arg_0, 0u), _wgslsmith_f_op_f32(sign(var_0.x)), func_2(Struct_1(vec3<i32>(arg_0, arg_1, -2147483647i), vec4<bool>(true, false, true, false), var_0.x, vec4<u32>(71017u, 1u, 4294967295u, 4294967295u), -40643i), Struct_3(false, Struct_1(vec3<i32>(arg_0, 36846i, arg_1), vec4<bool>(true, true, true, false), var_0.x, vec4<u32>(1u, 16767u, 1u, 4294967295u), arg_1), false, vec3<i32>(1671i, 38002i, arg_0), Struct_1(vec3<i32>(u_input.a, arg_0, u_input.a), vec4<bool>(true, false, true, false), var_0.x, vec4<u32>(54013u, 0u, 11338u, 27615u), arg_1)), vec2<i32>(u_input.a, arg_1), var_0.xw))), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true)), var_0.x, vec4<u32>(~(~4294967295u), 102899u, 59225u, func_3(Struct_2(true, 27897i, 1u), Struct_2(true, 2147483647i, 12164u), Struct_1(vec3<i32>(4287i, arg_1, 35837i), vec4<bool>(true, true, true, false), var_0.x, vec4<u32>(0u, 28678u, 5180u, 4294967295u), arg_1)).x), -2147483647i), false, func_4(-vec2<i32>(1i, _wgslsmith_clamp_i32(arg_1, arg_1, -1i)), vec2<u32>(1u, 1u), func_2(Struct_1(vec3<i32>(-36361i, arg_0, arg_0), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), false), 167f, ~vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), arg_0), func_2(func_2(Struct_1(vec3<i32>(u_input.a, 2147483647i, u_input.a), vec4<bool>(true, true, true, true), 1000f, vec4<u32>(4294967295u, 0u, 4294967295u, 0u), arg_1), Struct_3(true, Struct_1(vec3<i32>(arg_1, 1i, arg_1), vec4<bool>(true, true, true, true), var_0.x, vec4<u32>(1u, 1u, 0u, 1u), 0i), true, vec3<i32>(u_input.a, u_input.a, 0i), Struct_1(vec3<i32>(0i, u_input.a, -51604i), vec4<bool>(false, true, false, true), var_0.x, vec4<u32>(13356u, 1u, 44059u, 22996u), 1i)), vec2<i32>(arg_0, -52276i), vec2<f32>(var_0.x, -1240f)).b, func_2(Struct_1(vec3<i32>(u_input.a, u_input.a, arg_1), vec4<bool>(true, false, true, false), 834f, vec4<u32>(1065u, 4294967295u, 42546u, 83804u), arg_1), Struct_3(true, Struct_1(vec3<i32>(-8563i, -77357i, u_input.a), vec4<bool>(true, true, false, false), 1630f, vec4<u32>(4294967295u, 1u, 41484u, 20172u), -2147483647i), true, vec3<i32>(arg_0, 1i, -49072i), Struct_1(vec3<i32>(-1i, arg_1, 0i), vec4<bool>(true, false, false, false), -606f, vec4<u32>(4294967295u, 23203u, 12907u, 4294967295u), arg_1)), vec2<i32>(-26585i, arg_1), vec2<f32>(1243f, -718f)), countOneBits(vec2<i32>(arg_0, arg_0)), _wgslsmith_f_op_vec2_f32(-var_0.xz)), vec2<i32>(5802i, u_input.a) ^ ~vec2<i32>(arg_0, -2147483647i), _wgslsmith_f_op_vec2_f32(step(var_0.wz, var_0.ww))).e, func_2(Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1, 37736i, 5943i), vec3<i32>(-59208i, arg_0, u_input.a)), vec4<bool>(true, true, false, false), 1000f, vec4<u32>(1u, 1u, 1u, 1u), -u_input.a), func_2(Struct_1(vec3<i32>(arg_1, -4868i, 218i), vec4<bool>(true, false, true, false), var_0.x, vec4<u32>(71608u, 4294967295u, 4294967295u, 100425u), -43864i), func_2(Struct_1(vec3<i32>(u_input.a, arg_1, u_input.a), vec4<bool>(true, true, false, true), -397f, vec4<u32>(4294967295u, 77913u, 4294967295u, 1u), 0i), Struct_3(true, Struct_1(vec3<i32>(arg_0, 1i, 2147483647i), vec4<bool>(false, false, false, false), var_0.x, vec4<u32>(1u, 31284u, 0u, 4294967295u), 15044i), true, vec3<i32>(arg_0, 2147483647i, u_input.a), Struct_1(vec3<i32>(-6777i, arg_1, u_input.a), vec4<bool>(true, false, false, false), 161f, vec4<u32>(41861u, 97355u, 97502u, 109660u), u_input.a)), vec2<i32>(arg_1, arg_1), var_0.yy), ~vec2<i32>(u_input.a, 15665i), var_0.wx), (vec2<i32>(30842i, 30017i) | vec2<i32>(-2147483647i, u_input.a)) >> (~vec2<u32>(70169u, 4294967295u) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(min(var_0.ww, var_0.ww)))), func_2(func_2(Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(37859i, u_input.a, 43549i), vec3<i32>(13399i, arg_0, -2147483647i)), vec4<bool>(false, true, false, false), _wgslsmith_f_op_f32(ceil(-408f)), abs(vec4<u32>(12082u, 0u, 0u, 31962u)), arg_1), Struct_3(false, func_2(Struct_1(vec3<i32>(arg_1, -1877i, arg_1), vec4<bool>(false, false, true, true), var_0.x, vec4<u32>(17833u, 1u, 4294967295u, 19814u), 2147483647i), Struct_3(false, Struct_1(vec3<i32>(9123i, arg_1, arg_0), vec4<bool>(true, false, false, true), 1582f, vec4<u32>(1u, 29429u, 34144u, 1u), -1i), false, vec3<i32>(arg_0, arg_1, 2147483647i), Struct_1(vec3<i32>(arg_1, u_input.a, 2147483647i), vec4<bool>(true, true, true, false), var_0.x, vec4<u32>(1u, 0u, 14954u, 0u), -36620i)), vec2<i32>(arg_0, arg_0), vec2<f32>(var_0.x, var_0.x)).b, true, vec3<i32>(u_input.a, arg_1, 2147483647i) << (vec3<u32>(4294967295u, 0u, 255u) % vec3<u32>(32u)), Struct_1(vec3<i32>(-34375i, arg_1, u_input.a), vec4<bool>(true, true, true, false), var_0.x, vec4<u32>(4294967295u, 5296u, 18802u, 18519u), 1992i)), func_6(Struct_2(true, arg_1, 4294967295u), _wgslsmith_f_op_f32(-1000f * 1277f), Struct_3(true, Struct_1(vec3<i32>(arg_1, -2147483647i, u_input.a), vec4<bool>(true, false, true, false), -139f, vec4<u32>(69876u, 65526u, 4294967295u, 4455u), arg_0), true, vec3<i32>(-12037i, -18245i, u_input.a), Struct_1(vec3<i32>(-2147483647i, arg_0, -1i), vec4<bool>(true, true, true, false), var_0.x, vec4<u32>(28010u, 0u, 87658u, 4294967295u), 2147483647i))).yz, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + vec2<f32>(var_0.x, var_0.x))).b, func_2(Struct_1(-vec3<i32>(arg_1, u_input.a, -1i), vec4<bool>(false, false, false, false), 441f, min(vec4<u32>(21142u, 1u, 12606u, 4294967295u), vec4<u32>(0u, 22826u, 1u, 46493u)), arg_0), Struct_3(all(vec3<bool>(false, true, true)), func_2(Struct_1(vec3<i32>(arg_0, -1i, -1i), vec4<bool>(true, true, false, true), var_0.x, vec4<u32>(4294967295u, 26132u, 33218u, 1u), u_input.a), Struct_3(false, Struct_1(vec3<i32>(0i, arg_0, u_input.a), vec4<bool>(true, true, false, false), 1498f, vec4<u32>(13365u, 56148u, 4294967295u, 33311u), 19266i), false, vec3<i32>(u_input.a, 0i, 48381i), Struct_1(vec3<i32>(arg_1, u_input.a, u_input.a), vec4<bool>(false, false, false, true), var_0.x, vec4<u32>(4294967295u, 12671u, 14119u, 14984u), arg_1)), vec2<i32>(0i, -36326i), vec2<f32>(var_0.x, -1586f)).e, true, vec3<i32>(-28945i, arg_1, u_input.a) & vec3<i32>(arg_0, -26639i, 52885i), Struct_1(vec3<i32>(arg_1, -20284i, 2147483647i), vec4<bool>(true, false, true, true), 2079f, vec4<u32>(4294967295u, 5413u, 15669u, 19178u), arg_0)), ~(-vec2<i32>(u_input.a, u_input.a)), var_0.zw), vec2<i32>(arg_0, -2252i), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(602f, 1000f), -306f) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1576f), _wgslsmith_div_f32(var_0.x, -137f)))).e);
    var var_2 = 38072u;
    let var_3 = all(!(!(!select(var_1.e.b.wwy, var_1.e.b.yzz, var_1.e.b.xxx))));
    var_2 = var_1.e.d.x;
    return StorageBuffer(max(~_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1, var_1.b.a.x, -1i, -56254i), vec4<i32>(u_input.a, arg_1, u_input.a, var_1.b.e)), ~vec4<i32>(arg_0, 1i, arg_0, -50872i)), vec4<i32>(abs(firstLeadingBit(7825i)), -_wgslsmith_clamp_i32(arg_0, 2147483647i, -2147483647i), func_2(Struct_1(var_1.b.a, var_1.b.b, var_1.b.c, vec4<u32>(var_1.e.d.x, var_1.e.d.x, 93573u, 56923u), -54787i), Struct_3(var_3, Struct_1(var_1.e.a, vec4<bool>(var_1.c, true, var_3, false), var_0.x, vec4<u32>(37258u, 1469u, var_1.e.d.x, 31617u), arg_1), var_1.e.b.x, vec3<i32>(-1i, var_1.e.a.x, -2147483647i), Struct_1(vec3<i32>(2147483647i, arg_1, arg_0), var_1.b.b, 765f, var_1.e.d, 0i)), var_1.d.yz, vec2<f32>(var_1.e.c, var_0.x)).e.e, ~select(var_1.e.a.x, 23413i, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(-(~countOneBits(_wgslsmith_add_i32(u_input.a, u_input.a))), ~_wgslsmith_div_i32(u_input.a, u_input.a & ~59605i));
}

