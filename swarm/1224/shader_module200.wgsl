struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: vec4<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_3) -> f32 {
    global0 = u_input.d;
    var var_0 = !(!(global0.x > select(u_input.c ^ global0.x, ~0u, arg_0)));
    var var_1 = arg_2;
    var var_2 = true;
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1684f, 2156f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-698f, 1680f), vec2<f32>(305f, -925f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-589f, -489f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-519f, -311f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-966f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, -1000f)) + _wgslsmith_f_op_f32(-564f * 509f)))));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.x, 451f, false))))), var_3.x))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: u32, arg_3: Struct_3) -> u32 {
    let var_0 = arg_1.c;
    var var_1 = _wgslsmith_sub_vec4_i32(~(-abs(vec4<i32>(-20187i, arg_0.a.x, u_input.e, 0i))), select(min(min(firstLeadingBit(vec4<i32>(-2147483647i, 59882i, 2147483647i, -1i)), vec4<i32>(45649i, arg_1.a.b.x, 39808i, 1i)), ~_wgslsmith_add_vec4_i32(vec4<i32>(-23830i, 26225i, arg_0.a.x, -22728i), vec4<i32>(-49031i, 14170i, -12153i, 14482i))), vec4<i32>(abs(0i), u_input.e, var_0.b.x, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.x, var_0.b.x, arg_3.a.x, 5061i), vec4<i32>(arg_0.a.x, 8053i, 6872i, -2147483647i)))), select(!(!vec4<bool>(true, var_0.d, arg_1.a.d, true)), !vec4<bool>(false, arg_1.b.d, arg_1.a.d, arg_1.a.d), false)));
    let var_2 = u_input.c;
    let var_3 = arg_1;
    global0 = select(u_input.d, u_input.b.xww, all(vec4<bool>(~24767u >= (var_3.d ^ 1u), var_3.b.d, arg_1.b.d, var_3.b.d)));
    return ~_wgslsmith_div_u32(max(_wgslsmith_mult_u32(global0.x, 0u), firstLeadingBit(~18520u)), 4294967295u);
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>) -> Struct_4 {
    var var_0 = _wgslsmith_div_u32(global0.x, func_4(arg_0, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-131f, -1000f, -989f), vec3<f32>(529f, -905f, -142f), vec3<bool>(true, false, false))), vec3<i32>(arg_1.x, -2147483647i, arg_1.x) | arg_1, _wgslsmith_div_f32(-403f, 185f), true), Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(995f, -1333f, 516f))), -vec3<i32>(2147483647i, -48914i, arg_1.x), _wgslsmith_f_op_f32(func_3(true, arg_1.x, arg_0)), true), Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-317f, 304f, -1287f), vec3<f32>(210f, 1136f, -1000f))), -arg_1, _wgslsmith_f_op_f32(-1303f - -147f), true), 57482u), 18812u, arg_0));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(402f, -1675f, -948f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, 1744f, -1000f)))))))) - vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-146f * -519f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(false, arg_1.x, arg_0))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-387f, -1313f)) * -583f), _wgslsmith_f_op_f32(step(704f, _wgslsmith_div_f32(470f, 1000f))))));
    let var_2 = var_1.xy;
    let var_3 = select(!select(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), any(vec4<bool>(true, true, false, true))), vec2<bool>(true, u_input.d.x < global0.x), !select(vec2<bool>(false, true), vec2<bool>(false, false), true)), vec2<bool>(!all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false))), false), false);
    var var_4 = ~global0.x;
    return Struct_4(_wgslsmith_f_op_f32(-var_1.x), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_2.x, -1643f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1408f, var_2.x, var_1.x)))), arg_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_div_f32(990f, var_1.x), all(vec3<bool>(var_3.x, false, true)))))), !var_3.x && true), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, var_1.x))), vec3<i32>(abs(0i), u_input.e, arg_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(min(-1024f, 1017f))), true), Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-501f, var_1.x, var_1.x)), vec3<f32>(var_1.x, -1306f, -178f))), arg_1, var_1.x, false), Struct_1(vec3<f32>(var_2.x, 1f, _wgslsmith_f_op_f32(min(var_1.x, 1000f))), vec3<i32>(min(u_input.e, u_input.e), -1i, -17616i), _wgslsmith_f_op_f32(-var_2.x), any(vec3<bool>(var_3.x, var_3.x, var_3.x))), u_input.d.x), vec4<bool>(var_3.x, !all(!vec3<bool>(true, true, var_3.x)), all(vec4<bool>(var_3.x, true, var_3.x, var_3.x)) && !(!var_3.x), arg_0.a.x > arg_1.x), arg_0);
}

fn func_5(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: vec2<u32>) -> vec3<bool> {
    var var_0 = func_2(Struct_3(-arg_0.e.a), ~(~arg_0.b.b)).c;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.c - -583f) - _wgslsmith_f_op_f32(arg_0.a + 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(250f, var_0.c.c))) + _wgslsmith_f_op_f32(abs(-1901f))), _wgslsmith_f_op_f32(func_3(!(!arg_0.d.x), countOneBits(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(14105i, arg_0.c.c.b.x), var_0.c.b.zz, var_0.a.b.zx), ~vec2<i32>(u_input.e, arg_0.e.a.x))), arg_0.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(429f)) + func_2(func_2(arg_0.e, vec3<i32>(2147483647i, 1i, 2147483647i)).e, -arg_0.b.b).b.c) + var_0.b.c), arg_0.a);
    let var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(0i, arg_0.c.a.b.x), vec2<i32>(var_0.a.b.x, u_input.e)), ~vec2<i32>(-62467i, 0i)) >> ((_wgslsmith_mult_u32(var_0.d, 4294967295u) & arg_1.x) % 32u), abs(~_wgslsmith_div_i32(24899i, -1i)), -2147483647i, abs(-2147483647i)), ~_wgslsmith_sub_vec4_i32(select(~vec4<i32>(16354i, -16868i, 0i, 1i), vec4<i32>(arg_0.e.a.x, -2147483647i, var_0.c.b.x, 1i), var_1.x != -139f), reverseBits(vec4<i32>(-1i, u_input.e, u_input.e, 1166i))));
    let var_3 = vec2<i32>(~_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 13742i), var_0.b.b.zx), max(arg_0.e.a, vec2<i32>(2147483647i, var_2.x))) & ~_wgslsmith_div_i32(0i, min(-2147483647i, var_0.c.b.x)), _wgslsmith_dot_vec2_i32(-var_2.wy, ~select(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.b.b.x, arg_0.b.b.x), vec2<i32>(19681i, -19242i)), select(vec2<i32>(u_input.e, 2147483647i), vec2<i32>(-2050i, var_2.x), false), any(arg_0.d.ywy))));
    let var_4 = Struct_3(var_2.xx);
    return arg_0.d.zzx;
}

fn func_1(arg_0: u32) -> u32 {
    global0 = select(vec3<u32>(30712u, arg_0, ~(~u_input.b.x)) ^ (select(vec3<u32>(74193u, global0.x, global0.x) << (vec3<u32>(arg_0, 42647u, 0u) % vec3<u32>(32u)), min(vec3<u32>(global0.x, arg_0, global0.x), vec3<u32>(0u, u_input.c, u_input.d.x)), true) & u_input.d), countOneBits(vec3<u32>(4294967295u, abs(1u), 4294967295u)), select(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), func_5(func_2(Struct_3(vec2<i32>(u_input.e, u_input.e)), vec3<i32>(0i, u_input.e, 41383i)), ~u_input.d, select(global0.yx, vec2<u32>(u_input.a, u_input.d.x), vec2<bool>(true, true)))), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), !func_2(Struct_3(vec2<i32>(u_input.e, -48201i)), func_2(Struct_3(vec2<i32>(u_input.e, -1i)), vec3<i32>(9614i, -2147483647i, 2147483647i)).c.b.b).d.xxx));
    global0 = abs(_wgslsmith_mod_vec3_u32(vec3<u32>(~1u, 4294967295u, 39911u) << (vec3<u32>(1u, global0.x, max(1u, 4604u)) % vec3<u32>(32u)), vec3<u32>(~global0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 4294967295u, u_input.d.x), u_input.b.xzz) << (1u % 32u), select(u_input.a, arg_0, false))));
    let var_0 = _wgslsmith_mult_i32(u_input.e, u_input.e);
    var var_1 = func_2(Struct_3(vec2<i32>(abs(var_0), -28220i)), vec3<i32>(var_0, u_input.e, _wgslsmith_div_i32(u_input.e, ~1i))).c;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-122f, _wgslsmith_f_op_f32(select(-940f, var_1.c.a.x, (global0.x ^ arg_0) >= ~40558u))));
    return u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<u32>(~(~(global0.x & global0.x)), u_input.d.x, func_1(abs(_wgslsmith_sub_u32(0u, 0u))));
    global0 = ~firstTrailingBit(u_input.d);
    var var_0 = false;
    let var_1 = u_input.a;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(-262f, _wgslsmith_f_op_f32(step(408f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(653f, 705f)) + -120f)))), _wgslsmith_f_op_f32(-1549f - 976f));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~1u), ~135737u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(global0.x, global0.x), _wgslsmith_add_u32(0u | global0.x, var_1 << (u_input.c % 32u)) | (0u & min(4294967295u, u_input.b.x))), 59014u, u_input.b);
}

