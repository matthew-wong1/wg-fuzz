struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: u32,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: vec4<bool>) -> bool {
    let var_0 = arg_2.c;
    let var_1 = ~(~(~var_0.c & 43260u)) > (u_input.a.x | 1u);
    var var_2 = -1000f;
    let var_3 = 13995i;
    var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-451f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(472f)))), _wgslsmith_f_op_f32(f32(-1f) * -966f))))));
    return !(!any(var_0.e));
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = ~4294967295u;
    let var_1 = arg_0.b.d;
    let var_2 = ~43370u;
    var var_3 = vec3<bool>(!(!arg_0.b.e.x), !select(false, all(select(arg_0.c.e.yyy, arg_0.b.e.wyz, vec3<bool>(arg_0.c.b, false, false))), func_3(abs(u_input.c.x), vec4<i32>(u_input.c.x, -1i, 1i, u_input.b), arg_0, vec4<bool>(arg_0.c.b, arg_0.b.b, false, true))), !all(vec3<bool>(arg_0.b.b, false, false)) || true);
    var_3 = arg_0.b.e.yyx;
    return ~1u | _wgslsmith_dot_vec3_u32(~(~abs(vec3<u32>(4294967295u, arg_0.b.a.x, 1u))), vec3<u32>(~var_2, u_input.a.x, reverseBits(~4294967295u)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> vec4<bool> {
    return select(arg_1.e, !vec4<bool>(1u < u_input.a.x, !arg_1.b, !(!arg_1.b), true), select(vec4<bool>(func_2(Struct_2(arg_1.a.x, Struct_1(arg_1.a, arg_1.b, 8055u, arg_1.c, vec4<bool>(true, arg_1.e.x, false, arg_1.b)), Struct_1(arg_1.a, arg_1.b, 35798u, arg_1.a.x, vec4<bool>(false, true, arg_1.e.x, true)))) == 80932u, u_input.c.x >= (i32(-1i) * -42753i), any(!arg_1.e.wxz), !arg_1.b), arg_1.e, !(!arg_1.e)));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_clamp_i32(arg_2.x, abs(arg_2.x), ~38689i);
    var_0 = _wgslsmith_add_i32(u_input.b, _wgslsmith_dot_vec2_i32(firstLeadingBit(-arg_2), arg_2 & u_input.c.zz) & 19829i);
    var var_1 = ~_wgslsmith_mult_vec2_i32(-arg_2, vec2<i32>(-2147483647i, _wgslsmith_mod_i32(arg_2.x, 57759i)));
    var var_2 = u_input.a.x;
    var_1 = ~select(_wgslsmith_mult_vec2_i32(vec2<i32>(17133i, u_input.b), ~u_input.c.yy), countOneBits(arg_2), arg_0.x) >> (_wgslsmith_mod_vec2_u32(~abs(~vec2<u32>(u_input.a.x, 55646u)), u_input.a) % vec2<u32>(32u));
    return Struct_2(max(firstLeadingBit(countOneBits(~u_input.a.x)), ~u_input.a.x), Struct_1(_wgslsmith_mult_vec2_u32(u_input.a, abs(vec2<u32>(u_input.a.x, 12815u))), !all(arg_0), ~(~(~u_input.a.x)), _wgslsmith_mod_u32(u_input.a.x, 4294967295u), !arg_0), Struct_1(~firstLeadingBit(_wgslsmith_mult_vec2_u32(u_input.a, u_input.a)), !arg_0.x, ~0u, ~(~_wgslsmith_mod_u32(0u, 64168u)), !vec4<bool>(arg_0.x, arg_2.x == 27499i, false, false & arg_0.x)));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: vec4<i32>) -> vec4<f32> {
    var var_0 = func_4(func_4(!vec4<bool>(arg_1.b.e.x, false, true, false), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1162f, -685f, 1027f, -384f), vec4<f32>(-753f, 576f, -794f, -2030f))))), vec2<i32>(u_input.c.x, 2147483647i)).c.e, vec4<f32>(1f, 1f, 1f, 1f), reverseBits(u_input.c.zx)).b.e.x & false;
    var var_1 = 46693u;
    let var_2 = abs(max(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(u_input.c.yz ^ arg_2.wy, ~vec2<i32>(-1i, -2147483647i)), _wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(5165i, 68794i)), abs(vec2<i32>(u_input.c.x, u_input.b))), select(_wgslsmith_sub_vec2_i32(vec2<i32>(54305i, 62141i), arg_2.wx), ~vec2<i32>(-21671i, -13581i), arg_1.b.e.zz)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, 0i) & firstTrailingBit(arg_2.xy), firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, 0i), arg_2.zz)))));
    let var_3 = ~u_input.a.x;
    var_0 = false;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-275f, -766f, 991f, 879f) - vec4<f32>(805f, -2035f, -354f, -1616f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(332f, 1082f, -444f, 1000f) - vec4<f32>(-179f, 516f, 202f, 615f))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(578f, -1074f, 441f, -174f) * vec4<f32>(1661f, 555f, -1244f, -572f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(534f, -1000f, 1000f, 151f))))) + vec4<f32>(1f, _wgslsmith_f_op_f32(1098f * 1067f), _wgslsmith_f_op_f32(-643f + _wgslsmith_f_op_f32(abs(490f))), _wgslsmith_f_op_f32(1165f * -2307f))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-438f * 566f), _wgslsmith_f_op_f32(f32(-1f) * -704f), _wgslsmith_f_op_f32(1000f - 1042f), _wgslsmith_f_op_f32(1308f - 2143f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-124f, 381f, 2004f, 279f) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-522f, 1000f, -2245f, -128f))))))));
}

fn func_6(arg_0: f32, arg_1: f32, arg_2: vec4<f32>) -> u32 {
    let var_0 = vec2<bool>(true, true);
    let var_1 = Struct_1(vec2<u32>(~(firstLeadingBit(u_input.a.x) ^ 30986u), 1u), func_4(!(!select(vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(false, var_0.x, false, var_0.x), var_0.x)), arg_2, vec2<i32>(u_input.b, -_wgslsmith_sub_i32(68735i, u_input.b))).b.b, 4294967295u, 77763u, func_4(!(!select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(false, var_0.x, true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1, arg_2.x, arg_2.x, arg_0)))), _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-16667i, 2147483647i), _wgslsmith_sub_vec2_i32(u_input.c.yx, u_input.c.yz)), -vec2<i32>(1907i, 1i))).c.e);
    var var_2 = any(vec3<bool>(var_0.x, (u_input.b | -19998i) <= _wgslsmith_mod_i32(1i, i32(-1i) * -1i), var_1.b));
    let var_3 = select(select(var_1.e, !select(vec4<bool>(var_0.x, false, var_1.b, var_1.e.x), var_1.e, true), var_1.b), var_1.e, ~_wgslsmith_mult_i32(u_input.c.x, -41828i) > ~7668i);
    var var_4 = Struct_1(var_1.a, !func_4(var_3, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, arg_2.x, arg_0, arg_0), vec4<f32>(arg_1, -790f, arg_2.x, 154f))), reverseBits(u_input.c.xz ^ vec2<i32>(52842i, 2147483647i))).b.e.x, abs(8976u), func_4(!func_4(func_1(vec4<i32>(0i, 76566i, u_input.b, 0i), Struct_1(vec2<u32>(var_1.c, 0u), false, 10465u, 4294967295u, vec4<bool>(var_1.b, false, var_0.x, false))), vec4<f32>(2522f, 211f, arg_0, -2335f), u_input.c.yy).b.e, arg_2, select(vec2<i32>(~0i, 1i), -_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b), u_input.c.zy), -17210i == _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 6042i, 1i, 35842i), vec4<i32>(0i, -1i, u_input.b, -21783i)))).b.d, var_1.e);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var_0 = 55385u;
    var_0 = ~func_6(_wgslsmith_f_op_f32(abs(1830f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1056f))) - 1f), _wgslsmith_f_op_vec4_f32(func_5(!(u_input.c.x == -3876i), func_4(func_1(vec4<i32>(-71792i, 0i, u_input.b, u_input.c.x), Struct_1(vec2<u32>(4294967295u, u_input.a.x), true, u_input.a.x, 1u, vec4<bool>(true, false, false, false))), vec4<f32>(-624f, -1215f, 349f, 526f), vec2<i32>(-32366i, u_input.b)), -vec4<i32>(u_input.c.x, 21046i, -1i, u_input.b))));
    let var_1 = Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a), ((i32(-1i) * -16781i) | _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c.x, u_input.b, u_input.b, -7972i), vec4<i32>(u_input.c.x, u_input.b, u_input.b, u_input.c.x))) >= -71928i, u_input.a.x, 0u, vec4<bool>(true, true, true, true));
    var var_2 = select(select(vec2<bool>(true, true), vec2<bool>(var_1.e.x, all(vec3<bool>(var_1.b, false, var_1.b))), var_1.e.x), !vec2<bool>(!(!var_1.b), var_1.e.x), ~(-firstTrailingBit(1i)) >= firstLeadingBit(min(0i, ~u_input.b)));
    var_2 = vec2<bool>(!(!any(var_1.e.xy) && select(var_1.b, true && var_2.x, var_1.e.x)), select(all(var_1.e.zyx), all(!var_1.e.zyx), !var_2.x) || true);
    var var_3 = Struct_3(var_1);
    var var_4 = -(-2147483647i | (-(~(-2147483647i)) & u_input.b));
    var_2 = vec2<bool>(true, func_4(select(var_3.a.e, var_1.e, select(select(var_1.e, var_1.e, var_3.a.e), select(vec4<bool>(false, false, false, var_1.e.x), vec4<bool>(var_3.a.b, var_2.x, true, var_3.a.b), vec4<bool>(true, var_3.a.e.x, false, false)), var_2.x || var_2.x)), vec4<f32>(_wgslsmith_f_op_f32(227f + _wgslsmith_f_op_f32(778f + -1060f)), -134f, -213f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1182f + 1000f))), vec2<i32>(firstTrailingBit(u_input.b) << (var_1.c % 32u), u_input.b)).b.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(~(~min(vec4<u32>(u_input.a.x, var_3.a.c, 70857u, u_input.a.x), vec4<u32>(32131u, var_3.a.c, 0u, var_1.c))), vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(4294967295u, var_3.a.c), 1u, _wgslsmith_sub_u32(var_1.a.x, 4294967295u)) >> (abs(select(vec4<u32>(28548u, 36441u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, var_3.a.a.x, 7756u, u_input.a.x), var_2.x)) % vec4<u32>(32u))), vec4<f32>(1f, 1f, 1f, 1f), 4294967295u, ~0u, (u_input.c << (abs(reverseBits(vec3<u32>(4294967295u, var_1.d, 0u))) % vec3<u32>(32u))) & u_input.c);
}

