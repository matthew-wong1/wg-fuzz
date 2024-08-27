struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec4<f32>(101f, -147f, -1476f, -319f), vec4<f32>(-272f, 485f, 795f, -955f), vec3<f32>(1540f, 1000f, 1516f), -674f, 18853i), Struct_1(vec4<f32>(1349f, 1008f, 907f, -595f), vec4<f32>(146f, -1252f, -680f, -180f), vec3<f32>(1585f, 1083f, 1638f), -875f, 5151i), Struct_1(vec4<f32>(-812f, -289f, 739f, 374f), vec4<f32>(1633f, 1695f, -418f, 537f), vec3<f32>(-1448f, 400f, 711f), 308f, 1i), Struct_1(vec4<f32>(207f, -355f, 1285f, 1678f), vec4<f32>(1792f, 958f, 1002f, 555f), vec3<f32>(-1000f, 765f, 243f), -1204f, 2641i), Struct_1(vec4<f32>(832f, -614f, -944f, 504f), vec4<f32>(141f, -761f, -1015f, -339f), vec3<f32>(1800f, -143f, -650f), -1694f, -23750i), Struct_1(vec4<f32>(369f, 120f, 1043f, 466f), vec4<f32>(-175f, 1343f, 122f, 3066f), vec3<f32>(1000f, -453f, 2049f), 253f, -12789i), Struct_1(vec4<f32>(-1416f, -751f, -1000f, 302f), vec4<f32>(-597f, 828f, -158f, -1571f), vec3<f32>(-256f, -984f, 218f), -177f, i32(-2147483648)), Struct_1(vec4<f32>(-890f, -1000f, 256f, -466f), vec4<f32>(236f, 1000f, -2326f, 827f), vec3<f32>(397f, 934f, -1356f), 1000f, -24541i), Struct_1(vec4<f32>(-1767f, 1036f, 1280f, -1465f), vec4<f32>(409f, 1744f, -1932f, -743f), vec3<f32>(-1029f, -188f, -1715f), 307f, -4273i), Struct_1(vec4<f32>(-258f, -100f, 202f, -136f), vec4<f32>(-747f, 877f, -833f, 1090f), vec3<f32>(-1012f, -1299f, -422f), 255f, 1i), Struct_1(vec4<f32>(-1620f, 942f, -563f, -196f), vec4<f32>(-824f, 729f, -325f, -527f), vec3<f32>(2758f, 336f, 265f), -140f, 0i), Struct_1(vec4<f32>(-2471f, -1180f, -2456f, -292f), vec4<f32>(-854f, 292f, -329f, -1262f), vec3<f32>(-1772f, 1000f, -877f), 866f, 2147483647i), Struct_1(vec4<f32>(-582f, -204f, 1717f, -1154f), vec4<f32>(326f, -470f, 961f, -1062f), vec3<f32>(-1000f, -1040f, 1000f), -635f, 2147483647i), Struct_1(vec4<f32>(-1299f, -1032f, -838f, 296f), vec4<f32>(-1470f, 193f, 407f, 1532f), vec3<f32>(-321f, 316f, -533f), -274f, 15985i), Struct_1(vec4<f32>(1505f, -332f, 285f, -1000f), vec4<f32>(-899f, 1000f, 564f, -884f), vec3<f32>(469f, 543f, 1000f), 1215f, 10858i), Struct_1(vec4<f32>(-735f, -817f, -263f, -792f), vec4<f32>(-756f, 1683f, 478f, -581f), vec3<f32>(-1463f, 167f, 326f), -517f, i32(-2147483648)), Struct_1(vec4<f32>(-517f, 654f, 369f, -348f), vec4<f32>(1333f, -220f, 1871f, -278f), vec3<f32>(727f, -437f, -1000f), 607f, 2147483647i), Struct_1(vec4<f32>(469f, 937f, -1196f, -998f), vec4<f32>(714f, 341f, -2289f, -758f), vec3<f32>(-612f, -555f, 770f), -580f, 2147483647i), Struct_1(vec4<f32>(1428f, -2048f, 112f, -1243f), vec4<f32>(-189f, 2213f, 398f, 430f), vec3<f32>(1000f, -1705f, -293f), 498f, 26449i), Struct_1(vec4<f32>(-1000f, 1976f, 964f, 846f), vec4<f32>(-1000f, -1689f, 1209f, 581f), vec3<f32>(999f, 1543f, 1000f), -1000f, 1i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: f32, arg_3: f32) -> Struct_1 {
    global0 = array<Struct_1, 20>();
    var var_0 = _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(-arg_3));
    var_0 = arg_3;
    var var_1 = arg_1.x;
    global0 = array<Struct_1, 20>();
    return global0[_wgslsmith_index_u32(reverseBits(max(abs(~_wgslsmith_div_u32(47606u, 22441u)), 16862u)), 20u)];
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(29363u, _wgslsmith_dot_vec3_u32(~min(vec3<u32>(79315u, 81687u, arg_1), vec3<u32>(arg_1, 16981u, 1u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(arg_1, arg_1, 66153u), vec3<u32>(arg_1, 13595u, arg_1)))), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1, 0u) >> (vec2<u32>(4294967295u, arg_1) % vec2<u32>(32u)), vec2<u32>(1u, arg_1)) ^ ~vec2<u32>(arg_1, arg_1), ~select(max(vec2<u32>(43611u, 32681u), vec2<u32>(99159u, 1u)), vec2<u32>(arg_1, 1u) ^ vec2<u32>(4294967295u, arg_1), all(vec2<bool>(false, false)))));
    let var_1 = -924f;
    let var_2 = arg_1;
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    return select(countOneBits(0u), _wgslsmith_add_u32(~37222u, arg_1), false);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> u32 {
    var var_0 = all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, any(arg_3), !arg_3.x), all(!vec2<bool>(true, arg_3.x))), vec3<bool>(true, any(vec3<bool>(arg_3.x, arg_3.x, arg_3.x)), false), !arg_3.x));
    var var_1 = !select(select(select(select(vec3<bool>(arg_3.x, true, false), vec3<bool>(false, arg_3.x, arg_3.x), arg_3.x), !vec3<bool>(arg_3.x, arg_3.x, true), !vec3<bool>(false, arg_3.x, arg_3.x)), !(!vec3<bool>(arg_3.x, arg_3.x, arg_3.x)), vec3<bool>(!arg_3.x, any(vec3<bool>(true, arg_3.x, true)), true)), !(!(!vec3<bool>(arg_3.x, true, arg_3.x))), !(!(!vec3<bool>(arg_3.x, arg_3.x, arg_3.x))));
    var var_2 = func_2(~(~10025u), u_input.d, arg_1.b.x, arg_2.a.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(func_2(~4294967295u, -u_input.d, -259f, _wgslsmith_f_op_f32(floor(-259f))).a.xz + var_2.b.yz);
    var var_4 = countOneBits(u_input.d);
    return ~(~(~2319u));
}

fn func_1() -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(~func_4(global0[_wgslsmith_index_u32(max(min(4294967295u, abs(0u)), 0u), 20u)], global0[_wgslsmith_index_u32(func_3(1i, 1u, func_2(~1u, _wgslsmith_clamp_vec3_i32(vec3<i32>(-20486i, 44331i, u_input.d.x), u_input.d, u_input.d), -975f, -1971f)), 20u)], func_2(~(~0u), -u_input.d, func_2(firstTrailingBit(42043u), firstTrailingBit(u_input.d), 1067f, -100f).c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -711f))), vec2<bool>(true, any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true))))), 20u)];
    global0 = array<Struct_1, 20>();
    var var_1 = ~(~12715u);
    global0 = array<Struct_1, 20>();
    var_1 = _wgslsmith_add_u32(countOneBits(reverseBits(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 3733u), vec3<u32>(0u, 4294967295u, 116968u)), _wgslsmith_div_u32(1u, 5587u)))), _wgslsmith_mult_u32(~1u, reverseBits(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, 2821u, 0u, 35688u)), vec4<u32>(4294967295u, 37198u, 4294967295u, 7388u)))));
    return func_2(47827u, vec3<i32>(-(~u_input.b & (u_input.c << (39851u % 32u))), (u_input.a << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 26562u, 4294967295u, 1u), vec4<u32>(10395u, 1u, 1u, 4294967295u)) % 32u)) ^ u_input.d.x, u_input.a), _wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(trunc(var_0.b.x)));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = 1000f;
    var var_1 = !(!vec4<bool>(any(select(vec3<bool>(false, true, true), arg_0, vec3<bool>(true, false, false))), ~arg_2 > abs(71836u), any(select(vec4<bool>(arg_0.x, arg_0.x, false, false), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, true, arg_0.x, arg_0.x))), arg_0.x));
    return arg_1.b;
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> u32 {
    var var_0 = 1u & func_4(func_2(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 30476u, 88204u, 0u), vec4<u32>(4294967295u, 15091u, 104189u, 1u))), arg_0.zzw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.c.x, arg_1.a.x, false)) + _wgslsmith_f_op_f32(arg_1.d * arg_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.a.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3.a) - _wgslsmith_f_op_vec4_f32(-arg_1.b)), vec4<f32>(arg_1.d, _wgslsmith_div_f32(-608f, -677f), _wgslsmith_f_op_f32(ceil(arg_1.b.x)), _wgslsmith_f_op_f32(1071f - -178f)), vec3<f32>(_wgslsmith_f_op_f32(max(1497f, -478f)), arg_1.c.x, _wgslsmith_f_op_f32(-arg_3.d)), _wgslsmith_f_op_vec4_f32(func_5(vec3<bool>(false, false, true), func_1(), firstLeadingBit(49227u), func_2(20273u, arg_0.xzx, arg_3.c.x, arg_1.c.x))).x, -1i), func_1(), vec2<bool>(!any(vec4<bool>(true, false, false, true)), true));
    var var_1 = _wgslsmith_f_op_f32(round(-1000f));
    var_1 = arg_3.c.x;
    var_0 = 1u;
    let var_2 = global0[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(1u, ~_wgslsmith_sub_u32(~375u, select(26829u, 27821u, true))), 4294967295u), 20u)];
    return ~(~(~_wgslsmith_add_u32(66238u, 119135u >> (1u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_6(max(~vec4<i32>(-20992i, u_input.d.x, u_input.c, 4010i) >> (countOneBits(vec4<u32>(7759u, 1u, 0u, 1u)) % vec4<u32>(32u)), min(vec4<i32>(u_input.c, -1i, u_input.c, u_input.b), vec4<i32>(-1i, -2378i, 2147483647i, u_input.b))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1280f, -507f, -830f, -432f)), _wgslsmith_f_op_vec4_f32(func_5(vec3<bool>(true, true, true), func_1(), 1u, global0[_wgslsmith_index_u32(~43410u, 20u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1253f, -559f, -210f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(186f - -423f)), func_2(firstTrailingBit(21050u), vec3<i32>(30794i, -30623i, u_input.c), _wgslsmith_div_f32(-2339f, 1132f), _wgslsmith_f_op_f32(min(999f, -782f))).e), -u_input.a, Struct_1(func_1().a, vec4<f32>(_wgslsmith_f_op_f32(min(290f, -1726f)), _wgslsmith_f_op_f32(select(-929f, -1795f, false)), _wgslsmith_div_f32(-702f, 938f), 1631f), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-978f, -2055f, 439f))))), -559f, _wgslsmith_sub_i32(-u_input.c, u_input.b)));
    let var_1 = ~abs(~_wgslsmith_add_u32(var_0, 4294967295u));
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    let var_2 = vec3<i32>(u_input.b, u_input.c, ~_wgslsmith_add_i32(-40242i, -1i));
    let var_3 = func_2(_wgslsmith_mult_u32(var_1, var_1), _wgslsmith_add_vec3_i32(vec3<i32>(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 6956i), u_input.d.xy)), ~_wgslsmith_sub_i32(u_input.c, -2147483647i), 0i), abs(var_2)), 1683f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -641f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2681f), -216f))));
    let x = u_input.a;
    s_output = StorageBuffer(~1u, -1523f);
}

