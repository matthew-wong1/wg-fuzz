struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_5 {
    a: vec4<bool>,
    b: u32,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(vec2<u32>(70680u, 22617u)), Struct_3(vec2<u32>(0u, 4294967295u)), Struct_3(vec2<u32>(96188u, 26703u)), Struct_3(vec2<u32>(27225u, 1411u)), Struct_3(vec2<u32>(14379u, 143700u)), Struct_3(vec2<u32>(23268u, 61890u)), Struct_3(vec2<u32>(11174u, 1u)), Struct_3(vec2<u32>(0u, 3534u)), Struct_3(vec2<u32>(4294967295u, 1u)), Struct_3(vec2<u32>(77143u, 24678u)), Struct_3(vec2<u32>(4294967295u, 45754u)), Struct_3(vec2<u32>(4294967295u, 8873u)), Struct_3(vec2<u32>(4517u, 5301u)), Struct_3(vec2<u32>(0u, 0u)), Struct_3(vec2<u32>(4294967295u, 57040u)), Struct_3(vec2<u32>(53185u, 19466u)), Struct_3(vec2<u32>(4294967295u, 9763u)), Struct_3(vec2<u32>(4294967295u, 10933u)), Struct_3(vec2<u32>(4294967295u, 90886u)), Struct_3(vec2<u32>(66798u, 82532u)), Struct_3(vec2<u32>(4294967295u, 8633u)), Struct_3(vec2<u32>(4294967295u, 1u)), Struct_3(vec2<u32>(34810u, 25150u)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>) -> vec3<u32> {
    let var_0 = Struct_4(Struct_2(vec3<f32>(global0.d, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-495f + -254f), _wgslsmith_f_op_f32(f32(-1f) * -252f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.d, global0.d)))), Struct_1(~vec3<i32>(6877i, 1i, 1i), ~(-vec4<i32>(u_input.d, -2147483647i, -1i, u_input.d)), true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(150f, -1432f))) * vec2<f32>(global0.d, 771f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.d, -982f))))), Struct_1(max(global1.zwy, max(min(vec3<i32>(u_input.d, 31022i, global1.x), global1.xwy), vec3<i32>(u_input.d, u_input.d, global1.x) ^ vec3<i32>(global1.x, u_input.d, 2147483647i))), vec4<i32>(0i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(33164i, -38194i, global1.x, -5846i), vec4<i32>(1i, -25377i, global1.x, -1i)), u_input.d), 28131i, -2147483647i), true));
    global2 = array<Struct_3, 23>();
    global0 = Struct_5(global0.a, global0.c.a.x, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~0u), 54905u), 23u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(991f))))));
    let var_1 = Struct_4(var_0.a, Struct_1(abs(vec3<i32>(-u_input.d, ~1i, ~(-2147483647i))), vec4<i32>(var_0.a.b.b.x, -1i, var_0.a.b.b.x, 2147483647i), !all(vec4<bool>(true, false, true, true))));
    let var_2 = Struct_1(max(vec3<i32>(abs(var_0.a.b.a.x), 9039i, global1.x), global1.zww), var_1.b.b, true);
    return _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a >> (~1u % 32u), 1u, ~(arg_1.x & arg_1.x)), min(min(_wgslsmith_div_vec3_u32(vec3<u32>(76799u, 0u, 46617u), select(vec3<u32>(1u, 13795u, arg_0), vec3<u32>(global0.b, u_input.b.x, 4294967295u), global0.a.yyy)), firstTrailingBit(vec3<u32>(u_input.b.x, arg_0, arg_1.x) ^ vec3<u32>(global0.b, arg_1.x, global0.c.a.x))), vec3<u32>(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x) ^ ~arg_1.x, ~global0.c.a.x | _wgslsmith_clamp_u32(0u, global0.c.a.x, global0.b), global0.b)));
}

fn func_2() -> Struct_5 {
    let var_0 = _wgslsmith_clamp_vec3_u32((func_3(u_input.a, vec2<u32>(global0.b, u_input.b.x)) & min(~vec3<u32>(0u, 4294967295u, global0.b), firstLeadingBit(vec3<u32>(47192u, u_input.a, u_input.c)))) ^ ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 50812u, global0.b) & vec3<u32>(11820u, 24282u, global0.c.a.x), ~vec3<u32>(global0.c.a.x, 27894u, 53540u)), vec3<u32>(~4294967295u, _wgslsmith_add_u32(~abs(global0.b), global0.b), u_input.c), select(~_wgslsmith_sub_vec3_u32(~vec3<u32>(1u, u_input.a, global0.c.a.x), ~vec3<u32>(global0.b, 93246u, u_input.b.x)), ~(~vec3<u32>(14100u, 1u, global0.c.a.x) << (~vec3<u32>(global0.c.a.x, 0u, 0u) % vec3<u32>(32u))), select(select(!vec3<bool>(true, global0.a.x, false), select(global0.a.zww, global0.a.zxw, global0.a.x), vec3<bool>(global0.a.x, false, true)), vec3<bool>(any(vec2<bool>(global0.a.x, false)), global0.a.x, true), true)));
    var var_1 = 14687i;
    var var_2 = Struct_1(vec3<i32>(-17253i, _wgslsmith_mod_i32(firstLeadingBit(u_input.d), i32(-1i) * -global1.x), _wgslsmith_dot_vec3_i32(global1.zyx, global1.ywz)), ~(~vec4<i32>(~global1.x, global1.x, 0i, u_input.d)), true);
    return Struct_5(!select(vec4<bool>(false, true, true, false | var_2.c), global0.a, vec4<bool>(true, global0.d > global0.d, !var_2.c, var_2.c)), 1u, global2[_wgslsmith_index_u32(1u, 23u)], global0.d);
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_5) -> Struct_2 {
    let var_0 = select(select(vec4<bool>(global0.a.x, false, global0.a.x, all(global0.a.wy)), select(!select(global0.a, vec4<bool>(false, true, false, arg_2.a.x), vec4<bool>(arg_2.a.x, global0.a.x, global0.a.x, true)), vec4<bool>(any(global0.a), arg_2.a.x, global0.a.x, true), global0.a), arg_2.a), !func_2().a, all(vec2<bool>(global0.a.x, !any(vec3<bool>(true, true, arg_2.a.x)))));
    global1 = ~(~vec4<i32>(-(u_input.d | 53702i), -54325i, countOneBits(0i << (0u % 32u)), -2147483647i));
    let var_1 = !arg_2.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(min(global0.d, 1000f)), 583f, 307f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(492f, -2156f, global0.d, -1466f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.d, global0.d, 1206f, global0.d), vec4<f32>(1220f, global0.d, arg_2.d, arg_2.d)))))) + vec4<f32>(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(1727f + arg_2.d), _wgslsmith_f_op_f32(-1154f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_2.d))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.d + -420f)))))));
    let var_3 = ~34009u;
    return Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-375f, -1113f, _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(891f - arg_2.d))) - var_2.wxw), Struct_1(global1.wzz, _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1, 20819i, 1i, global1.x) << (firstTrailingBit(arg_0) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(-1i, -2147483647i, 35250i, -15030i)), vec4<i32>(2147483647i, -15485i, -15120i, u_input.d))), true), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(var_2.yz)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2.d, arg_2.d), var_2.yw)))), var_2.wx, !vec2<bool>(arg_2.a.x, any(vec4<bool>(true, var_1.x, var_1.x, global0.a.x))))));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2) -> vec4<i32> {
    let var_0 = func_2().c;
    global1 = vec4<i32>(func_4(vec4<u32>(_wgslsmith_clamp_u32(1u, ~27362u, ~1u), arg_0.x, max(0u, min(arg_0.x, var_0.a.x)), var_0.a.x), ~(~_wgslsmith_sub_i32(-2147483647i, u_input.d)), func_2()).b.a.x, _wgslsmith_add_i32(i32(-1i) * -3363i, ~(~_wgslsmith_mod_i32(global1.x, u_input.d))), ~firstLeadingBit(_wgslsmith_sub_i32(-2147483647i, -u_input.d)), ~(-1i));
    global0 = Struct_5(!select(vec4<bool>(true, true, global0.a.x, select(false, false, arg_1.b.c)), !global0.a, !vec4<bool>(global0.a.x, global0.a.x, arg_1.b.c, true)), func_2().b, Struct_3(countOneBits(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(arg_0, vec2<u32>(u_input.b.x, 63289u)), global0.c.a))), arg_1.c.x);
    var var_1 = arg_1.c.x;
    let var_2 = select(!global0.a.zwz, !func_2().a.wzw, false);
    return _wgslsmith_mod_vec4_i32(firstTrailingBit(select(~arg_1.b.b, -reverseBits(arg_1.b.b), false)), func_4(vec4<u32>(_wgslsmith_sub_u32(23257u | u_input.c, _wgslsmith_add_u32(25502u, var_0.a.x)), global0.b, _wgslsmith_add_u32(47852u, var_0.a.x), countOneBits(~arg_0.x)), -abs(-global1.x), Struct_5(vec4<bool>(false, false, func_4(vec4<u32>(16392u, 6171u, u_input.a, arg_0.x), u_input.d, Struct_5(vec4<bool>(arg_1.b.c, var_2.x, global0.a.x, true), var_0.a.x, var_0, -616f)).b.c, any(vec4<bool>(true, var_2.x, var_2.x, true))), 0u, global2[_wgslsmith_index_u32(u_input.b.x, 23u)], arg_1.c.x)).b.b);
}

fn func_1() -> vec2<u32> {
    global1 = min(func_5(u_input.b, func_4(firstTrailingBit(vec4<u32>(global0.c.a.x, 11438u, global0.b, 0u)) >> (min(vec4<u32>(u_input.a, u_input.a, 0u, 38842u), vec4<u32>(global0.c.a.x, global0.c.a.x, 1u, 36035u)) % vec4<u32>(32u)), _wgslsmith_add_i32(-8175i, ~global1.x), func_2())), vec4<i32>((i32(-1i) * -u_input.d) << (global0.c.a.x % 32u), -u_input.d, -1i, _wgslsmith_sub_i32(31264i, global1.x)));
    let var_0 = _wgslsmith_dot_vec4_i32(-vec4<i32>(global1.x, u_input.d, -2147483647i, 2147483647i) >> (vec4<u32>(0u, ~1u, global0.b, ~74609u) % vec4<u32>(32u)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, 0i, u_input.d, 9192i), func_4(vec4<u32>(u_input.b.x, 1u, u_input.a, 8612u), u_input.d, Struct_5(global0.a, 0u, global0.c, global0.d)).b.b)) < global1.x;
    global2 = array<Struct_3, 23>();
    var var_1 = Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(global0.d + -152f), _wgslsmith_f_op_f32(1000f + global0.d), _wgslsmith_f_op_f32(-global0.d)))), Struct_1(global1.yzw, ~func_4(vec4<u32>(u_input.b.x, u_input.a, 29924u, 0u), -54772i, Struct_5(vec4<bool>(false, false, var_0, global0.a.x), 4294967295u, global0.c, -247f)).b.b, !(!var_0)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(3118f, 1489f)) - func_4(vec4<u32>(0u, global0.c.a.x, u_input.a, 0u), u_input.d, Struct_5(vec4<bool>(false, global0.a.x, false, false), global0.b, global2[_wgslsmith_index_u32(u_input.a, 23u)], global0.d)).a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-703f)) - _wgslsmith_div_f32(global0.d, global0.d)))), Struct_1(firstTrailingBit(global1.wxx), vec4<i32>(15900i, _wgslsmith_mod_i32(u_input.d, select(global1.x, 0i, true)), min(_wgslsmith_mod_i32(global1.x, 0i), firstLeadingBit(global1.x)), 40825i), var_0));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1348f, var_1.a.c.x, -1000f, -552f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.d, -1055f, -1888f, global0.d), vec4<f32>(global0.d, global0.d, -810f, global0.d))), vec4<bool>(false, false, global0.a.x, false)))))));
    return vec2<u32>(_wgslsmith_mult_u32(u_input.a, u_input.b.x), 63361u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = firstTrailingBit(_wgslsmith_sub_vec4_i32(~abs(vec4<i32>(0i, u_input.d, -20304i, u_input.d)), _wgslsmith_mod_vec4_i32(vec4<i32>(reverseBits(global1.x), global1.x, global1.x, 6311i | u_input.d), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, 0i, u_input.d, 1255i), reverseBits(vec4<i32>(global1.x, u_input.d, 42781i, u_input.d))))));
    var var_0 = Struct_3(func_1() | u_input.b);
    global2 = array<Struct_3, 23>();
    let var_1 = func_4(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(max(select(vec4<u32>(1u, 28208u, u_input.b.x, global0.b), vec4<u32>(global0.c.a.x, 6496u, global0.c.a.x, global0.b), global0.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 11145u, var_0.a.x, 19809u), vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, global0.c.a.x), vec4<u32>(global0.c.a.x, u_input.a, var_0.a.x, 51894u))), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.c.a.x, u_input.a, 34391u, 46838u), vec4<u32>(global0.b, 1u, 13874u, 0u), vec4<u32>(42884u, 0u, 15905u, var_0.a.x)), vec4<u32>(var_0.a.x, 4294967295u, var_0.a.x, u_input.c), vec4<u32>(var_0.a.x, u_input.a, var_0.a.x, 4294967295u) & vec4<u32>(var_0.a.x, 80377u, u_input.c, var_0.a.x))), ~select(vec4<u32>(global0.c.a.x, 4294967295u, 0u, 41170u), vec4<u32>(4257u, 9776u, 100188u, global0.b), !vec4<bool>(global0.a.x, global0.a.x, global0.a.x, true))), u_input.d, Struct_5(!func_2().a, func_3(_wgslsmith_div_u32(1u, firstLeadingBit(1u)), countOneBits(vec2<u32>(21342u, 1u) >> (global0.c.a % vec2<u32>(32u)))).x, global0.c, 546f));
    global2 = array<Struct_3, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, 7066i, _wgslsmith_f_op_vec3_f32(-var_1.a));
}

