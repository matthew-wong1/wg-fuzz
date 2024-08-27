struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: f32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: f32,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_2,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 28>;

var<private> global1: vec3<f32>;

var<private> global2: vec4<u32>;

var<private> global3: array<f32, 19>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> vec2<bool> {
    global1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(395f, _wgslsmith_f_op_f32(abs(1280f)), global3[_wgslsmith_index_u32(4294967295u, 19u)])) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1247f, _wgslsmith_f_op_f32(-arg_0.d.c), -1788f), vec3<f32>(_wgslsmith_f_op_f32(-1000f - global3[_wgslsmith_index_u32(4294967295u, 19u)]), _wgslsmith_f_op_f32(ceil(-490f)), arg_0.c), vec3<bool>(true, true, true)))), vec3<f32>(_wgslsmith_f_op_f32(round(-287f)), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(exp2(1f)))));
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-749f, global1.x, _wgslsmith_f_op_f32(global1.x + 741f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(arg_0.a.e, 774f, true)), _wgslsmith_f_op_f32(-global1.x), arg_0.d.c)) - vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(u_input.c.x, 19u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(884f - global1.x)), 1788f)));
    var var_0 = Struct_1(select(!vec2<bool>(arg_0.a.a.x, true), arg_0.a.a, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 9809u), u_input.c.wx)) <= (55285u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, arg_0.b.x, global2.x), vec3<u32>(arg_0.e.x, u_input.a.x, 2773u)))), -41539i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - -1919f))))), _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(firstTrailingBit(global2.x >> (arg_0.e.x % 32u)) >> (u_input.c.x % 32u), 19u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.x)) + 1f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1800f)), true)));
    var_0 = Struct_1(!select(select(!vec2<bool>(var_0.a.x, arg_0.d.a.x), !arg_0.a.a, arg_0.d.a), vec2<bool>(true, -498f >= global1.x), true), -_wgslsmith_dot_vec2_i32(min(vec2<i32>(var_0.b, u_input.b), vec2<i32>(-15557i, arg_0.a.b)), _wgslsmith_add_vec2_i32(vec2<i32>(arg_0.d.b, -14163i), vec2<i32>(u_input.b, 2147483647i))) | _wgslsmith_div_i32(abs(abs(22292i)), firstTrailingBit(32055i)), _wgslsmith_f_op_f32(f32(-1f) * -287f), 686f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(724f)), _wgslsmith_f_op_f32(step(var_0.e, arg_0.a.c)), all(vec3<bool>(false, var_0.a.x, true))))), _wgslsmith_f_op_f32(var_0.e * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-780f - 1000f)))));
    let var_1 = Struct_4(Struct_2(~(~1u << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_0.e.x, 1u), global2.wzz) % 32u)), select(vec4<bool>(arg_0.e.x <= 0u, true, true, u_input.b != arg_0.a.b), vec4<bool>(true, false, arg_0.a.a.x && false, u_input.a.x > arg_0.e.x), true)), vec4<i32>(u_input.b, countOneBits(_wgslsmith_mult_i32(abs(arg_0.a.b), 1i)), 0i, arg_0.a.b ^ abs(arg_0.a.b)), Struct_2(_wgslsmith_mod_u32(arg_0.b.x, 5607u), vec4<bool>(true, true, any(select(vec3<bool>(false, arg_0.a.a.x, arg_0.a.a.x), vec3<bool>(arg_0.a.a.x, false, true), vec3<bool>(arg_0.a.a.x, var_0.a.x, var_0.a.x))), global1.x < _wgslsmith_f_op_f32(round(-450f)))), Struct_2(u_input.a.x, !vec4<bool>(-1451f < global3[_wgslsmith_index_u32(4294967295u, 19u)], !arg_0.d.a.x, u_input.a.x < u_input.c.x, var_0.a.x)), 45206u <= _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(u_input.c, arg_0.b), u_input.a.x));
    return var_0.a;
}

fn func_2() -> Struct_3 {
    global0 = array<Struct_4, 28>();
    let var_0 = _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i & firstLeadingBit(u_input.b), _wgslsmith_mult_i32(u_input.b >> (global2.x % 32u), 0i), abs(countOneBits(53841i))), vec3<i32>(-410i, -2147483647i, 1i), vec3<i32>(u_input.b, max(u_input.b, -1i), 2147483647i)), max(vec3<i32>(abs(-12073i), _wgslsmith_mod_i32(u_input.b, u_input.b), u_input.b | u_input.b), -countOneBits(vec3<i32>(u_input.b, -6335i, 1i))) & firstLeadingBit(-_wgslsmith_div_vec3_i32(vec3<i32>(-1i, u_input.b, -22304i), vec3<i32>(2147483647i, -176i, 15900i))));
    global0 = array<Struct_4, 28>();
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, 1818f))), -460f, _wgslsmith_div_f32(global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1379f)), _wgslsmith_div_f32(global1.x, -469f))), global1.x) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(824f, -1129f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a.x, 19u)]), _wgslsmith_f_op_f32(round(-1000f)))))));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1405f)), _wgslsmith_f_op_f32(var_1.x + -679f)))))), _wgslsmith_f_op_f32(floor(global1.x)), 136f);
    return Struct_3(Struct_1(!func_3(Struct_3(Struct_1(vec2<bool>(false, true), var_0.x, 991f, global3[_wgslsmith_index_u32(27524u, 19u)], -239f), u_input.c, -358f, Struct_1(vec2<bool>(false, false), 17763i, -1000f, global3[_wgslsmith_index_u32(global2.x, 19u)], var_1.x), u_input.c.xzx)), firstLeadingBit(-29327i), _wgslsmith_f_op_f32(f32(-1f) * -1233f), -1000f, -666f), ~vec4<u32>(_wgslsmith_div_u32(1u, min(u_input.c.x, u_input.a.x)), _wgslsmith_mod_u32(u_input.c.x, ~global2.x), ~0u, 33943u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(u_input.c.x, 19u)])))) + var_1.x), Struct_1(vec2<bool>(true, true), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-19805i, var_0.x, var_0.x, u_input.b), abs(vec4<i32>(u_input.b, 22129i, u_input.b, 0i)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1426f, _wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(abs(1344f))))), 170f), u_input.c.xzy);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: bool) -> vec4<bool> {
    let var_0 = vec2<i32>(_wgslsmith_sub_i32(u_input.b, firstLeadingBit(~max(u_input.b, -1i))), _wgslsmith_div_i32(_wgslsmith_div_i32(37884i << (arg_0.e.x % 32u), func_2().a.b) >> (~(~1u) % 32u), func_2().a.b));
    global0 = array<Struct_4, 28>();
    var var_1 = arg_1.x;
    let var_2 = Struct_4(Struct_2(~(firstLeadingBit(115983u) << (~global2.x % 32u)), select(!(!vec4<bool>(true, arg_0.d.a.x, arg_2, arg_2)), !select(vec4<bool>(false, arg_0.a.a.x, false, true), vec4<bool>(arg_0.a.a.x, false, true, false), false), select(!vec4<bool>(arg_0.a.a.x, arg_2, arg_2, true), vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, arg_2, true), select(vec4<bool>(arg_2, arg_0.d.a.x, arg_0.a.a.x, false), vec4<bool>(arg_2, true, arg_0.a.a.x, arg_2), true)))), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, _wgslsmith_sub_i32(0i, _wgslsmith_dot_vec2_i32(var_0, vec2<i32>(-2147483647i, u_input.b))), 1i, 10703i), vec4<i32>(~(-arg_0.a.b), -12766i, ~(-var_0.x), ~(-6814i))), Struct_2(1u, !select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_2, arg_2, arg_2, true), vec4<bool>(true, arg_0.d.a.x, true, arg_0.d.a.x))), Struct_2(_wgslsmith_clamp_u32(~4294967295u, global2.x, _wgslsmith_clamp_u32(~u_input.a.x, u_input.c.x ^ u_input.c.x, 1u)), vec4<bool>(func_3(arg_0).x, false & arg_0.a.a.x, (arg_0.d.b << (1u % 32u)) > reverseBits(var_0.x), !func_2().d.a.x)), arg_0.d.a.x);
    global1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(arg_1 - _wgslsmith_div_vec3_f32(arg_1, vec3<f32>(global1.x, 502f, 1477f))), _wgslsmith_f_op_vec3_f32(step(arg_1, _wgslsmith_f_op_vec3_f32(max(arg_1, vec3<f32>(global1.x, -1000f, global3[_wgslsmith_index_u32(4294967295u, 19u)])))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(arg_1)))));
    return select(!var_2.c.b, !select(vec4<bool>(true, func_3(Struct_3(arg_0.d, vec4<u32>(u_input.c.x, 8294u, 48080u, u_input.c.x), global3[_wgslsmith_index_u32(var_2.c.a, 19u)], Struct_1(vec2<bool>(true, var_2.a.b.x), var_2.b.x, global3[_wgslsmith_index_u32(arg_0.e.x, 19u)], arg_0.a.d, 1155f), arg_0.b.zyx)).x, func_2().d.a.x, all(vec4<bool>(var_2.e, true, false, true))), !vec4<bool>(false, arg_2, var_2.e, arg_0.d.a.x), select(var_2.a.b, vec4<bool>(arg_2, true, arg_0.d.a.x, false), select(var_2.c.b, var_2.c.b, vec4<bool>(var_2.d.b.x, var_2.d.b.x, arg_2, true)))), true);
}

fn func_1() -> vec4<bool> {
    var var_0 = -min(min(-27034i, _wgslsmith_add_i32(min(u_input.b, 0i), _wgslsmith_mod_i32(96617i, 49620i))), ~_wgslsmith_div_i32(u_input.b, u_input.b));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -1660f, 977f)));
    let var_1 = Struct_2(_wgslsmith_dot_vec3_u32(global2.wxy, firstTrailingBit(_wgslsmith_add_vec3_u32(~vec3<u32>(global2.x, global2.x, u_input.c.x), vec3<u32>(global2.x, 3720u, u_input.a.x)))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, u_input.b <= u_input.b, true, any(vec3<bool>(true, false, true))), func_4(func_2(), vec3<f32>(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(u_input.c.x, 19u)])), _wgslsmith_f_op_f32(-2554f * global1.x), _wgslsmith_f_op_f32(floor(-1271f))), true)));
    global0 = array<Struct_4, 28>();
    global2 = vec4<u32>(~u_input.a.x, firstLeadingBit(21835u), 37490u, 1u);
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(u_input.a.x, func_1());
    global2 = u_input.c;
    var var_1 = func_4(func_2(), vec3<f32>(-1879f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(987f - global1.x))), global3[_wgslsmith_index_u32(~(var_0.a ^ 0u), 19u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(f32(-1f) * -151f)))), var_0.b.x);
    let var_2 = _wgslsmith_mod_u32(global2.x, ~firstLeadingBit(u_input.c.x));
    var var_3 = var_1.x;
    global0 = array<Struct_4, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(~8498u, 19u)])), global1.x, _wgslsmith_f_op_vec2_f32(abs(global1.yy)), u_input.b, global3[_wgslsmith_index_u32(min(43864u, global2.x), 19u)]);
}

