struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global1: vec2<f32>;

var<private> global2: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(Struct_2(2147483647i), Struct_3(Struct_1(vec2<u32>(1u, 61868u), -1i, 4294967295u, true), vec3<f32>(923f, 809f, -1225f), Struct_1(vec2<u32>(1u, 42980u), -37607i, 24691u, true), Struct_1(vec2<u32>(30871u, 72306u), 18136i, 10804u, false), 69435u), vec4<i32>(4637i, -1i, 2147483647i, 0i)), Struct_4(Struct_2(2147483647i), Struct_3(Struct_1(vec2<u32>(4294967295u, 4890u), 24508i, 9756u, true), vec3<f32>(-413f, 660f, 1000f), Struct_1(vec2<u32>(21231u, 31530u), -25113i, 1u, true), Struct_1(vec2<u32>(21274u, 4294967295u), 2147483647i, 4294967295u, true), 66867u), vec4<i32>(33284i, -1i, -13573i, 35380i)), Struct_4(Struct_2(17385i), Struct_3(Struct_1(vec2<u32>(103895u, 31086u), 2147483647i, 9117u, false), vec3<f32>(-133f, -2009f, -938f), Struct_1(vec2<u32>(4294967295u, 1u), 33110i, 0u, false), Struct_1(vec2<u32>(28547u, 4294967295u), i32(-2147483648), 0u, true), 0u), vec4<i32>(i32(-2147483648), 49936i, -42001i, 17909i)), Struct_4(Struct_2(-1i), Struct_3(Struct_1(vec2<u32>(67655u, 62866u), 69412i, 4294967295u, false), vec3<f32>(1912f, -346f, -409f), Struct_1(vec2<u32>(1u, 1u), 4284i, 7110u, true), Struct_1(vec2<u32>(26017u, 69014u), -1906i, 10930u, false), 112518u), vec4<i32>(-1i, i32(-2147483648), 33882i, -19657i)), Struct_4(Struct_2(2147483647i), Struct_3(Struct_1(vec2<u32>(1u, 86548u), 1i, 0u, true), vec3<f32>(-1752f, -882f, -425f), Struct_1(vec2<u32>(43278u, 0u), 34806i, 12216u, false), Struct_1(vec2<u32>(4294967295u, 78652u), 1i, 11160u, false), 49116u), vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), 2147483647i)), Struct_4(Struct_2(-12644i), Struct_3(Struct_1(vec2<u32>(1u, 0u), 2147483647i, 87848u, false), vec3<f32>(-602f, -627f, 1265f), Struct_1(vec2<u32>(87974u, 52348u), -46181i, 0u, true), Struct_1(vec2<u32>(0u, 17161u), 15967i, 0u, true), 4294967295u), vec4<i32>(-17669i, i32(-2147483648), 1i, -47657i)), Struct_4(Struct_2(1i), Struct_3(Struct_1(vec2<u32>(72573u, 0u), -25823i, 0u, true), vec3<f32>(-1439f, -123f, -477f), Struct_1(vec2<u32>(1u, 1u), i32(-2147483648), 1u, true), Struct_1(vec2<u32>(1u, 38019u), -28418i, 0u, false), 21676u), vec4<i32>(-1i, 13108i, 2147483647i, i32(-2147483648))), Struct_4(Struct_2(22992i), Struct_3(Struct_1(vec2<u32>(17089u, 463u), -9586i, 15139u, false), vec3<f32>(-236f, 403f, 141f), Struct_1(vec2<u32>(1u, 1u), 63547i, 52786u, true), Struct_1(vec2<u32>(1u, 0u), 2147483647i, 0u, true), 0u), vec4<i32>(7622i, 15807i, 8674i, 0i)), Struct_4(Struct_2(-51632i), Struct_3(Struct_1(vec2<u32>(51865u, 1u), -1508i, 0u, false), vec3<f32>(-344f, 1406f, -264f), Struct_1(vec2<u32>(22107u, 15924u), 27806i, 30134u, true), Struct_1(vec2<u32>(1u, 1u), 0i, 4294967295u, true), 50262u), vec4<i32>(1i, 1i, 19336i, -2677i)), Struct_4(Struct_2(0i), Struct_3(Struct_1(vec2<u32>(1u, 50754u), 16036i, 1u, true), vec3<f32>(1073f, -438f, -1000f), Struct_1(vec2<u32>(4294967295u, 35344u), 38525i, 14836u, true), Struct_1(vec2<u32>(37595u, 38041u), 48296i, 31445u, true), 0u), vec4<i32>(i32(-2147483648), i32(-2147483648), 22654i, 6002i)), Struct_4(Struct_2(i32(-2147483648)), Struct_3(Struct_1(vec2<u32>(4912u, 94165u), 10082i, 4294967295u, false), vec3<f32>(1033f, 647f, -1656f), Struct_1(vec2<u32>(12567u, 0u), i32(-2147483648), 4294967295u, true), Struct_1(vec2<u32>(6443u, 4294967295u), 2147483647i, 25201u, false), 59722u), vec4<i32>(0i, 2147483647i, 15757i, 0i)), Struct_4(Struct_2(0i), Struct_3(Struct_1(vec2<u32>(30939u, 0u), 0i, 1u, false), vec3<f32>(454f, 1455f, 558f), Struct_1(vec2<u32>(1u, 9982u), i32(-2147483648), 26035u, false), Struct_1(vec2<u32>(38519u, 52756u), 11746i, 30120u, false), 4294967295u), vec4<i32>(1i, 27535i, 1i, i32(-2147483648))), Struct_4(Struct_2(20003i), Struct_3(Struct_1(vec2<u32>(4294967295u, 11923u), -5818i, 4294967295u, false), vec3<f32>(1000f, 1995f, 118f), Struct_1(vec2<u32>(3904u, 4294967295u), 0i, 1u, false), Struct_1(vec2<u32>(0u, 62598u), -18722i, 16530u, true), 0u), vec4<i32>(90778i, -32573i, 264i, i32(-2147483648))), Struct_4(Struct_2(-30449i), Struct_3(Struct_1(vec2<u32>(31180u, 0u), 2147483647i, 4294967295u, false), vec3<f32>(327f, 2546f, -252f), Struct_1(vec2<u32>(4294967295u, 0u), -7641i, 20482u, true), Struct_1(vec2<u32>(2332u, 65665u), 21023i, 11619u, false), 1u), vec4<i32>(1i, 0i, -55217i, -41519i)), Struct_4(Struct_2(0i), Struct_3(Struct_1(vec2<u32>(4294967295u, 30780u), -1i, 32772u, true), vec3<f32>(1000f, -2290f, -422f), Struct_1(vec2<u32>(4294967295u, 15562u), i32(-2147483648), 4294967295u, false), Struct_1(vec2<u32>(4294967295u, 63229u), -13763i, 140787u, true), 38971u), vec4<i32>(-17198i, 2147483647i, 2147483647i, 22522i)));

var<private> global3: vec3<i32> = vec3<i32>(-30994i, 0i, 0i);

var<private> global4: vec4<i32>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: u32) -> vec2<u32> {
    var var_0 = _wgslsmith_sub_vec2_i32(firstTrailingBit(max(u_input.a.ww, countOneBits(global4.yz) ^ u_input.a.zw)), select(abs(global3.zx), _wgslsmith_clamp_vec2_i32(-firstLeadingBit(u_input.a.zw), global3.zz, vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, global4.x)), global0.x));
    let var_1 = Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(~abs(12609u), u_input.c.x), vec2<u32>(~reverseBits(arg_0), 4294967295u)), 0i, u_input.c.x, global0.x && true);
    var var_2 = vec3<f32>(global1.x, _wgslsmith_f_op_f32(global1.x - -962f), 792f);
    global0 = select(vec4<bool>(all(vec3<bool>(true, all(global0.zz), true)), true, false, global0.x), !select(vec4<bool>(false, all(vec2<bool>(false, global0.x)), true, var_1.c <= 0u), vec4<bool>(global0.x && var_1.d, global0.x, all(global0.wwx), false), !vec4<bool>(true, false, false, var_1.d)), global0.x);
    var var_3 = select(((u_input.a ^ _wgslsmith_mult_vec4_i32(u_input.a, u_input.a)) >> (~vec4<u32>(arg_0, 3624u, 34293u, 49907u) % vec4<u32>(32u))) << (vec4<u32>(76408u, ~firstLeadingBit(4294967295u), ~var_1.a.x, 20029u) % vec4<u32>(32u)), u_input.a, var_1.d);
    return _wgslsmith_clamp_vec2_u32(~firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, 1u), u_input.c.xx)), ~_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.c.wz, u_input.c.yx), ~vec2<u32>(var_1.a.x, u_input.c.x)), _wgslsmith_add_vec2_u32(firstLeadingBit(var_1.a >> (vec2<u32>(84114u, u_input.b) % vec2<u32>(32u))), ~vec2<u32>(53562u, var_1.c))) >> (firstTrailingBit(firstTrailingBit(abs(vec2<u32>(1u, 34255u)))) % vec2<u32>(32u));
}

fn func_2() -> vec2<u32> {
    global4 = ~(~(-u_input.a));
    let var_0 = -1513f;
    return _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, u_input.b), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(func_3(u_input.b), vec2<u32>(2325u, 57036u)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, u_input.b), ~u_input.c.wy))), vec2<u32>(~(~countOneBits(0u)), (_wgslsmith_div_u32(u_input.c.x, u_input.c.x) & (77163u << (1u % 32u))) >> (_wgslsmith_dot_vec4_u32(~u_input.c, vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.b)) % 32u)));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: f32) -> Struct_1 {
    var var_0 = u_input.c.x;
    var var_1 = Struct_1(u_input.c.yx, _wgslsmith_sub_i32(-37901i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(global3.x, -1i), ~global4.x, global4.x)) ^ _wgslsmith_mod_i32(-(~global4.x), 2147483647i), 64613u, true);
    let var_2 = reverseBits(u_input.c.x);
    var_1 = Struct_1(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.c.x, var_1.a.x), _wgslsmith_add_vec2_u32(vec2<u32>(47790u, var_1.a.x), u_input.c.xz), ~var_1.a), u_input.c.wy) ^ func_2(), countOneBits(min(-1i, var_1.b)), _wgslsmith_div_u32(3642u, 4294967295u), all(!vec3<bool>(global0.x & false, global0.x, global3.x < 187i)));
    return Struct_1(~u_input.c.yy, -1i, ~var_1.a.x, u_input.c.x == _wgslsmith_mod_u32(_wgslsmith_div_u32(firstLeadingBit(0u), 4294967295u), var_2));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-3719i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.x))), global1.x);
    let var_1 = _wgslsmith_f_op_f32(select(-316f, _wgslsmith_f_op_f32(select(-1047f, 1493f, func_1(-4641i, _wgslsmith_f_op_f32(sign(701f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - -752f) * _wgslsmith_f_op_f32(-global1.x))).d)), !any(global0.xw)));
    let var_2 = Struct_2(-1i);
    var var_3 = _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(abs(var_1)));
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, 130f) * 265f)), _wgslsmith_f_op_f32(step(global1.x, var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 1u, var_0.c), u_input.c.zzw)));
}

