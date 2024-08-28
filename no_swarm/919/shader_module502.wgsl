struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: i32,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1775f;

var<private> global1: vec4<u32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: vec3<f32>, arg_3: vec4<f32>) -> vec4<bool> {
    global1 = arg_0;
    let var_0 = ~select(~(~_wgslsmith_mod_vec3_u32(arg_0.xxz, arg_0.yxz)), firstTrailingBit(arg_0.wwx), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), true), any(vec3<bool>(true, true, true))));
    global1 = vec4<u32>(max(_wgslsmith_sub_u32(~firstLeadingBit(18252u), 24418u), var_0.x), var_0.x, _wgslsmith_dot_vec4_u32(~(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.x, 4294967295u, arg_0.x, arg_1), arg_0, vec4<u32>(var_0.x, arg_0.x, 4662u, global1.x)) | firstTrailingBit(vec4<u32>(global1.x, arg_0.x, var_0.x, global1.x))), firstTrailingBit(select(_wgslsmith_clamp_vec4_u32(arg_0, vec4<u32>(1u, 18840u, arg_0.x, 54u), arg_0), ~vec4<u32>(4294967295u, 12345u, global1.x, 1u), false))), ~firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.x), var_0.zz)) ^ 19434u);
    var var_1 = select(u_input.a.x | _wgslsmith_dot_vec4_i32(-(vec4<i32>(u_input.b, -2147483647i, 2147483647i, u_input.a.x) << (vec4<u32>(0u, arg_0.x, 0u, 25754u) % vec4<u32>(32u))), vec4<i32>(u_input.c.x, -1i, u_input.c.x, min(u_input.b, u_input.a.x))), u_input.a.x, (~abs(1u) == var_0.x) && true);
    let var_2 = vec2<bool>(all(vec2<bool>(false, true)), any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), true)));
    return !(!select(vec4<bool>(false, all(vec3<bool>(false, false, var_2.x)), arg_3.x != arg_3.x, true), select(!vec4<bool>(var_2.x, true, var_2.x, true), vec4<bool>(var_2.x, var_2.x, true, var_2.x), vec4<bool>(false, true, true, true)), !var_2.x));
}

fn func_4(arg_0: vec4<bool>) -> f32 {
    let var_0 = ~(-vec3<i32>(u_input.b, u_input.a.x, u_input.a.x));
    var var_1 = Struct_4(select(arg_0.yy, !(!arg_0.xy), vec2<bool>(arg_0.x, global1.x <= global1.x)));
    var var_2 = Struct_3(u_input.a.x, Struct_2(Struct_1(-571f), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1155f))))), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -30453i, var_0.x, var_0.x), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.c.x, 2147483647i)) | -(0i >> (global1.x % 32u))), _wgslsmith_mult_i32(1i, reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 36468i), u_input.a & vec2<i32>(var_0.x, var_0.x)))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-852f * 3025f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1769f, 942f))))), u_input.a.x);
    var var_3 = Struct_4(!vec2<bool>(false | any(var_1.a), select(var_1.a.x, true, false) | arg_0.x));
    let var_4 = Struct_3(26491i, Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.b.a * 1081f))), Struct_1(var_2.b.b.a), var_0.x), abs(firstTrailingBit(reverseBits(1i))), var_2.b.a, -1i);
    return var_4.b.a.a;
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -301f), _wgslsmith_f_op_f32(346f + -1030f)))))));
    global0 = _wgslsmith_f_op_f32(func_4(select(func_3(~abs(vec4<u32>(4294967295u, global1.x, global1.x, 4294967295u)), 11603u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -1569f, 556f) * vec3<f32>(var_0, -2985f, 712f)) - vec3<f32>(-752f, -134f, var_0)), vec4<f32>(-2959f, 1888f, 1000f, _wgslsmith_f_op_f32(-var_0))), !vec4<bool>(any(vec4<bool>(arg_1, true, arg_1, arg_1)), arg_1, !arg_1, true), vec4<bool>(max(u_input.a.x, -2147483647i) > 0i, true, (u_input.b >= 35662i) & true, true))));
    global0 = -313f;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_0)))) + _wgslsmith_div_f32(var_0, var_0));
    global1 = vec4<u32>(1u, _wgslsmith_dot_vec2_u32(global1.wx, vec2<u32>(global1.x, ~41768u ^ firstTrailingBit(global1.x))), arg_0, 13210u);
    return Struct_1(785f);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1) -> bool {
    global1 = (countOneBits(vec4<u32>(1u, ~global1.x, ~1u, global1.x)) >> ((vec4<u32>(76293u, min(global1.x, 70572u), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, global1.x, global1.x, global1.x), vec4<u32>(5286u, 4294967295u, 4294967295u, global1.x)), 1u) >> (select(~vec4<u32>(global1.x, 22488u, 104210u, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, global1.x, 67870u, 1u), vec4<u32>(global1.x, global1.x, 14437u, 0u), vec4<u32>(global1.x, global1.x, global1.x, global1.x)), func_3(vec4<u32>(global1.x, 43047u, global1.x, 43555u), global1.x, vec3<f32>(-874f, 1607f, arg_0.x), vec4<f32>(977f, arg_1.a, arg_0.x, arg_0.x))) % vec4<u32>(32u))) % vec4<u32>(32u))) & _wgslsmith_mod_vec4_u32(~vec4<u32>(reverseBits(global1.x), _wgslsmith_div_u32(global1.x, 1u), firstTrailingBit(0u), global1.x), ~_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(0u, 29190u, global1.x, 4294967295u)), ~vec4<u32>(global1.x, global1.x, 19719u, 4294967295u), ~vec4<u32>(0u, global1.x, 0u, global1.x)));
    var var_0 = 4294967295u << (~_wgslsmith_dot_vec2_u32(~vec2<u32>(global1.x, global1.x), vec2<u32>(global1.x, global1.x) ^ vec2<u32>(0u, global1.x)) % 32u);
    let var_1 = ~1i;
    let var_2 = Struct_2(Struct_1(arg_1.a), arg_1, _wgslsmith_dot_vec4_i32(min(select(vec4<i32>(-8926i, var_1, u_input.a.x, var_1) & vec4<i32>(u_input.c.x, u_input.b, -1i, -33048i), vec4<i32>(41551i, -1i, var_1, var_1), false), vec4<i32>(_wgslsmith_mod_i32(22829i, u_input.a.x), _wgslsmith_clamp_i32(1i, u_input.a.x, -5878i), abs(57464i), -7928i)), -(~_wgslsmith_div_vec4_i32(vec4<i32>(1i, var_1, var_1, 0i), vec4<i32>(var_1, -14152i, u_input.a.x, var_1)))));
    var var_3 = arg_0;
    return true;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<i32>) -> u32 {
    var var_0 = select(select(vec4<bool>(func_5(_wgslsmith_div_vec3_f32(vec3<f32>(999f, 805f, 871f), vec3<f32>(-969f, 769f, 1000f)), func_2(global1.x, true)), false, true, false), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true))), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true)), any(vec3<bool>(true, true, true))), !vec4<bool>(all(vec4<bool>(true, false, true, false)), true, false, false)), !vec4<bool>(false, select(true, true, true), func_5(vec3<f32>(352f, 872f, 616f), Struct_1(496f)), false), !func_3(vec4<u32>(~global1.x, countOneBits(global1.x), _wgslsmith_div_u32(global1.x, global1.x), global1.x), ~(~0u), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1292f, 143f, -1469f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1233f, -860f, 1237f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1440f, 1000f, 404f, -987f))).x);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1344f)))))));
    var var_1 = all(select(vec4<bool>(true, func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(646f, -585f, 1367f) - vec3<f32>(-639f, -439f, -1348f)), Struct_1(2069f)), true, false), select(func_3(min(vec4<u32>(global1.x, 4294967295u, global1.x, 7938u), vec4<u32>(4294967295u, 54357u, global1.x, 2143u)), _wgslsmith_mod_u32(global1.x, global1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(256f, -811f, 1578f) - vec3<f32>(-204f, 100f, 802f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(778f, -500f, 1033f, -2035f)))), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), func_3(reverseBits(vec4<u32>(97u, global1.x, 1u, 0u)), ~1u, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-164f, 1397f, -188f), vec3<f32>(-806f, 876f, -551f), var_0.xww)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1499f, 1643f, -725f, 1186f)))), !(!(var_0.x | false))));
    var var_2 = vec4<bool>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(arg_0, abs(vec4<i32>(arg_1.x, -5842i, arg_1.x, 1i))), 31288i) <= 9065i, select(false, all(vec4<bool>(all(vec3<bool>(false, var_0.x, false)), true, var_0.x, true)), true), true, func_3(vec4<u32>(_wgslsmith_sub_u32(~1u, _wgslsmith_clamp_u32(1u, 71369u, global1.x)), _wgslsmith_mod_u32(~global1.x, ~global1.x), _wgslsmith_div_u32(reverseBits(81422u), ~global1.x), _wgslsmith_mod_u32(global1.x, 0u) << ((global1.x ^ 4294967295u) % 32u)), ~select(~global1.x, 1u, !var_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -390f), -1000f, 442f) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(169f, 983f, 167f) - vec3<f32>(1830f, 1000f, -1000f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-552f, 1455f)), _wgslsmith_f_op_f32(f32(-1f) * -1258f), _wgslsmith_f_op_f32(-1090f - 1726f), _wgslsmith_f_op_f32(select(2082f, 1000f, var_0.x))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(229f, -688f, -1188f, -722f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1093f, -479f, -783f, -385f))))).x);
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2134f, 1745f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, 2141f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - vec3<f32>(_wgslsmith_f_op_f32(1000f - 712f), _wgslsmith_f_op_f32(f32(-1f) * -491f), _wgslsmith_f_op_f32(-978f - -1000f))), _wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), vec3<f32>(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_div_f32(1397f, 407f), -947f)), !var_2.xxx)));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!all(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), true)));
    let var_1 = max(vec2<u32>(~(~(~global1.x)), ~_wgslsmith_mod_u32(func_1(vec4<i32>(-26711i, 2147483647i, u_input.c.x, u_input.a.x), vec2<i32>(u_input.b, u_input.a.x)), ~global1.x)), vec2<u32>(~4461u, global1.x));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(958f - 1217f)), _wgslsmith_f_op_f32(-1312f - -454f)))));
    var var_3 = Struct_4(vec2<bool>(!var_0, var_0));
    let var_4 = Struct_4(func_3(~_wgslsmith_add_vec4_u32(~vec4<u32>(var_1.x, global1.x, 58375u, 4294967295u), ~vec4<u32>(12948u, 0u, 2155u, var_1.x)), var_1.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-391f, _wgslsmith_f_op_f32(-var_2), -322f) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, var_2))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-596f, var_2, 1218f, 1905f), vec4<f32>(var_2, -553f, var_2, var_2), var_3.a.x)))))).wx);
    var var_5 = false;
    var var_6 = Struct_5(abs(~vec3<u32>(65969u, 4294967295u, var_1.x) & ~global1.zzz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2), var_2)) * _wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(410f - 251f))) > 923f, true);
    let var_7 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(func_2(~(~4294967295u), false).a, var_2));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))))), -1503f);
}

