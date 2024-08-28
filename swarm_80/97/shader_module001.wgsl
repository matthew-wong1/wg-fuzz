struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<u32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 32> = array<vec2<f32>, 32>(vec2<f32>(153f, -596f), vec2<f32>(-1395f, 1307f), vec2<f32>(-1000f, -630f), vec2<f32>(-1144f, 1000f), vec2<f32>(-1228f, 1104f), vec2<f32>(-188f, 798f), vec2<f32>(-1453f, -902f), vec2<f32>(924f, 253f), vec2<f32>(1043f, 502f), vec2<f32>(760f, -299f), vec2<f32>(-356f, -807f), vec2<f32>(-1342f, -220f), vec2<f32>(-385f, -1925f), vec2<f32>(988f, 2104f), vec2<f32>(1869f, 1622f), vec2<f32>(-354f, -1000f), vec2<f32>(2406f, 470f), vec2<f32>(633f, -959f), vec2<f32>(-131f, 1000f), vec2<f32>(-528f, -1102f), vec2<f32>(-1404f, -1000f), vec2<f32>(1432f, 954f), vec2<f32>(2013f, -1000f), vec2<f32>(-3098f, 437f), vec2<f32>(980f, -2812f), vec2<f32>(1204f, -1000f), vec2<f32>(-1558f, -101f), vec2<f32>(-287f, -260f), vec2<f32>(-1000f, 392f), vec2<f32>(-350f, 281f), vec2<f32>(1031f, -1000f), vec2<f32>(1308f, -1000f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> u32 {
    var var_0 = arg_2.b & (true || arg_2.b);
    var var_1 = arg_2.d;
    let var_2 = all(!vec3<bool>(true && arg_2.b, arg_2.b || all(vec2<bool>(false, arg_2.b)), (arg_0 >= arg_0) && arg_2.b));
    var_0 = select(true, true, select(false, true, true | !arg_2.b));
    let var_3 = vec3<bool>(!arg_2.b, reverseBits(max(u_input.a, _wgslsmith_mod_u32(u_input.a, 4294967295u))) >= (~u_input.a & _wgslsmith_div_u32(~9474u, ~0u)), all(vec3<bool>(var_2, arg_2.b == !arg_2.b, any(select(vec3<bool>(false, arg_2.b, true), vec3<bool>(false, var_2, false), vec3<bool>(var_2, arg_2.b, arg_2.b))))));
    return arg_1;
}

fn func_2(arg_0: f32, arg_1: u32) -> u32 {
    global0 = array<vec2<f32>, 32>();
    global0 = array<vec2<f32>, 32>();
    global0 = array<vec2<f32>, 32>();
    var var_0 = Struct_1(-47026i, true, min(vec3<u32>(func_3(_wgslsmith_f_op_f32(f32(-1f) * -651f), firstLeadingBit(arg_1), Struct_1(27228i, false, vec3<u32>(5042u, u_input.a, 11886u), -7226i)), _wgslsmith_mult_u32(u_input.a, 28271u), 1u), ~vec3<u32>(u_input.a, u_input.a, firstTrailingBit(u_input.a))), 46270i);
    var var_1 = 56318u & _wgslsmith_sub_u32(~var_0.c.x, ~(~_wgslsmith_sub_u32(arg_1, var_0.c.x)));
    return ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_0.c.x), ~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_div_vec2_u32(var_0.c.yy, vec2<u32>(arg_1, arg_1))));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> u32 {
    var var_0 = min(arg_3, arg_3);
    global0 = array<vec2<f32>, 32>();
    global0 = array<vec2<f32>, 32>();
    let var_1 = ~max(_wgslsmith_add_vec2_u32(vec2<u32>(2028u, ~1u), _wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(10968u, u_input.a)), _wgslsmith_clamp_vec2_u32(vec2<u32>(56123u, 1u), vec2<u32>(u_input.a, arg_3), arg_2.c.zy))), firstTrailingBit(arg_2.c.yz));
    global0 = array<vec2<f32>, 32>();
    return 1u;
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> vec3<u32> {
    let var_0 = u_input.a;
    let var_1 = u_input.b;
    var var_2 = func_4(-firstLeadingBit(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(var_1, var_1))), min(u_input.b, _wgslsmith_mod_i32(_wgslsmith_mod_i32(~u_input.b, arg_0.a), 2147483647i >> (func_2(arg_1, u_input.a) % 32u))), Struct_1(14615i, !arg_0.b, arg_0.c, -28436i), 1u);
    var var_3 = select(!vec4<bool>(false, select(all(vec4<bool>(false, arg_0.b, arg_0.b, false)), false, true), arg_0.b, var_0 != (u_input.a >> (var_0 % 32u))), !select(select(select(vec4<bool>(true, false, true, arg_0.b), vec4<bool>(arg_0.b, arg_0.b, arg_0.b, false), true), vec4<bool>(true, arg_0.b, true, true), vec4<bool>(arg_0.b, arg_0.b, arg_0.b, arg_0.b)), select(!vec4<bool>(true, arg_0.b, false, arg_0.b), select(vec4<bool>(arg_0.b, true, false, arg_0.b), vec4<bool>(arg_0.b, true, true, arg_0.b), arg_0.b), !arg_0.b), arg_0.b & arg_0.b), false);
    var var_4 = ~_wgslsmith_sub_i32(arg_0.d, var_1 & 2147483647i);
    return _wgslsmith_mult_vec3_u32(vec3<u32>(firstLeadingBit(~51598u), _wgslsmith_sub_u32(4294967295u, var_0 >> (u_input.a % 32u)), func_4(i32(-1i) * -2147483647i, u_input.b & var_1, arg_0, _wgslsmith_add_u32(var_0, arg_0.c.x))), ~select(_wgslsmith_add_vec3_u32(arg_0.c, arg_0.c), arg_0.c ^ arg_0.c, !vec3<bool>(true, false, var_3.x))) >> (_wgslsmith_add_vec3_u32(arg_0.c, vec3<u32>(_wgslsmith_add_u32(1u, 11423u), 1u >> (var_0 % 32u), 1u)) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 32>();
    var var_0 = _wgslsmith_dot_vec3_u32(firstTrailingBit(func_1(Struct_1(select(u_input.b, u_input.b, true), all(vec2<bool>(true, true)), firstLeadingBit(vec3<u32>(u_input.a, u_input.a, 9766u)), -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1440f)))), ~vec3<u32>(u_input.a, ~0u, u_input.a));
    var var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(u_input.a, 32u)] - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1673f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(424f, 222f)))), global0[_wgslsmith_index_u32(53652u, 32u)], select(vec2<bool>(u_input.b < u_input.b, true), vec2<bool>(true, false), vec2<bool>(true, true)))));
    var var_3 = Struct_1(abs(0i), any(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), ~select(vec3<u32>(~u_input.a, 4294967295u, 1u), ~(vec3<u32>(42307u, 1u, u_input.a) | vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<bool>(true, true, true)), u_input.b);
    var var_4 = Struct_1(0i, ~(-2147483647i) == select(2147483647i, _wgslsmith_mod_i32(-1i, _wgslsmith_add_i32(2147483647i, u_input.b)), all(vec4<bool>(true, true, var_3.b, var_3.b)) | var_3.b), _wgslsmith_add_vec3_u32(min(reverseBits(var_3.c), reverseBits(var_3.c)) & var_3.c, ~(~select(var_3.c, vec3<u32>(u_input.a, var_3.c.x, 5016u), vec3<bool>(var_3.b, var_3.b, true)))), -13197i);
    let var_5 = Struct_1(_wgslsmith_add_i32(0i, var_3.a), true, vec3<u32>(33923u | var_3.c.x, var_3.c.x, func_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_2.x)), 785f, true)), ~u_input.a, Struct_1(select(1i, u_input.b, var_3.b), true, var_4.c, -var_3.a))), _wgslsmith_mod_i32(var_3.a, var_3.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(695f - -3097f)) - var_2.x)), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * var_2.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(452f * var_2.x)) * -1098f)), _wgslsmith_div_vec4_i32(~max(vec4<i32>(-17383i, -1i, -11076i, u_input.b), firstTrailingBit(vec4<i32>(-2147483647i, -24837i, -5183i, -76215i))), -(countOneBits(vec4<i32>(-2147483647i, u_input.b, 2147483647i, 2147483647i)) >> ((vec4<u32>(var_5.c.x, var_5.c.x, u_input.a, 0u) << (vec4<u32>(var_4.c.x, var_5.c.x, u_input.a, var_3.c.x) % vec4<u32>(32u))) % vec4<u32>(32u)))));
}

