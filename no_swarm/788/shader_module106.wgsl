struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec3<i32>(1i, 2077i, 1i)));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = Struct_1(vec3<i32>(40683i, -arg_0.a.x, _wgslsmith_mult_i32(min(~(-1i), -40367i), -7596i)));
    var_0 = Struct_1(vec3<i32>(arg_0.a.x, 13750i, arg_2.a.x));
    let var_1 = ~(~_wgslsmith_add_vec3_u32(~vec3<u32>(10409u, 1u, arg_1.x) & vec3<u32>(26897u, 1u, arg_1.x), select(vec3<u32>(13319u, 1u, 20328u), vec3<u32>(u_input.c, u_input.c, 45318u), select(true, false, false))));
    global1 = array<Struct_1, 1>();
    global0 = true;
    return select(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, true, true)), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, false, false, true), select(false, false, true)), true), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), all(vec4<bool>(false, false, false, true))), vec4<bool>(-1000f <= arg_0.b, true, true, false), all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), select(select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), false), true), vec4<bool>(false, true, false, arg_0.b < -522f), true == select(true, false, false)), vec4<bool>(false, true, true, !(u_input.b <= arg_0.a.x))), !any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true)) && true);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    global0 = all(vec4<bool>(all(select(func_3(arg_2, vec2<u32>(33011u, arg_1.x), global1[_wgslsmith_index_u32(arg_1.x, 1u)]), vec4<bool>(false, false, true, false), all(vec3<bool>(false, false, false)))), true, !all(vec2<bool>(true, true)), arg_2.b >= -584f));
    return all(func_3(arg_2, arg_1, arg_3).xx);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> vec3<f32> {
    var var_0 = vec2<bool>(!arg_2, true);
    var_0 = select(select(!(!vec2<bool>(arg_2, false)), select(select(!vec2<bool>(true, arg_2), vec2<bool>(var_0.x, false), !vec2<bool>(false, var_0.x)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(arg_2, false), arg_2), true), !vec2<bool>(false, var_0.x)), vec2<bool>(!var_0.x, (u_input.c | u_input.c) < _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, 1u)))), !func_3(Struct_2(-vec3<i32>(-1i, u_input.b, 2147483647i), 507f), min(vec2<u32>(u_input.c, 86650u), ~vec2<u32>(u_input.a, 4294967295u)), Struct_1(~arg_1.a)).yz, var_0.x);
    global1 = array<Struct_1, 1>();
    global0 = arg_1.a.x < _wgslsmith_dot_vec2_i32(vec2<i32>(1i & abs(u_input.b), abs(arg_1.a.x)), -arg_1.a.yz);
    var_0 = !func_3(Struct_2(select(_wgslsmith_div_vec3_i32(arg_1.a, vec3<i32>(u_input.b, arg_1.a.x, -1i)), arg_1.a, vec3<bool>(var_0.x, arg_2, false)), _wgslsmith_f_op_f32(-797f - _wgslsmith_f_op_f32(trunc(1051f)))), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.c) << (vec2<u32>(19881u, 1u) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 2129u), vec2<u32>(0u, 0u))) | max(vec2<u32>(12627u, u_input.c), ~vec2<u32>(u_input.c, 4294967295u)), arg_1).zy;
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1227f, arg_0, arg_0))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1293f, arg_0, -842f)), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(745f, arg_0, arg_0))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(438f, arg_0, 652f) + vec3<f32>(arg_0, -1428f, -2582f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(579f, 133f, arg_0)), vec3<f32>(arg_0, 1387f, arg_0))), vec3<bool>(true, all(vec4<bool>(false, var_0.x, var_0.x, false)), var_0.x))))));
}

fn func_1() -> vec3<f32> {
    let var_0 = true;
    global0 = false;
    var var_1 = Struct_2(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), ~(~vec3<i32>(0i, -2147483647i, u_input.b))), -abs(~vec3<i32>(53540i, u_input.b, u_input.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(129f)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(194f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-251f + 313f) + -1142f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(502f + -756f), _wgslsmith_div_f32(-441f, 419f))))));
    global0 = countOneBits(_wgslsmith_mod_i32(u_input.b, _wgslsmith_clamp_i32(-var_1.a.x, -2147483647i, countOneBits(u_input.b)))) > 38752i;
    global1 = array<Struct_1, 1>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b + var_1.b) + -458f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-416f))), -403f), _wgslsmith_f_op_vec3_f32(func_4(var_1.b, Struct_1(vec3<i32>(-25636i, var_1.a.x, 33270i)), func_2(vec3<i32>(1i, var_1.a.x, -15631i), vec2<u32>(u_input.a, u_input.a), Struct_2(vec3<i32>(0i, var_1.a.x, var_1.a.x), var_1.b), Struct_1(var_1.a)) | all(vec2<bool>(var_0, var_0)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.b, var_1.b, var_1.b))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, -246f, var_1.b)), var_0)) - vec3<f32>(_wgslsmith_f_op_f32(floor(var_1.b)), _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_div_f32(var_1.b, -1000f))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(sign(var_1.b)), 335f, _wgslsmith_f_op_f32(var_1.b - -1214f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1496f, -2219f, -240f), vec3<f32>(-2380f, 784f, 439f))) + _wgslsmith_f_op_vec3_f32(func_1())) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1980f, 1000f, 574f))))))));
}

