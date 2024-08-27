struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30> = array<i32, 30>(-27347i, -7823i, 2147483647i, 42822i, 19175i, i32(-2147483648), 0i, 0i, 83002i, -3324i, 30793i, 17558i, 9039i, 4981i, -44651i, -25637i, i32(-2147483648), 0i, 741i, 2147483647i, -15017i, 0i, -1i, 17202i, i32(-2147483648), -5952i, 3835i, -14759i, 34892i, 0i);

var<private> global1: vec4<bool>;

var<private> global2: Struct_1 = Struct_1(vec2<f32>(300f, -717f));

var<private> global3: Struct_1 = Struct_1(vec2<f32>(-1805f, -1126f));

var<private> global4: array<vec2<u32>, 19>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> i32 {
    let var_0 = arg_1;
    global4 = array<vec2<u32>, 19>();
    global2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, -299f) + _wgslsmith_f_op_vec2_f32(abs(global2.a)))) - _wgslsmith_f_op_vec2_f32(-global3.a)));
    global4 = array<vec2<u32>, 19>();
    var var_1 = global1.wz;
    return 2147483647i;
}

fn func_3(arg_0: vec2<f32>) -> vec2<f32> {
    var var_0 = global2.a;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1206f, 146f)) * 1f);
    global4 = array<vec2<u32>, 19>();
    let var_2 = select(vec2<i32>(global0[_wgslsmith_index_u32(~3914u, 30u)], func_2(reverseBits(min(u_input.b, u_input.b)), Struct_1(vec2<f32>(-331f, arg_0.x)), Struct_1(vec2<f32>(global3.a.x, 1000f)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_add_vec2_i32(vec2<i32>(5600i, 0i), vec2<i32>(global0[_wgslsmith_index_u32(0u, 30u)], 16904i))))), ~vec2<i32>(_wgslsmith_sub_i32(u_input.d << (4294967295u % 32u), u_input.d & -2147483647i), global0[_wgslsmith_index_u32(~u_input.c.x | min(20936u, u_input.a.x), 30u)]), false);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1026f, var_0.x, _wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(-var_0.x))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, 270f) * var_3.xz))) * vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_0)))) + vec2<f32>(arg_0.x, -889f));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<f32>) -> u32 {
    global3 = Struct_1(global2.a);
    var var_0 = _wgslsmith_add_i32(abs(func_2(8830u, Struct_1(vec2<f32>(-2507f, global3.a.x)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(148f, arg_1.x) * vec2<f32>(1916f, -323f))), _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(131157u, 30u)], global0[_wgslsmith_index_u32(u_input.c.x, 30u)]), reverseBits(vec2<i32>(global0[_wgslsmith_index_u32(u_input.b, 30u)], 33254i))))), ~1i);
    var var_1 = Struct_1(global2.a);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(global2.a))));
    global3 = var_2;
    return ~_wgslsmith_clamp_u32(_wgslsmith_div_u32(~1u, abs(u_input.a.x)), 0u, firstTrailingBit(~1u));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(vec2<f32>(arg_1, global2.a.x));
    global4 = array<vec2<u32>, 19>();
    global3 = arg_2;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global2.a))) + _wgslsmith_div_vec2_f32(global3.a, _wgslsmith_f_op_vec2_f32(exp2(global2.a)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 907f)) + _wgslsmith_f_op_vec2_f32(-arg_2.a)))), !(any(global1.xzw) & true))));
    let var_2 = ~vec3<u32>(min(13097u, 47111u), ~arg_0, ~(~_wgslsmith_clamp_u32(6511u, u_input.b, u_input.a.x)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.x, arg_2.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.a)), false)), var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(~u_input.b, min(30503u, u_input.c.x), 4294967295u, u_input.b), vec4<u32>(firstLeadingBit(u_input.c.x), func_1(vec2<f32>(737f, 398f), vec3<f32>(global2.a.x, -896f, global2.a.x)), countOneBits(u_input.a.x), u_input.c.x)), select(~select(u_input.c, vec4<u32>(u_input.b, u_input.a.x, 45101u, 4294967295u), global1.x), vec4<u32>(u_input.c.x, firstLeadingBit(u_input.a.x), _wgslsmith_div_u32(0u, u_input.c.x), ~70236u), true)), 286f, Struct_1(global2.a));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.x, var_0.a.x)), vec2<f32>(1f, 1f)))));
    var var_2 = any(!(!select(vec4<bool>(global1.x, global1.x, true, true), vec4<bool>(false, global1.x, false, false), global1.x))) || (select(global1.x, global1.x, global1.x == (global2.a.x != 1313f)) && true);
    var var_3 = func_4(~0u, global2.a.x, Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(func_4(u_input.c.x, 1000f, var_1).a.x, _wgslsmith_f_op_f32(ceil(var_1.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a - vec2<f32>(global3.a.x, global2.a.x)))))));
    var var_4 = select(!vec4<bool>(select(any(vec4<bool>(true, false, false, global1.x)), any(vec4<bool>(false, true, global1.x, false)), global1.x), true, false || !global1.x, true), select(vec4<bool>(abs(global0[_wgslsmith_index_u32(64881u, 30u)]) <= -53200i, true, true, (u_input.d <= -14541i) | true), !select(!vec4<bool>(global1.x, global1.x, global1.x, global1.x), !vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(false, global1.x, global1.x, true)), global1.x), any(!(!(!vec4<bool>(global1.x, true, global1.x, true)))));
    var_0 = var_1;
    global0 = array<i32, 30>();
    let var_5 = var_1;
    var var_6 = vec4<bool>(var_4.x, false, any(select(select(select(vec4<bool>(var_4.x, true, global1.x, global1.x), vec4<bool>(false, true, var_4.x, var_4.x), vec4<bool>(global1.x, global1.x, true, false)), vec4<bool>(global1.x, var_4.x, global1.x, global1.x), vec4<bool>(global1.x, var_4.x, global1.x, false)), vec4<bool>(false, true, var_4.x, global1.x), true)), any(vec2<bool>(true, global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.x)), _wgslsmith_f_op_f32(-var_5.a.x)), func_1(global3.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(554f, 669f, var_5.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1163f, 486f, var_0.a.x)), true)))), vec3<u32>(~u_input.a.x, u_input.a.x << (u_input.a.x % 32u), u_input.b), vec3<i32>(~0i, _wgslsmith_mult_i32(~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 30u)], ~u_input.d << (1u % 32u)), -u_input.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.a.x, var_0.a.x, var_5.a.x, -253f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, global2.a.x, -506f, 146f))) + vec4<f32>(_wgslsmith_div_f32(var_1.a.x, var_3.a.x), -140f, -1373f, global2.a.x))));
}

