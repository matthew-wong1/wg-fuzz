struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 13>;

var<private> global1: vec3<bool>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: bool) -> vec4<bool> {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1 + 338f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1, -796f))), global1.x)))));
    let var_1 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(arg_1, arg_1, false)), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * arg_1))), select(vec4<bool>(all(global1.xz), -11752i <= u_input.b, all(global1.zx), true), select(vec4<bool>(false, global1.x, global1.x, true), select(vec4<bool>(arg_2, arg_2, false, arg_2), vec4<bool>(true, true, true, arg_2), vec4<bool>(true, false, false, arg_2)), true), any(vec3<bool>(true, true, true)))));
    let var_2 = 67065u;
    let var_3 = all(!var_1.a.b.zyw);
    let var_4 = vec2<bool>(any(vec2<bool>(var_3, true)), true);
    return select(var_1.a.b, vec4<bool>(global1.x, !var_4.x, _wgslsmith_f_op_f32(var_0.a * var_1.a.a.x) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1016f)) + var_1.a.a.x), !(!any(vec4<bool>(var_3, var_1.a.b.x, true, true)))), !vec4<bool>(var_4.x, all(!var_1.a.b.wy), global1.x, !all(var_1.a.b.ywz)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    global0 = array<vec2<f32>, 13>();
    global1 = !select(arg_1.a.b.zyz, select(arg_1.a.b.yww, !select(vec3<bool>(false, arg_1.a.b.x, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), true), vec3<bool>(false, all(vec4<bool>(arg_1.a.b.x, arg_0.b.x, true, arg_1.a.b.x)), true));
    global1 = vec3<bool>(!all(select(!vec4<bool>(arg_1.a.b.x, true, arg_1.a.b.x, arg_1.a.b.x), select(vec4<bool>(arg_0.b.x, global1.x, false, arg_0.b.x), vec4<bool>(false, arg_0.b.x, arg_1.a.b.x, global1.x), false), true)), global1.x, global1.x);
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.a, vec3<f32>(232f, arg_0.a.x, arg_0.a.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.a.a)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-808f, arg_0.a.x, arg_0.a.x) * arg_0.a) - _wgslsmith_div_vec3_f32(arg_1.a.a, arg_1.a.a)))), select(select(func_3(vec3<u32>(105877u, 4294967295u, u_input.a) & vec3<u32>(u_input.a, u_input.a, u_input.a), _wgslsmith_f_op_f32(arg_0.a.x - 319f), any(arg_0.b)), vec4<bool>(15567u >= u_input.a, true, any(vec4<bool>(arg_0.b.x, arg_1.a.b.x, arg_0.b.x, arg_1.a.b.x)), arg_1.a.b.x), false), !select(arg_1.a.b, select(vec4<bool>(arg_0.b.x, arg_0.b.x, arg_1.a.b.x, false), arg_0.b, vec4<bool>(false, arg_0.b.x, arg_1.a.b.x, arg_0.b.x)), u_input.a > u_input.a), true));
    var var_1 = vec2<i32>(u_input.b, abs(u_input.b));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> i32 {
    var var_0 = abs(~(~_wgslsmith_add_vec2_u32(vec2<u32>(23792u, 8295u) & vec2<u32>(u_input.a, 0u), _wgslsmith_mod_vec2_u32(vec2<u32>(78685u, arg_1), vec2<u32>(u_input.a, arg_1)))));
    var var_1 = Struct_4(arg_1, func_2(Struct_1(_wgslsmith_f_op_vec3_f32(-arg_0.a), !select(vec4<bool>(arg_0.b.x, true, arg_0.b.x, false), vec4<bool>(arg_0.b.x, true, true, arg_0.b.x), arg_0.b.x)), Struct_2(arg_0)), _wgslsmith_div_vec4_i32(-vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(-2147483647i, u_input.b, abs(2147483647i), u_input.b)) & select(vec4<i32>(_wgslsmith_mult_i32(u_input.b, u_input.b), u_input.b, select(u_input.b, -2147483647i, arg_0.b.x), 40088i), ~vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b) & ~vec4<i32>(0i, u_input.b, 1i, u_input.b), !arg_0.b));
    var var_2 = !vec2<bool>(true, arg_0.b.x);
    var_2 = !vec2<bool>(true, !arg_0.b.x);
    let var_3 = Struct_5(func_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.a.x, -1373f, -610f) - var_1.b.a) - var_1.b.a), !var_1.b.b), Struct_2(var_1.b)).a.x);
    return u_input.b;
}

fn func_1(arg_0: Struct_3) -> f32 {
    var var_0 = select(vec3<i32>(func_4(func_2(Struct_1(vec3<f32>(arg_0.a.a.a.x, arg_0.b.a.a.x, arg_0.b.a.a.x), vec4<bool>(global1.x, global1.x, arg_0.a.a.b.x, global1.x)), Struct_2(arg_0.a.a)), u_input.a), u_input.b, max(u_input.b, u_input.b) & (_wgslsmith_mult_i32(5528i, u_input.b) ^ u_input.b)), countOneBits(vec3<i32>(~(19i >> (u_input.a % 32u)), firstTrailingBit(~u_input.b), -1i & _wgslsmith_clamp_i32(2147483647i, u_input.b, 2147483647i))), !vec3<bool>(any(select(vec4<bool>(arg_0.b.a.b.x, global1.x, arg_0.b.a.b.x, arg_0.a.a.b.x), vec4<bool>(true, false, arg_0.b.a.b.x, global1.x), vec4<bool>(global1.x, false, false, false))), 22253u >= u_input.a, select(arg_0.a.a.b.x, true, u_input.b != u_input.b)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-427f, _wgslsmith_f_op_f32(-arg_0.b.a.a.x))), arg_0.b.a.a.x))), _wgslsmith_f_op_f32(1000f - arg_0.b.a.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1295f, -1000f, -734f), vec3<f32>(808f, 1133f, 436f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 435f, -330f)))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1058f, -841f, -813f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1(Struct_3(Struct_2(Struct_1(vec3<f32>(-2230f, -993f, -410f), vec4<bool>(true, global1.x, global1.x, true))), Struct_2(Struct_1(vec3<f32>(787f, 1000f, -1386f), vec4<bool>(true, true, global1.x, global1.x)))))), -987f, _wgslsmith_f_op_f32(-523f - 846f)) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-520f, -2431f, -480f))))))));
    var var_1 = any(global1.xz);
    let var_2 = Struct_5(-365f);
    let var_3 = _wgslsmith_add_i32(u_input.b, u_input.b);
    var_1 = var_2.a < var_0.x;
    var var_4 = _wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(countOneBits(u_input.b), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, var_3), vec2<i32>(u_input.b, var_3)), -var_3))), select(-vec2<i32>(-32i, u_input.b) << (_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, 65782u), abs(vec2<u32>(38705u, u_input.a))) % vec2<u32>(32u)), ~_wgslsmith_sub_vec2_i32(abs(vec2<i32>(-3477i, -37676i)), vec2<i32>(0i, u_input.b)), global1.x));
    global1 = select(func_3(countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(47701u, u_input.a, 94799u) << (vec3<u32>(32352u, u_input.a, 65989u) % vec3<u32>(32u)), vec3<u32>(1u, 3119u, u_input.a) << (vec3<u32>(0u, u_input.a, u_input.a) % vec3<u32>(32u)))), var_0.x, select(!global1.x, countOneBits(1i) != ~u_input.b, true)).wxw, vec3<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.a), 178f)) < -1813f, global1.x, all(select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), !vec4<bool>(global1.x, true, true, false), func_2(Struct_1(vec3<f32>(var_0.x, var_2.a, var_0.x), vec4<bool>(global1.x, global1.x, false, true)), Struct_2(Struct_1(vec3<f32>(var_2.a, var_2.a, -169f), vec4<bool>(global1.x, true, global1.x, true)))).b))), vec3<bool>(firstTrailingBit(_wgslsmith_div_i32(var_4.x, u_input.b)) > _wgslsmith_dot_vec3_i32(vec3<i32>(-44754i, var_3, 9337i), vec3<i32>(23251i, var_4.x, var_4.x)), global1.x, !func_3(reverseBits(vec3<u32>(u_input.a, 5781u, 4294967295u)), 820f, global1.x).x));
    var var_5 = abs(-(~_wgslsmith_mult_vec2_i32(vec2<i32>(var_4.x, 2147483647i), abs(vec2<i32>(-12657i, u_input.b)))));
    let var_6 = func_3(vec3<u32>(_wgslsmith_clamp_u32(~(~u_input.a), u_input.a ^ u_input.a, _wgslsmith_clamp_u32(u_input.a << (u_input.a % 32u), u_input.a, u_input.a)), _wgslsmith_add_u32(_wgslsmith_div_u32(36496u, u_input.a) & u_input.a, ~u_input.a), ~(~(1u & u_input.a))), func_2(func_2(func_2(Struct_1(vec3<f32>(-127f, 1231f, 400f), vec4<bool>(false, global1.x, false, global1.x)), Struct_2(Struct_1(vec3<f32>(1103f, var_2.a, 573f), vec4<bool>(false, global1.x, true, true)))), Struct_2(Struct_1(vec3<f32>(141f, -1000f, -735f), vec4<bool>(false, global1.x, global1.x, true)))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 2103f, -1000f) - vec3<f32>(-2995f, var_0.x, var_0.x)), select(vec4<bool>(false, false, global1.x, global1.x), vec4<bool>(global1.x, false, global1.x, global1.x), global1.x)))).a.x, false).zzx;
    let x = u_input.a;
    s_output = StorageBuffer(-firstTrailingBit(select(vec3<i32>(u_input.b, var_4.x, var_3), vec3<i32>(67389i, u_input.b, -2147483647i), true)) ^ vec3<i32>(-(var_3 ^ var_4.x), 28490i, 1i), ~(~((vec4<u32>(u_input.a, u_input.a, 10958u, u_input.a) >> (vec4<u32>(u_input.a, u_input.a, u_input.a, 57161u) % vec4<u32>(32u))) >> (vec4<u32>(u_input.a, u_input.a, u_input.a, 8895u) % vec4<u32>(32u)))));
}

