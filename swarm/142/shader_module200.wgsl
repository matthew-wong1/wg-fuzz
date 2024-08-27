struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec3<i32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-525f, true), vec4<u32>(4294967295u, 4294967295u, 0u, 75745u), vec3<bool>(false, true, false));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = vec2<i32>(min(1i, -27825i), 1i);
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(min(global0.a.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(global0.a.a)), -653f)))), false), ~(~select(vec4<u32>(global0.b.x, global0.b.x, 0u, global0.b.x), ~vec4<u32>(u_input.d, global0.b.x, global0.b.x, u_input.d), select(vec4<bool>(global0.a.b, global0.c.x, false, global0.c.x), vec4<bool>(global0.c.x, global0.c.x, true, global0.c.x), vec4<bool>(global0.c.x, true, global0.a.b, false)))), vec3<bool>(any(!select(vec4<bool>(global0.c.x, false, global0.a.b, global0.c.x), vec4<bool>(true, true, false, true), false)), false, ~(~global0.b.x) > reverseBits(~1u)));
    var var_1 = 4294967295u;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1955f * -1284f));
    var var_3 = Struct_2(global0.a, (~select(global0.b, global0.b, true) >> (vec4<u32>(0u, ~u_input.d, u_input.b, 37543u) % vec4<u32>(32u))) ^ ~_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(global0.b, global0.b), global0.b), select(vec3<bool>(!all(global0.c), global0.a.b, global0.c.x), global0.c, !vec3<bool>(select(global0.a.b, global0.a.b, global0.c.x), all(vec3<bool>(global0.a.b, false, false)), all(vec4<bool>(false, false, global0.a.b, true)))));
    return global0.b.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: f32) -> vec4<f32> {
    var var_0 = select(!global0.c, vec3<bool>(global0.c.x, !(!any(global0.c.zx)), global0.c.x), global0.a.b);
    var var_1 = select(global0.c.zy, global0.c.yz, (func_3() >> ((_wgslsmith_sub_u32(88764u, u_input.b) ^ _wgslsmith_dot_vec2_u32(global0.b.yx, vec2<u32>(1u, u_input.d))) % 32u)) <= u_input.b);
    global0 = Struct_2(Struct_1(arg_2, u_input.e.x >= u_input.c.x), ~(global0.b << (_wgslsmith_sub_vec4_u32(vec4<u32>(7293u, u_input.b, 4294967295u, u_input.d), vec4<u32>(4294967295u, global0.b.x, 4294967295u, u_input.b)) % vec4<u32>(32u))), !global0.c);
    var var_2 = select(~(~vec4<i32>(0i, ~u_input.e.x, _wgslsmith_mult_i32(u_input.e.x, u_input.c.x), 2147483647i)), ~(vec4<i32>(-1i) * -abs(vec4<i32>(0i, 1i, -2147483647i, u_input.c.x))), select(select(select(vec4<bool>(var_0.x, var_1.x, false, true), vec4<bool>(var_1.x, true, false, var_1.x), !vec4<bool>(false, var_1.x, false, true)), vec4<bool>(true, all(vec2<bool>(true, false)), false, u_input.e.x < u_input.e.x), vec4<bool>(var_1.x, true, all(vec4<bool>(var_0.x, global0.c.x, var_0.x, true)), true)), vec4<bool>(any(vec4<bool>(global0.c.x, true, true, true)), any(!var_0.yy), select(global0.b.x == u_input.b, true, all(vec3<bool>(false, false, true))), false), !vec4<bool>(any(vec4<bool>(false, true, false, var_0.x)), false, true, select(false, true, true))));
    var_2 = abs(select(vec4<i32>(countOneBits(u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, 1i, 1i, var_2.x), ~vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, 3669i)), u_input.c.x, var_2.x), ~abs(firstTrailingBit(vec4<i32>(-2147483647i, var_2.x, 832i, u_input.e.x))), !select(!vec4<bool>(var_1.x, false, global0.c.x, global0.a.b), vec4<bool>(global0.a.b, false, true, global0.a.b), var_1.x)));
    return vec4<f32>(global0.a.a, _wgslsmith_f_op_f32(1148f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(264f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))), arg_0.x, _wgslsmith_f_op_f32(abs(global0.a.a)));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: i32, arg_3: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.a.a, -1998f, arg_1.e.a, arg_3), vec4<f32>(715f, arg_3, global0.a.a, 1000f))), _wgslsmith_div_vec4_f32(vec4<f32>(-1044f, -458f, 1480f, 340f), vec4<f32>(1162f, 946f, global0.a.a, global0.a.a)), vec4<bool>(false, arg_1.e.b, true, true))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.a, arg_1.e.a, 1373f)), -1592f, _wgslsmith_f_op_f32(arg_3 * global0.a.a))) + vec4<f32>(arg_1.d.x, _wgslsmith_f_op_f32(round(arg_3)), 1477f, arg_1.a.x)))));
    return -823f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(-31933i, reverseBits(firstLeadingBit(_wgslsmith_add_i32(u_input.a.x, -u_input.a.x))));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-953f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(502f + global0.a.a))), _wgslsmith_f_op_f32(func_1(u_input.e, Struct_3(vec2<f32>(1221f, global0.a.a), Struct_2(Struct_1(global0.a.a, global0.c.x), vec4<u32>(u_input.d, u_input.b, u_input.b, 1u), global0.c), vec3<i32>(u_input.e.x, 57099i, 1i), vec3<f32>(global0.a.a, 768f, 1540f), Struct_1(-783f, global0.a.b)), -5015i, -193f)))), global0.a.a, _wgslsmith_f_op_f32(-global0.a.a)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec3<f32>(754f, global0.a.a, global0.a.a), global0.a.a, global0.a.a))), _wgslsmith_div_vec4_f32(vec4<f32>(global0.a.a, global0.a.a, 965f, global0.a.a), vec4<f32>(420f, -214f, 1414f, global0.a.a))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(461f, global0.a.a, global0.a.a, global0.a.a) * _wgslsmith_div_vec4_f32(vec4<f32>(394f, 1000f, 252f, -562f), vec4<f32>(-377f, global0.a.a, -785f, global0.a.a)))))));
    var_0 = -max(-(~_wgslsmith_clamp_i32(u_input.e.x, u_input.e.x, u_input.a.x)), 2147483647i);
    var var_2 = Struct_2(Struct_1(var_1.x, !(!(!global0.a.b))), vec4<u32>(~(~u_input.b), ~countOneBits(6948u), u_input.b, u_input.d), select(vec3<bool>(global0.c.x, !(u_input.c.x <= 1i), all(select(vec4<bool>(true, true, true, global0.c.x), vec4<bool>(true, global0.c.x, true, global0.a.b), vec4<bool>(true, global0.c.x, global0.c.x, false)))), select(!vec3<bool>(global0.a.b, global0.c.x, global0.c.x), select(!global0.c, !global0.c, select(global0.c, global0.c, true)), vec3<bool>(!global0.c.x, !global0.a.b, any(vec4<bool>(global0.a.b, true, global0.a.b, global0.c.x)))), any(vec4<bool>(u_input.c.x == u_input.e.x, !global0.c.x, true, !global0.c.x))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1629f), global0.a.a, -1136f);
    let var_4 = Struct_3(var_1.zz, Struct_2(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.x * 108f), _wgslsmith_f_op_f32(-var_2.a.a))), var_2.c.x), ~var_2.b, var_2.c), u_input.e, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1206f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.a * _wgslsmith_f_op_f32(var_3.x - var_2.a.a)) + _wgslsmith_f_op_f32(1405f + var_2.a.a)), var_2.a.a), var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec3_f32(trunc(var_3)), var_4.d.x, -186f)).x)), -101f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(u_input.e, var_4, 48052i, 1694f)))) + _wgslsmith_f_op_f32(global0.a.a + _wgslsmith_f_op_f32(-var_2.a.a)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.a, 2866f) + var_4.b.a.a), 133f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.a - var_2.a.a)), _wgslsmith_f_op_f32(step(var_1.x, var_2.a.a))))), reverseBits(abs(vec2<u32>(firstTrailingBit(global0.b.x), 0u))), select(vec2<u32>(~(85061u ^ var_2.b.x), u_input.b), abs(~_wgslsmith_add_vec2_u32(var_2.b.yx, var_4.b.b.yy)), -_wgslsmith_dot_vec4_i32(vec4<i32>(39225i, -1i, -28329i, var_4.c.x), vec4<i32>(9073i, 33635i, var_4.c.x, -2147483647i)) < firstTrailingBit(~(-1i))), global0.b.x);
}

