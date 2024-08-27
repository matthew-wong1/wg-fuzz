struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 3> = array<Struct_4, 3>(Struct_4(Struct_3(Struct_2(vec2<i32>(1i, 0i), Struct_1(vec3<bool>(false, false, true), vec2<i32>(2147483647i, -43368i), 4294967295u, vec3<f32>(-141f, 1195f, -256f)), vec4<u32>(64380u, 82908u, 0u, 1u), vec3<i32>(0i, 0i, i32(-2147483648)))), Struct_1(vec3<bool>(true, false, false), vec2<i32>(1i, 1i), 0u, vec3<f32>(-1297f, -1449f, -294f))), Struct_4(Struct_3(Struct_2(vec2<i32>(-36767i, 0i), Struct_1(vec3<bool>(true, false, true), vec2<i32>(38144i, -1i), 9589u, vec3<f32>(639f, 1000f, -115f)), vec4<u32>(9143u, 82779u, 4294967295u, 5280u), vec3<i32>(2147483647i, -1i, 1i))), Struct_1(vec3<bool>(true, false, true), vec2<i32>(i32(-2147483648), -9053i), 4294967295u, vec3<f32>(459f, -405f, -420f))), Struct_4(Struct_3(Struct_2(vec2<i32>(-15826i, 0i), Struct_1(vec3<bool>(true, true, false), vec2<i32>(-25514i, 52043i), 4294967295u, vec3<f32>(-460f, -380f, -399f)), vec4<u32>(70166u, 1u, 21036u, 22611u), vec3<i32>(35694i, 0i, 32594i))), Struct_1(vec3<bool>(false, false, false), vec2<i32>(2147483647i, -5132i), 38710u, vec3<f32>(-1000f, -984f, 1149f))));

var<private> global1: vec3<u32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: vec3<f32>) -> vec3<bool> {
    global1 = vec3<u32>(68698u, 4294967295u, max(~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(62262u, arg_1, global1.x), ~u_input.b.x, ~4294967295u), 16608u));
    var var_0 = !vec4<bool>(_wgslsmith_div_u32(abs(arg_1), arg_1) == ~1u, false, true, arg_0.a.b.a.x);
    let var_1 = arg_0;
    global1 = ~arg_0.a.c.xyx;
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(882f))))));
    return vec3<bool>(false, var_1.a.b.a.x && arg_0.a.b.a.x, all(!select(vec3<bool>(true, var_1.a.b.a.x, arg_0.a.b.a.x), !var_1.a.b.a, var_1.a.b.a)));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: i32) -> u32 {
    var var_0 = _wgslsmith_mod_i32(~0i, -11298i);
    var var_1 = _wgslsmith_clamp_vec2_u32(u_input.a.yw, firstTrailingBit(vec2<u32>(min(global1.x, _wgslsmith_mod_u32(u_input.d, global1.x)), global1.x)), vec2<u32>(abs(1u), min(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(11113u, 4294967295u), global1.yx), ~global1.zz), select(u_input.b.x, u_input.d >> (u_input.d % 32u), false))));
    var var_2 = vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_div_i32(-2147483647i, ~(-34388i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_2, u_input.c.x), max(u_input.c.ywy, u_input.c.xxy)), min(arg_2, select(1i, u_input.c.x, arg_0)));
    var var_3 = arg_1.x;
    var var_4 = Struct_4(Struct_3(Struct_2(vec2<i32>(select(u_input.c.x, -13579i, false), u_input.c.x), Struct_1(vec3<bool>(arg_0, arg_0, arg_0), -u_input.c.zx, ~var_1.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, -1000f, arg_1.x) - vec3<f32>(-1283f, 376f, -1216f))), vec4<u32>(0u & global1.x, 4294967295u, firstTrailingBit(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, var_1.x, 4294967295u), u_input.a)), _wgslsmith_div_vec3_i32(~vec3<i32>(u_input.c.x, 0i, var_2.x), ~u_input.c.xyz))), Struct_1(!(!(!vec3<bool>(arg_0, arg_0, true))), vec2<i32>(_wgslsmith_mult_i32(arg_2, 1i), arg_2), var_1.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(arg_1)), vec3<f32>(1727f, arg_1.x, arg_1.x)))));
    return u_input.b.x;
}

fn func_4(arg_0: Struct_4) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2282f) + -485f);
    let var_1 = arg_0.a.a;
    global0 = array<Struct_4, 3>();
    global0 = array<Struct_4, 3>();
    var var_2 = func_2(arg_0.a, ~arg_0.a.a.c.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b.d)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-982f, 1287f, var_0)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(115f, var_1.b.d.x, arg_0.b.d.x))) + _wgslsmith_f_op_vec3_f32(var_1.b.d + arg_0.a.a.b.d)))), !arg_0.b.a.x)));
    return 0u;
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    let var_0 = firstLeadingBit(min(firstLeadingBit(_wgslsmith_add_vec2_i32(arg_0.b.b, ~u_input.c.yw)), _wgslsmith_add_vec2_i32(arg_0.b.b, vec2<i32>(~arg_0.a.x, 42372i))));
    var var_1 = arg_0.b.d.x;
    var var_2 = arg_0;
    var var_3 = select(vec3<bool>(!all(vec3<bool>(var_2.b.a.x, false, arg_0.b.a.x)), var_2.b.a.x, var_2.b.a.x), select(func_2(Struct_3(Struct_2(vec2<i32>(u_input.c.x, var_0.x), Struct_1(vec3<bool>(arg_0.b.a.x, var_2.b.a.x, var_2.b.a.x), vec2<i32>(var_0.x, -30272i), 36466u, vec3<f32>(arg_0.b.d.x, 1000f, var_2.b.d.x)), u_input.a, vec3<i32>(3132i, var_2.b.b.x, 1i))), 4294967295u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-203f, -1047f, var_2.b.d.x) + var_2.b.d) + arg_0.b.d)), !(!func_2(Struct_3(Struct_2(vec2<i32>(var_0.x, u_input.c.x), Struct_1(var_2.b.a, var_0, 4294967295u, vec3<f32>(arg_0.b.d.x, 508f, arg_0.b.d.x)), u_input.a, vec3<i32>(var_2.b.b.x, 10771i, -24069i))), u_input.a.x, var_2.b.d)), arg_0.b.a.x), !func_2(Struct_3(arg_0), func_4(global0[_wgslsmith_index_u32(func_3(false, arg_0.b.d, -11738i), 3u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.d.x, arg_0.b.d.x, var_2.b.d.x) - var_2.b.d) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.d.x, var_2.b.d.x, 786f)))));
    var_3 = arg_0.b.a;
    return Struct_3(arg_0);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    let var_0 = _wgslsmith_dot_vec3_u32(arg_0.a.c.wzx, vec3<u32>(1u, func_4(Struct_4(func_1(arg_2), Struct_1(arg_2.b.a, vec2<i32>(-9245i, -1i), global1.x, arg_1.b.d))), global1.x));
    global1 = vec3<u32>(u_input.d, countOneBits(_wgslsmith_add_u32(~0u << (u_input.b.x % 32u), ~1u)), ~64395u);
    var var_1 = Struct_4(Struct_3(func_1(func_1(func_1(Struct_2(vec2<i32>(13366i, arg_0.a.b.b.x), Struct_1(vec3<bool>(false, arg_0.a.b.a.x, true), arg_2.b.b, global1.x, vec3<f32>(-369f, arg_2.b.d.x, arg_1.b.d.x)), vec4<u32>(4294967295u, global1.x, arg_0.a.c.x, 24867u), vec3<i32>(1i, -22906i, arg_1.a.x))).a).a).a), func_1(Struct_2(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, arg_1.a.x), -u_input.c.yw), func_1(Struct_2(u_input.c.zx, arg_2.b, arg_2.c, u_input.c.xww)).a.b, countOneBits(arg_0.a.c), reverseBits(~arg_0.a.d))).a.b);
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(257f + arg_1.b.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b.d.x)))));
    var var_3 = ~reverseBits(~arg_1.b.b.x);
    return ~abs(_wgslsmith_add_u32(1u, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.zw;
    global1 = _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(~global1.x, _wgslsmith_clamp_u32(53590u, global1.x, u_input.d), abs(global1.x), u_input.b.x), abs(_wgslsmith_mult_vec4_u32(u_input.a, u_input.a))), firstLeadingBit(func_5(func_1(Struct_2(u_input.c.wy, Struct_1(vec3<bool>(true, true, true), vec2<i32>(-34213i, -2147483647i), 1u, vec3<f32>(-1000f, -410f, 816f)), vec4<u32>(u_input.d, u_input.a.x, 15077u, global1.x), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x))), Struct_2(vec2<i32>(0i, var_0.x), Struct_1(vec3<bool>(false, false, true), vec2<i32>(-1i, 60493i), global1.x, vec3<f32>(-757f, 379f, 484f)), vec4<u32>(global1.x, global1.x, global1.x, u_input.d), vec3<i32>(-1i, var_0.x, u_input.c.x)), func_1(Struct_2(var_0, Struct_1(vec3<bool>(true, true, false), vec2<i32>(1i, var_0.x), u_input.a.x, vec3<f32>(-467f, -1606f, -828f)), vec4<u32>(18616u, u_input.b.x, global1.x, 1u), vec3<i32>(u_input.c.x, u_input.c.x, 2147483647i))).a))), reverseBits(~_wgslsmith_clamp_vec3_u32(~u_input.a.xxx, u_input.a.wxz | u_input.a.wyw, countOneBits(u_input.b))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1441f))) * 1235f), _wgslsmith_f_op_f32(ceil(-1000f)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -361f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-115f + 1142f))))));
    let var_2 = _wgslsmith_mult_i32(u_input.c.x, i32(-1i) * -4793i) >> (u_input.a.x % 32u);
    let var_3 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(abs(var_2), -2147483647i, var_2 >> ((global1.x & ~11869u) % 32u)), _wgslsmith_dot_vec3_i32(u_input.c.wxw << (u_input.a.yyw % vec3<u32>(32u)), countOneBits(min(~u_input.c.xxz, func_1(Struct_2(u_input.c.yy, Struct_1(vec3<bool>(true, true, false), vec2<i32>(var_2, var_2), u_input.b.x, vec3<f32>(var_1.x, var_1.x, 845f)), u_input.a, vec3<i32>(30807i, var_3, var_2))).a.d))), _wgslsmith_div_i32(-31518i, -2147483647i));
}

