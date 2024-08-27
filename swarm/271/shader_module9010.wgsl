struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10> = array<i32, 10>(-56373i, -1i, 2147483647i, 1532i, 16527i, 16204i, 2147483647i, -10929i, 0i, 49539i);

var<private> global1: Struct_1 = Struct_1(30089u, true, true, vec4<f32>(850f, 335f, -145f, 456f), vec4<u32>(0u, 40381u, 0u, 49149u));

var<private> global2: Struct_1;

var<private> global3: vec4<bool>;

var<private> global4: array<f32, 29>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: vec4<f32>) -> i32 {
    let var_0 = vec2<u32>(global1.e.x, u_input.c.x);
    var var_1 = Struct_1(firstTrailingBit(1u), 0i != select(39803i, u_input.a.x, false), !any(vec3<bool>(global2.c, global1.c, global0[_wgslsmith_index_u32(u_input.d.x, 10u)] == -18792i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(global1.d)) + vec4<f32>(global4[_wgslsmith_index_u32(arg_0.x, 29u)], 1254f, -696f, global1.d.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(arg_2, vec4<f32>(global1.d.x, global2.d.x, global4[_wgslsmith_index_u32(10598u, 29u)], 793f)))))), vec4<u32>(_wgslsmith_clamp_u32(~global1.e.x, ~3531u, arg_0.x), countOneBits(min(~var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, u_input.d.x), arg_0.yy))), ~_wgslsmith_add_u32(u_input.b.x, global1.e.x) ^ ~(~0u), arg_1));
    var var_2 = Struct_1(select(4208u, abs(0u) ^ min(global1.e.x, _wgslsmith_dot_vec2_u32(var_0, global2.e.xw)), (_wgslsmith_f_op_f32(-global1.d.x) >= _wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(0u, 29u)]))) | (true || (var_1.c || global2.c))), any(select(select(vec4<bool>(global1.c, global3.x, global1.b, true), !vec4<bool>(global2.b, global2.c, false, var_1.c), global3.x), !select(vec4<bool>(global2.c, global1.c, global1.c, global2.b), vec4<bool>(global3.x, false, global2.c, var_1.c), false), global3.x)), all(select(vec2<bool>(global2.b, global1.b), select(vec2<bool>(true, global1.b), global3.zz, global3.ww), !global3.zz)) & (global3.x || all(vec4<bool>(global3.x, global1.b, global2.c, global1.b))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(arg_0.x, 29u)] - arg_2.x) + _wgslsmith_f_op_f32(ceil(-1000f)))), -933f, global2.d.x, -415f), _wgslsmith_mult_vec4_u32(~select(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global2.e.x, global1.a, 29620u), vec4<u32>(var_0.x, var_0.x, u_input.b.x, arg_0.x)), vec4<u32>(arg_0.x, var_1.e.x, 0u, 4294967295u), true), u_input.b));
    global1 = Struct_1(abs(_wgslsmith_add_u32(abs(~arg_1), ~1u)), any(select(!select(vec3<bool>(global1.c, global3.x, true), vec3<bool>(false, false, false), global1.b), !(!vec3<bool>(false, false, global2.b)), true)), global1.c, vec4<f32>(-1762f, _wgslsmith_f_op_f32(2472f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1845f - -359f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1224f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(~var_2.a, 29u)]))), vec4<u32>(~67601u, arg_1 << (~1u % 32u), 58449u, global1.a) | (var_2.e | vec4<u32>(_wgslsmith_mult_u32(global1.e.x, arg_1), 4294967295u, var_2.e.x, max(0u, 1u))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(arg_2, var_1.d))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_2.d, var_1.d), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2.x, var_2.d.x, global2.d.x, 151f), arg_2)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.d)));
    return _wgslsmith_div_i32(-1i << (select(var_0.x, global2.e.x >> (~var_1.a % 32u), -294f > var_3.x) % 32u), _wgslsmith_add_i32(77268i, -1i));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_3(firstTrailingBit(select(~u_input.b.yxw, vec3<u32>(1u, 4294967295u, 4294967295u), select(vec3<bool>(global1.b, false, global3.x), vec3<bool>(global3.x, false, global3.x), true))) ^ global2.e.zzy, global1.e.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.d.x), arg_0.d.x, _wgslsmith_f_op_f32(select(global1.d.x, _wgslsmith_f_op_f32(arg_0.d.x + arg_0.d.x), global1.c)), 122f) * arg_0.d));
    let var_1 = !(-704f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.d.x))), _wgslsmith_f_op_f32(-1358f - -2063f)));
    var var_2 = Struct_1(global1.a, true, !var_1, vec4<f32>(-700f, 1000f, arg_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global2.d.x, -2963f, false)))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(arg_0.d.x, 273f)))))), global1.e);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-790f, global1.d.x)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.d.x - global1.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1791f, _wgslsmith_f_op_f32(global1.d.x + arg_0.d.x))) - _wgslsmith_f_op_f32(-115f * 1491f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.d.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.c.x, 29u)] - arg_0.d.x), _wgslsmith_f_op_f32(-arg_0.d.x))) - global2.d.x));
    global4 = array<f32, 29>();
    return Struct_1(firstTrailingBit(abs(abs(62108u ^ u_input.c.x))), true, var_2.c, var_2.d, vec4<u32>(u_input.c.x, ~12335u, ~0u, ~(~global2.a ^ 0u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = func_2(var_0);
    global0 = array<i32, 10>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_0.d.wwx)));
    global0 = array<i32, 10>();
    return func_2(arg_0);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(max(global0[_wgslsmith_index_u32(23665u, 10u)], reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(0u, 10u)], 10564i, global0[_wgslsmith_index_u32(arg_0.e.x, 10u)], -10361i), vec4<i32>(51277i, global0[_wgslsmith_index_u32(global2.e.x, 10u)], 0i, -25925i)))), abs(u_input.a.x), -1i), vec3<i32>(1i, min(u_input.a.x, abs(-1i)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~global2.e.x, 15962u), 10u)]));
    var var_1 = global2.d.x;
    let var_2 = _wgslsmith_div_vec4_i32(select(u_input.a, u_input.a, !all(global3.ww) | any(global3.xzx)), vec4<i32>(_wgslsmith_mod_i32(firstLeadingBit(firstTrailingBit(global0[_wgslsmith_index_u32(4294967295u, 10u)])), -2147483647i), i32(-1i) * -global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(arg_0.a, arg_0.a, u_input.b.x)), 10u)], u_input.a.x, ~u_input.a.x));
    global2 = arg_1;
    let var_3 = arg_0;
    return func_4(arg_0, func_4(func_4(Struct_1(arg_0.a ^ arg_0.a, true, global1.b, vec4<f32>(arg_0.d.x, global1.d.x, 543f, var_3.d.x), max(vec4<u32>(4294967295u, arg_1.e.x, 25812u, 524u), vec4<u32>(global1.e.x, arg_0.e.x, 1u, global2.a))), func_2(Struct_1(4294967295u, var_3.c, arg_0.c, vec4<f32>(-1605f, global1.d.x, global2.d.x, var_3.d.x), vec4<u32>(1u, u_input.c.x, 68069u, 4294967295u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-927f, global1.d.x), vec2<f32>(global2.d.x, -368f)))), Struct_1(6950u, !func_2(Struct_1(arg_0.e.x, arg_1.b, arg_1.c, vec4<f32>(var_3.d.x, -1000f, global4[_wgslsmith_index_u32(59596u, 29u)], 2198f), vec4<u32>(0u, 62396u, var_3.e.x, 0u))).b, !arg_1.c, global1.d, _wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, var_3.e.x, arg_1.a), firstTrailingBit(vec4<u32>(4294967295u, 1u, 34886u, 0u)))), vec2<f32>(544f, global4[_wgslsmith_index_u32(global2.a, 29u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(148f, _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(~0u, 29u)] - arg_0.d.x))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    return func_5(func_4(func_2(arg_0), func_2(arg_0), vec2<f32>(-631f, _wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, 1u), 29u)], -1000f)))), Struct_1(0u, true, all(!select(global3.zx, vec2<bool>(false, true), global3.zx)), vec4<f32>(-755f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -425f)), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.d.x + global4[_wgslsmith_index_u32(69558u, 29u)]) * _wgslsmith_f_op_f32(global2.d.x * global1.d.x))), ~select(_wgslsmith_add_vec4_u32(vec4<u32>(42966u, 0u, global1.a, 4294967295u), arg_0.e), global1.e, !vec4<bool>(false, global1.c, global3.x, global1.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global3 = !(!(!select(select(vec4<bool>(global1.c, false, global2.c, false), vec4<bool>(global2.c, true, global2.c, false), vec4<bool>(global3.x, global2.c, global1.b, global1.c)), !vec4<bool>(var_0, true, global2.c, global2.c), var_0)));
    var var_1 = func_1(Struct_1(36034u, all(!global3.zy), u_input.a.x == global0[_wgslsmith_index_u32(~(29285u | u_input.c.x), 10u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), ~abs(global1.e) ^ vec4<u32>(global1.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.a, global2.a, 1u, 64550u), u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, global1.a), global2.e), ~u_input.c.x)));
    let var_2 = func_2(Struct_1(abs(max(u_input.d.x, 0u) << (global1.e.x % 32u)), false, (_wgslsmith_add_i32(0i, -1i) ^ -u_input.a.x) >= abs(-46378i), _wgslsmith_f_op_vec4_f32(-global1.d), ~reverseBits(vec4<u32>(u_input.c.x, global2.a, 0u, 0u))));
    global1 = Struct_1(var_1.e.x, all(select(vec4<bool>(global1.a <= 0u, global1.c, true, false), vec4<bool>(true, all(global3.xxw), false, true), ~global0[_wgslsmith_index_u32(0u, 10u)] <= -2147483647i)), !any(!select(vec2<bool>(true, true), global3.yy, global3.zz)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1085f), _wgslsmith_f_op_f32(abs(global2.d.x)), -198f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.d) - _wgslsmith_div_vec4_f32(vec4<f32>(-1163f, global2.d.x, global1.d.x, -1000f), var_2.d)), _wgslsmith_f_op_vec4_f32(-var_2.d))), u_input.b >> (~func_4(var_2, Struct_1(u_input.b.x, true, true, vec4<f32>(var_1.d.x, global2.d.x, 509f, -942f), vec4<u32>(global1.e.x, 1u, 4294967295u, var_2.e.x)), vec2<f32>(2116f, var_1.d.x)).e % vec4<u32>(32u)));
    let var_3 = 4294967295u;
    global2 = Struct_1(19063u, var_0, var_1.c, vec4<f32>(_wgslsmith_f_op_f32(-1580f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1065f), _wgslsmith_f_op_f32(-var_1.d.x)))), 1734f, global4[_wgslsmith_index_u32(~(1u << (min(1u, 28496u) % 32u)), 29u)], _wgslsmith_f_op_f32(func_4(var_2, Struct_1(u_input.d.x, true, var_0, global2.d, vec4<u32>(var_1.e.x, global1.a, 82265u, var_2.e.x)), var_1.d.yx).d.x - func_2(var_2).d.x)), ~u_input.b);
    let var_4 = _wgslsmith_mult_i32(select(11i >> (_wgslsmith_dot_vec2_u32(global2.e.wz, vec2<u32>(1u, 1u)) % 32u), 1i, global2.b), (firstLeadingBit(-2147483647i) << (u_input.b.x % 32u)) & u_input.a.x);
    var var_5 = var_1.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.x - -240f))))), _wgslsmith_div_f32(1000f, func_2(var_2).d.x), _wgslsmith_f_op_vec3_f32(-var_2.d.yzy));
}

