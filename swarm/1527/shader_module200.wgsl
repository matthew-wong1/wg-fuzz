struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<f32> = vec3<f32>(1466f, -1111f, 1099f);

var<private> global2: array<vec4<i32>, 27> = array<vec4<i32>, 27>(vec4<i32>(-2851i, 5059i, 2143i, 0i), vec4<i32>(1i, 65951i, 0i, -8762i), vec4<i32>(-11211i, 4566i, 2147483647i, 0i), vec4<i32>(26979i, 4133i, 2147483647i, 46396i), vec4<i32>(12948i, -48113i, -1i, -14468i), vec4<i32>(-1i, 19423i, 2147483647i, -26107i), vec4<i32>(1i, -1i, 1i, -26502i), vec4<i32>(-1i, -44136i, 10755i, 23310i), vec4<i32>(-24516i, -30583i, 2147483647i, 0i), vec4<i32>(2147483647i, -1i, 2147483647i, 35712i), vec4<i32>(-1i, 37793i, -1i, 24748i), vec4<i32>(59657i, -34373i, 10370i, -1i), vec4<i32>(-1i, 2765i, -1i, -3459i), vec4<i32>(-21503i, -2678i, i32(-2147483648), 5782i), vec4<i32>(2147483647i, -35900i, -14833i, -1i), vec4<i32>(-83780i, 0i, -19893i, 2147483647i), vec4<i32>(26771i, 15283i, 0i, -1i), vec4<i32>(0i, 2147483647i, -31768i, 1i), vec4<i32>(-26217i, -24250i, -1i, -40470i), vec4<i32>(i32(-2147483648), 43563i, 1i, -1611i), vec4<i32>(1i, -26733i, 39968i, -10583i), vec4<i32>(-18667i, 17779i, -1i, -1i), vec4<i32>(-28198i, 0i, i32(-2147483648), i32(-2147483648)), vec4<i32>(8552i, 23029i, 35524i, -9635i), vec4<i32>(-1i, -33745i, 0i, i32(-2147483648)), vec4<i32>(1i, -1i, 44185i, 2147483647i), vec4<i32>(-5359i, -22962i, 0i, 50029i));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<bool>) -> vec3<u32> {
    global1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.x, 539f, global1.x), vec3<f32>(global1.x, 1213f, 175f))))) - vec3<f32>(_wgslsmith_f_op_f32(max(global1.x, global1.x)), global1.x, global1.x)) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1114f, global1.x, 331f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(843f, global1.x, global1.x)))))));
    var var_0 = _wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(~0i, -u_input.a.x & 21020i), u_input.a.x), ~(-2147483647i));
    let var_1 = 382f;
    let var_2 = Struct_1(_wgslsmith_clamp_i32(0i, abs(u_input.a.x), 1i), arg_1, ~vec2<i32>(~u_input.a.x, u_input.a.x));
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-707f, -360f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-284f + global1.x))) * -684f), -170f));
    return arg_0.yww;
}

fn func_2(arg_0: i32) -> vec3<bool> {
    var var_0 = !(!(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), true)));
    let var_1 = vec2<i32>(abs(arg_0), u_input.a.x);
    var var_2 = Struct_1(-1i, !vec3<bool>(var_0.x & !var_0.x, var_0.x && all(vec3<bool>(false, true, false)), true), ~(select(-u_input.a.yx, _wgslsmith_div_vec2_i32(vec2<i32>(arg_0, 1i), vec2<i32>(var_1.x, 15824i)), true) ^ -countOneBits(vec2<i32>(arg_0, var_1.x))));
    let var_3 = ~select(_wgslsmith_div_vec3_u32(func_3(vec4<u32>(0u, 0u, 1u, 20523u), var_2.b) << (vec3<u32>(42638u, 0u, 8221u) % vec3<u32>(32u)), ~reverseBits(vec3<u32>(41262u, 56076u, 58449u))), vec3<u32>(19546u, 0u, 1u), true);
    let var_4 = Struct_1(-(~u_input.a.x), select(!select(vec3<bool>(var_2.b.x, false, false), var_2.b, !var_2.b), select(select(select(var_2.b, var_2.b, true), var_2.b, select(var_2.b, var_2.b, false)), select(vec3<bool>(var_2.b.x, var_0.x, var_2.b.x), select(var_2.b, var_2.b, var_0.x), select(vec3<bool>(var_2.b.x, var_0.x, var_2.b.x), var_2.b, vec3<bool>(true, true, true))), !select(vec3<bool>(var_0.x, var_2.b.x, true), var_2.b, var_2.b)), false), _wgslsmith_add_vec2_i32(~(-(~vec2<i32>(var_2.a, 0i))), ~firstTrailingBit(-vec2<i32>(u_input.a.x, arg_0))));
    return var_2.b;
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    let var_0 = Struct_1(u_input.a.x, select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), true), func_2(_wgslsmith_mod_i32(u_input.a.x, 2147483647i)), vec3<bool>(true, true, any(vec3<bool>(false, true, true)))), select(func_2(21103i), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - global1.x) + _wgslsmith_f_op_f32(abs(global1.x))) >= _wgslsmith_f_op_f32(-global1.x)), min(select(u_input.a.wz, ~vec2<i32>(u_input.a.x, 20805i), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), u_input.a.wy));
    global1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(2363f, global1.x, -1313f))) * vec3<f32>(-1000f, global1.x, global1.x)) * vec3<f32>(_wgslsmith_f_op_f32(global1.x - -130f), -1424f, _wgslsmith_f_op_f32(-global1.x))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-793f, -470f, 966f) + vec3<f32>(1276f, global1.x, -1000f)), vec3<f32>(-952f, global1.x, global1.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2228f, global1.x, -1363f) - vec3<f32>(-400f, 516f, global1.x))))), vec3<bool>(!var_0.b.x, any(select(select(vec4<bool>(var_0.b.x, false, false, var_0.b.x), vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.b.x), false), vec4<bool>(var_0.b.x, var_0.b.x, true, var_0.b.x), select(vec4<bool>(false, true, var_0.b.x, var_0.b.x), vec4<bool>(var_0.b.x, true, var_0.b.x, var_0.b.x), var_0.b.x))), min(1i, var_0.c.x) >= var_0.c.x)));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1110f)), _wgslsmith_f_op_f32(-1915f - _wgslsmith_f_op_f32(step(363f, 917f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(554f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(exp2(global1.x))));
    var var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(586f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1456f))))), -613f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.x))) - _wgslsmith_f_op_f32(round(global1.x))), 230f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-748f)))));
    let var_2 = arg_0.x;
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(~(~1u) >> (_wgslsmith_div_u32(1u, ~95609u) % 32u), 4294967295u);
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-758f * _wgslsmith_f_op_f32(func_1(vec4<u32>(var_0.x, 54458u, 39677u, var_0.x) | vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)))), 555f));
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, global1.x, 172f), vec3<f32>(1670f, 631f, global1.x), true)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 255f, global1.x) - vec3<f32>(global1.x, global1.x, -1139f))))), vec3<f32>(_wgslsmith_f_op_f32(1164f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global1.x))), global1.x, global1.x));
    global2 = array<vec4<i32>, 27>();
    let var_1 = vec3<bool>(!(!all(vec2<bool>(true, true))), select(any(vec4<bool>(false, true, false, true)) & all(func_2(u_input.a.x).xz), !(any(vec2<bool>(true, false)) | true), (true || func_2(-17215i).x) || any(vec3<bool>(true, false, false))), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-abs(-345i), -(-u_input.a.x & _wgslsmith_dot_vec2_i32(u_input.a.yw, vec2<i32>(-1i, -62836i))), -(~(-1i))), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -20703i), firstLeadingBit(global2[_wgslsmith_index_u32(0u, 27u)]), all(vec2<bool>(true, var_1.x))), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 2147483647i)), ~(vec4<i32>(u_input.a.x, 2147483647i, 2147483647i, 8031i) ^ vec4<i32>(2147483647i, u_input.a.x, -1i, -31378i))), -u_input.a.wy, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(global1.x, -900f))))));
}

