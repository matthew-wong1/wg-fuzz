struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1373f, -890f));
    global0 = vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(select(u_input.a.yyw, vec3<u32>(global0.x, u_input.a.x, 0u), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)), vec3<u32>(_wgslsmith_clamp_u32(38233u, 50420u, u_input.a.x), 16682u, u_input.a.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(select(u_input.a.x, u_input.a.x, true), _wgslsmith_clamp_u32(u_input.a.x, 85468u, 1u), ~u_input.a.x), ~countOneBits(u_input.a.xyw))), ~90845u, 4207u);
    global0 = ~(~u_input.a.ywx);
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(~11071i, 34502i), 0i), -36469i);
    global0 = select(~u_input.a.wzw, vec3<u32>((global0.x & 1u) >> ((global0.x & ~19484u) % 32u), reverseBits(_wgslsmith_clamp_u32(~u_input.a.x, u_input.a.x, _wgslsmith_div_u32(global0.x, u_input.a.x))), reverseBits(global0.x)), !(39097u == (1u >> (abs(u_input.a.x) % 32u))));
    return !select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, any(vec2<bool>(true, true)))), vec2<bool>(true, false), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>) -> vec3<i32> {
    global0 = u_input.a.zxw;
    var var_0 = vec3<u32>(global0.x, ~_wgslsmith_div_u32(u_input.a.x, 21910u), ~u_input.a.x);
    let var_1 = arg_0;
    global0 = ~u_input.a.yyw;
    var_0 = vec3<u32>(global0.x, u_input.a.x, ~29656u);
    return _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(0i, -2147483647i, -29268i), firstLeadingBit(abs(vec3<i32>(0i, 0i, 33051i)))), vec3<i32>(6035i, abs(min(_wgslsmith_dot_vec4_i32(vec4<i32>(-7401i, -29051i, 64123i, 2147483647i), vec4<i32>(-31737i, 64036i, -2147483647i, 0i)), -3746i)), firstLeadingBit(~9447i) & (countOneBits(-2147483647i) >> (global0.x % 32u))));
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1433f, 652f, 474f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-317f, _wgslsmith_f_op_f32(abs(-271f)), _wgslsmith_f_op_f32(abs(1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -792f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(561f, _wgslsmith_f_op_f32(609f * _wgslsmith_f_op_f32(f32(-1f) * -1458f)), 1f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1153f, 2692f, 1210f) - vec3<f32>(525f, -202f, 121f))))));
    var var_1 = abs(u_input.a.x) & u_input.a.x;
    var var_2 = Struct_1(func_4(Struct_3(Struct_2(vec3<f32>(var_0.a.x, var_0.b, var_0.c.x), 1274f, vec3<f32>(1000f, -1000f, var_0.b)), func_3(-1i)), select(vec4<bool>(true, true, arg_0, arg_0), !vec4<bool>(arg_0, arg_0, true, true), true)) | vec3<i32>(_wgslsmith_add_i32(i32(-1i) * -1i, select(2147483647i, 2147483647i, arg_0)), ~_wgslsmith_sub_i32(-2147483647i, -33514i), 78906i), _wgslsmith_sub_u32(reverseBits(firstTrailingBit(~global0.x)), 1u), false);
    var var_3 = Struct_2(var_0.c, var_0.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(637f, 1127f, var_0.c.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.b)), -1000f, _wgslsmith_f_op_f32(-var_0.b)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.a.x, 612f, var_0.a.x)))))));
    let var_4 = !select(select(vec4<bool>(-39220i <= var_2.a.x, !var_2.c, true, true), select(!vec4<bool>(false, true, arg_0, true), vec4<bool>(true, false, var_2.c, false), arg_0), all(select(vec3<bool>(var_2.c, arg_0, var_2.c), vec3<bool>(true, arg_0, arg_0), vec3<bool>(false, true, false)))), vec4<bool>(false, func_3(~(-45990i)).x, !arg_0, true), select(select(select(vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(arg_0, arg_0, var_2.c, var_2.c), vec4<bool>(false, true, var_2.c, var_2.c)), !vec4<bool>(arg_0, var_2.c, arg_0, var_2.c), select(vec4<bool>(true, arg_0, var_2.c, false), vec4<bool>(arg_0, arg_0, true, false), vec4<bool>(var_2.c, false, false, var_2.c))), select(!vec4<bool>(true, false, var_2.c, arg_0), select(vec4<bool>(arg_0, arg_0, var_2.c, true), vec4<bool>(var_2.c, false, arg_0, var_2.c), vec4<bool>(arg_0, var_2.c, true, false)), !vec4<bool>(var_2.c, arg_0, true, arg_0)), func_3(_wgslsmith_add_i32(1i, var_2.a.x)).x));
    return _wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(~u_input.a, vec4<u32>(1u, u_input.a.x, var_2.b, 0u)), _wgslsmith_mult_u32(1u, _wgslsmith_clamp_u32(var_2.b << (var_2.b % 32u), ~global0.x, 17862u))) & ~46772u;
}

fn func_1(arg_0: i32) -> f32 {
    global0 = vec3<u32>(~(~_wgslsmith_sub_u32(global0.x, u_input.a.x)) | _wgslsmith_clamp_u32(max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, global0.x), vec2<u32>(16147u, 6637u)), global0.x), func_2(true), 4294967295u), abs(u_input.a.x), select(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 28378u, true));
    let var_0 = Struct_1(firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0, arg_0, arg_0), vec3<i32>(arg_0, arg_0, -2147483647i), -vec3<i32>(-37788i, arg_0, arg_0)) << (u_input.a.wwz % vec3<u32>(32u))), 16592u, any(!vec4<bool>(30574i < arg_0, true, true, arg_0 == arg_0)));
    global0 = abs(vec3<u32>(_wgslsmith_div_u32(55687u ^ var_0.b, global0.x), ~_wgslsmith_mod_u32(1u, global0.x), global0.x ^ firstLeadingBit(84809u))) | _wgslsmith_mult_vec3_u32(u_input.a.wyz, vec3<u32>(12011u, var_0.b, ~u_input.a.x | ~u_input.a.x));
    global0 = u_input.a.yyz;
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1048f, -1000f, 644f)) * vec3<f32>(1211f, -1000f, -366f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-417f * _wgslsmith_div_f32(486f, -2331f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(323f)), -1370f, _wgslsmith_f_op_f32(sign(-1361f))))), vec2<bool>(all(vec4<bool>(!var_0.c, var_0.c, true, var_0.c)), -var_0.a.x > firstTrailingBit(~(-2147483647i))));
    return _wgslsmith_f_op_f32(min(-819f, _wgslsmith_f_op_f32(f32(-1f) * -990f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(max(-699f, _wgslsmith_f_op_f32(func_1(46631i))));
    var_0 = _wgslsmith_f_op_f32(select(2066f, -588f, all(vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(-56503i, vec2<i32>(abs(0i), func_4(Struct_3(Struct_2(vec3<f32>(249f, -442f, -421f), 592f, vec3<f32>(1593f, 1936f, 626f)), vec2<bool>(true, true)), vec4<bool>(true, false, true, true)).x), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(1295f + -1524f), _wgslsmith_f_op_f32(f32(-1f) * -1076f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(242f, -101f)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(979f, 1189f), vec2<f32>(150f, -1009f)))), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), func_3(23281i)))), vec2<f32>(-152f, -2343f))));
}

