struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 637f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_4, arg_1: bool) -> f32 {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1011f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(trunc(395f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1720f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-395f * 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -606f)))));
    global0 = -193f;
    var var_0 = -1261f;
    let var_1 = arg_0;
    let var_2 = Struct_5(arg_1, Struct_4(_wgslsmith_sub_vec3_i32(arg_0.a, _wgslsmith_mod_vec3_i32(var_1.a, var_1.a & vec3<i32>(arg_0.a.x, 1i, var_1.a.x)))));
    return _wgslsmith_f_op_f32(min(-2592f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(floor(-397f))))));
}

fn func_2(arg_0: u32) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1929f - 1344f), _wgslsmith_f_op_f32(382f * 2058f)) - vec2<f32>(-1000f, 605f))) * vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1313f, 767f) * _wgslsmith_f_op_f32(sign(-1000f))), 2101f, true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2170f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_4(vec3<i32>(-2147483647i, -28307i, 24267i)), true)) * -827f)))));
    var var_1 = ~1i;
    global0 = _wgslsmith_f_op_f32(sign(var_0.x));
    let var_2 = Struct_3(_wgslsmith_dot_vec3_i32(~(~select(vec3<i32>(1i, -12544i, 2147483647i), vec3<i32>(2147483647i, -1i, 46846i), vec3<bool>(true, false, true))), vec3<i32>(select(~18966i, _wgslsmith_div_i32(2147483647i, -1i), true), _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, 1i), vec2<i32>(1i, 1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(6733i, -1i, 1i), abs(vec3<i32>(-2147483647i, -2147483647i, 18689i))))));
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, -1108f)))))), _wgslsmith_f_op_f32(var_0.x - var_0.x)));
    return _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(-(~vec4<i32>(-54763i, 42070i, var_2.a, 2147483647i)), _wgslsmith_mult_vec4_i32(-vec4<i32>(-2147483647i, -765i, var_2.a, -12677i), reverseBits(select(vec4<i32>(var_2.a, -46057i, 43978i, var_2.a), vec4<i32>(var_2.a, var_2.a, var_2.a, 26913i), vec4<bool>(false, true, true, true)))), _wgslsmith_div_vec4_i32(vec4<i32>(-1205i, var_2.a, 2147483647i & var_2.a, -var_2.a), _wgslsmith_mult_vec4_i32(vec4<i32>(72353i, 0i, 11348i, var_2.a) | vec4<i32>(-4732i, var_2.a, -45042i, -1i), -vec4<i32>(-63300i, -20354i, var_2.a, 1i)))), ~(~vec4<i32>(abs(23411i), var_2.a, countOneBits(2147483647i), ~(-1i))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<u32>) -> Struct_4 {
    let var_0 = -(~_wgslsmith_mult_vec4_i32(func_2(17463u), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-39298i, -1i, 2147483647i, 59298i), vec4<i32>(39795i, -2147483647i, -18460i, -1i))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x))));
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -737f) * _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -102f))))), 780f));
    var var_2 = _wgslsmith_f_op_f32(max(arg_0.x, 691f));
    global0 = 622f;
    return Struct_4(vec3<i32>(~(-_wgslsmith_add_i32(var_0.x, -36914i)), ~min(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -1i, 37084i, -24326i), vec4<i32>(var_0.x, 21913i, var_0.x, 26936i)), 45155i), (reverseBits(var_0.x) | abs(-2147483647i)) ^ var_0.x));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: u32) -> i32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(183f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-465f + 139f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-2853f))))))));
    let var_0 = all(select(vec2<bool>(any(select(vec4<bool>(true, true, arg_1.x, false), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x))), !any(arg_1)), arg_1.yy, arg_1.x));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(547f, -1503f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -849f)))), 1192f, var_0)));
    var var_1 = arg_1.yx;
    let var_2 = Struct_1(var_0, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-1582f, _wgslsmith_f_op_f32(max(-1000f, 535f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1270f, -1000f, true))), _wgslsmith_f_op_f32(f32(-1f) * -2120f), _wgslsmith_f_op_f32(1076f - -1148f)), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1156f, 358f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-851f, -1023f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -329f) - _wgslsmith_f_op_f32(-722f - 351f)), _wgslsmith_f_op_f32(-107f - _wgslsmith_f_op_f32(-1313f * -1657f)))), !select(select(!vec2<bool>(var_1.x, false), vec2<bool>(var_0, var_1.x), true), vec2<bool>(true, arg_1.x), select(!arg_1.xy, vec2<bool>(arg_1.x, false), !vec2<bool>(false, var_1.x))), false);
    return _wgslsmith_add_i32(0i, arg_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(747f, -638f)) - _wgslsmith_div_f32(-296f, -748f)), _wgslsmith_f_op_f32(f32(-1f) * -574f))), _wgslsmith_f_op_f32(1732f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(897f - _wgslsmith_f_op_f32(select(-111f, -481f, false))), -264f))));
    var var_0 = vec4<i32>(-_wgslsmith_add_i32(1i, ~2147483647i), -abs(~(-23718i)), ~1i & _wgslsmith_mod_i32(firstLeadingBit(28598i), _wgslsmith_clamp_i32(-13166i, 1i, -9844i)), ~_wgslsmith_dot_vec3_i32(~vec3<i32>(-7150i, 14528i, 0i), ~vec3<i32>(41014i, 1i, 1i))) | (vec4<i32>(firstTrailingBit(23297i), func_4(func_1(vec4<f32>(743f, -1021f, -632f, -1485f), vec3<u32>(u_input.a, u_input.a, 79071u)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), u_input.a), -7818i, -23236i) ^ _wgslsmith_add_vec4_i32(vec4<i32>(0i, 0i, _wgslsmith_div_i32(-6627i, 1i), ~0i), vec4<i32>(1i, 1i, 1i, 1i)));
    let var_1 = Struct_4(var_0.yxy);
    var var_2 = _wgslsmith_mod_i32(10154i, 57807i);
    global0 = _wgslsmith_f_op_f32(func_3(Struct_4(vec3<i32>(var_1.a.x | ~(-19552i), _wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.x, 28941i, var_0.x, -14377i), vec4<i32>(var_1.a.x, -22006i, var_0.x, var_0.x)), ~var_0.x)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(-(~(vec4<i32>(var_0.x, var_1.a.x, var_1.a.x, var_1.a.x) >> (vec4<u32>(u_input.a, 1u, u_input.a, 1u) % vec4<u32>(32u)))), ~vec4<i32>(-2147483647i, _wgslsmith_div_i32(var_0.x, -3345i), 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(7027i, var_0.x, var_0.x, var_1.a.x), vec4<i32>(0i, var_0.x, -17031i, var_1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2274f, 1000f, true)))));
}

