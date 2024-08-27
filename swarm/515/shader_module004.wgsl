struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 25>;

var<private> global2: array<Struct_1, 2>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec3<i32>) -> vec2<f32> {
    global1 = array<u32, 25>();
    global0 = Struct_1(u_input.d, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(min(u_input.b, max(_wgslsmith_sub_u32(57991u, global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), global0.c ^ global0.e.x)), ~(~1u)), 25u)], global1[_wgslsmith_index_u32(u_input.b, 25u)], global0.a, select(firstTrailingBit(firstTrailingBit(_wgslsmith_sub_vec4_u32(global0.e, global0.e))), vec4<u32>(min(~global0.b, _wgslsmith_div_u32(global0.e.x, 1u)), global1[_wgslsmith_index_u32(4294967295u, 25u)], ~78183u, min(u_input.e, 1u) >> (~8140u % 32u)), (true || (arg_1.a <= -1i)) & any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), false))));
    let var_0 = select(vec3<bool>(true, (0u << (1u % 32u)) >= _wgslsmith_clamp_u32(u_input.a.x, 766u, abs(global0.c)), all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), true)) || all(vec3<bool>(true, false, true))), vec3<bool>(any(vec2<bool>(true, true)) & !any(vec4<bool>(true, false, false, false)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)))), false), !(!all(vec4<bool>(true, true, true, true))));
    var var_1 = Struct_4(~vec2<u32>(~1u, 0u), Struct_2(u_input.d), global2[_wgslsmith_index_u32(~48136u, 2u)], Struct_1(countOneBits(-u_input.d), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, global0.c), 25u)], u_input.e, -(~(-2147483647i) << (~global0.c % 32u)), ~select(global0.e ^ vec4<u32>(u_input.a.x, 1u, global1[_wgslsmith_index_u32(4294967295u, 25u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.e.x, 25u)], 25u)]), ~global0.e, !vec4<bool>(false, false, var_0.x, var_0.x))), Struct_2(_wgslsmith_mult_i32(-_wgslsmith_sub_i32(global0.a, -1i), global0.a)));
    var var_2 = Struct_4(~(~((var_1.a ^ vec2<u32>(u_input.b, 0u)) << (vec2<u32>(0u, 0u) % vec2<u32>(32u)))), Struct_2(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-20450i, 36377i, -1i, 20838i), vec4<i32>(16697i, 1i, 0i, -42275i), false), -vec4<i32>(-12576i, arg_1.b, arg_2.x, var_1.d.d)) << (u_input.a.x % 32u)), Struct_1(~arg_2.x, global1[_wgslsmith_index_u32(var_1.d.e.x, 25u)], 28311u, 1i, global0.e), global2[_wgslsmith_index_u32(u_input.c.x, 2u)], Struct_2(_wgslsmith_mod_i32(-1i, -arg_1.b << (~u_input.e % 32u))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(900f, _wgslsmith_f_op_f32(select(417f, arg_0, var_0.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -123f))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(755f, 876f) - vec2<f32>(arg_0, -995f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0, arg_0))))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_3, arg_3: Struct_3) -> vec2<bool> {
    let var_0 = !select(select(select(vec3<bool>(true, arg_1, false), select(vec3<bool>(arg_1, arg_1, true), vec3<bool>(false, true, false), vec3<bool>(false, false, arg_1)), !arg_1), select(select(vec3<bool>(arg_1, false, true), vec3<bool>(arg_1, arg_1, false), vec3<bool>(false, arg_1, arg_1)), !vec3<bool>(true, false, arg_1), false), false), !vec3<bool>(true, !arg_1, 79239u < global0.e.x), true);
    var var_1 = !arg_1;
    global2 = array<Struct_1, 2>();
    global2 = array<Struct_1, 2>();
    global0 = Struct_1(global0.a, _wgslsmith_add_u32(abs(~(~11884u)), 120969u), min(u_input.a.x >> (u_input.e % 32u), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~global0.e), global0.e), 25u)]), reverseBits(i32(-1i) * -2147483647i), countOneBits(firstTrailingBit(~(~global0.e))));
    return vec2<bool>(true, abs(_wgslsmith_dot_vec3_u32(global0.e.xyy ^ u_input.a, vec3<u32>(global0.e.x, global1[_wgslsmith_index_u32(u_input.a.x, 25u)], 15504u))) <= u_input.a.x);
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = select(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(trunc(-804f)), Struct_3(global0.a, 2391i), vec3<i32>(31244i, -7723i, arg_0.d)))), true, Struct_3(abs(_wgslsmith_mod_i32(8150i, -1i)), arg_0.d), Struct_3(~reverseBits(global0.d), _wgslsmith_add_i32(_wgslsmith_div_i32(-6795i, global0.d), arg_0.a >> (4294967295u % 32u)))), !vec2<bool>(true, !any(vec2<bool>(true, false))), select(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), func_4(vec2<f32>(arg_1, arg_1), true, Struct_3(global0.a, -1i), Struct_3(49040i, 2147483647i)).x)), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1, 384f)))), true, Struct_3(global0.a, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.d, 49888i, 1i), vec3<i32>(global0.a, -1i, arg_0.d))), Struct_3(abs(arg_0.a), ~2147483647i)), func_4(vec2<f32>(756f, 1f), all(vec2<bool>(true, true)), Struct_3(abs(global0.d), ~(-42339i)), Struct_3(reverseBits(u_input.d), ~u_input.d))));
    let var_1 = select(!select(!select(vec4<bool>(false, var_0.x, false, true), vec4<bool>(true, false, var_0.x, true), var_0.x), select(select(vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(true, var_0.x, var_0.x, false)), !vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(var_0.x, true, var_0.x, false)), all(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x)))), !(!select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), !vec4<bool>(var_0.x, var_0.x, var_0.x, false), any(vec2<bool>(false, var_0.x)))), select(select(select(select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(false, false, true, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x)), vec4<bool>(var_0.x, false, true, var_0.x), select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), vec4<bool>(false & var_0.x, !var_0.x, !var_0.x, true), select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(true, true, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false)), !vec4<bool>(var_0.x, true, var_0.x, true))), !select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), !var_0.x), select(select(select(vec4<bool>(true, var_0.x, false, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), false), vec4<bool>(false, true, true, var_0.x), all(vec3<bool>(var_0.x, var_0.x, var_0.x))), !select(vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(var_0.x, false, false, false), false), any(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)))));
    var var_2 = Struct_3(1i, i32(-1i) * -30426i);
    let var_3 = Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, abs(-arg_0.a)), ~_wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(-28765i, u_input.d)), vec2<i32>(var_2.a, arg_0.d), ~vec2<i32>(2147483647i, arg_0.a))));
    let var_4 = global1[_wgslsmith_index_u32(countOneBits(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(global0.c >> (countOneBits(arg_0.c) % 32u)), global0.c), 25u)]), 25u)];
    return global2[_wgslsmith_index_u32(countOneBits(4294967295u), 2u)];
}

fn func_5(arg_0: Struct_4, arg_1: vec3<i32>) -> Struct_4 {
    var var_0 = !vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, false), true)), all(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), true)), select(false, false, true));
    let var_1 = vec3<i32>(arg_0.e.a, (1i << (arg_0.c.c % 32u)) ^ -14140i, -((_wgslsmith_sub_i32(u_input.d, arg_1.x) << (1007u % 32u)) ^ 2147483647i));
    global1 = array<u32, 25>();
    global1 = array<u32, 25>();
    global2 = array<Struct_1, 2>();
    return arg_0;
}

fn func_1() -> vec4<f32> {
    let var_0 = func_5(Struct_4(~(~u_input.c.xy), Struct_2(u_input.d), Struct_1(u_input.d, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(21665u, global0.c, u_input.b)), _wgslsmith_mod_u32(u_input.c.x, 0u)), ~global1[_wgslsmith_index_u32(u_input.a.x, 25u)] ^ (21966u & u_input.a.x), firstLeadingBit(-1i), _wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 42198u, u_input.a.x, 81842u), global0.e)), func_2(Struct_1(_wgslsmith_sub_i32(2147483647i, 2147483647i), reverseBits(0u), 4294967295u, ~global0.a, global0.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1198f))), Struct_2(-2147483647i)), reverseBits(vec3<i32>(~max(global0.d, 0i), -_wgslsmith_mod_i32(global0.d, 36255i), _wgslsmith_mult_i32(-21937i, ~29273i))));
    var var_1 = vec2<u32>(~7269u, 1u);
    var_1 = _wgslsmith_mod_vec2_u32(select(_wgslsmith_add_vec2_u32(~vec2<u32>(32279u, var_1.x), var_0.d.e.wy), vec2<u32>(~(~0u), _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(var_0.a.x, 25u)], var_0.d.c, u_input.b), vec3<u32>(21188u, 4294967295u, 0u))), func_4(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1149f, 548f))))), true, Struct_3(-u_input.d, 0i), Struct_3(func_5(Struct_4(u_input.a.yz, Struct_2(var_0.c.a), global2[_wgslsmith_index_u32(0u, 2u)], var_0.c, Struct_2(-2147483647i)), vec3<i32>(u_input.d, u_input.d, global0.a)).d.d, var_0.e.a))), _wgslsmith_mod_vec2_u32(~global0.e.yx, _wgslsmith_mod_vec2_u32(var_0.c.e.wz, ~min(var_0.d.e.zy, var_0.d.e.xy))));
    let var_2 = select(!select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(func_3(-1724f, Struct_3(17650i, 40798i), vec3<i32>(2147483647i, u_input.d, var_0.b.a))).x == _wgslsmith_f_op_f32(abs(-683f))), select(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), true)), select(vec3<bool>(true, func_4(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1268f, 1435f))), true, Struct_3(var_0.b.a, var_0.c.d), Struct_3(global0.d, 0i)).x, all(vec3<bool>(true, false, false))), select(select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), any(vec2<bool>(false, true))), vec3<bool>(true, -1i <= u_input.d, func_4(vec2<f32>(1630f, 155f), true, Struct_3(-1i, global0.d), Struct_3(global0.d, global0.a)).x), any(vec3<bool>(true, true, false))), vec3<bool>(true, true, true & (global1[_wgslsmith_index_u32(0u, 25u)] >= global1[_wgslsmith_index_u32(33101u, 25u)]))));
    let var_3 = abs(min(vec2<u32>(var_1.x, u_input.e), func_2(Struct_1(90844i, u_input.c.x, u_input.c.x, global0.d, var_0.d.e), _wgslsmith_f_op_f32(961f + -1437f)).e.wx) ^ ~func_2(func_2(Struct_1(var_0.c.d, var_1.x, u_input.c.x, 49759i, global0.e), 428f), _wgslsmith_f_op_vec2_f32(func_3(-291f, Struct_3(-1i, var_0.d.a), vec3<i32>(global0.d, global0.d, global0.a))).x).e.zw);
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(557f, 381f, 483f, -473f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-649f, -499f, -1858f, -133f), vec4<f32>(462f, 734f, -1000f, 429f))) * vec4<f32>(-928f, -834f, 644f, -570f))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2736f - 1000f), _wgslsmith_f_op_f32(step(-506f, -656f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1029f + -1059f) * _wgslsmith_f_op_f32(f32(-1f) * -307f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(932f, -381f)), _wgslsmith_f_op_f32(abs(199f)))), _wgslsmith_f_op_f32(-1f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_1());
    global2 = array<Struct_1, 2>();
    let var_1 = vec3<bool>(false, !select(true, false || (global0.c <= 6109u), true), true);
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0.c, abs(global0.e.x << (26501u % 32u)) & countOneBits(63330u << (~global1[_wgslsmith_index_u32(0u, 25u)] % 32u)), u_input.b ^ _wgslsmith_mult_u32(u_input.c.x, ~firstTrailingBit(u_input.b))), 2u)];
    var var_3 = 1185f;
    var var_4 = 1u;
    global0 = Struct_1(u_input.d ^ -1i, var_2.e.x, firstLeadingBit(~global0.b), _wgslsmith_div_i32(~1i, reverseBits(~select(-2147483647i, global0.a, false))), vec4<u32>(~func_2(Struct_1(-4726i, global0.e.x, 90039u, -10826i, vec4<u32>(12145u, 0u, u_input.a.x, global0.c)), -313f).e.x | 0u, _wgslsmith_sub_u32(4294967295u, ~_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(u_input.e, 25u)], global0.c)), ~(~abs(var_2.c)), global0.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-391f, _wgslsmith_f_op_f32(2137f - var_0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(904f, 150f)) - _wgslsmith_f_op_f32(f32(-1f) * -1167f))))), _wgslsmith_div_vec2_u32(~(~(~var_2.e.xz)), vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 25u)], _wgslsmith_mult_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(1u, 25u)], var_2.c), countOneBits(41106u)))));
}

