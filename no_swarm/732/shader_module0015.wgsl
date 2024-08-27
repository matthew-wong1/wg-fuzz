struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(-36166i, -1i, 0i, 0i, 0i, 0i, 1i, -58718i, i32(-2147483648), i32(-2147483648), 3785i, 29162i, -47701i, i32(-2147483648), -1i, -35969i, 30808i, 15671i);

var<private> global1: vec4<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> vec4<bool> {
    var var_0 = !select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1014f * arg_1.b.c), _wgslsmith_f_op_f32(round(arg_1.c)), false)) >= 1117f, false, (arg_1.b.c != _wgslsmith_f_op_f32(ceil(1291f))) && !(!global1.x));
    global1 = select(vec4<bool>(all(select(global1.zx, !vec2<bool>(global1.x, false), global1.x)), !global1.x, true, global1.x), select(select(select(vec4<bool>(true, global1.x, global1.x, global1.x), select(vec4<bool>(false, false, global1.x, global1.x), vec4<bool>(global1.x, global1.x, false, false), global1.x), false), vec4<bool>(any(global1.yx), true, global1.x, true), vec4<bool>(true, false, any(global1.wzx), global1.x)), select(!select(vec4<bool>(false, true, false, global1.x), vec4<bool>(true, false, true, global1.x), vec4<bool>(false, false, false, global1.x)), select(select(vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(global1.x, true, global1.x, true), true), !vec4<bool>(global1.x, global1.x, true, global1.x), !vec4<bool>(true, true, true, global1.x)), true), !(arg_1.a.x >= min(arg_1.a.x, arg_1.a.x))), false);
    var var_1 = ~firstLeadingBit(u_input.d);
    global0 = array<i32, 18>();
    return !vec4<bool>(true & ((arg_1.a.x << (8545u % 32u)) < ~arg_1.b.b), false || !select(false, true, true), true, false);
}

fn func_2() -> vec3<bool> {
    global1 = select(vec4<bool>(select(!global1.x, false, any(global1.wx)), false, true, _wgslsmith_f_op_f32(-315f + -883f) >= _wgslsmith_f_op_f32(-1418f - _wgslsmith_f_op_f32(select(477f, 244f, false)))), vec4<bool>(all(global1.zx) | !(!global1.x), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1712f - -1339f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) < _wgslsmith_f_op_f32(_wgslsmith_div_f32(171f, -411f) - _wgslsmith_f_op_f32(sign(413f))), any(global1.wzy)), global1.x);
    var var_0 = select(select(!select(!vec4<bool>(true, global1.x, true, global1.x), select(vec4<bool>(global1.x, true, global1.x, false), vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(global1.x, true, global1.x, global1.x)), select(vec4<bool>(false, true, true, true), vec4<bool>(global1.x, true, global1.x, false), vec4<bool>(false, global1.x, global1.x, false))), select(func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 18u)], -2147483647i, -2147483647i, 1i), vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.c, 18u)], u_input.d.x, global0[_wgslsmith_index_u32(32376u, 18u)])), Struct_2(vec4<u32>(59447u, 4294967295u, 0u, 6291u), Struct_1(u_input.d, u_input.a.x, -1194f), -1038f)), func_3(-1i, Struct_2(u_input.a, Struct_1(u_input.d, u_input.c, 257f), -546f)), global1.x), select(func_3(u_input.b, Struct_2(vec4<u32>(1045u, 71398u, 13694u, 1u), Struct_1(u_input.d, 4294967295u, -178f), -545f)), vec4<bool>(global1.x, false, global1.x != true, u_input.d.x < -30355i), global1.x)), !vec4<bool>(select(true, false, true), global1.x, _wgslsmith_sub_u32(u_input.c, u_input.c) >= firstTrailingBit(u_input.c), global1.x), vec4<bool>(all(!vec4<bool>(true, global1.x, true, global1.x)), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(35074u, 18u)], global0[_wgslsmith_index_u32(u_input.c, 18u)], 2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 18u)]), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], u_input.d.x, 0i, global0[_wgslsmith_index_u32(u_input.a.x, 18u)])), reverseBits(0i)) <= ~(global0[_wgslsmith_index_u32(0u, 18u)] << (4294967295u % 32u)), !(!(4294967295u == u_input.c)), global1.x));
    let var_1 = max(vec4<u32>(~(~_wgslsmith_mod_u32(u_input.c, 4294967295u)), ~(~(~u_input.c)), 0u, 4294967295u), ~vec4<u32>(_wgslsmith_div_u32(4294967295u, u_input.a.x), 17425u, ~u_input.a.x, 1u) >> (u_input.a % vec4<u32>(32u)));
    var var_2 = u_input.a.x;
    return global1.wxz;
}

fn func_1(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: u32) -> Struct_2 {
    let var_0 = ~vec4<i32>(0i, 0i, _wgslsmith_add_i32(_wgslsmith_add_i32(arg_0.a, 5988i) | -34994i, u_input.b), 30266i);
    global1 = vec4<bool>(global1.x, any(func_2()), false, arg_1.x);
    var var_1 = vec2<i32>(-abs(_wgslsmith_mult_i32(-24473i, ~arg_0.a)), countOneBits(abs(~(~(-61351i)))));
    var var_2 = ~firstTrailingBit(u_input.c);
    return Struct_2(abs(u_input.a), Struct_1(u_input.d, firstTrailingBit(1u), -229f), -1000f);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: Struct_4) -> Struct_1 {
    global1 = select(!select(!select(vec4<bool>(true, global1.x, true, global1.x), vec4<bool>(true, false, false, global1.x), vec4<bool>(true, arg_3.b.x, arg_3.b.x, global1.x)), select(vec4<bool>(true, true, global1.x, true), select(vec4<bool>(global1.x, global1.x, false, true), vec4<bool>(true, arg_3.b.x, global1.x, arg_3.b.x), global1.x), global1.x), func_3(16160i, func_1(Struct_4(-49238i, vec3<bool>(global1.x, global1.x, false)), vec4<bool>(true, global1.x, false, arg_3.b.x), u_input.c))), !vec4<bool>(false | (true && global1.x), any(select(global1.zzy, vec3<bool>(false, false, arg_3.b.x), arg_3.b.x)), all(select(arg_3.b, arg_3.b, arg_3.b)), true || any(vec4<bool>(arg_3.b.x, false, false, global1.x))), !all(global1.xw));
    var var_0 = arg_0.c;
    var var_1 = arg_1;
    global1 = vec4<bool>((func_2().x & !arg_3.b.x) || global1.x, !(!(global1.x || false)), true, false);
    var var_2 = Struct_3(func_2().xx);
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.x;
    global0 = array<i32, 18>();
    let var_1 = Struct_1(u_input.d, u_input.c, _wgslsmith_f_op_f32(min(-997f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1121f)), 1181f)))));
    let var_2 = vec3<i32>(1i, ~2147483647i, u_input.d.x);
    let var_3 = Struct_2(u_input.a, func_4(func_1(Struct_4(-75780i, vec3<bool>(global1.x, global1.x, true)), vec4<bool>(!global1.x, 215f < var_1.c, true, global1.x == global1.x), 125745u), Struct_2(~vec4<u32>(var_1.b, 4294967295u, 0u, var_1.b), Struct_1(vec3<i32>(global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(15742u, 18u)], -2147483647i) & var_2, ~u_input.c, _wgslsmith_div_f32(2657f, -659f)), var_1.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) * _wgslsmith_f_op_f32(var_1.c * _wgslsmith_f_op_f32(trunc(180f)))), Struct_4(14492i, global1.xzz)), -1542f);
    global0 = array<i32, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(-1000f);
}

