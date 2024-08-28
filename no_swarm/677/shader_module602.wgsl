struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: u32,
    d: vec3<i32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = ~4294967295u;
    return arg_1.b;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<u32>) -> vec3<i32> {
    var var_0 = arg_1.b.x;
    var_0 = _wgslsmith_div_f32(arg_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(570f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-136f - _wgslsmith_f_op_f32(exp2(arg_1.b.x))))));
    let var_1 = arg_1;
    let var_2 = _wgslsmith_sub_u32(arg_1.c, 73588u);
    var_0 = var_1.e.x;
    return abs(var_1.d);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> vec4<bool> {
    var var_0 = vec4<bool>(any(select(!(!vec3<bool>(true, true, arg_2.x)), vec3<bool>(all(vec3<bool>(true, arg_0.a.x, true)), arg_2.x, true), !select(vec3<bool>(arg_2.x, false, arg_0.a.x), vec3<bool>(arg_0.a.x, arg_2.x, false), vec3<bool>(false, false, true)))), false, false, arg_0.a.x);
    let var_1 = _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(u_input.c.x, arg_1.c, 58396u)) ^ _wgslsmith_add_vec3_u32(u_input.c.xyz, vec3<u32>(4294967295u, arg_1.c, 103468u)), abs(vec3<u32>(0u, 4294967295u, arg_1.c))) ^ ~vec3<u32>(arg_0.c & arg_0.c, _wgslsmith_dot_vec2_u32(u_input.c.wx, u_input.c.xx), min(1u, 24009u)), vec3<u32>(_wgslsmith_add_u32(~(~1u), arg_0.c), abs(arg_0.c), ~_wgslsmith_mult_u32(4294967295u, _wgslsmith_mod_u32(arg_0.c, 14432u))));
    let var_2 = 85628u;
    var_0 = !select(!(!vec4<bool>(var_0.x, arg_1.a.x, false, arg_2.x)), select(vec4<bool>(arg_1.a.x || true, all(arg_0.a), any(arg_0.a), select(var_0.x, false, var_0.x)), select(vec4<bool>(false, false, arg_1.a.x, false), !vec4<bool>(arg_2.x, arg_2.x, arg_1.a.x, arg_0.a.x), vec4<bool>(true, var_0.x, true, arg_0.a.x)), vec4<bool>(arg_0.d.x > arg_1.d.x, arg_0.b.x > 1092f, var_0.x & true, false)), false);
    let var_3 = firstTrailingBit(u_input.c);
    return !(!select(!(!vec4<bool>(true, true, var_0.x, arg_1.a.x)), !(!vec4<bool>(arg_2.x, true, arg_0.a.x, var_0.x)), vec4<bool>(arg_1.a.x, arg_0.d.x != arg_1.d.x, true, all(vec4<bool>(true, arg_0.a.x, false, arg_1.a.x)))));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> f32 {
    let var_0 = arg_0.a.x && !all(!select(vec2<bool>(false, arg_0.a.x), arg_0.a, vec2<bool>(arg_0.a.x, arg_0.a.x)));
    let var_1 = select(!func_4(arg_0, Struct_1(vec2<bool>(var_0, arg_0.a.x), vec2<f32>(arg_0.e.x, -1050f), 0u, func_3(arg_0.d.xz, arg_0, u_input.c), vec4<f32>(915f, -947f, 941f, arg_1)), arg_0.a), select(vec4<bool>(false, false, any(!vec4<bool>(true, var_0, var_0, true)), false), !(!vec4<bool>(var_0, var_0, false, false)), !vec4<bool>(all(vec4<bool>(true, var_0, true, arg_0.a.x)), var_0, !var_0, true)), select(select(vec4<bool>(var_0, false, arg_0.a.x, true), select(vec4<bool>(arg_0.a.x, true, arg_0.a.x, true), !vec4<bool>(arg_0.a.x, var_0, false, arg_0.a.x), var_0), select(vec4<bool>(true, var_0, true, true), vec4<bool>(arg_0.a.x, true, true, var_0), select(vec4<bool>(true, arg_0.a.x, false, arg_0.a.x), vec4<bool>(true, var_0, arg_0.a.x, arg_0.a.x), false))), vec4<bool>(any(vec3<bool>(arg_0.a.x, arg_0.a.x, var_0)), (u_input.d.x ^ arg_0.d.x) > 35920i, false, false), vec4<bool>(false, (u_input.c.x ^ 6002u) <= ~0u, var_0 | (51105u > u_input.c.x), true)));
    let var_2 = 8252u;
    var var_3 = arg_0;
    let var_4 = Struct_1(var_1.ww, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2126f) * 825f), var_3.b.x) - vec2<f32>(1407f, -1400f)), 4294967295u, (vec3<i32>(-1i) * -(~var_3.d)) ^ vec3<i32>(~u_input.d.x, func_3(reverseBits(vec2<i32>(arg_0.d.x, var_3.d.x)), Struct_1(var_1.ww, arg_0.b, var_3.c, vec3<i32>(var_3.d.x, u_input.b, var_3.d.x), var_3.e), ~vec4<u32>(arg_0.c, 0u, u_input.a, arg_0.c)).x, -var_3.d.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, 495f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1262f, arg_0.e.x)) + 1161f))));
    return _wgslsmith_div_f32(-732f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_0.e.x)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1, 1028f, false)), _wgslsmith_f_op_f32(var_3.b.x * -272f))), _wgslsmith_f_op_f32(-var_3.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.e.x ^ -43238i;
    let var_1 = u_input.e.x;
    let var_2 = any(vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -969f, false))) > _wgslsmith_f_op_f32(select(-695f, -706f, true)), false));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1692f, 1877f) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1054f, -1128f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(626f, 737f)) - vec2<f32>(509f, 805f))), false)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-660f, 121f) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec2<bool>(true, var_2), vec2<f32>(-921f, 242f), 59509u, u_input.d.ywx, vec4<f32>(214f, 621f, 287f, 1223f)), Struct_1(vec2<bool>(var_2, false), vec2<f32>(827f, 1270f), u_input.c.x, vec3<i32>(var_0, u_input.e.x, u_input.d.x), vec4<f32>(-900f, -1176f, -423f, -295f)), Struct_1(vec2<bool>(var_2, var_2), vec2<f32>(-1000f, 822f), u_input.a, vec3<i32>(-3571i, 10298i, -4615i), vec4<f32>(-107f, -2630f, 1579f, -1807f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(324f, -1045f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))))));
    let var_4 = Struct_1(vec2<bool>(var_2, var_2), var_3, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 1u, u_input.c.x, 58709u), abs(vec4<u32>(4294967295u, 79755u, 0u, u_input.a))), select(vec4<u32>(0u, 54901u, 37068u, u_input.a), vec4<u32>(u_input.a, 0u, 57610u, u_input.c.x), true) << (vec4<u32>(u_input.a, u_input.c.x, u_input.a, 32043u) % vec4<u32>(32u))) ^ ~(~3484u), u_input.d.zxw, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3.x, var_3.x, 1339f, var_3.x), vec4<f32>(1488f, var_3.x, var_3.x, 1503f))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(vec2<bool>(var_2, var_2), vec2<f32>(var_3.x, -205f), 47823u, u_input.d.xyw, vec4<f32>(var_3.x, var_3.x, 1827f, var_3.x)), var_3.x)), _wgslsmith_f_op_f32(-var_3.x), -100f, var_3.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3.x, -995f, 1051f, -641f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, var_3.x, 294f, 1377f) * vec4<f32>(1127f, 1537f, -164f, -1045f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1(var_4, var_4, var_4)).x), var_3.x, ~(~max(u_input.c.yz, u_input.c.zx)) & ~reverseBits(select(vec2<u32>(1u, var_4.c), vec2<u32>(4294967295u, 71806u), false)), vec2<u32>(32027u, abs(~61189u)));
}

