struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11> = array<u32, 11>(39823u, 60356u, 5407u, 0u, 0u, 30439u, 51330u, 2598u, 1235u, 45440u, 92805u);

var<private> global1: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(Struct_2(Struct_1(71595u), Struct_1(49636u)), vec2<f32>(-1654f, 796f), false), Struct_3(Struct_2(Struct_1(0u), Struct_1(13899u)), vec2<f32>(-1000f, 371f), true), Struct_3(Struct_2(Struct_1(124780u), Struct_1(29805u)), vec2<f32>(659f, -171f), false), Struct_3(Struct_2(Struct_1(44137u), Struct_1(42053u)), vec2<f32>(475f, 251f), true), Struct_3(Struct_2(Struct_1(4294967295u), Struct_1(3984u)), vec2<f32>(-945f, 368f), false), Struct_3(Struct_2(Struct_1(38243u), Struct_1(9457u)), vec2<f32>(704f, 430f), false), Struct_3(Struct_2(Struct_1(0u), Struct_1(1u)), vec2<f32>(-836f, 564f), false), Struct_3(Struct_2(Struct_1(60869u), Struct_1(38655u)), vec2<f32>(411f, -1197f), false), Struct_3(Struct_2(Struct_1(42409u), Struct_1(4294967295u)), vec2<f32>(-440f, -707f), false), Struct_3(Struct_2(Struct_1(3008u), Struct_1(39466u)), vec2<f32>(1092f, -1000f), true), Struct_3(Struct_2(Struct_1(4294967295u), Struct_1(1u)), vec2<f32>(1196f, 427f), false), Struct_3(Struct_2(Struct_1(0u), Struct_1(1u)), vec2<f32>(-275f, -465f), false), Struct_3(Struct_2(Struct_1(0u), Struct_1(1u)), vec2<f32>(-1000f, 404f), true), Struct_3(Struct_2(Struct_1(1u), Struct_1(4294967295u)), vec2<f32>(-1082f, -234f), true), Struct_3(Struct_2(Struct_1(4294967295u), Struct_1(55964u)), vec2<f32>(1055f, 1173f), true), Struct_3(Struct_2(Struct_1(1u), Struct_1(77905u)), vec2<f32>(261f, 672f), false), Struct_3(Struct_2(Struct_1(0u), Struct_1(4294967295u)), vec2<f32>(-288f, 816f), false), Struct_3(Struct_2(Struct_1(24581u), Struct_1(24698u)), vec2<f32>(1349f, -1000f), true), Struct_3(Struct_2(Struct_1(24715u), Struct_1(27314u)), vec2<f32>(413f, 561f), true), Struct_3(Struct_2(Struct_1(14733u), Struct_1(39109u)), vec2<f32>(1874f, -173f), false), Struct_3(Struct_2(Struct_1(31700u), Struct_1(1u)), vec2<f32>(-1176f, -430f), false), Struct_3(Struct_2(Struct_1(16879u), Struct_1(26706u)), vec2<f32>(-586f, -866f), true), Struct_3(Struct_2(Struct_1(33494u), Struct_1(32397u)), vec2<f32>(954f, 358f), true), Struct_3(Struct_2(Struct_1(1u), Struct_1(1u)), vec2<f32>(-362f, -1546f), true), Struct_3(Struct_2(Struct_1(4294967295u), Struct_1(1u)), vec2<f32>(-856f, -652f), false), Struct_3(Struct_2(Struct_1(0u), Struct_1(0u)), vec2<f32>(-128f, 1828f), true), Struct_3(Struct_2(Struct_1(73535u), Struct_1(3297u)), vec2<f32>(997f, 512f), false), Struct_3(Struct_2(Struct_1(53323u), Struct_1(1u)), vec2<f32>(263f, 1646f), true), Struct_3(Struct_2(Struct_1(15424u), Struct_1(60u)), vec2<f32>(1000f, 1570f), true));

var<private> global2: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32) -> vec3<u32> {
    var var_0 = -1i;
    var var_1 = Struct_1(16425u);
    global1 = array<Struct_3, 29>();
    let var_2 = var_1.a;
    var var_3 = 11954u;
    return select(min(vec3<u32>(54862u, 4294967295u, _wgslsmith_sub_u32(min(var_1.a, global0[_wgslsmith_index_u32(var_1.a, 11u)]), u_input.c)), ~abs(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d.x, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.a, 11u)], 11u)]), vec3<u32>(0u, 96320u, global0[_wgslsmith_index_u32(u_input.c, 11u)])))), ~max(vec3<u32>(2643u, 0u, 24458u), vec3<u32>(33504u, u_input.c, 1452u) >> (vec3<u32>(u_input.c, 41689u, 67102u) % vec3<u32>(32u))) << (vec3<u32>(~_wgslsmith_mult_u32(48774u, 1u), reverseBits(~4294967295u), max(~u_input.d.x, ~global0[_wgslsmith_index_u32(16160u, 11u)])) % vec3<u32>(32u)), select(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), vec3<bool>(true, true, all(vec3<bool>(false, false, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false))));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_add_vec3_u32(func_3(((i32(-1i) * -2147483647i) << ((4294967295u << (u_input.c % 32u)) % 32u)) << (~4294967295u % 32u)), vec3<u32>(~48117u, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d.x, 100008u), 11u)], abs(1u)));
    let var_1 = Struct_2(Struct_1(~(~1u)), Struct_1(~1u));
    let var_2 = Struct_2(var_1.b, var_1.a);
    global1 = array<Struct_3, 29>();
    var_0 = vec3<u32>(4294967295u, 4294967295u, _wgslsmith_mult_u32(firstLeadingBit((var_2.b.a | 4294967295u) >> (~var_1.a.a % 32u)), ((u_input.d.x >> (1u % 32u)) ^ 61380u) & _wgslsmith_sub_u32(func_3(76408i).x, _wgslsmith_div_u32(0u, var_1.a.a))));
    return var_2;
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_1) -> vec3<f32> {
    global2 = arg_1.b.x <= arg_0;
    global2 = select(true, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))) == -1000f), true);
    var var_0 = Struct_1(~42122u);
    let var_1 = countOneBits(abs(vec4<u32>(_wgslsmith_add_u32(~var_0.a, 0u), select(1u, ~u_input.c, all(vec2<bool>(arg_1.c, arg_1.c))), arg_1.a.b.a, firstLeadingBit(76397u) ^ abs(arg_2.a))));
    var var_2 = ~(~_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(12787i, u_input.a, -25856i, u_input.a)), abs(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)) >> (var_1 % vec4<u32>(32u))));
    return vec3<f32>(1000f, _wgslsmith_f_op_f32(-arg_1.b.x), arg_1.b.x);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(658f, 527f, false))))), Struct_3(func_2(), vec2<f32>(-132f, -1643f), any(select(!arg_0, arg_0, arg_0.x == arg_0.x))), arg_1.b));
    global2 = all(vec4<bool>(true, true, true, arg_0.x));
    let var_1 = any(vec2<bool>(!arg_0.x, arg_0.x));
    var var_2 = arg_1.b;
    var var_3 = arg_0.zw;
    return !select(select(!vec4<bool>(false, var_3.x, arg_0.x, var_3.x), arg_0, any(arg_0.wzx)), arg_0, any(select(vec4<bool>(var_3.x, arg_0.x, var_3.x, arg_0.x), vec4<bool>(arg_0.x, var_3.x, var_3.x, var_3.x), arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec2<bool>(any(!func_1(vec4<bool>(false, true, false, false), Struct_2(Struct_1(global0[_wgslsmith_index_u32(6542u, 11u)]), Struct_1(u_input.d.x)))), true));
    global2 = !all(vec2<bool>(true, false));
    let var_1 = u_input.d.x;
    let var_2 = ~max(_wgslsmith_add_u32(1719u, (u_input.c << (4294967295u % 32u)) ^ firstLeadingBit(8926u)), ~0u & func_2().a.a);
    global1 = array<Struct_3, 29>();
    var var_3 = -1405f;
    let var_4 = Struct_1(35316u);
    let var_5 = Struct_2(var_4, Struct_1(~33206u));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec4<i32>(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -6752i), vec2<i32>(-10619i, 33221i))), -3956i, 0i, abs(min(u_input.a, u_input.a)))), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_5.a.a, 77595u, u_input.d.x), vec3<u32>(0u, global0[_wgslsmith_index_u32(23213u, 11u)], 42860u), vec3<u32>(var_5.b.a, 45273u, 1u)), vec3<u32>(60057u, 447u, var_1)), ~(~vec3<u32>(53812u, var_1, 74101u))), vec3<u32>(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(0u, 11u)], 89053u) ^ ~u_input.c, 1u, global0[_wgslsmith_index_u32(~1u, 11u)])), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(23616u, 11u)], 4294967295u, var_2, 24152u), vec4<u32>(var_4.a, u_input.d.x, var_1, var_1)), 11u)], u_input.c ^ 1u, var_2, 1u), vec4<u32>(4511u, func_3(0i).x, 54195u, var_2)), ~vec4<u32>(26012u, u_input.c | var_1, 4294967295u, 4294967295u)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-647f * 464f), -1115f, 1475f))))));
}

