struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: vec4<i32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>) -> vec3<bool> {
    global0 = arg_0;
    let var_0 = Struct_1(_wgslsmith_sub_vec3_u32(select(vec3<u32>(~1u, ~arg_1.x, arg_1.x), _wgslsmith_div_vec3_u32(vec3<u32>(79247u, 1u, arg_0), vec3<u32>(arg_0, arg_0, 4294967295u)) << ((vec3<u32>(arg_0, arg_1.x, 4294967295u) << (vec3<u32>(arg_0, 0u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), vec3<u32>(_wgslsmith_dot_vec2_u32(arg_1, _wgslsmith_div_vec2_u32(arg_1, arg_1)), 13558u, _wgslsmith_mult_u32(min(9372u, 4294967295u), _wgslsmith_sub_u32(43336u, 36927u)))), arg_1.x, (abs(1u) << (0u % 32u)) ^ arg_1.x, 2147483647i);
    var var_1 = -646f;
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 705f, 2067f), vec3<f32>(306f, -639f, -1294f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-631f, 1267f, -1375f), vec3<f32>(-644f, -391f, -986f), vec3<bool>(true, false, true)))))), Struct_1(var_0.a, abs(~(~var_0.b)), 0u, firstTrailingBit(var_0.d)), var_0, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1715f, _wgslsmith_f_op_f32(ceil(-3098f)), _wgslsmith_f_op_f32(select(-218f, -250f, true))) * vec3<f32>(_wgslsmith_f_op_f32(select(563f, 361f, false)), _wgslsmith_f_op_f32(abs(-890f)), -791f)), vec3<f32>(626f, -1362f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1284f), _wgslsmith_f_op_f32(f32(-1f) * -321f))))), vec2<i32>(reverseBits(-2147483647i), 1i));
    var var_3 = ~vec4<i32>(38100i, u_input.a, ~(-var_2.b.d), var_2.e.x) << (max(~vec4<u32>(var_2.c.a.x, _wgslsmith_add_u32(19183u, 0u), ~0u, _wgslsmith_dot_vec3_u32(var_2.c.a, var_2.c.a)), ~_wgslsmith_sub_vec4_u32(abs(vec4<u32>(var_0.c, 50977u, arg_1.x, 7486u)), vec4<u32>(arg_0, arg_1.x, 4294967295u, arg_1.x))) % vec4<u32>(32u));
    return !select(select(vec3<bool>(true, any(vec2<bool>(false, false)), true), vec3<bool>(var_2.a.x != -413f, 1000f < var_2.a.x, 25575u == arg_0), select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)))), select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), vec3<bool>(all(vec3<bool>(false, false, false)), -24284i == var_2.c.d, any(vec4<bool>(true, false, true, false))), vec3<bool>(true, var_2.d.x >= var_2.d.x, 1u >= arg_1.x)), any(!select(vec2<bool>(false, false), vec2<bool>(false, false), false)));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: vec3<bool>, arg_3: vec4<bool>) -> vec3<bool> {
    global0 = firstTrailingBit(firstLeadingBit(~(~1u)));
    let var_0 = _wgslsmith_mult_vec2_i32(arg_0.yz, -((arg_1.xy | (vec2<i32>(-1i, arg_1.x) | arg_1.yy)) << (_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(52491u, 19924u)), vec2<u32>(1u, 0u)) % vec2<u32>(32u))));
    var var_1 = Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, ~arg_0.x, _wgslsmith_clamp_i32(~arg_1.x, 0i, firstTrailingBit(23076i)), -29583i), vec4<i32>(1i, _wgslsmith_dot_vec3_i32(arg_0, arg_1) >> (1u % 32u), -27894i, -_wgslsmith_dot_vec2_i32(arg_0.yz, arg_0.zx))), func_3(~(~(~0u)), vec2<u32>(1u, max(abs(1u), ~51927u))).yy, reverseBits(~abs(min(vec4<i32>(var_0.x, u_input.a, arg_1.x, 0i), vec4<i32>(var_0.x, arg_0.x, u_input.a, arg_0.x)))), false, Struct_1(vec3<u32>(1u, ~abs(6919u), _wgslsmith_sub_u32(20709u, ~4294967295u)), ~_wgslsmith_add_u32(1u, 1u), ~0u, -max(0i, -39423i)));
    var_1 = Struct_3(-var_1.e.d, func_3(1u, select(vec2<u32>(~39285u, var_1.e.c), var_1.e.a.xy, vec2<bool>(14267i == arg_0.x, true))).yz, abs(var_1.c), !arg_2.x, var_1.e);
    global0 = _wgslsmith_sub_u32(1u, 9464u >> ((7820u | var_1.e.a.x) % 32u));
    return !arg_2;
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = all(select(vec3<bool>(true, arg_0, true), vec3<bool>(all(select(vec3<bool>(true, true, arg_0), vec3<bool>(true, true, false), vec3<bool>(false, arg_0, true))), arg_0, arg_0), !arg_0 | true));
    let var_1 = select(func_4(-_wgslsmith_mod_vec3_i32(max(vec3<i32>(-36459i, 2147483647i, u_input.a), vec3<i32>(u_input.a, u_input.a, -51426i)), ~vec3<i32>(u_input.a, u_input.a, -2147483647i)), -firstTrailingBit(vec3<i32>(u_input.a, u_input.a, u_input.a)), select(func_3(firstLeadingBit(19836u), vec2<u32>(86785u, 17080u)), !select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(true, var_0, var_0), vec3<bool>(arg_0, arg_0, false)), true), vec4<bool>(false || select(arg_0, arg_0, arg_0), var_0, all(vec4<bool>(false, var_0, true, false)) & var_0, !func_3(12515u, vec2<u32>(10723u, 34410u)).x)), func_3(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(max(vec3<u32>(0u, 38617u, 24744u), vec3<u32>(4294967295u, 85143u, 7776u)), ~vec3<u32>(1u, 32446u, 49951u), vec3<u32>(84525u, 0u, 1u)), vec3<u32>(1u, 1u, 1u)), countOneBits(vec2<u32>(30561u, abs(42465u)))), true);
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(2013f, -662f, -682f) - vec3<f32>(1531f, -434f, 1204f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-818f, -369f, -1000f), vec3<f32>(-1695f, -894f, -267f)))))), Struct_1(min(countOneBits(~vec3<u32>(35999u, 36236u, 4294967295u)), countOneBits(vec3<u32>(1u, 1u, 1u))), firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 16486u, 4294967295u, 44836u), vec4<u32>(27306u, 2725u, 28046u, 6674u)), abs(1u))), 4294967295u, min(abs(27621i), u_input.a)), Struct_1(vec3<u32>(4294967295u, 1u, 1u), ~(~1u) | _wgslsmith_dot_vec4_u32(max(vec4<u32>(1u, 40600u, 28376u, 35354u), vec4<u32>(74869u, 1u, 60953u, 4294967295u)), firstLeadingBit(vec4<u32>(91894u, 4294967295u, 1u, 0u))), reverseBits(abs(firstTrailingBit(1u))), reverseBits(0i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-229f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1468f - 1827f) * 521f), 176f) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(767f + _wgslsmith_f_op_f32(629f - -218f)), 740f)), firstLeadingBit(select(vec2<i32>(-10842i, -2147483647i), ~(~vec2<i32>(0i, -10961i)), all(vec2<bool>(false, var_0)))));
    let var_3 = Struct_3(abs(-abs(firstTrailingBit(33348i))), var_1.xy, vec4<i32>(_wgslsmith_div_i32(firstTrailingBit(~var_2.e.x), abs(~var_2.b.d)), var_2.e.x, _wgslsmith_clamp_i32(abs(var_2.b.d), 42170i, var_2.e.x), ~var_2.b.d), false, var_2.c);
    var var_4 = ~var_2.c.a.xz;
    return Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-870f, var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.a.x, 1108f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, var_2.d.x, -337f), var_2.a)), _wgslsmith_f_op_vec3_f32(select(var_2.a, vec3<f32>(442f, var_2.a.x, 1581f), arg_0))))), var_2.b, Struct_1(vec3<u32>(~(~2320u), 15790u, var_3.e.b), ~30098u, var_4.x, _wgslsmith_clamp_i32(u_input.a, i32(-1i) * -54120i, 34766i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d.x, 197f, _wgslsmith_f_op_f32(exp2(var_2.a.x))))), vec2<i32>(-57353i, u_input.a));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> vec4<f32> {
    let var_0 = arg_1.a.zx;
    var var_1 = Struct_3(u_input.a, vec2<bool>(true, !arg_2), -(vec4<i32>(-1i) * -select(vec4<i32>(32404i, arg_0.c.d, u_input.a, arg_0.e.x), vec4<i32>(0i, arg_0.c.d, 0i, -1i), arg_2)), arg_2, Struct_1(_wgslsmith_clamp_vec3_u32(~arg_1.a, arg_0.b.a, arg_0.c.a), _wgslsmith_dot_vec2_u32(arg_1.a.xz, ~arg_0.b.a.yy), ~_wgslsmith_dot_vec4_u32(vec4<u32>(13751u, arg_0.c.a.x, 74457u, 1u), vec4<u32>(arg_0.c.a.x, var_0.x, 38614u, 46130u)), u_input.a));
    global0 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(4294967295u, arg_1.b, var_1.e.a.x, var_1.e.a.x)), ~min(vec4<u32>(13263u, 1u, arg_0.c.a.x, 8239u), vec4<u32>(var_0.x, 1u, var_0.x, 27394u))), abs(arg_1.c) >> (func_2(any(var_1.b)).c.c % 32u), _wgslsmith_mult_u32(_wgslsmith_sub_u32(~0u, abs(4294967295u)), var_1.e.c)) & arg_0.b.a.x;
    var_1 = Struct_3(-_wgslsmith_div_i32(~var_1.c.x, _wgslsmith_clamp_i32(u_input.a, _wgslsmith_clamp_i32(0i, arg_0.e.x, -16381i), _wgslsmith_dot_vec2_i32(var_1.c.xz, vec2<i32>(0i, var_1.c.x)))), vec2<bool>(any(!(!vec3<bool>(false, arg_2, var_1.d))), true), vec4<i32>(abs(1i), -u_input.a & (i32(-1i) * -1818i), -arg_0.e.x, _wgslsmith_mult_i32(_wgslsmith_div_i32(arg_1.d, arg_0.e.x), abs(arg_0.c.d))) | ~vec4<i32>(_wgslsmith_sub_i32(u_input.a, u_input.a), i32(-1i) * -50938i, max(arg_1.d, -1i), _wgslsmith_mult_i32(2147483647i, arg_1.d)), any(vec3<bool>(func_4(_wgslsmith_mult_vec3_i32(var_1.c.yzw, var_1.c.wyx), var_1.c.yxw | vec3<i32>(2147483647i, 13142i, 42954i), select(vec3<bool>(arg_2, false, arg_2), vec3<bool>(arg_2, true, true), false), select(vec4<bool>(arg_2, arg_2, arg_2, var_1.d), vec4<bool>(arg_2, arg_2, arg_2, false), vec4<bool>(false, var_1.d, arg_2, var_1.b.x))).x, any(var_1.b), !var_1.d)), Struct_1(vec3<u32>(0u, func_2(true).c.a.x, arg_0.c.b) >> (~_wgslsmith_clamp_vec3_u32(vec3<u32>(37578u, arg_3, var_0.x), vec3<u32>(4294967295u, arg_0.c.b, arg_0.c.a.x), vec3<u32>(arg_3, arg_1.a.x, 1u)) % vec3<u32>(32u)), _wgslsmith_add_u32(func_2(arg_2).b.a.x, 4309u), select(4294967295u, _wgslsmith_add_u32(~120019u, 3179u), arg_2), var_1.c.x));
    global0 = ~(~(~select(arg_3, ~arg_0.c.b, any(var_1.b))));
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.d.x, 839f, arg_0.d.x, arg_0.a.x)))))))))));
}

fn func_1() -> vec3<i32> {
    global0 = _wgslsmith_mod_u32(~_wgslsmith_div_u32(11208u, 2255u), 70738u);
    global0 = ~firstLeadingBit(~(~4294967295u));
    var var_0 = _wgslsmith_f_op_vec4_f32(func_5(func_2(all(vec3<bool>(true, true, true))), func_2(!(firstTrailingBit(1i) > ~u_input.a)).b, false, 20410u));
    let var_1 = -(~firstLeadingBit(~select(vec4<i32>(u_input.a, -9028i, -1i, -2147483647i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), true)));
    var var_2 = (var_1.x ^ _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x & -2147483647i, ~u_input.a), ~vec2<i32>(var_1.x, 38692i))) & 1i;
    return var_1.yzx;
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_5(func_2(arg_1.b.x), func_2(arg_1.d).c, !arg_1.d, 0u)).x * _wgslsmith_f_op_f32(f32(-1f) * -2226f)) * -1000f));
    var var_1 = !(1142f > var_0);
    var var_2 = u_input.a;
    var var_3 = func_2(-func_2(true).e.x == arg_0.x).b;
    let var_4 = arg_1;
    return func_2(false).c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-590f, -1000f, -886f, 981f) - vec4<f32>(673f, 165f, 667f, -277f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1488f, -622f, -1000f, 740f), vec4<f32>(-645f, -1105f, 262f, -248f)))))));
    global0 = ~firstTrailingBit(reverseBits(1u)) & _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(max(vec2<u32>(2171u, 52053u), vec2<u32>(0u, 4294967295u)), ~vec2<u32>(4294967295u, 34267u)) & 33750u, ~firstTrailingBit(46273u) >> (~(~1u) % 32u));
    let var_1 = func_6(_wgslsmith_mod_vec3_i32(-abs(vec3<i32>(0i, -1i, 60785i)), func_1()) << (~vec3<u32>(0u << (0u % 32u), func_2(true).b.a.x, ~4294967295u) % vec3<u32>(32u)), Struct_3(-26840i, !func_3(~1u, vec2<u32>(1u, 1u)).xz, _wgslsmith_mod_vec4_i32(vec4<i32>(-u_input.a, abs(8845i), i32(-1i) * -2147483647i, u_input.a ^ u_input.a), vec4<i32>(2147483647i, firstTrailingBit(u_input.a), u_input.a, countOneBits(16066i))), true, Struct_1(vec3<u32>(_wgslsmith_mult_u32(1u, 10353u), 4608u, 1u), min(_wgslsmith_clamp_u32(0u, 6503u, 79385u), 1u), 1u, (u_input.a & -25960i) ^ u_input.a)));
    let var_2 = Struct_3(_wgslsmith_sub_i32(_wgslsmith_mod_i32(max(~u_input.a, i32(-1i) * -2147483647i), ~1i), _wgslsmith_mod_i32(-firstLeadingBit(u_input.a), var_1.d << (4294967295u % 32u))), vec2<bool>(var_1.a.x < _wgslsmith_div_u32(1u, var_1.a.x), true), firstLeadingBit(-firstTrailingBit(vec4<i32>(u_input.a, -396i, 0i, 21495i) >> (vec4<u32>(var_1.c, 55624u, 76421u, 35971u) % vec4<u32>(32u)))), _wgslsmith_div_f32(func_2(all(vec3<bool>(false, true, false))).d.x, -1000f) < var_0.x, func_6(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 2147483647i, -20690i), vec4<i32>(-57306i, -32566i, -12561i, -2147483647i)), var_1.d, u_input.a), vec3<i32>(firstLeadingBit(var_1.d), abs(var_1.d), u_input.a), vec3<i32>(firstLeadingBit(1i), ~(-26251i), -var_1.d)), Struct_3(var_1.d << (var_1.c % 32u), vec2<bool>(true, true), max(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -19867i, -50933i, var_1.d), vec4<i32>(-1i, var_1.d, 0i, u_input.a)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 66922i, var_1.d, var_1.d), vec4<i32>(var_1.d, var_1.d, var_1.d, -33661i))), func_4(countOneBits(vec3<i32>(-2147483647i, var_1.d, var_1.d)), _wgslsmith_mod_vec3_i32(vec3<i32>(var_1.d, u_input.a, -32068i), vec3<i32>(2147483647i, -1i, 1i)), vec3<bool>(true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true))).x, func_6(vec3<i32>(-2147483647i, u_input.a, -496i) & vec3<i32>(2147483647i, -1i, -1i), Struct_3(70189i, vec2<bool>(false, true), vec4<i32>(42735i, u_input.a, u_input.a, u_input.a), true, var_1)))));
    let var_3 = 0i;
    let var_4 = var_2.e;
    let var_5 = func_2(var_2.b.x);
    global0 = _wgslsmith_mod_u32(firstLeadingBit(reverseBits(42833u)), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(firstTrailingBit(_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(0i, var_4.d, var_5.c.d)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 2147483647i, var_5.c.d), var_2.c.yxy))), ~var_2.c.xwy & vec3<i32>(1i, var_3, 7789i)), firstLeadingBit(~func_2(true).c.c));
}

