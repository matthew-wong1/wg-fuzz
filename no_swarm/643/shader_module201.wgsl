struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec3<u32>,
    d: bool,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec3<i32>(i32(-2147483648), -1935i, -2367i), vec3<u32>(16785u, 29791u, 56220u), -15954i, vec4<f32>(-648f, 404f, -1000f, -575f)), Struct_2(vec3<i32>(1i, 0i, 0i), vec3<u32>(0u, 36924u, 4294967295u), -26313i, vec4<f32>(-538f, -1316f, 452f, -1845f)), Struct_2(vec3<i32>(2147483647i, 2147483647i, 1i), vec3<u32>(32776u, 4294967295u, 22960u), 17240i, vec4<f32>(652f, -922f, -1463f, 702f)), Struct_2(vec3<i32>(2147483647i, -80011i, i32(-2147483648)), vec3<u32>(0u, 78479u, 1u), 1i, vec4<f32>(573f, -303f, -119f, -782f)), Struct_2(vec3<i32>(-86942i, -1i, 19259i), vec3<u32>(35923u, 13202u, 22631u), 2147483647i, vec4<f32>(988f, 733f, -237f, -822f)), Struct_2(vec3<i32>(-31435i, -6445i, 0i), vec3<u32>(61936u, 27618u, 38697u), 7863i, vec4<f32>(-843f, -824f, -209f, -1226f)), Struct_2(vec3<i32>(1i, 47851i, -17975i), vec3<u32>(0u, 33530u, 88841u), i32(-2147483648), vec4<f32>(-561f, 1285f, 1339f, -904f)), Struct_2(vec3<i32>(5076i, 0i, 16716i), vec3<u32>(7238u, 12680u, 26292u), -1i, vec4<f32>(438f, 451f, 354f, 1129f)), Struct_2(vec3<i32>(-1i, 2147483647i, -44428i), vec3<u32>(0u, 27343u, 24232u), -38127i, vec4<f32>(277f, -700f, 529f, 759f)), Struct_2(vec3<i32>(0i, 13067i, 1i), vec3<u32>(1u, 4294967295u, 14389u), 68451i, vec4<f32>(741f, 1630f, -1060f, -779f)), Struct_2(vec3<i32>(-1i, -30735i, 1i), vec3<u32>(4294967295u, 4294967295u, 0u), 1i, vec4<f32>(1622f, -941f, 1027f, 1327f)), Struct_2(vec3<i32>(2147483647i, 19627i, -805i), vec3<u32>(74176u, 4294967295u, 1u), 1i, vec4<f32>(-715f, -786f, -961f, -650f)), Struct_2(vec3<i32>(6716i, i32(-2147483648), -25425i), vec3<u32>(0u, 57032u, 31326u), 20899i, vec4<f32>(-1024f, -450f, 1866f, -971f)), Struct_2(vec3<i32>(1i, 0i, 1i), vec3<u32>(1u, 6620u, 1219u), 51629i, vec4<f32>(641f, -349f, -1000f, 1560f)), Struct_2(vec3<i32>(i32(-2147483648), 1i, 22709i), vec3<u32>(99798u, 10869u, 17204u), i32(-2147483648), vec4<f32>(540f, -194f, 1000f, 1000f)), Struct_2(vec3<i32>(-11395i, -76732i, 1i), vec3<u32>(1u, 1u, 0u), -78282i, vec4<f32>(334f, 1006f, 667f, -590f)));

var<private> global1: Struct_1 = Struct_1(vec4<i32>(0i, 25225i, -4325i, 0i), true);

var<private> global2: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec3<i32>(1i, -18719i, 13691i), vec3<u32>(15892u, 1u, 39679u), 16709i, vec4<f32>(-402f, -793f, 442f, -521f)), Struct_2(vec3<i32>(1i, -1i, -1i), vec3<u32>(0u, 0u, 0u), i32(-2147483648), vec4<f32>(266f, 706f, 379f, -124f)), Struct_2(vec3<i32>(-6219i, -1249i, 1i), vec3<u32>(37159u, 37227u, 27578u), -33816i, vec4<f32>(976f, -538f, -830f, -1796f)), Struct_2(vec3<i32>(2147483647i, 0i, -11834i), vec3<u32>(13048u, 1u, 47459u), i32(-2147483648), vec4<f32>(-1000f, -1000f, -1507f, -138f)));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    global2 = array<Struct_2, 4>();
    let var_0 = Struct_1(vec4<i32>(~global1.a.x, 49884i, _wgslsmith_mult_i32(firstTrailingBit(global1.a.x), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 0i, u_input.b), global1.a.ywz)), -43465i), arg_0.x);
    global1 = var_0;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -597f) + -720f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-970f * -2425f) * _wgslsmith_f_op_f32(ceil(-1445f)))))), _wgslsmith_f_op_f32(floor(-680f)));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-888f + _wgslsmith_f_op_f32(-580f * _wgslsmith_f_op_f32(func_3(select(vec3<bool>(true, global1.b, true), vec3<bool>(false, global1.b, false), vec3<bool>(global1.b, false, global1.b))))))));
    var var_1 = vec2<i32>(global1.a.x, min(global1.a.x, global1.a.x));
    global0 = array<Struct_2, 16>();
    var var_2 = true;
    let var_3 = Struct_4(~(~global1.a.x));
    return global2[_wgslsmith_index_u32(u_input.a << (reverseBits(~1u ^ _wgslsmith_sub_u32(4294967295u, u_input.a & 0u)) % 32u), 4u)];
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: bool) -> Struct_4 {
    let var_0 = arg_0;
    let var_1 = -714f;
    let var_2 = func_2().a.x;
    var var_3 = _wgslsmith_div_vec4_u32(select((~vec4<u32>(2434u, arg_0.c.x, arg_0.b.b.x, arg_0.b.b.x) | ~vec4<u32>(0u, u_input.a, u_input.c.x, u_input.c.x)) << (~(vec4<u32>(var_0.c.x, 0u, 42273u, 20773u) & vec4<u32>(66228u, var_0.c.x, 4294967295u, 42800u)) % vec4<u32>(32u)), vec4<u32>(81572u, 0u, arg_0.c.x, u_input.c.x), vec4<bool>(arg_2, !(global1.a.x <= -1i), global1.a.x <= -2147483647i, all(vec2<bool>(arg_2, true)))), firstLeadingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(42525u, u_input.a, arg_0.c.x, arg_0.c.x) ^ countOneBits(vec4<u32>(21212u, u_input.c.x, arg_0.b.b.x, var_0.b.b.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.b.b.x, var_0.b.b.x, 1u, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 6301u, 4294967295u, u_input.c.x), vec4<u32>(u_input.c.x, 95857u, arg_0.c.x, 8643u))))));
    global0 = array<Struct_2, 16>();
    return Struct_4(-2147483647i);
}

fn func_5(arg_0: bool, arg_1: Struct_4, arg_2: u32, arg_3: Struct_4) -> bool {
    var var_0 = Struct_3(reverseBits(1i), Struct_2(-(global1.a.yzy << (func_2().b % vec3<u32>(32u))), ~vec3<u32>(1u, min(4294967295u, u_input.c.x), firstTrailingBit(11845u)), global1.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(896f)), func_2().d.x, _wgslsmith_div_f32(-125f, -1000f), 902f))), vec3<u32>(_wgslsmith_div_u32(~27354u, abs(42117u)), min(25754u, arg_2), countOneBits(~77978u)) ^ abs(func_2().b ^ ~vec3<u32>(u_input.c.x, u_input.a, 29553u)), arg_0);
    let var_1 = 0u;
    global0 = array<Struct_2, 16>();
    var var_2 = var_0.b.b.zx;
    global2 = array<Struct_2, 4>();
    return true;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2) -> vec2<u32> {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(countOneBits(arg_1.b.x), u_input.a | arg_1.b.x, arg_0.b.b.x), select(~arg_1.b, arg_0.b.b, !vec3<bool>(false, false, global1.b))), vec3<u32>(arg_0.c.x, 11916u, 10588u), vec3<u32>(~arg_0.b.b.x, 4294967295u, u_input.a)), abs(arg_0.c)), 4u)];
    var var_1 = Struct_3(var_0.c, Struct_2(var_0.a, vec3<u32>(min(arg_0.b.b.x, 4294967295u), 40809u, 23570u) ^ arg_1.b, ~(i32(-1i) * -28884i) >> (reverseBits(var_0.b.x) % 32u), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(348f, -1000f, -2146f, -335f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-531f, 1573f, arg_0.b.d.x, -779f))))))), (max(arg_0.b.b, ~vec3<u32>(var_0.b.x, arg_1.b.x, 19707u)) & arg_1.b) << (vec3<u32>(var_0.b.x, 1u, 4294967295u) % vec3<u32>(32u)), !arg_0.d);
    var var_2 = func_5(any(vec4<bool>(arg_0.d, (var_1.b.d.x <= arg_0.b.d.x) != true, var_1.d, any(vec4<bool>(false, arg_0.d, true, false)) && !arg_0.d)), func_4(Struct_3(min(-20913i, -31826i), func_2(), vec3<u32>(4294967295u, u_input.a, arg_0.b.b.x), global1.b), arg_1.d.x <= _wgslsmith_f_op_f32(step(arg_0.b.d.x, var_1.b.d.x)), any(select(select(vec4<bool>(false, true, false, var_1.d), vec4<bool>(false, true, true, false), vec4<bool>(var_1.d, false, false, var_1.d)), vec4<bool>(var_1.d, arg_0.d, global1.b, false), false))), ~arg_0.b.b.x, Struct_4(~(~arg_0.a)));
    var var_3 = Struct_1(-(~(global1.a ^ _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.c, 0i, -20513i, 17502i), vec4<i32>(4188i, u_input.b, arg_0.b.a.x, -17975i)))), false);
    global0 = array<Struct_2, 16>();
    return var_0.b.yx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -100f)))), _wgslsmith_f_op_f32(373f * _wgslsmith_f_op_f32(select(-1808f, _wgslsmith_f_op_f32(679f + -791f), select(true, true, global1.b)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(355f + 466f) * -1696f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(674f, -115f, -1149f)))))), global1.b));
    global2 = array<Struct_2, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(firstLeadingBit(abs(func_1(Struct_3(1i, global0[_wgslsmith_index_u32(4294967295u, 16u)], vec3<u32>(4294967295u, u_input.a, 0u), global1.b), Struct_2(global1.a.wxz, vec3<u32>(1u, u_input.c.x, 69695u), u_input.b, vec4<f32>(-893f, 519f, 1738f, var_0.x)))))), ~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u << (u_input.c.x % 32u), u_input.a, u_input.c.x, 13919u), ~vec4<u32>(u_input.c.x, 4294967295u, 52716u, u_input.a)), max(~countOneBits(reverseBits(vec3<u32>(4294967295u, 40851u, 46315u))), max(_wgslsmith_add_vec3_u32(~vec3<u32>(3631u, u_input.a, 48012u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 1u, 52540u), vec3<u32>(32390u, u_input.a, 68911u))), vec3<u32>(u_input.a, 70314u, firstLeadingBit(u_input.c.x)))));
}

