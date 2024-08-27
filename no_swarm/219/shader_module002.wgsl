struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<f32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<u32>) -> vec4<i32> {
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global1.x, global1.x, -449f))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1765f) * -744f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), 967f, 871f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 288f, global1.x, global1.x)));
    var var_0 = -abs(select(1i, min(1i, 1i), false) << (~u_input.a.x % 32u));
    let var_1 = 1888u;
    var_0 = ~((_wgslsmith_mod_i32(1i, firstLeadingBit(29649i)) << (select(countOneBits(u_input.a.x), 1u, true) % 32u)) >> (1u % 32u));
    global1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, -115f) - vec4<f32>(1000f, 986f, global1.x, -196f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1190f, 1561f, global1.x, global1.x))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1414f), global1.x, -1119f, global1.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(665f, global1.x, 872f, -302f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, -397f)) * vec4<f32>(global1.x, global1.x, -512f, -455f)))), true));
    return vec4<i32>(2147483647i, 26361i, 1i, -1i);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: bool) -> i32 {
    let var_0 = Struct_2(-_wgslsmith_clamp_vec4_i32(-func_3(vec2<u32>(17872u, 1013u)), _wgslsmith_div_vec4_i32(~vec4<i32>(0i, -29144i, -26525i, 0i), vec4<i32>(1i, 1i, 1i, 1i)), ~vec4<i32>(24070i, 2147483647i, -1i, 0i)), arg_1, arg_1, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1462f)))), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1236f, -653f))))))), vec4<u32>(~(~0u), _wgslsmith_clamp_u32(~arg_1.b.x, _wgslsmith_add_u32(arg_1.b.x, arg_1.b.x), 56523u | u_input.a.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.b.x, 0u, 1u, 4294967295u), ~u_input.a), ~65943u & firstTrailingBit(4243u))));
    let var_1 = firstTrailingBit(vec4<i32>(_wgslsmith_mod_i32(countOneBits(var_0.a.x), var_0.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, 2147483647i, 33878i, 1i), ~vec4<i32>(var_0.a.x, -18170i, -1i, var_0.a.x)), var_0.a.x, 1i)) | (_wgslsmith_clamp_vec4_i32(var_0.a, -abs(var_0.a), abs(~var_0.a)) << (~max(reverseBits(var_0.e.b), _wgslsmith_div_vec4_u32(u_input.a, u_input.a)) % vec4<u32>(32u)));
    global1 = _wgslsmith_f_op_vec4_f32(abs(arg_0));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(252f)) + _wgslsmith_f_op_f32(-291f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a.x)))), 1648f, var_0.c.a.x, -2104f);
    var var_2 = Struct_2(var_1, var_0.b, var_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(186f * 841f), 1374f), Struct_1(_wgslsmith_div_vec2_f32(arg_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1051f, global1.x) * arg_0.xy) + global1.xx)), firstLeadingBit(~vec4<u32>(u_input.a.x, 28580u, 0u, arg_1.b.x))));
    return ~var_0.a.x;
}

fn func_1(arg_0: bool) -> Struct_2 {
    global1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), global1.x, 573f, global1.x) * vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-767f, global1.x))), global1.x, 423f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(-global1.x), false))))));
    let var_0 = -_wgslsmith_dot_vec4_i32(vec4<i32>(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-454f, global1.x, 627f, global1.x) * vec4<f32>(1400f, global1.x, 289f, global1.x)), Struct_1(vec2<f32>(global1.x, global1.x), u_input.a), select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(true, arg_0, arg_0), arg_0), arg_0 || true), -44435i, ~(i32(-1i) * -2147483647i), ~_wgslsmith_sub_i32(0i, 47850i)), _wgslsmith_add_vec4_i32(func_3(vec2<u32>(0u, u_input.a.x)) & vec4<i32>(11284i, -1i, 0i, -47897i), ~(vec4<i32>(2147483647i, 1i, -1i, -2147483647i) << (u_input.a % vec4<u32>(32u)))));
    let var_1 = arg_0;
    return Struct_2(vec4<i32>(var_0, abs(-11860i << (firstTrailingBit(31115u) % 32u)), var_0, -3769i), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1.x * -2044f), 1000f), _wgslsmith_f_op_vec2_f32(sign(global1.zy))), u_input.a & vec4<u32>(60530u, u_input.a.x, _wgslsmith_div_u32(u_input.a.x, u_input.a.x), u_input.a.x & u_input.a.x)), Struct_1(_wgslsmith_f_op_vec2_f32(-global1.zw), u_input.a), -1000f, Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(global1.x, global1.x), _wgslsmith_div_vec2_f32(vec2<f32>(-359f, global1.x), global1.wy)), global1.yz)), _wgslsmith_add_vec4_u32(select(_wgslsmith_div_vec4_u32(u_input.a, u_input.a), u_input.a >> (vec4<u32>(u_input.a.x, 2869u, u_input.a.x, 1u) % vec4<u32>(32u)), !var_1), u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(true);
    let var_1 = -2147483647i;
    let var_2 = 40407i;
    let var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(2176f, var_0.e.a.x, var_0.e.a.x, global1.x), vec4<f32>(var_0.d, -253f, 131f, global1.x)), vec4<f32>(1000f, -352f, global1.x, 151f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x + var_0.e.a.x), 384f)), 1738f, _wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-422f * var_0.e.a.x))))));
    let var_4 = var_0.e;
    global1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-403f, _wgslsmith_f_op_f32(round(-871f)), _wgslsmith_f_op_f32(735f * _wgslsmith_f_op_f32(exp2(global1.x))), _wgslsmith_f_op_f32(sign(var_4.a.x))), vec4<f32>(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.x, 927f)) * func_1(false).b.a.x) - global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2516f) + _wgslsmith_f_op_f32(ceil(-1374f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(887f)) * _wgslsmith_f_op_f32(global1.x - var_4.a.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i << ((_wgslsmith_dot_vec2_u32(max(vec2<u32>(59240u, var_4.b.x), vec2<u32>(var_4.b.x, u_input.a.x)), ~vec2<u32>(4294967295u, 27520u)) | (~48439u >> (_wgslsmith_div_u32(u_input.a.x, 4294967295u) % 32u))) % 32u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.e.a.x, var_3.x) - _wgslsmith_f_op_f32(276f - var_4.a.x)), var_0.b.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(530f)), -824f))), vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-661f)), 350f)), var_3.x)), var_4.a.x), vec3<f32>(925f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(899f, var_3.x)), global1.x)), -663f));
}

