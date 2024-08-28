struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1i, -8911i);

var<private> global1: f32 = -525f;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(1598f + -396f), arg_2.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))))));
    var var_1 = Struct_1(var_0.a, true | !var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -302f), -669f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(786f)))));
    let var_2 = var_1.b;
    var_1 = arg_2;
    var var_3 = !vec3<bool>(all(!(!vec4<bool>(false, false, var_1.b, false))), true, !(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 93341u, u_input.a.x, 12063u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u)) > _wgslsmith_mod_u32(u_input.a.x, 70189u)));
    return firstTrailingBit(select(vec4<i32>(_wgslsmith_mult_i32(3759i, 0i), ~global0.x >> (abs(u_input.a.x) % 32u), u_input.b.x, 0i), vec4<i32>(-3348i, 2147483647i, -u_input.b.x, global0.x), all(var_3.xx) == !var_1.b));
}

fn func_2(arg_0: Struct_1) -> f32 {
    global1 = arg_0.c;
    global0 = u_input.b.zy;
    var var_0 = i32(-1i) * -3672i;
    var_0 = -_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32((vec4<i32>(global0.x, global0.x, 2147483647i, 2601i) >> (vec4<u32>(36140u, 101405u, 5490u, 1u) % vec4<u32>(32u))) ^ ~vec4<i32>(u_input.b.x, 2147483647i, global0.x, -8796i), _wgslsmith_mult_vec4_i32(func_3(arg_0.c, -580f, arg_0), vec4<i32>(global0.x, -15105i, -1i, -507i))), reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(-13086i, 1i, u_input.b.x, 25454i) | vec4<i32>(u_input.b.x, global0.x, 4431i, -73181i), vec4<i32>(-2147483647i, -1i, 28127i, global0.x))));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1255f), 2125f));
    return _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(605f * 904f)))), arg_0.c)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> f32 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(_wgslsmith_f_op_f32(ceil(-585f)), false, 746f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1015f), _wgslsmith_f_op_f32(trunc(-799f)), arg_0.b))) - arg_0.a);
    let var_0 = 1u;
    var var_1 = _wgslsmith_f_op_f32(2166f + 199f);
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -599f);
    global1 = 1762f;
    return _wgslsmith_f_op_f32(-arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(-725f, any(vec3<bool>(false, false, true)), _wgslsmith_f_op_f32(-810f + -1302f)), vec4<u32>(_wgslsmith_sub_u32(0u, 0u), u_input.a.x, u_input.a.x, ~1u)))));
    global0 = vec2<i32>(_wgslsmith_mult_i32(global0.x, ~2147483647i), 16609i);
    var var_0 = vec4<bool>(true, !(!any(vec3<bool>(true, false, true)) != true), any(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))) | true, false);
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-671f, 226f)) - vec2<f32>(-2021f, 262f)), vec2<f32>(_wgslsmith_f_op_f32(max(269f, -1975f)), _wgslsmith_f_op_f32(-480f * 379f)), false)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-632f, 2109f))), vec2<f32>(_wgslsmith_f_op_f32(-606f - -658f), _wgslsmith_f_op_f32(f32(-1f) * -718f))))));
    let var_2 = _wgslsmith_f_op_f32(exp2(var_1.x));
    var var_3 = vec4<u32>(min(_wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(0u), 28253u, u_input.a.x >> (64677u % 32u)), ~(vec3<u32>(16732u, 0u, 1u) << (vec3<u32>(u_input.a.x, u_input.a.x, 69297u) % vec3<u32>(32u)))), u_input.a.x >> (~_wgslsmith_dot_vec2_u32(u_input.a, u_input.a) % 32u)), 15751u, 1u, ~42032u);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, -267f);
}

