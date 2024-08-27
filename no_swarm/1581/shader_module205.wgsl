struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: bool,
    d: f32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec4<u32>(23375u, 23204u, 4294967295u, 12577u), vec2<i32>(i32(-2147483648), i32(-2147483648)), false, -2148f, vec2<i32>(2147483647i, 1i)), Struct_1(vec4<u32>(18077u, 32128u, 35565u, 48854u), vec2<i32>(-1i, i32(-2147483648)), true, -1189f, vec2<i32>(21342i, 2147483647i)), Struct_1(vec4<u32>(0u, 51702u, 18113u, 2818u), vec2<i32>(19043i, 1i), false, -1731f, vec2<i32>(-60166i, i32(-2147483648))), Struct_1(vec4<u32>(1u, 26958u, 0u, 4294967295u), vec2<i32>(2147483647i, 0i), true, 773f, vec2<i32>(1i, -1i)), Struct_1(vec4<u32>(0u, 5323u, 0u, 4294967295u), vec2<i32>(-12333i, 1i), true, -2036f, vec2<i32>(-1i, -42847i)), Struct_1(vec4<u32>(0u, 41843u, 54003u, 0u), vec2<i32>(7069i, 15523i), false, 489f, vec2<i32>(-39349i, 0i)), Struct_1(vec4<u32>(1u, 1u, 4294967295u, 1u), vec2<i32>(43554i, i32(-2147483648)), false, -582f, vec2<i32>(26135i, -1i)), Struct_1(vec4<u32>(60748u, 0u, 0u, 7461u), vec2<i32>(2147483647i, -37028i), true, -1132f, vec2<i32>(0i, -15725i)), Struct_1(vec4<u32>(1u, 26025u, 4294967295u, 4294967295u), vec2<i32>(1i, 26013i), false, 652f, vec2<i32>(-811i, 44967i)), Struct_1(vec4<u32>(55503u, 1u, 19055u, 36744u), vec2<i32>(0i, 0i), true, 924f, vec2<i32>(i32(-2147483648), -22079i)), Struct_1(vec4<u32>(15081u, 82644u, 73994u, 0u), vec2<i32>(i32(-2147483648), 2147483647i), false, 312f, vec2<i32>(-22812i, -18708i)), Struct_1(vec4<u32>(38495u, 36714u, 79190u, 4294967295u), vec2<i32>(i32(-2147483648), 2147483647i), false, 324f, vec2<i32>(1i, -11013i)), Struct_1(vec4<u32>(4294967295u, 43541u, 0u, 1u), vec2<i32>(-3586i, -62175i), true, -430f, vec2<i32>(9634i, -29035i)), Struct_1(vec4<u32>(528u, 24807u, 1u, 1u), vec2<i32>(2147483647i, 53349i), false, -207f, vec2<i32>(2147483647i, 0i)), Struct_1(vec4<u32>(52103u, 11365u, 1u, 33853u), vec2<i32>(0i, 1i), true, 1273f, vec2<i32>(0i, 2147483647i)), Struct_1(vec4<u32>(66181u, 0u, 59451u, 1u), vec2<i32>(18696i, i32(-2147483648)), false, 739f, vec2<i32>(1i, 5188i)), Struct_1(vec4<u32>(4294967295u, 19513u, 0u, 4294967295u), vec2<i32>(i32(-2147483648), i32(-2147483648)), true, 328f, vec2<i32>(0i, -1i)), Struct_1(vec4<u32>(14133u, 1u, 85500u, 1u), vec2<i32>(13115i, -1i), false, 916f, vec2<i32>(-1i, -1i)), Struct_1(vec4<u32>(0u, 8474u, 11724u, 0u), vec2<i32>(-18933i, -1i), true, -826f, vec2<i32>(43938i, 1801i)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 50837u), vec2<i32>(17795i, 1500i), false, 2239f, vec2<i32>(i32(-2147483648), 24057i)), Struct_1(vec4<u32>(0u, 4294967295u, 0u, 1u), vec2<i32>(i32(-2147483648), i32(-2147483648)), false, -771f, vec2<i32>(-897i, i32(-2147483648))), Struct_1(vec4<u32>(1u, 1u, 4294967295u, 74548u), vec2<i32>(-49474i, 35324i), false, 743f, vec2<i32>(-31459i, 1i)), Struct_1(vec4<u32>(64640u, 27436u, 78501u, 4294967295u), vec2<i32>(2147483647i, 1i), false, -576f, vec2<i32>(1i, 1i)), Struct_1(vec4<u32>(18688u, 15384u, 1u, 1u), vec2<i32>(29454i, 0i), false, -1149f, vec2<i32>(i32(-2147483648), 0i)), Struct_1(vec4<u32>(18626u, 34958u, 0u, 3494u), vec2<i32>(13593i, 0i), false, -1310f, vec2<i32>(0i, -41739i)), Struct_1(vec4<u32>(24563u, 1u, 54907u, 0u), vec2<i32>(-1i, 1i), false, 135f, vec2<i32>(13175i, 36336i)), Struct_1(vec4<u32>(0u, 0u, 80608u, 0u), vec2<i32>(-13671i, 17613i), false, -1000f, vec2<i32>(i32(-2147483648), -38153i)), Struct_1(vec4<u32>(1u, 1u, 1u, 1u), vec2<i32>(2147483647i, 34224i), true, 636f, vec2<i32>(-42978i, 0i)), Struct_1(vec4<u32>(4294967295u, 55143u, 10684u, 15959u), vec2<i32>(18893i, 1i), false, 909f, vec2<i32>(26354i, 0i)));

var<private> global1: vec2<i32> = vec2<i32>(4271i, 25275i);

var<private> global2: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    let var_0 = ~vec3<u32>(1055u, 7031u, ~(firstLeadingBit(101679u) ^ (46158u >> (global2.a.x % 32u))));
    global2 = Struct_1(vec4<u32>(global2.a.x, var_0.x, max(4294967295u, _wgslsmith_sub_u32(~global2.a.x, _wgslsmith_mod_u32(1u, 33400u))), select(_wgslsmith_add_u32(_wgslsmith_clamp_u32(var_0.x, global2.a.x, global2.a.x), 1u), u_input.b.x, (global2.a.x | var_0.x) > u_input.b.x)), global2.e, false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.d)) * -751f)), global2.d, all(select(select(vec4<bool>(false, true, true, global2.c), vec4<bool>(false, global2.c, true, global2.c), global2.c), select(vec4<bool>(true, global2.c, false, global2.c), vec4<bool>(global2.c, true, global2.c, false), vec4<bool>(global2.c, false, global2.c, global2.c)), !vec4<bool>(global2.c, false, true, global2.c))))), global2.b);
    let var_1 = global0[_wgslsmith_index_u32(u_input.b.x, 29u)];
    let var_2 = select(select(!select(!vec3<bool>(global2.c, true, true), !vec3<bool>(var_1.c, var_1.c, global2.c), any(vec2<bool>(var_1.c, global2.c))), select(!vec3<bool>(var_1.c, false, false), !(!vec3<bool>(global2.c, true, var_1.c)), !select(false, true, var_1.c)), !(!(!var_1.c))), !select(vec3<bool>(true, true, global2.c | true), select(vec3<bool>(global2.c, global2.c, false), vec3<bool>(false, global2.c, global2.c), select(var_1.c, var_1.c, global2.c)), true), vec3<bool>(true, false, true));
    let var_3 = global1.x;
    return global2.c;
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.d * global2.d), -797f, func_3()))), 899f, 363f) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d, global2.d, 1000f, 443f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(860f, 989f, 2132f, global2.d))))))));
    var var_1 = true;
    var var_2 = global0[_wgslsmith_index_u32(0u, 29u)];
    let var_3 = global0[_wgslsmith_index_u32(~(~global2.a.x) ^ 26899u, 29u)];
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.wwx + var_0.xwx));
    return min(abs(73845u), 0u);
}

fn func_1() -> u32 {
    let var_0 = ~(~select(~_wgslsmith_sub_vec4_i32(vec4<i32>(global2.b.x, 17501i, 1i, -1494i), vec4<i32>(-10121i, global2.e.x, global2.b.x, global2.e.x)), -select(vec4<i32>(0i, -54268i, global1.x, -1i), vec4<i32>(-1i, global2.b.x, 0i, -12753i), global2.c), vec4<bool>(true, global2.c | global2.c, true, !global2.c)));
    let var_1 = Struct_1(vec4<u32>(global2.a.x, ~u_input.a.x, 43357u, firstTrailingBit(47272u)), min(global2.b << (~(u_input.a.yx & global2.a.xw) % vec2<u32>(32u)), global2.b), _wgslsmith_sub_i32(_wgslsmith_div_i32(global2.e.x >> (4294967295u % 32u), ~(-2147483647i)), global1.x) == _wgslsmith_div_i32(-51654i, -global1.x), 1959f, _wgslsmith_div_vec2_i32(global2.e << (~_wgslsmith_sub_vec2_u32(global2.a.zw, vec2<u32>(51889u, 4294967295u)) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_mult_i32(i32(-1i) * -1i, abs(-53377i)), ~(-2147483647i))));
    let var_2 = _wgslsmith_mult_u32(global2.a.x, func_2());
    let var_3 = Struct_1(global2.a, global2.e, true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.d - var_1.d))), _wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.d))))), vec2<i32>(-(~abs(1i)), -29771i));
    var var_4 = Struct_1(vec4<u32>(max(_wgslsmith_sub_u32(19440u, min(125591u, 1u)), reverseBits(4294967295u)), 32201u, abs(_wgslsmith_clamp_u32(firstTrailingBit(global2.a.x), _wgslsmith_mult_u32(global2.a.x, var_3.a.x), firstLeadingBit(108688u))), ~reverseBits(global2.a.x)), vec2<i32>(-1i) * -vec2<i32>(max(2147483647i, var_0.x), var_3.b.x), -1344f >= var_1.d, -283f, vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.e.x, -34590i), vec2<i32>(3523i, -75419i)), firstLeadingBit(0i)) >> (~vec2<u32>(abs(0u), reverseBits(var_1.a.x)) % vec2<u32>(32u)));
    return var_1.a.x;
}

fn func_4(arg_0: vec4<u32>) -> StorageBuffer {
    var var_0 = global2.c;
    let var_1 = Struct_1(~vec4<u32>(max(0u, u_input.b.x) >> (func_1() % 32u), global2.a.x, global2.a.x, u_input.a.x), global2.b, global2.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -972f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(996f, _wgslsmith_f_op_f32(-global2.d))) - 209f)), global2.b);
    global2 = var_1;
    let var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, firstTrailingBit(-2147483647i) & var_1.b.x, global2.e.x, global2.b.x), abs(abs(vec4<i32>(-18847i, global1.x, 1i, var_1.b.x) | -vec4<i32>(global1.x, -347i, global2.b.x, global2.e.x))));
    let var_3 = true;
    return StorageBuffer(53906u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -250f), global2.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(max(1u, ~(global2.a.x & global2.a.x)), u_input.a.x, global2.a.x) >> ((global2.a.www & (u_input.b | min(~vec3<u32>(5053u, 13496u, 13519u), max(global2.a.zzx, u_input.b)))) % vec3<u32>(32u));
    global1 = vec2<i32>(-29227i, global1.x);
    var var_1 = vec3<i32>(firstTrailingBit(firstLeadingBit(global2.b.x)), -56729i, 0i);
    var_1 = vec3<i32>(abs(var_1.x), -select(global2.b.x, global2.e.x, _wgslsmith_add_u32(u_input.b.x, u_input.b.x) >= ~72781u), ~(i32(-1i) * -(global2.e.x & global1.x)));
    let x = u_input.a;
    s_output = func_4(vec4<u32>(_wgslsmith_mult_u32(4294967295u, _wgslsmith_sub_u32(50068u, func_1())), 1u, global2.a.x, ~global2.a.x));
}

