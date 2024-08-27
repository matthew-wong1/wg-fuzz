struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: u32,
    d: Struct_3,
    e: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26> = array<f32, 26>(-424f, 1946f, 1386f, -1345f, 513f, 254f, 236f, 1118f, -3000f, -552f, 2226f, 177f, 566f, -642f, 475f, -1153f, 499f, -1074f, 555f, -482f, 134f, -713f, 1236f, 812f, -274f, 1146f);

var<private> global1: array<vec4<i32>, 10>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_5, arg_2: vec2<f32>, arg_3: Struct_4) -> vec3<bool> {
    let var_0 = Struct_1(arg_1.d.a);
    return select(!select(select(vec3<bool>(true, false, var_0.a), !vec3<bool>(arg_3.a.x, arg_0.a, true), var_0.a), !(!vec3<bool>(arg_3.a.x, arg_3.a.x, var_0.a)), false), select(!(!(!vec3<bool>(var_0.a, arg_1.c.a, false))), !(!(!vec3<bool>(arg_1.c.a, var_0.a, var_0.a))), !select(select(vec3<bool>(false, arg_3.a.x, arg_3.a.x), vec3<bool>(true, false, var_0.a), arg_3.a.x), vec3<bool>(var_0.a, arg_1.a, false), vec3<bool>(arg_0.c.a, var_0.a, false))), true);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_4) -> vec4<f32> {
    var var_0 = arg_3.d;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.d | 4294967295u, 27474u), 1u << (max(0u, var_0.a) % 32u)), 26u)] - arg_0), arg_2, arg_3.b.x);
    global1 = array<vec4<i32>, 10>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(482f))))))));
    global0 = array<f32, 26>();
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3.b) + _wgslsmith_f_op_vec4_f32(vec4<f32>(973f, var_1.x, 746f, -469f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 100f, arg_2, arg_2)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 1969f, 601f, arg_0))))));
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    let var_0 = Struct_4(vec2<bool>(false, false), _wgslsmith_f_op_vec4_f32(func_4(111f, Struct_1(any(func_3(Struct_5(true, u_input.b.xx, Struct_1(true), Struct_1(true)), Struct_5(false, vec2<u32>(4294967295u, 4294967295u), Struct_1(true), Struct_1(false)), vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], 1456f), Struct_4(vec2<bool>(false, false), vec4<f32>(1000f, global0[_wgslsmith_index_u32(u_input.b.x, 26u)], 798f, 1104f), u_input.d, Struct_3(897u), Struct_2(arg_0.a))))), global0[_wgslsmith_index_u32(countOneBits(~u_input.b.x), 26u)], Struct_4(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-750f, 1057f, arg_0.a, arg_0.a) + vec4<f32>(-447f, global0[_wgslsmith_index_u32(86602u, 26u)], -879f, arg_0.a)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(432f, global0[_wgslsmith_index_u32(u_input.b.x, 26u)], 1509f, global0[_wgslsmith_index_u32(u_input.d, 26u)])))), reverseBits(u_input.d >> (7146u % 32u)), Struct_3(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.d, u_input.b.x, 1u), vec4<u32>(u_input.d, 65214u, u_input.b.x, 1u))), arg_0))), max(~(~1u) | _wgslsmith_add_u32(firstLeadingBit(313u), u_input.d), 51213u), Struct_3((_wgslsmith_mod_u32(u_input.b.x, 27942u) << (u_input.b.x % 32u)) & select(u_input.d, u_input.b.x & u_input.d, any(vec4<bool>(true, false, true, true)))), Struct_2(arg_0.a));
    global1 = array<vec4<i32>, 10>();
    global0 = array<f32, 26>();
    global0 = array<f32, 26>();
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.c.zx, u_input.c.yy), -(u_input.a << (_wgslsmith_mult_u32(var_0.d.a, var_0.c) % 32u)), ~countOneBits(21237i)) >> (580u % 32u);
    return Struct_3(40992u);
}

fn func_1(arg_0: Struct_5, arg_1: f32) -> i32 {
    var var_0 = func_2(Struct_2(-1929f));
    var var_1 = Struct_4(select(func_3(arg_0, arg_0, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(2596u, 26u)], -730f) * vec2<f32>(arg_1, -226f)))), Struct_4(select(vec2<bool>(false, arg_0.c.a), vec2<bool>(arg_0.c.a, arg_0.d.a), arg_0.d.a), vec4<f32>(1490f, global0[_wgslsmith_index_u32(4294967295u, 26u)], arg_1, 856f), 72657u, Struct_3(1u), Struct_2(arg_1))).yy, vec2<bool>(any(vec4<bool>(arg_0.a, arg_0.d.a, false, false)), select(u_input.d <= 4294967295u, true, arg_0.a)), arg_0.d.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(0u, 26u)], -143f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-908f)) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 26u)] * arg_1)), _wgslsmith_f_op_f32(-900f + -1165f), -322f)), ~(~arg_0.b.x), func_2(Struct_2(762f)), Struct_2(-190f));
    let var_2 = !func_3(arg_0, arg_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_1.b.yy + var_1.b.xy))) * var_1.b.yy), Struct_4(var_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(401f, global0[_wgslsmith_index_u32(var_0.a, 26u)], arg_1, global0[_wgslsmith_index_u32(var_0.a, 26u)]))), _wgslsmith_dot_vec3_u32(u_input.b, max(u_input.b, u_input.b)), var_1.d, Struct_2(var_1.b.x)));
    let var_3 = var_2;
    let var_4 = i32(-1i) * -(~u_input.c.x);
    return u_input.c.x & firstTrailingBit(min(_wgslsmith_mod_i32(reverseBits(u_input.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a, -2147483647i, -2147483647i), global1[_wgslsmith_index_u32(var_1.c, 10u)])), select(reverseBits(39934i), _wgslsmith_dot_vec2_i32(u_input.c.xx, u_input.c.yx), select(false, arg_0.d.a, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(firstLeadingBit(_wgslsmith_mult_i32(u_input.e & ~(-16903i), u_input.e & u_input.a)), _wgslsmith_add_i32((func_1(Struct_5(true, u_input.b.yz, Struct_1(true), Struct_1(true)), -1862f) >> (_wgslsmith_clamp_u32(2814u, u_input.b.x, 63985u) % 32u)) ^ _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.c.x, 14763i), 2147483647i), _wgslsmith_dot_vec2_i32(-vec2<i32>(17602i, -2147483647i), vec2<i32>(u_input.c.x, 9694i))), u_input.a, firstLeadingBit(abs(-(~(-22233i)))));
    global1 = array<vec4<i32>, 10>();
    let var_1 = !vec4<bool>(!(global0[_wgslsmith_index_u32(0u, 26u)] != _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d, 26u)] + global0[_wgslsmith_index_u32(16123u, 26u)])), true | (true != (318f != global0[_wgslsmith_index_u32(1u, 26u)])), !any(vec3<bool>(false, true, false)), true);
    var var_2 = !func_3(Struct_5(u_input.e == reverseBits(-1i), select(u_input.b.yx, max(u_input.b.xz, u_input.b.xy), var_1.xz), Struct_1(false), Struct_1(!var_1.x)), Struct_5(true, countOneBits(~vec2<u32>(0u, u_input.d)), Struct_1(true), Struct_1(global0[_wgslsmith_index_u32(0u, 26u)] == global0[_wgslsmith_index_u32(u_input.d, 26u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(594f, global0[_wgslsmith_index_u32(u_input.d, 26u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(-761f, -390f) - vec2<f32>(658f, global0[_wgslsmith_index_u32(u_input.d, 26u)])))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1936f, global0[_wgslsmith_index_u32(1u, 26u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1828f, global0[_wgslsmith_index_u32(u_input.b.x, 26u)]))))), Struct_4(!vec2<bool>(var_1.x, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1365f, global0[_wgslsmith_index_u32(39255u, 26u)], -586f, global0[_wgslsmith_index_u32(u_input.d, 26u)]))), u_input.d, func_2(Struct_2(global0[_wgslsmith_index_u32(u_input.d, 26u)])), Struct_2(global0[_wgslsmith_index_u32(0u >> (u_input.d % 32u), 26u)]))).x;
    global1 = array<vec4<i32>, 10>();
    global1 = array<vec4<i32>, 10>();
    global0 = array<f32, 26>();
    let var_3 = global0[_wgslsmith_index_u32(countOneBits(min(_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_div_u32(~u_input.b.x, _wgslsmith_add_u32(0u, 1u))), _wgslsmith_dot_vec3_u32(~u_input.b, vec3<u32>(u_input.b.x, ~u_input.b.x, firstLeadingBit(69774u))))), 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], -810f, global0[_wgslsmith_index_u32(u_input.d, 26u)]) - vec3<f32>(306f, 2034f, 317f)), vec3<f32>(1469f, 1424f, global0[_wgslsmith_index_u32(0u, 26u)])))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(409f, -2910f, 1000f)))), _wgslsmith_f_op_vec4_f32(func_4(415f, Struct_1(false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(31122u, 26u)])) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 26u)]))), Struct_4(var_1.xx, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-766f, global0[_wgslsmith_index_u32(41688u, 26u)], 633f, 1266f))), max(~u_input.b.x, u_input.d & u_input.d), Struct_3(u_input.b.x), Struct_2(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(11187u, 26u)] * global0[_wgslsmith_index_u32(u_input.b.x, 26u)]))))).x, u_input.b, global0[_wgslsmith_index_u32(40128u, 26u)], 36260u);
}

