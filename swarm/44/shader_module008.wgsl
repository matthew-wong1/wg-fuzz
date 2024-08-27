struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: vec4<u32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 18> = array<vec3<i32>, 18>(vec3<i32>(i32(-2147483648), -5895i, 1i), vec3<i32>(1i, 2147483647i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -15182i, -7353i), vec3<i32>(-36205i, 15908i, -40627i), vec3<i32>(-1i, -2741i, -32940i), vec3<i32>(i32(-2147483648), 2069i, 1i), vec3<i32>(-1i, 35085i, 1921i), vec3<i32>(27894i, 15946i, -1i), vec3<i32>(-30384i, -9035i, 27105i), vec3<i32>(45807i, 13995i, i32(-2147483648)), vec3<i32>(-1i, 13865i, -1i), vec3<i32>(-26601i, 33482i, 21207i), vec3<i32>(-56671i, 2147483647i, 0i), vec3<i32>(2147483647i, -10992i, -1i), vec3<i32>(23629i, 1i, 18163i), vec3<i32>(0i, -10049i, 0i), vec3<i32>(34383i, 1i, 885i), vec3<i32>(-17675i, i32(-2147483648), 1i));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: u32) -> vec3<f32> {
    var var_0 = 22505i;
    global0 = array<vec3<i32>, 18>();
    var_0 = ~(-(~arg_1.b));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-563f)), 374f, _wgslsmith_div_f32(arg_2.x, 1000f))), ~159i, vec3<bool>(arg_3 < _wgslsmith_add_u32(arg_0.x, 38896u), all(vec3<bool>(arg_1.c.x, false, arg_1.c.x)), arg_1.c.x)), arg_1, arg_1, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_1.a.x, 929f) + vec3<f32>(1443f, arg_2.x, 851f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-647f, arg_1.a.x, arg_1.a.x) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.a.x, arg_1.a.x, -566f), arg_1.a, vec3<bool>(arg_1.c.x, arg_1.c.x, true))))), abs(-7185i), vec3<bool>(!arg_1.c.x, !all(vec2<bool>(true, true)), !arg_1.c.x)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), -1259f, _wgslsmith_f_op_f32(-arg_1.a.x)), max(max(~u_input.c, max(2147483647i, 0i)), _wgslsmith_sub_i32(-2147483647i, arg_1.b)), select(arg_1.c, select(select(vec3<bool>(false, false, false), arg_1.c, arg_1.c), select(vec3<bool>(true, arg_1.c.x, false), vec3<bool>(true, arg_1.c.x, true), arg_1.c.x), arg_1.c.x & true), !arg_1.c)));
    let var_2 = vec4<bool>(!(any(vec3<bool>(arg_1.c.x, true, true)) & true), !(!(!(arg_1.c.x & var_1.d.c.x))), true, false);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1146f * arg_2.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(308f - -208f) + 1012f))), arg_2.x));
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: vec4<bool>) -> Struct_1 {
    global0 = array<vec3<i32>, 18>();
    let var_0 = Struct_2(Struct_1(vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -367f)), _wgslsmith_div_f32(-325f, -1371f)), u_input.c, !vec3<bool>(arg_2.x & false, false, any(vec2<bool>(arg_2.x, arg_2.x)))), Struct_1(_wgslsmith_f_op_vec3_f32(func_3(vec3<u32>(1u, 82046u, u_input.a), Struct_1(vec3<f32>(-219f, -303f, 1610f), u_input.c ^ u_input.c, !arg_2.xyz), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1108f, 876f))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-645f, -348f), vec2<f32>(-380f, 1918f), vec2<bool>(arg_2.x, arg_2.x)))), u_input.b.x)), abs(_wgslsmith_mod_i32(-3047i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, 1i, 2147483647i, 0i), vec4<i32>(u_input.c, -2147483647i, -26679i, u_input.c)))), select(arg_2.xyw, vec3<bool>(true, arg_2.x, arg_2.x && false), arg_2.x)), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1154f, 252f, -956f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -570f, 1341f), vec3<f32>(-145f, 276f, 1283f), arg_2.yxy)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-266f, -1083f, -750f))), select(vec3<bool>(arg_2.x, true, arg_2.x), !arg_2.zwx, true))), -2147483647i, vec3<bool>(!any(arg_2), all(select(vec3<bool>(arg_2.x, arg_2.x, arg_2.x), arg_2.yxx, arg_2.xxy)), arg_1.x < -u_input.c)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(434f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -311f), 717f)), _wgslsmith_clamp_i32(~(-37619i), 0i, u_input.c) & countOneBits(reverseBits(u_input.c)), vec3<bool>(select(true, select(arg_2.x, arg_2.x, arg_2.x), !arg_2.x), arg_1.x != u_input.c, select(arg_2.x, arg_2.x, false))), Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2306f, -214f, 1241f) + vec3<f32>(714f, -484f, -1496f))))), _wgslsmith_clamp_i32(0i, arg_1.x, ~(-6867i)), vec3<bool>(true, arg_2.x, arg_2.x)));
    global0 = array<vec3<i32>, 18>();
    global0 = array<vec3<i32>, 18>();
    let var_1 = vec3<bool>(var_0.b.c.x, !all(vec2<bool>(all(var_0.c.c), var_0.a.c.x)), !((select(var_0.b.c.x, var_0.c.c.x, arg_2.x) | select(arg_2.x, false, arg_2.x)) != true));
    return var_0.b;
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> vec2<f32> {
    global0 = array<vec3<i32>, 18>();
    var var_0 = _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(u_input.a, 18u)], select(vec3<i32>(_wgslsmith_add_i32(u_input.c, u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(-10362i, arg_1.d.b, arg_1.e.b, 18067i), vec4<i32>(-1309i, arg_1.b.b, arg_1.d.b, -3261i)) ^ ~u_input.c, -2147483647i), (vec3<i32>(2147483647i, -2147483647i, u_input.c) << (vec3<u32>(u_input.a, u_input.b.x, 4294967295u) % vec3<u32>(32u))) ^ _wgslsmith_add_vec3_i32(global0[_wgslsmith_index_u32(1u, 18u)], ~vec3<i32>(u_input.c, 2147483647i, arg_1.e.b)), arg_1.d.c.x));
    var var_1 = vec4<i32>(u_input.c & (72881i | _wgslsmith_mod_i32(arg_1.d.b >> (u_input.b.x % 32u), 2147483647i)), u_input.c, func_2(1u, reverseBits(abs(_wgslsmith_add_vec4_i32(vec4<i32>(-1642i, 41094i, 46633i, -33698i), vec4<i32>(arg_1.b.b, 11767i, -15312i, u_input.c)))), !(!(!vec4<bool>(arg_1.a.c.x, false, true, true)))).b, countOneBits(13606i));
    var var_2 = Struct_3(arg_1, _wgslsmith_mult_vec4_i32(abs(select(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.x, u_input.c, u_input.c, u_input.c), vec4<i32>(var_1.x, -2147483647i, -32815i, -3087i)), -vec4<i32>(var_1.x, var_1.x, u_input.c, 1i), !vec4<bool>(arg_0, false, true, false))), reverseBits(vec4<i32>(65086i, var_1.x, arg_1.c.b, u_input.c) ^ vec4<i32>(u_input.c, arg_1.b.b, 31810i, arg_1.c.b)) & vec4<i32>(0i, var_1.x, reverseBits(-2147483647i), _wgslsmith_sub_i32(0i, var_1.x))), func_2(~(44989u | u_input.b.x) << (min(u_input.a << (0u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(10366u, 4294967295u, 0u, u_input.a), vec4<u32>(46201u, u_input.b.x, u_input.a, u_input.b.x))) % 32u), vec4<i32>(37752i | _wgslsmith_mod_i32(0i, var_1.x), -u_input.c, var_1.x, u_input.c), select(vec4<bool>(false, all(vec4<bool>(false, arg_0, false, false)), arg_0, true), !vec4<bool>(arg_0, false, arg_1.e.c.x, arg_0), !arg_0)), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.c.a.x, _wgslsmith_f_op_f32(-453f + arg_1.d.a.x)), 1013f));
    let var_3 = var_2.a.b;
    return arg_1.a.a.xx;
}

fn func_1() -> vec2<f32> {
    let var_0 = Struct_5(all(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true))) | all(vec4<bool>(true, true, true, any(vec3<bool>(false, true, false)))));
    var var_1 = _wgslsmith_sub_i32(u_input.c, 2147483647i);
    global0 = array<vec3<i32>, 18>();
    global0 = array<vec3<i32>, 18>();
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_4(true, Struct_2(func_2(u_input.b.x, vec4<i32>(1i, -43745i, u_input.c, u_input.c), !vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1406f, 1195f, 405f)), -u_input.c, vec3<bool>(true, true, true)), func_2(~u_input.a, -vec4<i32>(-1i, u_input.c, u_input.c, 1311i), select(vec4<bool>(var_0.a, true, false, true), vec4<bool>(false, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.a, false, var_0.a))), func_2(18411u, vec4<i32>(u_input.c, -9394i, u_input.c, -14104i), vec4<bool>(true, var_0.a, var_0.a, true)), func_2(u_input.a, select(vec4<i32>(u_input.c, 17269i, 0i, 0i), vec4<i32>(2147483647i, u_input.c, -8980i, u_input.c), true), vec4<bool>(false, false, false, true)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 131f;
    var_0 = _wgslsmith_f_op_f32(-990f + -267f);
    var var_1 = _wgslsmith_f_op_vec2_f32(func_1());
    let var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, 227f)), vec3<f32>(var_1.x, -313f, -1169f), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)))), u_input.c, !select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), Struct_1(vec3<f32>(-572f, 1262f, _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_mod_i32(u_input.c, 13607i), vec3<bool>(true, true, all(vec4<bool>(false, true, false, false)))), Struct_1(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(step(var_1.x, var_1.x)), _wgslsmith_f_op_f32(-476f - var_1.x)), -1i << (u_input.a % 32u), vec3<bool>(false, true, false)), func_2(u_input.a & ~u_input.b.x, firstTrailingBit(firstLeadingBit(vec4<i32>(u_input.c, 0i, 2147483647i, u_input.c))), vec4<bool>(true, true, true, false)), func_2(u_input.b.x, ~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<i32>(-27579i, 0i, 27504i, u_input.c)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true))), ~((~vec4<i32>(-6000i, -1i, u_input.c, 33899i) | ~vec4<i32>(2147483647i, u_input.c, u_input.c, 0i)) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, 2147483647i, u_input.c, 1i), max(vec4<i32>(u_input.c, -2147483647i, u_input.c, u_input.c), vec4<i32>(u_input.c, -8555i, -1i, -1i)))), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -144f)))))), 32085i, select(vec3<bool>(true, 15852i == u_input.c, 0u < u_input.a), vec3<bool>(true, true, true), func_2(1u, countOneBits(vec4<i32>(1546i, u_input.c, -2147483647i, -2147483647i)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false))).c)), _wgslsmith_f_op_f32(-var_1.x));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -526f);
    var var_3 = var_2.b.wy >> (reverseBits(u_input.b) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(min(~(var_2.b ^ ~var_2.b), _wgslsmith_sub_vec4_i32(select(firstLeadingBit(vec4<i32>(var_2.c.b, var_3.x, -2147483647i, -17093i)), -var_2.b, vec4<bool>(true, true, var_2.a.e.c.x, false)), _wgslsmith_sub_vec4_i32(abs(var_2.b), ~vec4<i32>(2147483647i, 0i, -34205i, 14782i)))));
}

