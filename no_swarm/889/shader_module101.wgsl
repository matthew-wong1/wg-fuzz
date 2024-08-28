struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: f32,
    d: Struct_3,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), -1i, -67275i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_4, arg_3: bool) -> vec3<i32> {
    return vec3<i32>(arg_0, -(~arg_2.b & (arg_2.a.b.a.x >> (arg_2.a.a % 32u))), _wgslsmith_dot_vec2_i32(-firstLeadingBit(arg_2.a.b.a.xy), arg_1.c.a.xz ^ firstLeadingBit(vec2<i32>(11147i, 1i)))) & abs(firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -40091i, u_input.a, arg_2.b), vec4<i32>(7018i, 0i, -4036i, arg_0)), global0.x >> (1u % 32u), arg_2.a.c.a.x)));
}

fn func_2(arg_0: vec4<u32>) -> vec3<i32> {
    let var_0 = Struct_3(55895u);
    global0 = _wgslsmith_mult_vec3_i32(~vec3<i32>(global0.x, max(~2147483647i, ~global0.x), -1i), -abs(~_wgslsmith_add_vec3_i32(vec3<i32>(38641i, 34847i, 0i), vec3<i32>(29320i, u_input.a, global0.x))));
    let var_1 = arg_0.x;
    let var_2 = Struct_1(~func_3(u_input.a, Struct_2(33519u, Struct_1(vec3<i32>(global0.x, 1i, -6124i), vec4<bool>(true, false, false, false), var_0.a), Struct_1(vec3<i32>(global0.x, -1i, 1i), vec4<bool>(true, true, true, false), arg_0.x), 514f, false), Struct_4(Struct_2(var_0.a, Struct_1(vec3<i32>(-5256i, u_input.a, 2147483647i), vec4<bool>(true, true, true, false), 15108u), Struct_1(vec3<i32>(-74047i, u_input.a, -9619i), vec4<bool>(true, false, true, true), 0u), 348f, true), 20880i, 799f, Struct_3(var_0.a), vec2<f32>(1311f, -484f)), select(false, true, true)) >> (vec3<u32>(~(~var_0.a), _wgslsmith_div_u32(countOneBits(arg_0.x), ~0u), var_0.a) % vec3<u32>(32u)), select(vec4<bool>(any(vec4<bool>(true, true, true, true)), true, true, all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)))), select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), all(vec2<bool>(true, true)) && true), false), ~37857u);
    global0 = vec3<i32>(~(-(global0.x << (24533u % 32u))), ~var_2.a.x, select(_wgslsmith_div_i32(1i, -1i), ~var_2.a.x, false)) << (max(vec3<u32>(4294967295u, ~22062u, var_1), arg_0.yww) % vec3<u32>(32u));
    return var_2.a >> (~_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_0.x, 6546u, 4294967295u), reverseBits(vec3<u32>(4294967295u, 5356u, 4294967295u))) % vec3<u32>(32u));
}

fn func_4(arg_0: Struct_2) -> vec3<i32> {
    global0 = abs(func_2(vec4<u32>(_wgslsmith_clamp_u32(1u, arg_0.b.c, arg_0.a), arg_0.a, _wgslsmith_div_u32(arg_0.b.c, 32125u), select(57553u, 54342u, arg_0.c.b.x)))) | _wgslsmith_div_vec3_i32(select(arg_0.c.a, vec3<i32>(-1i, -1i, arg_0.c.a.x), false), vec3<i32>(-8508i, select(min(2974i, u_input.a), global0.x, any(arg_0.b.b.xx)), 2147483647i));
    global0 = select(func_3(u_input.a, arg_0, Struct_4(Struct_2(arg_0.b.c, arg_0.c, Struct_1(arg_0.b.a, arg_0.b.b, arg_0.b.c), 161f, arg_0.c.b.x), -41256i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d) - -1000f), Struct_3(arg_0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-223f, 105f))), all(select(select(arg_0.c.b.xwx, vec3<bool>(false, arg_0.c.b.x, false), arg_0.b.b.x), vec3<bool>(false, arg_0.b.b.x, arg_0.c.b.x), !vec3<bool>(arg_0.c.b.x, true, arg_0.b.b.x)))), arg_0.c.a, !arg_0.c.b.x);
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(-232f, _wgslsmith_f_op_f32(ceil(arg_0.d))), arg_0.d, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_0.d, -1185f, false)))), _wgslsmith_f_op_f32(arg_0.d * _wgslsmith_f_op_f32(1503f * -377f))), vec4<f32>(1f, _wgslsmith_f_op_f32(sign(arg_0.d)), arg_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-191f)) - _wgslsmith_div_f32(arg_0.d, -244f))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.d, -643f, arg_0.d, -722f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-290f, arg_0.d, 158f, -1584f)))), vec4<f32>(arg_0.d, arg_0.d, arg_0.d, _wgslsmith_f_op_f32(-arg_0.d))));
    global0 = arg_0.c.a;
    var var_1 = Struct_4(arg_0, -1i, _wgslsmith_f_op_f32(var_0.x - -728f), Struct_3(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_0.c.c, arg_0.a, 1u, 6389u)), vec4<u32>(arg_0.c.c, ~arg_0.b.c, arg_0.b.c, firstLeadingBit(1772u)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), _wgslsmith_f_op_vec2_f32(min(var_0.wx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1000f)))))));
    return vec3<i32>(-19386i, countOneBits(abs(select(global0.x, func_2(vec4<u32>(arg_0.b.c, var_1.a.b.c, arg_0.b.c, var_1.a.c.c)).x, true))), ~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, arg_0.c.a.x, var_1.b), vec4<i32>(u_input.a, u_input.a, -2147483647i, var_1.a.b.a.x)) >> (var_1.d.a % 32u), var_1.b));
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    global0 = arg_0.b.a & arg_0.b.a;
    global0 = func_4(Struct_2(0u, arg_0.b, Struct_1(max(func_2(vec4<u32>(arg_0.c.c, arg_0.c.c, arg_0.c.c, arg_0.c.c)), -vec3<i32>(-1i, 44214i, -1i)), !select(arg_0.b.b, arg_0.c.b, arg_0.c.b), arg_0.c.c), arg_0.d, arg_0.e));
    global0 = vec3<i32>(i32(-1i) * -global0.x, -22487i, u_input.a);
    var var_0 = arg_0.b;
    global0 = ~(~var_0.a);
    return Struct_3(~select(~_wgslsmith_add_u32(var_0.c, 63953u), _wgslsmith_add_u32(max(0u, arg_0.a), reverseBits(arg_0.a)), false));
}

fn func_5(arg_0: Struct_4, arg_1: u32, arg_2: Struct_3, arg_3: vec2<i32>) -> vec3<bool> {
    var var_0 = arg_0.a.c;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(455f - arg_0.c));
    let var_2 = func_1(arg_0.a);
    var_1 = arg_0.e.x;
    var_0 = Struct_1(vec3<i32>(-55196i, firstTrailingBit(arg_3.x), func_2(~firstLeadingBit(vec4<u32>(arg_2.a, arg_1, arg_2.a, arg_0.d.a))).x), !vec4<bool>(true, var_0.b.x, true, func_3(31995i, Struct_2(41562u, arg_0.a.c, arg_0.a.c, 361f, false), arg_0, true).x <= ~(-1i)), firstLeadingBit(0u));
    return !vec3<bool>(!arg_0.a.e, all(!vec3<bool>(arg_0.a.b.b.x, var_0.b.x, var_0.b.x)), any(select(select(vec3<bool>(true, false, var_0.b.x), var_0.b.xzy, vec3<bool>(true, false, false)), vec3<bool>(var_0.b.x, false, arg_0.a.c.b.x), vec3<bool>(true, true, true))));
}

fn func_6(arg_0: vec3<bool>, arg_1: i32) -> Struct_1 {
    global0 = _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(~(-11876i), arg_1, arg_1 >> (0u % 32u)), vec3<i32>(-112i, 1i, arg_1)), vec3<i32>(abs(max(0i, 1i)), (-2147483647i & global0.x) << (firstTrailingBit(4294967295u) % 32u), -30501i)), vec3<i32>(_wgslsmith_mult_i32(-1i, func_4(Struct_2(1u, Struct_1(vec3<i32>(arg_1, u_input.a, 2147483647i), vec4<bool>(false, true, false, arg_0.x), 4294967295u), Struct_1(vec3<i32>(-2147483647i, -19486i, u_input.a), vec4<bool>(arg_0.x, true, true, false), 1u), -224f, arg_0.x)).x), _wgslsmith_mod_i32(countOneBits(i32(-1i) * -6866i), _wgslsmith_mod_i32(global0.x, global0.x) ^ global0.x), global0.x));
    var var_0 = !select(!select(select(vec4<bool>(arg_0.x, true, false, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, true), true), select(vec4<bool>(arg_0.x, arg_0.x, true, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)), select(vec4<bool>(true, false, arg_0.x, false), vec4<bool>(true, false, arg_0.x, true), arg_0.x)), vec4<bool>(true, all(vec4<bool>(arg_0.x, false, arg_0.x, false)), true || arg_0.x, true), false);
    var var_1 = Struct_1(-(~_wgslsmith_add_vec3_i32(~vec3<i32>(-2147483647i, -23986i, arg_1), countOneBits(vec3<i32>(-52803i, global0.x, arg_1)))), select(vec4<bool>(any(arg_0.zx), true, var_0.x, func_5(Struct_4(Struct_2(1u, Struct_1(vec3<i32>(global0.x, -1i, -72246i), vec4<bool>(var_0.x, true, arg_0.x, arg_0.x), 1u), Struct_1(vec3<i32>(-2147483647i, u_input.a, global0.x), vec4<bool>(arg_0.x, true, true, false), 4294967295u), -187f, false), u_input.a, -1000f, Struct_3(42887u), vec2<f32>(-102f, -1000f)), ~101963u, Struct_3(1u), firstTrailingBit(global0.zy)).x), select(vec4<bool>(false || var_0.x, var_0.x && var_0.x, arg_1 != 12158i, any(vec3<bool>(true, arg_0.x, arg_0.x))), vec4<bool>(arg_1 == 1309i, false || arg_0.x, all(vec3<bool>(arg_0.x, true, false)), any(arg_0)), true), func_5(Struct_4(Struct_2(1u, Struct_1(vec3<i32>(-3410i, arg_1, 2147483647i), vec4<bool>(var_0.x, false, arg_0.x, false), 34361u), Struct_1(vec3<i32>(1i, 12634i, 1i), vec4<bool>(false, true, false, var_0.x), 1u), -896f, true), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, arg_1, u_input.a), vec3<i32>(u_input.a, -2147483647i, 1i)), _wgslsmith_f_op_f32(floor(2819f)), func_1(Struct_2(1u, Struct_1(vec3<i32>(-2147483647i, -2147483647i, 2147483647i), vec4<bool>(false, true, true, false), 35426u), Struct_1(vec3<i32>(-58073i, 11522i, arg_1), vec4<bool>(true, false, false, var_0.x), 36128u), 399f, arg_0.x)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-355f, 1067f)))), ~4294967295u, func_1(Struct_2(78262u, Struct_1(vec3<i32>(-45615i, global0.x, -38076i), vec4<bool>(arg_0.x, var_0.x, true, false), 24499u), Struct_1(vec3<i32>(-1i, arg_1, -1i), vec4<bool>(true, false, arg_0.x, false), 1u), -536f, var_0.x)), global0.yy).x), func_1(Struct_2(_wgslsmith_mult_u32(~34206u, 0u), Struct_1(vec3<i32>(arg_1, arg_1, u_input.a), vec4<bool>(false, false, true, false), 1u), Struct_1(select(vec3<i32>(global0.x, 0i, u_input.a), vec3<i32>(arg_1, global0.x, -15794i), vec3<bool>(true, true, false)), !vec4<bool>(true, var_0.x, true, arg_0.x), 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-865f - 1188f)), false)).a);
    let var_2 = Struct_4(Struct_2(var_1.c, Struct_1(vec3<i32>(0i, firstTrailingBit(-1i), u_input.a | 2147483647i), !select(vec4<bool>(arg_0.x, false, true, true), vec4<bool>(false, var_1.b.x, true, false), arg_0.x), firstLeadingBit(~0u)), Struct_1(-var_1.a, vec4<bool>(true, var_1.b.x, var_1.a.x >= arg_1, select(arg_0.x, var_0.x, var_0.x)), ~4294967295u), 444f, select(all(var_0.yz), ~var_1.a.x <= u_input.a, all(var_1.b.zz))), _wgslsmith_mult_i32(-var_1.a.x, 51017i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1021f - -1748f) - _wgslsmith_f_op_f32(abs(388f)))), func_1(Struct_2(var_1.c, Struct_1(abs(var_1.a), var_1.b, ~1u), Struct_1(vec3<i32>(-2147483647i, u_input.a, 46486i), !var_1.b, var_1.c), 388f, arg_0.x)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-598f, 716f), vec2<f32>(-687f, 1756f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-896f, 221f) + vec2<f32>(508f, 128f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1247f, 1559f) + vec2<f32>(2580f, -944f))) * vec2<f32>(_wgslsmith_f_op_f32(322f - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1220f))))));
    var var_3 = Struct_3(~(~1u));
    return var_2.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<i32>(_wgslsmith_sub_i32(u_input.a, -2147483647i), -1i, 1i) & ~(~(-_wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, u_input.a, global0.x), vec3<i32>(global0.x, -55493i, u_input.a))));
    let var_0 = vec2<i32>(reverseBits(abs(firstLeadingBit(_wgslsmith_div_i32(2147483647i, u_input.a)))), -2147483647i);
    var var_1 = func_6(func_5(Struct_4(Struct_2(4294967295u, Struct_1(vec3<i32>(u_input.a, -35795i, u_input.a), vec4<bool>(false, true, true, false), 54908u), Struct_1(vec3<i32>(u_input.a, 33388i, 2147483647i), vec4<bool>(true, false, true, false), 1u), _wgslsmith_f_op_f32(abs(-1000f)), true), -2147483647i, _wgslsmith_div_f32(-619f, 1f), func_1(Struct_2(11781u, Struct_1(vec3<i32>(2147483647i, 1i, u_input.a), vec4<bool>(true, false, true, false), 17358u), Struct_1(vec3<i32>(-21458i, 40773i, var_0.x), vec4<bool>(false, true, false, true), 110679u), 1000f, false)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1634f, -1000f)))))), reverseBits(~1u), Struct_3(~1u), vec2<i32>(_wgslsmith_add_i32(abs(-27133i), 1i), i32(-1i) * -3867i)), i32(-1i) * -min(var_0.x << (4294967295u % 32u), var_0.x));
    let var_2 = var_1.b.xz;
    var var_3 = Struct_2(39510u, func_6(var_1.b.yww, 2147483647i), func_6(select(var_1.b.wwy, var_1.b.yyx, all(!var_1.b.yxz)), ~(-2147483647i & var_1.a.x) >> (var_1.c % 32u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), any(select(vec4<bool>(any(vec4<bool>(true, var_1.b.x, false, var_1.b.x)), var_2.x, all(vec2<bool>(true, var_1.b.x)), var_2.x), var_1.b, func_6(var_1.b.zzy, ~(-80440i)).b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-445f, 408f, var_3.d, 1475f))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.d, var_3.d, -1673f, var_3.d)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-578f, -991f, var_3.d, 233f) * vec4<f32>(var_3.d, -1386f, var_3.d, -1000f)), _wgslsmith_div_vec4_f32(vec4<f32>(1042f, var_3.d, -359f, -935f), vec4<f32>(var_3.d, -1802f, 583f, var_3.d)), !var_3.b.b)), false))), 1u ^ var_3.c.c);
}

