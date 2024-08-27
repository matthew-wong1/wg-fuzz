struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: f32,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5> = array<i32, 5>(-34905i, 6399i, i32(-2147483648), 0i, i32(-2147483648));

var<private> global1: Struct_2 = Struct_2(Struct_1(0i), Struct_1(-5824i));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec2<bool> {
    return !(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), all(vec3<bool>(false, false, false))), all(vec2<bool>(true, true))));
}

fn func_2(arg_0: Struct_4) -> Struct_5 {
    var var_0 = all(func_3(Struct_1(firstTrailingBit(-2147483647i)), -1044f));
    global1 = Struct_2(global1.a, global1.a);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1f, 1f, 1f)))));
    global1 = Struct_2(Struct_1(-(i32(-1i) * -global1.b.a)), Struct_1(abs(~_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(3922u, 5u)], arg_0.a.x, arg_0.a.x))));
    global1 = Struct_2(Struct_1(20253i), Struct_1(arg_0.a.x));
    return Struct_5(Struct_3(!select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), false)), global1.b, vec2<i32>(_wgslsmith_add_i32(-1i, ~(-5091i)), global1.a.a), _wgslsmith_div_vec4_u32(vec4<u32>(min(0u, 963u), 104460u, ~39137u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 1u, arg_0.b, u_input.a) ^ vec4<u32>(arg_0.b, 0u, 1u, 92759u), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, arg_0.b, u_input.c, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, arg_0.b, arg_0.b)))), vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), -259f, var_1.x)), ~_wgslsmith_dot_vec4_i32(select(vec4<i32>(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], -2147483647i, global0[_wgslsmith_index_u32(u_input.a, 5u)]), vec4<i32>(global1.b.a, global1.b.a, 1i, 11050i), vec4<bool>(false, false, true, false)), -vec4<i32>(u_input.d, 29880i, global0[_wgslsmith_index_u32(1u, 5u)], 35166i)) & _wgslsmith_mod_i32(u_input.d, -(~u_input.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_1.x)))), var_1.x)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(1489f + 1021f), true))))), var_1.wzx, Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.a, -1i, u_input.d) ^ arg_0.a, arg_0.a) & global1.b.a));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: f32) -> bool {
    let var_0 = func_2(arg_1);
    global1 = Struct_2(func_2(Struct_4(_wgslsmith_div_vec3_i32(firstLeadingBit(arg_1.a), arg_1.a), _wgslsmith_dot_vec3_u32(vec3<u32>(16203u, 1u, arg_1.b) ^ vec3<u32>(0u, var_0.a.d.x, var_0.a.d.x), var_0.a.d.zzw))).a.b, Struct_1(firstLeadingBit(-49043i)));
    var var_1 = var_0;
    var_1 = func_2(arg_1);
    global1 = Struct_2(Struct_1(2147483647i ^ arg_1.a.x), global1.a);
    return true;
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: vec2<f32>, arg_3: vec3<bool>) -> Struct_3 {
    return Struct_3(!select(!func_2(Struct_4(vec3<i32>(-3164i, u_input.d, global0[_wgslsmith_index_u32(u_input.b.x, 5u)]), u_input.a)).a.a, vec4<bool>(arg_0, arg_3.x, true, arg_3.x), true), Struct_1(21598i), vec2<i32>(~1i, -(~(~(-174i)))), _wgslsmith_div_vec4_u32(reverseBits(_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(u_input.a, 4294967295u, 46913u, 18049u)), vec4<u32>(u_input.c, u_input.b.x, u_input.b.x, 26693u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, func_2(Struct_4(vec3<i32>(18831i, -35621i, global0[_wgslsmith_index_u32(u_input.a, 5u)]), 0u)).a.d.x, min(15006u, 91689u)), vec4<u32>(1u, ~u_input.b.x, _wgslsmith_clamp_u32(1u, u_input.c, u_input.b.x), u_input.a), vec4<u32>(~u_input.b.x, 1u, 46086u, 92503u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.x))), arg_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 5>();
    global1 = Struct_2(global1.b, global1.a);
    global1 = Struct_2(global1.b, global1.a);
    let var_0 = Struct_5(func_4(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1514f, 1000f, 499f)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, -1468f, 348f)))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1511f), -1894f, -2029f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-131f, -960f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-422f, 1000f) - vec2<f32>(-280f, 841f))), vec3<bool>(true & func_1(vec2<f32>(-1111f, -1000f), Struct_4(vec3<i32>(global1.b.a, -7105i, u_input.d), 0u), 1312f), func_1(vec2<f32>(1171f, 503f), Struct_4(vec3<i32>(u_input.d, -1i, global1.a.a), u_input.c), _wgslsmith_f_op_f32(f32(-1f) * -1090f)), !any(vec2<bool>(true, false)))), 1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1250f, -1145f, true)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))))), vec3<f32>(-1088f, 592f, 1f), global1.a);
    global1 = Struct_2(Struct_1(_wgslsmith_mult_i32(55118i, ~_wgslsmith_mult_i32(var_0.a.c.x, 23057i))), global1.b);
    global1 = Struct_2(func_4(_wgslsmith_div_u32(~var_0.a.d.x, 12333u) <= max(u_input.c, 1u), var_0.d, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, var_0.c) + _wgslsmith_f_op_vec2_f32(var_0.d.zy * var_0.d.xx)))), vec3<bool>(false, true, true)).b, Struct_1(var_0.e.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.xx, u_input.b.x, var_0.a.d.x, -29090i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d.x), var_0.c));
}

