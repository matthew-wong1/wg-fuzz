struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> bool {
    global0 = array<Struct_1, 13>();
    let var_0 = arg_0;
    var var_1 = ~min(max(select(u_input.b >> (arg_0.a.xw % vec2<u32>(32u)), u_input.b, arg_1), -(u_input.d | vec2<i32>(u_input.a, u_input.b.x))), vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(40411i, u_input.a, u_input.a), ~vec3<i32>(u_input.b.x, u_input.b.x, 5643i)), u_input.a));
    let var_2 = Struct_1(var_0.a, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(237f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))), all(select(vec4<bool>(arg_1 & false, !arg_2.b, select(arg_1, false, arg_0.c), arg_0.c), vec4<bool>(true, any(vec2<bool>(false, arg_2.b)), false && arg_1, false), vec4<bool>(-1i >= var_1.x, true, false, u_input.a <= u_input.a))));
    var_1 = vec2<i32>(2147483647i, _wgslsmith_clamp_i32(2147483647i, -5588i >> (_wgslsmith_dot_vec2_u32(arg_2.a.xx, vec2<u32>(24288u, 0u)) % 32u), u_input.d.x) << (u_input.c % 32u));
    return all(vec4<bool>(-2147483647i >= u_input.d.x, any(select(!vec4<bool>(arg_2.b, arg_2.c, arg_0.b, false), vec4<bool>(arg_0.c, var_0.c, false, true), true && var_2.b)), !all(vec2<bool>(true, true)), var_2.c));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: vec2<bool>, arg_3: bool) -> vec2<i32> {
    global0 = array<Struct_1, 13>();
    var var_0 = !select(select(vec3<bool>(true, func_3(Struct_1(vec4<u32>(34857u, u_input.c, 0u, arg_1), true, arg_2.x), false, global0[_wgslsmith_index_u32(arg_1, 13u)]), any(vec2<bool>(true, true))), !select(vec3<bool>(false, arg_3, arg_2.x), vec3<bool>(arg_3, arg_2.x, arg_2.x), false), !all(vec4<bool>(arg_2.x, arg_3, true, arg_2.x))), vec3<bool>(arg_3, arg_2.x, false), !arg_3);
    let var_1 = _wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(_wgslsmith_mult_u32(1u, arg_1) & max(39763u, arg_1), arg_0.x)), ~(~(~arg_0.xw)));
    var_0 = select(!select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, arg_3), vec3<bool>(var_0.x, arg_2.x, true), false), true), select(!(!select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(arg_3, var_0.x, arg_2.x), false)), !(!vec3<bool>(true, false, arg_2.x)), vec3<bool>(var_0.x, !all(vec4<bool>(false, false, true, var_0.x)), true && var_0.x)), vec3<bool>(true, true, true));
    var var_2 = Struct_1(vec4<u32>(1u, abs(1u), 0u, ~(~1u)), false, select(true, false, true));
    return select(~(min(u_input.b ^ vec2<i32>(u_input.d.x, u_input.a), -u_input.b) | u_input.d), vec2<i32>(-u_input.d.x, 1i), select(!select(select(vec2<bool>(arg_3, arg_2.x), vec2<bool>(false, false), vec2<bool>(true, arg_3)), arg_2, arg_2), select(select(!var_0.xz, !var_0.xx, any(var_0.zz)), vec2<bool>(var_2.b, !arg_3), arg_2), var_0.x));
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(680f, arg_0) + vec2<f32>(arg_0, arg_0)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, -745f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * vec2<f32>(arg_0, arg_0)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -125f))))));
    global0 = array<Struct_1, 13>();
    let var_1 = abs(vec2<i32>(0i << (_wgslsmith_mod_u32(u_input.e.x, 12478u) % 32u), select(-2147483647i, u_input.d.x, true))) ^ func_2(vec4<u32>(u_input.e.x, _wgslsmith_mult_u32(u_input.c, u_input.c), u_input.c, _wgslsmith_mod_u32(u_input.e.x, u_input.c) >> (u_input.c % 32u)), firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(u_input.e.x, 7632u)), _wgslsmith_sub_u32(u_input.e.x, 50256u))), vec2<bool>(any(vec2<bool>(true, true)), false), false);
    var var_2 = Struct_1(max(~(~abs(vec4<u32>(4294967295u, 4324u, u_input.c, u_input.e.x))), ~(vec4<u32>(u_input.c, 4294967295u, 71885u, u_input.e.x) >> (~vec4<u32>(1u, 0u, 4294967295u, 4294967295u) % vec4<u32>(32u)))), all(vec3<bool>(true, true, true)) & any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false))), select(true, any(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true))), select(true, all(select(vec2<bool>(false, true), vec2<bool>(false, false), true)), !(-823f < arg_0))));
    var_2 = Struct_1(firstLeadingBit(vec4<u32>(u_input.e.x, min(~u_input.e.x, u_input.c), select(1u, ~u_input.c, var_2.b), u_input.e.x)), true, !any(!(!vec2<bool>(true, var_2.b))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(434f))), _wgslsmith_f_op_f32(select(-285f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1203f + var_0.x) - _wgslsmith_f_op_f32(select(var_0.x, var_0.x, var_2.b))))), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(abs(844f)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1000f))))), _wgslsmith_f_op_f32(step(253f, -1013f)), _wgslsmith_f_op_f32(f32(-1f) * -1537f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(314f, _wgslsmith_f_op_f32(-1351f * 536f)))))));
    var var_1 = global0[_wgslsmith_index_u32(u_input.e.x, 13u)];
    global0 = array<Struct_1, 13>();
    var var_2 = Struct_1(_wgslsmith_add_vec4_u32(~var_1.a, var_1.a) & var_1.a, false, true);
    global0 = array<Struct_1, 13>();
    let var_3 = global0[_wgslsmith_index_u32(min(~(~(~142293u << (~u_input.c % 32u))), 75234u), 13u)];
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x * -1000f))), _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(abs(var_0.x))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) + 1f), var_0.x, -1563f);
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(-201f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -263f) * vec4<f32>(_wgslsmith_f_op_f32(-762f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x - 422f)))), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -2066f))), var_0.x, var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x, max(~countOneBits(0u), var_2.a.x) & ~25237u, _wgslsmith_mult_vec2_u32(select(var_1.a.xz, ~var_3.a.zw, false) >> (vec2<u32>(u_input.e.x, 1u) % vec2<u32>(32u)), var_2.a.wz), 94505u, u_input.a);
}

