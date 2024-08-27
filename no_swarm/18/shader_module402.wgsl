struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
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

var<private> global0: array<vec2<bool>, 15> = array<vec2<bool>, 15>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true));

var<private> global1: array<f32, 22>;

var<private> global2: array<vec4<u32>, 5>;

var<private> global3: i32;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1) -> bool {
    global3 = arg_0.c.x;
    global2 = array<vec4<u32>, 5>();
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c, 22u)]))) + global1[_wgslsmith_index_u32(u_input.b, 22u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(75094u, 54677u), 22u)]))), all(!(!vec2<bool>(arg_0.b, false)))))));
    global0 = array<vec2<bool>, 15>();
    let var_1 = reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.a ^ arg_0.c.x, -56006i, arg_0.c.x & ~arg_0.c.x, max(countOneBits(arg_0.a), -1268i)), arg_0.c));
    return !(!(all(!vec4<bool>(arg_0.b, true, arg_0.b, false)) | false));
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<bool>(u_input.c == _wgslsmith_mult_u32(~_wgslsmith_mod_u32(42289u, u_input.a.x), countOneBits(_wgslsmith_add_u32(113188u, u_input.a.x))), (any(vec3<bool>(true, true, true)) | true) & !(!select(false, true, false)), func_3(Struct_1(abs(-5001i), true, min(vec4<i32>(24199i, 40269i, 2147483647i, -14709i), vec4<i32>(-2147483647i, -19776i, 1i, -12858i)))) | true);
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(828f * -645f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 22u)] - global1[_wgslsmith_index_u32(u_input.a.x, 22u)]) - _wgslsmith_div_f32(1381f, global1[_wgslsmith_index_u32(0u, 22u)])) * 640f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c, 22u)] * 139f) + global1[_wgslsmith_index_u32(min(u_input.b, u_input.a.x), 22u)])))));
    var var_2 = Struct_1(_wgslsmith_add_i32(_wgslsmith_add_i32(~1i, _wgslsmith_div_i32(3377i, 1i)), select(abs(-2147483647i), ~(-2147483647i) << (u_input.b % 32u), false)), false, (vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(vec4<i32>(11419i, 9912i, -1i, -2147483647i), vec4<i32>(0i, -1i, -1i, -28697i))) << (_wgslsmith_div_vec4_u32(~max(vec4<u32>(19975u, u_input.b, 21198u, u_input.c), vec4<u32>(u_input.c, 4294967295u, 25716u, 4294967295u)), vec4<u32>(1u, 1u, 0u, 72613u)) % vec4<u32>(32u)));
    let var_3 = vec3<u32>(u_input.a.x, 1u, 99293u);
    var var_4 = firstTrailingBit(-vec2<i32>(-61260i, var_2.a));
    return Struct_1(-1i, true, countOneBits(_wgslsmith_add_vec4_i32(var_2.c, ~var_2.c | (vec4<i32>(var_4.x, -8968i, 50500i, 50419i) | vec4<i32>(var_2.a, var_4.x, -1404i, -2147483647i)))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global3 = arg_2.a;
    global3 = arg_1.a;
    global2 = array<vec4<u32>, 5>();
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, -min(2147483647i, -3416i), -arg_1.c.x >> (arg_0.x % 32u)), vec4<i32>(~53011i, _wgslsmith_dot_vec4_i32(arg_1.c >> (vec4<u32>(arg_0.x, 0u, 66090u, arg_0.x) % vec4<u32>(32u)), vec4<i32>(arg_1.c.x, arg_1.c.x, -8877i, 0i)), _wgslsmith_clamp_i32(8833i, 1i, 2147483647i) ^ arg_2.c.x, 2147483647i)) <= _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(arg_1.a, -47804i, 1i), min(arg_2.c.x | 1i, arg_2.a), max(max(arg_2.a, -1439i), arg_1.c.x | 24175i), 1i), ~select(-arg_1.c, -arg_2.c, true));
    global3 = firstLeadingBit(-2147483647i);
    return func_2();
}

fn func_5(arg_0: Struct_1) -> vec4<bool> {
    return vec4<bool>(!(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b ^ 823u, 22u)] * global1[_wgslsmith_index_u32(~72878u, 22u)]) <= _wgslsmith_f_op_f32(f32(-1f) * -720f)), arg_0.b || (arg_0.b & arg_0.b), all(global0[_wgslsmith_index_u32(~u_input.a.x, 15u)]), !arg_0.b);
}

fn func_1(arg_0: f32) -> vec4<i32> {
    let var_0 = select(!vec4<bool>(!any(vec3<bool>(false, true, false)), true, true, true), !func_5(func_4(~vec2<u32>(u_input.b, u_input.a.x), Struct_1(1i, true, vec4<i32>(-2147483647i, 15209i, -1i, 1i)), func_2())), func_2().b);
    global0 = array<vec2<bool>, 15>();
    var var_1 = func_4(vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, u_input.c), countOneBits(u_input.a.yx)), ~u_input.b >> (1u % 32u)) | u_input.a.wx, Struct_1(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(3392i, -2147483647i, 87693i, -22809i), vec4<i32>(-8955i, -1i, -2147483647i, 1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 22u)] + -294f) * global1[_wgslsmith_index_u32(u_input.a.x, 22u)]) < global1[_wgslsmith_index_u32(u_input.c, 22u)], firstLeadingBit(_wgslsmith_add_vec4_i32(func_2().c, vec4<i32>(0i, 24010i, 18591i, 2147483647i)))), Struct_1(-2147483647i | (_wgslsmith_mod_i32(19788i, -1i) & select(-1i, -2147483647i, var_0.x)), true, ~vec4<i32>(1i, -2147483647i, ~(-1i), abs(-32198i))));
    global2 = array<vec4<u32>, 5>();
    global1 = array<f32, 22>();
    return -(reverseBits(var_1.c) << (countOneBits(global2[_wgslsmith_index_u32(~u_input.a.x, 5u)]) % vec4<u32>(32u)));
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = ~21706u;
    let var_1 = u_input.a.www;
    var var_2 = arg_0;
    global3 = var_2.a ^ var_2.a;
    global3 = _wgslsmith_mod_i32(1i, ~func_2().c.x);
    return Struct_1(_wgslsmith_div_i32(abs(var_2.c.x), ~53997i >> (u_input.a.x % 32u)) >> (0u % 32u), any(!vec4<bool>(true, func_4(u_input.a.zz, arg_0, arg_0).b, false, arg_0.b)), func_2().c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-1i, false, vec4<i32>(31775i, 1i, ~66427i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(2147483647i, 1i, 9246i, -2147483647i)), -reverseBits(44867i))));
    global2 = array<vec4<u32>, 5>();
    var_0 = func_6(Struct_1(var_0.c.x << (2381u % 32u), any(!select(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(u_input.b, 15u)], var_0.b)), select(func_1(225f), -select(vec4<i32>(-1i, -82381i, 7618i, var_0.a), vec4<i32>(1i, var_0.c.x, 32157i, 1i), var_0.b), !func_5(Struct_1(48953i, var_0.b, var_0.c)))), global1[_wgslsmith_index_u32(77925u, 22u)], vec4<f32>(global1[_wgslsmith_index_u32(22446u, 22u)], global1[_wgslsmith_index_u32(37373u & abs(_wgslsmith_mult_u32(u_input.a.x, u_input.c)), 22u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 22u)])))), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(4294967295u, 22u)], _wgslsmith_div_f32(global1[_wgslsmith_index_u32(33295u, 22u)], _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(29984u, 22u)], -581f, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(165f);
}

