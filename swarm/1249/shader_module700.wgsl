struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: bool,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> vec2<bool> {
    return select(!vec2<bool>(true, arg_2.c), !select(vec2<bool>(select(true, arg_1.e.x, true), true | arg_1.a.x), vec2<bool>(true, u_input.a > 64252u), true), select(arg_2.e.zy, vec2<bool>(all(arg_1.e), arg_2.b.x), select(arg_2.a, select(!arg_2.e.xx, vec2<bool>(false, arg_1.e.x), vec2<bool>(true, false)), true)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> vec2<u32> {
    global0 = true || all(arg_0.e);
    let var_0 = vec4<bool>(!arg_0.c, arg_0.b.x, all(vec4<bool>(true, true, true, true)), true);
    global0 = arg_0.e.x;
    var var_1 = Struct_1(arg_0.b, !select(arg_0.b, var_0.zx, var_0.x), var_0.x, vec4<i32>(41296i, ~(-4309i), i32(-1i) * -arg_0.d.x, 1i), vec3<bool>(var_0.x, arg_0.b.x, true));
    let var_2 = ~arg_0.d.wy;
    return firstTrailingBit(~abs(~(~vec2<u32>(u_input.a, 10002u))));
}

fn func_2(arg_0: i32) -> vec2<u32> {
    return func_4(Struct_1(func_3(~vec4<i32>(arg_0, arg_0, arg_0, -1i), Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), false, reverseBits(vec4<i32>(-13152i, arg_0, -18380i, arg_0)), vec3<bool>(true, true, true)), Struct_1(vec2<bool>(true, true), vec2<bool>(true, true), true, vec4<i32>(2147483647i, 0i, arg_0, arg_0) | vec4<i32>(-43092i, 31522i, arg_0, arg_0), vec3<bool>(true, true, true)), vec3<u32>(6910u << (u_input.a % 32u), u_input.a >> (72728u % 32u), u_input.a)), vec2<bool>(all(vec3<bool>(true, false, true)), func_3(abs(vec4<i32>(arg_0, arg_0, arg_0, 0i)), Struct_1(vec2<bool>(false, true), vec2<bool>(false, true), false, vec4<i32>(-2147483647i, arg_0, -2147483647i, arg_0), vec3<bool>(true, true, false)), Struct_1(vec2<bool>(false, true), vec2<bool>(true, true), false, vec4<i32>(arg_0, arg_0, arg_0, 1i), vec3<bool>(true, true, true)), vec3<u32>(17009u, 4294967295u, 16503u)).x), func_3(vec4<i32>(2147483647i, -12273i, arg_0, 5286i) & (vec4<i32>(0i, arg_0, 13769i, 0i) >> (vec4<u32>(0u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))), Struct_1(vec2<bool>(true, true), vec2<bool>(true, true), true, _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, arg_0, -15979i, arg_0), vec4<i32>(arg_0, -7857i, arg_0, 2147483647i)), vec3<bool>(true, true, true)), Struct_1(vec2<bool>(true, true), vec2<bool>(true, true), true, vec4<i32>(-2147483647i, -2147483647i, 5264i, 12864i), vec3<bool>(true, true, true)), reverseBits(vec3<u32>(u_input.a, u_input.a, u_input.a) | vec3<u32>(u_input.a, 74123u, 1u))).x, -(~(vec4<i32>(arg_0, arg_0, arg_0, -14678i) | vec4<i32>(arg_0, arg_0, arg_0, 2147483647i))), !vec3<bool>(true, false, select(false, true, false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-410f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1077f)), _wgslsmith_f_op_f32(floor(817f))), _wgslsmith_f_op_f32(trunc(-1314f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1549f), _wgslsmith_div_f32(682f, 1166f))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(875f, 1115f) * _wgslsmith_f_op_f32(-2404f + 706f)), 711f, 1f, 593f)));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = 37973u;
    global0 = false;
    let var_1 = ~abs(835u);
    let var_2 = ~(func_2(firstTrailingBit(~21550i)) >> (min(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(34805u, 58276u), vec2<u32>(65227u, 113234u), vec2<u32>(44503u, var_1)), ~vec2<u32>(4294967295u, u_input.a), any(vec3<bool>(arg_1.c, false, true))), vec2<u32>(106254u ^ var_1, _wgslsmith_clamp_u32(var_1, 45183u, 7087u))) % vec2<u32>(32u)));
    let var_3 = _wgslsmith_mult_vec3_u32(abs(~vec3<u32>(var_1, 57905u, 62173u) | _wgslsmith_div_vec3_u32(vec3<u32>(var_1, u_input.a, var_1), vec3<u32>(var_1, var_1, var_2.x))), vec3<u32>(57888u, _wgslsmith_add_u32(var_1, var_1), var_1) | ~abs(vec3<u32>(var_1, 65358u, 70770u))) >> (~(~vec3<u32>(23628u, ~var_2.x, _wgslsmith_div_u32(4294967295u, var_2.x))) % vec3<u32>(32u));
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool) -> bool {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1096f - 1000f)))) + _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1568f, -2159f, arg_1.x))))), _wgslsmith_f_op_f32(f32(-1f) * -2905f), _wgslsmith_f_op_f32(-1f));
    var var_1 = ~max(~abs(~u_input.a), ~(~_wgslsmith_div_u32(29035u, 4294967295u)));
    var_1 = 1u;
    var var_2 = ~(~(-_wgslsmith_mult_vec2_i32(arg_0.d.wx & arg_0.d.xz, vec2<i32>(arg_0.d.x, -2147483647i))));
    var_2 = vec2<i32>(-6754i, -26725i);
    return !arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = all(vec4<bool>(any(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)))), true, true, !func_5(func_1(-1i, Struct_1(vec2<bool>(true, true), vec2<bool>(false, true), false, vec4<i32>(29851i, 8761i, -53145i, 2147483647i), vec3<bool>(false, true, true)), 0i), vec2<bool>(true, true), true)));
    var var_0 = vec3<u32>(4294967295u, u_input.a, 1u | _wgslsmith_sub_u32(~(~u_input.a), u_input.a));
    let var_1 = ~(~(~(u_input.a << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, var_0.x), vec4<u32>(18486u, 35624u, 68665u, 1u)) % 32u))));
    global0 = all(func_1(_wgslsmith_add_i32(-(~11867i), 16646i), Struct_1(vec2<bool>(true, false), select(func_3(vec4<i32>(15354i, -4331i, -25861i, -17728i), Struct_1(vec2<bool>(true, true), vec2<bool>(true, true), false, vec4<i32>(-21800i, 1i, 15634i, 1i), vec3<bool>(false, true, true)), Struct_1(vec2<bool>(false, false), vec2<bool>(true, false), false, vec4<i32>(2147483647i, -2147483647i, 1i, 1i), vec3<bool>(false, false, false)), vec3<u32>(u_input.a, var_1, 1u)), vec2<bool>(true, true), vec2<bool>(true, true)), true, ~vec4<i32>(-445i, 1i, -2147483647i, 2147483647i) >> ((vec4<u32>(var_0.x, 4294967295u, var_1, 4294967295u) << (vec4<u32>(14357u, var_0.x, 1u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec3<bool>(true, true, true)), countOneBits(_wgslsmith_sub_i32(~(-36781i), func_1(41192i, Struct_1(vec2<bool>(true, false), vec2<bool>(false, true), true, vec4<i32>(-2147483647i, 2147483647i, 15399i, -66089i), vec3<bool>(false, true, false)), 1i).d.x))).e.zz);
    let var_2 = Struct_1(vec2<bool>(false, true), func_3(abs(select(vec4<i32>(-12154i, 92758i, 0i, -32702i), ~vec4<i32>(0i, -76183i, 2147483647i, 1907i), true)), Struct_1(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(false, true)), func_1(26699i, func_1(-49893i, Struct_1(vec2<bool>(false, false), vec2<bool>(true, true), false, vec4<i32>(30493i, 1i, 18686i, 2147483647i), vec3<bool>(false, false, true)), 26982i), -8025i).b, true, ~_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 2147483647i, -26094i, -10280i), vec4<i32>(-2147483647i, 0i, -36293i, 27324i)), vec3<bool>(any(vec4<bool>(true, true, false, false)), true, any(vec3<bool>(true, true, false)))), func_1(~(i32(-1i) * -26526i), Struct_1(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(true, false, false)), vec4<i32>(1i, 1i, 1i, 1i), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false))), 2147483647i), select(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.a, var_1), select(vec3<u32>(59954u, 0u, u_input.a), vec3<u32>(var_1, 4294967295u, u_input.a), true)), max(select(vec3<u32>(26475u, 32564u, 15253u), vec3<u32>(var_1, 12670u, 4294967295u), vec3<bool>(false, false, false)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, var_1, var_0.x), vec3<u32>(1u, 27508u, 4294967295u), vec3<u32>(var_0.x, 28121u, var_1))), vec3<bool>(true, true, true))), any(select(vec4<bool>(true, true, false, true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, false, false, false), any(vec3<bool>(false, false, false))), vec4<bool>(true, true, true, true))), select(-vec4<i32>(2147483647i, 2147483647i, 2147483647i, 3662i), select(~vec4<i32>(63040i, 28595i, 1i, 33908i), firstLeadingBit(vec4<i32>(12076i, -2147483647i, 1i, 0i)), func_3(vec4<i32>(64763i, 1i, 13218i, -45829i), Struct_1(vec2<bool>(false, false), vec2<bool>(true, true), false, vec4<i32>(7763i, -42793i, 2147483647i, -2147483647i), vec3<bool>(true, true, true)), Struct_1(vec2<bool>(true, true), vec2<bool>(false, true), false, vec4<i32>(-29904i, 11704i, 42431i, 2147483647i), vec3<bool>(true, false, false)), vec3<u32>(u_input.a, var_1, var_1)).x), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false))) | ~abs(vec4<i32>(1i, 1i, 1i, 1i)), select(!func_1(2147483647i, Struct_1(vec2<bool>(false, true), vec2<bool>(false, false), false, vec4<i32>(81234i, 0i, -14878i, 2147483647i), vec3<bool>(true, false, false)), 97212i).e, select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(1u, _wgslsmith_dot_vec2_u32(var_0.yz, vec2<u32>(var_0.x, 0u)) << (20738u % 32u), _wgslsmith_sub_u32(var_1, u_input.a) ^ ~4294967295u), 250f);
}

