struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<bool>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-270f - _wgslsmith_f_op_f32(1758f * 550f));
    var var_1 = Struct_3(u_input.b.zw, 40874i, select(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c, 77396u, arg_0.a, u_input.c) | select(vec4<u32>(4294967295u, 0u, arg_0.a, 0u), vec4<u32>(0u, 4294967295u, arg_0.a, 9778u), arg_1.x), vec4<u32>(_wgslsmith_mult_u32(u_input.c, arg_0.a), ~1u, arg_0.a, _wgslsmith_add_u32(arg_0.a, 89373u))), vec4<u32>(u_input.c, 1u, 6233u, 1u), vec4<bool>(!(u_input.a.x <= -2147483647i), arg_1.x, false == (true && arg_1.x), arg_1.x)), vec2<bool>(all(!vec3<bool>(arg_1.x, true, arg_1.x)) || !arg_1.x, ((u_input.b.x >= -25748i) & true) || !(!arg_1.x)), firstTrailingBit(~abs(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.a, 12979u), vec2<u32>(arg_0.a, 4294967295u)))));
    global0 = 15685i;
    var var_2 = u_input.a.zzz;
    global0 = abs(arg_0.b.x) & -1i;
    return _wgslsmith_add_u32(_wgslsmith_div_u32(~_wgslsmith_mult_u32(u_input.c, reverseBits(16958u)), select(~_wgslsmith_mod_u32(2536u, 4294967295u), abs(_wgslsmith_add_u32(40u, 0u)), ~arg_0.a <= 1u)), _wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(arg_0.a, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c.x, u_input.c), vec2<u32>(u_input.c, 0u)) << (~var_1.e.x % 32u), firstLeadingBit(arg_0.a))));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> i32 {
    global0 = u_input.b.x;
    var var_0 = 1f;
    var_0 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(ceil(1f)));
    var var_1 = arg_0.x;
    var var_2 = Struct_3(arg_1.b.wz, -(~u_input.b.x) << ((func_3(Struct_1(u_input.c, vec4<i32>(-16453i, arg_1.b.x, arg_3, arg_1.b.x)), !vec2<bool>(arg_2, false)) & 66796u) % 32u), arg_0 << (vec4<u32>(1u, arg_1.a, 43304u, abs(~0u)) % vec4<u32>(32u)), !vec2<bool>(arg_2, all(select(vec3<bool>(arg_2, false, true), vec3<bool>(true, true, arg_2), true))), vec2<u32>(16780u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(arg_0.yyx, vec3<u32>(arg_0.x, 4294967295u, 0u)), vec3<u32>(u_input.c, firstLeadingBit(arg_1.a), 58510u << (u_input.c % 32u)))));
    return arg_3;
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> i32 {
    let var_0 = ~func_2(~vec4<u32>(u_input.c >> (1u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(57608u, 55137u), vec2<u32>(0u, 0u)), ~1u, 55079u), Struct_1(20860u, vec4<i32>(abs(-2147483647i), arg_1, 0i, -arg_1)), any(vec4<bool>(true, any(vec2<bool>(true, false)), all(vec3<bool>(false, true, true)), true)), 0i);
    let var_1 = vec3<u32>(u_input.c, u_input.c, countOneBits((u_input.c ^ u_input.c) >> (u_input.c % 32u)) & (u_input.c ^ max(78170u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(1u, 0u, u_input.c, 16324u)))));
    var var_2 = var_1.x;
    var_2 = min(u_input.c, _wgslsmith_dot_vec2_u32(var_1.xx, ~vec2<u32>(u_input.c, ~34374u)));
    let var_3 = Struct_3(-vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-1i, -8253i, var_0, var_0)), 31065i), 39687i, ~_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_div_u32(22124u, 15006u), u_input.c >> (var_1.x % 32u), u_input.c, 31599u), ~select(vec4<u32>(0u, var_1.x, var_1.x, 46334u), vec4<u32>(var_1.x, var_1.x, 5169u, 48559u), vec4<bool>(true, false, true, false))), vec2<bool>(true, !(u_input.c >= countOneBits(49223u))), ~abs(~var_1.zz));
    return _wgslsmith_mult_i32(countOneBits((var_0 ^ 1i) >> (~(~u_input.c) % 32u)), 1680i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -3475i;
    global0 = -func_1(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(-817f, 793f))))), _wgslsmith_sub_i32(_wgslsmith_mult_i32(select(u_input.a.x, var_0, false), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -18339i, -16871i), u_input.a.xzw)), _wgslsmith_dot_vec3_i32(select(u_input.b.ywx, vec3<i32>(-1i, 19559i, 7831i), vec3<bool>(true, true, true)), -vec3<i32>(47314i, var_0, u_input.a.x))));
    var var_1 = vec4<bool>(true, !all(select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.b.x <= var_0)), any(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))), false);
    var var_2 = ~vec3<u32>(~min(0u, u_input.c), _wgslsmith_div_u32(firstTrailingBit(1227u), 52796u), 1u) << (reverseBits(~min(vec3<u32>(u_input.c, u_input.c, 1u), vec3<u32>(u_input.c, 0u, 0u))) % vec3<u32>(32u));
    let var_3 = Struct_2(reverseBits(var_0) ^ -(~(i32(-1i) * -34767i)), -1106f, !(!vec4<bool>(var_1.x, true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b) * -531f), _wgslsmith_f_op_f32(min(1597f, _wgslsmith_f_op_f32(-var_3.b))), _wgslsmith_f_op_f32(-653f * 2017f)) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b, -778f, 551f)))))), 0u, firstLeadingBit(~vec2<u32>(var_2.x, ~35059u)));
}

