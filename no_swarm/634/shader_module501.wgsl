struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<bool>,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 17> = array<Struct_5, 17>(Struct_5(0i, Struct_3(vec3<i32>(11353i, 68495i, 9926i), vec4<i32>(-31635i, 57503i, -7440i, 0i), vec2<bool>(true, false), false, Struct_1(vec2<i32>(i32(-2147483648), -2502i), vec2<bool>(true, true), 1670f, vec4<f32>(-2266f, 709f, 1041f, 376f), -1i))), Struct_5(-1i, Struct_3(vec3<i32>(1i, 48971i, -12478i), vec4<i32>(-42809i, i32(-2147483648), -5070i, 2147483647i), vec2<bool>(true, true), false, Struct_1(vec2<i32>(0i, i32(-2147483648)), vec2<bool>(false, false), 358f, vec4<f32>(-1208f, -223f, -357f, 462f), 2147483647i))), Struct_5(-471i, Struct_3(vec3<i32>(28035i, -60299i, 96385i), vec4<i32>(2147483647i, -19221i, -19082i, 0i), vec2<bool>(false, true), false, Struct_1(vec2<i32>(23932i, 1i), vec2<bool>(true, false), 1000f, vec4<f32>(-1440f, 697f, -1408f, -1000f), i32(-2147483648)))), Struct_5(-31723i, Struct_3(vec3<i32>(-60390i, 2147483647i, -44718i), vec4<i32>(-3576i, -12370i, -33361i, 1i), vec2<bool>(true, false), true, Struct_1(vec2<i32>(1i, 0i), vec2<bool>(false, true), -262f, vec4<f32>(-1471f, 1000f, 454f, -972f), 1i))), Struct_5(7013i, Struct_3(vec3<i32>(i32(-2147483648), 17031i, -1i), vec4<i32>(-19508i, 0i, -13546i, 1290i), vec2<bool>(false, false), true, Struct_1(vec2<i32>(15373i, -33126i), vec2<bool>(false, true), 1000f, vec4<f32>(-1724f, 1744f, -1000f, -555f), 2147483647i))), Struct_5(-13894i, Struct_3(vec3<i32>(-10263i, -2799i, -41372i), vec4<i32>(27185i, 30332i, -31010i, 28914i), vec2<bool>(true, false), true, Struct_1(vec2<i32>(-45413i, i32(-2147483648)), vec2<bool>(true, true), -538f, vec4<f32>(-235f, -1352f, 2694f, 124f), -15974i))), Struct_5(-25546i, Struct_3(vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-30997i, -55721i, 1332i, 1i), vec2<bool>(false, true), false, Struct_1(vec2<i32>(-23697i, 1i), vec2<bool>(false, false), 553f, vec4<f32>(1256f, 591f, -1747f, -518f), 6119i))), Struct_5(37838i, Struct_3(vec3<i32>(-9246i, -15935i, 20777i), vec4<i32>(2064i, 51389i, 24316i, 1i), vec2<bool>(false, false), false, Struct_1(vec2<i32>(0i, 0i), vec2<bool>(true, true), -441f, vec4<f32>(1000f, -1000f, -1000f, -568f), 12437i))), Struct_5(2147483647i, Struct_3(vec3<i32>(-1i, 68832i, 2147483647i), vec4<i32>(19921i, -46913i, 13758i, -23971i), vec2<bool>(false, false), true, Struct_1(vec2<i32>(1i, -3232i), vec2<bool>(true, false), 919f, vec4<f32>(488f, -286f, 246f, 217f), 2147483647i))), Struct_5(33633i, Struct_3(vec3<i32>(-1i, i32(-2147483648), -4529i), vec4<i32>(1i, -45067i, 2147483647i, -8781i), vec2<bool>(false, true), false, Struct_1(vec2<i32>(11265i, -15942i), vec2<bool>(false, false), -1327f, vec4<f32>(-185f, 1000f, -401f, 1251f), -35821i))), Struct_5(2147483647i, Struct_3(vec3<i32>(-38144i, -1i, -23866i), vec4<i32>(-1i, -1i, i32(-2147483648), 25410i), vec2<bool>(true, false), false, Struct_1(vec2<i32>(0i, 45934i), vec2<bool>(true, false), 1461f, vec4<f32>(551f, -640f, -260f, -1302f), 1i))), Struct_5(-42574i, Struct_3(vec3<i32>(50923i, 7958i, -1i), vec4<i32>(-32357i, 15890i, 83513i, 0i), vec2<bool>(true, false), false, Struct_1(vec2<i32>(12604i, 71018i), vec2<bool>(true, true), 115f, vec4<f32>(-1307f, 252f, 1000f, 1288f), 0i))), Struct_5(1i, Struct_3(vec3<i32>(1i, 1i, -1i), vec4<i32>(1i, i32(-2147483648), -23260i, -1i), vec2<bool>(true, true), true, Struct_1(vec2<i32>(-14823i, -44217i), vec2<bool>(false, false), 864f, vec4<f32>(-749f, 245f, -294f, -139f), -1i))), Struct_5(-66564i, Struct_3(vec3<i32>(i32(-2147483648), -14463i, 0i), vec4<i32>(-10259i, 18395i, 55256i, 1i), vec2<bool>(true, true), false, Struct_1(vec2<i32>(0i, 18493i), vec2<bool>(false, false), 1367f, vec4<f32>(2608f, 1241f, -1539f, -713f), -1i))), Struct_5(-10946i, Struct_3(vec3<i32>(-36057i, 17068i, 1i), vec4<i32>(0i, 1i, 0i, 41962i), vec2<bool>(true, false), true, Struct_1(vec2<i32>(-18089i, 2147483647i), vec2<bool>(true, false), 868f, vec4<f32>(-1557f, 939f, 462f, -604f), 5033i))), Struct_5(2147483647i, Struct_3(vec3<i32>(62775i, 6342i, i32(-2147483648)), vec4<i32>(0i, i32(-2147483648), -32304i, -1i), vec2<bool>(true, false), false, Struct_1(vec2<i32>(-2018i, -3592i), vec2<bool>(true, true), -901f, vec4<f32>(1181f, 2016f, -296f, -216f), 35186i))), Struct_5(2147483647i, Struct_3(vec3<i32>(-48615i, -35821i, 64603i), vec4<i32>(-17239i, -1i, -23161i, -1i), vec2<bool>(true, false), true, Struct_1(vec2<i32>(-18232i, 1i), vec2<bool>(false, true), -155f, vec4<f32>(787f, -807f, 558f, 766f), 17291i))));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec4<f32>, arg_3: vec4<i32>) -> u32 {
    var var_0 = vec2<i32>(-1i) * -arg_3.yy;
    var var_1 = countOneBits(~(arg_3.x & ~abs(arg_1)));
    let var_2 = -vec4<i32>(~2147483647i, ~_wgslsmith_sub_i32(min(-5667i, var_0.x), i32(-1i) * -1i), 1i, -_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, 6614i) << (vec3<u32>(arg_0, u_input.e.x, u_input.b) % vec3<u32>(32u)), vec3<i32>(arg_1, -2147483647i, u_input.a)));
    let var_3 = global0[_wgslsmith_index_u32(~(~arg_0), 17u)];
    var var_4 = vec2<i32>(min(_wgslsmith_mod_i32(16544i, var_0.x), -26973i), u_input.a);
    return arg_0;
}

fn func_2(arg_0: u32, arg_1: f32) -> Struct_3 {
    var var_0 = !vec2<bool>(arg_1 != arg_1, false);
    var var_1 = Struct_1(_wgslsmith_mult_vec2_i32(abs(u_input.d.wz), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, u_input.a), ~u_input.d.zz) & ~abs(u_input.c.zz)), select(vec2<bool>(any(vec4<bool>(var_0.x, true, true, var_0.x)) | false, true), vec2<bool>(true, var_0.x), true | (4294967295u == func_3(u_input.b, -2147483647i, vec4<f32>(-1000f, arg_1, -2099f, arg_1), u_input.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-148f)) + arg_1), _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 * 234f), 1083f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1, arg_1, 849f, 230f), vec4<f32>(396f, 567f, -771f, -1000f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(354f, arg_1, -2034f, arg_1), vec4<f32>(arg_1, arg_1, arg_1, 215f), false)), _wgslsmith_div_vec4_f32(vec4<f32>(454f, -728f, 282f, -409f), vec4<f32>(-1074f, -433f, arg_1, arg_1)), true))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, arg_1, 927f, 1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(486f, 1229f, -503f, 1022f)), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(false, true, var_0.x, var_0.x))))))), u_input.c.x);
    var var_2 = Struct_1(_wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(u_input.a, 28773i)), ~(~vec2<i32>(var_1.e, -34715i))) ^ var_1.a, !select(var_1.b, var_1.b, !var_0.x), _wgslsmith_f_op_f32(sign(-1350f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-865f + _wgslsmith_f_op_f32(arg_1 - arg_1)) - arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(round(var_1.c)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_1.d.x)), arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(182f * -1000f), -682f))), arg_1), 1i);
    return Struct_3(-_wgslsmith_div_vec3_i32(u_input.c.ywy, vec3<i32>(var_1.a.x, var_1.a.x, 2147483647i)) ^ vec3<i32>(var_2.e, -(~var_2.a.x), firstTrailingBit(var_2.e)), countOneBits(_wgslsmith_mod_vec4_i32(-u_input.c, -u_input.c & -vec4<i32>(var_2.a.x, u_input.d.x, 22737i, -26298i))), vec2<bool>(var_1.b.x, true), -u_input.c.x >= var_1.e, Struct_1(firstTrailingBit(vec2<i32>(12085i, u_input.a)), vec2<bool>(~59322u > u_input.b, _wgslsmith_f_op_f32(min(-1238f, 723f)) >= var_2.d.x), 555f, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(arg_1, var_1.d.x)), var_1.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) * _wgslsmith_f_op_f32(-var_2.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.c))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.c)))), -(1i >> (arg_0 % 32u))));
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    let var_0 = arg_0;
    let var_1 = arg_0.e.d.x;
    global0 = array<Struct_5, 17>();
    var var_2 = func_2(firstTrailingBit(4294967295u), _wgslsmith_f_op_f32(abs(var_1)));
    let var_3 = vec4<u32>(~u_input.e.x, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, 27023u, 1u), vec4<u32>(u_input.e.x, u_input.b, 4294967295u, u_input.b))), u_input.b, 90583u);
    return Struct_2(vec2<u32>(var_3.x, _wgslsmith_div_u32(firstTrailingBit(42883u), ~firstTrailingBit(var_3.x))), var_0.d, Struct_1(u_input.d.yy, func_2(u_input.b, _wgslsmith_f_op_f32(var_0.e.c * var_0.e.c)).c, var_1, _wgslsmith_f_op_vec4_f32(max(var_0.e.d, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(arg_0.e.d, var_0.e.d))))), 1i));
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    var var_0 = vec4<i32>(min(reverseBits(-arg_0.c.e), firstLeadingBit(1i >> (u_input.e.x % 32u))), 1i, ~(-arg_0.c.a.x), arg_0.c.a.x);
    global0 = array<Struct_5, 17>();
    var var_1 = func_2(u_input.e.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.d.x)) * _wgslsmith_f_op_f32(1756f + _wgslsmith_f_op_f32(-470f * 945f))))));
    var var_2 = global0[_wgslsmith_index_u32(min(u_input.b, ~4294967295u), 17u)];
    let var_3 = ~(~arg_0.a.x);
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 17>();
    var var_0 = u_input.e.x;
    let var_1 = all(vec2<bool>(true, _wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(0u, 0u)) >= ~20083u)) || (u_input.d.x < (~(-32084i) >> (0u % 32u)));
    var var_2 = Struct_5(u_input.d.x, func_4(func_1(Struct_3(u_input.c.zwz, vec4<i32>(1i, -17251i, -63751i, -8512i), !vec2<bool>(false, var_1), var_1, Struct_1(vec2<i32>(u_input.a, 10875i), vec2<bool>(true, false), -1717f, vec4<f32>(-594f, -801f, 834f, -1045f), u_input.d.x)))));
    var_2 = Struct_5(u_input.d.x, func_4(func_1(var_2.b)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.a.x);
}

