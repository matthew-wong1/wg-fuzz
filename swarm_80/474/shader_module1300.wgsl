struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7>;

var<private> global1: Struct_1;

var<private> global2: Struct_1;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: f32) -> u32 {
    var var_0 = abs(global1.b.x);
    var var_1 = Struct_1(true, abs(firstTrailingBit(global2.b)), u_input.b.ywx, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1091f)) * _wgslsmith_f_op_f32(-arg_1.x)), 672f), vec4<i32>(-1i, -24625i >> ((arg_0.x & global1.c.x) % 32u), -_wgslsmith_mult_i32(global1.e.x, ~10558i), -21682i));
    let var_2 = _wgslsmith_f_op_vec4_f32(-arg_1);
    var_0 = ~96644u;
    var var_3 = ~(~(~(~reverseBits(vec4<u32>(arg_0.x, var_1.b.x, global2.b.x, 68337u)))));
    return 0u;
}

fn func_2(arg_0: vec4<f32>, arg_1: u32) -> vec4<u32> {
    global2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-582f * 437f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.d.x)))) > _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 7u)] * global2.d.x), firstLeadingBit(reverseBits(~vec4<u32>(4294967295u, u_input.d.x, global2.b.x, 1u)) << (~_wgslsmith_add_vec4_u32(global2.b, vec4<u32>(global1.c.x, 1u, 0u, 1u)) % vec4<u32>(32u))), abs(_wgslsmith_sub_vec3_u32(~u_input.b.wwx & min(vec3<u32>(0u, 1u, 4294967295u), global2.c), global2.c)), vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1.c.x, 7u)] * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(2913f, 422f)), 212f))), abs(vec4<i32>(-1i, 2147483647i, global1.e.x, 29982i)));
    var var_0 = _wgslsmith_sub_u32(func_3(global1.b, _wgslsmith_div_vec4_f32(vec4<f32>(-1728f, -710f, arg_0.x, 279f), vec4<f32>(-670f, global0[_wgslsmith_index_u32(arg_1, 7u)], arg_0.x, 303f)), 705f) | firstLeadingBit(~45914u), ~4294967295u);
    global2 = Struct_1(global2.a, ~(~vec4<u32>(_wgslsmith_sub_u32(69967u, arg_1), ~0u, global1.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 73836u, 64852u), global1.b.wwz))), abs(min(_wgslsmith_add_vec3_u32(vec3<u32>(83159u, global1.c.x, arg_1), u_input.b.xxx), u_input.b.yxy)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-495f + 344f), global2.d.x)) * _wgslsmith_f_op_f32(max(global2.d.x, _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(global1.c.x, 7u)], -637f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global1.d.x))))), global1.e);
    var var_1 = ~0i;
    let var_2 = ~global2.e.yy;
    return ~abs(~(firstLeadingBit(vec4<u32>(4294967295u, global1.b.x, u_input.a, 23934u)) >> (~vec4<u32>(global1.b.x, 0u, global1.b.x, 2079u) % vec4<u32>(32u))));
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = ~(~15587u);
    global2 = Struct_1(global2.a, vec4<u32>(global2.b.x, reverseBits(abs(global1.c.x >> (var_0 % 32u))), var_0, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(global1.b.xz, global1.c.xx), vec2<u32>(1522u, 55482u))), _wgslsmith_mult_vec3_u32(~(~vec3<u32>(arg_2.c.x, u_input.d.x, 1u)), ~(~select(vec3<u32>(44292u, 38860u, global1.b.x), vec3<u32>(global2.b.x, 4294967295u, arg_2.b.x), global1.a))), global2.d, -_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(-global2.e, arg_2.e ^ arg_2.e), ~global2.e));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-592f * _wgslsmith_f_op_f32(step(global2.d.x, global2.d.x)))), _wgslsmith_f_op_f32(f32(-1f) * -368f), _wgslsmith_f_op_f32(abs(2239f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 7u)] * 1418f)), -1000f))));
    global0 = array<f32, 7>();
    global0 = array<f32, 7>();
    return Struct_1(!(select(true, arg_2.a, global1.a) || global1.a), u_input.b, reverseBits(global2.b.xyz), var_1.xx, vec4<i32>(~firstTrailingBit(~global2.e.x), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-19191i, 44302i), vec2<i32>(global2.e.x, arg_2.e.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(47091i, arg_2.e.x), global2.e.xw)), _wgslsmith_div_i32(20784i >> (global1.c.x % 32u), -27869i)), -_wgslsmith_mod_i32(_wgslsmith_mult_i32(global1.e.x, 66461i), abs(arg_2.e.x)), arg_2.e.x | ~(~arg_2.e.x)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<i32>) -> Struct_1 {
    global1 = func_4(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(arg_0.x & 56993u, 7u)], global1.d.x), vec2<bool>(global2.a, global2.a || all(select(vec4<bool>(global2.a, true, global2.a, false), vec4<bool>(true, true, true, global1.a), true))), Struct_1(global2.a, func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(603f, global0[_wgslsmith_index_u32(global1.c.x, 7u)], 829f, global0[_wgslsmith_index_u32(global1.c.x, 7u)]), vec4<f32>(global2.d.x, -1079f, global2.d.x, global0[_wgslsmith_index_u32(10576u, 7u)]), false)), global2.b.x) | ~u_input.b, select(u_input.b.zwx, ~global1.c, any(!vec2<bool>(global2.a, true))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.d.x, -1320f) - vec2<f32>(-1268f, global2.d.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-919f, -1240f) + vec2<f32>(827f, global0[_wgslsmith_index_u32(45074u, 7u)])), true)), vec4<i32>(~_wgslsmith_mult_i32(-2326i, arg_1.x), 2147483647i, global2.e.x, max(arg_1.x, ~global1.e.x))));
    let var_0 = !(global0[_wgslsmith_index_u32(40810u, 7u)] < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1088f), true)) * _wgslsmith_f_op_f32(global2.d.x - _wgslsmith_f_op_f32(-global2.d.x))));
    global2 = func_4(_wgslsmith_f_op_f32(-global2.d.x), select(select(vec2<bool>(true, true), vec2<bool>(global2.c.x <= 0u, var_0), arg_1.x > _wgslsmith_mult_i32(6509i, global1.e.x)), vec2<bool>(any(vec4<bool>(global2.a, false, false, global1.a)) || (global1.e.x <= -2147483647i), global1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-544f - global0[_wgslsmith_index_u32(u_input.d.x, 7u)]) * _wgslsmith_f_op_f32(min(888f, global0[_wgslsmith_index_u32(u_input.d.x, 7u)]))) == -1312f), Struct_1(true, _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_sub_u32(arg_0.x, 0u), _wgslsmith_add_u32(57076u, global2.b.x), 1u), ~firstLeadingBit(vec4<u32>(global2.b.x, u_input.a, 4294967295u, 0u))), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, global2.b.x, 0u), u_input.b.xwy), _wgslsmith_f_op_vec2_f32(global2.d - _wgslsmith_f_op_vec2_f32(trunc(global2.d))), global2.e));
    global0 = array<f32, 7>();
    var var_1 = global2.e.xzz;
    return Struct_1(_wgslsmith_clamp_i32(-(arg_1.x | -2147483647i), -func_4(global1.d.x, vec2<bool>(true, global1.a), Struct_1(true, vec4<u32>(1u, global2.c.x, u_input.a, global1.b.x), vec3<u32>(global2.b.x, u_input.b.x, global1.c.x), vec2<f32>(global0[_wgslsmith_index_u32(0u, 7u)], -1065f), global2.e)).e.x, min(2147483647i, _wgslsmith_dot_vec3_i32(global2.e.wzz, global1.e.yyy))) >= select(2147483647i, -1i >> (~u_input.a % 32u), all(vec4<bool>(var_0, true, true, var_0))), ~global2.b, ~vec3<u32>(1u, global1.c.x, ~global1.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-997f, 785f))) * vec2<f32>(_wgslsmith_div_f32(1175f, global0[_wgslsmith_index_u32(1u, 7u)]), _wgslsmith_f_op_f32(-global1.d.x)))), ~global2.e | max(global1.e, vec4<i32>(1i, 1i, max(global1.e.x, global1.e.x), arg_1.x & arg_1.x)));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = Struct_1(global1.a, func_4(_wgslsmith_f_op_f32(round(3650f)), select(!select(vec2<bool>(true, false), vec2<bool>(arg_1.a, false), arg_1.a), vec2<bool>(arg_1.a, false), !global1.a), Struct_1(global2.a, ~firstLeadingBit(vec4<u32>(global1.b.x, 0u, 76905u, 4294967295u)), vec3<u32>(global2.c.x | u_input.b.x, 44027u, 1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2.d.x, 664f)))), min(_wgslsmith_sub_vec4_i32(vec4<i32>(15817i, -9646i, global1.e.x, global1.e.x), vec4<i32>(0i, -2147483647i, 0i, arg_1.e.x)), vec4<i32>(2147483647i, 0i, -2147483647i, global1.e.x)))).b, global1.c, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(696f, arg_0.x) - arg_0), _wgslsmith_f_op_vec2_f32(global1.d + vec2<f32>(705f, 307f)), select(vec2<bool>(global1.a, true), vec2<bool>(false, arg_1.a), vec2<bool>(false, false)))), global1.d), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.d), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_0)))), true)), ~vec4<i32>(1i, ~arg_1.e.x, ~1i, abs(global1.e.x << (arg_1.b.x % 32u))));
    var var_1 = select(vec2<bool>(all(vec4<bool>(all(vec2<bool>(global2.a, arg_1.a)), global0[_wgslsmith_index_u32(u_input.a, 7u)] >= -2146f, func_1(global2.b, vec2<i32>(global2.e.x, arg_1.e.x)).a, any(vec4<bool>(true, arg_1.a, global2.a, true)))), any(!select(vec3<bool>(true, global1.a, var_0.a), vec3<bool>(true, var_0.a, true), vec3<bool>(true, global1.a, global2.a)))), select(!(!select(vec2<bool>(global1.a, true), vec2<bool>(false, global1.a), false)), vec2<bool>(reverseBits(arg_1.e.x) != var_0.e.x, any(vec2<bool>(true, false))), global2.d.x < arg_0.x), !select(vec2<bool>(true, !arg_1.a), select(!vec2<bool>(false, global2.a), !vec2<bool>(false, global2.a), vec2<bool>(false, global1.a)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, true), vec2<bool>(true, false)))));
    var var_2 = -1823f;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.d.x), _wgslsmith_f_op_f32(-arg_1.d.x))), _wgslsmith_f_op_f32(trunc(arg_0.x)), any(!(!vec4<bool>(global2.a, arg_1.a, global2.a, false))))));
    let var_3 = func_4(-1594f, select(select(vec2<bool>(all(vec4<bool>(global2.a, arg_1.a, arg_1.a, true)), true), vec2<bool>(arg_1.d.x > global1.d.x, !var_0.a), true), vec2<bool>(false, any(select(vec3<bool>(var_0.a, false, arg_1.a), vec3<bool>(true, var_1.x, true), false))), !var_1.x), func_4(_wgslsmith_f_op_f32(-arg_1.d.x), !(!vec2<bool>(var_1.x, true)), func_4(_wgslsmith_f_op_f32(f32(-1f) * -1426f), select(vec2<bool>(true, true), !vec2<bool>(var_1.x, false), all(vec3<bool>(false, arg_1.a, false))), arg_1))).a;
    return vec2<bool>(false, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<i32>(-_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(43552i, global2.e.x, -64289i)), _wgslsmith_sub_vec3_i32(global1.e.xyw, global2.e.wwy)), 40218i, _wgslsmith_mult_i32(max(i32(-1i) * -26242i, firstTrailingBit(-1i)), countOneBits(global1.e.x)));
    var var_1 = Struct_1(any(func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.d)), func_1(_wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, global2.c.x, global1.b.x, 1u)), ~vec2<i32>(global2.e.x, 2147483647i)))), firstLeadingBit(vec4<u32>(select(_wgslsmith_mult_u32(0u, 106533u), 1u, !global1.a), firstLeadingBit(u_input.c), ~countOneBits(65909u), global1.c.x)), _wgslsmith_div_vec3_u32(global2.c & ~func_4(global2.d.x, vec2<bool>(true, global2.a), Struct_1(true, vec4<u32>(43349u, 53903u, 4294967295u, u_input.b.x), vec3<u32>(1u, global2.c.x, 4294967295u), vec2<f32>(global0[_wgslsmith_index_u32(global2.c.x, 7u)], 1251f), global1.e)).b.xwx, func_4(1306f, vec2<bool>(true, !global2.a), Struct_1(global2.a, countOneBits(vec4<u32>(36081u, 20723u, global1.c.x, global2.c.x)), _wgslsmith_div_vec3_u32(vec3<u32>(10412u, global2.b.x, 85163u), global1.b.wzx), vec2<f32>(global2.d.x, global0[_wgslsmith_index_u32(u_input.b.x, 7u)]), ~vec4<i32>(global2.e.x, var_0.x, global2.e.x, global2.e.x))).c), vec2<f32>(1f, 1f), _wgslsmith_sub_vec4_i32(~((global2.e | vec4<i32>(-24017i, -11724i, global1.e.x, 14681i)) & global2.e), global2.e << (vec4<u32>(global2.c.x, 0u, ~0u, u_input.b.x) % vec4<u32>(32u))));
    let var_2 = _wgslsmith_div_f32(global1.d.x, global0[_wgslsmith_index_u32(~func_3(_wgslsmith_div_vec4_u32(var_1.b, ~vec4<u32>(global1.c.x, 160u, global1.b.x, global2.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, -781f, var_1.d.x, -236f)), -1506f), 7u)]);
    global2 = Struct_1(false, reverseBits(var_1.b & abs(var_1.b)), global2.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.d.x, _wgslsmith_f_op_f32(min(-1218f, _wgslsmith_f_op_f32(-var_2))))), vec4<i32>(-2147483647i, 17457i, -_wgslsmith_sub_i32(~var_1.e.x, global2.e.x), _wgslsmith_dot_vec4_i32(-(~vec4<i32>(-28608i, var_0.x, 1i, 2147483647i)), abs(var_1.e))));
    let var_3 = Struct_1(func_1(vec4<u32>(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.x, 447f, -155f, 1000f) * vec4<f32>(global1.d.x, -1525f, global1.d.x, var_2)), ~global1.b.x).x, 1u, ~_wgslsmith_sub_u32(1u, global2.b.x), _wgslsmith_mod_u32(4294967295u, ~global1.b.x)), global1.e.zw).a, _wgslsmith_add_vec4_u32(reverseBits(firstLeadingBit(select(vec4<u32>(0u, global2.b.x, 0u, u_input.b.x), vec4<u32>(57526u, 98666u, global1.c.x, global2.b.x), vec4<bool>(true, false, global1.a, false)))), var_1.b), vec3<u32>(min(~global2.b.x, _wgslsmith_add_u32(4294967295u, _wgslsmith_sub_u32(var_1.c.x, 14840u))), _wgslsmith_mod_u32(global2.b.x, 4294967295u), _wgslsmith_dot_vec2_u32(global2.b.xx, ~_wgslsmith_div_vec2_u32(global1.b.zx, vec2<u32>(u_input.a, 1u)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.d, _wgslsmith_f_op_vec2_f32(select(global2.d, global2.d, true)), vec2<bool>(true, var_1.a)))))), func_1(countOneBits(min(~vec4<u32>(9675u, global1.c.x, 0u, u_input.c), vec4<u32>(1u, 58276u, 40915u, 4294967295u))), _wgslsmith_add_vec2_i32(vec2<i32>(-2203i, global1.e.x), global1.e.yz)).e);
    global2 = var_3;
    global2 = func_1(global1.b, var_1.e.wz);
    global2 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(42949u, global1.b.x, global2.b.x, 27904u), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(max(var_2, _wgslsmith_f_op_f32(trunc(-1000f))))), 23798i | (~func_4(var_1.d.x, vec2<bool>(var_1.a, global1.a), Struct_1(global2.a, u_input.b, vec3<u32>(u_input.c, var_1.b.x, 1u), global1.d, global1.e)).e.x | -2147483647i));
}

