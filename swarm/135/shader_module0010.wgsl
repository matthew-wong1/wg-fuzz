struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, true);

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec2<u32>(40302u, 4294967295u), vec3<i32>(48601i, -1i, i32(-2147483648)), 23061u, vec4<u32>(4294967295u, 1186u, 62790u, 72976u), false), Struct_1(vec2<u32>(4294967295u, 0u), vec3<i32>(1i, 2147483647i, -7913i), 4294967295u, vec4<u32>(25958u, 69574u, 30565u, 28194u), false), Struct_1(vec2<u32>(1u, 38612u), vec3<i32>(-7584i, -3655i, 14624i), 0u, vec4<u32>(194u, 11931u, 12122u, 0u), true), Struct_1(vec2<u32>(19511u, 0u), vec3<i32>(-1i, -2372i, 13407i), 1u, vec4<u32>(56158u, 24762u, 22225u, 1u), false), Struct_1(vec2<u32>(0u, 68536u), vec3<i32>(-1275i, -16003i, 0i), 8650u, vec4<u32>(0u, 1u, 1u, 0u), false), Struct_1(vec2<u32>(25673u, 15371u), vec3<i32>(-38142i, -48480i, 0i), 1u, vec4<u32>(1u, 73419u, 1u, 1181u), true), Struct_1(vec2<u32>(19026u, 4294967295u), vec3<i32>(-925i, 1i, 11044i), 4294967295u, vec4<u32>(1u, 21802u, 0u, 75607u), true), Struct_1(vec2<u32>(1u, 26041u), vec3<i32>(1i, -63767i, 1i), 1u, vec4<u32>(128000u, 4294967295u, 0u, 4294967295u), false), Struct_1(vec2<u32>(1u, 2511u), vec3<i32>(55845i, -1i, 4970i), 4294967295u, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 57044u), false), Struct_1(vec2<u32>(60668u, 0u), vec3<i32>(i32(-2147483648), 9676i, 2147483647i), 0u, vec4<u32>(38676u, 48975u, 0u, 15029u), false), Struct_1(vec2<u32>(1u, 2203u), vec3<i32>(i32(-2147483648), 2147483647i, 14403i), 3379u, vec4<u32>(31815u, 6552u, 0u, 16449u), true), Struct_1(vec2<u32>(33999u, 72041u), vec3<i32>(-2127i, 1i, 9073i), 22585u, vec4<u32>(19399u, 78525u, 0u, 15491u), true), Struct_1(vec2<u32>(5560u, 1u), vec3<i32>(1i, i32(-2147483648), 10972i), 6557u, vec4<u32>(0u, 4294967295u, 51921u, 0u), false), Struct_1(vec2<u32>(4294967295u, 14209u), vec3<i32>(-7231i, 2468i, -10455i), 23053u, vec4<u32>(16611u, 4294967295u, 8546u, 4294967295u), true), Struct_1(vec2<u32>(1u, 0u), vec3<i32>(1i, 5897i, 5148i), 79807u, vec4<u32>(19429u, 14272u, 1u, 0u), false));

var<private> global2: array<bool, 14> = array<bool, 14>(true, false, true, true, true, true, false, true, false, false, true, false, true, true);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: bool) -> u32 {
    global1 = array<Struct_1, 15>();
    var var_0 = Struct_1(reverseBits(~u_input.a), vec3<i32>(2147483647i, i32(-1i) * -16842i, max(_wgslsmith_sub_i32(i32(-1i) * -2961i, min(4987i, 9499i)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, 0i), vec3<i32>(-12475i, 1i, 23675i)))), _wgslsmith_div_u32(1u, 85108u), vec4<u32>(~u_input.a.x, 4294967295u, u_input.a.x, 17218u ^ ~reverseBits(u_input.a.x)), 1570f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f - 1652f)))));
    var var_1 = _wgslsmith_dot_vec4_u32(var_0.d, _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_0.d.x, ~reverseBits(1u), 0u), ~var_0.d));
    var var_2 = Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, ~1u), vec2<u32>(62599u, u_input.a.x)), _wgslsmith_mult_vec3_i32(var_0.b, vec3<i32>(max(min(50563i, var_0.b.x), ~var_0.b.x), _wgslsmith_sub_i32(58508i, var_0.b.x), var_0.b.x)), _wgslsmith_mod_u32(~(~(u_input.a.x >> (var_0.a.x % 32u))), u_input.a.x), vec4<u32>(8462u, u_input.a.x, ~_wgslsmith_add_u32(u_input.a.x, 0u), var_0.d.x), global2[_wgslsmith_index_u32(~var_0.d.x, 14u)]);
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a, countOneBits(var_2.a)), var_0.a)), 14u)] | !global0.x;
    return _wgslsmith_div_u32(~var_2.d.x, firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_div_u32(var_0.d.x, ~var_2.d.x), countOneBits(~var_2.a.x))));
}

fn func_4(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = (i32(-1i) * -17562i) ^ ~arg_0.b.x;
    global2 = array<bool, 14>();
    var var_1 = arg_0;
    var var_2 = arg_0;
    var_2 = arg_0;
    return !vec2<bool>(false, var_2.e);
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(1i, -1i, -6461i << (~u_input.a.x % 32u)), countOneBits(i32(-1i) * -1i)), (vec2<i32>(1i, select(0i, -17634i, global2[_wgslsmith_index_u32(56072u, 14u)])) << (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u))) ^ vec2<i32>(26838i, firstLeadingBit(-67326i)));
    let var_1 = 124f;
    let var_2 = _wgslsmith_f_op_f32(round(var_1));
    let var_3 = func_4(Struct_1(_wgslsmith_sub_vec2_u32(~(vec2<u32>(28301u, 1u) | u_input.a), ~vec2<u32>(u_input.a.x, u_input.a.x)), _wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, var_0.x, var_0.x) & vec3<i32>(-9281i, var_0.x, -37788i), abs(vec3<i32>(var_0.x, var_0.x, var_0.x))) | vec3<i32>(var_0.x, -9009i, var_0.x), reverseBits(54510u), vec4<u32>(_wgslsmith_add_u32(~4294967295u, ~17939u), abs(46914u), u_input.a.x, func_3(true, true, false)), global2[_wgslsmith_index_u32(u_input.a.x, 14u)]));
    let var_4 = abs(abs(~countOneBits(-vec3<i32>(var_0.x, var_0.x, 0i))));
    return Struct_1(u_input.a, var_4, abs(~u_input.a.x), vec4<u32>(_wgslsmith_mult_u32(1u, _wgslsmith_add_u32(u_input.a.x, u_input.a.x)) >> (1u % 32u), 0u, 1u, u_input.a.x), global0.x);
}

fn func_1(arg_0: f32, arg_1: u32) -> vec4<u32> {
    global1 = array<Struct_1, 15>();
    let var_0 = ~(~54184u) ^ ~(~(~_wgslsmith_dot_vec2_u32(u_input.a, u_input.a)));
    var var_1 = vec2<bool>(true, all(!vec2<bool>(global0.x, all(global0.xy))));
    global1 = array<Struct_1, 15>();
    let var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), -633f, true)) * _wgslsmith_f_op_f32(-arg_0))));
    return ~select(~func_2(-462f).d, ~vec4<u32>(u_input.a.x, var_2.a.x, arg_1, 1u) & var_2.d, vec4<bool>(var_2.e, select(true, all(vec3<bool>(var_2.e, global2[_wgslsmith_index_u32(0u, 14u)], global0.x)), true), var_1.x, false));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    global0 = select(vec3<bool>(!any(select(vec2<bool>(arg_2.e, global0.x), vec2<bool>(global0.x, false), global0.yz)), arg_2.e, any(vec2<bool>(false, global0.x || false))), vec3<bool>(false, false, global2[_wgslsmith_index_u32(countOneBits(~arg_1) >> (_wgslsmith_add_u32(~arg_2.d.x, 1u) % 32u), 14u)]), arg_3.e);
    let var_0 = ~vec2<u32>(func_1(_wgslsmith_f_op_f32(sign(-1023f)), 68091u).x, ~arg_2.d.x);
    let var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -354f)) - -353f)));
    let var_2 = vec4<u32>(~arg_3.d.x, var_0.x, 4294967295u, 23822u);
    let var_3 = abs(var_1.b ^ vec3<i32>(-30636i, var_1.b.x, ~(arg_2.b.x ^ var_1.b.x)));
    return select(select(select(!vec3<bool>(true, arg_0.e, false), vec3<bool>(global2[_wgslsmith_index_u32(arg_1, 14u)] | false, false, true), vec3<bool>(true, all(vec2<bool>(false, global2[_wgslsmith_index_u32(arg_1, 14u)])), !var_1.e)), !vec3<bool>(all(vec3<bool>(false, arg_0.e, arg_3.e)), arg_3.e, any(vec3<bool>(arg_2.e, true, false))), true), select(vec3<bool>(true, all(!global0.zy), global0.x), vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~4294967295u, _wgslsmith_div_u32(arg_1, arg_2.a.x)), 14u)], 0u >= var_0.x, var_1.b.x != _wgslsmith_add_i32(-2147483647i, arg_3.b.x)), !select(vec3<bool>(true, global0.x, false), vec3<bool>(global0.x, var_1.e, arg_0.e), select(vec3<bool>(arg_3.e, var_1.e, false), vec3<bool>(var_1.e, var_1.e, false), true))), _wgslsmith_dot_vec2_u32(~var_1.d.yx, select(arg_2.a, vec2<u32>(1505u, arg_1), arg_0.e) << (var_1.a % vec2<u32>(32u))) <= _wgslsmith_clamp_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, arg_2.a.x), var_0)), u_input.a.x, ~arg_2.c));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 15>();
    global0 = !func_5(Struct_1(vec2<u32>(_wgslsmith_mod_u32(0u, u_input.a.x), ~u_input.a.x), -firstTrailingBit(vec3<i32>(-64308i, -2147483647i, 1i)), _wgslsmith_sub_u32(56204u, u_input.a.x), func_1(1000f, u_input.a.x), false), u_input.a.x, Struct_1(u_input.a, vec3<i32>(i32(-1i) * -18486i, -8091i, reverseBits(30001i)), u_input.a.x, firstLeadingBit(~vec4<u32>(1u, 5369u, 70024u, 1u)), global2[_wgslsmith_index_u32(u_input.a.x, 14u)]), func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(999f, -2308f)), _wgslsmith_f_op_f32(floor(-836f))))));
    global0 = select(select(vec3<bool>(true, true, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), 14u)]), !select(select(vec3<bool>(global2[_wgslsmith_index_u32(0u, 14u)], false, global0.x), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 14u)], global0.x, false), vec3<bool>(global2[_wgslsmith_index_u32(13463u, 14u)], false, global2[_wgslsmith_index_u32(4294967295u, 14u)])), func_5(global1[_wgslsmith_index_u32(4294967295u, 15u)], u_input.a.x, Struct_1(u_input.a, vec3<i32>(0i, 1i, 0i), 0u, vec4<u32>(u_input.a.x, 0u, 1u, 69018u), true), Struct_1(vec2<u32>(u_input.a.x, u_input.a.x), vec3<i32>(-53750i, -1747i, 2147483647i), 21335u, vec4<u32>(87665u, 5159u, u_input.a.x, 4294967295u), global0.x)), global2[_wgslsmith_index_u32(countOneBits(4294967295u), 14u)]), select(func_5(Struct_1(vec2<u32>(4294967295u, u_input.a.x), vec3<i32>(-1i, -24235i, -102010i), 34250u, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), global2[_wgslsmith_index_u32(u_input.a.x, 14u)]), ~u_input.a.x, func_2(-305f), func_2(377f)), select(vec3<bool>(global0.x, false, global2[_wgslsmith_index_u32(4294967295u, 14u)]), vec3<bool>(global2[_wgslsmith_index_u32(65744u, 14u)], global0.x, true), true), vec3<bool>(func_2(-1000f).e, global0.x, !global2[_wgslsmith_index_u32(33272u, 14u)]))), vec3<bool>(true, true, true), global0.x);
    let var_0 = abs(u_input.a.x);
    var var_1 = func_2(561f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2785f))), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_1.b.x, 34133i), var_1.b.x & var_1.b.x, var_1.b.x), ~(~var_1.b.x)), var_1.b.x, 53699i, i32(-1i) * -reverseBits(var_1.b.x)));
}

