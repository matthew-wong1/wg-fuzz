struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(264f, -134f, -2088f, -354f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec4<bool> {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-838f, -110f, -1169f, _wgslsmith_f_op_f32(f32(-1f) * -728f)), vec4<f32>(global0.x, -409f, -166f, global0.x), false)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), -1000f, _wgslsmith_f_op_f32(-1046f * -1587f), global0.x))));
    let var_0 = Struct_2(Struct_1(any(vec4<bool>(true, true, true, true)), _wgslsmith_sub_u32(22099u, u_input.a)), Struct_1(false, 704u), Struct_1(true, ~(u_input.a << (u_input.a % 32u))), ~1u, Struct_1((u_input.a & ~u_input.a) == 8636u, ~(~u_input.a >> ((4294967295u >> (1u % 32u)) % 32u))));
    var var_1 = var_0.b;
    var_1 = Struct_1(true, ~reverseBits(1u ^ var_0.b.b) ^ _wgslsmith_sub_u32(91596u, 5481u));
    let var_2 = !select(vec3<bool>(select(select(true, var_1.a, var_0.e.a), var_0.c.a, true), all(vec4<bool>(true, false, var_1.a, var_0.c.a)) || !var_0.c.a, var_1.a), select(vec3<bool>(u_input.b > 0i, !var_1.a, var_1.a || var_0.c.a), !(!vec3<bool>(true, var_1.a, true)), all(select(vec3<bool>(false, var_1.a, var_1.a), vec3<bool>(true, false, true), true))), !select(select(vec3<bool>(var_1.a, var_0.b.a, var_1.a), vec3<bool>(var_1.a, true, var_0.c.a), false), !vec3<bool>(var_1.a, true, var_1.a), false));
    return vec4<bool>(!var_0.a.a, true, var_1.a, all(vec3<bool>(any(!vec4<bool>(false, var_1.a, var_2.x, false)), !(var_0.c.a | var_2.x), var_2.x)));
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = select(select(!vec4<bool>(any(vec2<bool>(true, false)), select(false, false, arg_0.a), arg_0.a, true), func_3(), !(!(!arg_0.a))), vec4<bool>(arg_0.a, any(vec4<bool>(select(true, true, arg_0.a), !arg_0.a, true, true)), arg_0.a, any(vec3<bool>(!arg_0.a, true, func_3().x))), select(select(func_3(), func_3(), select(select(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, false), vec4<bool>(arg_0.a, arg_0.a, false, true), vec4<bool>(true, arg_0.a, true, arg_0.a)), func_3(), true)), select(!(!vec4<bool>(false, false, arg_0.a, arg_0.a)), select(select(vec4<bool>(false, arg_0.a, arg_0.a, true), vec4<bool>(true, arg_0.a, false, arg_0.a), arg_0.a), vec4<bool>(true, arg_0.a, false, arg_0.a), vec4<bool>(arg_0.a, false, arg_0.a, arg_0.a)), vec4<bool>(all(vec3<bool>(arg_0.a, arg_0.a, arg_0.a)), arg_0.a, any(vec2<bool>(true, true)), arg_0.a)), !vec4<bool>(func_3().x, true, arg_0.a, arg_0.a)));
    global0 = vec4<f32>(-2103f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-290f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.x)) + -251f)))), -326f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))));
    let var_1 = reverseBits(firstLeadingBit(~(~0u)));
    var_0 = vec4<bool>(var_0.x, false, arg_0.a, arg_0.b <= 59661u);
    let var_2 = Struct_1(any(!select(vec2<bool>(true, arg_0.a), !var_0.zx, false)), arg_0.b);
    return u_input.b;
}

fn func_1(arg_0: i32) -> vec4<i32> {
    var var_0 = _wgslsmith_add_i32(abs(abs(arg_0) >> (u_input.a % 32u)), arg_0);
    var_0 = func_2(Struct_1(all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)), u_input.a));
    var var_1 = Struct_1(global0.x != 1216f, _wgslsmith_add_u32(1u, u_input.a & 46235u));
    let var_2 = u_input.c;
    global0 = vec4<f32>(global0.x, 1127f, -472f, _wgslsmith_f_op_f32(min(-3008f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1015f * global0.x)))))));
    return vec4<i32>(min(abs(u_input.b ^ (u_input.b >> (30910u % 32u))), 35968i), _wgslsmith_dot_vec4_i32(~(-vec4<i32>(-92892i, u_input.b, u_input.c.x, -1i) ^ firstLeadingBit(vec4<i32>(-35032i, u_input.c.x, u_input.c.x, u_input.b))), _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.b, arg_0, -57768i, u_input.c.x), vec4<i32>(_wgslsmith_div_i32(u_input.c.x, 2147483647i), ~0i, abs(2147483647i), _wgslsmith_sub_i32(36536i, -37064i)))), -2147483647i, _wgslsmith_add_i32(2147483647i, u_input.c.x));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_1(arg_1.a, abs(select(_wgslsmith_clamp_u32(~u_input.a, 4294967295u, _wgslsmith_clamp_u32(0u, arg_1.b, 0u)), 0u, all(vec3<bool>(arg_1.a, arg_1.a, arg_1.a)) && all(vec4<bool>(false, arg_1.a, arg_1.a, true)))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, -1115f, _wgslsmith_f_op_f32(f32(-1f) * -1222f), _wgslsmith_f_op_f32(796f - _wgslsmith_f_op_f32(f32(-1f) * -324f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-113f, -502f, -1649f, global0.x))), vec4<f32>(-1000f, global0.x, 302f, global0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, -565f, global0.x, 1928f))) * vec4<f32>(_wgslsmith_f_op_f32(min(1000f, 1322f)), -1285f, _wgslsmith_f_op_f32(abs(global0.x)), global0.x))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(406f, global0.x, global0.x, global0.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -489f, global0.x, 178f))))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, 206f, global0.x, -1279f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(605f, global0.x, global0.x, global0.x)), true)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, 190f, 1204f, global0.x), vec4<f32>(257f, global0.x, -140f, global0.x))) + vec4<f32>(global0.x, -1393f, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-869f, -1209f, global0.x, _wgslsmith_f_op_f32(global0.x - global0.x))))));
    var var_1 = _wgslsmith_mod_i32(-2147483647i, -29682i);
    let var_2 = Struct_1(true, select(1u, var_0.b, true));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~abs(func_1(-23756i)), Struct_1(!(_wgslsmith_f_op_f32(-global0.x) >= _wgslsmith_div_f32(global0.x, -1840f)), min(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 12490u), vec4<u32>(4294967295u, 1943u, 92300u, u_input.a), vec4<u32>(60277u, 1u, u_input.a, u_input.a)), vec4<u32>(3104u, u_input.a, u_input.a, 56061u)), u_input.a)));
    var var_1 = any(func_3().yy);
    var var_2 = firstTrailingBit(~(~(~vec3<u32>(u_input.a, u_input.a, 0u))));
    let var_3 = _wgslsmith_f_op_f32(-141f * -1000f);
    let var_4 = Struct_2(Struct_1(true, 1u), Struct_1(select(!any(vec2<bool>(true, false)), any(vec3<bool>(true, true, true)), !select(true, false, false)), 0u), Struct_1(_wgslsmith_f_op_f32(var_3 - 1000f) < -440f, _wgslsmith_mod_u32(var_2.x, u_input.a)), u_input.a, Struct_1(true, abs(0u)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~_wgslsmith_add_i32(u_input.c.x, -10155i) | _wgslsmith_dot_vec2_i32(u_input.c & u_input.c, firstTrailingBit(u_input.c))), u_input.b, vec4<u32>(var_4.a.b, u_input.a, min(~58116u, u_input.a), 66647u) & select(~(~vec4<u32>(0u, var_2.x, var_4.c.b, var_4.a.b)), _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, var_4.b.b, u_input.a, u_input.a)), ~vec4<u32>(0u, 4294967295u, var_2.x, var_2.x)), !vec4<bool>(var_4.c.a, false, var_4.a.a, var_4.e.a)));
}

