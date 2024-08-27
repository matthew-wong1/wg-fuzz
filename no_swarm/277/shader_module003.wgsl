struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(true, true, vec3<i32>(15547i, 19788i, 1339i), false);

var<private> global2: u32 = 12467u;

var<private> global3: array<Struct_1, 6>;

var<private> global4: bool = false;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> i32 {
    var var_0 = global0.c.x;
    let var_1 = Struct_1(!global1.b, abs(~u_input.a.x) < 4294967295u, select(max(-global0.c, vec3<i32>(~global1.c.x, global0.c.x << (u_input.c.x % 32u), abs(0i))), vec3<i32>(global1.c.x, -global0.c.x & 0i, _wgslsmith_div_i32(~global0.c.x, i32(-1i) * -2147483647i)), !select(select(vec3<bool>(false, global0.b, true), vec3<bool>(global1.d, global0.b, false), global0.b), vec3<bool>(false, true, global1.d), 1i != global1.c.x)), global1.b);
    let var_2 = u_input.a;
    global1 = var_1;
    let var_3 = _wgslsmith_sub_i32(select(~reverseBits(global1.c.x), -2147483647i, !any(vec2<bool>(true, false))), 1i) <= -(i32(-1i) * -18494i);
    return var_1.c.x;
}

fn func_2() -> Struct_1 {
    global2 = ~u_input.c.x;
    var var_0 = func_3();
    let var_1 = Struct_1(!select(true, all(vec3<bool>(true, false, false)), global0.a), global0.a, global1.c, (global1.c.x > global0.c.x) && false);
    var var_2 = select(vec4<bool>(global1.b, var_1.d, select(true, true, true), any(select(vec2<bool>(global1.a, var_1.b), select(vec2<bool>(global1.b, global0.d), vec2<bool>(global0.a, global1.a), vec2<bool>(true, global1.d)), vec2<bool>(global1.a, var_1.a)))), !select(vec4<bool>(true, !global0.a, true && var_1.a, var_1.a), select(select(vec4<bool>(true, false, false, var_1.a), vec4<bool>(false, global1.d, var_1.a, global1.a), global0.b), !vec4<bool>(var_1.b, true, var_1.a, true), any(vec4<bool>(false, global1.b, true, true))), true), !vec4<bool>(true, select(any(vec2<bool>(false, var_1.d)), !var_1.a, all(vec4<bool>(global1.a, global0.b, var_1.b, false))), true, true));
    var_0 = global0.c.x;
    return var_1;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    global4 = any(!select(select(vec2<bool>(global1.b, false), select(vec2<bool>(arg_2.d, global0.b), vec2<bool>(arg_2.d, true), vec2<bool>(arg_2.a, true)), vec2<bool>(true, true)), vec2<bool>(true, global1.a), vec2<bool>(arg_0.d, global1.b)));
    var var_0 = vec3<bool>(false, all(!vec4<bool>(!global0.d, any(vec3<bool>(arg_0.b, arg_2.d, global1.b)), true, false)), true);
    global1 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~4294967295u, arg_1), 6u)];
    global1 = Struct_1(!all(var_0.yy), true, vec3<i32>(-_wgslsmith_dot_vec4_i32(~vec4<i32>(global0.c.x, arg_2.c.x, arg_0.c.x, global1.c.x), reverseBits(vec4<i32>(global0.c.x, global1.c.x, global1.c.x, arg_2.c.x))), countOneBits(33623i), -(~countOneBits(0i))), false);
    var var_1 = 307f;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec2<u32>(25825u, _wgslsmith_clamp_u32(1954u ^ u_input.c.x, 0u, _wgslsmith_mod_u32(u_input.b, u_input.a.x))));
    let var_1 = func_1(global3[_wgslsmith_index_u32(var_0.x, 6u)], max(~_wgslsmith_mult_u32(~u_input.c.x, var_0.x), ~var_0.x), global3[_wgslsmith_index_u32(138121u, 6u)]);
    global2 = firstTrailingBit(abs(~abs(69384u)));
    var var_2 = u_input.c.x;
    let var_3 = vec4<i32>(-2147483647i, firstTrailingBit(0i), ~(-26971i), -global1.c.x);
    let var_4 = 247f;
    var var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-189f, var_4, var_4, var_4) - vec4<f32>(var_4, 1236f, -979f, 1000f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4, var_4, var_4, var_4) - vec4<f32>(var_4, 393f, var_4, var_4))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_4, var_4, var_4, var_4), vec4<f32>(1000f, -784f, var_4, var_4))))) - vec4<f32>(_wgslsmith_f_op_f32(floor(582f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4)), var_4)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, var_4, -884f, -223f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1378f, var_4, 1367f, -2973f) - vec4<f32>(var_4, var_4, 1000f, var_4))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -1000f, var_4, var_4), vec4<f32>(var_4, var_4, 1925f, -507f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_4, -955f, -873f))), vec4<bool>(all(vec2<bool>(global0.d, global1.a)), all(vec4<bool>(global0.b, false, true, true)), var_1.d & false, func_2().a)))));
    let x = u_input.a;
    s_output = StorageBuffer(7822i, vec2<i32>(1i, -var_3.x), firstTrailingBit(abs(u_input.c.x)), ~(var_1.c.x >> (select(~u_input.a.x, 34327u, true) % 32u)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(693f, var_5.x, 770f, _wgslsmith_f_op_f32(ceil(var_4))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_5.x, var_4, -104f, var_5.x), vec4<f32>(-522f, var_4, var_5.x, var_4)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4, var_4, -1813f, -1871f))))))));
}

