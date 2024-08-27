struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(false, true, true, true, false, true, false, false, true, false, false, true, false, true, true, false, false, true, false, false, false, false, true);

var<private> global1: array<vec2<f32>, 7>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec2<i32> {
    let var_0 = !(all(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], !global0[_wgslsmith_index_u32(28317u, 23u)], true)) & any(select(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 23u)], global0[_wgslsmith_index_u32(u_input.a, 23u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 23u)], true), vec2<bool>(global0[_wgslsmith_index_u32(7984u, 23u)], false)), vec2<bool>(global0[_wgslsmith_index_u32(37774u, 23u)], global0[_wgslsmith_index_u32(u_input.a, 23u)]), !vec2<bool>(global0[_wgslsmith_index_u32(37662u, 23u)], true))));
    var var_1 = select(_wgslsmith_add_u32(u_input.a, firstLeadingBit(_wgslsmith_sub_u32(u_input.a, 492u) | (u_input.a & 4294967295u))), u_input.a, all(vec3<bool>(false, all(vec3<bool>(var_0, false, var_0)), var_0)));
    global1 = array<vec2<f32>, 7>();
    var var_2 = !any(select(select(!vec2<bool>(var_0, global0[_wgslsmith_index_u32(16891u, 23u)]), vec2<bool>(global0[_wgslsmith_index_u32(99230u, 23u)], global0[_wgslsmith_index_u32(64846u, 23u)]), !vec2<bool>(false, var_0)), select(vec2<bool>(false, true), select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], var_0), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 23u)], false), vec2<bool>(false, true)), !vec2<bool>(var_0, global0[_wgslsmith_index_u32(u_input.a, 23u)])), select(any(vec4<bool>(true, true, var_0, true)), true, any(vec4<bool>(var_0, global0[_wgslsmith_index_u32(1u, 23u)], true, global0[_wgslsmith_index_u32(u_input.a, 23u)])))));
    var var_3 = 58591i;
    return ~(~vec2<i32>(1i, ~21143i));
}

fn func_2(arg_0: bool, arg_1: bool) -> Struct_2 {
    global1 = array<vec2<f32>, 7>();
    return Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -611f), Struct_1(func_3()), Struct_1(vec2<i32>(_wgslsmith_add_i32(2147483647i, -2147483647i), select(-1i, -18183i, false) >> ((4294967295u | u_input.a) % 32u))), Struct_1(vec2<i32>(-(2147483647i << (u_input.a % 32u)), 1i)));
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)), _wgslsmith_f_op_f32(-arg_0))), ~(~arg_1.c.a.x));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(415f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -505f)))) * _wgslsmith_f_op_f32(-func_2(u_input.a != u_input.a, all(vec4<bool>(false, global0[_wgslsmith_index_u32(72304u, 23u)], true, global0[_wgslsmith_index_u32(28027u, 23u)]))).a)), func_2((42176u & _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, 0u, u_input.a), vec4<u32>(67669u, 1u, 87094u, 9268u))) >= ~4294967295u, any(!(!vec4<bool>(false, false, global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(30274u, 23u)])))).c, func_2(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, 0i), vec3<i32>(2147483647i, 3901i, var_0.b)) != reverseBits(-arg_1.c.a.x), (1u ^ _wgslsmith_add_u32(u_input.a, u_input.a)) > (u_input.a ^ 43442u)).d, Struct_1(-arg_1.d.a));
    return arg_1;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3) -> Struct_1 {
    global1 = array<vec2<f32>, 7>();
    var var_0 = func_4(-513f, func_2(!any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 23u)], true, global0[_wgslsmith_index_u32(u_input.a, 23u)], true)), any(select(!vec4<bool>(false, global0[_wgslsmith_index_u32(35132u, 23u)], false, true), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 23u)], global0[_wgslsmith_index_u32(u_input.a, 23u)], false, global0[_wgslsmith_index_u32(u_input.a, 23u)]), true))));
    let var_1 = var_0.b;
    global0 = array<bool, 23>();
    let var_2 = vec3<u32>(min(u_input.a, reverseBits(abs(u_input.a)) >> (63011u % 32u)), _wgslsmith_mult_u32(~(~select(32497u, u_input.a, false)), 71550u), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a ^ u_input.a), max(~vec2<u32>(41761u, 59746u), ~vec2<u32>(u_input.a, u_input.a)))));
    return var_0.b;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(countOneBits(~0u), 7u)] * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(59386u, 7u)]))))));
    global1 = array<vec2<f32>, 7>();
    let var_1 = 1u;
    global1 = array<vec2<f32>, 7>();
    global1 = array<vec2<f32>, 7>();
    return select(var_1, _wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 8391u), vec3<u32>(0u, var_1, 4294967295u)), u_input.a), false) ^ firstTrailingBit(_wgslsmith_add_u32(~(var_1 << (0u % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1, 0u), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.a, var_1), vec3<u32>(2357u, u_input.a, var_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 7>();
    global1 = array<vec2<f32>, 7>();
    let var_0 = ~vec3<u32>(abs(36460u), func_5(vec4<i32>(1i, 1i, 1i, 1i), func_1(Struct_3(-881f, 2147483647i), Struct_3(423f, 2147483647i))), u_input.a) & ~_wgslsmith_mod_vec3_u32(abs(abs(vec3<u32>(4294967295u, u_input.a, u_input.a))), vec3<u32>(0u, u_input.a, ~4294967295u));
    var var_1 = func_1(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(163f))) - _wgslsmith_f_op_f32(select(408f, -463f, true))), _wgslsmith_mod_i32(func_4(-282f, Struct_2(-1718f, Struct_1(vec2<i32>(-2147483647i, -2147483647i)), Struct_1(vec2<i32>(0i, 30221i)), Struct_1(vec2<i32>(-79949i, 0i)))).c.a.x, 1i) ^ reverseBits(reverseBits(23940i))), Struct_3(-3406f, -1i));
    let var_2 = func_1(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-881f, 222f)) - _wgslsmith_f_op_f32(-1602f * 1000f))), 49201i), Struct_3(448f, func_2(u_input.a == _wgslsmith_mod_u32(var_0.x, 1u), !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_0, var_0), 23u)]).d.a.x));
    var_1 = var_2;
    var_1 = var_2;
    let var_3 = vec2<bool>(all(vec4<bool>(!(!global0[_wgslsmith_index_u32(56768u, 23u)]), any(select(vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 23u)], true, false), vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 23u)], false, global0[_wgslsmith_index_u32(4294967295u, 23u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 23u)], false, false))), true, true)), false);
    let var_4 = select(!(!select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(var_0.x, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]), select(vec4<bool>(var_3.x, var_3.x, true, global0[_wgslsmith_index_u32(0u, 23u)]), vec4<bool>(var_3.x, false, false, global0[_wgslsmith_index_u32(4294967295u, 23u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(u_input.a, 23u)], false)), true)), !vec4<bool>(var_3.x, true, _wgslsmith_add_u32(u_input.a, 0u) > ~34514u, true), any(vec3<bool>(true, !var_3.x, any(vec3<bool>(true, true, true)))) || any(select(!vec3<bool>(global0[_wgslsmith_index_u32(27442u, 23u)], false, true), !vec3<bool>(var_3.x, global0[_wgslsmith_index_u32(29156u, 23u)], var_3.x), false)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.a), _wgslsmith_f_op_f32(select(398f, -124f, all(vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.x, u_input.a), 23u)], any(var_4), any(vec3<bool>(true, var_4.x, var_4.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-func_4(-2748f, Struct_2(-1355f, var_2, Struct_1(var_2.a), var_2)).a))) * 2046f));
}

