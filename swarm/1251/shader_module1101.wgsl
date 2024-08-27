struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
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

var<private> global0: Struct_1 = Struct_1(true);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-545f, -428f, false))))), arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(882f))));
    global0 = Struct_1(all(!(!select(vec2<bool>(false, true), vec2<bool>(true, false), false))));
    let var_1 = Struct_1(all(vec3<bool>(false, var_0.b.a || arg_3.a, true)));
    global0 = Struct_1(arg_0.a);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_0.a) - vec2<f32>(-1000f, -1193f)))))));
    return true;
}

fn func_2(arg_0: bool) -> Struct_2 {
    global0 = Struct_1(!func_3(Struct_1(true), global0.a, Struct_1(true), Struct_1(true)));
    var var_0 = all(select(!vec4<bool>(false, true, arg_0, all(vec2<bool>(global0.a, false))), !select(!vec4<bool>(arg_0, global0.a, global0.a, arg_0), !vec4<bool>(arg_0, true, true, false), vec4<bool>(false, false, false, false)), func_3(Struct_1(true), true, Struct_1(false), Struct_1(false))));
    var_0 = arg_0;
    global0 = Struct_1(arg_0);
    let var_1 = _wgslsmith_f_op_f32(min(-364f, _wgslsmith_f_op_f32(f32(-1f) * -2038f)));
    return Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1), var_1, true)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1, -1376f)) + var_1)))), Struct_1(!arg_0), -1000f);
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> Struct_1 {
    var var_0 = u_input.c;
    let var_1 = func_2(select(global0.a, global0.a, false));
    var var_2 = vec4<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_0.x, ~(-1i)), ~select(firstLeadingBit(arg_0), -arg_0, vec3<bool>(false, var_1.b.a, false))), arg_0.x, ~_wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, 46632i, arg_0.x, -67693i), ~max(vec4<i32>(23239i, -2147483647i, arg_0.x, -22386i), vec4<i32>(-7451i, -1i, u_input.a, -1i))));
    var_2 = firstTrailingBit(abs(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(var_2.x, u_input.a, arg_0.x, 23122i)) | countOneBits(vec4<i32>(arg_0.x, arg_0.x, 26847i, var_2.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, -1i, 0i), vec4<i32>(0i, var_2.x, u_input.a, -3062i) | vec4<i32>(7729i, arg_0.x, 28553i, var_2.x)), vec4<i32>(firstLeadingBit(u_input.a), 1i, -2147483647i, i32(-1i) * -39105i))));
    var_2 = _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 7937i, -36323i, 1i) >> (u_input.b % vec4<u32>(32u)), select(vec4<i32>(var_2.x, arg_0.x, -32993i, -19832i), vec4<i32>(-34275i, u_input.a, u_input.a, 1i), vec4<bool>(true, var_1.b.a, var_1.b.a, true))), reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-3430i, -1645i, arg_0.x, arg_0.x), vec4<i32>(var_2.x, -7771i, -4434i, 30407i)))), vec4<i32>(u_input.a, 12945i, ~arg_0.x, abs(var_2.x)) >> (firstLeadingBit(u_input.b) % vec4<u32>(32u))), ~(-((vec4<i32>(u_input.a, 1i, u_input.a, var_2.x) & vec4<i32>(-1i, arg_0.x, -29858i, 1i)) & -vec4<i32>(var_2.x, u_input.a, var_2.x, 27988i))));
    return Struct_1(select(global0.a, global0.a, any(select(vec2<bool>(var_1.b.a, true), !vec2<bool>(var_1.b.a, true), vec2<bool>(true, true)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = ~min(abs(0u), firstLeadingBit(u_input.c | countOneBits(4294967295u)));
    let var_1 = func_1(-min(-(~vec3<i32>(-37849i, u_input.a, u_input.a)), _wgslsmith_sub_vec3_i32(~vec3<i32>(2147483647i, u_input.a, -1i), -vec3<i32>(u_input.a, u_input.a, u_input.a))), ~57983u);
    var var_2 = func_2(any(vec2<bool>(func_2(var_1.a).b.a, false)));
    var var_3 = vec2<bool>(true, 2147483647i > abs(u_input.a));
    let var_4 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(arg_3.x)), 1947f, 2066f, -772f)))));
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = !vec2<bool>(func_2(all(vec3<bool>(global0.a, arg_1.a, false))).b.a, arg_1.a);
    var var_1 = u_input.c;
    global0 = arg_1;
    var_1 = ~0u | _wgslsmith_mod_u32(~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.b.zx, vec2<u32>(75781u, 45595u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 5821u, 1u, u_input.b.x), vec4<u32>(1u, u_input.c, 32713u, u_input.c))), u_input.c);
    var var_2 = func_1(_wgslsmith_clamp_vec3_i32(-(~vec3<i32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_mod_vec3_i32(-(~vec3<i32>(-29883i, u_input.a, u_input.a)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 1i, u_input.a), vec3<i32>(-53951i, -20014i, 2028i))), vec3<i32>(u_input.a, u_input.a, ~(~2147483647i))), _wgslsmith_clamp_u32(~(~8050u), select(u_input.b.x, min(_wgslsmith_div_u32(5433u, 12224u), max(u_input.b.x, 36242u)), ~86286u == u_input.b.x), 4294967295u));
    return func_2(func_3(func_1(vec3<i32>(_wgslsmith_mod_i32(-26648i, u_input.a), ~(-11474i), 1i), ~(~63773u)), var_2.a, arg_1, Struct_1(false))).b;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    global0 = arg_1.b;
    var var_0 = Struct_1(arg_1.b.a);
    var var_1 = 6074u;
    global0 = func_1(-vec3<i32>(~_wgslsmith_mult_i32(1113i, u_input.a), -u_input.a, 1i), u_input.c);
    var_0 = func_4(Struct_2(arg_1.c, arg_0, -636f), func_2(true).b, Struct_1(false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.a, -1582f)))), vec2<f32>(_wgslsmith_f_op_f32(min(-250f, arg_1.a)), _wgslsmith_f_op_f32(arg_1.c * arg_1.a))))));
    return Struct_1(arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_1(!any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(global0.a, false)))), Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -454f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(490f, -842f)))), func_5(func_4(Struct_2(443f, Struct_1(global0.a), 692f), func_1(vec3<i32>(u_input.a, 22176i, u_input.a), 21507u), Struct_1(false), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-249f, 397f)))), func_4(Struct_2(-364f, Struct_1(false), -771f), func_1(vec3<i32>(u_input.a, 1i, u_input.a), 73984u), Struct_1(false), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(344f, -299f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -752f)) + _wgslsmith_f_op_f32(max(1173f, _wgslsmith_f_op_f32(f32(-1f) * -1440f))))));
    global0 = Struct_1(false);
    let var_1 = Struct_1(global0.a);
    var var_2 = vec2<bool>(func_5(func_1(-vec3<i32>(u_input.a, u_input.a, 1i), abs(~u_input.c)), Struct_1(all(select(vec3<bool>(true, var_1.a, true), vec3<bool>(var_1.a, true, var_0.a), var_1.a)))).a, global0.a);
    var_0 = Struct_1(func_3(Struct_1(global0.a && func_1(vec3<i32>(2332i, 4178i, 0i), 11476u).a), select(true, !var_1.a || true, (u_input.a <= -4529i) && false), var_1, var_1));
    let var_3 = _wgslsmith_f_op_f32(-1781f + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(274f, -100f) - _wgslsmith_f_op_f32(select(-1000f, -301f, var_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1291f)))), -1929f)));
    var_0 = Struct_1(var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(u_input.a, u_input.a & _wgslsmith_div_i32(-1i, 49862i)));
}

