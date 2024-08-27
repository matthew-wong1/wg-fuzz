struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

var<private> global0: array<vec4<f32>, 10> = array<vec4<f32>, 10>(vec4<f32>(473f, 1945f, -583f, -1156f), vec4<f32>(1448f, -1035f, -282f, -154f), vec4<f32>(414f, 1864f, -1514f, 1000f), vec4<f32>(905f, -267f, -446f, -1888f), vec4<f32>(1000f, 193f, -1777f, -1126f), vec4<f32>(464f, -456f, -495f, 431f), vec4<f32>(-1512f, 1906f, -128f, -1379f), vec4<f32>(-1000f, 245f, -179f, -114f), vec4<f32>(1545f, 242f, 484f, 1749f), vec4<f32>(-715f, 420f, 1216f, 1024f));

var<private> global1: array<vec3<u32>, 22> = array<vec3<u32>, 22>(vec3<u32>(4294967295u, 1707u, 26188u), vec3<u32>(1u, 26851u, 1u), vec3<u32>(54454u, 24053u, 52370u), vec3<u32>(20902u, 43487u, 13695u), vec3<u32>(0u, 0u, 5310u), vec3<u32>(0u, 1u, 79905u), vec3<u32>(48023u, 8973u, 23848u), vec3<u32>(0u, 28163u, 26575u), vec3<u32>(1u, 4793u, 1u), vec3<u32>(40796u, 47282u, 41515u), vec3<u32>(1u, 111106u, 1u), vec3<u32>(14537u, 1283u, 0u), vec3<u32>(22579u, 18086u, 4294967295u), vec3<u32>(1u, 22747u, 0u), vec3<u32>(65479u, 7486u, 1u), vec3<u32>(1u, 21494u, 0u), vec3<u32>(4294967295u, 92693u, 0u), vec3<u32>(46584u, 1u, 131805u), vec3<u32>(1u, 51728u, 9839u), vec3<u32>(29476u, 0u, 0u), vec3<u32>(0u, 0u, 13361u), vec3<u32>(1u, 1u, 0u));

var<private> global2: Struct_2 = Struct_2(vec2<i32>(1i, 25562i), 38778u, Struct_1(vec4<u32>(4294967295u, 0u, 52405u, 66073u)), Struct_1(vec4<u32>(4294967295u, 35162u, 6531u, 54656u)), -1968f);

var<private> global3: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(1i, 0i, 5767i, -37289i), vec4<i32>(-14005i, -27792i, 0i, 39559i), vec4<i32>(-40370i, -19943i, -46530i, 1i), vec4<i32>(6407i, 23833i, -48339i, 0i), vec4<i32>(2147483647i, -1i, 0i, -393i), vec4<i32>(0i, 29628i, -32861i, 0i), vec4<i32>(-2489i, -1020i, 1i, -34097i), vec4<i32>(0i, -59837i, 1i, i32(-2147483648)), vec4<i32>(2147483647i, 2147483647i, 2147483647i, 24838i), vec4<i32>(i32(-2147483648), -1i, 2147483647i, -49202i), vec4<i32>(8297i, -1i, 0i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 40183i, 25818i, 0i), vec4<i32>(0i, 0i, -35280i, i32(-2147483648)), vec4<i32>(12282i, 19424i, -10947i, -8299i), vec4<i32>(1i, 27049i, 20093i, 0i), vec4<i32>(14244i, 14191i, 21799i, 1i), vec4<i32>(1i, -2515i, 33634i, 37022i), vec4<i32>(-11634i, -14939i, 28756i, 2147483647i), vec4<i32>(0i, 1i, 11694i, -42845i), vec4<i32>(0i, -1i, 50120i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 1i, 27697i, 36264i), vec4<i32>(61i, 24050i, 2147483647i, 1i));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec2<u32>) -> u32 {
    global3 = array<vec4<i32>, 22>();
    var var_0 = Struct_2(vec2<i32>(_wgslsmith_sub_i32(-reverseBits(2147483647i), -1i), -1i), (~70515u & _wgslsmith_mult_u32(_wgslsmith_div_u32(global2.b, global2.d.a.x), ~arg_0.x)) << (~4294967295u % 32u), global2.d, Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 0u, 53883u & global2.b, ~global2.c.a.x), vec4<u32>(global2.d.a.x, 1u, _wgslsmith_div_u32(0u, global2.d.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 20357u, 4294967295u, global2.b), vec4<u32>(global2.d.a.x, arg_0.x, 0u, global2.c.a.x))))), -707f);
    var var_1 = _wgslsmith_f_op_f32(-global2.e);
    let var_2 = var_0.a.x;
    let var_3 = firstTrailingBit(countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(global2.a.x, 0i), var_0.a.x, firstLeadingBit(1i)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, var_0.a.x), vec2<i32>(-17712i, var_0.a.x)), -38026i, _wgslsmith_add_i32(2147483647i, global2.a.x)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, global2.a.x, var_0.a.x) | vec3<i32>(-8579i, var_0.a.x, u_input.b), select(vec3<i32>(31094i, -1i, u_input.a), vec3<i32>(-2147483647i, 1i, var_0.a.x), false)))));
    return 78457u;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    let var_0 = Struct_3(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_1.c.a.zwz, ~countOneBits(arg_3.a.xwy)), 22u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2588f, arg_1.e, -530f, _wgslsmith_f_op_f32(f32(-1f) * -396f))));
    global1 = array<vec3<u32>, 22>();
    global0 = array<vec4<f32>, 10>();
    var var_1 = select(!select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true))), select(vec3<bool>(true, any(vec2<bool>(false, false)), _wgslsmith_f_op_f32(1000f + var_0.b.x) != _wgslsmith_f_op_f32(global2.e + 899f)), vec3<bool>(!select(false, false, false), false, true), func_2(vec2<u32>(72788u, arg_2.a.x)) >= ~arg_1.b), all(vec3<bool>(true, true, true)) || (false & select(true, any(vec2<bool>(true, true)), any(vec3<bool>(false, false, true)))));
    var_1 = select(select(select(vec3<bool>(true & var_1.x, var_0.b.x >= -583f, -41344i > u_input.b), vec3<bool>(false, true, true), !vec3<bool>(false, var_1.x, true)), !vec3<bool>(true, var_1.x, all(vec4<bool>(false, false, var_1.x, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.e) - global2.e) == _wgslsmith_f_op_f32(min(arg_1.e, -439f))), !(!(!(!vec3<bool>(false, true, var_1.x)))), !vec3<bool>(true, !all(vec4<bool>(true, var_1.x, false, true)), var_1.x));
    return Struct_2(arg_1.a >> (vec2<u32>(_wgslsmith_clamp_u32(41195u, _wgslsmith_dot_vec2_u32(arg_1.d.a.yz, global2.d.a.zz), global2.b), ~arg_2.a.x) % vec2<u32>(32u)), var_0.a.x, Struct_1(vec4<u32>(~(~4294967295u), ~min(arg_1.d.a.x, 17187u), arg_1.b, ~(1u >> (arg_1.c.a.x % 32u)))), Struct_1(arg_2.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.e - var_0.b.x)))))));
}

fn func_1(arg_0: Struct_1) -> u32 {
    global0 = array<vec4<f32>, 10>();
    var var_0 = func_3(vec4<i32>(u_input.b >> (0u % 32u), abs(~1i), -firstLeadingBit(global2.a.x) >> (~4294967295u % 32u), abs(u_input.a)), Struct_2(vec2<i32>(-_wgslsmith_mult_i32(u_input.a, global2.a.x), u_input.a), 4294967295u, global2.c, Struct_1(_wgslsmith_div_vec4_u32(arg_0.a, arg_0.a)), _wgslsmith_f_op_f32(global2.e + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-205f)) * -1000f))), Struct_1(max(reverseBits(firstLeadingBit(vec4<u32>(global2.c.a.x, 1u, arg_0.a.x, global2.d.a.x))), vec4<u32>(func_2(vec2<u32>(arg_0.a.x, 4294967295u)), _wgslsmith_dot_vec2_u32(global2.d.a.xy, arg_0.a.wy), 10440u, global2.b))), global2.d);
    let var_1 = u_input.a;
    let var_2 = select(select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), any(vec3<bool>(true, false, true))), vec4<bool>(all(vec2<bool>(false, true)), any(vec2<bool>(false, true)), all(vec4<bool>(true, true, false, false)), select(true, true, true)), any(vec4<bool>(true, true, true, true))), !select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)), true), !any(select(vec2<bool>(true, false), vec2<bool>(false, false), false))), !select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)), false), true), vec4<bool>(true, true, true, true));
    var_0 = Struct_2(_wgslsmith_sub_vec2_i32(max(var_0.a, -global2.a & ~vec2<i32>(24750i, -42039i)), var_0.a), 18085u, global2.c, arg_0, func_3(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(-2327i, global2.a.x, 0i, 7537i)), vec4<i32>(1i, -61010i, var_1, var_1)), countOneBits(~vec4<i32>(var_0.a.x, var_0.a.x, var_1, 3565i))), Struct_2(firstTrailingBit(vec2<i32>(-15104i, -1i)), 1u ^ var_0.c.a.x, Struct_1(global2.c.a), func_3(-global3[_wgslsmith_index_u32(arg_0.a.x, 22u)], func_3(vec4<i32>(-12601i, var_1, var_1, -74852i), Struct_2(vec2<i32>(2147483647i, var_0.a.x), global2.c.a.x, global2.c, Struct_1(vec4<u32>(5961u, 33799u, 27207u, 66031u)), var_0.e), Struct_1(arg_0.a), arg_0), var_0.c, global2.d).c, -419f), func_3(vec4<i32>(reverseBits(-22452i), global2.a.x, 1i << (var_0.c.a.x % 32u), 66836i), func_3(vec4<i32>(-1i, u_input.a, global2.a.x, 43059i) >> (vec4<u32>(var_0.d.a.x, arg_0.a.x, 0u, arg_0.a.x) % vec4<u32>(32u)), func_3(global3[_wgslsmith_index_u32(var_0.c.a.x, 22u)], Struct_2(var_0.a, 4294967295u, Struct_1(vec4<u32>(0u, 4294967295u, 1u, arg_0.a.x)), var_0.c, -649f), arg_0, arg_0), func_3(global3[_wgslsmith_index_u32(0u, 22u)], Struct_2(vec2<i32>(8953i, 1i), 3663u, Struct_1(vec4<u32>(var_0.c.a.x, arg_0.a.x, 9141u, var_0.c.a.x)), global2.c, global2.e), Struct_1(vec4<u32>(arg_0.a.x, var_0.b, var_0.d.a.x, 51472u)), Struct_1(global2.d.a)).c, func_3(vec4<i32>(var_1, -1971i, -42785i, var_1), Struct_2(vec2<i32>(-47019i, var_1), 10222u, var_0.c, Struct_1(arg_0.a), var_0.e), Struct_1(var_0.d.a), Struct_1(var_0.d.a)).d), Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, 0u), vec4<u32>(var_0.b, arg_0.a.x, arg_0.a.x, arg_0.a.x))), var_0.d).c, var_0.d).e);
    return 24536u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec3_u32(~_wgslsmith_clamp_vec3_u32(global1[_wgslsmith_index_u32(global2.d.a.x, 22u)], ~vec3<u32>(9417u, 1823u, global2.d.a.x) ^ ~global1[_wgslsmith_index_u32(global2.b, 22u)], vec3<u32>(select(4294967295u, global2.c.a.x, false), _wgslsmith_mod_u32(31582u, global2.b), 1u)), vec3<u32>(_wgslsmith_sub_u32(global2.d.a.x, global2.b), 33979u, 4294967295u), global1[_wgslsmith_index_u32(9319u << ((~func_1(Struct_1(vec4<u32>(global2.c.a.x, global2.d.a.x, global2.b, global2.b))) >> (_wgslsmith_mult_u32(global2.b, 31848u) % 32u)) % 32u), 22u)]);
    global0 = array<vec4<f32>, 10>();
    var var_1 = global2.c.a.x;
    global0 = array<vec4<f32>, 10>();
    let var_2 = func_3(global3[_wgslsmith_index_u32(~(~firstLeadingBit(~var_0.x)), 22u)], Struct_2(_wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.b, -33491i), vec2<i32>(~1i, 1i)), _wgslsmith_dot_vec4_u32(vec4<u32>(global2.b, 1u, global2.c.a.x, var_0.x), ~vec4<u32>(17254u, 66137u, global2.b, 23910u)), global2.d, func_3(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global2.b), vec2<u32>(global2.c.a.x, 4294967295u)), 4294967295u), 22u)], Struct_2(vec2<i32>(-10563i, global2.a.x), 26608u, func_3(global3[_wgslsmith_index_u32(var_0.x, 22u)], Struct_2(global2.a, global2.c.a.x, global2.c, global2.d, global2.e), Struct_1(global2.d.a), Struct_1(vec4<u32>(0u, var_0.x, var_0.x, 0u))).d, global2.d, _wgslsmith_f_op_f32(floor(1071f))), Struct_1(countOneBits(vec4<u32>(47318u, var_0.x, var_0.x, 0u))), func_3(-vec4<i32>(global2.a.x, 0i, u_input.b, global2.a.x), Struct_2(vec2<i32>(global2.a.x, 28562i), 1u, global2.c, global2.d, 2071f), Struct_1(global2.d.a), func_3(global3[_wgslsmith_index_u32(global2.d.a.x, 22u)], Struct_2(vec2<i32>(-45479i, global2.a.x), 12495u, Struct_1(global2.c.a), global2.c, 215f), Struct_1(global2.d.a), global2.c).c).d).d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.e)))), global2.c, global2.d);
    let var_3 = func_3(~vec4<i32>(-u_input.a, -(~var_2.a.x), u_input.b, var_2.a.x), Struct_2(-max(-var_2.a, vec2<i32>(17030i, -8479i)), abs(global2.b), global2.d, func_3(global3[_wgslsmith_index_u32(~(~var_0.x), 22u)], func_3(countOneBits(vec4<i32>(0i, var_2.a.x, var_2.a.x, var_2.a.x)), func_3(vec4<i32>(var_2.a.x, 52213i, var_2.a.x, u_input.a), Struct_2(vec2<i32>(17936i, var_2.a.x), global2.d.a.x, var_2.d, Struct_1(global2.c.a), global2.e), Struct_1(vec4<u32>(var_0.x, var_0.x, var_2.b, var_2.c.a.x)), global2.d), Struct_1(vec4<u32>(18064u, var_0.x, global2.c.a.x, var_2.d.a.x)), global2.c), Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, global2.d.a.x, var_2.b, var_0.x), vec4<u32>(13845u, 86454u, 1424u, 74878u), vec4<u32>(var_0.x, 1u, var_0.x, var_0.x))), func_3(-vec4<i32>(global2.a.x, -1657i, -1i, global2.a.x), var_2, func_3(vec4<i32>(var_2.a.x, -1i, var_2.a.x, 33506i), Struct_2(vec2<i32>(-36781i, 3572i), var_2.d.a.x, var_2.c, Struct_1(global2.c.a), 1000f), Struct_1(global2.d.a), Struct_1(global2.c.a)).d, Struct_1(vec4<u32>(global2.d.a.x, 1u, 1u, var_0.x))).c).c, -709f), Struct_1(~vec4<u32>(func_1(var_2.d), ~53088u, var_2.d.a.x, ~4294967295u)), func_3(-vec4<i32>(_wgslsmith_mod_i32(-63411i, u_input.b), u_input.b, 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a.x, var_2.a.x, -25554i), vec3<i32>(-23746i, 2147483647i, u_input.b))), var_2, Struct_1(vec4<u32>(~4294967295u, var_2.c.a.x, 24647u << (global2.d.a.x % 32u), ~global2.b)), Struct_1(min(vec4<u32>(48833u, 37779u, global2.d.a.x, 142239u), vec4<u32>(var_0.x, var_2.b, var_2.c.a.x, 19930u) << (global2.c.a % vec4<u32>(32u))))).c).c;
    global3 = array<vec4<i32>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(~(-2147483647i ^ var_2.a.x));
}

