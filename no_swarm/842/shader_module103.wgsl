struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: f32, arg_3: vec2<i32>) -> vec3<i32> {
    let var_0 = Struct_2(~1u, Struct_1(!((arg_3.x > arg_3.x) || true), !(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true)))), true, Struct_1(all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), vec4<bool>(all(vec3<bool>(true, true, false)), true, !(-52782i != u_input.a), any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))))));
    let var_1 = Struct_3(var_0.b, (_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(419f, -164f))) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-190f * 974f)))) | any(var_0.d.b.xx), all(vec2<bool>(any(!vec3<bool>(var_0.d.b.x, var_0.c, true)), !all(vec4<bool>(var_0.d.b.x, false, true, var_0.b.b.x)))));
    var var_2 = var_0.b;
    var_2 = Struct_1(var_2.a, var_2.b);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1288f, arg_0))))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 933f))))));
    return -_wgslsmith_sub_vec3_i32(firstTrailingBit(min(max(vec3<i32>(u_input.a, u_input.a, arg_3.x), vec3<i32>(-18653i, -2147483647i, u_input.a)), select(vec3<i32>(arg_3.x, -2147483647i, -52989i), vec3<i32>(-1i, 2147483647i, 5903i), false))), vec3<i32>(reverseBits(i32(-1i) * -6257i), ~_wgslsmith_mult_i32(9786i, arg_3.x), _wgslsmith_dot_vec4_i32(-vec4<i32>(-35695i, arg_3.x, 0i, -52175i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -2147483647i, -1i, u_input.a), vec4<i32>(u_input.a, arg_3.x, arg_3.x, u_input.a)))));
}

fn func_2(arg_0: f32) -> vec3<i32> {
    let var_0 = min(vec4<u32>(1u, u_input.c.x, ~reverseBits(1u), u_input.c.x), vec4<u32>(firstTrailingBit(firstLeadingBit(1u)), ~(~1u), ~u_input.c.x, ~u_input.c.x));
    return abs(~func_3(_wgslsmith_f_op_f32(f32(-1f) * -1044f), ~vec4<u32>(20012u, var_0.x, 6109u, 35785u) | _wgslsmith_mod_vec4_u32(var_0, var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * -914f)), vec2<i32>(-36115i, -u_input.a)));
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    var var_0 = false;
    let var_1 = true;
    let var_2 = func_2(arg_0.x);
    var_0 = all(vec3<bool>(_wgslsmith_div_i32(-8057i, abs(var_2.x)) >= _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(var_2, var_2), ~var_2), all(select(select(vec2<bool>(false, var_1), vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1)), vec2<bool>(var_1, var_1), false)), true));
    var var_3 = Struct_1(var_1 != var_1, vec4<bool>(true, all(!vec2<bool>(true, var_1)), select(var_1 != var_1, var_1, !all(vec3<bool>(var_1, true, false))), true));
    return 643f;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: i32) -> Struct_2 {
    return Struct_2(_wgslsmith_dot_vec4_u32(select(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.c.x, u_input.b.x, 4294967295u, u_input.c.x)), reverseBits(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 4294967295u)), firstTrailingBit(vec4<u32>(u_input.c.x, 0u, 90803u, 15947u))), ~vec4<u32>(u_input.b.x, u_input.c.x, u_input.b.x, 45380u), arg_0.b), abs(firstTrailingBit(select(vec4<u32>(88221u, u_input.c.x, u_input.c.x, u_input.b.x), vec4<u32>(45788u, u_input.b.x, u_input.b.x, 4294967295u), arg_0.b.x)))), arg_0, !all(vec2<bool>(any(arg_0.b.zz), arg_0.b.x)), Struct_1(any(arg_0.b.xy), vec4<bool>(!(!arg_0.a), true, true, false || all(arg_0.b.yzy))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(true && (all(vec4<bool>(true, true, false, false)) && true), vec4<bool>(false, !any(vec2<bool>(false, true)), _wgslsmith_f_op_f32(711f * -807f) > _wgslsmith_f_op_f32(func_1(vec4<f32>(1678f, -115f, 320f, 412f))), all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), false)))), 2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -144f)), _wgslsmith_f_op_f32(-400f + _wgslsmith_div_f32(1000f, -120f)))), ((-u_input.a >> (_wgslsmith_mult_u32(u_input.c.x, 1u) % 32u)) & _wgslsmith_dot_vec3_i32(min(vec3<i32>(u_input.a, u_input.a, -1i), vec3<i32>(-49720i, u_input.a, u_input.a)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, -2147483647i, -23631i), vec3<i32>(-2147483647i, u_input.a, -18434i), vec3<i32>(-5922i, u_input.a, u_input.a)))) >> (~(~(~u_input.b.x)) % 32u));
    var var_1 = true;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2255f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-707f)) * _wgslsmith_f_op_f32(-1350f * 569f))))), -1271f);
    var var_3 = Struct_3(func_4(Struct_1(any(var_0.d.b.yz) & all(vec2<bool>(var_0.d.a, true)), var_0.d.b), u_input.a, _wgslsmith_div_f32(1512f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2)))), abs(min(u_input.a, u_input.a)) & _wgslsmith_sub_i32(1i, u_input.a)).b, true, any(var_0.b.b.wz));
    var_0 = Struct_2((_wgslsmith_div_u32(func_4(Struct_1(var_0.c, var_3.a.b), -45436i, var_2, 16121i).a, _wgslsmith_div_u32(u_input.c.x, u_input.c.x)) & _wgslsmith_sub_u32(~0u, ~0u)) ^ (~_wgslsmith_div_u32(71975u, 56388u) << (~(~u_input.c.x) % 32u)), func_4(func_4(var_0.b, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, u_input.a, -192i), vec3<i32>(u_input.a, -4071i, 0i) & vec3<i32>(-27548i, u_input.a, u_input.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(725f)), _wgslsmith_f_op_f32(f32(-1f) * -276f))), u_input.a).d, u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(var_2 - -650f))), reverseBits(u_input.a ^ abs(-1i))).d, var_0.b.b.x, var_0.d);
    var_0 = Struct_2(u_input.c.x, var_3.a, any(!(!(!vec3<bool>(true, var_3.a.b.x, false)))), var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a << (var_0.a % 32u), u_input.b, -2147483647i, -(reverseBits(vec3<i32>(u_input.a, u_input.a, -1i)) & vec3<i32>(1i, 1i, 1i)), vec4<u32>(~var_0.a >> (~(~4294967295u) % 32u), _wgslsmith_add_u32(reverseBits(u_input.c.x) ^ countOneBits(var_0.a), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 37387u), vec2<u32>(var_0.a, var_0.a))), var_0.a, u_input.c.x));
}

