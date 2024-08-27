struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: f32 = -1739f;

var<private> global2: Struct_1;

var<private> global3: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: u32) -> vec4<bool> {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(463f * 2217f), 193f)));
    global2 = Struct_1(vec2<u32>(6091u, u_input.e >> (abs(6908u) % 32u)));
    return vec4<bool>(true, true, true, true);
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: bool) -> bool {
    let var_0 = ~vec3<u32>(~0u, ~(~u_input.d.x), ~_wgslsmith_div_u32(global2.a.x, ~17712u));
    let var_1 = Struct_1(var_0.yz);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1140f) * 934f);
    let var_2 = Struct_1(vec2<u32>(4294967295u, global2.a.x));
    var var_3 = -11864i;
    return !arg_2;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = arg_2;
    return select(vec4<bool>(-(u_input.b | u_input.a.x) <= (i32(-1i) * -2147483647i), true, !(!select(false, false, true)), all(vec4<bool>(false, true, true, true))), select(vec4<bool>(false, u_input.a.x > u_input.c.x, (4294967295u >> (arg_1.a.x % 32u)) < 1u, true), select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), func_2(u_input.d.x), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), false)), func_2(u_input.d.x << (0u % 32u))), all(select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(false, false), true), !select(vec2<bool>(false, false), vec2<bool>(false, false), false), func_3(u_input.c.x, vec3<i32>(u_input.c.x, 0i, u_input.a.x), false))));
}

fn func_4(arg_0: i32, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = u_input.e;
    let var_1 = -709f;
    var var_2 = abs(50210i);
    global3 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(~0u, ~_wgslsmith_add_u32(u_input.d.x, global2.a.x)), vec2<u32>(43247u, _wgslsmith_mult_u32(abs(global2.a.x), _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(global2.a.x, u_input.e, global2.a.x))))), abs(vec2<u32>(~4294967295u, countOneBits(firstTrailingBit(u_input.e)))));
    let var_3 = vec2<u32>(global2.a.x, _wgslsmith_dot_vec2_u32(global2.a, firstLeadingBit(u_input.d.zx)));
    return Struct_1(select(~_wgslsmith_sub_vec2_u32(u_input.d.zz, vec2<u32>(1u, 1403u)), global2.a ^ global2.a, vec2<bool>(any(arg_1), func_2(global2.a.x).x)) & select(~var_3, ~(global2.a & vec2<u32>(24668u, 14514u)), select(!arg_1.x, true, var_1 < var_1)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_1(max(~_wgslsmith_add_vec2_u32(select(vec2<u32>(u_input.d.x, global2.a.x), vec2<u32>(34849u, 1u), vec2<bool>(true, true)), reverseBits(vec2<u32>(1u, 0u))), select(vec2<u32>(countOneBits(4294967295u), _wgslsmith_mult_u32(arg_0.a.x, 15502u)), ~(u_input.d.xz ^ arg_1.a), vec2<bool>(true, true))));
    var var_1 = func_4(countOneBits(18598i), vec4<bool>(true && func_3(1i << (arg_0.a.x % 32u), u_input.c.xxz, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1345f)), 1135f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(856f * -1105f)), false, all(vec2<bool>(all(vec3<bool>(true, true, true)), true))));
    var var_2 = vec2<bool>(!all(vec2<bool>(func_1(956f, arg_2, Struct_1(vec2<u32>(4294967295u, arg_0.a.x))).x, any(vec3<bool>(false, false, false)))), any(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))) && all(func_2(arg_2.a.x).yx));
    let var_3 = var_2.x;
    var var_4 = func_4(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.a.xy, u_input.a.xy), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.b, u_input.c.x, 6059i) & vec4<i32>(-2147483647i, u_input.c.x, u_input.b, u_input.c.x), max(abs(u_input.c), countOneBits(vec4<i32>(0i, u_input.b, u_input.b, u_input.c.x))))), !(!vec4<bool>(var_2.x || var_2.x, true, true, var_2.x)));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 25344i;
    global0 = 0i;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -585f))), 148f)));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f + 801f), -526f))))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-586f))))))));
    let var_2 = !(true != any(vec2<bool>(true, select(true, true, false))));
    var var_3 = vec4<u32>(u_input.e, func_5(func_4(u_input.c.x, func_1(114f, Struct_1(global2.a), Struct_1(u_input.d.zy))), Struct_1(~u_input.d.xx), Struct_1(max(global2.a, abs(u_input.d.xx)))), global2.a.x, ~(~4294967295u));
    let var_4 = (u_input.a.x & -select(u_input.b, firstLeadingBit(-1i), var_2)) ^ u_input.b;
    let var_5 = _wgslsmith_f_op_f32(trunc(-1028f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_5, -950f)))), vec2<f32>(486f, var_5))) * vec2<f32>(486f, var_5)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-805f, _wgslsmith_div_f32(var_5, var_5)))), ~func_5(Struct_1(~u_input.d.yz), Struct_1(var_3.wz), func_4(_wgslsmith_dot_vec2_i32(u_input.c.yz, vec2<i32>(var_4, u_input.b)), select(vec4<bool>(var_2, var_2, true, true), vec4<bool>(true, true, false, false), false))));
}

