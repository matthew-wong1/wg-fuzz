struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 1u);

var<private> global2: bool;

var<private> global3: array<vec4<f32>, 10>;

var<private> global4: array<vec2<bool>, 23> = array<vec2<bool>, 23>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: f32) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(select(312f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1056f))), any(!select(!vec4<bool>(global0.c.a.x, true, false, global0.e.b.a.x), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(false, false, true, false), vec4<bool>(arg_0.x, global0.e.a.a.x, arg_0.x, true)), all(vec4<bool>(false, arg_0.x, global0.c.a.x, global0.e.a.a.x))))));
    let var_1 = select(arg_0, !vec3<bool>(any(vec4<bool>(false, arg_0.x, true, false)), all(!vec4<bool>(true, arg_0.x, arg_0.x, global0.d)), false), select(!vec3<bool>(select(arg_0.x, arg_0.x, global0.c.a.x), select(global0.c.a.x, true, global0.d), true && global0.d), vec3<bool>(33015u <= abs(global1.x), !all(vec3<bool>(true, false, true)), true), arg_0));
    var var_2 = select(arg_0, select(!select(!var_1, !vec3<bool>(false, var_1.x, global0.c.a.x), false), !(!var_1), global0.e.a.a.x), !global0.e.b.a.x);
    global0 = Struct_3(~_wgslsmith_add_u32(32395u, 25044u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.d) * 243f)), Struct_1(select(!global0.e.a.a, !(!vec2<bool>(var_2.x, var_1.x)), true)), !arg_0.x, Struct_2(global0.e.b, Struct_1(var_1.xy), vec2<u32>(12957u, _wgslsmith_dot_vec4_u32(min(vec4<u32>(1u, u_input.b.x, u_input.b.x, global1.x), vec4<u32>(u_input.b.x, 22119u, u_input.b.x, 4294967295u)), vec4<u32>(0u, 0u, 0u, global0.a) | vec4<u32>(40441u, global1.x, global0.e.c.x, global0.a))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0.e.d)), _wgslsmith_div_f32(-972f, 218f)))));
    let var_3 = _wgslsmith_div_vec4_i32(vec4<i32>(-25690i, ~9390i, _wgslsmith_div_i32(arg_1.x, u_input.a.x), ~33585i), ~_wgslsmith_div_vec4_i32(arg_1, u_input.a) >> (firstLeadingBit(vec4<u32>(global1.x, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, global1.x), vec3<u32>(1u, 25803u, global1.x)), select(4294967295u, 65232u, true))) % vec4<u32>(32u)));
    return vec4<f32>(-722f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2)))), arg_2, arg_2);
}

fn func_2() -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(global0.b - global0.e.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(step(-1690f, -948f))) - _wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -417f) + _wgslsmith_f_op_f32(abs(global0.e.d))))), global0.e.d, _wgslsmith_f_op_f32(1633f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global0.e.d)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.b, global0.e.d, global0.c.a.x))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(true, global0.e.b.a.x, true), u_input.a, _wgslsmith_f_op_f32(-global0.e.d))) + global3[_wgslsmith_index_u32(global1.x, 10u)]);
    global0 = Struct_3(4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1305f)))) - 1000f), global0.c, global0.e.a.a.x & !global0.e.b.a.x, global0.e);
    let var_1 = global0.e.d > _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.d) - var_0.x)));
    let var_2 = _wgslsmith_sub_vec3_u32(abs(~_wgslsmith_clamp_vec3_u32(min(vec3<u32>(global1.x, 34272u, global0.e.c.x), u_input.b), u_input.b >> (u_input.b % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(u_input.b, u_input.b))), vec3<u32>(~_wgslsmith_mod_u32(0u, ~global1.x), ~(firstLeadingBit(4294967295u) | select(global1.x, global0.e.c.x, var_1)), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(103451u, 1u, 5899u)), 0u)));
    return Struct_1(global0.e.b.a);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> f32 {
    global1 = vec2<u32>(~(~50670u), 1u) << (firstLeadingBit(u_input.b.yx) % vec2<u32>(32u));
    global0 = Struct_3(global0.e.c.x, _wgslsmith_f_op_f32(sign(-256f)), func_2(), !(!(_wgslsmith_clamp_u32(16328u, 1u, 50917u) > ~4294967295u)), Struct_2(func_2(), Struct_1(select(select(vec2<bool>(global0.c.a.x, arg_0.a.x), vec2<bool>(global0.e.a.a.x, false), true), vec2<bool>(global0.c.a.x, global0.e.a.a.x), any(vec2<bool>(arg_0.a.x, false)))), _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b.x, global1.x), ~(~vec2<u32>(global1.x, u_input.b.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + arg_1.x)))));
    global4 = array<vec2<bool>, 23>();
    let var_0 = global0.c;
    let var_1 = -vec3<i32>(0i, ~_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a.x, u_input.a.x)), -vec2<i32>(u_input.a.x, u_input.a.x)), u_input.a.x);
    return _wgslsmith_f_op_f32(f32(-1f) * -1416f);
}

fn func_1(arg_0: vec4<i32>) -> vec2<bool> {
    var var_0 = _wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(func_4(func_2(), vec4<f32>(global0.b, _wgslsmith_f_op_f32(global0.e.d + _wgslsmith_f_op_f32(-global0.e.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.d) - global0.b), global0.b))));
    let var_1 = Struct_4(vec2<bool>(global0.c.a.x, global0.d));
    var var_2 = !(!select(!select(vec4<bool>(var_1.a.x, global0.e.b.a.x, false, var_1.a.x), vec4<bool>(false, false, true, var_1.a.x), global0.d), select(vec4<bool>(true, true, true, true), vec4<bool>(global0.c.a.x, false, global0.e.a.a.x, false), select(vec4<bool>(var_1.a.x, true, var_1.a.x, var_1.a.x), vec4<bool>(true, true, var_1.a.x, true), vec4<bool>(global0.e.b.a.x, false, false, false))), !vec4<bool>(true, global0.c.a.x, true, true)));
    var var_3 = Struct_2(global0.c, func_2(), _wgslsmith_sub_vec2_u32(~vec2<u32>(86438u, 34683u), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_add_u32(19556u, u_input.b.x), countOneBits(1u)), ~vec2<u32>(global1.x, global0.e.c.x) >> ((u_input.b.zy | vec2<u32>(global0.e.c.x, 5901u)) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(global0.e.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, -1810f, -1109f, global0.b)))))));
    let var_4 = var_1.a.x;
    return vec2<bool>(true, var_1.a.x);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> Struct_3 {
    var var_0 = select(select(!(!select(vec4<bool>(global0.e.b.a.x, arg_3.a.x, global0.e.b.a.x, arg_3.a.x), vec4<bool>(global0.e.b.a.x, arg_3.a.x, arg_3.a.x, global0.d), vec4<bool>(true, false, arg_1.a.x, false))), select(vec4<bool>(!arg_1.a.x, true, true, arg_1.a.x), vec4<bool>(any(global4[_wgslsmith_index_u32(24143u, 23u)]), true, !arg_1.a.x, any(vec3<bool>(global0.d, global0.c.a.x, arg_1.a.x))), select(!vec4<bool>(arg_1.a.x, arg_1.a.x, true, global0.e.a.a.x), vec4<bool>(true, true, arg_1.a.x, arg_3.a.x), !vec4<bool>(global0.d, false, false, false))), !select(select(vec4<bool>(global0.d, true, global0.c.a.x, false), vec4<bool>(true, false, true, arg_3.a.x), vec4<bool>(true, true, false, false)), vec4<bool>(arg_1.a.x, true, global0.e.a.a.x, global0.e.b.a.x), !global0.c.a.x)), vec4<bool>(-10483i != _wgslsmith_mult_i32(u_input.a.x, ~u_input.a.x), !func_2().a.x, false, arg_1.a.x || (global0.c.a.x | true)), true);
    var_0 = vec4<bool>(global0.e.b.a.x, false, false, !(countOneBits(1i) <= firstTrailingBit(arg_2)) && true);
    let var_1 = 34218u;
    let var_2 = func_1(-u_input.a);
    global3 = array<vec4<f32>, 10>();
    return Struct_3(~(~17053u), _wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(func_1(vec4<i32>(u_input.a.x, 2147483647i, arg_2, arg_2)).x, false, all(!arg_3.a)), _wgslsmith_div_vec4_i32(vec4<i32>(max(arg_2, -7267i), -2147483647i, arg_2 ^ 1i, u_input.a.x), u_input.a >> (select(vec4<u32>(15311u, global1.x, var_1, global1.x), vec4<u32>(0u, 21711u, 18892u, global1.x), arg_1.a.x) % vec4<u32>(32u))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(global0.b, _wgslsmith_f_op_f32(-global0.e.d))))))).x, Struct_1(arg_1.a), true == all(select(!vec4<bool>(true, var_2.x, var_2.x, true), !vec4<bool>(true, true, arg_3.a.x, arg_1.a.x), arg_3.a.x & true)), global0.e);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(vec2<u32>(_wgslsmith_mod_u32(1u, u_input.b.x), ~(~0u >> (~global1.x % 32u))), Struct_1(select(vec2<bool>(any(vec3<bool>(true, true, true)), !global0.d), !func_1(u_input.a), vec2<bool>(true, true))), u_input.a.x, Struct_1(global0.c.a));
    var var_0 = vec4<u32>(firstTrailingBit(1u), u_input.b.x, u_input.b.x, 1u);
    let var_1 = !(!select(vec2<bool>(true, true), vec2<bool>(!global0.d, global0.e.d != global0.b), global4[_wgslsmith_index_u32(global1.x, 23u)]));
    global2 = !func_1(vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x << (1u % 32u), reverseBits(u_input.a.x), u_input.a.x), _wgslsmith_dot_vec4_i32(-u_input.a, vec4<i32>(u_input.a.x, 29941i, -1i, u_input.a.x) << (vec4<u32>(global0.a, 39557u, var_0.x, 1u) % vec4<u32>(32u))), u_input.a.x, _wgslsmith_mult_i32(2066i, 0i))).x;
    var var_2 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(~(~91434u), ~(~var_2.x)), abs(2525u), 20856u), u_input.a.x, global0.b);
}

