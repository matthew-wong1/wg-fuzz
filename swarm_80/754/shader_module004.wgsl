struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

var<private> global1: u32;

var<private> global2: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = 4294967295u;
    let var_1 = 4294967295u;
    global1 = _wgslsmith_mod_u32(0u, ~var_0);
    let var_2 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(reverseBits(-u_input.c), 0i), min(u_input.c, _wgslsmith_div_i32(-1i, -1i)));
    let var_3 = select(!select(select(!vec4<bool>(global2.a, false, false, false), !vec4<bool>(arg_2.a, false, global2.a, arg_2.a), all(vec4<bool>(global2.a, global2.a, false, global2.a))), select(vec4<bool>(arg_2.a, true, global2.a, false), !vec4<bool>(true, arg_2.a, arg_1.a, true), true), false), !vec4<bool>(any(vec2<bool>(true, arg_2.a)), arg_1.a, arg_2.a, arg_0 < _wgslsmith_f_op_f32(arg_0 * 2682f)), vec4<bool>(global2.a, all(vec3<bool>(all(vec3<bool>(arg_2.a, arg_1.a, arg_2.a)), false, true)), arg_2.a, true));
    return vec4<bool>(u_input.a < 16493u, false, global2.a, any(select(var_3.yw, !select(vec2<bool>(false, var_3.x), var_3.yy, arg_1.a), select(select(var_3.yz, vec2<bool>(false, var_3.x), arg_2.a), vec2<bool>(arg_1.a, false), var_3.zx))));
}

fn func_2(arg_0: vec3<u32>) -> vec3<f32> {
    global2 = Struct_1(true);
    var var_0 = select(!select(vec4<bool>(global2.a, true, global2.a, true), !select(vec4<bool>(global2.a, global2.a, true, global2.a), vec4<bool>(global2.a, global2.a, global2.a, global2.a), global2.a), select(vec4<bool>(global2.a, global2.a, global2.a, true), vec4<bool>(global2.a, false, global2.a, global2.a), !vec4<bool>(global2.a, global2.a, false, true))), !select(select(vec4<bool>(true, false, global2.a, global2.a), vec4<bool>(false, global2.a, false, true), all(vec4<bool>(global2.a, global2.a, true, true))), !vec4<bool>(global2.a, global2.a, global2.a, true), select(func_3(1091f, Struct_1(global2.a), Struct_1(true)), select(vec4<bool>(true, global2.a, global2.a, true), vec4<bool>(global2.a, false, global2.a, global2.a), global2.a), global2.a)), vec4<bool>(false, any(!vec3<bool>(global2.a, true, false)), global2.a, firstTrailingBit(u_input.c) >= u_input.c));
    var_0 = vec4<bool>(all(!select(!vec3<bool>(global2.a, true, false), vec3<bool>(global2.a, true, var_0.x), true)), !global2.a, !var_0.x, any(select(vec4<bool>(global2.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(62666u, 24u)], 24u)] < u_input.a, true, var_0.x | true), vec4<bool>(false, false, true, true), vec4<bool>(true, var_0.x, any(vec4<bool>(false, var_0.x, var_0.x, true)), var_0.x))));
    let var_1 = false;
    let var_2 = vec2<bool>(!all(func_3(-1000f, Struct_1(false), Struct_1(false))), any(var_0.ww));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1407f, -1000f, -1000f)) - vec3<f32>(-360f, -686f, -303f))))));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> u32 {
    let var_0 = Struct_1(all(!(!select(vec4<bool>(global2.a, false, global2.a, global2.a), vec4<bool>(false, global2.a, false, arg_1.a), arg_1.a))));
    let var_1 = Struct_1((arg_2 << (max(_wgslsmith_mod_u32(arg_0, 0u), ~4294967295u) % 32u)) >= arg_3);
    let var_2 = 1611f;
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2), -646f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2, 245f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(u_input.b.zzw ^ ~u_input.b.wxz)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-283f, 521f, var_2))) - vec3<f32>(var_2, var_2, var_2)))));
    global1 = _wgslsmith_mod_u32(select(abs(20490u), u_input.b.x, !global2.a), _wgslsmith_div_u32(~reverseBits(3228u), 13692u)) >> (u_input.b.x % 32u);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 571f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-879f, -563f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-376f, -2098f)))))));
    let var_1 = max(vec3<u32>(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(u_input.b.x, 24u)] >> (u_input.a % 32u), 1u), global0[_wgslsmith_index_u32(~74024u, 24u)], 9225u), vec3<u32>(u_input.b.x, max(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 69150u, 4294967295u), vec3<u32>(93238u, 0u, global0[_wgslsmith_index_u32(u_input.b.x, 24u)])), func_1(404u, Struct_1(false), u_input.c, u_input.c)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)])) | reverseBits(abs(~_wgslsmith_sub_vec3_u32(u_input.b.wyy, vec3<u32>(u_input.a, 20331u, global0[_wgslsmith_index_u32(u_input.a, 24u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(max(u_input.b.zw, reverseBits(var_1.yy))), u_input.c, ~vec4<i32>(-2147483647i, -1154i, _wgslsmith_mult_i32(max(-63182i, u_input.c), _wgslsmith_div_i32(u_input.c, 0i)), 1i), ~(var_1.zy | ~(~vec2<u32>(4294967295u, 39200u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -698f, var_0.x)))))));
}

