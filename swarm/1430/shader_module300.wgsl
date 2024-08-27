struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3>;

var<private> global1: array<Struct_2, 11>;

var<private> global2: array<vec4<u32>, 7>;

var<private> global3: array<vec3<f32>, 2>;

var<private> global4: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(-8852i, -31741i, vec2<bool>(true, true)), Struct_2(-11099i, 0i, vec2<bool>(false, false)), Struct_2(0i, -1i, vec2<bool>(true, false)), Struct_2(2147483647i, 13790i, vec2<bool>(true, true)), Struct_2(-35189i, 2147483647i, vec2<bool>(false, true)), Struct_2(2147483647i, 2147483647i, vec2<bool>(true, true)), Struct_2(-42846i, 1i, vec2<bool>(false, true)), Struct_2(2147483647i, -1i, vec2<bool>(true, false)), Struct_2(i32(-2147483648), -29610i, vec2<bool>(true, true)), Struct_2(17088i, i32(-2147483648), vec2<bool>(true, false)), Struct_2(5421i, 0i, vec2<bool>(false, true)), Struct_2(i32(-2147483648), -30651i, vec2<bool>(true, true)), Struct_2(1i, -3308i, vec2<bool>(true, true)), Struct_2(27047i, 4580i, vec2<bool>(false, false)), Struct_2(1i, 1i, vec2<bool>(false, true)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec3<u32>, arg_1: i32) -> u32 {
    var var_0 = all(vec3<bool>(true, true, true));
    let var_1 = false;
    global2 = array<vec4<u32>, 7>();
    return arg_0.x;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: f32) -> bool {
    global4 = array<Struct_2, 15>();
    return any(!arg_2);
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: bool, arg_3: vec2<bool>) -> u32 {
    var var_0 = Struct_1(select(vec3<bool>(false, arg_3.x | false, arg_3.x), vec3<bool>(true, arg_3.x, true), vec3<bool>(false, select(arg_3.x & false, arg_2 & true, true), arg_2)), 1u, func_2(vec3<u32>(4294967295u, _wgslsmith_div_u32(abs(u_input.a.x), arg_1), _wgslsmith_sub_u32(44213u | arg_1, u_input.a.x)), ~(~0i)), arg_1);
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~(~21053u << (_wgslsmith_add_u32(16276u, var_0.c) % 32u)) << (min(arg_1, ~u_input.a.x) % 32u)), 7u)];
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0)));
    let var_3 = Struct_1(select(!(!(!var_0.a)), !(!vec3<bool>(arg_2, var_0.a.x, var_0.a.x)), select(select(!var_0.a, vec3<bool>(arg_2, arg_2, true), vec3<bool>(true, true, true)), select(vec3<bool>(var_0.a.x, var_0.a.x, arg_2), select(vec3<bool>(arg_3.x, false, arg_2), var_0.a, var_0.a.x), false), !func_3(Struct_1(var_0.a, 4294967295u, 59518u, 9421u), vec3<u32>(var_1.x, 23019u, u_input.a.x), vec4<bool>(var_0.a.x, true, arg_2, arg_3.x), 1000f))), ~34045u, u_input.a.x & _wgslsmith_clamp_u32(4294967295u, _wgslsmith_sub_u32(4294967295u, ~0u), min(24864u, select(var_0.c, var_1.x, false))), ~_wgslsmith_add_u32(_wgslsmith_mult_u32(var_1.x, var_0.c) << (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), var_1.zx) % 32u), var_1.x >> (abs(var_1.x) % 32u)));
    var var_4 = u_input.a;
    return ~countOneBits(~countOneBits(53339u));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> i32 {
    let var_0 = _wgslsmith_div_u32(abs(func_4(-332f, _wgslsmith_sub_u32(func_2(vec3<u32>(0u, arg_0.d, u_input.a.x), global0[_wgslsmith_index_u32(9596u, 3u)]), 1u), func_3(Struct_1(arg_0.a, u_input.a.x, 0u, 0u), vec3<u32>(arg_0.c, 4294967295u, 26779u), !vec4<bool>(false, arg_0.a.x, true, arg_0.a.x), arg_1), !(!arg_0.a.yx))), _wgslsmith_sub_u32(u_input.a.x, 1u));
    return -((~u_input.b | abs(-global0[_wgslsmith_index_u32(4294967295u, 3u)])) << (u_input.a.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(vec3<bool>(any(vec4<bool>(true, true, false, false)) || true, true, true), 9918u, 36124u, _wgslsmith_div_u32(71084u, u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-472f - -404f) * _wgslsmith_f_op_f32(-1060f - 267f))))));
    global2 = array<vec4<u32>, 7>();
    var var_1 = any(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), true)));
    var_1 = all(!(!vec4<bool>(1i == u_input.b, true, func_3(Struct_1(vec3<bool>(false, true, false), u_input.a.x, 0u, 4294967295u), vec3<u32>(u_input.a.x, 1u, 1u), vec4<bool>(true, false, false, false), 855f), all(vec3<bool>(true, false, false)))));
    global4 = array<Struct_2, 15>();
    var var_2 = _wgslsmith_dot_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(-23836i, 2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 3u)], -40682i) ^ select(vec4<i32>(-60470i, global0[_wgslsmith_index_u32(u_input.a.x, 3u)], -2618i, u_input.b), vec4<i32>(2147483647i, var_0, u_input.b, global0[_wgslsmith_index_u32(27000u, 3u)]), vec4<bool>(true, false, true, true)), reverseBits(select(vec4<i32>(var_0, 2147483647i, var_0, u_input.b), vec4<i32>(56294i, 0i, global0[_wgslsmith_index_u32(3867u, 3u)], global0[_wgslsmith_index_u32(52945u, 3u)]), false))), vec4<i32>(-1i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(0u, 3u)], 0i) ^ -12710i, ~1i), abs(global0[_wgslsmith_index_u32(0u ^ u_input.a.x, 3u)]), 0i));
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(select(~14578u | ~(~u_input.a.x), 4294967295u, ~4294967295u > u_input.a.x), 7u)], ~vec3<i32>(_wgslsmith_mult_i32(2147483647i, _wgslsmith_clamp_i32(var_0, var_0, u_input.b)), firstTrailingBit(global0[_wgslsmith_index_u32(u_input.a.x, 3u)]) >> (~4294967295u % 32u), -28585i));
}

