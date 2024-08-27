struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec2<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> bool {
    global0 = 1947f;
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(902f)))));
    var var_0 = Struct_2(Struct_1(u_input.c), Struct_1(_wgslsmith_add_i32(abs(_wgslsmith_sub_i32(-37557i, 0i)), u_input.b)));
    let var_1 = Struct_3(firstLeadingBit(~(-(~vec4<i32>(-2147483647i, -10169i, 54026i, 0i)))), !(!select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(f32(-1f) * -583f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -474f))), Struct_2(var_0.a, var_0.a));
    let var_2 = _wgslsmith_mod_i32(var_1.a.x << (_wgslsmith_div_u32(1u, u_input.d) % 32u), ~(-48094i));
    return !var_1.b.x;
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: bool, arg_3: f32) -> vec2<u32> {
    var var_0 = vec3<bool>(arg_2 | !any(vec2<bool>(true, true)), true, func_3());
    var var_1 = var_0.zz;
    let var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-852f, -1121f)) * arg_3), _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1183f)))), _wgslsmith_f_op_f32(round(arg_1.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(342f, _wgslsmith_f_op_f32(-arg_3), arg_0), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, arg_0, 2024f), vec3<f32>(arg_0, -387f, -860f)))))))), var_1.x));
    var var_3 = Struct_2(Struct_1(-1i), arg_1.d.a);
    let var_4 = firstLeadingBit(u_input.e.x);
    return ~(~vec2<u32>(_wgslsmith_sub_u32(~u_input.d, _wgslsmith_div_u32(1u, u_input.d)), 0u));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(-48354i);
    var var_1 = ~reverseBits(~min(vec2<u32>(33451u, u_input.d), func_2(751f, Struct_3(vec4<i32>(u_input.e.x, u_input.a, 0i, u_input.b), vec2<bool>(true, true), vec2<f32>(-2026f, 536f), Struct_2(Struct_1(-28176i), Struct_1(24090i))), true, -1421f)));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-673f - _wgslsmith_f_op_f32(1000f * 703f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1187f - 1407f))))), 192f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1550f) * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-535f, -785f), _wgslsmith_f_op_f32(max(-283f, -1389f))))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var_0 = Struct_1(var_0.a);
    let var_3 = u_input.e.x & var_0.a;
    return Struct_1(_wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_clamp_vec2_i32(~vec2<i32>(0i, 1i), vec2<i32>(u_input.e.x, 1i), ~u_input.e.zz)), vec2<i32>(-5984i, 12344i)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_2) -> Struct_1 {
    var var_0 = abs(arg_2.b.a);
    var var_1 = max(vec4<i32>(u_input.c, 0i, abs(34638i), arg_1.d.a), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_div_i32(0i, -1i), arg_1.d.a, _wgslsmith_dot_vec3_i32(u_input.e, _wgslsmith_div_vec3_i32(u_input.e, u_input.e)), ~0i), abs(~min(vec4<i32>(-1i, arg_0.d.a, 2147483647i, 17390i), vec4<i32>(-56026i, -14869i, arg_1.d.a, arg_1.d.a)))));
    var var_2 = vec4<u32>(1u, ~1u, ~(~0u), arg_0.c | (u_input.d >> (firstLeadingBit(39901u) % 32u))) | reverseBits(_wgslsmith_add_vec4_u32(~(vec4<u32>(43111u, arg_0.c, 0u, 18457u) | vec4<u32>(19721u, 0u, arg_0.c, arg_1.c)), vec4<u32>(10805u, 46357u, 0u, arg_0.c) ^ ~vec4<u32>(arg_0.c, 0u, arg_0.c, u_input.d)));
    global0 = _wgslsmith_f_op_f32(376f + -1255f);
    let var_3 = Struct_1(-1i);
    return arg_2.a;
}

fn func_5(arg_0: Struct_2) -> Struct_4 {
    global0 = -501f;
    var var_0 = _wgslsmith_mult_i32(u_input.e.x, arg_0.a.a);
    let var_1 = Struct_3(vec4<i32>(-1957i, 26254i, 1i, abs(arg_0.b.a)), !(!vec2<bool>(any(vec4<bool>(true, true, true, false)), all(vec4<bool>(false, false, false, true)))), vec2<f32>(_wgslsmith_f_op_f32(abs(694f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1065f - 881f)))), Struct_2(Struct_1(12203i), Struct_1(~(i32(-1i) * -60872i))));
    var_0 = -u_input.a;
    var var_2 = Struct_2(func_4(Struct_4(var_1.c.x, var_1.c.x < _wgslsmith_f_op_f32(-106f * 1160f), 0u, Struct_1(arg_0.a.a)), Struct_4(_wgslsmith_f_op_f32(step(var_1.c.x, _wgslsmith_f_op_f32(var_1.c.x + 242f))), select(all(vec2<bool>(false, var_1.b.x)), !var_1.b.x, -21559i <= var_1.d.b.a), u_input.d, Struct_1(abs(-25548i))), Struct_2(Struct_1(i32(-1i) * -14063i), arg_0.b)), func_1());
    return Struct_4(var_1.c.x, true, max(68568u, ~firstTrailingBit(u_input.d)), func_1());
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2160f) * 1000f)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-487f, -2611f)));
    var var_0 = func_5(Struct_2(func_4(Struct_4(_wgslsmith_div_f32(520f, 397f), true, _wgslsmith_add_u32(1u, 26237u), func_1()), Struct_4(-225f, any(vec2<bool>(false, true)), firstTrailingBit(6102u), func_1()), Struct_2(func_1(), Struct_1(u_input.c))), func_1()));
    var var_1 = ~func_2(914f, Struct_3(select(vec4<i32>(var_0.d.a, u_input.c, -57740i, var_0.d.a), vec4<i32>(-7096i, u_input.e.x, 0i, -9086i), vec4<bool>(var_0.b, var_0.b, false, var_0.b)) >> (~vec4<u32>(var_0.c, 24811u, 0u, u_input.d) % vec4<u32>(32u)), vec2<bool>(false, var_0.b), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1117f)))), Struct_2(Struct_1(0i), Struct_1(-83410i))), any(vec4<bool>(select(var_0.b, var_0.b, false), !var_0.b, func_5(Struct_2(var_0.d, Struct_1(-2147483647i))).b, any(vec3<bool>(false, true, var_0.b)))), _wgslsmith_f_op_f32(var_0.a * -575f)).x;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1425f));
    let var_2 = Struct_3(_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(u_input.e.x, 1i, 462i, var_0.d.a) << (vec4<u32>(u_input.d, u_input.d, 45993u, u_input.d) % vec4<u32>(32u))) ^ min(vec4<i32>(-36052i, -2147483647i, var_0.d.a, u_input.e.x) | vec4<i32>(14369i, var_0.d.a, 2408i, -453i), ~vec4<i32>(var_0.d.a, 1i, var_0.d.a, u_input.b)), abs(firstTrailingBit(vec4<i32>(u_input.c, u_input.c, -22810i, 0i) >> (vec4<u32>(var_0.c, var_0.c, var_0.c, u_input.d) % vec4<u32>(32u))))), !(!vec2<bool>(var_0.b, all(vec2<bool>(true, var_0.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(596f, -1611f), vec2<f32>(var_0.a, var_0.a)))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(var_0.a * var_0.a), var_0.a)))), Struct_2(var_0.d, func_4(Struct_4(_wgslsmith_f_op_f32(round(var_0.a)), var_0.b, u_input.d, var_0.d), func_5(Struct_2(Struct_1(26339i), Struct_1(var_0.d.a))), Struct_2(var_0.d, Struct_1(0i)))));
    global0 = 300f;
    var_1 = ~25075u;
    let var_3 = !select(all(select(vec4<bool>(true, var_2.b.x, false, var_2.b.x), !vec4<bool>(true, true, var_0.b, false), var_2.b.x)), !var_2.b.x, 2345f != var_2.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.yy, _wgslsmith_div_f32(-687f, func_5(Struct_2(Struct_1(1i), Struct_1(var_2.a.x))).a), -818f, 1i, countOneBits(reverseBits(~_wgslsmith_div_i32(u_input.c, 45336i))));
}

