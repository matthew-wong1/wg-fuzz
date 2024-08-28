struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(0i, -42159i), vec4<f32>(-746f, 1311f, 994f, 658f));

var<private> global1: array<i32, 11> = array<i32, 11>(2147483647i, 2147483647i, 2147483647i, 6058i, -56323i, 54732i, 3871i, 13762i, -1295i, -1i, 56897i);

var<private> global2: array<i32, 11> = array<i32, 11>(0i, 15221i, 2147483647i, 6193i, 17614i, 2147483647i, -1i, i32(-2147483648), 0i, i32(-2147483648), 0i);

var<private> global3: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 3596i), vec4<f32>(914f, 599f, 902f, 633f)), Struct_1(vec2<i32>(1i, 0i), vec4<f32>(1000f, 1586f, 2273f, 695f)), vec4<f32>(607f, 347f, -287f, 495f), 0i, vec3<bool>(true, false, false)), Struct_2(Struct_1(vec2<i32>(-1i, 1i), vec4<f32>(319f, -1000f, 886f, -162f)), Struct_1(vec2<i32>(-1i, 1i), vec4<f32>(1261f, 331f, -1490f, -837f)), vec4<f32>(1000f, 907f, -238f, 343f), i32(-2147483648), vec3<bool>(false, false, true)), Struct_2(Struct_1(vec2<i32>(-1i, i32(-2147483648)), vec4<f32>(-761f, -670f, 551f, -846f)), Struct_1(vec2<i32>(9639i, 2147483647i), vec4<f32>(1909f, 377f, -542f, -1650f)), vec4<f32>(697f, 303f, -2165f, -101f), -1i, vec3<bool>(true, true, true)), Struct_2(Struct_1(vec2<i32>(-44177i, -20769i), vec4<f32>(-219f, 478f, -3049f, -142f)), Struct_1(vec2<i32>(2147483647i, 1i), vec4<f32>(-340f, -783f, -1059f, 171f)), vec4<f32>(1000f, 994f, -2452f, -537f), 2147483647i, vec3<bool>(true, true, false)), Struct_2(Struct_1(vec2<i32>(-11787i, 1i), vec4<f32>(-1000f, 253f, 999f, -1000f)), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec4<f32>(-1366f, 273f, -1000f, -1263f)), vec4<f32>(519f, 1238f, -488f, -948f), i32(-2147483648), vec3<bool>(false, false, false)), Struct_2(Struct_1(vec2<i32>(48453i, 2147483647i), vec4<f32>(-1467f, -449f, -421f, -394f)), Struct_1(vec2<i32>(-1i, 61674i), vec4<f32>(785f, 331f, -1323f, 1777f)), vec4<f32>(-1792f, 877f, -507f, -1275f), 2147483647i, vec3<bool>(false, true, true)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec4<f32>(1758f, 678f, 1000f, -1000f)), Struct_1(vec2<i32>(0i, 2147483647i), vec4<f32>(-1197f, 796f, 1000f, 579f)), vec4<f32>(1213f, 158f, 368f, 865f), 1i, vec3<bool>(true, false, true)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -1i), vec4<f32>(107f, 688f, 898f, 540f)), Struct_1(vec2<i32>(-74049i, 0i), vec4<f32>(689f, -275f, 1315f, 363f)), vec4<f32>(928f, -1000f, -643f, -265f), -56571i, vec3<bool>(false, true, false)), Struct_2(Struct_1(vec2<i32>(-24911i, -16577i), vec4<f32>(860f, -400f, 264f, 1091f)), Struct_1(vec2<i32>(40629i, 12228i), vec4<f32>(-2189f, 436f, 323f, 900f)), vec4<f32>(-288f, 1596f, -626f, 347f), 2147483647i, vec3<bool>(true, true, false)), Struct_2(Struct_1(vec2<i32>(-1i, 1i), vec4<f32>(794f, -1000f, -1033f, -1408f)), Struct_1(vec2<i32>(-1i, i32(-2147483648)), vec4<f32>(-1557f, 1166f, -2978f, -561f)), vec4<f32>(806f, 914f, 852f, 941f), 69464i, vec3<bool>(false, true, false)));

var<private> global4: i32 = 12017i;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: i32, arg_3: vec4<bool>) -> f32 {
    var var_0 = global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(~u_input.c, ~u_input.c), 4294967295u)), 10u)];
    let var_1 = var_0.b;
    var var_2 = vec3<bool>(var_1.b.x < _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(sign(888f))), !all(vec3<bool>(!var_0.e.x, var_0.e.x, all(arg_0.yw))), false);
    let var_3 = Struct_2(var_0.a, var_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, var_0.a.b.x, var_1.b.x, 319f)) * vec4<f32>(-992f, arg_1, 1701f, arg_1)), _wgslsmith_f_op_vec4_f32(var_1.b - var_0.b.b))) - vec4<f32>(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(exp2(global0.b.x))), _wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(step(289f, -771f))), -197f, 1247f)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, u_input.c.x), 11u)], arg_3.yzw);
    let var_4 = -firstLeadingBit(~(-(vec4<i32>(-2147483647i, var_0.a.a.x, var_3.b.a.x, -8050i) & vec4<i32>(arg_2, u_input.d.x, var_3.a.a.x, 1i))));
    return _wgslsmith_div_f32(_wgslsmith_div_f32(-1353f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1017f * 242f) - arg_1)))), var_0.c.x);
}

fn func_2() -> bool {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(19298u, ~0u), 10u)];
    let var_1 = Struct_2(Struct_1(~_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.b.a.x, 2147483647i) ^ vec2<i32>(-12541i, -2147483647i), vec2<i32>(2147483647i, global2[_wgslsmith_index_u32(28311u, 11u)]) | vec2<i32>(0i, global1[_wgslsmith_index_u32(u_input.c.x, 11u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(-var_0.c.x), var_0.a.b.x, _wgslsmith_f_op_f32(trunc(global0.b.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b)))), var_0.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a.b.x)))), global0.b.x, global0.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec4<bool>(var_0.e.x, var_0.e.x, var_0.e.x, false), 479f, u_input.d.x, vec4<bool>(false, false, false, false))), _wgslsmith_f_op_f32(step(-1000f, -1035f)))))), ~(-33997i), var_0.e);
    var var_2 = ~u_input.c.x;
    let var_3 = !(~(-global1[_wgslsmith_index_u32(129379u, 11u)]) == var_1.b.a.x);
    let var_4 = !vec4<bool>(var_3, true, var_1.e.x, true);
    return !select(!all(!vec2<bool>(var_3, var_0.e.x)), var_0.d > _wgslsmith_clamp_i32(-u_input.b, global2[_wgslsmith_index_u32(22633u, 11u)], i32(-1i) * -1i), !(_wgslsmith_f_op_f32(global0.b.x + 275f) > var_1.a.b.x));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: vec3<i32>) -> vec4<bool> {
    let var_0 = Struct_1(~global0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global0.b.x, global0.b.x), _wgslsmith_f_op_f32(arg_0.b.x - global0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1338f), global0.b.x))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(arg_0.b.x, -981f, true)))))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-232f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-2682f))))))));
    var var_2 = ~_wgslsmith_mod_vec4_u32(~u_input.c, vec4<u32>(1u, u_input.c.x, u_input.c.x, countOneBits(u_input.a)));
    let var_3 = ~_wgslsmith_mod_vec4_u32(select(~u_input.c >> (abs(vec4<u32>(6134u, 48403u, 16347u, var_2.x)) % vec4<u32>(32u)), countOneBits(~vec4<u32>(28390u, u_input.c.x, u_input.a, var_2.x)), vec4<bool>(select(true, false, false), true, func_2(), true)), firstLeadingBit(vec4<u32>(max(u_input.a, 1u), 3255u | var_2.x, 0u, var_2.x | 5703u)));
    return select(select(vec4<bool>(func_2(), all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), all(vec3<bool>(true, true, true)), true), vec4<bool>(!(-1i == global1[_wgslsmith_index_u32(1u, 11u)]), any(vec4<bool>(false, true, false, false)), true, false), true), vec4<bool>(true, !any(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), any(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true))), any(vec3<bool>(true, true, all(vec3<bool>(true, false, false)) | true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(func_1(Struct_1(vec2<i32>(_wgslsmith_clamp_i32(global0.a.x, u_input.b, global1[_wgslsmith_index_u32(u_input.a, 11u)]), reverseBits(15666i)), global0.b), global0.a.x | (-global1[_wgslsmith_index_u32(u_input.a, 11u)] & global1[_wgslsmith_index_u32(1u, 11u)]), ~(global0.a.x | _wgslsmith_clamp_i32(1i, global2[_wgslsmith_index_u32(u_input.c.x, 11u)], u_input.b)), ~(abs(vec3<i32>(global0.a.x, global2[_wgslsmith_index_u32(0u, 11u)], global2[_wgslsmith_index_u32(0u, 11u)])) & ~vec3<i32>(-22693i, 1i, global2[_wgslsmith_index_u32(0u, 11u)]))));
    global1 = array<i32, 11>();
    global4 = countOneBits(-global0.a.x);
    global0 = Struct_1(vec2<i32>(select(u_input.b, abs(abs(global1[_wgslsmith_index_u32(7288u, 11u)])), select(false, var_0, any(vec3<bool>(true, false, false)))), 42262i), global0.b);
    let var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 11u)], 0i, global1[_wgslsmith_index_u32(u_input.c.x, 11u)])), _wgslsmith_mod_vec3_i32(vec3<i32>(16244i, -2147483647i, global0.a.x), vec3<i32>(20787i, global0.a.x, -55225i))), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, global1[_wgslsmith_index_u32(u_input.c.x, 11u)], 38198i), vec3<i32>(-5346i, 28413i, -1i)) >> ((vec3<u32>(u_input.c.x, u_input.a, u_input.a) >> (vec3<u32>(u_input.a, u_input.a, 121368u) % vec3<u32>(32u))) % vec3<u32>(32u)))), vec3<i32>(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(u_input.c.x & abs(1u), 11u)], select(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, u_input.c.x), 11u)], global1[_wgslsmith_index_u32(u_input.a, 11u)], false)), _wgslsmith_mod_i32(0i, -24205i), reverseBits(firstLeadingBit(abs(global1[_wgslsmith_index_u32(34805u, 11u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-644f, global0.b.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global0.b.x)), _wgslsmith_f_op_f32(-487f * 931f))), global0.b.x, global0.b.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(-29197i, u_input.d.x, global0.a.x), abs(reverseBits(vec3<i32>(-1i, -28009i, global0.a.x)))) >> (max(_wgslsmith_div_vec3_u32(~u_input.c.zzw, u_input.c.xzy), u_input.c.xzx) % vec3<u32>(32u)));
}

