struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec2<bool>,
    d: Struct_1,
    e: f32,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: Struct_3,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 13>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_4 {
    let var_0 = true;
    var var_1 = abs(vec2<i32>(_wgslsmith_mult_i32(u_input.b.x, _wgslsmith_sub_i32(_wgslsmith_sub_i32(-2147483647i, u_input.b.x), 0i)), u_input.c));
    var_1 = -u_input.a.yx;
    let var_2 = !(!all(!select(vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(false, var_0, var_0, var_0), false)));
    var var_3 = ~firstLeadingBit(reverseBits(~vec3<u32>(4294967295u, 4294967295u, 38808u)));
    return Struct_4(Struct_2(Struct_1(!(!vec3<bool>(false, false, var_0)))), var_3.x, select(vec2<bool>(true, !any(vec4<bool>(var_0, false, var_0, true))), vec2<bool>(true, var_0), !var_0), Struct_1(!select(vec3<bool>(var_2, false, true), select(vec3<bool>(var_0, false, var_0), vec3<bool>(true, var_0, var_2), vec3<bool>(var_2, false, var_2)), true)), -1363f);
}

fn func_3(arg_0: Struct_4, arg_1: i32) -> Struct_3 {
    global0 = array<vec4<u32>, 13>();
    let var_0 = true;
    global0 = array<vec4<u32>, 13>();
    var var_1 = abs(abs(~_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.b, 1u), vec2<u32>(65862u, 1u), vec2<u32>(arg_0.b, 1u))) >> (vec2<u32>(1u, arg_0.b) % vec2<u32>(32u)));
    var_1 = firstLeadingBit(vec2<u32>(min(firstTrailingBit(arg_0.b), 1u), ~(~arg_0.b) | (1u | countOneBits(arg_0.b))));
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(310f)), arg_0.e) + -995f), Struct_2(arg_0.a.a), vec4<f32>(arg_0.e, arg_0.e, arg_0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2().e + _wgslsmith_f_op_f32(sign(arg_0.e))))));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec3<bool>) -> vec3<u32> {
    let var_0 = Struct_5(true, arg_0.b, func_3(Struct_4(arg_0.b, ~29544u, vec2<bool>(!arg_2.x, false), func_3(Struct_4(arg_0.b, 0u, vec2<bool>(arg_0.b.a.a.x, true), Struct_1(arg_2), 181f), arg_1).b.a, 2131f), -24189i).b.a, func_3(Struct_4(arg_0.b, 29554u, vec2<bool>(!arg_0.b.a.a.x, arg_0.b.a.a.x != arg_2.x), arg_0.b.a, arg_0.a), 0i), Struct_4(arg_0.b, select(~1u, 0u, select(false, arg_0.b.a.a.x, all(vec4<bool>(false, false, arg_0.b.a.a.x, false)))), !func_2().d.a.yy, func_3(Struct_4(func_3(Struct_4(arg_0.b, 1u, vec2<bool>(arg_0.b.a.a.x, false), arg_0.b.a, arg_0.a), -51600i).b, 1u, !arg_0.b.a.a.zx, func_3(Struct_4(arg_0.b, 0u, vec2<bool>(true, arg_2.x), arg_0.b.a, arg_0.a), 23276i).b.a, _wgslsmith_f_op_f32(189f + -293f)), max(u_input.d.x, u_input.c & -1i)).b.a, arg_0.a));
    global0 = array<vec4<u32>, 13>();
    global0 = array<vec4<u32>, 13>();
    global0 = array<vec4<u32>, 13>();
    var var_1 = u_input.a;
    return ~vec3<u32>(~firstTrailingBit(~4294967295u), ~(~42359u), var_0.e.b);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> Struct_3 {
    let var_0 = countOneBits(func_4(func_3(func_2(), 1i), u_input.b.x, select(!select(arg_0.a, arg_0.a, arg_0.a), arg_0.a, !(!vec3<bool>(arg_0.a.x, true, false)))));
    var var_1 = var_0.xz;
    var var_2 = Struct_5(true, Struct_2(arg_0), func_2().d, Struct_3(func_3(func_2(), countOneBits(u_input.a.x)).a, Struct_2(arg_0), vec4<f32>(876f, _wgslsmith_f_op_f32(trunc(-619f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(823f * 2439f)), _wgslsmith_f_op_f32(sign(1475f)))), func_2());
    global0 = array<vec4<u32>, 13>();
    var_2 = Struct_5(any(!select(!arg_0.a.yx, vec2<bool>(arg_0.a.x, arg_0.a.x), var_2.b.a.a.zz)), var_2.b, func_3(var_2.e, -(0i >> ((var_0.x ^ arg_1) % 32u))).b.a, var_2.d, func_2());
    return Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2297f, -415f)) * _wgslsmith_f_op_f32(step(var_2.d.a, var_2.d.c.x))) * 240f), _wgslsmith_f_op_f32(var_2.e.e * _wgslsmith_f_op_f32(ceil(-197f))), !(-314f != var_2.e.e))), Struct_2(var_2.d.b.a), var_2.d.c);
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: bool) -> vec2<u32> {
    global0 = array<vec4<u32>, 13>();
    global0 = array<vec4<u32>, 13>();
    let var_0 = -1i;
    global0 = array<vec4<u32>, 13>();
    global0 = array<vec4<u32>, 13>();
    return ~(~(~(~vec2<u32>(0u, 37508u))));
}

fn func_6(arg_0: bool, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_4(Struct_2(Struct_1(!select(vec3<bool>(true, arg_0, false), vec3<bool>(false, true, false), vec3<bool>(false, false, arg_0)))), func_2().b, func_3(Struct_4(Struct_2(func_3(Struct_4(Struct_2(Struct_1(vec3<bool>(arg_0, arg_0, false))), arg_1.x, vec2<bool>(arg_0, false), Struct_1(vec3<bool>(true, true, arg_0)), 621f), u_input.b.x).b.a), 64201u, !func_2().a.a.a.yx, func_2().d, 536f), u_input.a.x).b.a.a.xz, func_3(func_2(), ~(-(~u_input.c))).b.a, 1000f);
    var var_1 = Struct_5(false, Struct_2(var_0.a.a), func_1(var_0.a.a, var_0.b, func_5(func_3(Struct_4(Struct_2(var_0.a.a), arg_1.x, vec2<bool>(var_0.d.a.x, var_0.c.x), Struct_1(vec3<bool>(var_0.a.a.a.x, arg_0, arg_0)), -493f), reverseBits(u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e * var_0.e) + _wgslsmith_f_op_f32(-1000f * var_0.e)), (var_0.b <= 86747u) && arg_0).x).b.a, func_3(Struct_4(func_1(var_0.d, func_2().b, ~83573u).b, 17442u ^ var_0.b, vec2<bool>(true, false), var_0.a.a, -121f), -1i), Struct_4(var_0.a, select(_wgslsmith_dot_vec2_u32(min(arg_1, arg_1), ~arg_1), _wgslsmith_div_u32(arg_1.x, ~var_0.b), true), !(!var_0.c), func_1(var_0.a.a, var_0.b, max(min(4294967295u, var_0.b), 1u)).b.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.e, _wgslsmith_f_op_f32(var_0.e * -1000f)))));
    let var_2 = Struct_2(Struct_1(!func_1(Struct_1(vec3<bool>(arg_0, var_1.c.a.x, arg_0)), abs(1u), var_1.e.b).b.a.a));
    let var_3 = select(firstLeadingBit(_wgslsmith_sub_vec2_i32(u_input.d.wz, firstLeadingBit(vec2<i32>(1i, 49557i)))), firstLeadingBit(vec2<i32>(max(2147483647i, -2147483647i), u_input.e)) ^ vec2<i32>(-abs(13526i), -firstTrailingBit(0i)), ~(u_input.b.x >> (4558u % 32u)) > (_wgslsmith_div_i32(~2147483647i, u_input.b.x) << (~(~var_1.e.b) % 32u)));
    var var_4 = Struct_1(vec3<bool>(all(!vec4<bool>(arg_0, false, false, false)), all(select(select(vec4<bool>(true, var_2.a.a.x, var_1.c.a.x, var_2.a.a.x), vec4<bool>(var_0.a.a.a.x, var_0.d.a.x, true, arg_0), false), vec4<bool>(false, false, var_1.b.a.a.x, true), vec4<bool>(var_0.d.a.x, var_2.a.a.x, arg_0, var_1.c.a.x))), arg_0));
    return Struct_1(!vec3<bool>(!var_2.a.a.x, countOneBits(var_3.x) == _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 0i, var_3.x, u_input.a.x), u_input.d), !any(var_4.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 13>();
    let var_0 = func_6(any(!select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), true)), ~_wgslsmith_mod_vec2_u32(func_5(func_1(Struct_1(vec3<bool>(false, true, true)), 12571u, 4294967295u), 254f, true), ~func_4(Struct_3(-873f, Struct_2(Struct_1(vec3<bool>(true, true, false))), vec4<f32>(-893f, -357f, 416f, -332f)), 34308i, vec3<bool>(true, true, true)).yy));
    let var_1 = _wgslsmith_mod_vec4_i32(~(u_input.d & select(~u_input.b, u_input.b, vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false))), vec4<i32>(-1i) * -u_input.d);
    let var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(firstTrailingBit(-(vec2<i32>(var_1.x, var_1.x) ^ vec2<i32>(u_input.c, -48217i))), vec2<i32>(firstLeadingBit(abs(var_1.x)), abs(select(u_input.a.x, var_1.x, false)))), _wgslsmith_sub_vec2_i32(~_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(2302i, 3776i), vec2<i32>(0i, 1i), var_1.zz), -vec2<i32>(u_input.a.x, -1i)), vec2<i32>(0i, ~52943i)));
    var var_3 = Struct_4(func_3(func_2(), _wgslsmith_clamp_i32(24313i, _wgslsmith_add_i32(abs(var_2), var_2 | 32718i), ~(~(-2644i)))).b, 1u, var_0.a.zx, func_1(var_0, 4294967295u, _wgslsmith_add_u32(func_5(func_3(Struct_4(Struct_2(var_0), 4294967295u, var_0.a.zx, var_0, 1239f), var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1185f), false).x, reverseBits(countOneBits(20375u)))).b.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-403f - _wgslsmith_div_f32(582f, 174f)))), 1f, var_0.a.x)));
    var_3 = Struct_4(Struct_2(Struct_1(!select(var_0.a, var_3.a.a.a, var_0.a))), ~max(var_3.b, 4294967295u ^ max(var_3.b, 19569u)), func_2().d.a.yy, func_3(Struct_4(var_3.a, var_3.b, !func_1(Struct_1(var_3.d.a), 1u, 1u).b.a.a.zx, Struct_1(!vec3<bool>(var_0.a.x, false, var_3.c.x)), _wgslsmith_f_op_f32(var_3.e + _wgslsmith_f_op_f32(-var_3.e))), abs(5753i)).b.a, var_3.e);
    var var_4 = func_3(Struct_4(Struct_2(func_6(true, vec2<u32>(56385u, 0u) >> (vec2<u32>(var_3.b, 10759u) % vec2<u32>(32u)))), 34754u, func_1(func_3(Struct_4(Struct_2(var_3.a.a), 1u, vec2<bool>(true, var_3.d.a.x), var_3.a.a, 744f), 1i).b.a, 35908u, countOneBits(var_3.b & 33681u)).b.a.a.xz, var_3.a.a, _wgslsmith_f_op_f32(exp2(var_3.e))), _wgslsmith_clamp_i32(firstLeadingBit(i32(-1i) * -var_1.x), var_2, -1i)).c.xzz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(880f * -298f) + var_4.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1196f, -1000f)) + _wgslsmith_f_op_f32(-118f * -526f)), -1412f)), reverseBits(~(~vec3<u32>(var_3.b, var_3.b, var_3.b))) >> (select(countOneBits(~vec3<u32>(1u, 17369u, var_3.b)), reverseBits(vec3<u32>(var_3.b, var_3.b, 63592u) | vec3<u32>(var_3.b, 34953u, var_3.b)), select(!var_3.a.a.a, !var_3.a.a.a, var_0.a.x)) % vec3<u32>(32u)));
}

