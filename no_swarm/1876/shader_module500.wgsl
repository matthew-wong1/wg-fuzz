struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: i32) -> bool {
    var var_0 = Struct_3(firstTrailingBit(~(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a, 36393u), vec2<u32>(arg_1.x, arg_0.a)) ^ ~arg_1.x)), arg_2.b);
    var var_1 = Struct_3(~u_input.e.x, false);
    var var_2 = vec3<u32>(~(~(~14127u)), ~(~_wgslsmith_mod_u32(~23545u, reverseBits(arg_1.x))), _wgslsmith_mult_u32(~(~firstLeadingBit(29733u)), countOneBits(31517u)));
    return arg_2.a;
}

fn func_2(arg_0: vec2<u32>, arg_1: f32) -> Struct_4 {
    let var_0 = any(vec4<bool>(u_input.c.x > _wgslsmith_mult_i32(46050i, u_input.d.x), func_3(Struct_3(68035u, true), reverseBits(u_input.a), Struct_1(true, true), ~0i), select(true, arg_1 >= arg_1, true), any(select(vec2<bool>(true, false), vec2<bool>(true, false), true)))) || !any(select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true), true));
    let var_1 = Struct_4(vec3<i32>(-u_input.c.x, -24108i, 2147483647i), arg_1);
    var var_2 = vec3<i32>(max(var_1.a.x, var_1.a.x), ~_wgslsmith_clamp_i32(select(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -26437i), u_input.d), u_input.b, any(vec4<bool>(var_0, false, var_0, var_0))), var_1.a.x, 0i), 2547i);
    var var_3 = vec2<u32>(~_wgslsmith_sub_u32(countOneBits(~u_input.e.x), 68083u), 0u);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(-604f - _wgslsmith_f_op_f32(f32(-1f) * -1475f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1))))) + arg_1);
    return var_1;
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = vec2<f32>(arg_0.b, -1000f);
    var_0 = vec2<f32>(-196f, var_0.x);
    var var_1 = func_2(u_input.a.xy ^ vec2<u32>(abs(firstTrailingBit(arg_2.c.x)), 37105u), -1684f);
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.b, _wgslsmith_f_op_f32(-1513f - arg_0.b)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1179f, arg_0.b) * vec2<f32>(var_1.b, var_1.b)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(-arg_0.b)))), select(vec2<bool>(arg_2.a.x, !arg_2.e.a), select(select(vec2<bool>(arg_2.e.a, arg_2.a.x), arg_2.a, arg_2.a.x), vec2<bool>(arg_2.a.x, false), !arg_2.a), select(select(vec2<bool>(true, arg_2.a.x), arg_2.a, arg_2.a), vec2<bool>(arg_2.e.a, false), vec2<bool>(arg_2.e.b, true))))) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.b * -488f))), -1161f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.b, _wgslsmith_f_op_f32(-var_1.b))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-522f))))));
    var var_2 = 28757u;
    return arg_2;
}

fn func_1(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = func_4(func_2(u_input.a.xx, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(588f - 505f))), _wgslsmith_div_f32(644f, -335f)))), -22467i, Struct_2(select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true)), vec2<bool>(true, false), vec2<bool>(true, true)), ~(-3536i), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(select(vec3<u32>(u_input.e.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.e.x, 164489u, 1u), true), u_input.a), u_input.a & _wgslsmith_mod_vec3_u32(vec3<u32>(54690u, u_input.a.x, u_input.a.x), vec3<u32>(4294967295u, u_input.e.x, 8869u))), -3300i, Struct_1(all(vec4<bool>(true, true, true, false)), true)));
    var_0 = func_4(func_2(~_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, var_0.c.x), vec2<u32>(var_0.c.x, var_0.c.x)), ~u_input.a.xx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-789f + _wgslsmith_f_op_f32(f32(-1f) * -928f)) * _wgslsmith_f_op_f32(max(1035f, -1323f)))), -reverseBits(i32(-1i) * -18614i), Struct_2(!var_0.a, arg_0.x, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, u_input.e.x), var_0.c & vec3<u32>(u_input.e.x, var_0.c.x, u_input.e.x)) & vec3<u32>(max(var_0.c.x, var_0.c.x), _wgslsmith_clamp_u32(var_0.c.x, u_input.a.x, var_0.c.x), ~80965u), _wgslsmith_mod_i32(-27464i, 2147483647i), func_4(Struct_4(u_input.c.xyw, -814f), min(-22176i, u_input.c.x), Struct_2(!vec2<bool>(false, var_0.e.b), _wgslsmith_mod_i32(-2147483647i, 1i), ~vec3<u32>(10697u, 0u, u_input.a.x), ~u_input.d.x, func_4(Struct_4(u_input.c.wwy, 1160f), arg_0.x, Struct_2(var_0.a, 0i, vec3<u32>(var_0.c.x, 36427u, 4294967295u), -2147483647i, Struct_1(true, false))).e)).e));
    let var_1 = Struct_2(select(vec2<bool>(!any(vec4<bool>(var_0.e.b, false, var_0.e.b, var_0.e.a)), any(!vec3<bool>(true, var_0.e.a, var_0.e.b))), func_4(Struct_4(vec3<i32>(-1i, 1i, 1i), _wgslsmith_f_op_f32(1158f - -686f)), firstTrailingBit(2147483647i), Struct_2(func_4(Struct_4(vec3<i32>(42826i, -2147483647i, -5388i), 997f), -42218i, Struct_2(var_0.a, var_0.b, var_0.c, 2147483647i, Struct_1(var_0.e.b, false))).a, countOneBits(var_0.d), vec3<u32>(4294967295u, var_0.c.x, 54657u), 1i, var_0.e)).a, var_0.a.x), u_input.c.x, ~max(var_0.c & _wgslsmith_mult_vec3_u32(u_input.a, var_0.c), max(var_0.c, _wgslsmith_sub_vec3_u32(u_input.a, u_input.a))), func_4(func_2(abs(~vec2<u32>(u_input.a.x, var_0.c.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-966f + 183f), -727f))), -_wgslsmith_add_i32(_wgslsmith_clamp_i32(arg_0.x, arg_0.x, 1i), -15702i), Struct_2(!vec2<bool>(var_0.e.b, var_0.a.x), -12383i, vec3<u32>(u_input.a.x, ~1u, 0u), countOneBits(arg_0.x) & 0i, func_4(func_2(vec2<u32>(var_0.c.x, var_0.c.x), 302f), -arg_0.x, func_4(Struct_4(vec3<i32>(var_0.d, -9923i, -1i), 1000f), 0i, Struct_2(var_0.a, 2147483647i, vec3<u32>(var_0.c.x, var_0.c.x, 1u), 30603i, Struct_1(var_0.e.a, false)))).e)).b, Struct_1(all(vec4<bool>(false, !var_0.a.x, var_0.e.b, true)), !func_4(Struct_4(arg_0.yyx, 112f), -var_0.d, Struct_2(vec2<bool>(var_0.e.a, var_0.a.x), var_0.b, vec3<u32>(u_input.e.x, 1u, 53598u), u_input.b, var_0.e)).e.a));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(497f, -980f, 445f) + vec3<f32>(393f, 759f, 420f))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(732f, 122f, 401f) * vec3<f32>(1000f, -1964f, -607f))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1f, -646f) + vec3<f32>(_wgslsmith_f_op_f32(trunc(637f)), -437f, -1286f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-648f, 647f, 247f), vec3<f32>(272f, -1609f, -1850f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(532f, -390f, 1192f), vec3<f32>(467f, 447f, 1091f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1537f, -1000f, 316f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-1644f, -252f, 474f), vec3<f32>(-866f, -294f, 745f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(558f, 1000f, -1679f)))))));
    var var_3 = arg_0.x;
    return Struct_2(vec2<bool>(any(!vec2<bool>(var_1.a.x, var_0.a.x)), !var_0.e.a), -var_1.d, var_1.c, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b, 26615i, var_0.d) & arg_0.wyy, -arg_0.xwx) & var_1.b), func_4(Struct_4(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.d, var_0.d, -2147483647i), u_input.c.xxz), _wgslsmith_f_op_f32(exp2(var_2.x))), u_input.b, Struct_2(!(!vec2<bool>(false, var_1.e.b)), 21672i, var_0.c, _wgslsmith_add_i32(1i, 1i), Struct_1(true, false))).e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.c);
    let var_1 = Struct_1(var_0.a.x, false);
    let var_2 = (_wgslsmith_mod_vec4_u32(~min(vec4<u32>(u_input.e.x, u_input.a.x, var_0.c.x, 1u), vec4<u32>(0u, 1u, 0u, u_input.a.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(62362u, 0u, var_0.c.x, 4294967295u) ^ vec4<u32>(u_input.a.x, 58521u, 4294967295u, var_0.c.x), select(vec4<u32>(1u, u_input.a.x, 25516u, var_0.c.x), vec4<u32>(u_input.e.x, u_input.e.x, 4294967295u, var_0.c.x), var_0.e.b))) >> (~firstLeadingBit(~vec4<u32>(u_input.a.x, var_0.c.x, 1u, var_0.c.x)) % vec4<u32>(32u))) << (_wgslsmith_add_vec4_u32(vec4<u32>(~57223u, func_1(u_input.c).c.x, u_input.a.x, 38940u), firstLeadingBit(vec4<u32>(5872u << (u_input.a.x % 32u), u_input.a.x, 28265u, ~var_0.c.x))) % vec4<u32>(32u));
    var_0 = func_1(~abs(-u_input.c));
    let var_3 = select(select(vec4<bool>((true & var_1.b) | !var_1.b, true, false, false), vec4<bool>(select(var_1.b, false == var_1.b, var_1.a), var_1.a, false, select(true, any(vec2<bool>(var_1.b, false)), true)), vec4<bool>(true, func_1(-vec4<i32>(0i, -2147483647i, var_0.b, -2147483647i)).a.x, !any(vec4<bool>(false, var_1.b, false, false)), !func_1(vec4<i32>(u_input.c.x, u_input.c.x, -1i, -44795i)).e.b)), !(!vec4<bool>(var_0.a.x, var_1.b, false, var_1.a)), select(any(!(!vec4<bool>(true, var_1.b, var_1.a, var_0.a.x))), all(select(vec3<bool>(var_1.a, var_0.a.x, true), select(vec3<bool>(true, false, var_0.e.a), vec3<bool>(var_1.a, var_0.a.x, var_0.a.x), vec3<bool>(true, var_0.a.x, var_0.a.x)), vec3<bool>(var_0.a.x, false, true))), true));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1335f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(428f * 1000f))))) - -106f);
    var_0 = func_1(~(u_input.c << (_wgslsmith_add_vec4_u32(~var_2, vec4<u32>(69001u, var_2.x, 17803u, 78722u) << (var_2 % vec4<u32>(32u))) % vec4<u32>(32u))));
    var_0 = Struct_2(vec2<bool>(!var_1.b, (false && !var_3.x) && var_1.b), -3495i, vec3<u32>(u_input.e.x << (~(~u_input.a.x) % 32u), u_input.e.x, 1u), ~abs(-1i), var_1);
    let var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2045f, _wgslsmith_f_op_f32(-829f + _wgslsmith_f_op_f32(min(-1474f, 220f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1553f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, 75466u);
}

