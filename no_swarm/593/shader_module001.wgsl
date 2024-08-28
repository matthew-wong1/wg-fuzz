struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: array<i32, 23> = array<i32, 23>(-5559i, i32(-2147483648), -1i, 18573i, 2147483647i, -31059i, i32(-2147483648), -2536i, 25807i, 0i, i32(-2147483648), 93542i, -83972i, 6983i, i32(-2147483648), -2449i, -1i, 0i, 34101i, 36475i, -13476i, 1i, 6742i);

var<private> global2: array<i32, 29> = array<i32, 29>(-1i, -16700i, -1i, i32(-2147483648), -15392i, i32(-2147483648), -7919i, -1i, 10862i, 2389i, i32(-2147483648), 0i, -12486i, -1i, -8266i, -45954i, -1i, -25425i, 0i, -18595i, i32(-2147483648), 0i, -12802i, -1i, 19368i, 1i, -14274i, 14350i, -1i);

var<private> global3: array<vec2<i32>, 23> = array<vec2<i32>, 23>(vec2<i32>(i32(-2147483648), 0i), vec2<i32>(2307i, i32(-2147483648)), vec2<i32>(-22095i, 9631i), vec2<i32>(39884i, -33824i), vec2<i32>(-25861i, 0i), vec2<i32>(2147483647i, 0i), vec2<i32>(-1i, 52774i), vec2<i32>(1i, 37312i), vec2<i32>(i32(-2147483648), 5990i), vec2<i32>(34068i, -1i), vec2<i32>(1i, 2147483647i), vec2<i32>(-10396i, 0i), vec2<i32>(52873i, 0i), vec2<i32>(18864i, 19954i), vec2<i32>(47230i, 2147483647i), vec2<i32>(-1i, -1i), vec2<i32>(-7056i, i32(-2147483648)), vec2<i32>(-18266i, 1i), vec2<i32>(-1i, 0i), vec2<i32>(17545i, 0i), vec2<i32>(-62767i, 2147483647i), vec2<i32>(-11966i, -34850i), vec2<i32>(19476i, 2147483647i));

var<private> global4: array<u32, 9> = array<u32, 9>(1u, 1u, 66399u, 4294967295u, 17887u, 30315u, 46394u, 28373u, 0u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1() -> vec2<f32> {
    global2 = array<i32, 29>();
    global2 = array<i32, 29>();
    global2 = array<i32, 29>();
    global4 = array<u32, 9>();
    global1 = array<i32, 23>();
    return vec2<f32>(-248f, 551f);
}

fn func_3() -> f32 {
    global1 = array<i32, 23>();
    global0 = array<Struct_1, 13>();
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(819f, _wgslsmith_div_f32(-605f, -1012f)))), vec2<f32>(_wgslsmith_f_op_f32(max(-787f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1609f), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1141f, -1000f), vec2<f32>(980f, -1000f), false)) - vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1138f, 1179f) * vec2<f32>(501f, -402f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-153f, -743f) - vec2<f32>(901f, 919f)), global4[_wgslsmith_index_u32(u_input.d, 9u)] <= 75717u))))));
    var var_1 = Struct_1(~(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.d, 9u)], 23u)] | _wgslsmith_div_i32(~1i, _wgslsmith_div_i32(u_input.e.x, u_input.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), -399f, _wgslsmith_f_op_f32(sign(-1824f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 925f, 195f) + vec3<f32>(657f, -915f, 994f)) + vec3<f32>(var_0.x, -2082f, 581f)))), vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_f_op_vec2_f32(func_1()).x))));
    var var_2 = _wgslsmith_f_op_vec3_f32(var_1.c + _wgslsmith_f_op_vec3_f32(var_1.b + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-674f, -1085f)) - _wgslsmith_f_op_f32(var_0.x + -914f)), 346f, 324f)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-500f)), var_2.x, any(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true)))));
}

fn func_2() -> vec4<f32> {
    var var_0 = reverseBits(global1[_wgslsmith_index_u32(3627u, 23u)]);
    let var_1 = u_input.e;
    global4 = array<u32, 9>();
    var var_2 = -2434f;
    let var_3 = Struct_1(27038i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(250f, -1372f, -1233f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1033f, -670f, 727f))))), vec3<f32>(_wgslsmith_f_op_f32(647f * -710f), -428f, 402f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))));
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(962f + var_3.b.x) * var_3.c.x), _wgslsmith_f_op_f32(f32(-1f) * -2274f), _wgslsmith_f_op_f32(ceil(421f)))), vec4<f32>(-1469f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), 435f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(2080f, var_3.d)), _wgslsmith_f_op_f32(-var_3.d), true)) - _wgslsmith_f_op_f32(round(-2476f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 13>();
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-199f * _wgslsmith_f_op_f32(f32(-1f) * -469f)), 1880f), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_1()))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-471f - 749f)), _wgslsmith_f_op_vec2_f32(func_1()).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + -216f))))));
    var var_2 = _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1()).x)));
    var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-420f, var_1.x))));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(1873f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -903f))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_1.x))))), _wgslsmith_div_f32(-663f, -341f), _wgslsmith_f_op_f32(func_3())));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2344f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)), _wgslsmith_div_f32(293f, var_1.x)))));
    global4 = array<u32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(~((0u | global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 9u)], 9u)]) | abs(90380u)) << (reverseBits(global4[_wgslsmith_index_u32(u_input.d << (_wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(5078u, 9u)], u_input.a, 4294967295u) % 32u), 9u)]) % 32u), firstTrailingBit(global2[_wgslsmith_index_u32(u_input.a, 29u)]), u_input.d, vec2<f32>(var_1.x, var_1.x));
}

