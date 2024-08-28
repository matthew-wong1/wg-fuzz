struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6>;

var<private> global1: Struct_1;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: u32 = 1u;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1() -> u32 {
    var var_0 = u_input.b.zx;
    var_0 = u_input.b.xy;
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_add_u32(1u, var_0.x), 26650u);
    var var_2 = _wgslsmith_mod_u32(var_1, 4294967295u) ^ var_0.x;
    let var_3 = ~var_1;
    return ~59076u;
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec4<bool>) -> bool {
    global2 = vec2<bool>(false, global1.d.x);
    global1 = Struct_1(arg_1.b, global1.d.zyy, -2147483647i, !arg_1.d);
    let var_0 = Struct_1(global1.b, select(select(!select(arg_1.d.xzw, vec3<bool>(arg_1.d.x, true, arg_2.x), arg_2.yzz), select(arg_2.yzx, vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 6u)], global0[_wgslsmith_index_u32(u_input.b.x, 6u)], arg_2.x), true), select(vec3<bool>(arg_1.b.x, arg_2.x, false), vec3<bool>(global2.x, global1.a.x, false), true)), !arg_2.zyw, firstTrailingBit(-2147483647i) >= reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_0, 61020i), vec3<i32>(arg_0, arg_1.c, 1i)))), -54985i, vec4<bool>(any(arg_1.d.zwy), true, false, arg_1.a.x));
    return global2.x;
}

fn func_2() -> vec4<u32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-243f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1053f - _wgslsmith_f_op_f32(max(-1153f, -146f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 651f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1199f * 500f)), !global2.x && (global1.d.x || global0[_wgslsmith_index_u32(u_input.b.x, 6u)])))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(574f + 1733f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -739f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(823f, 261f)) - _wgslsmith_f_op_f32(select(-294f, -1047f, global0[_wgslsmith_index_u32(43136u, 6u)]))), 1156f))));
    var var_1 = Struct_1(global1.b, select(vec3<bool>(global1.b.x, global0[_wgslsmith_index_u32(~0u, 6u)], !(global0[_wgslsmith_index_u32(3138u, 6u)] & false)), vec3<bool>(global2.x, func_3(global1.c, Struct_1(global1.d.zxw, global1.b, -2147483647i, vec4<bool>(global2.x, global2.x, global2.x, global1.a.x)), vec4<bool>(true, global1.b.x, global1.b.x, global1.d.x)), func_3(max(u_input.a, -2147483647i), Struct_1(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.d, 6u)], true), vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 6u)], global2.x), 3657i, vec4<bool>(global0[_wgslsmith_index_u32(28778u, 6u)], global1.a.x, global2.x, global0[_wgslsmith_index_u32(4294967295u, 6u)])), select(vec4<bool>(false, false, false, true), vec4<bool>(global0[_wgslsmith_index_u32(0u, 6u)], global1.b.x, false, global0[_wgslsmith_index_u32(19539u, 6u)]), true))), true), 59246i, select(global1.d, select(!(!global1.d), vec4<bool>(!global1.d.x, false, true, true == global2.x), select(global1.d, vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 6u)], global1.a.x, true, false), true)), any(global1.b.yy)));
    var var_2 = Struct_1(vec3<bool>(global1.b.x, true, !select(global2.x, false, global1.d.x) && !(!global1.b.x)), select(select(select(global1.a, select(vec3<bool>(global2.x, global2.x, global1.d.x), var_1.a, global1.a), false | global2.x), select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.d, 6u)]), global1.a, global1.c < 26715i), select(vec3<bool>(global0[_wgslsmith_index_u32(34039u, 6u)], global1.d.x, false), !vec3<bool>(false, var_1.a.x, global0[_wgslsmith_index_u32(42133u, 6u)]), select(global1.a, var_1.b, global2.x))), global1.b, select(vec3<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), 6u)], select(global2.x, global2.x, global1.d.x)), !global1.b, vec3<bool>(true, false, all(vec2<bool>(global2.x, global0[_wgslsmith_index_u32(u_input.b.x, 6u)]))))), ~_wgslsmith_mult_i32(var_1.c, _wgslsmith_add_i32(1i, 47546i)), global1.d);
    let var_3 = Struct_1(var_2.a, !(!select(global1.d.ywy, select(vec3<bool>(global2.x, false, true), var_2.b, global1.b), true)), u_input.a, !(!vec4<bool>(false, true, any(vec2<bool>(true, true)), true)));
    var var_4 = _wgslsmith_mod_i32(~(-_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.c.wz, vec2<i32>(-830i, 2147483647i)), max(62691i, var_2.c))), -9040i);
    return ~vec4<u32>(u_input.b.x, _wgslsmith_mult_u32(~u_input.d, func_1()) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.d, 0u), vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.d)) % 32u), 4294967295u, ~(~47119u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    let var_1 = reverseBits(u_input.d ^ var_0.x) << (1u % 32u);
    global3 = ~_wgslsmith_mult_u32(var_0.x, max(func_1(), var_1));
    var var_2 = _wgslsmith_add_vec4_u32(abs(func_2() ^ vec4<u32>(~var_0.x, 4294967295u, var_0.x, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(75834u, u_input.b.x, _wgslsmith_mod_u32(0u, u_input.b.x), func_2().x), _wgslsmith_sub_vec4_u32(vec4<u32>(44697u, 6654u, u_input.b.x, var_0.x), vec4<u32>(var_0.x, 1u, 4294967295u, 57026u)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, var_1, 1u), vec4<u32>(var_1, u_input.d, var_0.x, var_1))) | vec4<u32>(~countOneBits(var_1), 0u, _wgslsmith_sub_u32(u_input.d, 47291u), var_1 & _wgslsmith_add_u32(20511u, var_0.x)));
    let var_3 = ~var_2.x;
    var var_4 = -12298i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-239f * _wgslsmith_f_op_f32(abs(1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1104f, _wgslsmith_f_op_f32(min(-345f, -236f))))), 782f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-193f, 284f)), _wgslsmith_f_op_f32(select(823f, 177f, global2.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-540f * _wgslsmith_div_f32(-179f, 1013f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, 2121f, true)) * 192f))), 248f), -33471i);
}

