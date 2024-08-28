struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_3,
    d: vec4<i32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: vec4<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 14> = array<vec2<f32>, 14>(vec2<f32>(-393f, -399f), vec2<f32>(-954f, -588f), vec2<f32>(-584f, 722f), vec2<f32>(708f, -752f), vec2<f32>(-1796f, 1173f), vec2<f32>(1119f, 982f), vec2<f32>(2516f, -540f), vec2<f32>(148f, 671f), vec2<f32>(-2365f, 268f), vec2<f32>(1156f, -1166f), vec2<f32>(480f, 677f), vec2<f32>(1986f, 651f), vec2<f32>(-928f, 211f), vec2<f32>(560f, 121f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_5, arg_2: vec3<i32>, arg_3: u32) -> vec2<i32> {
    global0 = array<vec2<f32>, 14>();
    global0 = array<vec2<f32>, 14>();
    var var_0 = arg_1.c.x;
    let var_1 = Struct_5(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.d, ~1u), min(u_input.a, vec2<u32>(~1u, 721u))), arg_1.b, vec4<bool>(!(arg_0.b.b.x | false), true, arg_0.b.c.x, true), 16570u & u_input.e);
    var var_2 = vec4<i32>(-70831i, -2147483647i, -1i, 1i) & _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-1i, 0i), -arg_0.d.x, abs(arg_0.b.a), -19169i), vec4<i32>(-34172i, arg_0.a.a | -23116i, arg_2.x, _wgslsmith_sub_i32(arg_2.x, u_input.d))), _wgslsmith_sub_vec4_i32(vec4<i32>(-5891i, -1i, -9850i, 0i), arg_0.d) | arg_0.d, select(-vec4<i32>(24224i, arg_1.b.a.c, 1i, var_1.b.a.c), vec4<i32>(arg_2.x, u_input.d, arg_0.d.x, 0i) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 4294967295u, arg_3), u_input.c, vec4<u32>(4294967295u, arg_1.d, arg_3, 7298u)) % vec4<u32>(32u)), select(!vec4<bool>(arg_0.b.c.x, arg_1.c.x, var_1.b.a.b.x, arg_1.c.x), !arg_1.b.a.b, arg_1.b.a.a)));
    return firstLeadingBit(arg_0.d.zx);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_2, arg_2: i32) -> Struct_4 {
    var var_0 = vec2<i32>(min(2147483647i, ~(43463i >> (0u % 32u))), -751i);
    var_0 = abs(select(-(vec2<i32>(0i, var_0.x) ^ arg_0.d.wy), firstLeadingBit(func_3(arg_0, Struct_5(4294967295u, arg_1, vec4<bool>(false, true, false, arg_1.a.b.x), 1u), arg_0.d.zyy, ~arg_0.c.d)), true));
    var_0 = arg_0.d.yx;
    global0 = array<vec2<f32>, 14>();
    var var_1 = arg_0.c;
    return arg_0;
}

fn func_4(arg_0: Struct_5, arg_1: u32, arg_2: Struct_4) -> u32 {
    var var_0 = Struct_5(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(_wgslsmith_mod_u32(arg_1, 548u), arg_0.d, arg_1, 20627u)), vec4<u32>(_wgslsmith_div_u32(u_input.e, 69311u) | _wgslsmith_mult_u32(u_input.e, 20968u), _wgslsmith_add_u32(arg_2.a.d, ~u_input.c.x), firstTrailingBit(u_input.b.x) & 84744u, ~_wgslsmith_div_u32(u_input.b.x, arg_0.d))), arg_0.b, select(vec4<bool>(u_input.a.x > (arg_1 | arg_2.b.d), !all(vec3<bool>(arg_0.b.a.a, false, arg_2.b.c.x)), !arg_0.c.x, true), select(!arg_0.b.a.b, vec4<bool>(all(vec4<bool>(true, arg_2.c.c.x, arg_2.a.c.x, false)), arg_0.d <= arg_0.d, select(false, true, true), arg_2.b.c.x), !(!vec4<bool>(true, arg_2.b.c.x, false, arg_2.a.b.x))), !all(vec3<bool>(false, true, arg_2.c.b.x))), ~(~select(_wgslsmith_mod_u32(arg_0.a, u_input.a.x), 1u, true)));
    var_0 = arg_0;
    var_0 = Struct_5(_wgslsmith_mod_u32(_wgslsmith_div_u32(firstTrailingBit(arg_0.a), arg_0.a), ~func_2(Struct_4(Struct_3(arg_2.a.a, vec3<bool>(arg_0.c.x, var_0.c.x, false), vec2<bool>(arg_2.c.c.x, arg_2.b.c.x), var_0.d), arg_2.a, Struct_3(arg_0.b.a.c, arg_2.c.b, vec2<bool>(true, false), arg_1), arg_2.d), Struct_2(var_0.b.a), _wgslsmith_mod_i32(var_0.b.a.c, 24074i)).c.d), var_0.b, arg_0.b.a.b, 0u);
    var_0 = arg_0;
    global0 = array<vec2<f32>, 14>();
    return _wgslsmith_mod_u32(u_input.e, 67950u);
}

fn func_5(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_4, arg_3: u32) -> vec4<bool> {
    global0 = array<vec2<f32>, 14>();
    global0 = array<vec2<f32>, 14>();
    global0 = array<vec2<f32>, 14>();
    var var_0 = Struct_2(Struct_1(arg_2.c.b.x, !(!(!vec4<bool>(arg_2.a.c.x, arg_2.c.b.x, arg_2.b.c.x, true))), ~u_input.d));
    let var_1 = Struct_5(0u & (arg_3 | func_4(Struct_5(0u, Struct_2(Struct_1(false, vec4<bool>(arg_2.b.c.x, true, true, arg_2.a.c.x), 1i)), vec4<bool>(false, arg_2.c.b.x, true, false), arg_2.b.d), 1u, Struct_4(arg_2.a, arg_2.c, Struct_3(var_0.a.c, arg_2.b.b, vec2<bool>(arg_2.b.c.x, arg_2.a.b.x), 4294967295u), vec4<i32>(u_input.d, u_input.d, arg_0.x, arg_0.x)))), Struct_2(Struct_1(!var_0.a.a || var_0.a.b.x, !vec4<bool>(arg_2.c.c.x, true, false, arg_2.b.c.x), -_wgslsmith_add_i32(0i, arg_2.a.a))), !select(!select(vec4<bool>(arg_2.a.c.x, var_0.a.a, false, false), vec4<bool>(var_0.a.b.x, false, var_0.a.b.x, false), true), select(var_0.a.b, !vec4<bool>(false, arg_2.a.c.x, true, false), vec4<bool>(var_0.a.a, false, var_0.a.b.x, var_0.a.a)), var_0.a.b), _wgslsmith_dot_vec3_u32(~u_input.c.xww, u_input.c.zxx));
    return !select(vec4<bool>(true, any(var_0.a.b) != any(arg_2.c.b), 35283u > ~arg_1, true), select(vec4<bool>(false, true, all(arg_2.c.b), true), select(var_1.c, var_0.a.b, !var_0.a.a), (-7930i << (u_input.a.x % 32u)) != reverseBits(arg_2.a.a)), select(select(vec4<bool>(false, var_0.a.a, var_0.a.b.x, var_0.a.a), !var_0.a.b, select(var_1.b.a.b, vec4<bool>(false, var_0.a.b.x, var_1.b.a.a, arg_2.c.b.x), var_1.c.x)), !vec4<bool>(arg_2.c.b.x, false, true, false), !var_0.a.b));
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: Struct_3) -> Struct_5 {
    let var_0 = Struct_4(func_2(func_2(func_2(func_2(Struct_4(arg_3, Struct_3(arg_3.a, arg_3.b, arg_1.c, u_input.c.x), Struct_3(-15049i, arg_0.yyy, arg_3.b.yy, u_input.b.x), vec4<i32>(arg_3.a, 2147483647i, u_input.d, 2147483647i)), Struct_2(Struct_1(arg_0.x, vec4<bool>(false, arg_3.b.x, true, arg_1.b.x), arg_2.x)), -1i), Struct_2(Struct_1(false, arg_0, 1i)), arg_1.a << (27389u % 32u)), Struct_2(Struct_1(arg_1.c.x, vec4<bool>(true, arg_3.b.x, arg_1.c.x, true), 15446i)), -arg_3.a), Struct_2(Struct_1(true, select(vec4<bool>(true, false, true, arg_1.b.x), arg_0, true), 21847i)), -_wgslsmith_mod_i32(~arg_1.a, arg_1.a)).a, func_2(Struct_4(func_2(Struct_4(arg_1, Struct_3(u_input.d, arg_1.b, vec2<bool>(arg_1.c.x, arg_3.c.x), 573u), Struct_3(u_input.d, arg_3.b, arg_0.zw, 0u), vec4<i32>(arg_3.a, 39450i, arg_3.a, u_input.d)), Struct_2(Struct_1(false, vec4<bool>(false, arg_0.x, arg_3.b.x, false), u_input.d)), ~2147483647i).a, arg_1, func_2(Struct_4(Struct_3(31078i, arg_3.b, vec2<bool>(arg_3.c.x, arg_1.c.x), 22573u), arg_1, arg_3, vec4<i32>(arg_2.x, -2147483647i, 2147483647i, -2147483647i)), Struct_2(Struct_1(arg_1.c.x, arg_0, 0i)), arg_3.a).a, -_wgslsmith_clamp_vec4_i32(vec4<i32>(12503i, arg_3.a, -2147483647i, -6518i), vec4<i32>(arg_2.x, u_input.d, 53410i, arg_2.x), vec4<i32>(u_input.d, -8101i, arg_1.a, 1i))), Struct_2(Struct_1(true, arg_0, firstLeadingBit(42682i))), u_input.d << ((~arg_3.d ^ arg_1.d) % 32u)).a, arg_3, abs(vec4<i32>(-63502i, arg_2.x, arg_3.a, arg_1.a) << (u_input.c % vec4<u32>(32u))));
    let var_1 = var_0.a;
    let var_2 = Struct_2(Struct_1(arg_0.x, arg_0, -(arg_2.x | var_1.a)));
    global0 = array<vec2<f32>, 14>();
    global0 = array<vec2<f32>, 14>();
    return Struct_5(~func_2(func_2(func_2(var_0, var_2, -1i), Struct_2(Struct_1(true, var_2.a.b, 2147483647i)), -2147483647i & arg_2.x), Struct_2(Struct_1(var_1.b.x, arg_0, u_input.d)), ~u_input.d | -2147483647i).a.d, var_2, !arg_0, ~arg_1.d);
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> StorageBuffer {
    var var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(21690i, i32(-1i) * -2147483647i), -(~(-vec2<i32>(-15869i, u_input.d)) << (arg_1.xx % vec2<u32>(32u))));
    let var_1 = func_6(func_5(countOneBits(~(-vec3<i32>(var_0.x, var_0.x, -1i))), firstTrailingBit(func_4(Struct_5(10493u, Struct_2(Struct_1(true, vec4<bool>(false, false, false, false), u_input.d)), vec4<bool>(false, false, false, true), u_input.a.x), arg_1.x, func_2(Struct_4(Struct_3(75972i, vec3<bool>(true, false, true), vec2<bool>(true, true), u_input.c.x), Struct_3(u_input.d, vec3<bool>(true, true, false), vec2<bool>(false, true), 38099u), Struct_3(2147483647i, vec3<bool>(false, false, true), vec2<bool>(false, false), 23334u), vec4<i32>(1i, -1i, 4982i, var_0.x)), Struct_2(Struct_1(false, vec4<bool>(true, true, false, true), 0i)), var_0.x))), Struct_4(Struct_3(select(u_input.d, u_input.d, true), vec3<bool>(true, true, false), vec2<bool>(true, true), 36067u ^ u_input.b.x), func_2(func_2(Struct_4(Struct_3(u_input.d, vec3<bool>(true, false, true), vec2<bool>(false, false), u_input.e), Struct_3(u_input.d, vec3<bool>(false, true, true), vec2<bool>(false, true), 4294967295u), Struct_3(78238i, vec3<bool>(true, false, true), vec2<bool>(false, false), arg_1.x), vec4<i32>(1i, 24274i, var_0.x, u_input.d)), Struct_2(Struct_1(true, vec4<bool>(true, false, false, false), var_0.x)), var_0.x), Struct_2(Struct_1(true, vec4<bool>(false, true, false, true), var_0.x)), -2147483647i).b, func_2(Struct_4(Struct_3(var_0.x, vec3<bool>(false, false, true), vec2<bool>(true, false), arg_0), Struct_3(-1i, vec3<bool>(false, false, false), vec2<bool>(true, true), arg_0), Struct_3(u_input.d, vec3<bool>(true, true, false), vec2<bool>(false, false), arg_0), vec4<i32>(-1i, u_input.d, var_0.x, 23486i)), Struct_2(Struct_1(true, vec4<bool>(true, true, false, false), var_0.x)), -u_input.d).a, reverseBits(-vec4<i32>(var_0.x, 1i, var_0.x, var_0.x))), arg_1.x), Struct_3(~u_input.d, !func_2(func_2(Struct_4(Struct_3(-1i, vec3<bool>(false, true, true), vec2<bool>(true, true), u_input.b.x), Struct_3(u_input.d, vec3<bool>(false, false, false), vec2<bool>(false, false), arg_1.x), Struct_3(var_0.x, vec3<bool>(true, true, true), vec2<bool>(true, false), arg_1.x), vec4<i32>(var_0.x, var_0.x, var_0.x, u_input.d)), Struct_2(Struct_1(false, vec4<bool>(false, false, false, true), -6848i)), -3581i), Struct_2(Struct_1(false, vec4<bool>(false, true, true, true), -33277i)), var_0.x).a.b, !(!select(vec2<bool>(false, false), vec2<bool>(true, false), false)), 4294967295u), countOneBits(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(u_input.d, 0i)), vec2<i32>(-2147483647i, u_input.d) & vec2<i32>(var_0.x, 19189i)), firstTrailingBit(~vec2<i32>(u_input.d, 16340i)))), Struct_3(u_input.d, select(vec3<bool>(true, true, true), func_5(vec3<i32>(-37449i, var_0.x, u_input.d), arg_0, func_2(Struct_4(Struct_3(var_0.x, vec3<bool>(true, false, false), vec2<bool>(false, false), 0u), Struct_3(var_0.x, vec3<bool>(true, true, true), vec2<bool>(true, false), 24008u), Struct_3(-1i, vec3<bool>(false, true, true), vec2<bool>(true, false), 57082u), vec4<i32>(0i, var_0.x, 2147483647i, -1i)), Struct_2(Struct_1(true, vec4<bool>(false, false, true, false), var_0.x)), var_0.x), u_input.b.x).zwy, func_2(func_2(Struct_4(Struct_3(32233i, vec3<bool>(false, true, false), vec2<bool>(true, false), 0u), Struct_3(51624i, vec3<bool>(false, false, true), vec2<bool>(true, true), 4294967295u), Struct_3(-17190i, vec3<bool>(true, false, false), vec2<bool>(true, true), 12074u), vec4<i32>(-9552i, u_input.d, -34599i, u_input.d)), Struct_2(Struct_1(true, vec4<bool>(true, false, true, true), 1i)), 0i), Struct_2(Struct_1(false, vec4<bool>(true, false, false, false), 0i)), ~(-18891i)).c.b), vec2<bool>(true, true), ~(func_2(Struct_4(Struct_3(var_0.x, vec3<bool>(false, false, false), vec2<bool>(true, false), 4294967295u), Struct_3(var_0.x, vec3<bool>(false, true, true), vec2<bool>(true, false), arg_1.x), Struct_3(-5706i, vec3<bool>(false, true, true), vec2<bool>(false, true), 4371u), vec4<i32>(var_0.x, -2147483647i, u_input.d, 1i)), Struct_2(Struct_1(false, vec4<bool>(true, true, true, true), u_input.d)), -57108i).c.d >> (68563u % 32u))));
    let var_2 = arg_1.x | ~var_1.a;
    let var_3 = func_6(var_1.c, func_2(func_2(func_2(func_2(Struct_4(Struct_3(-2147483647i, var_1.c.yzw, vec2<bool>(false, true), arg_0), Struct_3(u_input.d, var_1.b.a.b.xzy, var_1.c.yy, var_2), Struct_3(0i, var_1.b.a.b.zww, var_1.c.xz, var_1.a), vec4<i32>(var_0.x, 2147483647i, var_0.x, var_0.x)), Struct_2(Struct_1(false, var_1.c, 2147483647i)), var_0.x), var_1.b, func_6(var_1.c, Struct_3(1256i, vec3<bool>(var_1.c.x, var_1.b.a.b.x, true), vec2<bool>(var_1.b.a.a, var_1.c.x), u_input.c.x), vec2<i32>(u_input.d, 36103i), Struct_3(var_0.x, var_1.c.wyw, vec2<bool>(false, false), 21605u)).b.a.c), var_1.b, _wgslsmith_mult_i32(~u_input.d, -var_0.x)), Struct_2(var_1.b.a), var_1.b.a.c).a, _wgslsmith_sub_vec2_i32(vec2<i32>(55321i, select(~(-1485i), ~var_1.b.a.c, var_1.c.x)), firstLeadingBit((vec2<i32>(var_1.b.a.c, -2147483647i) >> (vec2<u32>(u_input.b.x, u_input.c.x) % vec2<u32>(32u))) << (vec2<u32>(var_2, u_input.a.x) % vec2<u32>(32u)))), func_2(Struct_4(func_2(Struct_4(Struct_3(var_0.x, var_1.c.yxw, var_1.c.yx, var_1.d), Struct_3(u_input.d, vec3<bool>(var_1.c.x, false, false), vec2<bool>(false, var_1.b.a.b.x), arg_1.x), Struct_3(-19829i, var_1.c.www, vec2<bool>(var_1.c.x, true), var_2), vec4<i32>(1i, -1i, -1i, 1i)), func_6(var_1.c, Struct_3(u_input.d, vec3<bool>(true, false, true), var_1.b.a.b.xx, 24285u), vec2<i32>(u_input.d, var_1.b.a.c), Struct_3(-2147483647i, var_1.b.a.b.yww, vec2<bool>(true, false), 111038u)).b, u_input.d).a, Struct_3(var_1.b.a.c, !vec3<bool>(true, var_1.c.x, false), select(var_1.c.zx, vec2<bool>(var_1.c.x, var_1.c.x), var_1.b.a.a), min(77418u, 1u)), Struct_3(u_input.d, !var_1.b.a.b.xxy, !vec2<bool>(false, var_1.c.x), countOneBits(var_1.a)), abs(-vec4<i32>(2147483647i, -1i, u_input.d, var_1.b.a.c))), func_6(select(func_5(vec3<i32>(1i, var_1.b.a.c, -2147483647i), 53493u, Struct_4(Struct_3(u_input.d, vec3<bool>(false, false, true), vec2<bool>(var_1.b.a.a, true), var_1.a), Struct_3(u_input.d, vec3<bool>(var_1.b.a.b.x, var_1.c.x, false), vec2<bool>(true, var_1.c.x), arg_1.x), Struct_3(var_0.x, vec3<bool>(var_1.c.x, var_1.b.a.b.x, var_1.b.a.b.x), var_1.b.a.b.xx, 1u), vec4<i32>(39033i, u_input.d, 42016i, 24159i)), u_input.b.x), var_1.c, !var_1.c), func_2(func_2(Struct_4(Struct_3(var_1.b.a.c, var_1.c.zzx, var_1.c.wz, arg_0), Struct_3(-1i, vec3<bool>(var_1.b.a.a, var_1.b.a.a, var_1.b.a.b.x), vec2<bool>(true, false), 1u), Struct_3(-5130i, vec3<bool>(true, var_1.c.x, false), var_1.c.yz, 0u), vec4<i32>(var_1.b.a.c, -33069i, 1i, 12244i)), Struct_2(Struct_1(true, var_1.c, u_input.d)), var_1.b.a.c), var_1.b, firstLeadingBit(var_0.x)).b, vec2<i32>(-1i) * -vec2<i32>(u_input.d, -16346i), Struct_3(16361i, !vec3<bool>(true, false, var_1.b.a.a), vec2<bool>(true, true), func_2(Struct_4(Struct_3(-13250i, var_1.c.zwz, vec2<bool>(false, var_1.c.x), 33012u), Struct_3(var_0.x, var_1.b.a.b.wwz, vec2<bool>(false, true), 1u), Struct_3(u_input.d, var_1.b.a.b.xxw, var_1.c.wy, var_1.d), vec4<i32>(var_1.b.a.c, u_input.d, -14095i, 1i)), var_1.b, -45195i).c.d)).b, -1538i).c).b.a;
    let var_4 = vec4<i32>(1i, _wgslsmith_div_i32(-2147483647i, firstLeadingBit(-1i) & firstLeadingBit(u_input.d)), -(~countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-54984i, 10655i, 36373i), vec3<i32>(var_3.c, 0i, 36510i)))), 1i);
    return StorageBuffer(arg_1, var_4, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(global0[_wgslsmith_index_u32(arg_0, 14u)])), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-688f, -2198f))), !var_3.b.wy))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(1u, 14u)] + vec2<f32>(1000f, -1517f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-121f, 1903f), vec2<f32>(-712f, 613f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global0[_wgslsmith_index_u32(1u, 14u)]))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(782f + 1288f) + _wgslsmith_f_op_f32(f32(-1f) * -635f)), 580f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-477f, -795f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(499f))))), _wgslsmith_add_vec2_i32(var_4.xz, var_4.wx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(u_input.d, ~32552i, 15538i) & -reverseBits(-vec3<i32>(u_input.d, 44977i, u_input.d));
    let x = u_input.a;
    s_output = func_1(reverseBits(reverseBits(4294967295u)), ~vec4<u32>(~(~39873u), u_input.c.x ^ min(32420u, u_input.e), abs(0u) >> (firstLeadingBit(u_input.e) % 32u), u_input.a.x));
}

