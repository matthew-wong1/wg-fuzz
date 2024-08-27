struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 14>;

var<private> global2: Struct_1 = Struct_1(vec2<i32>(1i, 0i), true, vec3<f32>(-816f, 822f, 229f));

var<private> global3: array<u32, 10>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: bool) -> f32 {
    let var_0 = vec2<u32>(~_wgslsmith_mult_u32(~42597u ^ global3[_wgslsmith_index_u32(~10057u, 10u)], select(0u, ~u_input.b.x, any(vec4<bool>(global2.b, true, true, global0.b)))), u_input.b.x);
    var var_1 = vec4<bool>(arg_1, arg_1, !(~(~global3[_wgslsmith_index_u32(58987u, 10u)]) == _wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(53599u, 10u)], 41548u, 4294967295u) << (vec3<u32>(1u, global3[_wgslsmith_index_u32(var_0.x, 10u)], global3[_wgslsmith_index_u32(1u, 10u)]) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 27153u, 9457u), vec3<u32>(var_0.x, 36626u, u_input.b.x)))), all(vec3<bool>(arg_1, false == all(vec4<bool>(false, true, arg_1, global0.b)), all(vec3<bool>(global0.b, false, arg_1)))));
    global3 = array<u32, 10>();
    return global0.c.x;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> vec3<u32> {
    let var_0 = global2.a.x ^ _wgslsmith_div_i32(abs(-2147483647i), select(-(~(-1i)), i32(-1i) * -16041i, !(false || arg_2)));
    global3 = array<u32, 10>();
    var var_1 = Struct_1(vec2<i32>(-2147483647i, 1i), true, vec3<f32>(global2.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.c.x)) - _wgslsmith_f_op_f32(func_3(arg_1.a, arg_2))))), _wgslsmith_f_op_f32(arg_1.c.x + arg_1.c.x)));
    global0 = Struct_1(vec2<i32>(-1i, global0.a.x), !(!arg_2), _wgslsmith_div_vec3_f32(global0.c, global0.c));
    var var_2 = countOneBits(vec4<u32>(u_input.b.x, ~(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 10u)], 10u)]) << (0u % 32u), 4294967295u, abs(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x & 13389u, 10u)], 10u)], 10u)])));
    return firstLeadingBit(~max(var_2.zxy, var_2.wxx));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = u_input.e.x;
    return arg_2;
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = any(vec3<bool>(arg_1.b || true, !(_wgslsmith_f_op_f32(-global0.c.x) == 1035f), ~countOneBits(global3[_wgslsmith_index_u32(u_input.b.x, 10u)]) < (4294967295u & u_input.b.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.c.x, global0.c.x, 295f, 291f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.x, -1342f, global0.c.x, global2.c.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c.x, 415f, 532f, -196f) + _wgslsmith_div_vec4_f32(vec4<f32>(-793f, arg_2.c.x, arg_2.c.x, -1565f), vec4<f32>(458f, arg_1.c.x, -1400f, arg_2.c.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 14u)], -1000f, global2.c.x, 471f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_2.c.x), -2197f, global0.c.x, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 10u)], 14u)] * -810f)))));
    let var_2 = func_4(26119u, false, Struct_1(vec2<i32>(_wgslsmith_mult_i32(-1i, 2147483647i), ~u_input.d >> (firstLeadingBit(0u) % 32u)), global0.b, arg_2.c), true);
    let var_3 = var_2.b;
    var var_4 = arg_1.a;
    return func_4(0u, any(select(!vec4<bool>(arg_0.x, false, true, arg_1.b), select(select(vec4<bool>(true, var_3, var_3, false), vec4<bool>(var_2.b, true, var_3, false), true), vec4<bool>(arg_0.x, true, false, false), all(arg_0)), select(vec4<bool>(true, arg_1.b, var_2.b, var_2.b), !vec4<bool>(arg_2.b, false, arg_2.b, var_3), true))), arg_2, all(vec4<bool>(func_2(var_3, Struct_1(vec2<i32>(arg_2.a.x, 0i), arg_2.b, global2.c), var_2.b).x >= ~24758u, global2.a.x > (global0.a.x & 0i), any(!vec4<bool>(true, true, var_3, true)), true)));
}

fn func_1() -> u32 {
    let var_0 = func_5(!vec3<bool>(global2.b, global2.b, true), func_4(_wgslsmith_dot_vec3_u32(func_2(true, Struct_1(vec2<i32>(u_input.a.x, u_input.d), global0.b, vec3<f32>(1578f, global2.c.x, global0.c.x)), u_input.b.x > 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 10u)], 10u)], 10u)], global3[_wgslsmith_index_u32(0u, 10u)]), vec3<u32>(u_input.b.x, 36833u, u_input.b.x))), global2.b, Struct_1(u_input.a.yx, _wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(global2.a.x, -19308i, 0i, global2.a.x)) <= 1i, global2.c), !(!global0.b)), Struct_1(vec2<i32>(func_4(firstTrailingBit(4294967295u), false, func_4(0u, false, Struct_1(global0.a, false, global2.c), global0.b), global0.c.x <= global0.c.x).a.x, func_4(10871u, true, Struct_1(vec2<i32>(global0.a.x, global2.a.x), false, vec3<f32>(1372f, global0.c.x, 590f)), global2.b).a.x), !all(vec4<bool>(global2.b, global0.b, global2.b, global2.b)), _wgslsmith_f_op_vec3_f32(floor(global2.c))));
    var var_1 = vec4<u32>(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, firstTrailingBit(1u) >> (0u % 32u)), 10u)], ~16403u, ~firstTrailingBit(~_wgslsmith_div_u32(27665u, 8944u)), 4294967295u);
    global2 = func_4(global3[_wgslsmith_index_u32(~40013u, 10u)], all(select(vec4<bool>(all(vec3<bool>(true, false, false)), false, false, false), vec4<bool>(true, true, true, global0.b), select(select(vec4<bool>(true, var_0.b, global0.b, false), vec4<bool>(global0.b, true, var_0.b, global0.b), vec4<bool>(false, global2.b, global2.b, global0.b)), select(vec4<bool>(global0.b, true, global0.b, global0.b), vec4<bool>(true, true, true, global0.b), global2.b), true))), func_4(~(global3[_wgslsmith_index_u32(var_1.x & 28498u, 10u)] & global3[_wgslsmith_index_u32(u_input.b.x, 10u)]), !any(!vec3<bool>(global2.b, var_0.b, global0.b)), func_4(u_input.b.x, select(any(vec4<bool>(false, var_0.b, global0.b, true)), var_0.c.x <= global1[_wgslsmith_index_u32(var_1.x, 14u)], global2.b & global0.b), func_4(_wgslsmith_dot_vec2_u32(u_input.b, var_1.wz), false, Struct_1(vec2<i32>(var_0.a.x, -13870i), false, vec3<f32>(396f, -1000f, global2.c.x)), false), !global0.b), true & any(select(vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(global0.b, false, var_0.b), vec3<bool>(true, global0.b, global0.b)))), global0.b);
    return abs(~abs(12810u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (all(!select(vec3<bool>(global0.b, global2.b, global2.b), vec3<bool>(true, false, false), false)) || global2.b) != global2.b;
    global1 = array<f32, 14>();
    let var_1 = Struct_1(global0.a, any(!vec4<bool>(global0.b, false, false, global0.b & global0.b)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-780f))))), global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~(~4294967295u) ^ func_1(), 10u)], 14u)], -1378f));
    let var_2 = ~func_4(abs(~u_input.b.x ^ (u_input.b.x << (45451u % 32u))), true, var_1, any(vec2<bool>(global0.b, func_5(vec3<bool>(var_1.b, false, false), Struct_1(vec2<i32>(-16004i, u_input.e.x), true, var_1.c), Struct_1(global2.a, true, vec3<f32>(global0.c.x, -1206f, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(39343u, 10u)], 14u)]))).b))).a;
    let var_3 = select(select(!vec3<bool>(!global2.b, var_2.x > -1i, true), !(!vec3<bool>(true, var_1.b, false)), !vec3<bool>(true, global0.b && true, var_1.b)), select(!select(!vec3<bool>(global2.b, global0.b, global2.b), select(vec3<bool>(false, true, false), vec3<bool>(true, false, global0.b), false), true), select(vec3<bool>(!global0.b, func_4(29116u, global2.b, var_1, var_1.b).b, true), !vec3<bool>(var_1.b, true, false), !select(vec3<bool>(global0.b, var_1.b, global2.b), vec3<bool>(global2.b, true, false), vec3<bool>(global2.b, var_1.b, false))), select(select(vec3<bool>(true, false, false), vec3<bool>(true, global2.b, true), select(vec3<bool>(true, var_1.b, global2.b), vec3<bool>(global0.b, true, global2.b), vec3<bool>(false, global2.b, var_1.b))), select(!vec3<bool>(global0.b, global0.b, global0.b), vec3<bool>(true, global0.b, true), all(vec3<bool>(false, false, false))), global0.b && true)), !vec3<bool>(global0.b, var_1.b, global2.b));
    global1 = array<f32, 14>();
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, ~u_input.b.x, global3[_wgslsmith_index_u32(~(_wgslsmith_sub_u32(u_input.b.x, 4294967295u) ^ 4294967295u), 10u)], (_wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(7833u, 10u)], global3[_wgslsmith_index_u32(91585u, 10u)], u_input.b.x), vec3<u32>(4294967295u, 0u, u_input.b.x)) & _wgslsmith_add_u32(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 10u)], 10u)])) & 76140u), _wgslsmith_div_vec3_u32(vec3<u32>(reverseBits(~51693u), ~(~38374u), ~u_input.b.x), ~_wgslsmith_sub_vec3_u32(select(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 10u)], 10u)], u_input.b.x, global3[_wgslsmith_index_u32(30755u, 10u)]), vec3<u32>(4294967295u, 1u, u_input.b.x), vec3<bool>(false, false, var_3.x)), ~vec3<u32>(0u, 54743u, 4294967295u))));
}

