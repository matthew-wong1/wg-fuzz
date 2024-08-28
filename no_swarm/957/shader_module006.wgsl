struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, true);

var<private> global1: array<vec4<u32>, 27> = array<vec4<u32>, 27>(vec4<u32>(0u, 0u, 10856u, 4294967295u), vec4<u32>(5219u, 43714u, 1u, 1u), vec4<u32>(0u, 4294967295u, 1u, 15243u), vec4<u32>(4294967295u, 1u, 16969u, 1u), vec4<u32>(49556u, 1u, 0u, 1u), vec4<u32>(34244u, 9067u, 4294967295u, 4294967295u), vec4<u32>(123792u, 11180u, 67263u, 23742u), vec4<u32>(1u, 63313u, 1u, 0u), vec4<u32>(3454u, 0u, 1u, 0u), vec4<u32>(31795u, 4294967295u, 48418u, 1u), vec4<u32>(15455u, 116124u, 4294967295u, 63158u), vec4<u32>(18082u, 0u, 18036u, 1u), vec4<u32>(0u, 1u, 28918u, 52352u), vec4<u32>(29992u, 24775u, 0u, 1u), vec4<u32>(39153u, 4294967295u, 39536u, 0u), vec4<u32>(0u, 47728u, 95333u, 0u), vec4<u32>(0u, 0u, 0u, 4294967295u), vec4<u32>(1u, 15775u, 71980u, 4960u), vec4<u32>(15221u, 2391u, 0u, 1u), vec4<u32>(16069u, 4294967295u, 83326u, 13579u), vec4<u32>(31446u, 4294967295u, 2797u, 29598u), vec4<u32>(0u, 0u, 1u, 49056u), vec4<u32>(0u, 359u, 28322u, 16121u), vec4<u32>(11248u, 4294967295u, 20836u, 34583u), vec4<u32>(27075u, 35858u, 4294967295u, 0u), vec4<u32>(1u, 1u, 1u, 0u), vec4<u32>(25759u, 1u, 32744u, 41271u));

var<private> global2: vec3<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: bool, arg_1: u32) -> vec3<bool> {
    global1 = array<vec4<u32>, 27>();
    let var_0 = select(!vec4<bool>(true | !arg_0, false, all(vec4<bool>(false, true, global0.x, arg_0)), true), select(select(select(!vec4<bool>(global0.x, arg_0, false, global0.x), select(vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(true, arg_0, false, global0.x), true), true), select(!vec4<bool>(global0.x, true, true, arg_0), vec4<bool>(false, true, global0.x, true), true), select(select(vec4<bool>(true, arg_0, arg_0, global0.x), vec4<bool>(arg_0, arg_0, arg_0, global0.x), vec4<bool>(false, true, false, arg_0)), !vec4<bool>(true, global0.x, global0.x, global0.x), select(vec4<bool>(false, global0.x, false, false), vec4<bool>(true, arg_0, true, false), false))), vec4<bool>(!global0.x || false, arg_0 | arg_0, any(select(vec4<bool>(false, global0.x, global0.x, arg_0), vec4<bool>(true, false, arg_0, arg_0), vec4<bool>(global0.x, false, global0.x, arg_0))), true), false), true);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-246f * 406f))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(759f, _wgslsmith_f_op_f32(f32(-1f) * -1762f), _wgslsmith_f_op_f32(max(243f, -1073f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(222f, -1367f, -297f) - vec3<f32>(523f, -1112f, -3130f))))));
    let var_2 = 0u;
    global0 = var_0.wxw;
    return select(var_0.wwy, select(vec3<bool>(global0.x, any(!var_0), var_0.x), var_0.xzw, vec3<bool>(true, any(var_0.xy), all(select(var_0.yzy, vec3<bool>(false, true, true), arg_0)))), false);
}

fn func_2() -> Struct_1 {
    global1 = array<vec4<u32>, 27>();
    let var_0 = select(func_3(true, 52765u), select(!select(!vec3<bool>(global0.x, true, global0.x), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x), global0.x), any(global0.yy)), vec3<bool>(true, true, false), true), true);
    var var_1 = max(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(abs(~vec3<i32>(-54047i, -2147483647i, -68546i)), abs(min(vec3<i32>(0i, 8799i, 24564i), vec3<i32>(-1i, -2147483647i, 6977i)))), ~vec3<i32>(26902i, 1i, -19571i)), _wgslsmith_div_vec3_i32(~(~countOneBits(vec3<i32>(0i, -2147483647i, 2147483647i))), vec3<i32>(1i, 1i, 1i)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1364f)), _wgslsmith_f_op_f32(721f - 1000f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-724f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1772f)) * -291f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -295f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(381f, -891f, 737f) + vec3<f32>(-511f, -161f, -256f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(125f, 1305f, -576f)))));
    global0 = vec3<bool>(any(!var_0.zx), any(select(!select(vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(true, true, false, false), vec4<bool>(global0.x, var_0.x, var_0.x, true)), select(vec4<bool>(false, false, false, global0.x), select(vec4<bool>(true, false, false, false), vec4<bool>(true, var_0.x, true, global0.x), false), select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(var_0.x, false, var_0.x, true), false)), !var_0.x)), var_0.x);
    return Struct_1(var_2.b.x, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(-var_2.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1424f - var_2.a)), var_2.a), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(var_2.b.x, -519f)), var_2.b.x, var_2.a), var_2.b))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global2.x, u_input.a, global2.x) & vec3<u32>(1u, global2.x, global2.x), vec3<u32>(8257u, global2.x, global2.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a) >> (vec3<u32>(4294967295u, 4294967295u, 1u) % vec3<u32>(32u)), select(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(u_input.a, 12686u, u_input.a), vec3<bool>(global0.x, global0.x, false)))) & _wgslsmith_mult_vec3_u32(~vec3<u32>(global2.x, 4294967295u, 75683u) >> (~vec3<u32>(global2.x, global2.x, u_input.a) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 16494u, u_input.a), vec3<u32>(u_input.a, global2.x, global2.x))), _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(u_input.a, u_input.a, global2.x)), vec3<u32>(~u_input.a, u_input.a, u_input.a), ~firstLeadingBit(~vec3<u32>(global2.x, 57695u, 18036u))));
    let var_1 = -abs(max((vec3<i32>(arg_0.x, -3522i, 2147483647i) >> (vec3<u32>(var_0.x, global2.x, global2.x) % vec3<u32>(32u))) | vec3<i32>(39641i, arg_0.x, arg_0.x), vec3<i32>(0i, 0i, 8593i) | -vec3<i32>(arg_0.x, arg_0.x, arg_0.x)));
    return Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_3.b.x, _wgslsmith_f_op_f32(980f - arg_1.b.x))) * _wgslsmith_f_op_f32(round(arg_1.a))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-597f, 173f, arg_1.b.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3.a, 678f, -948f), arg_2.b, global0.x)) + arg_3.b)), arg_1.b)));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: bool) -> vec3<bool> {
    global2 = reverseBits(vec3<u32>(~0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 19144u, 1u, arg_0) >> (vec4<u32>(4294967295u, 39395u, arg_0, global2.x) % vec4<u32>(32u)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), global2.zx), 27u)]), global2.x));
    global1 = array<vec4<u32>, 27>();
    global0 = !vec3<bool>(!arg_3, !global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1576f)) * _wgslsmith_f_op_f32(arg_1.b.x - arg_1.a)) < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f + 909f), -290f)));
    return vec3<bool>(true, !(!all(vec3<bool>(arg_3, arg_3, false))), any(vec4<bool>(arg_3, !(0u <= global2.x), select(!arg_3, true, arg_3 && true), global0.x)));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: u32) -> vec3<bool> {
    global2 = ~countOneBits(~(~_wgslsmith_div_vec3_u32(vec3<u32>(41794u, global2.x, arg_2), vec3<u32>(global2.x, arg_2, arg_1))));
    global0 = func_5(abs(abs(_wgslsmith_sub_u32(55731u, arg_2))), func_4(~(~abs(vec3<i32>(arg_0, 2147483647i, arg_0))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -869f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2059f, -156f, -1667f))))), func_2(), func_2()), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1395f - -1000f))), 1519f, 521f), global0.x);
    global2 = ~vec3<u32>(~(~min(11660u, arg_1)), ~45132u, 0u);
    var var_0 = !func_5(~_wgslsmith_mod_u32(_wgslsmith_add_u32(22069u, 61477u), _wgslsmith_mod_u32(global2.x, arg_2)), func_4(_wgslsmith_mult_vec3_i32(vec3<i32>(-2400i, -28722i, arg_0) ^ vec3<i32>(arg_0, arg_0, arg_0), max(vec3<i32>(arg_0, arg_0, 0i), vec3<i32>(arg_0, -15205i, arg_0))), Struct_1(_wgslsmith_div_f32(-1990f, -3409f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-990f, 1568f, 543f)))), Struct_1(_wgslsmith_f_op_f32(655f - -1591f), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -2293f, -156f), vec3<f32>(-363f, 181f, 1000f))), func_4(vec3<i32>(11696i, arg_0, arg_0), func_2(), func_4(vec3<i32>(arg_0, -22978i, -35901i), Struct_1(779f, vec3<f32>(-1104f, 195f, -1934f)), Struct_1(486f, vec3<f32>(774f, 1507f, 309f)), Struct_1(316f, vec3<f32>(-1446f, -505f, -1068f))), Struct_1(1068f, vec3<f32>(-859f, -409f, -857f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(224f, 945f, 1000f), vec3<f32>(1254f, 506f, -2087f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(659f, 1196f, -400f), vec3<f32>(-250f, 1159f, 1639f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1346f, 694f, -377f) * vec3<f32>(1432f, 1028f, 450f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-450f, 246f, -1505f), vec3<f32>(1257f, 1717f, -1189f))))), !(!global0.x));
    global0 = func_3(false, 0u);
    return vec3<bool>(true, !var_0.x, global0.x);
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> f32 {
    let var_0 = global2.x;
    var var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(~1u, u_input.a), countOneBits(global2.yx));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(702f + arg_3.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1064f - -220f)))), arg_3.b.x, _wgslsmith_f_op_f32(step(arg_3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-584f + arg_1.b.x) * _wgslsmith_f_op_f32(sign(-1065f))) * arg_1.a))));
    var var_3 = Struct_1(176f, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(587f, _wgslsmith_f_op_f32(526f - -1509f), _wgslsmith_div_f32(640f, arg_3.a)), arg_1.b))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-178f, var_2.x, arg_3.a, -381f))))))), vec4<f32>(_wgslsmith_f_op_f32(max(var_3.b.x, arg_1.a)), _wgslsmith_f_op_f32(exp2(var_3.a)), -1049f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1113f + arg_1.b.x)))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.b.x * _wgslsmith_f_op_f32(var_3.b.x - arg_3.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -904f))), 612f, global0.x)), var_3.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-392f, vec3<f32>(510f, -680f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1241f + _wgslsmith_f_op_f32(ceil(-1000f))))));
    let var_1 = global0.x;
    var var_2 = -abs(-39678i);
    var_2 = countOneBits(-1i);
    var var_3 = global1[_wgslsmith_index_u32(global2.x, 27u)];
    let var_4 = _wgslsmith_f_op_f32(func_6(!(!func_1(_wgslsmith_div_i32(-21281i, 9127i), _wgslsmith_clamp_u32(u_input.a, u_input.a, 0u), ~u_input.a)), var_0, -select(vec4<i32>(1i, _wgslsmith_div_i32(29921i, 12251i), ~(-1i), countOneBits(6251i)), vec4<i32>(-2147483647i, 7176i, select(3177i, 6935i, global0.x), ~2147483647i), !vec4<bool>(true, true, false, global0.x)), Struct_1(func_4(vec3<i32>(i32(-1i) * -16503i, -74610i, 12900i), Struct_1(_wgslsmith_f_op_f32(var_0.a * -456f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, -390f, 730f) + var_0.b)), var_0, Struct_1(_wgslsmith_f_op_f32(sign(var_0.b.x)), vec3<f32>(var_0.a, -479f, 512f))).b.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.a, var_0.b.x, 1160f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.xyy, _wgslsmith_add_i32(_wgslsmith_clamp_i32(-32338i, -2147483647i & _wgslsmith_clamp_i32(2147483647i, -66391i, 0i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 36065i, -20239i), vec3<i32>(22871i, 58932i, -43652i))), 1i), vec4<f32>(745f, _wgslsmith_f_op_f32(step(var_4, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x)))), -601f, -433f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b.yy) - var_0.b.yz));
}

