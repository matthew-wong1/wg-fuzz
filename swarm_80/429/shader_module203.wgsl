struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(6845i, 4630i), vec2<i32>(-22121i, -8505i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-30667i, -37721i), vec2<i32>(2147483647i, 51391i), vec2<i32>(-9977i, -9563i), vec2<i32>(2147483647i, 1i), vec2<i32>(2147483647i, -1i), vec2<i32>(2614i, 0i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-21445i, 50931i), vec2<i32>(0i, 2411i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(0i, 425i), vec2<i32>(18445i, 0i), vec2<i32>(-34708i, -34047i), vec2<i32>(54350i, 4100i), vec2<i32>(-44129i, -53870i), vec2<i32>(0i, 24374i), vec2<i32>(1142i, 7789i), vec2<i32>(87228i, 30630i));

var<private> global1: array<Struct_3, 16>;

var<private> global2: array<bool, 4> = array<bool, 4>(true, true, false, false);

var<private> global3: Struct_1;

var<private> global4: array<Struct_1, 21>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32) -> vec2<u32> {
    var var_0 = u_input.a;
    var var_1 = Struct_3(Struct_2(~(~global3.c)), global4[_wgslsmith_index_u32(4294967295u, 21u)], vec2<u32>(u_input.a, u_input.a));
    global1 = array<Struct_3, 16>();
    var var_2 = 1u;
    var var_3 = false;
    return var_1.c;
}

fn func_2() -> i32 {
    let var_0 = select(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(max(vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(0u, u_input.a) % vec2<u32>(32u)), vec2<u32>(u_input.a, u_input.a)), func_3(_wgslsmith_f_op_f32(sign(312f)))), vec2<u32>(1u ^ _wgslsmith_div_u32(1u, u_input.a), _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a, 1u), ~4294967295u))), ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a) | vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(u_input.a, u_input.a))), false);
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(843f, 1000f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -148f)))))));
    global1 = array<Struct_3, 16>();
    var var_2 = abs(_wgslsmith_div_i32(global3.c, 1i >> (~u_input.a % 32u)));
    global1 = array<Struct_3, 16>();
    return global3.c | ~firstLeadingBit(0i);
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> vec2<i32> {
    global2 = array<bool, 4>();
    var var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.x ^ -2147483647i, func_2(), _wgslsmith_mod_i32(_wgslsmith_add_i32(arg_1.x & -27947i, global3.a), reverseBits(arg_1.x))), ~countOneBits(min(vec3<i32>(global3.a, global3.a, arg_1.x), vec3<i32>(-2147483647i, 0i, global3.a))));
    let var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(reverseBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, u_input.a, 26812u))), ~(~firstLeadingBit(69879u))), 16u)];
    var var_2 = !(!all(!(!vec4<bool>(true, var_1.b.b, true, global3.b))));
    var var_3 = select(72324u, ~reverseBits(max(~u_input.a, _wgslsmith_add_u32(u_input.a, 18392u))), false);
    return vec2<i32>(_wgslsmith_dot_vec2_i32(max(-(global0[_wgslsmith_index_u32(37716u, 21u)] | vec2<i32>(-17635i, var_1.b.c)), vec2<i32>(-38200i, _wgslsmith_div_i32(-12369i, arg_1.x))), var_0.xx), _wgslsmith_div_i32(i32(-1i) * -53743i, ~reverseBits(-arg_1.x)));
}

fn func_4(arg_0: vec2<i32>, arg_1: u32) -> vec2<i32> {
    var var_0 = Struct_2(firstLeadingBit(-firstTrailingBit(global3.a & arg_0.x)));
    let var_1 = _wgslsmith_div_vec3_u32(max(vec3<u32>(~1u, min(u_input.a, abs(59938u)), ~arg_1 << (func_3(1000f).x % 32u)), select(select(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1, u_input.a, u_input.a), vec3<u32>(1u, 22261u, 4294967295u)), ~vec3<u32>(arg_1, 0u, arg_1), !vec3<bool>(global3.b, global2[_wgslsmith_index_u32(arg_1, 4u)], false)), ~(vec3<u32>(1u, arg_1, u_input.a) << (vec3<u32>(47712u, 19803u, u_input.a) % vec3<u32>(32u))), true)), ~_wgslsmith_mod_vec3_u32(select(~vec3<u32>(4294967295u, arg_1, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(77085u, u_input.a, u_input.a), vec3<u32>(0u, u_input.a, u_input.a)), select(vec3<bool>(false, global2[_wgslsmith_index_u32(arg_1, 4u)], global3.b), vec3<bool>(global3.b, global2[_wgslsmith_index_u32(103768u, 4u)], global2[_wgslsmith_index_u32(u_input.a, 4u)]), global2[_wgslsmith_index_u32(arg_1, 4u)])), vec3<u32>(_wgslsmith_div_u32(u_input.a, u_input.a), ~1u, u_input.a)));
    var var_2 = -arg_0;
    var var_3 = Struct_3(Struct_2(-(i32(-1i) * -52431i)), Struct_1(firstLeadingBit(i32(-1i) * -var_2.x), arg_0.x != 2147483647i, ~(~2147483647i)), vec2<u32>(max(6542u, _wgslsmith_div_u32(u_input.a, arg_1 | 1u)), 1u));
    global2 = array<bool, 4>();
    return countOneBits(vec2<i32>(21009i, var_3.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1912f, 134f, 488f, _wgslsmith_f_op_f32(f32(-1f) * -247f)));
    global2 = array<bool, 4>();
    var var_1 = func_4(select(func_1(-196f, firstTrailingBit(~vec3<i32>(global3.c, global3.c, 2147483647i))), -vec2<i32>(2147483647i, -2147483647i), global2[_wgslsmith_index_u32(u_input.a, 4u)]), u_input.a);
    global3 = global4[_wgslsmith_index_u32((_wgslsmith_mult_u32(u_input.a, 4261u) & ~(~u_input.a)) >> (u_input.a % 32u), 21u)];
    global1 = array<Struct_3, 16>();
    let var_2 = Struct_1(-_wgslsmith_dot_vec2_i32(vec2<i32>(func_2(), ~var_1.x), -min(global0[_wgslsmith_index_u32(u_input.a, 21u)], vec2<i32>(-8834i, 13507i))), all(!select(!vec4<bool>(false, true, global3.b, true), select(vec4<bool>(true, global3.b, true, global2[_wgslsmith_index_u32(u_input.a, 4u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(119u, 4u)], global3.b, false), global2[_wgslsmith_index_u32(u_input.a, 4u)]), !vec4<bool>(global2[_wgslsmith_index_u32(0u, 4u)], global3.b, global3.b, true))), var_1.x);
    global4 = array<Struct_1, 21>();
    var_1 = global0[_wgslsmith_index_u32(u_input.a, 21u)];
    let var_3 = Struct_1(global3.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) > 1602f, _wgslsmith_add_i32(-40603i, ~firstLeadingBit(max(global3.a, -7719i))));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(~vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)));
}

