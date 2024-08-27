struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<u32, 27>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<i32> {
    let var_0 = !(!vec3<bool>(true, true, all(vec4<bool>(false, true, false, false)) && true));
    global1 = array<u32, 27>();
    let var_1 = Struct_5(~(~(~(57621u & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 27u)], 27u)]))), Struct_3(vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 13666i), vec3<i32>(-8804i, u_input.a.x, u_input.a.x)), _wgslsmith_mod_i32(u_input.a.x, firstTrailingBit(1i)), -_wgslsmith_mod_i32(u_input.a.x, 6717i), abs(-53173i)), Struct_1(true, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(select(25637u, global1[_wgslsmith_index_u32(12709u, 27u)], var_0.x), 27u)], global1[_wgslsmith_index_u32(8525u, 27u)] ^ u_input.d), var_0.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-721f, -879f), global0.zx, vec2<bool>(false, var_0.x))) - vec2<f32>(-238f, global0.x))), _wgslsmith_div_vec3_u32(select(vec3<u32>(0u, u_input.b, 48338u), vec3<u32>(4294967295u, 64237u, 1u), select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(false, var_0.x, false))), vec3<u32>(~global1[_wgslsmith_index_u32(97470u, 27u)], 1u, _wgslsmith_mod_u32(83164u, global1[_wgslsmith_index_u32(16850u, 27u)]))), Struct_2(Struct_1(true, u_input.b, true, _wgslsmith_f_op_vec2_f32(-global0.yz)), u_input.c.wyz)), true, Struct_2(Struct_1(var_0.x, global1[_wgslsmith_index_u32(u_input.b, 27u)], true, vec2<f32>(-609f, global0.x)), u_input.c.wxy));
    var var_2 = u_input.a.x;
    return _wgslsmith_add_vec4_i32(var_1.b.a, _wgslsmith_div_vec4_i32(vec4<i32>(reverseBits(var_1.b.a.x), min(0i, ~(-22606i)), abs(~9782i), _wgslsmith_div_i32(var_1.b.a.x, 2147483647i) ^ (i32(-1i) * -37225i)), -countOneBits(vec4<i32>(var_1.b.a.x, 24713i, u_input.a.x, 32567i))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<u32>) -> i32 {
    global1 = array<u32, 27>();
    let var_0 = Struct_3(_wgslsmith_mod_vec4_i32(~vec4<i32>(arg_0.x | u_input.a.x, 2147483647i, i32(-1i) * -25249i, arg_0.x), ~func_3()), Struct_1(!all(vec3<bool>(true, true, true)), 10829u, !any(vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global0.zy)))), ~arg_1.yxz ^ vec3<u32>(0u, _wgslsmith_add_u32(19973u, ~global1[_wgslsmith_index_u32(1u, 27u)]), ~(18761u | arg_1.x)), Struct_2(Struct_1(_wgslsmith_f_op_f32(round(global0.x)) >= 1f, abs(~arg_1.x), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.zx))), u_input.c.zxz));
    return select(select(880i, -var_0.a.x, var_0.d.a.c), 28246i ^ ~arg_0.x, false);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: Struct_3) -> Struct_5 {
    var var_0 = Struct_5(~min(0u, ~abs(u_input.d)), arg_3, ~max(24745u, arg_3.d.b.x << (arg_1.x % 32u)) >= global1[_wgslsmith_index_u32(min(u_input.b, ~global1[_wgslsmith_index_u32(arg_3.d.b.x, 27u)] ^ 53620u), 27u)], Struct_2(Struct_1(!all(vec3<bool>(false, arg_3.b.a, arg_3.b.a)), 1u, true, arg_3.b.d), vec3<u32>(69629u, min(u_input.b, u_input.b & 0u), abs(0u))));
    global1 = array<u32, 27>();
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1450f, var_0.d.a.d.x, arg_0.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 419f, -423f) * vec3<f32>(arg_3.b.d.x, 612f, arg_3.b.d.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1144f, arg_0.x))))));
    var var_1 = vec4<bool>(false | any(vec3<bool>(any(vec4<bool>(false, false, arg_2.b.c, true)), !arg_2.b.a, !arg_2.d.a.a)), -1490f < _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-237f * _wgslsmith_f_op_f32(floor(arg_3.d.a.d.x)))), arg_3.d.a.a, false);
    var var_2 = Struct_3(vec4<i32>(-func_2(_wgslsmith_div_vec4_i32(arg_3.a, arg_3.a), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, 1u, 3341u), u_input.c)), arg_2.a.x, countOneBits(countOneBits(_wgslsmith_dot_vec2_i32(arg_3.a.yx, var_0.b.a.wy))), ~abs(~(-2147483647i))), Struct_1(true, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.c, ~u_input.c), arg_3.c.x), true & all(select(vec3<bool>(var_1.x, false, arg_3.b.c), vec3<bool>(arg_2.b.c, false, true), var_1.yyz)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(arg_0.x)), 1124f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(2289f, arg_3.b.d.x)))), ~vec3<u32>(global1[_wgslsmith_index_u32(~(1u | arg_2.d.a.b), 27u)], ~abs(4294967295u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 22450u), u_input.e)), Struct_2(Struct_1(true, arg_1.x | 1u, var_1.x & arg_3.d.a.a, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -422f), _wgslsmith_f_op_f32(-arg_3.d.a.d.x))), vec3<u32>(1u, min(1986u, 1u), max(arg_2.d.a.b, var_0.b.d.a.b) & 1u)));
    return Struct_5(1u, arg_3, true, Struct_2(var_2.d.a, vec3<u32>(~reverseBits(arg_2.b.b), firstTrailingBit(~26593u), _wgslsmith_mult_u32(~u_input.e.x, ~arg_1.x))));
}

fn func_1(arg_0: u32, arg_1: vec4<f32>) -> Struct_3 {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1 + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-994f, arg_1.x, -557f, global0.x)))) - vec4<f32>(_wgslsmith_f_op_f32(floor(arg_1.x)), _wgslsmith_f_op_f32(-arg_1.x), -584f, _wgslsmith_f_op_f32(select(1329f, -769f, false)))))), vec3<u32>(~u_input.c.x, arg_0, arg_0), Struct_3(vec4<i32>(u_input.a.x | u_input.a.x, u_input.a.x, countOneBits(abs(u_input.a.x)), _wgslsmith_add_i32(~u_input.a.x, -1i)), Struct_1(true, 4294967295u, any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-227f, global0.x)))), firstLeadingBit(vec3<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 27u)], 12008u | arg_0, 1u)), Struct_2(Struct_1(false, ~1u, false, _wgslsmith_div_vec2_f32(arg_1.xz, vec2<f32>(global0.x, global0.x))), vec3<u32>(28670u, arg_0 & 4294967295u, 49078u))), Struct_3(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a), -func_2(vec4<i32>(u_input.a.x, u_input.a.x, -2421i, u_input.a.x), vec4<u32>(global1[_wgslsmith_index_u32(1u, 27u)], u_input.d, u_input.d, 1685u)), firstTrailingBit(-u_input.a.x), -49686i << (1u % 32u)), Struct_1(any(vec4<bool>(true, true, true, true)), 4294967295u, false, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.x, 955f)))), u_input.e, Struct_2(Struct_1(true, 24904u, true, _wgslsmith_f_op_vec2_f32(floor(arg_1.wx))), u_input.c.xyx)));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.b.d.x, _wgslsmith_f_op_f32(-130f + var_0.d.a.d.x), -1140f) * arg_1.xzx)) * vec3<f32>(-472f, -1000f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(max(-1000f, 192f)))));
    var var_1 = _wgslsmith_add_vec3_u32(u_input.c.yww, ~vec3<u32>(1u, ~var_0.a ^ max(arg_0, global1[_wgslsmith_index_u32(4294967295u, 27u)]), 1u));
    var var_2 = select(all(!select(!vec3<bool>(true, true, var_0.d.a.a), vec3<bool>(false, false, true), !vec3<bool>(var_0.b.d.a.a, var_0.b.b.a, var_0.d.a.a))), var_0.d.a.a, ~(~var_1.x) > min(~0u, abs(var_0.b.c.x ^ var_1.x)));
    let var_3 = !var_0.d.a.a;
    return var_0.b;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> StorageBuffer {
    let var_0 = -1851f;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -1024f, 127f) * vec3<f32>(arg_0.b.d.x, 259f, -721f)))))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(108f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-580f)))), arg_1.d.a.d.x))));
    let var_1 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(1193f + -1172f), _wgslsmith_f_op_f32(trunc(-547f)), -952f, _wgslsmith_f_op_f32(-arg_1.d.a.d.x)))) + vec4<f32>(arg_0.b.d.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.x * arg_0.d.a.d.x), _wgslsmith_f_op_f32(-arg_1.b.d.x))), -348f, arg_1.b.d.x)), ~vec3<u32>(64370u, arg_1.c.x, ~(~76526u)), Struct_3(arg_0.a, Struct_1(!(!arg_1.b.c), _wgslsmith_mod_u32(u_input.c.x, 4294967295u), true, vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(exp2(arg_1.b.d.x)))), arg_0.d.b, arg_0.d), func_1(40904u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(352f, arg_1.b.d.x, 231f, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -584f, arg_1.b.d.x, 770f)), arg_1.d.a.a)))).d;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-283f + _wgslsmith_div_f32(func_1(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(14372u, 27u)], u_input.b), vec4<f32>(-303f, arg_0.b.d.x, -249f, arg_1.b.d.x)).d.a.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-712f + global0.x)))), var_0);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1783f);
    return StorageBuffer(arg_0.c, func_2(firstLeadingBit(max(arg_0.a, vec4<i32>(u_input.a.x, arg_0.a.x, 1i, 61665i) & arg_1.a)), abs(u_input.c)), vec2<u32>(reverseBits(1u), _wgslsmith_mult_u32(_wgslsmith_div_u32(var_1.b.x, 33025u) ^ arg_1.c.x, _wgslsmith_clamp_u32(4294967295u, u_input.b, global1[_wgslsmith_index_u32(reverseBits(arg_0.c.x), 27u)]))), u_input.c, arg_1.d.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 27>();
    global1 = array<u32, 27>();
    let x = u_input.a;
    s_output = func_5(func_1(~_wgslsmith_dot_vec4_u32(abs(u_input.c), u_input.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-292f, global0.x, -184f, global0.x) - vec4<f32>(global0.x, 913f, -1065f, global0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-355f, -541f, global0.x, -333f), vec4<f32>(global0.x, global0.x, global0.x, global0.x)))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -595f, global0.x, global0.x)))))), Struct_3(func_3(), Struct_1(select(true, true, true), _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.d, u_input.c.x), u_input.d), all(vec2<bool>(true, true)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1571f), _wgslsmith_div_f32(846f, -1000f))), u_input.e, func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-218f, global0.x, -1283f, -327f))), ~u_input.e >> (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 1u, 17804u), u_input.e) % vec3<u32>(32u)), Struct_3(vec4<i32>(-2147483647i, u_input.a.x, -2147483647i, 1i), func_4(vec4<f32>(global0.x, global0.x, -1000f, 143f), u_input.e, Struct_3(vec4<i32>(50904i, -16316i, u_input.a.x, -2147483647i), Struct_1(false, 22776u, true, global0.yz), vec3<u32>(42661u, 0u, 0u), Struct_2(Struct_1(true, global1[_wgslsmith_index_u32(0u, 27u)], false, vec2<f32>(global0.x, global0.x)), u_input.c.ywz)), Struct_3(vec4<i32>(u_input.a.x, 0i, -18210i, 2147483647i), Struct_1(false, 0u, false, global0.zx), u_input.e, Struct_2(Struct_1(false, 1u, false, vec2<f32>(global0.x, 833f)), vec3<u32>(31615u, global1[_wgslsmith_index_u32(1u, 27u)], 0u)))).d.a, u_input.c.zzx, func_4(vec4<f32>(-401f, -412f, -844f, -2315f), u_input.e, Struct_3(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x), Struct_1(false, 4294967295u, false, vec2<f32>(global0.x, global0.x)), vec3<u32>(u_input.e.x, global1[_wgslsmith_index_u32(u_input.d, 27u)], u_input.c.x), Struct_2(Struct_1(true, 1u, false, vec2<f32>(global0.x, global0.x)), vec3<u32>(0u, u_input.b, global1[_wgslsmith_index_u32(4294967295u, 27u)]))), Struct_3(vec4<i32>(10567i, 1138i, u_input.a.x, 15494i), Struct_1(true, u_input.e.x, true, global0.zx), u_input.e, Struct_2(Struct_1(false, global1[_wgslsmith_index_u32(61083u, 27u)], true, vec2<f32>(668f, global0.x)), u_input.c.ywy))).d), func_4(vec4<f32>(global0.x, -1490f, 197f, global0.x), _wgslsmith_sub_vec3_u32(u_input.c.www, vec3<u32>(12495u, 95171u, u_input.d)), func_4(vec4<f32>(global0.x, -1054f, 938f, -364f), vec3<u32>(1u, global1[_wgslsmith_index_u32(28553u, 27u)], 4294967295u), Struct_3(vec4<i32>(-40855i, -2825i, u_input.a.x, 5634i), Struct_1(false, global1[_wgslsmith_index_u32(4294967295u, 27u)], false, vec2<f32>(637f, global0.x)), vec3<u32>(u_input.d, 14089u, u_input.d), Struct_2(Struct_1(true, global1[_wgslsmith_index_u32(21798u, 27u)], true, vec2<f32>(-1000f, -519f)), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 27u)], 27u)], u_input.c.x, 70u))), Struct_3(vec4<i32>(u_input.a.x, 1i, 49209i, -2147483647i), Struct_1(true, u_input.e.x, false, global0.zy), u_input.c.xzw, Struct_2(Struct_1(true, 81573u, false, global0.zz), vec3<u32>(global1[_wgslsmith_index_u32(u_input.b, 27u)], 34871u, 7038u)))).b, func_1(4294967295u, vec4<f32>(-1000f, -508f, global0.x, 1000f))).b).d));
}

