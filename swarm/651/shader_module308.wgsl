struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: bool,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8> = array<u32, 8>(4294967295u, 1u, 3213u, 38338u, 13575u, 41182u, 1u, 33002u);

var<private> global1: vec2<i32> = vec2<i32>(-1i, 25296i);

var<private> global2: array<bool, 18>;

var<private> global3: array<vec2<i32>, 22> = array<vec2<i32>, 22>(vec2<i32>(0i, -14920i), vec2<i32>(1i, 11373i), vec2<i32>(-16997i, 31525i), vec2<i32>(-4238i, 17237i), vec2<i32>(-4359i, -27218i), vec2<i32>(-24692i, -42921i), vec2<i32>(-1i, -7627i), vec2<i32>(0i, -38165i), vec2<i32>(2147483647i, -1i), vec2<i32>(-1i, -1i), vec2<i32>(19646i, i32(-2147483648)), vec2<i32>(2147483647i, -11050i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-49366i, 3909i), vec2<i32>(-44082i, -22227i), vec2<i32>(6627i, 1i), vec2<i32>(-1i, 1i), vec2<i32>(-45284i, 1i), vec2<i32>(-17029i, -22413i), vec2<i32>(-14020i, 1i), vec2<i32>(-13166i, i32(-2147483648)), vec2<i32>(-29814i, 0i));

var<private> global4: vec2<i32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>) -> i32 {
    global4 = vec2<i32>(global1.x, -global1.x);
    let var_0 = false;
    global0 = array<u32, 8>();
    var var_1 = global1.x;
    global3 = array<vec2<i32>, 22>();
    return ~(~u_input.a.x);
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3, arg_3: vec3<u32>) -> vec2<f32> {
    var var_0 = _wgslsmith_add_i32(func_3(arg_0, arg_2.a), select(~(-global4.x), -6736i, (arg_0.c <= 821f) | (global4.x < global1.x))) >> (~abs(~(arg_0.a | arg_0.a)) % 32u);
    let var_1 = ~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(max(select(~33714u, 95405u, !arg_1), 1u), 8u)], abs(42111u));
    var var_2 = _wgslsmith_f_op_f32(select(1182f, _wgslsmith_f_op_f32(677f + -1043f), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~1u), 15463u >> (firstTrailingBit(~0u) % 32u), select(~var_1, arg_2.b.b, !(!arg_2.d.x))), 18u)]));
    global2 = array<bool, 18>();
    global2 = array<bool, 18>();
    return _wgslsmith_f_op_vec2_f32(-arg_2.a);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_1) -> Struct_1 {
    let var_0 = 958f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-338f, _wgslsmith_div_f32(-1184f, arg_1.a.x), global2[_wgslsmith_index_u32(abs(40755u), 18u)]))) + -113f);
    let var_1 = arg_1.b;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(var_1.c * var_1.c), var_1.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(741f, var_1.c)))), vec2<bool>(false, any(arg_0))))));
    let var_3 = var_2.x;
    return arg_2;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = u_input.b.x;
    global4 = countOneBits(u_input.a << (_wgslsmith_mult_vec2_u32(~min(u_input.e.yy, vec2<u32>(2985u, 29808u)), u_input.e.zy) % vec2<u32>(32u)));
    return Struct_1(!select(arg_0.a, vec3<bool>(arg_0.a.x, false & arg_0.a.x, false), arg_0.a));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: Struct_3) -> bool {
    var var_0 = arg_2.b;
    global4 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_add_u32(arg_2.b.b, 28210u) >> (arg_2.b.a % 32u), ~arg_2.b.a, u_input.c.x << (min(global0[_wgslsmith_index_u32(var_0.b, 8u)], ~arg_1.x) % 32u)), 22u)] & abs(_wgslsmith_div_vec2_i32(~global3[_wgslsmith_index_u32(4294967295u, 22u)], vec2<i32>(global4.x, global4.x)) & ~global3[_wgslsmith_index_u32(u_input.c.x, 22u)]);
    let var_1 = func_5(func_4(!select(vec2<bool>(arg_0.x, false), vec2<bool>(arg_2.c, true), select(vec2<bool>(true, true), arg_2.d.zx, true)), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(arg_2.b, true, arg_2, vec3<u32>(u_input.c.x, 0u, arg_2.b.b))) - _wgslsmith_f_op_vec2_f32(func_2(Struct_2(var_0.a, 1u, 1673f), arg_2.c, arg_2, arg_1))), Struct_2(_wgslsmith_mod_u32(arg_1.x, var_0.a), ~global0[_wgslsmith_index_u32(var_0.a, 8u)], 907f), all(select(vec2<bool>(true, global2[_wgslsmith_index_u32(71162u, 18u)]), vec2<bool>(arg_2.c, arg_0.x), arg_0)), arg_2.d), Struct_1(vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 18u)] && global2[_wgslsmith_index_u32(0u, 18u)], arg_0.x))));
    var var_2 = var_0.a;
    var var_3 = arg_2.d.xy;
    return !(var_3.x & !func_4(func_5(Struct_1(arg_2.d)).a.zz, Struct_3(vec2<f32>(var_0.c, 1000f), Struct_2(0u, 0u, -121f), arg_0.x, vec3<bool>(true, var_1.a.x, arg_2.c)), var_1).a.x);
}

fn func_6(arg_0: vec3<bool>, arg_1: u32) -> Struct_2 {
    var var_0 = ~_wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(arg_1 & 41032u, 0u, ~_wgslsmith_div_u32(u_input.e.x, 4294967295u)));
    var var_1 = vec2<bool>(!(!(!(1008u >= var_0.x))), global2[_wgslsmith_index_u32(var_0.x, 18u)]);
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-1648f, 1230f, var_1.x)), _wgslsmith_f_op_f32(round(1614f)), _wgslsmith_f_op_f32(select(-1707f, 405f, false)), _wgslsmith_div_f32(1008f, -1592f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-703f, 1000f, 1704f, -1000f))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * 609f), _wgslsmith_f_op_f32(f32(-1f) * -502f)), 1085f, _wgslsmith_div_f32(183f, 110f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1578f), _wgslsmith_f_op_f32(select(-224f, 860f, false))))), all(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 18u)], arg_0.x, arg_0.x, global2[_wgslsmith_index_u32(0u, 18u)]), vec4<bool>(var_1.x, arg_0.x, arg_0.x, true), vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(87602u, 18u)]))) && false)));
    let var_4 = vec2<i32>(countOneBits(global4.x << (_wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(var_0.x, 26340u, arg_1, u_input.b.x)) % 32u)), abs(_wgslsmith_clamp_i32(-_wgslsmith_sub_i32(global4.x, global4.x), global1.x, func_3(Struct_2(var_0.x, arg_1, 2371f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-929f, -1000f))))));
    return Struct_2(~u_input.d.x, 41948u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1356f, _wgslsmith_f_op_f32(-var_3.x))))) * var_3.x));
}

fn func_7(arg_0: Struct_2) -> Struct_3 {
    global1 = _wgslsmith_sub_vec2_i32(~abs(firstTrailingBit(vec2<i32>(global4.x, global4.x))), u_input.a);
    let var_0 = Struct_1(vec3<bool>(true & (global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(0u, 8u)], 4294967295u, arg_0.a, u_input.b.x), vec4<u32>(6823u, 1u, 24634u, arg_0.a)), 18u)] != any(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.c.x, 18u)], false, global2[_wgslsmith_index_u32(arg_0.b, 18u)]))), true, false));
    global0 = array<u32, 8>();
    var var_1 = reverseBits(u_input.d | _wgslsmith_clamp_vec3_u32(u_input.d, u_input.d, u_input.d));
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(369f, arg_0.c))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, arg_0.c) * vec2<f32>(arg_0.c, -688f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-991f, arg_0.c), vec2<f32>(1742f, -223f)))), func_5(Struct_1(var_0.a)).a.xx)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, -1000f)))), arg_0, all(var_0.a.zz), func_4(!var_0.a.zz, Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, arg_0.c) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, arg_0.c))), func_6(!var_0.a, ~31977u), var_0.a.x, vec3<bool>(false, true, global1.x >= 2147483647i)), Struct_1(var_0.a)).a);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 8>();
    global0 = array<u32, 8>();
    let var_0 = func_7(func_6(select(vec3<bool>(true, true, true), vec3<bool>(true, true, func_1(vec2<bool>(global2[_wgslsmith_index_u32(99611u, 18u)], true), u_input.e.yyy, Struct_3(vec2<f32>(-1000f, 803f), Struct_2(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 8u)], 1u, -1493f), global2[_wgslsmith_index_u32(0u, 18u)], vec3<bool>(global2[_wgslsmith_index_u32(112511u, 18u)], global2[_wgslsmith_index_u32(54492u, 18u)], true)))), func_5(func_5(Struct_1(vec3<bool>(true, true, true)))).a), u_input.c.x));
    let var_1 = func_6(!var_0.d, _wgslsmith_dot_vec2_u32(u_input.d.zz, ~vec2<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 8u)] ^ 52223u, ~9531u)));
    global2 = array<bool, 18>();
    var var_2 = 81896u <= (~42683u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), ~(~u_input.d.yy)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_add_i32(u_input.a.x ^ (-5014i >> (0u % 32u)), _wgslsmith_sub_i32(global4.x, global1.x)), global4.x, 0i));
}

