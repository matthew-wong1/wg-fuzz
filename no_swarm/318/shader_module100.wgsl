struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<i32>) -> vec2<bool> {
    global0 = Struct_2(global0.a);
    let var_0 = global0.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-206f, _wgslsmith_f_op_f32(1000f - var_0.d.x))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.d.xz))))));
    var var_2 = !(!global0.a.a);
    let var_3 = ~vec3<i32>(~(-1i), u_input.b, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c.x, arg_0.x, -31177i) | -vec3<i32>(u_input.b, -2147483647i, u_input.c.x), min(~u_input.c, vec3<i32>(u_input.c.x, 0i, u_input.b))));
    return vec2<bool>(all(vec4<bool>(var_0.c.x, ~arg_0.x == 14245i, all(!vec2<bool>(var_0.a, false)), all(vec4<bool>(true, global0.a.c.x, true, global0.a.a)))), !any(!select(vec3<bool>(true, true, global0.a.c.x), vec3<bool>(false, false, var_0.a), var_0.a)));
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: f32, arg_3: f32) -> vec3<bool> {
    global0 = Struct_2(global0.a);
    global0 = Struct_2(Struct_1(true, _wgslsmith_dot_vec3_u32(vec3<u32>(47461u, ~61258u, ~0u), ~(vec3<u32>(0u, 4294967295u, u_input.a.x) << (u_input.a.wzz % vec3<u32>(32u)))), !select(vec2<bool>(true, false), vec2<bool>(true, global0.a.c.x), u_input.b > -2147483647i), _wgslsmith_f_op_vec3_f32(global0.a.d * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -490f), _wgslsmith_f_op_f32(f32(-1f) * -913f), _wgslsmith_f_op_f32(-arg_2)))));
    let var_0 = Struct_1(false, abs(_wgslsmith_dot_vec3_u32(~u_input.a.zwy, vec3<u32>(max(17836u, 0u), countOneBits(10165u), ~41279u))), select(global0.a.c, !(!select(global0.a.c, vec2<bool>(true, global0.a.c.x), global0.a.c)), select(func_3(select(u_input.c.zy, vec2<i32>(4931i, 0i), global0.a.c.x)), global0.a.c, vec2<bool>(false, any(global0.a.c)))), vec3<f32>(_wgslsmith_f_op_f32(-1f), 2599f, global0.a.d.x));
    global0 = Struct_2(var_0);
    return select(vec3<bool>(!all(vec3<bool>(false, true, true)), true, var_0.a), vec3<bool>(global0.a.a, true, all(var_0.c)), select(!(!(!vec3<bool>(true, arg_1, global0.a.a))), select(select(vec3<bool>(global0.a.c.x, false, var_0.a), !vec3<bool>(var_0.a, arg_1, var_0.c.x), vec3<bool>(false, false, false)), !(!vec3<bool>(false, global0.a.a, false)), all(!vec4<bool>(false, false, false, var_0.c.x))), var_0.c.x));
}

fn func_1() -> Struct_1 {
    let var_0 = select(!vec4<bool>(any(!vec4<bool>(false, global0.a.c.x, global0.a.c.x, global0.a.c.x)), !global0.a.c.x || false, false, global0.a.a), vec4<bool>(!all(func_2(u_input.a.wx, true, global0.a.d.x, -1119f)), !any(select(vec4<bool>(global0.a.a, global0.a.a, true, false), vec4<bool>(false, global0.a.c.x, global0.a.c.x, false), vec4<bool>(false, true, global0.a.a, false))), !(firstTrailingBit(global0.a.b) > ~43936u), countOneBits(0u) > _wgslsmith_mod_u32(_wgslsmith_mult_u32(27466u, global0.a.b), _wgslsmith_mult_u32(global0.a.b, u_input.a.x))), _wgslsmith_mult_u32((global0.a.b | u_input.a.x) & (34102u >> (global0.a.b % 32u)), u_input.a.x) <= ~abs(_wgslsmith_div_u32(73003u, u_input.a.x)));
    global0 = Struct_2(Struct_1(var_0.x, _wgslsmith_mod_u32(~(~1u), _wgslsmith_add_u32(countOneBits(4294967295u), global0.a.b)), global0.a.c, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(global0.a.d))))));
    let var_1 = Struct_1(false, ~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(1u, 44437u), 21153u, ~global0.a.b), _wgslsmith_mod_vec3_u32(u_input.a.wzz << (u_input.a.xzx % vec3<u32>(32u)), vec3<u32>(u_input.a.x, global0.a.b, u_input.a.x) >> (vec3<u32>(4294967295u, global0.a.b, global0.a.b) % vec3<u32>(32u)))), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(min(global0.a.d, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1292f), -400f, _wgslsmith_f_op_f32(ceil(global0.a.d.x))) - _wgslsmith_f_op_vec3_f32(global0.a.d * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1224f, -182f, -863f)))))));
    var var_2 = global0.a;
    global0 = Struct_2(global0.a);
    return Struct_1(all(select(var_1.c, !vec2<bool>(var_2.c.x, false), !(!vec2<bool>(false, var_0.x)))), ~15349u, var_1.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2773f, var_1.d.x, 1161f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d.x, var_1.d.x, -1221f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d.x, 1267f, var_1.d.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.d.x, var_2.d.x, global0.a.d.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(select(global0.a.b, firstTrailingBit(_wgslsmith_mod_u32(min(global0.a.b, u_input.a.x), ~global0.a.b)), false), ~firstTrailingBit(~(u_input.b | -14780i)));
}

