struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: i32,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 18>;

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(-1966f, 42689i), Struct_1(-906f, 1271i), Struct_1(2466f, -1i), Struct_1(259f, i32(-2147483648)), Struct_1(-1381f, 0i), Struct_1(-197f, 81911i), Struct_1(-981f, 17076i), Struct_1(1000f, i32(-2147483648)), Struct_1(1000f, -1i), Struct_1(-283f, 0i), Struct_1(546f, 1i), Struct_1(-103f, -98238i), Struct_1(-820f, 3379i), Struct_1(359f, 2147483647i), Struct_1(-1000f, 25662i), Struct_1(1569f, 1i), Struct_1(-1000f, 2147483647i), Struct_1(561f, -16543i), Struct_1(542f, 1i), Struct_1(-1356f, -1281i), Struct_1(-363f, -1i), Struct_1(-577f, 1i), Struct_1(340f, -28101i), Struct_1(-433f, -33787i), Struct_1(-486f, 1i), Struct_1(869f, i32(-2147483648)), Struct_1(-1237f, 6561i), Struct_1(617f, 77i), Struct_1(-940f, -1i));

var<private> global2: array<Struct_1, 31>;

var<private> global3: array<i32, 2> = array<i32, 2>(-1i, 10699i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: vec3<u32>) -> f32 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_mod_u32(countOneBits(u_input.d | 4294967295u), ~(~arg_2.x)), firstLeadingBit(u_input.c.x)), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~4294967295u, ~_wgslsmith_add_u32(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(111339u, arg_2.x), arg_2.yx)), _wgslsmith_dot_vec4_u32(vec4<u32>(32341u, u_input.d, ~arg_2.x, abs(17985u)), vec4<u32>(_wgslsmith_add_u32(u_input.d, 1u), abs(1u), 20448u, ~arg_2.x))), 2u)], 16784i, any(select(arg_1, select(select(vec3<bool>(true, arg_1.x, false), arg_1, false), !vec3<bool>(arg_1.x, false, arg_1.x), all(arg_1)), !arg_1)), global1[_wgslsmith_index_u32(u_input.d, 29u)]);
    let var_1 = global1[_wgslsmith_index_u32(18377u, 29u)];
    let var_2 = var_0.e.a;
    let var_3 = arg_1;
    let var_4 = var_0.a.a;
    return _wgslsmith_f_op_f32(trunc(297f));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: bool) -> vec2<bool> {
    global2 = array<Struct_1, 31>();
    let var_0 = 1i >= firstTrailingBit(26893i);
    let var_1 = var_0;
    var var_2 = ~select(arg_1.a.a ^ (arg_1.a.a & select(1u, 0u, true)), _wgslsmith_sub_u32(firstTrailingBit(firstTrailingBit(arg_1.a.a)), _wgslsmith_add_u32(0u, arg_1.a.a)), true);
    var var_3 = arg_2;
    return vec2<bool>(true, false);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_3) -> u32 {
    let var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(!vec2<bool>(arg_1.d, arg_1.d), !vec3<bool>(true, arg_1.d, true), abs(vec3<u32>(arg_0.c.a, u_input.a, 1u))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.e.a) - 2908f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2027f)))), Struct_3(arg_0.b.a, u_input.b.x, u_input.b.x, all(!(!vec4<bool>(arg_1.d, true, true, arg_0.b.d))), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.e.a), _wgslsmith_f_op_f32(arg_1.e.a - arg_1.e.a))), 75404i)), any(vec2<bool>(true, arg_1.e.a <= _wgslsmith_f_op_f32(f32(-1f) * -605f))));
    let var_1 = Struct_4(true, Struct_3(Struct_2(1u, global3[_wgslsmith_index_u32(1u, 2u)]), _wgslsmith_dot_vec3_i32(abs(~vec3<i32>(arg_1.a.b, 1i, global3[_wgslsmith_index_u32(1u, 2u)])), vec3<i32>(_wgslsmith_add_i32(u_input.c.x, 46105i), 20403i, _wgslsmith_add_i32(50087i, 1i))), abs(i32(-1i) * -39897i), !(arg_1.a.a == _wgslsmith_clamp_u32(0u, u_input.d, arg_0.b.a.a)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.e.a)) - _wgslsmith_f_op_f32(step(arg_0.d, arg_0.d))), -9777i ^ u_input.c.x)), arg_1.a, 909f);
    global0 = array<vec2<f32>, 18>();
    let var_2 = min(~_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a, 8517u), vec2<u32>(var_1.b.a.a, _wgslsmith_div_u32(57294u, 1u))), reverseBits(vec2<u32>(_wgslsmith_clamp_u32(16118u << (0u % 32u), u_input.d >> (arg_0.c.a % 32u), ~var_1.b.a.a), _wgslsmith_mult_u32(~var_1.b.a.a, 44412u ^ var_1.b.a.a))));
    global3 = array<i32, 2>();
    return 1u;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<bool>) -> Struct_1 {
    global2 = array<Struct_1, 31>();
    let var_0 = ~_wgslsmith_div_u32(~_wgslsmith_mult_u32(1u, func_2(Struct_4(false, Struct_3(Struct_2(0u, -1i), -59992i, arg_0.x, arg_1.x, global1[_wgslsmith_index_u32(u_input.d, 29u)]), Struct_2(4294967295u, -2147483647i), -1424f), Struct_3(Struct_2(14321u, 13519i), -12774i, arg_0.x, false, Struct_1(1029f, 6279i)))), firstLeadingBit(~(~u_input.a)));
    var var_1 = select(!(!vec4<bool>(arg_1.x, false, true && arg_1.x, !arg_1.x)), select(select(vec4<bool>(true, arg_1.x && arg_1.x, !arg_1.x, true), select(!vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), !vec4<bool>(arg_1.x, true, true, true), arg_1.x), select(select(vec4<bool>(false, false, arg_1.x, true), vec4<bool>(false, arg_1.x, true, arg_1.x), arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x), true)), select(select(!vec4<bool>(false, false, true, arg_1.x), vec4<bool>(false, true, true, true), arg_1.x), select(vec4<bool>(arg_1.x, true, true, arg_1.x), !vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), vec4<bool>(arg_1.x, true, true, true), vec4<bool>(false, arg_1.x, true, arg_1.x))), !arg_1.x && all(vec2<bool>(arg_1.x, false))), !(_wgslsmith_f_op_f32(floor(-588f)) != _wgslsmith_f_op_f32(ceil(-737f)))), select(select(vec4<bool>(any(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), false, true, all(arg_1.xx)), select(vec4<bool>(true, true, arg_1.x, true), select(vec4<bool>(true, true, true, false), vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), vec4<bool>(true, false, true, arg_1.x)), func_4(269f, Struct_3(Struct_2(30776u, u_input.c.x), global3[_wgslsmith_index_u32(var_0, 2u)], 2147483647i, false, Struct_1(510f, 0i)), arg_1.x).x), arg_1.x), !vec4<bool>(!arg_1.x, !arg_1.x, true, arg_1.x || arg_1.x), true));
    global0 = array<vec2<f32>, 18>();
    var var_2 = -2147483647i;
    return global1[_wgslsmith_index_u32(min(4294967295u, ~59153u), 29u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 30723u;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(-308f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-1647f - _wgslsmith_f_op_f32(1007f - 2118f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-374f)), _wgslsmith_div_f32(-2618f, -1000f), true))))));
    var var_2 = (((_wgslsmith_add_u32(u_input.a, 4294967295u) & min(79580u, 1u)) ^ 33264u) >> (u_input.a % 32u)) << (u_input.a % 32u);
    var var_3 = func_1(max(u_input.c.yy, countOneBits(u_input.c.xx)), vec3<bool>(!(!all(vec4<bool>(true, true, true, true))), true, var_0 >= (firstLeadingBit(1u) << (1u % 32u))));
    global0 = array<vec2<f32>, 18>();
    var var_4 = any(select(vec4<bool>(!(-23741i != global3[_wgslsmith_index_u32(u_input.d, 2u)]), ~u_input.a <= var_0, true, true && (0i <= global3[_wgslsmith_index_u32(u_input.a, 2u)])), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, var_1.x) + _wgslsmith_f_op_f32(-var_3.a)) > var_1.x));
    var var_5 = ~vec3<u32>(_wgslsmith_mod_u32(38423u, var_0 | u_input.a), var_0, ~reverseBits(122065u)) & ~abs(~vec3<u32>(var_0, u_input.d, 30623u) | vec3<u32>(var_0, u_input.a, var_0));
    var var_6 = Struct_1(_wgslsmith_f_op_f32(abs(var_3.a)), 35322i);
    var var_7 = Struct_4(!(((-1i == global3[_wgslsmith_index_u32(1u, 2u)]) | true) && select(false, true, true)), Struct_3(Struct_2(~u_input.a, ~(-9681i) ^ u_input.c.x), var_3.b & 1i, global3[_wgslsmith_index_u32(26359u, 2u)], all(select(func_4(var_1.x, Struct_3(Struct_2(var_5.x, -5504i), 2147483647i, var_3.b, true, global1[_wgslsmith_index_u32(var_5.x, 29u)]), false), vec2<bool>(false, true), vec2<bool>(true, true))), global1[_wgslsmith_index_u32(u_input.a, 29u)]), Struct_2(var_5.x, -_wgslsmith_mod_i32(~(-2006i), _wgslsmith_mult_i32(u_input.c.x, -33794i))), var_6.a);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, vec4<i32>(_wgslsmith_mult_i32(var_3.b, _wgslsmith_mod_i32(-var_7.b.a.b, global3[_wgslsmith_index_u32(u_input.d, 2u)])), var_7.c.b, ~((-6439i >> (u_input.d % 32u)) << (u_input.d % 32u)), _wgslsmith_add_i32(reverseBits(-36276i), _wgslsmith_dot_vec2_i32(~vec2<i32>(-17371i, -36314i), max(vec2<i32>(-40161i, u_input.b.x), u_input.c.yx)))), max(~global3[_wgslsmith_index_u32(u_input.a, 2u)], ~((i32(-1i) * -60167i) << (1u % 32u))), _wgslsmith_f_op_f32(var_6.a - var_6.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1841f, _wgslsmith_f_op_f32(max(676f, 246f)))) * var_3.a) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1022f + -387f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_3.a))), true))));
}

