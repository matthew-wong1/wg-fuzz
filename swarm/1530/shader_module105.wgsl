struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: f32,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true));

var<private> global1: vec3<bool>;

var<private> global2: i32;

var<private> global3: array<i32, 20>;

var<private> global4: vec3<f32> = vec3<f32>(2103f, -248f, -1000f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> vec2<f32> {
    let var_0 = ~u_input.e.x;
    let var_1 = any(!vec4<bool>(true, global1.x, !global1.x, false));
    let var_2 = Struct_4(Struct_2(1u), u_input.e, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, arg_0.a), 20u)]);
    let var_3 = firstLeadingBit(select(~(~(~vec3<u32>(arg_0.a, 4054u, 84022u))), ~_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, arg_2.a, arg_0.a), vec3<u32>(arg_0.a, arg_0.a, 145289u)), vec3<u32>(1u, arg_2.a, arg_0.a) << (vec3<u32>(arg_0.a, arg_2.a, 42216u) % vec3<u32>(32u))), vec3<bool>(var_1, global1.x, any(!global0[_wgslsmith_index_u32(arg_0.a, 2u)]))));
    let var_4 = Struct_3(!global0[_wgslsmith_index_u32(max(countOneBits(~u_input.c.x), _wgslsmith_add_u32(~arg_0.a, _wgslsmith_dot_vec3_u32(var_3, vec3<u32>(1u, u_input.c.x, 4294967295u)))), 2u)], arg_2);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, 593f) * _wgslsmith_f_op_vec2_f32(global4.zz * _wgslsmith_f_op_vec2_f32(-global4.yx))));
}

fn func_4(arg_0: vec2<f32>, arg_1: u32) -> i32 {
    global1 = vec3<bool>(false, !global1.x, global1.x);
    global2 = -2147483647i;
    let var_0 = ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1, 27282u, arg_1, arg_1), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 1u, 4294967295u, 0u), vec4<u32>(u_input.b, u_input.c.x, 4294967295u, 1u)) | ~vec4<u32>(29985u, 0u, 1u, u_input.b)), ~54019u);
    var var_1 = ~vec3<u32>(var_0, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 3673u, 0u, 1u), vec4<u32>(1u, var_0, 1u, 0u)) ^ reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 0u, 19607u), vec4<u32>(u_input.b, arg_1, 0u, u_input.c.x))), arg_1);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0))));
    return ~(u_input.e.x << (~0u % 32u));
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_3 {
    var var_0 = false;
    global2 = ~(~global3[_wgslsmith_index_u32(4185u, 20u)]) ^ (i32(-1i) * -9556i);
    let var_1 = vec2<i32>(u_input.d, _wgslsmith_sub_i32(reverseBits(countOneBits(u_input.a)) ^ func_4(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(6257u), global3[_wgslsmith_index_u32(1u, 20u)], Struct_2(u_input.c.x))), 1u), global3[_wgslsmith_index_u32(4294967295u, 20u)]));
    var var_2 = vec2<i32>(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.a, u_input.a, arg_1, 0i) | ~vec4<i32>(global3[_wgslsmith_index_u32(u_input.c.x, 20u)], global3[_wgslsmith_index_u32(4294967295u, 20u)], 0i, 1i)), -_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(26617i, arg_1, var_1.x, var_1.x), vec4<i32>(global3[_wgslsmith_index_u32(1u, 20u)], -10012i, arg_1, u_input.e.x)), firstLeadingBit(u_input.e))), -2147483647i);
    let var_3 = Struct_1(global0[_wgslsmith_index_u32(4294967295u, 2u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(433f, 1f))), _wgslsmith_div_f32(937f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x + -439f) + _wgslsmith_f_op_f32(-global4.x))))), u_input.b, vec4<bool>(global1.x, select(global4.x == -1301f, true, -1495i != var_2.x), any(select(select(global0[_wgslsmith_index_u32(u_input.b, 2u)], vec4<bool>(false, arg_0, global1.x, false), global0[_wgslsmith_index_u32(u_input.b, 2u)]), vec4<bool>(global1.x, true, arg_0, arg_0), all(global0[_wgslsmith_index_u32(u_input.b, 2u)]))), false));
    return Struct_3(vec4<bool>(!all(vec4<bool>(false, false, true, false)), select(all(vec2<bool>(var_3.e.x, true)), true, !arg_0), _wgslsmith_f_op_f32(-var_3.c) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -386f) + _wgslsmith_f_op_f32(-var_3.c)), false), Struct_2(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_3.d, 1u, u_input.c.x), vec3<u32>(0u, var_3.d, 4294967295u)), vec3<u32>(var_3.d, 0u, 4294967295u))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = arg_1;
    var var_1 = -41991i;
    var var_2 = func_2(false | global1.x, ~_wgslsmith_mod_i32(global3[_wgslsmith_index_u32(firstLeadingBit(1u), 20u)] << (abs(4294967295u) % 32u), global3[_wgslsmith_index_u32(51063u, 20u)]));
    global1 = vec3<bool>(false, global1.x, all(select(vec4<bool>(global4.x < global4.x, var_0.a != u_input.b, any(vec3<bool>(global1.x, true, true)), global1.x), !vec4<bool>(var_2.a.x, true, true, true), true)));
    return vec3<bool>(var_2.a.x, !all(vec3<bool>(true, true, all(var_2.a.xz))), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_i32(global3[_wgslsmith_index_u32(u_input.c.x, 20u)], min(~(-1i), 14103i) ^ global3[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(1u, _wgslsmith_div_u32(u_input.b, u_input.b))), 20u)]);
    let var_1 = select(!select(vec3<bool>(global1.x, any(global0[_wgslsmith_index_u32(u_input.b, 2u)]), true), select(vec3<bool>(true, global1.x, global1.x), !vec3<bool>(global1.x, global1.x, global1.x), global1.x & global1.x), select(select(vec3<bool>(false, false, global1.x), vec3<bool>(global1.x, true, true), vec3<bool>(false, global1.x, global1.x)), func_1(vec2<i32>(u_input.e.x, -2147483647i), Struct_2(11637u)), false)), vec3<bool>(global1.x, false, global1.x), false);
    var var_2 = vec4<u32>(~0u, abs(u_input.c.x), u_input.c.x, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<u32>((4294967295u << (u_input.b % 32u)) >> (~23719u % 32u), ~12821u, ~_wgslsmith_sub_u32(24742u, var_2.x))));
}

