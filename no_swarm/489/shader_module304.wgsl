struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: bool,
    d: Struct_2,
}

struct Struct_5 {
    a: vec2<u32>,
    b: bool,
    c: u32,
    d: Struct_2,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<f32>, 17> = array<vec4<f32>, 17>(vec4<f32>(444f, 1183f, 1753f, -412f), vec4<f32>(415f, -2884f, -1000f, -1860f), vec4<f32>(1000f, 1000f, -2145f, 814f), vec4<f32>(752f, 671f, 767f, -166f), vec4<f32>(-1295f, 1241f, -1211f, 198f), vec4<f32>(455f, -829f, -1000f, -639f), vec4<f32>(-1000f, 1876f, -124f, -481f), vec4<f32>(1658f, 642f, 656f, 663f), vec4<f32>(-153f, 1197f, -702f, 1613f), vec4<f32>(1366f, 1301f, 456f, 258f), vec4<f32>(-911f, -1249f, -825f, 1218f), vec4<f32>(-1141f, -942f, -1000f, -180f), vec4<f32>(378f, 1778f, 397f, 1000f), vec4<f32>(-224f, 1000f, -322f, -2132f), vec4<f32>(-882f, 822f, -991f, 2001f), vec4<f32>(980f, -2466f, -937f, -334f), vec4<f32>(729f, -1000f, 166f, 1046f));

var<private> global2: array<Struct_5, 26> = array<Struct_5, 26>(Struct_5(vec2<u32>(4294967295u, 83817u), false, 0u, Struct_2(Struct_1(i32(-2147483648), -1i, -1000f, vec2<bool>(false, true), vec2<i32>(34277i, -15667i)), Struct_1(11014i, 0i, -995f, vec2<bool>(true, true), vec2<i32>(12394i, 1i)), 6900u, 4294967295u, -178f), vec2<bool>(false, false)), Struct_5(vec2<u32>(4294967295u, 0u), true, 48349u, Struct_2(Struct_1(-1i, -50500i, -809f, vec2<bool>(true, true), vec2<i32>(12420i, 6933i)), Struct_1(1i, 50718i, 1000f, vec2<bool>(true, false), vec2<i32>(0i, 23900i)), 1u, 0u, -1332f), vec2<bool>(false, false)), Struct_5(vec2<u32>(9573u, 19110u), false, 0u, Struct_2(Struct_1(-30604i, -8127i, 382f, vec2<bool>(true, false), vec2<i32>(i32(-2147483648), 0i)), Struct_1(1i, -1i, -169f, vec2<bool>(false, true), vec2<i32>(14523i, 36390i)), 25132u, 32233u, 215f), vec2<bool>(false, true)), Struct_5(vec2<u32>(1u, 1u), false, 4294967295u, Struct_2(Struct_1(-32633i, 1i, -172f, vec2<bool>(true, true), vec2<i32>(16621i, i32(-2147483648))), Struct_1(1i, -1747i, 410f, vec2<bool>(true, false), vec2<i32>(-25237i, -24841i)), 1u, 18954u, 796f), vec2<bool>(false, false)), Struct_5(vec2<u32>(91382u, 27530u), true, 57944u, Struct_2(Struct_1(0i, -47332i, 1010f, vec2<bool>(true, true), vec2<i32>(-9355i, -21293i)), Struct_1(0i, 2147483647i, 743f, vec2<bool>(false, true), vec2<i32>(-12716i, 27660i)), 54927u, 0u, -1000f), vec2<bool>(false, false)), Struct_5(vec2<u32>(22584u, 26352u), true, 4294967295u, Struct_2(Struct_1(-1i, i32(-2147483648), 627f, vec2<bool>(false, true), vec2<i32>(i32(-2147483648), 39478i)), Struct_1(10211i, -41400i, 148f, vec2<bool>(false, false), vec2<i32>(-55188i, -60864i)), 14665u, 4294967295u, 995f), vec2<bool>(false, true)), Struct_5(vec2<u32>(121152u, 1u), true, 0u, Struct_2(Struct_1(2147483647i, 46261i, -1230f, vec2<bool>(false, false), vec2<i32>(29625i, -45933i)), Struct_1(-30729i, 33695i, -1768f, vec2<bool>(false, true), vec2<i32>(i32(-2147483648), 0i)), 18090u, 65276u, -362f), vec2<bool>(false, true)), Struct_5(vec2<u32>(2704u, 4294967295u), false, 11137u, Struct_2(Struct_1(i32(-2147483648), i32(-2147483648), 1544f, vec2<bool>(false, false), vec2<i32>(25335i, 2147483647i)), Struct_1(29213i, 2147483647i, -355f, vec2<bool>(true, true), vec2<i32>(-1i, -8069i)), 0u, 0u, 758f), vec2<bool>(false, false)), Struct_5(vec2<u32>(1u, 29347u), false, 50092u, Struct_2(Struct_1(-1i, i32(-2147483648), -1165f, vec2<bool>(true, false), vec2<i32>(2147483647i, 2147483647i)), Struct_1(-1i, 2147483647i, -1000f, vec2<bool>(false, true), vec2<i32>(-1i, 0i)), 11370u, 4294967295u, -737f), vec2<bool>(true, false)), Struct_5(vec2<u32>(26495u, 4294967295u), true, 13182u, Struct_2(Struct_1(37145i, 59786i, 449f, vec2<bool>(false, false), vec2<i32>(33847i, 0i)), Struct_1(-22000i, -22997i, -488f, vec2<bool>(true, false), vec2<i32>(-2659i, 1i)), 4294967295u, 4294967295u, 277f), vec2<bool>(true, false)), Struct_5(vec2<u32>(6203u, 4294967295u), true, 1u, Struct_2(Struct_1(-55283i, 49580i, 1005f, vec2<bool>(false, false), vec2<i32>(-53427i, -36231i)), Struct_1(1i, 2454i, 808f, vec2<bool>(false, true), vec2<i32>(57674i, 33222i)), 4294967295u, 37679u, 194f), vec2<bool>(true, false)), Struct_5(vec2<u32>(1u, 55698u), true, 4294967295u, Struct_2(Struct_1(4907i, -10683i, -406f, vec2<bool>(true, true), vec2<i32>(1943i, -61869i)), Struct_1(2147483647i, 1i, -476f, vec2<bool>(false, true), vec2<i32>(-34297i, 14080i)), 0u, 15173u, 2240f), vec2<bool>(false, false)), Struct_5(vec2<u32>(74964u, 0u), true, 4294967295u, Struct_2(Struct_1(1i, 1i, 367f, vec2<bool>(false, true), vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(1i, -32750i, -1031f, vec2<bool>(true, false), vec2<i32>(-20274i, 36847i)), 0u, 9981u, -979f), vec2<bool>(true, true)), Struct_5(vec2<u32>(43722u, 0u), true, 18335u, Struct_2(Struct_1(-1i, i32(-2147483648), 1040f, vec2<bool>(true, true), vec2<i32>(2147483647i, -1i)), Struct_1(26160i, -38925i, -984f, vec2<bool>(true, false), vec2<i32>(-1i, -1i)), 8293u, 1u, 584f), vec2<bool>(false, true)), Struct_5(vec2<u32>(4294967295u, 1u), true, 26031u, Struct_2(Struct_1(-1i, -114i, 135f, vec2<bool>(false, false), vec2<i32>(20275i, 20797i)), Struct_1(1i, 7344i, -589f, vec2<bool>(false, true), vec2<i32>(-12644i, 18700i)), 24110u, 1u, -550f), vec2<bool>(false, false)), Struct_5(vec2<u32>(33488u, 5902u), true, 4294967295u, Struct_2(Struct_1(0i, -75561i, -115f, vec2<bool>(true, true), vec2<i32>(73010i, 17799i)), Struct_1(-8379i, 15161i, -1000f, vec2<bool>(false, true), vec2<i32>(20019i, -1i)), 25643u, 1u, 570f), vec2<bool>(true, false)), Struct_5(vec2<u32>(4294967295u, 1u), true, 4294967295u, Struct_2(Struct_1(0i, 20625i, 339f, vec2<bool>(false, true), vec2<i32>(-16884i, 26806i)), Struct_1(1i, -1i, 897f, vec2<bool>(false, false), vec2<i32>(6359i, -4081i)), 0u, 4294967295u, -2147f), vec2<bool>(true, false)), Struct_5(vec2<u32>(21414u, 4638u), true, 4294967295u, Struct_2(Struct_1(-27079i, -107300i, -1344f, vec2<bool>(false, false), vec2<i32>(23619i, -46037i)), Struct_1(-9686i, 0i, -662f, vec2<bool>(true, false), vec2<i32>(-22184i, 1i)), 0u, 4294967295u, 726f), vec2<bool>(false, true)), Struct_5(vec2<u32>(31917u, 1u), true, 21465u, Struct_2(Struct_1(1i, 1i, -1089f, vec2<bool>(false, true), vec2<i32>(1i, 52120i)), Struct_1(2147483647i, 1i, 109f, vec2<bool>(false, false), vec2<i32>(-3177i, 1i)), 1u, 4294967295u, 223f), vec2<bool>(true, true)), Struct_5(vec2<u32>(15989u, 9730u), true, 1u, Struct_2(Struct_1(1795i, i32(-2147483648), -1000f, vec2<bool>(false, false), vec2<i32>(-12762i, 0i)), Struct_1(1i, -28645i, -2452f, vec2<bool>(true, true), vec2<i32>(13646i, 62456i)), 4294967295u, 4294967295u, -801f), vec2<bool>(false, true)), Struct_5(vec2<u32>(1u, 20972u), true, 0u, Struct_2(Struct_1(2147483647i, 32359i, 836f, vec2<bool>(false, true), vec2<i32>(1i, 1194i)), Struct_1(-1303i, 2147483647i, 567f, vec2<bool>(true, true), vec2<i32>(-21335i, -23186i)), 35071u, 50104u, 663f), vec2<bool>(false, true)), Struct_5(vec2<u32>(37771u, 4294967295u), true, 24799u, Struct_2(Struct_1(i32(-2147483648), -10324i, -312f, vec2<bool>(false, false), vec2<i32>(1832i, i32(-2147483648))), Struct_1(18257i, i32(-2147483648), -368f, vec2<bool>(false, true), vec2<i32>(0i, -34068i)), 19299u, 68444u, -114f), vec2<bool>(false, false)), Struct_5(vec2<u32>(4283u, 4294967295u), false, 0u, Struct_2(Struct_1(-13307i, 0i, 1000f, vec2<bool>(false, false), vec2<i32>(-11348i, -21i)), Struct_1(-2780i, 16393i, -1070f, vec2<bool>(false, false), vec2<i32>(-65897i, 10297i)), 53213u, 35183u, 848f), vec2<bool>(false, true)), Struct_5(vec2<u32>(109541u, 34811u), false, 13033u, Struct_2(Struct_1(2147483647i, 2147483647i, -690f, vec2<bool>(false, false), vec2<i32>(5079i, 1i)), Struct_1(21692i, -14208i, -316f, vec2<bool>(false, false), vec2<i32>(i32(-2147483648), 1i)), 9584u, 4294967295u, 1537f), vec2<bool>(false, true)), Struct_5(vec2<u32>(48907u, 1u), true, 4294967295u, Struct_2(Struct_1(-27636i, 1i, 1000f, vec2<bool>(true, true), vec2<i32>(25815i, 2147483647i)), Struct_1(775i, -48209i, -2263f, vec2<bool>(false, false), vec2<i32>(2147483647i, i32(-2147483648))), 13311u, 756u, 763f), vec2<bool>(true, false)), Struct_5(vec2<u32>(22982u, 18433u), false, 4294967295u, Struct_2(Struct_1(0i, 26260i, -566f, vec2<bool>(false, false), vec2<i32>(46081i, 2147483647i)), Struct_1(0i, 14799i, -2911f, vec2<bool>(false, false), vec2<i32>(i32(-2147483648), i32(-2147483648))), 4294967295u, 3249u, -910f), vec2<bool>(true, false)));

var<private> global3: u32 = 37218u;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> vec3<bool> {
    let var_0 = vec3<bool>(!(((u_input.c.x << (0u % 32u)) <= 9116i) || (select(false, true, true) & true)), all(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false)) && true, select(_wgslsmith_mult_i32(u_input.c.x, abs(u_input.a.x)) < 1i, (select(7232u, 62717u, false) != ~34157u) == any(vec3<bool>(true, true, false)), all(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))));
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1f * -243f)));
    var var_3 = Struct_1(firstLeadingBit(u_input.a.x), i32(-1i) * -28749i, -1416f, !var_0.zz, -vec2<i32>(countOneBits(u_input.a.x), 15833i));
    global0 = i32(-1i) * -2147483647i;
    return !var_0;
}

fn func_2(arg_0: bool, arg_1: Struct_3) -> Struct_1 {
    global2 = array<Struct_5, 26>();
    let var_0 = global1[_wgslsmith_index_u32(u_input.d.x, 17u)];
    global2 = array<Struct_5, 26>();
    let var_1 = !vec4<bool>(select(!(!arg_0), true | arg_0, !select(arg_0, arg_0, false)), all(func_3()), arg_0, all(select(func_3(), vec3<bool>(false, true, arg_0), !vec3<bool>(arg_0, arg_0, arg_0))));
    var var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x ^ min(1i, -1i), 0i, ~(-1i) | u_input.a.x), _wgslsmith_mod_vec3_i32(countOneBits(u_input.c.yyy), select(u_input.c.zyz, u_input.c.xyy, var_1.yxx)) << (min(max(arg_1.a, vec3<u32>(u_input.b, 55375u, 1u)), firstTrailingBit(vec3<u32>(20504u, arg_1.a.x, 47249u))) % vec3<u32>(32u))) | vec3<i32>(u_input.a.x, u_input.a.x & -(u_input.a.x << (34498u % 32u)), -18127i);
    return Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.x, -3067i, var_2.x, 1i) >> (vec4<u32>(arg_1.a.x, u_input.b, 12974u, arg_1.a.x) % vec4<u32>(32u)), -u_input.c, _wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(u_input.a.x, 17540i, var_2.x, -25905i))), u_input.c), -(2147483647i >> (~arg_1.a.x % 32u))), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.c.x, u_input.a.x, i32(-1i) * -1i)), u_input.c.xzz), _wgslsmith_f_op_f32(1468f + 282f), var_1.zw, u_input.c.yz);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_2) -> bool {
    var var_0 = 4294967295u;
    global3 = _wgslsmith_sub_u32(arg_1, 0u);
    var_0 = ~_wgslsmith_sub_u32(arg_3.c, abs(4294967295u));
    var var_1 = func_2(arg_3.a.d.x, Struct_3(max((vec3<u32>(u_input.d.x, 1u, arg_1) << (vec3<u32>(arg_3.d, arg_3.c, arg_3.d) % vec3<u32>(32u))) >> (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, arg_3.c, 0u), u_input.d.xwy) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_mod_u32(48969u, arg_1), 26976u, firstTrailingBit(1u))), _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(66983u, 17u)])));
    var_1 = Struct_1(u_input.a.x, u_input.a.x, var_1.c, vec2<bool>(any(vec3<bool>(true, any(vec3<bool>(arg_0, false, true)), true)), true), -(~(-arg_3.b.e)));
    return true && all(arg_3.b.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1i;
    let var_0 = Struct_4(!all(vec3<bool>(all(vec2<bool>(false, true)), func_1(true, u_input.b, vec2<f32>(-860f, 762f), Struct_2(Struct_1(u_input.c.x, u_input.a.x, -917f, vec2<bool>(true, true), vec2<i32>(58703i, 36397i)), Struct_1(-32454i, 34103i, 792f, vec2<bool>(false, true), vec2<i32>(0i, u_input.c.x)), u_input.b, 4294967295u, 894f)), true)), Struct_2(Struct_1(~_wgslsmith_mult_i32(u_input.a.x, -2147483647i), -33875i, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(588f, 864f), _wgslsmith_f_op_f32(-134f + -406f))), vec2<bool>(true, u_input.a.x > u_input.c.x), -_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, u_input.c.x), vec2<i32>(u_input.c.x, -152i))), func_2(u_input.b >= 0u, Struct_3(vec3<u32>(27467u, u_input.b, 25245u), vec4<f32>(375f, -407f, -692f, 146f))), u_input.d.x, _wgslsmith_dot_vec4_u32(firstTrailingBit(~u_input.d), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 21665u, 4294967295u, 4294967295u), vec4<u32>(u_input.b, u_input.d.x, u_input.d.x, 8401u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-248f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-348f * 1940f))))), all(vec4<bool>(all(vec2<bool>(true, true)), 1i <= u_input.a.x, u_input.b <= (4294967295u | u_input.b), true)), Struct_2(Struct_1(~_wgslsmith_clamp_i32(19231i, -1i, u_input.a.x), _wgslsmith_add_i32(abs(2147483647i), func_2(false, Struct_3(vec3<u32>(u_input.b, u_input.d.x, 36403u), vec4<f32>(-311f, 269f, -1248f, 1000f))).a), 1f, vec2<bool>(true, true), select(vec2<i32>(0i, -1297i), u_input.c.zz, true)), Struct_1(-40465i, 0i, 1225f, vec2<bool>(35831i != u_input.a.x, true), vec2<i32>(-1i) * -u_input.a.yy), ~firstLeadingBit(1u), countOneBits(_wgslsmith_sub_u32(~0u, _wgslsmith_add_u32(u_input.b, 21529u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -469f))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.a.c, _wgslsmith_f_op_f32(step(func_2(all(vec2<bool>(false, var_0.a)), Struct_3(vec3<u32>(u_input.b, var_0.b.c, 1u), global1[_wgslsmith_index_u32(0u, 17u)])).c, var_0.b.b.c)), -874f, var_0.b.a.c));
    let var_2 = vec2<i32>(8417i, countOneBits(abs(-1i)));
    var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(0u, 17u)]), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-432f, var_0.d.e, var_0.d.a.c, -288f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(1u, 17u)])))), _wgslsmith_f_op_f32(trunc(1000f)) != 1f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1360f - -974f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.yyx * var_1.yxw) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_1.wyy))), select(select(vec3<bool>(var_0.b.a.d.x, var_0.d.a.d.x, false), vec3<bool>(true, false, false), true), vec3<bool>(var_0.a, var_0.a, false), vec3<bool>(var_0.b.a.d.x, true, true))))), max(vec4<i32>(countOneBits(u_input.c.x), abs(var_2.x), _wgslsmith_mult_i32(-30925i, -23019i), i32(-1i) * -20343i), ~_wgslsmith_div_vec4_i32(vec4<i32>(var_0.d.b.e.x, 14248i, u_input.a.x, u_input.a.x), vec4<i32>(1i, -1i, var_2.x, var_2.x))) & firstTrailingBit(_wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, var_0.b.b.a, var_2.x, 1i)) | vec4<i32>(1i, var_0.b.b.e.x, -11784i, -2147483647i)));
}

