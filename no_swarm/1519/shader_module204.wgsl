struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<f32>) -> vec4<bool> {
    global0 = _wgslsmith_f_op_vec4_f32(-arg_0);
    let var_0 = Struct_1(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(~select(vec2<u32>(41659u, 24244u), vec2<u32>(44080u, 0u), vec2<bool>(true, false)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), abs(vec2<u32>(26740u, 4294967295u)))), firstTrailingBit(abs(~vec2<u32>(1u, 29669u)))), ~(~((u_input.c ^ -2482i) | _wgslsmith_dot_vec2_i32(vec2<i32>(17806i, u_input.b), vec2<i32>(u_input.c, u_input.b)))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(2083f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(abs(-314f)))), var_0, ~max(_wgslsmith_mod_i32(_wgslsmith_sub_i32(25599i, u_input.a), -1i), -77931i), _wgslsmith_div_i32(countOneBits(~var_0.b) >> (max(90732u, ~4294967295u) % 32u), _wgslsmith_div_i32(15860i, var_0.b) | -(u_input.b | -67756i)));
    var var_2 = var_1.d;
    var var_3 = global0.yx;
    return select(vec4<bool>(all(vec3<bool>(true, true, true)), false, true, !((var_3.x == -1913f) & all(vec4<bool>(true, true, true, true)))), select(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false))), vec4<bool>(all(vec3<bool>(false, true, false)), select(false, true, all(vec2<bool>(false, true))), any(vec3<bool>(true, true, true)), true), false), vec4<bool>(true, !(1f <= arg_0.x), firstLeadingBit(62206u << (var_0.a.x % 32u)) <= 6490u, any(select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1047f, -1000f, -1000f, -627f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 1067f, -656f)))))));
    var var_0 = arg_0;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-380f, global0.x, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(142f, -449f, 902f, -1000f) - vec4<f32>(149f, 376f, global0.x, global0.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1663f, 630f, global0.x, -641f) * vec4<f32>(global0.x, global0.x, global0.x, global0.x)) * vec4<f32>(global0.x, global0.x, global0.x, global0.x)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.x - 443f), _wgslsmith_f_op_f32(214f - global0.x), _wgslsmith_f_op_f32(f32(-1f) * -478f), global0.x) - vec4<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -511f), _wgslsmith_f_op_f32(-global0.x), 1013f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1190f, -458f, -1000f, global0.x) * vec4<f32>(1000f, global0.x, 1634f, 3047f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, global0.x, 1080f, -959f))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, 697f, global0.x, global0.x))))), select(vec4<bool>(true, true, true, true), func_3(vec4<f32>(-414f, global0.x, -2115f, -1755f)), vec4<bool>(true, true, true, true)))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(-222f)), _wgslsmith_div_f32(-891f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(496f + 336f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, global0.x, true)))))), _wgslsmith_f_op_f32(sign(324f)), -397f);
    var_0 = arg_0;
    return _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(abs(-854f))));
}

fn func_1(arg_0: u32) -> u32 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(233f)), 1856f), global0.x, global0.x, _wgslsmith_f_op_f32(round(-963f)))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-3366f, global0.x, _wgslsmith_f_op_f32(global0.x * 422f), _wgslsmith_f_op_f32(trunc(global0.x))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(750f, global0.x, global0.x, -1000f) + vec4<f32>(808f, 1851f, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, global0.x, -1598f, 347f))))))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -1000f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x * global0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1016f, 1001f, global0.x, -1333f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-290f, 831f, global0.x, global0.x) + vec4<f32>(-770f, global0.x, 737f, -120f)))))));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1457f, -1493f, global0.x, global0.x)), vec4<f32>(global0.x, 154f, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, global0.x, global0.x, -510f), vec4<f32>(-119f, global0.x, global0.x, global0.x))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, global0.x, global0.x, global0.x))))))));
    global0 = vec4<f32>(-274f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-211f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(vec2<u32>(arg_0, arg_0), u_input.c), Struct_1(vec2<u32>(16343u, arg_0), -40323i))) + _wgslsmith_f_op_f32(f32(-1f) * -2116f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * 1254f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-266f - 1176f), global0.x)))), 461f);
    var var_1 = _wgslsmith_mod_u32(~arg_0, arg_0);
    return ~(~abs(firstLeadingBit(arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    let var_1 = Struct_1(firstTrailingBit(vec2<u32>(1u, 1u)), 1i);
    let var_2 = Struct_1(~vec2<u32>(max(abs(var_0), 1u), ~func_1(45742u)), _wgslsmith_dot_vec2_i32(~vec2<i32>(-26231i, ~var_1.b), ~(vec2<i32>(var_1.b, -16586i) | vec2<i32>(u_input.c, u_input.c)) << (vec2<u32>(0u, abs(var_1.a.x)) % vec2<u32>(32u))));
    global0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(182f + 1543f))), _wgslsmith_f_op_f32(func_2(Struct_1(var_2.a, 2147483647i), var_1)), 854f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-562f, -376f, 765f, 1387f), vec4<f32>(375f, -424f, 232f, global0.x), true)))))))));
    global0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec4<f32>(1600f, -1000f, global0.x, -644f))), vec4<f32>(335f, 703f, 342f, 544f))))))));
    var var_3 = _wgslsmith_f_op_f32(-447f * -546f);
    let var_4 = -max(-vec4<i32>(var_1.b, var_2.b, -1i, u_input.b) << (vec4<u32>(var_1.a.x, 0u, var_2.a.x, var_1.a.x >> (18092u % 32u)) % vec4<u32>(32u)), -vec4<i32>(918i, u_input.b, -6482i, var_1.b) | firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, var_1.b, var_1.b, -1i), vec4<i32>(-2147483647i, var_2.b, 0i, -3526i))));
    global0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(global0.x)), global0.x, 166f, _wgslsmith_f_op_f32(1000f - global0.x))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -1314f, global0.x) - vec4<f32>(global0.x, global0.x, -365f, global0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 1417f, global0.x)) * vec4<f32>(647f, global0.x, -665f, global0.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(var_2.b, -24706i), -abs(_wgslsmith_mod_i32(17443i, -57550i)), u_input.b), vec2<i32>(-14539i, -_wgslsmith_clamp_i32(var_1.b, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.b, -2147483647i, var_2.b), var_4.xyw), i32(-1i) * -2147483647i)));
}

