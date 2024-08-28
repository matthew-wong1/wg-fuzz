struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec4<f32>,
    d: u32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> vec4<u32> {
    var var_0 = vec4<i32>(_wgslsmith_sub_i32(~_wgslsmith_add_i32(select(0i, u_input.b, arg_0.b), 1i), -10434i), ~(-1i), arg_3.a.e.x, _wgslsmith_dot_vec2_i32(~_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-4409i, arg_2.a.e.x), vec2<i32>(arg_0.e.x, u_input.b)), -arg_1.e), ~abs(-arg_3.a.e)));
    return ~(arg_1.a & vec4<u32>(countOneBits(_wgslsmith_div_u32(arg_1.a.x, 1u)), ~_wgslsmith_dot_vec4_u32(arg_0.a, arg_2.a.a), 4294967295u & (arg_2.c >> (arg_2.a.d % 32u)), _wgslsmith_add_u32(firstTrailingBit(arg_1.d), _wgslsmith_dot_vec2_u32(arg_0.a.yy, vec2<u32>(arg_3.c, arg_2.a.d)))));
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> u32 {
    var var_0 = arg_1;
    var var_1 = 0u;
    var_0 = Struct_1(arg_1.a, var_0.b, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.c - arg_1.c)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.c.x, -185f, arg_0, var_0.c.x)))))), var_0.a.x, var_0.e);
    var var_2 = -2147483647i;
    let var_3 = -43907i;
    return ~(~45151u);
}

fn func_2() -> Struct_2 {
    var var_0 = vec3<u32>(84284u, 39252u >> (func_4(-298f, Struct_1(func_3(Struct_1(vec4<u32>(39792u, u_input.a, u_input.a, u_input.a), false, vec4<f32>(430f, 1495f, -688f, 2020f), 7643u, vec2<i32>(u_input.b, u_input.b)), Struct_1(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), true, vec4<f32>(-741f, -403f, -1000f, 829f), u_input.a, vec2<i32>(u_input.b, -7414i)), Struct_2(Struct_1(vec4<u32>(1u, u_input.a, 77494u, 4294967295u), false, vec4<f32>(-1110f, -610f, -287f, -1000f), 0u, vec2<i32>(u_input.b, -13592i)), vec2<f32>(662f, -1433f), u_input.a), Struct_2(Struct_1(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), true, vec4<f32>(1088f, -2051f, -1189f, 946f), 72281u, vec2<i32>(-21518i, u_input.b)), vec2<f32>(510f, 1218f), u_input.a)), u_input.a >= 32709u, vec4<f32>(-1370f, 1231f, -1392f, -2664f), _wgslsmith_mod_u32(u_input.a, u_input.a), firstTrailingBit(vec2<i32>(14190i, -2147483647i)))) % 32u), ~max(~(~u_input.a), 1u));
    return Struct_2(Struct_1(vec4<u32>(_wgslsmith_mod_u32(u_input.a, 1u), _wgslsmith_sub_u32(var_0.x | u_input.a, abs(u_input.a)), min(21772u, _wgslsmith_add_u32(var_0.x, 2056u)), _wgslsmith_add_u32(~u_input.a, 93297u)), all(vec2<bool>(true, true)) & true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -573f), _wgslsmith_div_f32(-754f, 1009f), 2074f, _wgslsmith_f_op_f32(max(-2603f, -1302f)))), u_input.a, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(39418i, 46964i, -2147483647i, 0i) >> (vec4<u32>(28594u, 239u, u_input.a, 1u) % vec4<u32>(32u)), -vec4<i32>(u_input.b, -42382i, 3236i, u_input.b)), 1i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1109f, 363f)), func_3(Struct_1(func_3(Struct_1(vec4<u32>(50975u, 3567u, 61057u, u_input.a), false, vec4<f32>(176f, -412f, -495f, 1000f), u_input.a, vec2<i32>(u_input.b, u_input.b)), Struct_1(vec4<u32>(25527u, 1u, u_input.a, u_input.a), true, vec4<f32>(-683f, 1000f, 2112f, -375f), var_0.x, vec2<i32>(41646i, u_input.b)), Struct_2(Struct_1(vec4<u32>(25261u, 77383u, 4294967295u, var_0.x), true, vec4<f32>(1695f, -1657f, 1258f, 1443f), 1u, vec2<i32>(-21238i, u_input.b)), vec2<f32>(444f, 1000f), 40007u), Struct_2(Struct_1(vec4<u32>(u_input.a, 1u, var_0.x, var_0.x), false, vec4<f32>(-1103f, 291f, 1249f, 184f), 4294967295u, vec2<i32>(-7462i, u_input.b)), vec2<f32>(1534f, -598f), 32829u)), any(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1651f, 549f, -742f, 468f))), var_0.x >> (49291u % 32u), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(56794i, 47316i))), Struct_1(vec4<u32>(var_0.x, u_input.a, 0u, var_0.x), u_input.a != var_0.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1217f, 262f, 387f, -611f)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 46523u, 59475u), vec3<u32>(u_input.a, 0u, u_input.a)), reverseBits(vec2<i32>(u_input.b, 2147483647i))), Struct_2(Struct_1(vec4<u32>(4294967295u, 3195u, 46875u, var_0.x), true, vec4<f32>(-1000f, -791f, -1474f, 2452f), 17429u, vec2<i32>(u_input.b, -2147483647i)), vec2<f32>(-1000f, -234f), 0u | u_input.a), Struct_2(Struct_1(vec4<u32>(var_0.x, 0u, 31500u, var_0.x), true, vec4<f32>(-930f, 194f, -982f, -1299f), 39218u, vec2<i32>(0i, -35178i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-475f, 256f)), func_4(-1010f, Struct_1(vec4<u32>(var_0.x, 20661u, 31594u, var_0.x), false, vec4<f32>(671f, 1151f, 378f, -353f), 10313u, vec2<i32>(-7904i, u_input.b))))).x & ~var_0.x);
}

fn func_1() -> vec4<i32> {
    let var_0 = func_2();
    let var_1 = var_0;
    let var_2 = 0u << (~_wgslsmith_mult_u32(~func_2().a.d, 1u) % 32u);
    var var_3 = !var_1.a.b;
    var var_4 = Struct_1(_wgslsmith_clamp_vec4_u32(var_1.a.a, min(var_0.a.a, var_1.a.a), var_1.a.a), var_0.a.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.b.x)), _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(trunc(240f)), var_1.a.e.x <= var_0.a.e.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(488f)) * -648f))), 90252u, vec2<i32>(var_0.a.e.x ^ var_0.a.e.x, 0i & var_1.a.e.x));
    return abs(~vec4<i32>(1i, 0i, u_input.b, u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(338f + 259f) + 699f)))));
    var var_1 = func_1();
    var_1 = max(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-var_1.x, u_input.b, _wgslsmith_add_i32(var_1.x, -2147483647i), u_input.b), vec4<i32>(min(~20952i, min(55214i, -1i)), -1i, -8100i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(var_1.xx, var_1.xx), _wgslsmith_dot_vec3_i32(var_1.yxz, vec3<i32>(2147483647i, 2147483647i, u_input.b)), -2099i)), -countOneBits(max(vec4<i32>(u_input.b, u_input.b, -29269i, u_input.b), vec4<i32>(19516i, 4602i, u_input.b, -2147483647i)))), -(vec4<i32>(-1i) * -(vec4<i32>(0i, u_input.b, var_1.x, var_1.x) ^ vec4<i32>(u_input.b, 16965i, u_input.b, 2147483647i))));
    var var_2 = Struct_2(func_2().a, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0, -797f))) - var_0), -862f), 73697u);
    var_2 = Struct_2(var_2.a, vec2<f32>(_wgslsmith_f_op_f32(-var_2.b.x), -1206f), _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(max(4294967295u, 1u), var_2.c), u_input.a), firstTrailingBit(var_2.a.d ^ u_input.a)));
    let var_3 = vec4<i32>(var_2.a.e.x, -42251i, 2302i, _wgslsmith_mod_i32(i32(-1i) * -1i, u_input.b));
    var_2 = func_2();
    let var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_2.a.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2107f, 770f, var_2.a.c.x, var_0))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_2.a.c, vec4<f32>(var_0, -786f, -1516f, var_0))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.a.c.x, var_2.b.x, var_0, var_0)))))), any(select(vec3<bool>(var_2.a.b, all(vec4<bool>(false, false, false, false)), false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, var_2.a.b), vec3<bool>(true, var_2.a.b, var_2.a.b), false), var_2.a.b), !vec3<bool>(true, true, var_2.a.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(min(firstTrailingBit(var_2.a.a.zy), _wgslsmith_mod_vec2_u32(select(~vec2<u32>(0u, 26731u), var_2.a.a.zw, !vec2<bool>(var_2.a.b, true)), _wgslsmith_mod_vec2_u32(var_2.a.a.xy | vec2<u32>(72455u, u_input.a), firstLeadingBit(var_2.a.a.zy)))), var_1.wzy);
}

