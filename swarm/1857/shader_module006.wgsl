struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    return !global0[_wgslsmith_index_u32(0u << (abs(select(19393u, 0u << (u_input.a.x % 32u), 14467i != arg_0.b)) % 32u), 23u)];
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: vec4<i32>) -> u32 {
    var var_0 = Struct_1(select(!vec4<bool>(false, 1u != u_input.a.x, true | arg_0.x, !arg_0.x), vec4<bool>(global0[_wgslsmith_index_u32(65921u, 23u)], true, !any(vec3<bool>(false, false, false)), !arg_0.x | false), vec4<bool>(func_3(Struct_1(vec4<bool>(true, true, arg_0.x, false), -50544i, vec4<bool>(false, true, global0[_wgslsmith_index_u32(1u, 23u)], arg_0.x)), Struct_1(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], arg_0.x, global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), -5179i, vec4<bool>(true, true, arg_0.x, true))), false, true, true)), -15200i, vec4<bool>(arg_0.x, arg_0.x, !arg_0.x, func_3(Struct_1(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(25278u, 23u)], true, true), 1i, !vec4<bool>(global0[_wgslsmith_index_u32(124277u, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)], arg_0.x, arg_0.x)), Struct_1(!vec4<bool>(true, arg_0.x, true, arg_0.x), -3346i, select(vec4<bool>(arg_0.x, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], true, false), vec4<bool>(arg_0.x, arg_0.x, true, true), vec4<bool>(true, false, global0[_wgslsmith_index_u32(27207u, 23u)], arg_0.x))))));
    let var_1 = Struct_1(vec4<bool>(true, !any(vec2<bool>(arg_0.x, global0[_wgslsmith_index_u32(22802u, 23u)])), true, all(select(vec2<bool>(false, true), vec2<bool>(var_0.c.x, true), vec2<bool>(var_0.a.x, false)))), _wgslsmith_mod_i32(min(var_0.b, _wgslsmith_dot_vec4_i32(arg_2, _wgslsmith_add_vec4_i32(vec4<i32>(-70866i, 2147483647i, arg_2.x, u_input.b), arg_2))), -19788i), select(var_0.a, select(select(var_0.c, select(var_0.a, var_0.a, global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], var_0.c.x, true, true)), vec4<bool>(4294967295u == u_input.a.x, arg_0.x, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, u_input.a.x), 23u)], true), true), false));
    var var_2 = 95059i;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(595f, 627f) + vec2<f32>(1380f, 1000f))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 442f)), vec2<f32>(-464f, -1797f)))))));
    var_0 = Struct_1(var_1.a, -2147483647i, select(var_1.a, vec4<bool>(!(arg_0.x | global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), !(var_1.a.x || global0[_wgslsmith_index_u32(0u, 23u)]), all(select(var_0.c.zy, vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], false), true)), arg_0.x), global0[_wgslsmith_index_u32(~1u, 23u)]));
    return 632u;
}

fn func_1(arg_0: i32, arg_1: bool) -> vec3<f32> {
    let var_0 = abs(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, -16477i, 0i, -35391i), vec4<i32>(u_input.b, -1i, u_input.b, 0i))) >> (~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 13619u), u_input.a) % vec4<u32>(32u))) >> (~vec4<u32>(_wgslsmith_sub_u32(min(u_input.a.x, 33451u), 71933u << (u_input.a.x % 32u)), u_input.a.x, select(u_input.a.x, func_2(vec2<bool>(arg_1, true), vec3<i32>(u_input.b, 2147483647i, -3506i), vec4<i32>(5850i, 1i, arg_0, u_input.b)), !global0[_wgslsmith_index_u32(4294967295u, 23u)]), 6u) % vec4<u32>(32u));
    var var_1 = Struct_1(select(!select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(43142u, 23u)], false, true), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], false, arg_1, global0[_wgslsmith_index_u32(40391u, 23u)]), vec4<bool>(global0[_wgslsmith_index_u32(23439u, 23u)], arg_1, true, false)), select(vec4<bool>(global0[_wgslsmith_index_u32(~u_input.a.x, 23u)], var_0.x == -2147483647i, all(vec3<bool>(false, arg_1, false)), true), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)], true, false), !vec4<bool>(arg_1, arg_1, false, global0[_wgslsmith_index_u32(u_input.a.x, 23u)])), select(select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(20754u, 23u)], true, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], arg_1, arg_1, true), global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), select(vec4<bool>(false, true, false, true), vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 23u)], true, false), vec4<bool>(false, arg_1, arg_1, false)), arg_1 && arg_1), vec4<bool>(false, true, global0[_wgslsmith_index_u32(~35984u, 23u)], true), true)), select(u_input.b, 1i, !(53458u == u_input.a.x) | true), vec4<bool>(func_3(Struct_1(select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(72740u, 23u)], true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], arg_1, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], true), false), ~arg_0, vec4<bool>(false, false, global0[_wgslsmith_index_u32(72983u, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)])), Struct_1(select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(43622u, 23u)], arg_1), vec4<bool>(arg_1, true, arg_1, true), global0[_wgslsmith_index_u32(8563u, 23u)]), reverseBits(arg_0), !vec4<bool>(arg_1, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], true, false))), arg_1, true, arg_1));
    var_1 = Struct_1(var_1.a, 1i, var_1.a);
    let var_2 = -642f;
    let var_3 = Struct_1(var_1.a, countOneBits(select(-(~u_input.b), max(abs(-2147483647i), 2147483647i), true)), vec4<bool>(!arg_1 | (select(true, true, arg_1) | any(vec4<bool>(false, var_1.c.x, false, true))), true, global0[_wgslsmith_index_u32(countOneBits(~(8810u >> (u_input.a.x % 32u))), 23u)], func_3(Struct_1(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], true, false, arg_1), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]), var_1.a), ~(-17263i), select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], false), var_1.a, var_1.c.x)), Struct_1(vec4<bool>(true, false, false, arg_1), _wgslsmith_dot_vec3_i32(var_0.xzy, var_0.wyw), var_1.a))));
    return vec3<f32>(var_2, -529f, 2283f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 23>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(max(209f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-2201f, 971f, true)), 1024f)) + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(449f, 150f), _wgslsmith_f_op_f32(-1000f - -1399f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -1747f) - -1404f)));
    let var_1 = u_input.a.wzz;
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -967f), _wgslsmith_f_op_f32(811f * var_0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x))) - vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1393f * var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 695f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(2147483647i, true))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(1175f, var_0.x, -980f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(352f, var_0.x, var_0.x)))));
    global0 = array<bool, 23>();
    var var_3 = Struct_1(select(!select(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], false, global0[_wgslsmith_index_u32(65643u, 23u)], true), !vec4<bool>(global0[_wgslsmith_index_u32(0u, 23u)], true, global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(var_1.x, 23u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 23u)], true, false)), select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(128801u, 23u)], true, true, true), vec4<bool>(global0[_wgslsmith_index_u32(var_1.x, 23u)], global0[_wgslsmith_index_u32(89060u, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(var_1.x, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)])), select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], false, global0[_wgslsmith_index_u32(4294967295u, 23u)], false), vec4<bool>(global0[_wgslsmith_index_u32(var_1.x, 23u)], true, true, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(67993u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)])), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], false, global0[_wgslsmith_index_u32(32559u, 23u)], global0[_wgslsmith_index_u32(19070u, 23u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(var_1.x, 23u)], false, global0[_wgslsmith_index_u32(29082u, 23u)]), vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], false))), !select(vec4<bool>(false, true, false, false), vec4<bool>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(var_1.x, 23u)], true, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)], false, true)), true), !(true || global0[_wgslsmith_index_u32(u_input.a.x, 23u)])), u_input.b, !select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(2022u, 23u)], false, false), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), global0[_wgslsmith_index_u32(var_1.x, 23u)] || global0[_wgslsmith_index_u32(var_1.x, 23u)]), vec4<bool>(true, true, true, true), vec4<bool>(global0[_wgslsmith_index_u32(17024u >> (1u % 32u), 23u)], true, any(vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], false)), true)));
    var var_4 = Struct_1(var_3.a, _wgslsmith_div_i32(_wgslsmith_div_i32(0i, ~1i), abs(-2147483647i)), var_3.c);
    let var_5 = select(var_4.a.yzw, vec3<bool>(!((var_3.c.x != true) || all(vec3<bool>(global0[_wgslsmith_index_u32(90653u, 23u)], true, false))), func_2(var_4.c.xy, _wgslsmith_mult_vec3_i32(vec3<i32>(var_3.b, 40121i, -1i), vec3<i32>(var_3.b, var_3.b, -28069i)), vec4<i32>(var_4.b, -2147483647i, -89211i, var_3.b)) <= 1u, !var_3.a.x), vec3<bool>(false, !all(vec4<bool>(var_3.a.x, var_4.c.x, true, true)), !global0[_wgslsmith_index_u32(u_input.a.x, 23u)]));
    var_3 = Struct_1(!select(vec4<bool>(false, false, var_3.c.x, true), vec4<bool>(var_4.c.x, true, true, false != var_4.a.x), select(select(var_4.c, var_4.c, var_4.a), !var_4.a, !vec4<bool>(var_3.a.x, var_5.x, var_3.a.x, var_4.c.x))), _wgslsmith_dot_vec4_i32((vec4<i32>(-1i) * -vec4<i32>(var_3.b, -10193i, -1i, var_4.b)) ^ vec4<i32>(1i, 3735i, -11278i, select(24746i, -39768i, var_4.a.x)), (vec4<i32>(var_3.b, -2147483647i, var_3.b, -1i) | vec4<i32>(5324i, 0i, u_input.b, var_4.b)) | _wgslsmith_div_vec4_i32(-vec4<i32>(2147483647i, var_4.b, -33223i, 53645i), -vec4<i32>(22689i, 47368i, u_input.b, -983i))), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], var_3.c.x, -var_3.b > (firstTrailingBit(var_3.b) & ~(-2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(84884u, var_4.b, vec3<i32>(2147483647i, _wgslsmith_div_i32(u_input.b & ~var_3.b, -_wgslsmith_div_i32(var_3.b, -1i)), ~(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 0i, var_4.b), vec4<i32>(-57374i, -20982i, 48753i, 0i)) ^ min(u_input.b, var_3.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1000f, var_0.x)), _wgslsmith_f_op_f32(-var_0.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(143f + var_2.x), _wgslsmith_f_op_f32(select(var_2.x, var_2.x, false)))))));
}

