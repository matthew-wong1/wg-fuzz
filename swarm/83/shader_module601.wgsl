struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: i32,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 778f;

var<private> global1: Struct_3 = Struct_3(Struct_1(4294967295u, vec3<bool>(true, false, false), 23851i, 0u, vec2<f32>(-1348f, -594f)), 35254u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: f32) -> f32 {
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_3, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_3)), _wgslsmith_f_op_f32(global1.a.e.x + 301f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(528f * arg_3)))));
    global1 = Struct_3(global1.a, 4294967295u);
    var var_0 = Struct_3(Struct_1(_wgslsmith_dot_vec3_u32(u_input.b, _wgslsmith_sub_vec3_u32(~u_input.b, max(vec3<u32>(58364u, 4294967295u, u_input.b.x), vec3<u32>(0u, 87871u, global1.a.a)))), global1.a.b, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(2147483647i, arg_1.x, 1i), u_input.a), countOneBits(1u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(global1.a.e.x, arg_3)), _wgslsmith_f_op_f32(sign(547f))))), ~firstLeadingBit(global1.a.a));
    var var_1 = Struct_2(all(var_0.a.b.zx));
    let var_2 = global1.a.d;
    return var_0.a.e.x;
}

fn func_4(arg_0: u32, arg_1: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1640f, -1014f, arg_1))))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.e.x - _wgslsmith_f_op_f32(f32(-1f) * -850f)) * _wgslsmith_f_op_f32(max(arg_1, -573f)));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1840f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1, -351f)) + -654f));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.a.e.x, 300f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.e.x))))));
    var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(941f, arg_1, 430f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_2, 630f))))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -988f));
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: vec3<u32>, arg_3: Struct_4) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(_wgslsmith_add_u32(~(~0u), _wgslsmith_mult_u32(1u, global1.a.a | 0u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(any(global1.a.b.yy), max(vec2<i32>(global1.a.c, -2147483647i), vec2<i32>(u_input.a, -32110i)), select(global1.a.b.zx, vec2<bool>(false, global1.a.b.x), vec2<bool>(global1.a.b.x, global1.a.b.x)), _wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(floor(-398f)))))));
    let var_1 = Struct_3(global1.a, arg_2.x);
    var var_2 = countOneBits(firstTrailingBit(_wgslsmith_dot_vec3_u32(arg_2, u_input.b)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1119f)), _wgslsmith_div_f32(462f, 636f)), 1f)) - 177f));
    let var_3 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(1i, _wgslsmith_clamp_i32(arg_3.a, 0i ^ var_1.a.c, 0i)), _wgslsmith_sub_i32(reverseBits(global1.a.c), max(7803i & u_input.a, 10745i)), 75632i) > arg_3.a;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + var_1.a.e.x), global1.a.e.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(388f)))))), global1.a.e.x)));
}

fn func_5(arg_0: f32) -> Struct_2 {
    global0 = 2053f;
    global0 = _wgslsmith_f_op_f32(-global1.a.e.x);
    global0 = 469f;
    let var_0 = false;
    global1 = Struct_3(global1.a, _wgslsmith_dot_vec2_u32(u_input.b.yx, vec2<u32>(1u, 4294967295u)) & global1.b);
    return Struct_2(!var_0);
}

fn func_6(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec2<f32>, arg_3: f32) -> f32 {
    let var_0 = Struct_4(_wgslsmith_dot_vec2_i32(arg_1, vec2<i32>(max(global1.a.c, arg_1.x), u_input.a) & arg_1));
    var var_1 = func_5(-716f);
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(-global1.a.e.x)));
    let var_2 = vec4<u32>(16156u, 104814u, _wgslsmith_div_u32(30690u, global1.a.d), 0u);
    let var_3 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-853f, 1506f));
}

fn func_1(arg_0: i32, arg_1: Struct_4, arg_2: bool) -> Struct_4 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_6(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global1.a.d, global1.a.e, vec3<u32>(u_input.b.x, global1.b, u_input.b.x), Struct_4(-1i))) * 1f)), ~vec2<i32>(arg_1.a, abs(-41830i)), vec2<f32>(global1.a.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.e.x) + _wgslsmith_f_op_f32(min(-1346f, global1.a.e.x)))), _wgslsmith_f_op_f32(876f + global1.a.e.x))), _wgslsmith_f_op_f32(select(global1.a.e.x, 1315f, !arg_2)));
    global1 = Struct_3(global1.a, _wgslsmith_dot_vec2_u32(countOneBits(firstLeadingBit(u_input.b.xx)), vec2<u32>(~u_input.b.x, 1883u)) & ~global1.b);
    let var_1 = -arg_1.a;
    global1 = Struct_3(Struct_1(~34906u, vec3<bool>(all(select(vec4<bool>(global1.a.b.x, global1.a.b.x, arg_2, false), vec4<bool>(false, arg_2, true, false), vec4<bool>(global1.a.b.x, global1.a.b.x, true, global1.a.b.x))), true, false == func_5(606f).a), u_input.a, 1u, _wgslsmith_div_vec2_f32(var_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, global1.a.e.x)) * vec2<f32>(-860f, 1162f)))), 54091u);
    global1 = Struct_3(Struct_1(68416u, vec3<bool>(!select(true, false, global1.a.b.x), global1.a.b.x, ~arg_0 >= 5146i), 1i, global1.a.a, _wgslsmith_f_op_vec2_f32(-global1.a.e)), _wgslsmith_div_u32((5518u ^ (4294967295u >> (u_input.b.x % 32u))) >> (global1.a.a % 32u), u_input.b.x ^ 105577u));
    return arg_1;
}

fn func_7(arg_0: i32, arg_1: Struct_4) -> Struct_3 {
    let var_0 = global1.a.e.x;
    var var_1 = vec3<bool>(!(_wgslsmith_f_op_f32(func_6(Struct_2(global1.a.b.x), vec2<i32>(arg_0, -2147483647i), vec2<f32>(global1.a.e.x, global1.a.e.x), global1.a.e.x)) <= _wgslsmith_f_op_f32(-global1.a.e.x)) & true, all(vec4<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.a, u_input.b.x, u_input.b.x, 1u), vec4<u32>(1u, u_input.b.x, 0u, 4294967295u)) > ~global1.a.d, all(select(global1.a.b.yz, global1.a.b.zx, vec2<bool>(true, global1.a.b.x))), any(vec2<bool>(global1.a.b.x, global1.a.b.x)), any(vec4<bool>(global1.a.b.x, false, global1.a.b.x, global1.a.b.x)))), true);
    var var_2 = func_1(arg_0, Struct_4(u_input.a), var_1.x);
    var var_3 = select(!select(vec4<bool>(true, true, true, true), !select(vec4<bool>(global1.a.b.x, true, global1.a.b.x, global1.a.b.x), vec4<bool>(true, true, true, var_1.x), var_1.x), !(!vec4<bool>(true, var_1.x, false, var_1.x))), !vec4<bool>(!(false & global1.a.b.x), !var_1.x | (var_1.x && var_1.x), true, var_1.x && var_1.x), vec4<bool>(false | ((var_1.x | var_1.x) || false), global1.a.c == (arg_0 ^ func_1(-1i, Struct_4(23521i), var_1.x).a), all(var_1.zx), false));
    let var_4 = !(!vec2<bool>(all(vec4<bool>(var_1.x, false, true, true)) && true, all(!vec4<bool>(false, true, global1.a.b.x, global1.a.b.x))));
    return Struct_3(global1.a, u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b.xz, reverseBits(u_input.b.xz)), u_input.b.zx);
    let var_1 = Struct_2(-_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.c, global1.a.c, -4576i), select(vec3<i32>(u_input.a, global1.a.c, -53500i), vec3<i32>(2147483647i, 64289i, -15696i), vec3<bool>(false, global1.a.b.x, global1.a.b.x))) >= -1i);
    global1 = func_7(_wgslsmith_dot_vec4_i32((_wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.a, u_input.a, global1.a.c), vec4<i32>(u_input.a, global1.a.c, 26713i, -2147483647i)) ^ vec4<i32>(u_input.a, -52833i, u_input.a, global1.a.c)) << (((vec4<u32>(0u, 0u, 0u, 4227u) | vec4<u32>(4294967295u, 4294967295u, 0u, global1.b)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 58703u, 1u, 4294967295u), vec4<u32>(4969u, 42030u, 0u, var_0.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), ~(vec4<i32>(14702i, -1i, u_input.a, global1.a.c) ^ (vec4<i32>(global1.a.c, -10719i, u_input.a, global1.a.c) | vec4<i32>(0i, -70121i, -20753i, -35344i)))), func_1(-14055i, Struct_4(countOneBits(66196i | u_input.a)), !(var_1.a == true)));
    let var_2 = global1.a.b;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(392f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.a.e.x)) * -1442f));
    var var_3 = Struct_2(false);
    let var_4 = func_7(_wgslsmith_add_i32(-1i, func_7(-2147483647i, Struct_4(global1.a.c)).a.c << (0u % 32u)), func_1(abs(0i), Struct_4(-2147483647i), any(select(!vec4<bool>(global1.a.b.x, false, var_1.a, var_2.x), vec4<bool>(true, global1.a.b.x, true, global1.a.b.x), vec4<bool>(true, true, false, true)))));
    var var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(var_4.a.e)))) - global1.a.e);
    let var_6 = ~abs(firstTrailingBit(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 94303u, 18375u, 8392u), vec4<u32>(var_0.x, u_input.b.x, 49153u, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a.e.x)), u_input.b.zy);
}

