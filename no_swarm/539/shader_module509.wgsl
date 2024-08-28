struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = Struct_1(-arg_0.c.a, ~(~vec4<u32>(u_input.b.x, arg_0.c.b.x | arg_0.c.b.x, 4294967295u, 48630u)), !vec4<bool>(!select(true, arg_0.c.c.x, true), !(arg_0.c.d != arg_0.c.d), ~(-26504i) > ~arg_0.e, arg_0.d.c.x), 0i, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(arg_0.d.e + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, 116f, arg_0.c.e.x))))))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(520f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1237f * 1161f), var_0.e.x))), !(!select(!var_0.c.wyz, arg_0.d.c.yyx, select(vec3<bool>(var_0.c.x, true, false), var_0.c.wwx, vec3<bool>(arg_0.c.c.x, arg_0.d.c.x, true)))), var_0, arg_0.d, 1i);
    var var_2 = 36205u;
    var_1 = Struct_2(var_1.c.e.x, select(select(vec3<bool>(select(var_1.c.c.x, arg_0.b.x, arg_0.d.c.x), var_1.b.x, var_1.b.x), vec3<bool>(true, all(var_1.d.c), true), var_0.c.x), select(arg_0.c.c.xww, vec3<bool>(all(var_0.c), true, true), var_1.d.c.www), !var_0.c.xwz), var_1.c, Struct_1(abs(firstLeadingBit(vec4<i32>(arg_0.d.d, arg_0.e, 2147483647i, 41988i) ^ vec4<i32>(-1i, 19238i, -2147483647i, 2147483647i))), ~(~u_input.a), !vec4<bool>(true, var_1.c.c.x, false, var_1.d.c.x), ~(-1i), vec3<f32>(-1026f, -869f, arg_0.d.e.x)), var_1.d.a.x);
    var_2 = ~var_1.d.b.x;
    return !arg_0.d.c.wyz;
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(102f * -1578f) + _wgslsmith_f_op_f32(max(-156f, 116f))))), select(select(vec3<bool>(true, true, all(vec4<bool>(false, true, true, true))), vec3<bool>(true, true, true), func_3(Struct_2(-801f, vec3<bool>(false, false, true), Struct_1(vec4<i32>(2147483647i, 0i, -2147483647i, 2147483647i), u_input.a, vec4<bool>(false, false, false, true), 33236i, vec3<f32>(-576f, 1127f, 785f)), Struct_1(vec4<i32>(2147483647i, 21105i, -2147483647i, -9495i), u_input.a, vec4<bool>(false, true, false, false), 2147483647i, vec3<f32>(985f, -241f, -546f)), -8030i))), select(vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(true, true, true)), all(vec2<bool>(false, true)), true), u_input.b.x > reverseBits(91494u)), vec3<bool>(u_input.c > ~0u, select(-68046i, 2147483647i, false) >= reverseBits(0i), all(vec3<bool>(true, true, true)))), Struct_1(vec4<i32>(_wgslsmith_clamp_i32(~18329i, i32(-1i) * -37599i, ~6643i), countOneBits(_wgslsmith_mod_i32(0i, 3502i)), 1i, 18761i), select(u_input.a, max(~u_input.a, ~vec4<u32>(u_input.a.x, u_input.b.x, u_input.a.x, 0u)), true), !vec4<bool>(false, true, true, u_input.c < u_input.b.x), reverseBits(1i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1306f * -675f), _wgslsmith_div_f32(-1000f, 1000f), _wgslsmith_f_op_f32(1542f - 691f)))), Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -49812i, reverseBits(12203i), _wgslsmith_div_i32(-4926i, -1i)), abs(firstLeadingBit(vec4<i32>(1i, -2147483647i, 14461i, 1i)))), select(~abs(vec4<u32>(u_input.b.x, 21327u, 67477u, 33302u)), vec4<u32>(reverseBits(1211u), _wgslsmith_sub_u32(u_input.c, 42047u), firstLeadingBit(4294967295u), u_input.a.x << (u_input.c % 32u)), vec4<bool>(true, true, false, u_input.b.x <= 20880u)), vec4<bool>(true, abs(u_input.b.x) < min(u_input.c, 0u), true, !select(false, false, false)), _wgslsmith_add_i32(~(~2147483647i), -3302i), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) + _wgslsmith_f_op_f32(select(-906f, 268f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-262f + -1257f) - 1744f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-3219f, 1550f))))), -7099i);
    let var_1 = 10022i;
    let var_2 = ~(-1i);
    let var_3 = var_0.d.c.yz;
    let var_4 = Struct_3(var_0, ~(~(var_0.c.b.x | ~var_0.d.b.x)));
    return var_4.a.d.c;
}

fn func_4(arg_0: vec4<bool>, arg_1: f32) -> f32 {
    let var_0 = Struct_2(_wgslsmith_div_f32(-867f, arg_1), func_2().yxy, Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(12717i, 30964i, 1i, 5149i)), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(u_input.b.x, 21607u, 37895u), u_input.c, 37617u, 26634u), vec4<u32>(1u, ~u_input.b.x, 636u << (u_input.a.x % 32u), firstTrailingBit(29312u))), arg_0, i32(-1i) * -45773i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(675f, -297f, arg_1) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 644f, 409f))))), Struct_1(abs(~vec4<i32>(-41160i, -81639i, 58122i, 31850i)) >> (vec4<u32>(33425u, _wgslsmith_sub_u32(40824u, 3593u), u_input.c, ~4294967295u) % vec4<u32>(32u)), abs(u_input.a), !vec4<bool>(true, u_input.c >= u_input.b.x, false || arg_0.x, true), 52602i, _wgslsmith_f_op_vec3_f32(vec3<f32>(-561f, _wgslsmith_f_op_f32(arg_1 - 1313f), arg_1) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, arg_1, -1087f), vec3<f32>(arg_1, 1174f, -1566f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -658f, arg_1) - vec3<f32>(arg_1, 1620f, 1472f)), false)))), ~abs(-max(4156i, 6539i)));
    return arg_1;
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-609f, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(921f, -732f))))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(func_4(!func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x)))))), var_0.x, -1000f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - 581f)));
    var var_2 = abs(-abs(vec4<i32>(~(-30474i), _wgslsmith_add_i32(-30026i, 10435i), -2147483647i, _wgslsmith_clamp_i32(106i, -2147483647i, -2147483647i))));
    let var_3 = Struct_1(vec4<i32>(var_2.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 0i, -1i), var_2.yxz), select(~var_2.zyz, _wgslsmith_div_vec3_i32(vec3<i32>(var_2.x, 13862i, var_2.x), var_2.xzz), vec3<bool>(true, false, true))), var_2.x, -var_2.x), vec4<u32>(74213u, 30532u, u_input.c, ~firstTrailingBit(firstTrailingBit(23058u))), !vec4<bool>(any(vec4<bool>(false, false, true, false)), func_3(Struct_2(var_0.x, vec3<bool>(false, false, false), Struct_1(vec4<i32>(-7174i, -4235i, 25156i, var_2.x), u_input.a, vec4<bool>(true, true, true, true), 1i, var_0), Struct_1(vec4<i32>(2147483647i, -8123i, var_2.x, var_2.x), vec4<u32>(u_input.c, 1u, u_input.c, 77435u), vec4<bool>(true, true, true, false), var_2.x, var_1.xwx), var_2.x)).x, _wgslsmith_f_op_f32(sign(var_0.x)) > _wgslsmith_f_op_f32(f32(-1f) * -494f), !(u_input.b.x > u_input.a.x)), _wgslsmith_sub_i32(abs(var_2.x), _wgslsmith_clamp_i32(~(var_2.x << (u_input.b.x % 32u)), firstTrailingBit(var_2.x), 2147483647i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-646f - var_0.x)), _wgslsmith_div_f32(812f, _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(-var_0.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(641f, -1000f, var_0.x), vec3<f32>(116f, -1554f, var_0.x))))))));
    var_2 = var_3.a;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3.e.x * _wgslsmith_f_op_f32(f32(-1f) * -1351f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(vec2<u32>(u_input.a.x, _wgslsmith_add_u32(u_input.a.x >> (85295u % 32u), _wgslsmith_clamp_u32(u_input.c, 0u, 0u))) << (max(~u_input.a.xx, vec2<u32>(0u, u_input.a.x) & _wgslsmith_add_vec2_u32(vec2<u32>(3207u, u_input.b.x), u_input.a.zx)) % vec2<u32>(32u)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-753f, -1545f)) - 342f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-898f, 178f) - -275f))), _wgslsmith_f_op_f32(select(298f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1906f + 301f) + _wgslsmith_f_op_f32(abs(-318f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(659f, -203f))), !any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false))))), _wgslsmith_f_op_f32(func_1()));
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1205f, _wgslsmith_f_op_f32(trunc(616f)), var_1.x != 687f)) * var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(147f, var_1.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(911f)) * -442f)), _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(abs(var_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x) - _wgslsmith_f_op_f32(trunc(-696f))))));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-1350f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec4<bool>(false, false, false, true), _wgslsmith_f_op_f32(step(-142f, var_1.x)))) * var_2.x)), !(!func_3(Struct_2(-142f, vec3<bool>(true, false, true), Struct_1(vec4<i32>(-1i, 24498i, 2147483647i, 0i), vec4<u32>(var_0.x, u_input.a.x, 76673u, u_input.c), vec4<bool>(true, false, true, true), 0i, vec3<f32>(720f, var_2.x, 1000f)), Struct_1(vec4<i32>(-2147483647i, -11163i, -34020i, -1i), vec4<u32>(388u, 1u, 4294967295u, 0u), vec4<bool>(false, true, true, false), 59100i, var_2.yyz), -1i))), Struct_1(countOneBits(vec4<i32>(1i, abs(-2147483647i), ~2147483647i, ~1i)), ~u_input.a, !vec4<bool>(true, true, true, func_2().x), ~min(1i, 1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1 * vec3<f32>(var_2.x, var_1.x, 2000f))))), Struct_1(firstTrailingBit(_wgslsmith_add_vec4_i32(~vec4<i32>(-55528i, 2147483647i, -31400i, 0i), abs(vec4<i32>(0i, 1i, -17254i, 0i)))), u_input.a, !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)), abs(_wgslsmith_mod_i32(1i, ~1i)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1116f) + _wgslsmith_f_op_f32(abs(var_1.x))), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1471f * var_1.x)))), 1i);
    let var_4 = var_3.d;
    let var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(select(vec4<bool>(false, true, var_3.d.c.x, false), var_3.c.c, vec4<bool>(true, true, false, var_3.b.x)), -312f)) * _wgslsmith_f_op_f32(select(var_4.e.x, _wgslsmith_f_op_f32(trunc(var_3.c.e.x)), any(var_4.c.xwx))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1600f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-290f, -384f) - _wgslsmith_f_op_f32(178f * 1316f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec2<i32>(37476i, _wgslsmith_sub_i32(var_4.a.x, -1i)) & var_4.a.zz));
}

