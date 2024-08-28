struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 30>;

var<private> global1: array<vec4<i32>, 28> = array<vec4<i32>, 28>(vec4<i32>(21595i, -48694i, 2147483647i, 1i), vec4<i32>(2147483647i, -13539i, 1i, 0i), vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), 3143i), vec4<i32>(-27895i, -40887i, -1i, -1i), vec4<i32>(8527i, 53835i, 1i, i32(-2147483648)), vec4<i32>(41448i, 5558i, 1i, -1i), vec4<i32>(1i, -20657i, i32(-2147483648), 53538i), vec4<i32>(-1i, -23816i, -1i, 0i), vec4<i32>(14348i, 1i, -19501i, 52003i), vec4<i32>(-1i, i32(-2147483648), 0i, -1i), vec4<i32>(6103i, 1i, -1i, 12870i), vec4<i32>(-1i, 14789i, -82176i, 23346i), vec4<i32>(2147483647i, -1i, 41077i, i32(-2147483648)), vec4<i32>(-1i, -179i, 35702i, 5684i), vec4<i32>(-1i, -64805i, -16050i, 0i), vec4<i32>(2224i, -2691i, -14568i, -9484i), vec4<i32>(0i, i32(-2147483648), 15860i, -43966i), vec4<i32>(20406i, 5332i, 0i, 15606i), vec4<i32>(-1i, 22708i, -53251i, i32(-2147483648)), vec4<i32>(-7573i, 2147483647i, i32(-2147483648), 1i), vec4<i32>(-5899i, -23251i, -1i, -4557i), vec4<i32>(23203i, 22027i, 0i, 56317i), vec4<i32>(2147483647i, 9992i, i32(-2147483648), -1i), vec4<i32>(27665i, -49064i, 56299i, -30500i), vec4<i32>(8325i, -27942i, 11068i, -39996i), vec4<i32>(i32(-2147483648), -1i, 76154i, -1i), vec4<i32>(49008i, -1i, 1i, -1i), vec4<i32>(1i, 1i, -1i, 34797i));

var<private> global2: array<i32, 22>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: i32, arg_3: f32) -> vec2<u32> {
    global1 = array<vec4<i32>, 28>();
    var var_0 = Struct_3(arg_0.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2231f, -826f, _wgslsmith_div_f32(arg_3, arg_3))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1988f, -590f, arg_3))), vec3<f32>(arg_3, _wgslsmith_div_f32(1000f, -530f), arg_3))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)))));
    let var_1 = Struct_5(!select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, false, false, false), true), vec4<bool>(false, all(vec2<bool>(false, true)), all(vec3<bool>(true, true, true)), true), arg_1 <= 1u), Struct_2(_wgslsmith_f_op_vec2_f32(var_0.b.zz * _wgslsmith_f_op_vec2_f32(vec2<f32>(290f, 951f) - var_0.b.xy)), Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_2, global2[_wgslsmith_index_u32(0u, 22u)], arg_2), select(vec3<i32>(2147483647i, -41466i, arg_2), vec3<i32>(arg_2, arg_2, -11203i), false)), vec2<u32>(~602u, 53827u), _wgslsmith_sub_vec2_i32(u_input.b, u_input.b), arg_0 << (arg_0 % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -608f), _wgslsmith_f_op_f32(arg_3 * -2048f), _wgslsmith_f_op_f32(f32(-1f) * -148f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(var_0.b)))), (arg_3 == 2068f) != true))), true & (true & all(vec4<bool>(true, true, true, true))));
    var var_2 = global0[_wgslsmith_index_u32(max(~max(1811u, _wgslsmith_clamp_u32(var_0.a, 4294967295u, 1u)) ^ arg_0.x, ~max(firstTrailingBit(countOneBits(arg_0.x)), ~arg_0.x)), 30u)];
    var_2 = Struct_4(arg_1);
    return vec2<u32>(~83874u, ~(~var_2.a));
}

fn func_2(arg_0: bool) -> Struct_1 {
    global0 = array<Struct_4, 30>();
    global2 = array<i32, 22>();
    global0 = array<Struct_4, 30>();
    var var_0 = firstTrailingBit(select(_wgslsmith_mult_vec2_u32(~func_3(vec2<u32>(u_input.a, 0u), 1u, global2[_wgslsmith_index_u32(0u, 22u)], 1983f), ~vec2<u32>(38055u, 153278u) & ~vec2<u32>(1u, u_input.a)), max(~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, u_input.a)), countOneBits(vec2<u32>(1u, 94091u))), false));
    return Struct_1(vec3<i32>(~(-(~global2[_wgslsmith_index_u32(var_0.x, 22u)])), -39512i, 25425i), ~vec2<u32>(~1u, 19459u), select(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(1u, 22u)], -1i, -1i), -vec3<i32>(1i, 3209i, 53850i)), _wgslsmith_sub_i32(max(global2[_wgslsmith_index_u32(9875u, 22u)], global2[_wgslsmith_index_u32(65551u, 22u)]), u_input.b.x)), u_input.b, select(!select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0), false), select(!vec2<bool>(arg_0, false), vec2<bool>(arg_0, true), vec2<bool>(true, true)), select(vec2<bool>(arg_0, true), !vec2<bool>(arg_0, false), true))), reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, 0u), ~vec2<u32>(0u, u_input.a), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, var_0.x) << (vec2<u32>(6174u, u_input.a) % vec2<u32>(32u)), vec2<u32>(1u, var_0.x) ^ vec2<u32>(var_0.x, u_input.a)))));
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(889f + 362f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(191f)))))), -1766f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(539f * _wgslsmith_f_op_f32(-arg_1.a.x)))));
    global0 = array<Struct_4, 30>();
    var var_1 = true;
    return arg_1.b;
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = Struct_3(~(~_wgslsmith_mod_u32(u_input.a, u_input.a) | _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.d.x, 5581u, 40866u, u_input.a), vec4<u32>(arg_1.b.x, u_input.a, arg_1.b.x, u_input.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1425f, 598f, -600f), vec3<f32>(1295f, -1377f, 292f))))))));
    global0 = array<Struct_4, 30>();
    let var_1 = u_input.a;
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(firstLeadingBit(vec4<u32>(42060u, 79116u, u_input.a, var_0.a)) >> (_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1, var_0.a, arg_1.b.x, 1u), vec4<u32>(arg_1.d.x, u_input.a, arg_1.b.x, u_input.a)), select(vec4<u32>(var_0.a, 1u, 0u, 4294967295u), vec4<u32>(arg_1.b.x, 4294967295u, 66657u, 72027u), vec4<bool>(true, arg_0.x, true, arg_0.x))) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(min(vec4<u32>(~var_1, u_input.a, u_input.a, abs(0u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a, 1u, 36718u, var_1), vec4<u32>(u_input.a, 1294u, 35349u, var_0.a))), vec4<u32>(min(~var_1, firstTrailingBit(35804u)), _wgslsmith_add_u32(u_input.a, arg_1.d.x) >> (19891u % 32u), var_0.a, 9886u))), 30u)];
    var var_3 = _wgslsmith_mod_vec3_i32(~abs(arg_1.a) | ~vec3<i32>(_wgslsmith_div_i32(-51165i, arg_1.c.x), arg_1.a.x, arg_1.a.x ^ 62337i), firstTrailingBit(vec3<i32>(-30386i, 0i, u_input.b.x)));
    return vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - _wgslsmith_f_op_f32(round(-1132f))), 1542f);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_3) -> Struct_4 {
    let var_0 = Struct_3(u_input.a, _wgslsmith_f_op_vec3_f32(func_5(arg_0.xx, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, arg_1.b.x)), func_2(arg_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(727f, -996f, arg_1.b.x)))))));
    global2 = array<i32, 22>();
    var var_1 = _wgslsmith_sub_u32(reverseBits(~4294967295u), var_0.a) & _wgslsmith_mult_u32(0u, 1u);
    let var_2 = arg_1;
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.b.yx), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(342f, 818f), vec2<f32>(1081f, 239f), true)), _wgslsmith_f_op_vec2_f32(sign(var_2.b.zz)), vec2<bool>(arg_0.x, false))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b.yz - vec2<f32>(var_0.b.x, -1000f)))), all(vec4<bool>(true, false, false, arg_0.x)) != !arg_0.x)), Struct_1(-min(-vec3<i32>(-2147483647i, -49278i, -54724i), vec3<i32>(u_input.b.x, global2[_wgslsmith_index_u32(arg_1.a, 22u)], 0i)), ~(reverseBits(vec2<u32>(u_input.a, arg_1.a)) >> (~vec2<u32>(u_input.a, arg_1.a) % vec2<u32>(32u))), _wgslsmith_div_vec2_i32(reverseBits(-u_input.b), u_input.b), ~vec2<u32>(arg_1.a, var_0.a << (var_2.a % 32u))), arg_1.b);
    return Struct_4(~select(4294967295u, ~(u_input.a & 0u), true));
}

fn func_6(arg_0: Struct_4) -> vec2<u32> {
    var var_0 = -931f;
    let var_1 = u_input.b;
    global1 = array<vec4<i32>, 28>();
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1372f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -645f), _wgslsmith_f_op_vec3_f32(func_5(vec2<bool>(false, true), Struct_1(vec3<i32>(var_1.x, -44681i, var_1.x), vec2<u32>(u_input.a, 29023u), vec2<i32>(global2[_wgslsmith_index_u32(55613u, 22u)], -1i), vec2<u32>(u_input.a, 1u)))).x))), 702f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1247f)));
    let var_3 = abs(-vec2<i32>(-1i, -17321i));
    return ~(~firstTrailingBit(select(vec2<u32>(arg_0.a, arg_0.a) >> (vec2<u32>(25543u, 0u) % vec2<u32>(32u)), vec2<u32>(1u, arg_0.a) ^ vec2<u32>(u_input.a, 1u), true)));
}

fn func_7(arg_0: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(720f, 1549f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(338f, 177f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-707f, -485f)) * vec2<f32>(1895f, 629f)))), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1132f)), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-215f, -528f) + vec2<f32>(1930f, 444f)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-592f, -282f), vec2<f32>(553f, 535f)))), func_4(_wgslsmith_f_op_f32(-2512f * -376f), Struct_2(vec2<f32>(1709f, 474f), Struct_1(vec3<i32>(u_input.b.x, 1i, global2[_wgslsmith_index_u32(arg_0.x, 22u)]), vec2<u32>(0u, arg_0.x), vec2<i32>(global2[_wgslsmith_index_u32(u_input.a, 22u)], global2[_wgslsmith_index_u32(u_input.a, 22u)]), vec2<u32>(4294967295u, arg_0.x)), vec3<f32>(-929f, -133f, -847f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1354f, 1185f, -958f))))))), _wgslsmith_f_op_vec3_f32(func_5(select(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), true), vec2<bool>(all(vec4<bool>(false, true, true, true)), false), true), func_2(true))));
    global1 = array<vec4<i32>, 28>();
    var var_1 = Struct_3(var_0.b.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c * var_0.c)));
    var_1 = Struct_3(var_1.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2201f, var_0.c.x, var_1.b.x)), _wgslsmith_f_op_vec3_f32(exp2(var_0.c))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, -981f, -566f) - var_1.b)))));
    let var_2 = !vec3<bool>(all(vec2<bool>(true, true)), any(vec3<bool>(true, true, true)) || any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), ~u_input.b.x > select(global2[_wgslsmith_index_u32(var_0.b.d.x, 22u)] & u_input.b.x, u_input.b.x, all(vec4<bool>(true, false, false, false))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(!vec4<bool>(true, false, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), true), func_7(~func_6(func_1(vec3<bool>(true, false, true), Struct_3(u_input.a, vec3<f32>(1156f, 1505f, -386f))))), true);
    global1 = array<vec4<i32>, 28>();
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 7008u ^ (_wgslsmith_mult_u32(u_input.a, 1u) >> (u_input.a % 32u)), 13456u), vec3<u32>(u_input.a, countOneBits(_wgslsmith_mod_u32(var_0.b.b.d.x, var_0.b.b.d.x)), reverseBits(~(~var_0.b.b.b.x))));
    let var_2 = ~_wgslsmith_mult_vec2_i32(u_input.b, _wgslsmith_mod_vec2_i32(~max(vec2<i32>(var_0.b.b.c.x, -2147483647i), u_input.b), u_input.b));
    var var_3 = var_2;
    var var_4 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_4.b.b.x, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_0.b.b.b.x, 10943u, var_4.b.d.x), ~42191u), var_4.b.d.x, 1u) >> (min(vec4<u32>(~var_4.b.b.x, 4294967295u, 52937u, 0u), ~vec4<u32>(0u, var_4.b.b.x, 65827u, 13431u) & _wgslsmith_mult_vec4_u32(vec4<u32>(4220u, 33751u, var_4.b.b.x, 4294967295u), vec4<u32>(4294967295u, 46468u, 73266u, var_4.b.b.x))) % vec4<u32>(32u)), var_0.b.b.a.yy, select(vec3<u32>(40068u, ~u_input.a, _wgslsmith_div_u32(44388u, 23932u)), ~vec3<u32>(1u, 30128u, 40624u) ^ reverseBits(vec3<u32>(var_4.b.d.x, u_input.a, var_0.b.b.d.x)), !(!var_0.c)) ^ ~(~(vec3<u32>(var_4.b.b.x, 1u, var_0.b.b.d.x) >> (vec3<u32>(4294967295u, 1u, 18649u) % vec3<u32>(32u)))), var_4.a.x);
}

