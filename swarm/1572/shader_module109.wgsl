struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30>;

var<private> global1: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(0i, vec4<i32>(2147483647i, -47251i, -51146i, 1i), Struct_1(vec3<u32>(24188u, 0u, 1u), -849f, vec2<i32>(32869i, -28237i)), Struct_1(vec3<u32>(11268u, 4294967295u, 57363u), 566f, vec2<i32>(2147483647i, 1i))), Struct_2(2805i, vec4<i32>(-8718i, -4907i, i32(-2147483648), 17822i), Struct_1(vec3<u32>(55544u, 5504u, 1u), -620f, vec2<i32>(0i, i32(-2147483648))), Struct_1(vec3<u32>(2113u, 1u, 7597u), 610f, vec2<i32>(19467i, i32(-2147483648)))), Struct_2(2147483647i, vec4<i32>(-1i, 0i, 12570i, 67407i), Struct_1(vec3<u32>(0u, 1u, 4294967295u), 165f, vec2<i32>(13333i, -1i)), Struct_1(vec3<u32>(1u, 0u, 65646u), -375f, vec2<i32>(6928i, 1i))), Struct_2(0i, vec4<i32>(0i, -35533i, 0i, 52821i), Struct_1(vec3<u32>(17880u, 25526u, 0u), -1000f, vec2<i32>(6794i, i32(-2147483648))), Struct_1(vec3<u32>(14473u, 61794u, 16160u), -496f, vec2<i32>(1i, 55841i))), Struct_2(-28661i, vec4<i32>(i32(-2147483648), -50517i, 11061i, -1i), Struct_1(vec3<u32>(1u, 16744u, 0u), -337f, vec2<i32>(1i, 15126i)), Struct_1(vec3<u32>(0u, 16890u, 0u), 850f, vec2<i32>(73093i, 1i))), Struct_2(43222i, vec4<i32>(24839i, 14870i, 1i, 16651i), Struct_1(vec3<u32>(50088u, 0u, 80384u), -3156f, vec2<i32>(-25272i, 1i)), Struct_1(vec3<u32>(5065u, 72311u, 1u), -1578f, vec2<i32>(72668i, -3365i))), Struct_2(-23100i, vec4<i32>(2147483647i, -18943i, -1i, i32(-2147483648)), Struct_1(vec3<u32>(57808u, 1u, 2277u), 119f, vec2<i32>(7575i, -7128i)), Struct_1(vec3<u32>(4294967295u, 0u, 20714u), -508f, vec2<i32>(34323i, 0i))), Struct_2(2147483647i, vec4<i32>(16777i, 1i, 1319i, 2147483647i), Struct_1(vec3<u32>(27290u, 4294967295u, 20467u), -1127f, vec2<i32>(0i, 2147483647i)), Struct_1(vec3<u32>(39987u, 1246u, 1u), -442f, vec2<i32>(24190i, 1i))), Struct_2(2147483647i, vec4<i32>(-22327i, i32(-2147483648), 33434i, 1i), Struct_1(vec3<u32>(1u, 1u, 127579u), -558f, vec2<i32>(-3620i, -1i)), Struct_1(vec3<u32>(0u, 1u, 0u), 1328f, vec2<i32>(29727i, 2147483647i))), Struct_2(-1i, vec4<i32>(12341i, 2147483647i, 17502i, 1i), Struct_1(vec3<u32>(4294967295u, 16097u, 1u), -699f, vec2<i32>(16322i, -8850i)), Struct_1(vec3<u32>(0u, 0u, 4294967295u), 307f, vec2<i32>(-1i, 1i))), Struct_2(-55768i, vec4<i32>(1i, i32(-2147483648), 0i, 2147483647i), Struct_1(vec3<u32>(4294967295u, 44427u, 16550u), -1000f, vec2<i32>(1i, 1i)), Struct_1(vec3<u32>(1797u, 65749u, 18318u), -1566f, vec2<i32>(34856i, 1i))), Struct_2(i32(-2147483648), vec4<i32>(-31636i, 1i, -1i, -21946i), Struct_1(vec3<u32>(3089u, 27056u, 4294967295u), -992f, vec2<i32>(45417i, i32(-2147483648))), Struct_1(vec3<u32>(16420u, 0u, 11807u), 1483f, vec2<i32>(7737i, i32(-2147483648)))));

var<private> global2: vec3<i32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32) -> i32 {
    var var_0 = false;
    let var_1 = _wgslsmith_div_f32(539f, -1102f);
    var var_2 = abs(~_wgslsmith_clamp_u32(1u, 41255u, _wgslsmith_add_u32(0u, _wgslsmith_mod_u32(4294967295u, 10047u))));
    var var_3 = arg_0;
    var var_4 = vec4<u32>(firstTrailingBit(1u), ~(~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u)), vec4<u32>(1u, 1u, 1u, 1u))), countOneBits(~_wgslsmith_dot_vec3_u32(~vec3<u32>(2278u, 4294967295u, 0u), vec3<u32>(0u, 45678u, 87941u))), _wgslsmith_mod_u32(firstTrailingBit(~(~1u)), ~_wgslsmith_clamp_u32(firstTrailingBit(94449u), 1u, 1u)));
    return u_input.a;
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = Struct_2(_wgslsmith_add_i32(min(global2.x & arg_0, 24076i), func_3(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1i, u_input.a, 0i), vec3<i32>(arg_0, u_input.b, 49883i)), vec3<i32>(global2.x, 2147483647i, -1i)), 959f)), abs(_wgslsmith_div_vec4_i32(vec4<i32>(-global2.x, ~1i, _wgslsmith_div_i32(arg_0, u_input.b), -2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, arg_0, u_input.a, -15489i) << (vec4<u32>(1u, 104577u, 4294967295u, 0u) % vec4<u32>(32u)), select(vec4<i32>(u_input.a, 34238i, arg_0, u_input.b), vec4<i32>(global2.x, -25899i, global2.x, 0i), vec4<bool>(false, true, false, false))))), Struct_1(vec3<u32>(11004u, select(~4294967295u, 1364u, true), 42934u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-195f))), vec2<i32>(~abs(arg_0), -abs(u_input.a))), Struct_1(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 37523u, 24181u), vec3<u32>(0u, 58414u, 4294967295u)) << (31598u % 32u), ~abs(20791u), 8487u), global0[_wgslsmith_index_u32(0u, 30u)], abs(vec2<i32>(_wgslsmith_sub_i32(arg_0, -60539i), ~global2.x))));
    let var_1 = vec2<u32>(select(4294967295u, 1u, !(var_0.c.a.x > var_0.c.a.x) && true), ~1u);
    global2 = vec3<i32>(0i, firstLeadingBit(_wgslsmith_add_i32(min(~(-1i), _wgslsmith_mod_i32(u_input.b, global2.x)), -1i)), global2.x);
    let var_2 = global1[_wgslsmith_index_u32(countOneBits(1u), 12u)];
    global2 = -(vec3<i32>(-1i) * -var_2.b.ywx);
    return all(!vec4<bool>(true, false || select(true, false, true), true, true));
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: u32, arg_3: i32) -> u32 {
    global1 = array<Struct_2, 12>();
    global2 = vec3<i32>(_wgslsmith_add_i32(-1895i, select(arg_1.x, arg_1.x, arg_0)) >> ((arg_2 ^ _wgslsmith_dot_vec4_u32(vec4<u32>(74020u, 1u, arg_2, arg_2), vec4<u32>(0u, arg_2, arg_2, 29663u))) % 32u), -firstTrailingBit(~arg_1.x), global2.x) | vec3<i32>(firstTrailingBit(41742i), arg_3, ~global2.x);
    let var_0 = 1i;
    global2 = _wgslsmith_clamp_vec3_i32(~(vec3<i32>(_wgslsmith_mult_i32(1i, arg_1.x), u_input.a, firstLeadingBit(global2.x)) & (vec3<i32>(arg_1.x, -10565i, arg_1.x) & _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.x, global2.x, var_0), arg_1, vec3<i32>(2147483647i, 20324i, arg_3)))), _wgslsmith_mult_vec3_i32(-_wgslsmith_mod_vec3_i32(~arg_1, -vec3<i32>(-1i, 24585i, 1i)), vec3<i32>(-27181i, global2.x, -1i) | (-arg_1 << (_wgslsmith_mod_vec3_u32(vec3<u32>(arg_2, 0u, arg_2), vec3<u32>(arg_2, 25816u, arg_2)) % vec3<u32>(32u)))), max(arg_1, vec3<i32>(-min(u_input.a, -2147483647i), _wgslsmith_mod_i32(arg_1.x, _wgslsmith_add_i32(global2.x, -32439i)), min(-10800i, arg_3))));
    let var_1 = Struct_1(vec3<u32>(arg_2, arg_2 >> ((~arg_2 >> (~arg_2 % 32u)) % 32u), arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(arg_2, 30u)])))))), vec2<i32>(-(~select(var_0, 43264i, arg_0)), 21415i << (countOneBits(arg_2 & arg_2) % 32u)));
    return 1532u;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    let var_0 = countOneBits(~vec4<u32>(firstLeadingBit(_wgslsmith_mult_u32(186u, arg_0.a.x)), ~arg_2.d.a.x, ~arg_1.a.x, 8788u));
    let var_1 = var_0.x;
    var var_2 = ~25415i << (_wgslsmith_dot_vec4_u32(vec4<u32>(func_4(func_2(-59889i), vec3<i32>(arg_1.c.x, global2.x, global2.x), ~62832u, ~1i), ~_wgslsmith_div_u32(6860u, arg_2.c.a.x), max(func_4(false, arg_2.b.yyw, 4294967295u, u_input.b), reverseBits(1u)), 47349u), vec4<u32>(arg_1.a.x, _wgslsmith_add_u32(arg_0.a.x, ~0u), var_1, var_1)) % 32u);
    return arg_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 12>();
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(432f, global0[_wgslsmith_index_u32(func_1(Struct_1(vec3<u32>(4294967295u, 0u, 0u), global0[_wgslsmith_index_u32(0u, 30u)], vec2<i32>(global2.x, -1i)), Struct_1(vec3<u32>(41380u, 21522u, 0u), -883f, global2.yx), Struct_2(6124i, vec4<i32>(-38258i, global2.x, u_input.a, global2.x), Struct_1(vec3<u32>(1u, 77458u, 16435u), global0[_wgslsmith_index_u32(7961u, 30u)], vec2<i32>(u_input.a, 1i)), Struct_1(vec3<u32>(4294967295u, 0u, 1u), -346f, global2.xy))), 30u)])) + global0[_wgslsmith_index_u32(~1u, 30u)]), _wgslsmith_div_f32(-875f, 399f)));
    var var_1 = Struct_1(abs(_wgslsmith_sub_vec3_u32(~select(vec3<u32>(12019u, 4294967295u, 0u), vec3<u32>(4294967295u, 5208u, 0u), false), ~vec3<u32>(9920u, 31579u, 27261u))), 1045f, global2.zx);
    global2 = firstLeadingBit(vec3<i32>(var_1.c.x, _wgslsmith_mod_i32(var_1.c.x, -1i), reverseBits(-global2.x)) >> (_wgslsmith_mult_vec3_u32(~var_1.a, vec3<u32>(~6835u, _wgslsmith_mult_u32(36341u, var_1.a.x), _wgslsmith_add_u32(20995u, var_1.a.x))) % vec3<u32>(32u)));
    let var_2 = firstTrailingBit(var_1.c);
    global1 = array<Struct_2, 12>();
    var var_3 = 71014u & func_1(Struct_1(~vec3<u32>(var_1.a.x, 117622u, 78395u), _wgslsmith_f_op_f32(f32(-1f) * -1000f), ~(~var_2)), Struct_1(~var_1.a, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(max(15278u, 4294967295u), 30u)]), vec2<i32>(1i ^ var_2.x, var_1.c.x)), global1[_wgslsmith_index_u32(var_1.a.x, 12u)]);
    var_3 = var_1.a.x;
    var var_4 = global1[_wgslsmith_index_u32(~func_4(!all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), ~vec3<i32>(var_2.x & 3784i, 1i, _wgslsmith_mod_i32(26236i, var_1.c.x)), _wgslsmith_clamp_u32(18401u, (var_1.a.x | var_1.a.x) >> (~11734u % 32u), 4294967295u), ~var_2.x), 12u)];
    let x = u_input.a;
    s_output = StorageBuffer((1i | -var_1.c.x) ^ -_wgslsmith_dot_vec4_i32(var_4.b, var_4.b & var_4.b), vec3<i32>(-_wgslsmith_mod_i32(-var_2.x, var_2.x), ~(-2147483647i), -43023i));
}

