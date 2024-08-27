struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: u32,
    c: Struct_2,
    d: bool,
}

struct Struct_5 {
    a: bool,
    b: vec4<u32>,
    c: i32,
    d: vec4<bool>,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -14831i))), Struct_2(Struct_1(vec2<i32>(14727i, -6946i))), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 2147483647i))), Struct_2(Struct_1(vec2<i32>(-46869i, i32(-2147483648)))), Struct_2(Struct_1(vec2<i32>(-16952i, 0i))), Struct_2(Struct_1(vec2<i32>(29440i, -27367i))), Struct_2(Struct_1(vec2<i32>(-39339i, 0i))), Struct_2(Struct_1(vec2<i32>(2147483647i, 8799i))), Struct_2(Struct_1(vec2<i32>(1i, -39800i))), Struct_2(Struct_1(vec2<i32>(-1i, 25641i))), Struct_2(Struct_1(vec2<i32>(21962i, -37334i))), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -41134i))), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 2147483647i))), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -2578i))), Struct_2(Struct_1(vec2<i32>(-45740i, 54505i))), Struct_2(Struct_1(vec2<i32>(-28351i, i32(-2147483648)))), Struct_2(Struct_1(vec2<i32>(-28234i, 70097i))), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 0i))), Struct_2(Struct_1(vec2<i32>(-60629i, -994i))), Struct_2(Struct_1(vec2<i32>(-1i, -1i))), Struct_2(Struct_1(vec2<i32>(-34677i, 0i))), Struct_2(Struct_1(vec2<i32>(-18795i, -6465i))), Struct_2(Struct_1(vec2<i32>(0i, -58943i))), Struct_2(Struct_1(vec2<i32>(0i, -1i))), Struct_2(Struct_1(vec2<i32>(8936i, 0i))));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: Struct_3) -> f32 {
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>((select(16955i, -17105i, true) << (41699u % 32u)) << (u_input.b.x % 32u), _wgslsmith_clamp_i32(-abs(-1i), u_input.a, 48857i), -(i32(-1i) * -1i), u_input.a), abs(vec4<i32>(44847i, ~(u_input.a | -5648i), u_input.a, (u_input.a >> (arg_1.x % 32u)) & u_input.a)));
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    let var_1 = ~(-8824i);
    return -103f;
}

fn func_3() -> i32 {
    global0 = array<Struct_2, 25>();
    let var_0 = Struct_4(vec2<i32>(-1i << (0u % 32u), -u_input.a), u_input.b.x, global0[_wgslsmith_index_u32(~(~(~4294967295u)), 25u)], all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    return firstTrailingBit(-(i32(-1i) * -1i));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5, arg_2: Struct_4) -> vec2<bool> {
    var var_0 = Struct_3(1000f, max(u_input.b.yww, _wgslsmith_add_vec3_u32(u_input.b.wxy, arg_1.b.yzy)));
    let var_1 = select(arg_1.d.wy, arg_1.d.yz, !(!vec2<bool>(arg_1.a, true)));
    var_0 = Struct_3(_wgslsmith_f_op_f32(floor(var_0.a)), vec3<u32>(~(~arg_1.b.x), ~(~abs(arg_0.b)), 1u));
    var_0 = Struct_3(_wgslsmith_f_op_f32(-1217f - var_0.a), firstLeadingBit(var_0.b));
    global0 = array<Struct_2, 25>();
    return var_1;
}

fn func_2() -> f32 {
    var var_0 = u_input.a;
    global0 = array<Struct_2, 25>();
    var var_1 = all(func_4(Struct_4(_wgslsmith_div_vec2_i32(vec2<i32>(-19339i, u_input.a), vec2<i32>(u_input.a, -1i)) & max(vec2<i32>(0i, 92114i), vec2<i32>(u_input.a, u_input.a)), ~(~u_input.b.x), global0[_wgslsmith_index_u32(~1u, 25u)], true & (u_input.b.x < u_input.b.x)), Struct_5(true, _wgslsmith_mult_vec4_u32(~vec4<u32>(1u, u_input.b.x, 4294967295u, u_input.b.x), u_input.b), func_3(), vec4<bool>(true, true, true, true), Struct_4(-vec2<i32>(-27483i, -1i), ~u_input.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 25u)], true)), Struct_4(-_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(u_input.a, 2147483647i)), max(select(13048u, 1u, true), _wgslsmith_mod_u32(4294967295u, u_input.b.x)), global0[_wgslsmith_index_u32(select(u_input.b.x, ~0u, true), 25u)], any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)))));
    let var_2 = Struct_5(any(vec4<bool>(any(vec2<bool>(false, false)) && true, any(vec3<bool>(false, true, true)) && true, all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true))), all(vec3<bool>(true, true, true)))), vec4<u32>(min(u_input.b.x, 1u), _wgslsmith_mod_u32(23399u ^ ~u_input.b.x, ~44233u), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.b.yyz, u_input.b.zxx), ~1u), reverseBits(_wgslsmith_div_u32(1u, u_input.b.x) | u_input.b.x)), -u_input.a, select(vec4<bool>((38329u << (u_input.b.x % 32u)) != u_input.b.x, false, select(true, true, false), func_4(Struct_4(vec2<i32>(u_input.a, 41646i), 1u, Struct_2(Struct_1(vec2<i32>(u_input.a, u_input.a))), true), Struct_5(false, vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x), u_input.a, vec4<bool>(false, true, true, true), Struct_4(vec2<i32>(u_input.a, u_input.a), 4294967295u, Struct_2(Struct_1(vec2<i32>(-2147483647i, u_input.a))), false)), Struct_4(vec2<i32>(49845i, u_input.a), u_input.b.x, global0[_wgslsmith_index_u32(4294967295u, 25u)], true)).x), vec4<bool>(all(vec4<bool>(false, true, false, true)), true, any(vec4<bool>(true, false, true, false)), any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), false))), true && all(vec4<bool>(false, true, false, false))), Struct_4(vec2<i32>(select(-u_input.a, -57177i, true), u_input.a), u_input.b.x, Struct_2(Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(28199i, 20442i)))), !(_wgslsmith_dot_vec2_i32(vec2<i32>(-1561i, u_input.a), vec2<i32>(1i, u_input.a)) > u_input.a)));
    var_1 = select(~abs(var_2.e.b) == (firstLeadingBit(abs(37669u)) ^ ~(~u_input.b.x)), func_4(var_2.e, Struct_5(true, ~vec4<u32>(var_2.b.x, 93537u, 4294967295u, u_input.b.x), select(abs(u_input.a), firstLeadingBit(u_input.a), func_4(Struct_4(vec2<i32>(u_input.a, var_2.c), var_2.b.x, Struct_2(Struct_1(vec2<i32>(u_input.a, 0i))), false), Struct_5(false, vec4<u32>(u_input.b.x, 39978u, var_2.b.x, var_2.e.b), -57666i, vec4<bool>(var_2.d.x, false, true, false), var_2.e), var_2.e).x), vec4<bool>(false, true, !var_2.a, false), var_2.e), var_2.e).x, var_2.a);
    return -1392f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    global0 = array<Struct_2, 25>();
    var var_1 = vec4<u32>(~select(_wgslsmith_sub_u32(~0u, 24979u), abs(_wgslsmith_add_u32(u_input.b.x, u_input.b.x)), 0i != reverseBits(u_input.a)), u_input.b.x, ~u_input.b.x, 4294967295u);
    let var_2 = Struct_1(~max(-(vec2<i32>(-1i, var_0) << (u_input.b.xy % vec2<u32>(32u))), vec2<i32>(var_0, -1i)));
    let var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_1(vec2<bool>(true, false), u_input.b, Struct_3(1904f, u_input.b.xzx))), 1f, _wgslsmith_f_op_f32(ceil(323f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1626f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_3.x)) - _wgslsmith_f_op_f32(-381f + 793f)), -2502f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2530f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_3.x))))), _wgslsmith_div_vec4_f32(vec4<f32>(-402f, var_3.x, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1742f))), vec4<f32>(_wgslsmith_div_f32(var_3.x, _wgslsmith_div_f32(var_3.x, -1059f)), var_3.x, var_3.x, _wgslsmith_div_f32(557f, 1232f))), 4294967295u, 546f);
}

