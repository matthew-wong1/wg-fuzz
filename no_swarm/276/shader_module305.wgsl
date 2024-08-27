struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20> = array<u32, 20>(1u, 38046u, 39291u, 1u, 2796u, 39937u, 1u, 4294967295u, 0u, 58360u, 35987u, 4294967295u, 59502u, 4294967295u, 41638u, 1u, 0u, 1u, 0u, 56355u);

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(i32(-2147483648), 2147483647i), Struct_1(-55495i, -57766i), Struct_1(-14598i, 1i), Struct_1(34479i, 0i), Struct_1(-1i, 14727i), Struct_1(1i, 69294i), Struct_1(-2967i, -1i), Struct_1(1i, 247i), Struct_1(1i, -1i), Struct_1(0i, 0i), Struct_1(35945i, i32(-2147483648)), Struct_1(2147483647i, 4765i), Struct_1(-1i, -14477i), Struct_1(43628i, 6112i));

var<private> global2: Struct_1;

var<private> global3: Struct_1;

var<private> global4: u32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 20u)], 14u)];
    let var_1 = 2357u;
    var var_2 = true;
    var var_3 = Struct_1(global3.a, 1i);
    var var_4 = _wgslsmith_sub_i32(~(-global2.a), 1i);
    return global1[_wgslsmith_index_u32(reverseBits(global0[_wgslsmith_index_u32(4294967295u, 20u)]), 14u)];
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: i32) -> bool {
    let var_0 = global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~u_input.a >> (~abs(min(3756u, u_input.a) ^ _wgslsmith_clamp_u32(0u, u_input.a, u_input.c)) % 32u), 20u)], 20u)], 14u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1084f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1045f, arg_0.x)))), -237f)));
    global0 = array<u32, 20>();
    global1 = array<Struct_1, 14>();
    let var_2 = countOneBits(-abs(-vec2<i32>(global3.b, 9437i) << (abs(vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))));
    return select(any(vec3<bool>(false, any(vec3<bool>(arg_1, false, arg_1)), !all(vec4<bool>(arg_1, false, arg_1, arg_1)))), arg_1, arg_1);
}

fn func_1(arg_0: vec4<u32>, arg_1: bool) -> bool {
    global2 = func_2();
    var var_0 = !(!arg_1 | any(vec2<bool>(true, select(false, arg_1, arg_1))));
    global4 = 35662u;
    var var_1 = select(!(!vec4<bool>(true, false, func_3(vec3<f32>(1424f, 414f, 1946f), arg_1, 6535i), arg_1)), !(!(!select(vec4<bool>(false, arg_1, true, arg_1), vec4<bool>(true, arg_1, true, arg_1), false))), !vec4<bool>(false, false, true, arg_1));
    var_1 = !vec4<bool>(true, -(~2147483647i) <= func_2().b, func_3(vec3<f32>(1704f, _wgslsmith_f_op_f32(ceil(1284f)), _wgslsmith_f_op_f32(round(-1481f))), all(!var_1.wxy), _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, global3.a, -2398i), firstTrailingBit(vec3<i32>(-87975i, 0i, global2.a)))), false);
    return any(var_1.ywz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(func_1(vec4<u32>(countOneBits(16714u), global0[_wgslsmith_index_u32(u_input.a | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(63226u, 20u)], 20u)], 20u)], 20u)], ~global0[_wgslsmith_index_u32(70337u, 20u)], ~0u), false), all(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false))), !(global0[_wgslsmith_index_u32(346u, 20u)] <= 1u) & true, ~(~u_input.a) <= u_input.a);
    let var_1 = select(~countOneBits(u_input.b), 1i, all(vec4<bool>(false, var_0.x, true, true)));
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(floor(1730f)), _wgslsmith_div_f32(-359f, _wgslsmith_f_op_f32(-1884f + -537f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(799f - -280f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-847f, -1015f) * _wgslsmith_f_op_f32(-979f + -617f))))));
    global4 = _wgslsmith_mult_u32(0u, _wgslsmith_add_u32(~(~(88156u << (global0[_wgslsmith_index_u32(15278u, 20u)] % 32u))), ~max(global0[_wgslsmith_index_u32(4294967295u, 20u)] >> (0u % 32u), _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(0u, 20u)], 42014u))));
    let var_3 = func_2();
    let var_4 = ~vec4<u32>(countOneBits(~u_input.c), u_input.a, ~38294u, abs(~4294967295u)) & ~reverseBits(~(~vec4<u32>(52273u, 41227u, global0[_wgslsmith_index_u32(u_input.a, 20u)], 85947u)));
    var var_5 = vec4<f32>(_wgslsmith_f_op_f32(sign(829f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -451f)))), var_2.x)), 1f, -829f);
    let var_6 = countOneBits(abs(-firstLeadingBit(-u_input.d)));
    var var_7 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_3.a | (_wgslsmith_mod_i32(var_6, u_input.d) ^ 1i), 2147483647i, select(5379i >> (u_input.a % 32u), ~1i, all(var_0)) & var_7.a, reverseBits(i32(-1i) * -1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-848f)), var_5.x))), _wgslsmith_f_op_f32(min(-464f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-131f - _wgslsmith_f_op_f32(exp2(var_2.x))) * _wgslsmith_f_op_f32(-var_2.x)))));
}

