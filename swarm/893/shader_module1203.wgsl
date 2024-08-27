struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 22>;

var<private> global2: Struct_2 = Struct_2(i32(-2147483648), -30430i, vec4<u32>(32812u, 27356u, 2904u, 66186u), true, 1i);

var<private> global3: array<bool, 30> = array<bool, 30>(false, false, false, false, true, true, false, true, true, false, true, true, false, false, false, true, false, false, true, false, false, true, false, true, false, true, true, true, false, false);

var<private> global4: u32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = Struct_2(~(-2303i), (-(~u_input.d) | (i32(-1i) * -1i)) | -42704i, u_input.a, any(select(vec2<bool>(global2.d, true), vec2<bool>(!global2.d, global3[_wgslsmith_index_u32(max(1u, u_input.a.x), 30u)]), arg_0)), ~_wgslsmith_sub_i32(37699i, i32(-1i) * -2147483647i) >> (reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, 1u), ~vec4<u32>(61026u, 0u, global2.c.x, 0u))) % 32u));
    let var_1 = select(vec3<bool>(true, var_0.d, false), vec3<bool>(any(select(vec3<bool>(false, global2.d, true), vec3<bool>(global3[_wgslsmith_index_u32(52066u, 30u)], false, true), true)), !(any(vec3<bool>(global3[_wgslsmith_index_u32(global2.c.x, 30u)], false, global2.d)) & var_0.d), all(select(vec3<bool>(arg_0, var_0.d, false), vec3<bool>(false, arg_0, var_0.d), vec3<bool>(false, var_0.d, false)))), true);
    global2 = var_0;
    var var_2 = var_0;
    global3 = array<bool, 30>();
    return var_2.c.x | (abs(~(~4294967295u)) >> ((u_input.a.x >> ((u_input.b & 58443u) % 32u)) % 32u));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: vec2<u32>) -> f32 {
    var var_0 = _wgslsmith_sub_u32(~(~_wgslsmith_sub_u32(arg_1.x & arg_1.x, ~u_input.c)), min(~min(func_3(global2.d), select(arg_2.x, 1u, global3[_wgslsmith_index_u32(arg_1.x, 30u)])), func_3(global3[_wgslsmith_index_u32(1u, 30u)])));
    global3 = array<bool, 30>();
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), arg_0.x))))));
    let var_2 = Struct_2(select(global2.b, 1i, all(!(!vec3<bool>(global3[_wgslsmith_index_u32(1u, 30u)], global2.d, global2.d)))), -7723i, vec4<u32>(102237u, select(~arg_1.x, func_3(global3[_wgslsmith_index_u32(~0u, 30u)]), global3[_wgslsmith_index_u32(firstTrailingBit(global2.c.x), 30u)] || (25092u != arg_1.x)), 0u, u_input.a.x & ~u_input.b), -6974i > _wgslsmith_add_i32(global2.b, -22809i), -1i & (_wgslsmith_div_i32(_wgslsmith_div_i32(0i, global2.a), global2.a & 448i) << (global2.c.x % 32u)));
    var var_3 = vec4<bool>(all(!vec4<bool>(var_2.d & false, true, u_input.d < u_input.d, all(vec3<bool>(var_2.d, true, global2.d)))), true, all(vec3<bool>(select(true, true, !global2.d), -1490f > _wgslsmith_f_op_f32(exp2(arg_0.x)), true)), any(!(!(!vec2<bool>(global2.d, var_2.d)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))))));
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.x, arg_0.x, -179f))), vec3<f32>(1000f, 837f, -868f), vec3<bool>(global3[_wgslsmith_index_u32(global2.c.x, 30u)], global3[_wgslsmith_index_u32(global2.c.x, 30u)], false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 633f, arg_0.x) + vec3<f32>(1480f, 1313f, -374f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), -1000f, -164f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(281f * 1000f))), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(func_2(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), ~u_input.a, u_input.a.zx))) - vec3<f32>(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * 630f)))));
    return 1u;
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_2 {
    global2 = Struct_2(3553i, -(~(i32(-1i) * -41344i)), global2.c, !arg_1.d, (reverseBits(_wgslsmith_add_i32(0i, arg_1.a)) | _wgslsmith_add_i32(10735i, -28420i)) ^ u_input.d);
    var var_0 = _wgslsmith_mult_i32(~select(~select(u_input.d, 2147483647i, global2.d), arg_1.e, countOneBits(arg_1.b) != -global2.b), abs(arg_1.e));
    var var_1 = 1u;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -974f), -230f)))));
    let var_3 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.b, global2.a, _wgslsmith_sub_i32(1i, 1i) & (arg_1.a & 0i), -41362i), vec4<i32>(-1i) * -vec4<i32>(u_input.d, arg_1.a, u_input.d, arg_1.b)), -(~(i32(-1i) * -1i)), -2147483647i, 41210i);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(~1u, 22u)];
    global0 = 1u >= (u_input.c >> (reverseBits(var_0.c) % 32u));
    global3 = array<bool, 30>();
    var var_1 = !(!(!(!(!vec3<bool>(false, false, global3[_wgslsmith_index_u32(52795u, 30u)])))));
    global2 = func_4(min(~func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, 213f, var_0.a, var_0.a) + vec4<f32>(var_0.a, var_0.b, var_0.a, 785f))), var_0.c), Struct_2(~u_input.d, global2.e, global2.c, global3[_wgslsmith_index_u32(36958u, 30u)], _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -31946i, 12560i, global2.b) | vec4<i32>(global2.b, global2.a, global2.b, -2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(-31834i, u_input.d, -9442i, -2147483647i), vec4<i32>(u_input.d, global2.a, -1i, global2.b))), -_wgslsmith_sub_vec4_i32(vec4<i32>(39766i, -1i, -1i, -30064i), vec4<i32>(5851i, global2.e, 11339i, -10033i)))));
    global1 = array<Struct_1, 22>();
    var_1 = select(vec3<bool>((~global2.b >> (11723u % 32u)) < global2.a, all(!(!vec3<bool>(var_1.x, global2.d, true))), u_input.d <= min(u_input.d, ~u_input.d)), vec3<bool>(false, true, true), any(vec4<bool>(true, global3[_wgslsmith_index_u32(~(~4294967295u), 30u)], select(u_input.d < 45832i, true, false), false)));
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, var_0.b, -2140f), vec3<f32>(200f, 532f, var_0.a)) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1187f, -645f, -1979f) * vec3<f32>(var_0.a, var_0.b, var_0.a))))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(max(var_0.b, var_0.b)), var_0.b, _wgslsmith_f_op_f32(var_0.a + var_0.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_0.a, var_0.b) + vec3<f32>(111f, var_0.b, var_0.a)) + vec3<f32>(var_0.a, var_0.a, 1229f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec2<u32>(select(max(37180u, u_input.e), 69808u | global2.c.x, true), 1u), u_input.a.yz), global2.c.zy);
}

