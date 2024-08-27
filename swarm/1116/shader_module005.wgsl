struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17>;

var<private> global1: f32 = 936f;

var<private> global2: f32;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> u32 {
    global1 = arg_1.b.x;
    var var_0 = !(!select(select(arg_1.d.yy, arg_1.d.yy, !vec2<bool>(true, arg_1.d.x)), select(vec2<bool>(arg_1.d.x, arg_1.d.x), vec2<bool>(true, arg_1.d.x), true), !select(vec2<bool>(arg_1.d.x, arg_1.d.x), arg_1.d.zz, arg_1.d.zw)));
    var var_1 = select(arg_1.d, vec4<bool>(true, all(!arg_1.d.zz), var_0.x, all(vec3<bool>(!arg_1.d.x, true, var_0.x))), var_0.x);
    let var_2 = Struct_1(all(arg_1.d), global0[_wgslsmith_index_u32(select(12099u, u_input.c, var_0.x) ^ u_input.c, 17u)], vec4<f32>(arg_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x + _wgslsmith_f_op_f32(-823f * arg_1.b.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x + arg_1.b.x))), arg_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(771f, 619f))))), u_input.b.yy);
    global2 = arg_1.b.x;
    return 1u;
}

fn func_2(arg_0: bool, arg_1: vec4<u32>) -> vec4<bool> {
    global0 = array<i32, 17>();
    var var_0 = vec4<bool>(false, true, true, all(vec4<bool>(arg_0, !(!arg_0), countOneBits(1i) >= (u_input.b.x | -55191i), !(1i <= u_input.a))));
    var var_1 = Struct_2(_wgslsmith_dot_vec3_u32(max(min(vec3<u32>(u_input.c, 4294967295u, arg_1.x) << (vec3<u32>(u_input.c, arg_1.x, u_input.c) % vec3<u32>(32u)), ~vec3<u32>(arg_1.x, arg_1.x, 1u)), vec3<u32>(_wgslsmith_add_u32(44166u, 1u), u_input.c, 1u)), _wgslsmith_sub_vec3_u32(vec3<u32>(func_3(global0[_wgslsmith_index_u32(arg_1.x, 17u)], Struct_2(7222u, vec2<f32>(-684f, -674f), 19973i, vec4<bool>(true, true, false, arg_0))), arg_1.x, abs(4294967295u)), ~(~vec3<u32>(arg_1.x, u_input.c, 7562u)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-866f, _wgslsmith_f_op_f32(max(-1165f, -810f))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1135f, 1f), vec2<f32>(_wgslsmith_f_op_f32(242f + -203f), _wgslsmith_f_op_f32(min(-843f, -186f)))))), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(29987i, i32(-1i) * -global0[_wgslsmith_index_u32(u_input.c, 17u)]), global0[_wgslsmith_index_u32(~1u, 17u)], -1i), vec4<bool>(false, all(select(vec4<bool>(var_0.x, arg_0, true, true), vec4<bool>(false, true, arg_0, var_0.x), vec4<bool>(false, true, true, var_0.x))) || true, arg_0, all(var_0.xw)));
    var var_2 = select(vec4<i32>(-var_1.c, ~(-1i) & abs(_wgslsmith_clamp_i32(-46911i, 1i, -1i)), _wgslsmith_dot_vec4_i32(min(vec4<i32>(var_1.c, global0[_wgslsmith_index_u32(1u, 17u)], 43861i, 0i) >> (arg_1 % vec4<u32>(32u)), vec4<i32>(-57026i, 89990i, var_1.c, -15106i)), -select(vec4<i32>(-1336i, -1332i, u_input.a, var_1.c), vec4<i32>(var_1.c, var_1.c, u_input.a, var_1.c), var_1.d.x)), -1i), firstLeadingBit((vec4<i32>(-1i) * -vec4<i32>(global0[_wgslsmith_index_u32(arg_1.x, 17u)], u_input.a, u_input.a, global0[_wgslsmith_index_u32(u_input.c, 17u)])) & _wgslsmith_sub_vec4_i32(~vec4<i32>(0i, 0i, 2147483647i, 12322i), -vec4<i32>(-32289i, 0i, var_1.c, global0[_wgslsmith_index_u32(4294967295u, 17u)]))), (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, arg_1.x, u_input.c, 4294967295u), ~vec4<u32>(50977u, arg_1.x, var_1.a, 63219u)) ^ _wgslsmith_sub_u32(1u, _wgslsmith_sub_u32(arg_1.x, 0u))) != ~21235u);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(sign(var_1.b.x)), -109f))));
    return vec4<bool>(any(!(!(!vec2<bool>(arg_0, var_1.d.x)))), -34237i > _wgslsmith_dot_vec2_i32(~(-var_2.xw), firstLeadingBit(vec2<i32>(-2147483647i, u_input.b.x))), !all(var_0.yzx), all(!var_0.xxw));
}

fn func_1(arg_0: bool, arg_1: vec4<u32>) -> Struct_2 {
    return Struct_2(21026u, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1016f, -1000f) + _wgslsmith_div_vec2_f32(vec2<f32>(-788f, -1000f), vec2<f32>(-407f, -947f))))))), global0[_wgslsmith_index_u32(1u, 17u)], !(!func_2(false, arg_1)));
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> f32 {
    var var_0 = -42758i;
    return _wgslsmith_f_op_f32(floor(arg_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1459f - _wgslsmith_f_op_f32(-622f + _wgslsmith_f_op_f32(abs(-1218f)))))));
    let var_0 = vec4<f32>(1108f, -1388f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-412f))) + _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_div_f32(-299f, 1679f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(any(vec2<bool>(true, true)), ~vec4<u32>(0u, 4459u, 7355u, u_input.c)), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, u_input.c, u_input.c)), vec3<u32>(u_input.c, u_input.c, 14036u))))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(Struct_2(u_input.c, vec2<f32>(233f, var_0.x), global0[_wgslsmith_index_u32(0u, 17u)], vec4<bool>(false, true, true, false)), abs(4294967295u))), var_0.x)) + var_0.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(var_0.yy)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))), _wgslsmith_f_op_vec2_f32(var_0.yz * var_0.zz), vec2<bool>(true, true)));
    global0 = array<i32, 17>();
    global0 = array<i32, 17>();
    global2 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-374f, -1248f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(603f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), vec4<f32>(-389f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x * 520f))), _wgslsmith_f_op_f32(-var_0.x), -1805f), vec2<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.b.x, -19265i, -20112i, global0[_wgslsmith_index_u32(u_input.c, 17u)])), _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(61560u, 17u)], 2147483647i)), abs(vec4<i32>(global0[_wgslsmith_index_u32(1u, 17u)], -9067i, u_input.b.x, 0i)))), -global0[_wgslsmith_index_u32(max(~u_input.c, 7708u), 17u)]));
}

