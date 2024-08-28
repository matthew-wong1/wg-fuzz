struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 5>;

var<private> global1: vec4<bool>;

var<private> global2: u32;

var<private> global3: array<f32, 11> = array<f32, 11>(-1025f, -1395f, -979f, 152f, -2026f, 537f, -207f, 314f, -391f, 885f, -855f);

var<private> global4: Struct_2;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: i32, arg_3: vec2<bool>) -> bool {
    var var_0 = firstTrailingBit(vec4<u32>(firstTrailingBit(u_input.d), reverseBits(53212u), ~(u_input.a.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(36289u, 38721u), vec2<u32>(u_input.d, 41676u)) % 32u)), 45984u));
    var var_1 = u_input.a;
    var_1 = vec4<u32>(u_input.a.x, _wgslsmith_sub_u32(max(u_input.d | 45049u, ~4294967295u), ~(~1u)) | ~63728u, reverseBits(~((u_input.d ^ u_input.a.x) ^ 60339u)), _wgslsmith_mult_u32(firstLeadingBit(max(var_1.x | u_input.d, abs(4294967295u))), ~abs(1u)));
    var var_2 = global3[_wgslsmith_index_u32(~var_0.x, 11u)];
    var var_3 = arg_1;
    return all(vec3<bool>(!all(vec4<bool>(arg_0.x, arg_1.a.x, false, arg_1.a.x)), all(vec4<bool>(false, global1.x, arg_0.x | false, any(vec4<bool>(global1.x, arg_0.x, true, false)))), _wgslsmith_clamp_i32(-1i, -45074i, -12948i) == -1i));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_2) -> bool {
    let var_0 = global4.a;
    global4 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_1)))), _wgslsmith_add_i32(select(select(global4.b, 0i, true), u_input.b << (34427u % 32u), true), 6041i) >> (u_input.a.x % 32u));
    global1 = !vec4<bool>(any(vec2<bool>(func_2(vec2<bool>(true, false), global0[_wgslsmith_index_u32(7404u, 5u)], 2147483647i, vec2<bool>(global1.x, true)), 1i <= u_input.c.x)), global1.x, func_2(!(!vec2<bool>(true, global1.x)), Struct_3(!global1.yz, Struct_2(global3[_wgslsmith_index_u32(36259u, 11u)], 2147483647i), arg_2), 1i, select(!global1.xx, global1.zx, true)), func_2(global1.yy, Struct_3(select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, true), global1.x), arg_2, arg_2), -u_input.e, !select(vec2<bool>(false, global1.x), global1.wz, global1.x)));
    let var_1 = global3[_wgslsmith_index_u32(u_input.d, 11u)];
    return false;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = !select(!vec4<bool>(global1.x, u_input.b <= u_input.c.x, func_2(vec2<bool>(false, false), global0[_wgslsmith_index_u32(u_input.d, 5u)], -1i, global1.wz), global1.x), !vec4<bool>(global1.x, func_3(vec3<f32>(-1305f, 1000f, arg_1.x), 445f, Struct_2(arg_0.x, u_input.c.x)), all(global1.wxy), true), select(vec4<bool>(all(vec4<bool>(global1.x, global1.x, global1.x, global1.x)), 196f >= arg_1.x, global1.x, true), !(!vec4<bool>(true, global1.x, true, global1.x)), select(!vec4<bool>(global1.x, true, global1.x, true), !vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(false, true, global1.x, global1.x))));
    var var_1 = firstLeadingBit(~select(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.e, 1i, u_input.b, u_input.c.x), vec4<i32>(u_input.b, u_input.c.x, 0i, -1i), vec4<i32>(global4.b, global4.b, global4.b, global4.b)), ~vec4<i32>(global4.b, -5649i, 41791i, u_input.e), select(var_0, var_0, var_0)) ^ vec4<i32>(min(_wgslsmith_clamp_i32(1i, 1i, u_input.c.x), _wgslsmith_mult_i32(global4.b, 27264i)), 2147483647i, 12904i, _wgslsmith_add_i32(~u_input.c.x, u_input.e)));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 11u)] * global4.a), _wgslsmith_f_op_f32(sign(-927f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global4.a, 264f, var_0.x)) + -209f))), arg_0.x);
    let var_3 = vec4<u32>(select(36598u, ~(~_wgslsmith_dot_vec3_u32(u_input.a.xzz, vec3<u32>(61421u, u_input.a.x, u_input.d))), any(vec3<bool>(true || global1.x, true, true))), countOneBits(abs(u_input.d | reverseBits(u_input.d))), u_input.a.x, min(~select(4294967295u, ~62390u, any(global1.xyx)), 41986u));
    return Struct_2(var_2, global4.b);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_1(vec3<f32>(global4.a, global3[_wgslsmith_index_u32(~u_input.d, 11u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(65847u, 11u)]))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a, global3[_wgslsmith_index_u32(u_input.a.x, 11u)], -337f, 465f) + vec4<f32>(-329f, -104f, global4.a, 315f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(290f, -1206f, 1813f, -1295f)))) + vec4<f32>(global3[_wgslsmith_index_u32(countOneBits(~u_input.d), 11u)], global4.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-767f - global3[_wgslsmith_index_u32(u_input.a.x, 11u)])), -1192f)));
    let var_0 = Struct_1(402f);
    global3 = array<f32, 11>();
    global3 = array<f32, 11>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(sign(global4.a)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(103f * var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.a)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -551f)));
    global4 = Struct_2(global3[_wgslsmith_index_u32(4294967295u | ~(~(~u_input.a.x)), 11u)], 31753i);
    global0 = array<Struct_3, 5>();
    var var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_i32(1i, 1i), ~global4.b);
}

