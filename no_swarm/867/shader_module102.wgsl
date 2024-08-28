struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> Struct_2 {
    var var_0 = arg_1;
    let var_1 = !(!vec2<bool>(var_0.a.b, arg_1.a.b));
    let var_2 = var_0.a;
    var var_3 = arg_1;
    var_3 = arg_1;
    return arg_1.a;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<bool>) -> f32 {
    return _wgslsmith_f_op_f32(arg_1.b - -1394f);
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    let var_0 = u_input.a.x;
    return Struct_3(Struct_2(vec3<i32>(-arg_0.a.a.x, -20683i, min(20180i, arg_0.a.a.x)) ^ arg_0.a.a, !global0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b - arg_0.b))))));
}

fn func_1() -> vec3<bool> {
    let var_0 = ~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(64107u, 5165u, 4294967295u, u_input.a.x), vec4<u32>(0u, u_input.a.x, 4159u, u_input.a.x)) | max(vec4<u32>(4294967295u, 4294967295u, 14513u, 4294967295u), vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x)), _wgslsmith_div_vec4_u32(~countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x)), vec4<u32>(27214u >> (0u % 32u), _wgslsmith_mult_u32(40885u, 1u), u_input.a.x, ~4294967295u)));
    var var_1 = func_4(Struct_3(func_2(-5417i, Struct_3(Struct_2(vec3<i32>(-1630i, -30434i, 14963i), true), _wgslsmith_div_f32(1032f, -319f))), _wgslsmith_f_op_f32(func_3(Struct_2(-vec3<i32>(36802i, 1i, 63758i), !global0.x), Struct_3(Struct_2(vec3<i32>(11055i, 32865i, 0i), true), _wgslsmith_f_op_f32(max(-1176f, -323f))), select(vec3<bool>(global0.x, true, false), vec3<bool>(global0.x, true, global0.x), false)))));
    global0 = select(!(!vec3<bool>(select(false, global0.x, global0.x), global0.x | false, any(vec4<bool>(false, global0.x, true, var_1.a.b)))), !vec3<bool>(any(vec4<bool>(false, var_1.a.b, var_1.a.b, true)), all(vec4<bool>(var_1.a.b, global0.x, var_1.a.b, false)) | !var_1.a.b, global0.x), false);
    var var_2 = ~vec3<i32>(var_1.a.a.x, var_1.a.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-34998i, var_1.a.a.x) & _wgslsmith_add_vec2_i32(var_1.a.a.zx, var_1.a.a.yy), vec2<i32>(0i, var_1.a.a.x)));
    var_2 = var_1.a.a >> (max(~(var_0.wwx << (_wgslsmith_div_vec3_u32(var_0.yyz, vec3<u32>(u_input.a.x, u_input.a.x, var_0.x)) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 26722u, ~4294967295u), abs(vec3<u32>(30525u, u_input.a.x, 1u)))) % vec3<u32>(32u));
    return select(!(!select(vec3<bool>(var_1.a.b, global0.x, true), vec3<bool>(true, false, true), vec3<bool>(var_1.a.b, false, var_1.a.b))), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(var_1.a.b, global0.x, true)))), !(!vec3<bool>(var_2.x < -8430i, 1000f < var_1.b, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(select(vec3<bool>(-1i > _wgslsmith_clamp_i32(16308i, 13018i, -1i), !global0.x & global0.x, false), func_1(), true), func_1(), (_wgslsmith_div_i32(0i, 1i) > -(2689i >> (u_input.a.x % 32u))) & false);
    let var_0 = ~(~_wgslsmith_add_vec2_u32(~(u_input.a & u_input.a), u_input.a));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(239f, -1413f, 1000f, -2012f) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, 272f, 510f, -407f)))), vec4<f32>(_wgslsmith_f_op_f32(select(2440f, -874f, true)), _wgslsmith_f_op_f32(round(953f)), _wgslsmith_f_op_f32(f32(-1f) * -335f), _wgslsmith_f_op_f32(abs(-769f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1206f, -1670f, -270f, -698f)))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-367f, 687f, -376f, 812f) - vec4<f32>(-874f, 745f, 1137f, -2762f)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(259f, 438f, -1023f, -516f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(697f, 755f, 375f, -140f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-2785f, 464f, global0.x)), _wgslsmith_f_op_f32(max(1000f, 579f)), _wgslsmith_f_op_f32(f32(-1f) * -1642f), _wgslsmith_f_op_f32(823f + 1136f))), all(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), global0.x)))), !select(select(!vec4<bool>(global0.x, global0.x, false, global0.x), select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(true, false, global0.x, global0.x)), !vec4<bool>(global0.x, global0.x, global0.x, true)), select(vec4<bool>(false, false, false, true), !vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(false, true, false, false)), vec4<bool>(global0.x & global0.x, global0.x, !global0.x, global0.x))));
    let var_2 = select(select(select(!select(vec4<bool>(global0.x, true, false, true), vec4<bool>(global0.x, false, false, false), false), vec4<bool>(global0.x, true, false, true), select(!vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, false, false), vec4<bool>(global0.x, false, global0.x, global0.x))), select(!(!vec4<bool>(global0.x, true, global0.x, global0.x)), vec4<bool>(global0.x, true, global0.x, func_1().x), select(!vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(false, false, false, global0.x))), (var_0.x | 1u) > var_0.x), vec4<bool>(global0.x, global0.x, global0.x, true), global0.x);
    global0 = vec3<bool>(true, true, false);
    var var_3 = 1026f;
    let var_4 = func_4(func_4(func_4(func_4(func_4(Struct_3(Struct_2(vec3<i32>(-2147483647i, -2147483647i, 2147483647i), global0.x), -1164f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, reverseBits(_wgslsmith_add_vec3_u32(~(~vec3<u32>(var_0.x, u_input.a.x, 48751u)), min(select(vec3<u32>(28575u, 1u, 37670u), vec3<u32>(35052u, var_0.x, var_0.x), true), vec3<u32>(9534u, 26902u, 1u)))));
}

