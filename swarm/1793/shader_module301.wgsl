struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32;

var<private> global2: array<u32, 23>;

var<private> global3: vec4<bool>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec2<u32>) -> vec2<bool> {
    global2 = array<u32, 23>();
    global0 = arg_1;
    var var_0 = arg_1;
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_sub_i32(0i, arg_1.a), 4155i ^ _wgslsmith_sub_i32(~66799i, ~arg_0), ~(~(-(1i & u_input.a))));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.b, arg_1.b, arg_1.b))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-156f, global0.b, arg_1.b))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_1.b, global0.b)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(134f, -141f, var_0.b))))))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.b + 318f))) + var_0.b), _wgslsmith_f_op_f32(arg_1.b + -181f)));
    return vec2<bool>(!all(vec3<bool>(all(vec4<bool>(true, true, false, global3.x)), true, true)), false);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> i32 {
    global0 = arg_0;
    global3 = select(select(vec4<bool>(!arg_0.d, true || global0.d, !(arg_0.d & arg_0.d), select(arg_0.d, arg_0.d, global3.x)), vec4<bool>(any(!global3.xyx), select(global0.d, global0.a >= arg_1.x, false), !select(global0.d, global0.d, false), !any(vec4<bool>(global3.x, global3.x, global3.x, true))), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(arg_0.d, global0.d, true, global0.d), vec4<bool>(global0.d, false, arg_0.d, global0.d), false), !all(vec2<bool>(true, false)))), !select(vec4<bool>(global0.d, global0.d, !global0.d, arg_0.d), !(!vec4<bool>(global0.d, false, global3.x, false)), arg_0.d), !(!(!select(vec4<bool>(false, false, false, false), vec4<bool>(global3.x, arg_0.d, true, true), vec4<bool>(false, false, global3.x, true)))));
    var var_0 = select(vec2<bool>(!(all(global3.yz) != all(global3.zx)), all(select(vec2<bool>(true, true), func_3(global0.a, Struct_1(-21881i, global0.b, arg_0.c, arg_0.d), vec2<u32>(67173u, 47280u)), arg_0.d))), func_3(-reverseBits(arg_0.a), Struct_1(_wgslsmith_dot_vec4_i32(arg_1, arg_1) >> (_wgslsmith_sub_u32(arg_0.c, 7853u) % 32u), global0.b, arg_0.c, all(select(vec3<bool>(true, global0.d, global3.x), vec3<bool>(global3.x, true, global3.x), global0.d))), ~vec2<u32>(1u, 1u) & firstTrailingBit(vec2<u32>(global0.c, 4294967295u))), any(select(select(select(vec4<bool>(global3.x, global3.x, false, true), vec4<bool>(arg_0.d, global0.d, global3.x, false), vec4<bool>(false, global3.x, arg_0.d, global3.x)), select(vec4<bool>(false, false, true, global0.d), vec4<bool>(true, global3.x, false, global0.d), global3.x), select(vec4<bool>(global0.d, false, arg_0.d, global3.x), vec4<bool>(false, global3.x, false, false), global0.d)), select(vec4<bool>(global3.x, false, false, global3.x), vec4<bool>(false, false, global0.d, global3.x), vec4<bool>(true, false, false, true)), !select(vec4<bool>(global0.d, global0.d, true, arg_0.d), vec4<bool>(true, false, false, true), vec4<bool>(true, true, global3.x, arg_0.d)))));
    var_0 = !vec2<bool>(!(_wgslsmith_f_op_f32(-global0.b) <= _wgslsmith_f_op_f32(trunc(1470f))), global0.d);
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.b + arg_0.b)));
    return 0i;
}

fn func_1() -> f32 {
    let var_0 = vec4<i32>(~0i, countOneBits(1i), _wgslsmith_mod_i32(global0.a, -_wgslsmith_add_i32(global0.a, firstLeadingBit(global0.a))), ~_wgslsmith_add_i32(firstLeadingBit(u_input.a), _wgslsmith_clamp_i32(1i, -1i, 36381i)) | (54130i | func_2(Struct_1(-1i, global0.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(83227u, 23u)], 23u)], true), -vec4<i32>(10554i, u_input.a, u_input.a, u_input.a))));
    global3 = !(!select(select(vec4<bool>(false, global3.x, false, global0.d), vec4<bool>(true, true, global3.x, global0.d), global0.c >= global2[_wgslsmith_index_u32(4139u, 23u)]), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, global3.x, global3.x, global3.x), vec4<bool>(false, global0.d, global3.x, true)), !vec4<bool>(false, global3.x, global3.x, false), global0.d), _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global0.c, 23u)], global0.c) == 4294967295u));
    global0 = Struct_1(firstTrailingBit(-2147483647i), _wgslsmith_f_op_f32(1042f + global0.b), _wgslsmith_add_u32(1u, 12966u), !(!global0.d));
    var var_1 = Struct_1(6522i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2648f) - _wgslsmith_f_op_f32(-global0.b))), -616f)), global2[_wgslsmith_index_u32(~min(global0.c, ~25850u), 23u)], true);
    global3 = vec4<bool>(global0.b > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -164f) - 566f), global3.x, func_3(_wgslsmith_dot_vec2_i32(max(_wgslsmith_sub_vec2_i32(vec2<i32>(-10382i, global0.a), var_0.xw), var_0.zw), ~(vec2<i32>(1i, var_0.x) ^ var_0.xx)), Struct_1(abs(var_1.a), _wgslsmith_f_op_f32(select(127f, var_1.b, any(vec4<bool>(global3.x, true, var_1.d, true)))), ~abs(35775u), !(!global3.x)), ~firstLeadingBit(vec2<u32>(global0.c, var_1.c))).x, true);
    return -866f;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = !select(vec4<bool>(global3.x, max(global0.c, global2[_wgslsmith_index_u32(global0.c, 23u)]) == global2[_wgslsmith_index_u32(firstTrailingBit(global2[_wgslsmith_index_u32(13285u, 23u)]), 23u)], any(select(vec4<bool>(global3.x, global0.d, global0.d, true), vec4<bool>(global3.x, global0.d, global0.d, false), global3.x)), select(global0.a <= u_input.a, !global0.d, global0.d)), !select(!vec4<bool>(true, global0.d, global3.x, global3.x), !vec4<bool>(true, global0.d, global3.x, false), !vec4<bool>(true, global0.d, global3.x, global3.x)), select(vec4<bool>(global0.a < global0.a, false, global3.x && false, true), vec4<bool>(false, global3.x, false, !global0.d), select(!vec4<bool>(true, global3.x, false, true), vec4<bool>(false, global0.d, global0.d, true), select(vec4<bool>(global3.x, false, global0.d, global0.d), vec4<bool>(global3.x, false, global3.x, true), global0.d))));
    global0 = Struct_1(1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(abs(global0.b))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) - _wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(trunc(997f))))), 41789u, true && any(vec3<bool>(global0.d, true, global0.d || false)));
    global3 = select(select(select(select(vec4<bool>(global0.d, false, global3.x, global0.d), vec4<bool>(false, true, global3.x, global3.x), vec4<bool>(global3.x, global0.d, global0.d, true)), !(!vec4<bool>(global3.x, global0.d, false, true)), global3.x), !(!vec4<bool>(false, global3.x, true, false)), global0.d), vec4<bool>(any(vec4<bool>(false, all(vec4<bool>(false, global0.d, true, global3.x)), true, !global3.x)), !(!global0.d), 1u <= global2[_wgslsmith_index_u32(0u | global0.c, 23u)], global3.x), !any(select(vec2<bool>(true, true), global3.yw, !global3.yy)));
    let var_0 = min(~vec4<u32>(global0.c, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(countOneBits(7338u), 23u)], 23u)], ~1u, 2220u ^ global2[_wgslsmith_index_u32(5419u, 23u)]) << (~select(vec4<u32>(global2[_wgslsmith_index_u32(1u, 23u)], global2[_wgslsmith_index_u32(0u, 23u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12149u, 23u)], 23u)], 23u)], global2[_wgslsmith_index_u32(4294967295u, 23u)]), ~vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(1u, 23u)], global2[_wgslsmith_index_u32(global0.c, 23u)], 119079u), select(vec4<bool>(false, global3.x, false, false), vec4<bool>(global0.d, false, false, false), true)) % vec4<u32>(32u)), countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(max(global2[_wgslsmith_index_u32(36173u, 23u)], global0.c), 22856u, 29780u, global0.c), ~min(vec4<u32>(36268u, 74993u, 0u, global2[_wgslsmith_index_u32(global0.c, 23u)]), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(46831u, 23u)], 23u)], 1u, global2[_wgslsmith_index_u32(global0.c, 23u)], 16973u)))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.b, _wgslsmith_f_op_f32(-2583f + _wgslsmith_f_op_f32(677f * 509f))))), 959f, global0.b, _wgslsmith_f_op_f32(773f * global0.b));
    let var_2 = max(vec4<i32>(46949i, u_input.a, reverseBits(_wgslsmith_mod_i32(2147483647i, global0.a) | (2147483647i & u_input.a)), -global0.a), select(abs(vec4<i32>(2147483647i, ~0i, u_input.a, _wgslsmith_add_i32(u_input.a, global0.a))), min(_wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.a, u_input.a, 6776i), vec4<i32>(global0.a, global0.a, u_input.a, global0.a)) >> (~var_0 % vec4<u32>(32u)), -vec4<i32>(u_input.a, 0i, global0.a, -1i) << ((vec4<u32>(0u, 4294967295u, 1u, global0.c) ^ vec4<u32>(11125u, 4047u, 45969u, var_0.x)) % vec4<u32>(32u))), true));
    global1 = u_input.a;
    global3 = select(vec4<bool>(var_0.x > 1u, global3.x, true, !global3.x), vec4<bool>(any(global3.wxx), -_wgslsmith_add_i32(var_2.x, u_input.a) <= -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -39839i, 35154i, u_input.a), vec4<i32>(-2147483647i, -2147483647i, var_2.x, u_input.a)), all(vec3<bool>(global0.d, global0.d | false, all(vec2<bool>(global3.x, false)))), true), true);
    let var_3 = Struct_1(reverseBits(~_wgslsmith_div_i32(_wgslsmith_mod_i32(-1i, global0.a), u_input.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.b, -1901f)), _wgslsmith_f_op_f32(global0.b + global0.b)) + _wgslsmith_f_op_f32(-1142f + _wgslsmith_f_op_f32(global0.b - global0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-542f + var_1.x), _wgslsmith_f_op_f32(var_1.x + var_1.x), global0.d & global3.x)) - _wgslsmith_f_op_f32(-global0.b)))), _wgslsmith_clamp_u32(~reverseBits(0u << (global2[_wgslsmith_index_u32(0u, 23u)] % 32u)), ~global0.c, ~firstTrailingBit(global0.c)), select(max(global0.c, 33504u) <= ~global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.c, global2[_wgslsmith_index_u32(var_0.x, 23u)]), 23u)], func_3(1i, Struct_1(9614i, _wgslsmith_f_op_f32(338f + global0.b), 17429u, false), var_0.yx).x, true));
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(min(1u, var_3.c & global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(var_0.ywx, vec3<u32>(global0.c, 4294967295u, var_0.x)), ~global2[_wgslsmith_index_u32(var_0.x, 23u)]), 23u)]), 23u)]);
}

