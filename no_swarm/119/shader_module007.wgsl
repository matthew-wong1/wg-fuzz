struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(i32(-2147483648), vec2<i32>(-2503i, 30272i));

var<private> global1: u32 = 110681u;

var<private> global2: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(31165u, 17233u), vec2<u32>(30659u, 4294967295u), vec2<u32>(1u, 63062u), vec2<u32>(28236u, 35792u), vec2<u32>(92321u, 63861u), vec2<u32>(0u, 12359u), vec2<u32>(21757u, 1u), vec2<u32>(1u, 34017u), vec2<u32>(1u, 12630u), vec2<u32>(33908u, 23078u), vec2<u32>(26272u, 0u), vec2<u32>(0u, 27196u), vec2<u32>(73432u, 30706u), vec2<u32>(52682u, 0u), vec2<u32>(64309u, 4727u), vec2<u32>(4294967295u, 18754u), vec2<u32>(49618u, 21772u), vec2<u32>(1u, 1u), vec2<u32>(21932u, 56454u), vec2<u32>(4294967295u, 88089u), vec2<u32>(15302u, 30504u), vec2<u32>(37792u, 4294967295u), vec2<u32>(25003u, 42384u), vec2<u32>(34181u, 45964u), vec2<u32>(49346u, 75083u), vec2<u32>(6005u, 3414u), vec2<u32>(17201u, 4294967295u), vec2<u32>(13875u, 0u));

var<private> global3: i32;

var<private> global4: f32 = -757f;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: Struct_1) -> f32 {
    global0 = Struct_1(global0.b.x, arg_2.b);
    let var_0 = arg_2;
    global2 = array<vec2<u32>, 28>();
    global2 = array<vec2<u32>, 28>();
    let var_1 = Struct_1(global0.a, global0.b);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 265f) + _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -364f))));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: i32) -> i32 {
    let var_0 = _wgslsmith_add_i32(-26503i, ~(~arg_3));
    var var_1 = vec3<bool>(arg_2, arg_2, arg_2);
    var var_2 = false;
    let var_3 = _wgslsmith_f_op_f32(max(-231f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1145f, -1213f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(781f)) * -536f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(277f + 494f), -505f)))))));
    var var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(vec2<f32>(-452f, 1f), ~vec4<u32>(7094u, arg_1, 1u, arg_1), arg_0)), var_3) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3, -1380f) + vec2<f32>(_wgslsmith_f_op_f32(var_3 - -192f), var_3))));
    return _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(abs(reverseBits(vec3<i32>(0i, arg_0.a, -28349i))), ~(-vec3<i32>(u_input.a, arg_3, u_input.a))), select(abs(-vec3<i32>(u_input.a, 46333i, arg_0.a)), ~vec3<i32>(global0.b.x, 30761i, 2147483647i), any(!vec4<bool>(arg_2, true, false, true)))), vec3<i32>(global0.a, firstTrailingBit(0i), global0.a));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: f32) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_mod_i32(select(u_input.a, global0.b.x, select(false, true, true)), 23366i), -func_2(Struct_1(24547i, global0.b), ~arg_1, false, u_input.a & -28703i)), _wgslsmith_mult_vec2_i32(global0.b, global0.b));
    global2 = array<vec2<u32>, 28>();
    global1 = _wgslsmith_div_u32(arg_1 >> (4294967295u % 32u), arg_1);
    let var_0 = 913f;
    global2 = array<vec2<u32>, 28>();
    return Struct_1(global0.a, min(min(global0.b, vec2<i32>(min(global0.a, 1i), 2147483647i)), countOneBits(~vec2<i32>(-2147483647i, u_input.a))));
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_1) -> f32 {
    global0 = Struct_1(1i, min(vec2<i32>(i32(-1i) * -2611i, 2147483647i), -(~(vec2<i32>(global0.a, arg_2.b.x) >> (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))))));
    let var_0 = arg_2;
    var var_1 = arg_2;
    global1 = 1u;
    global0 = func_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1039f, 346f, -897f, -786f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-348f, 590f, 1211f, 1073f)), vec4<f32>(-450f, -1306f, -106f, -1311f), vec4<bool>(arg_0, true, true, arg_0))), ~1u > _wgslsmith_clamp_u32(105814u, 4294967295u, 13711u))))), max(_wgslsmith_clamp_u32(67063u, 27640u, ~1u), ~_wgslsmith_sub_u32(136290u, 20365u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-165f + _wgslsmith_f_op_f32(-1542f * -1368f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-258f - -736f))), -285f)));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(all(vec4<bool>(false, true, false, true)), vec2<i32>(u_input.a, 0i), func_1(vec4<f32>(1000f, -259f, 1457f, -872f), 0u, -1000f))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(floor(-386f)))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(647f, 1000f)) - _wgslsmith_f_op_f32(min(2119f, 319f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(152f, -909f, false)) + -745f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-751f * _wgslsmith_f_op_f32(-558f - -500f)))))));
    let var_0 = !vec3<bool>(!any(vec3<bool>(false, false, true)), _wgslsmith_clamp_u32(~9474u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 19248u, 31424u, 40258u), vec4<u32>(0u, 81541u, 27552u, 46033u)), 0u) <= ~max(4147u, 65459u), all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true))));
    let var_1 = !select(select(vec4<bool>(false, !var_0.x, global0.a < u_input.a, true), select(vec4<bool>(true, var_0.x, false, true), select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(false, true, var_0.x, true), var_0.x), vec4<bool>(var_0.x, false, false, var_0.x)), false), vec4<bool>(var_0.x, all(var_0.yx), all(vec2<bool>(true, true)), any(select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, false), true))), vec4<bool>(~17211u == select(0u, 15928u, false), var_0.x, any(!var_0.zz), false));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(210f, -228f, 378f))))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(434f - _wgslsmith_f_op_f32(920f - 1029f)), _wgslsmith_f_op_f32(func_4(!var_1.x, _wgslsmith_div_vec2_i32(global0.b, vec2<i32>(1i, global0.a)), func_1(vec4<f32>(987f, -1679f, -2916f, -1675f), 0u, -162f))), 720f) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(950f, 675f, -378f))) + vec3<f32>(327f, -726f, 919f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1151f, -1210f, -556f), vec3<f32>(669f, -2010f, -1113f), var_0))))));
    global2 = array<vec2<u32>, 28>();
    global3 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mult_vec4_i32(~(~vec4<i32>(-23880i, global0.b.x, -2147483647i, u_input.a)), vec4<i32>(_wgslsmith_add_i32(global0.a, global0.a), func_2(Struct_1(u_input.a, global0.b), 4294967295u, var_1.x, global0.b.x), min(2147483647i, u_input.a), -u_input.a)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.a, global0.b.x, global0.b.x) | vec4<i32>(2147483647i, -13668i, -1i, -60220i), vec4<i32>(u_input.a, 1i, u_input.a, 10828i) | vec4<i32>(9732i, 51202i, global0.a, -6069i)), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(698f)), _wgslsmith_f_op_f32(var_2.x * var_2.x))) * _wgslsmith_f_op_vec2_f32(var_2.zx + var_2.zz)));
}

