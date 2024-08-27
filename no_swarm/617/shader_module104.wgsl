struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: array<f32, 32>;

var<private> global2: vec4<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: f32) -> f32 {
    let var_0 = vec2<bool>(!(true || any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true))), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), select(true, false, true)), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-261f, -418f, global1[_wgslsmith_index_u32(0u, 32u)], -675f), vec4<f32>(1000f, global1[_wgslsmith_index_u32(u_input.a.x, 32u)], -1015f, arg_1), vec4<bool>(var_0.x, var_0.x, true, var_0.x)))))), 2482f, !vec4<bool>(any(vec4<bool>(false, var_0.x, var_0.x, var_0.x)), ~1u >= ~u_input.a.x, !(var_0.x && var_0.x), _wgslsmith_div_i32(arg_0, arg_0) != u_input.c));
    let var_2 = ~(~max(~0u, global2.x | ~u_input.a.x));
    global1 = array<f32, 32>();
    global1 = array<f32, 32>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, var_1.b) + -219f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_2, 32u)]))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1707f + -1086f)))) - 651f));
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_1 {
    global0 = array<Struct_1, 30>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 106899u, global2.x), global2.zzw), 32u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2.x, 32u)]), -290f, -420f))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -147f, arg_1, 119f) + vec4<f32>(1372f, arg_1, -1000f, global1[_wgslsmith_index_u32(42530u, 32u)]))), vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(floor(arg_1)), global1[_wgslsmith_index_u32(abs(1u), 32u)], arg_1)))), -2098f, vec4<bool>(all(vec2<bool>(false, true)), any(vec2<bool>(true, select(false, false, false))), true, true));
    var var_1 = -30780i;
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(497f * var_0.b)));
    global2 = max(select(~u_input.a, vec4<u32>(28614u, 1u, global2.x, firstLeadingBit(_wgslsmith_mod_u32(1u, 1u))), !var_0.c.x), vec4<u32>(~4294967295u, 1u, ~countOneBits(~u_input.a.x), 78758u));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1028f, -1429f))), var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-708f)) * _wgslsmith_f_op_f32(-var_0.b)))), _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(1u & abs(_wgslsmith_clamp_u32(u_input.a.x, global2.x, 26347u)), 32u)], _wgslsmith_f_op_f32(func_3(-1i, global1[_wgslsmith_index_u32(u_input.a.x, 32u)])))), select(var_0.c, select(vec4<bool>(all(vec2<bool>(var_0.c.x, var_0.c.x)), true, false, var_0.c.x != var_0.c.x), select(select(vec4<bool>(false, var_0.c.x, true, false), var_0.c, true), select(vec4<bool>(var_0.c.x, var_0.c.x, true, var_0.c.x), vec4<bool>(true, true, true, var_0.c.x), var_0.c.x), !var_0.c), select(var_0.c, var_0.c, !vec4<bool>(var_0.c.x, true, false, true))), false & var_0.c.x));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec4<f32>(func_2(_wgslsmith_div_i32(u_input.d.x, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i))), 427f).b, _wgslsmith_f_op_f32(f32(-1f) * -1140f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1031f), _wgslsmith_f_op_f32(func_3(1i, _wgslsmith_f_op_f32(trunc(-854f))))), 632f));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(1u, 32u)], 769f, 669f, var_0.x) * vec4<f32>(959f, global1[_wgslsmith_index_u32(u_input.a.x, 32u)], arg_2.a.x, -850f))) * _wgslsmith_f_op_vec4_f32(var_0 * var_0)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -750f), _wgslsmith_f_op_f32(func_3(u_input.b.x, arg_2.b)), _wgslsmith_div_f32(arg_0.x, -221f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2.x, 32u)])) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(var_0 - vec4<f32>(-875f, arg_2.a.x, arg_0.x, var_0.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, arg_0.x), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 32u)])), var_0.x))), select(!(!(!arg_2.c)), vec4<bool>(select(arg_1.x | arg_1.x, -697f <= global1[_wgslsmith_index_u32(u_input.a.x, 32u)], true), true, arg_2.c.x, false), !vec4<bool>(false, all(vec2<bool>(arg_2.c.x, arg_2.c.x)), any(vec2<bool>(true, arg_2.c.x)), true)));
    global0 = array<Struct_1, 30>();
    var var_2 = 249f;
    var var_3 = 0u;
    return arg_2;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = true;
    var var_1 = _wgslsmith_dot_vec2_u32(~firstLeadingBit(vec2<u32>(36674u, firstTrailingBit(19689u))), ~vec2<u32>(40511u >> (~u_input.a.x % 32u), firstTrailingBit(abs(global2.x))));
    let var_2 = !func_2(u_input.d.x, _wgslsmith_f_op_f32(f32(-1f) * -189f)).c.ww;
    let var_3 = 45719i;
    let var_4 = func_2(min(~9272i, abs(0i)), global1[_wgslsmith_index_u32(132141u, 32u)]);
    return func_2(_wgslsmith_div_i32(u_input.b.x, var_3) | _wgslsmith_sub_i32(0i, firstLeadingBit(u_input.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -880f));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: vec2<f32>) -> bool {
    var var_0 = func_5(u_input.a.wy, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_1, 1u, u_input.a.x), 30u)], func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(290f, 309f), vec2<f32>(arg_2.x, global1[_wgslsmith_index_u32(1u, 32u)])) * arg_0.yx)), !vec2<bool>(all(vec3<bool>(false, false, true)), true), func_2(u_input.b.x, 108f)));
    var var_1 = Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -566f), 917f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(155f - arg_2.x), func_4(vec2<f32>(670f, arg_2.x), var_0.c.yw, Struct_1(vec4<f32>(global1[_wgslsmith_index_u32(global2.x, 32u)], 386f, -897f, -1680f), arg_0.x, vec4<bool>(var_0.c.x, var_0.c.x, true, var_0.c.x))).a.x, all(vec3<bool>(var_0.c.x, var_0.c.x, true)))))), var_0.c);
    var_0 = func_5(max(~vec2<u32>(abs(arg_1), 1u), global2.wy), global0[_wgslsmith_index_u32(43198u, 30u)], func_5(vec2<u32>(~_wgslsmith_clamp_u32(u_input.a.x, 0u, 9973u), _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a.x, 1252u), ~0u)), global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(~1u, 30u)]));
    global2 = firstLeadingBit(~_wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 66084u, 69028u, arg_1)), u_input.a));
    var var_2 = func_5(reverseBits(~select(select(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(0u, 376u), vec2<bool>(var_1.c.x, var_1.c.x)), reverseBits(global2.ww), true)), func_2(~abs(-13172i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, var_0.a.x)), func_4(arg_0.yy, func_4(vec2<f32>(arg_0.x, -547f), vec2<bool>(var_0.c.x, var_1.c.x), Struct_1(var_0.a, arg_0.x, vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x))).c.xy, global0[_wgslsmith_index_u32(~u_input.a.x, 30u)]).a.x))), Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1658f)), !(!func_5(vec2<u32>(arg_1, global2.x), global0[_wgslsmith_index_u32(u_input.a.x, 30u)], Struct_1(vec4<f32>(arg_2.x, arg_0.x, -838f, -870f), -269f, vec4<bool>(false, false, var_1.c.x, true))).c)));
    return func_5(u_input.a.zy, Struct_1(vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1325f), var_1.b, var_1.b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(1250f - _wgslsmith_f_op_f32(var_0.a.x * -1470f)))), !var_0.c), func_2(u_input.c, _wgslsmith_f_op_f32(1000f + -1722f))).c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~global2.x));
    global0 = array<Struct_1, 30>();
    let var_1 = global0[_wgslsmith_index_u32(~108658u, 30u)];
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_1.a))), 1000f, var_1.c);
    var var_3 = func_1(_wgslsmith_f_op_vec3_f32(-var_1.a.ywx), ~48763u, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(u_input.a.x, 32u)])), -1868f)))) | true;
    var var_4 = ~0u;
    let var_5 = var_2.a;
    global0 = array<Struct_1, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~(-72285i), countOneBits(_wgslsmith_sub_i32(2147483647i, 1i)) >> (reverseBits(_wgslsmith_mult_u32(62247u, var_0)) % 32u)), _wgslsmith_dot_vec4_i32(firstLeadingBit(firstTrailingBit(vec4<i32>(u_input.e.x, -63821i, u_input.e.x, 10108i)) << (u_input.a % vec4<u32>(32u))), u_input.e));
}

