struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> vec3<bool> {
    let var_0 = true;
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1124f), _wgslsmith_f_op_f32(f32(-1f) * -2252f)), !select(select(!vec4<bool>(var_0, false, var_0, true), !vec4<bool>(true, var_0, var_0, var_0), false), select(!vec4<bool>(var_0, true, arg_0, true), select(vec4<bool>(true, false, false, arg_0), vec4<bool>(false, var_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, var_0, arg_0)), !arg_0), !select(vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(arg_0, var_0, arg_0, arg_0), var_0)));
    var var_2 = Struct_3(-(~(-(~vec2<i32>(4668i, u_input.a)))), -1215f, Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, var_1.a.x) + var_1.a), vec4<bool>(var_1.b.x, var_1.b.x, true, var_1.b.x))), ~_wgslsmith_mult_u32(~1u, u_input.d));
    var var_3 = vec4<i32>(-2147483647i, var_2.a.x, _wgslsmith_sub_i32(0i, 2147483647i), u_input.a);
    var_2 = Struct_3(vec2<i32>(_wgslsmith_sub_i32(0i, var_2.a.x), min(firstTrailingBit(u_input.a), u_input.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_1.a.x)))), Struct_2(var_2.c.a), ~select(max(~var_2.d, 0u), var_2.d, !(u_input.a > u_input.a)));
    return select(select(var_1.b.yyw, vec3<bool>(min(u_input.a, u_input.a) >= _wgslsmith_div_i32(var_3.x, -20266i), select(any(vec3<bool>(var_1.b.x, true, true)), any(var_1.b.wzw), var_0), false), !(all(var_1.b) | any(var_2.c.a.b.zzy))), !vec3<bool>(var_1.b.x, false, !arg_0 & !var_1.b.x), select(vec3<bool>(var_1.b.x, true, any(vec4<bool>(var_1.b.x, false, false, true))), vec3<bool>(!all(vec2<bool>(var_0, false)), any(!vec3<bool>(arg_0, arg_0, var_1.b.x)), !(-9011i >= var_2.a.x)), select(vec3<bool>(var_0, arg_0, true), vec3<bool>(arg_0, true, true), var_1.b.x)));
}

fn func_2(arg_0: f32) -> vec2<i32> {
    var var_0 = !select(vec3<bool>(true, true, true), select(select(func_3(true), vec3<bool>(true, true, true), u_input.a <= 7094i), func_3(all(vec2<bool>(false, false))), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true)), !any(vec4<bool>(false, false, false, true)));
    var_0 = !(!select(func_3(var_0.x || false), select(!vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, false, true)), select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, var_0.x, true), true), vec3<bool>(true, true, true), select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x), false))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-832f, arg_0))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * vec2<f32>(-604f, 802f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1802f, arg_0) - vec2<f32>(772f, 1075f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-263f, arg_0), vec2<f32>(arg_0, arg_0))) - vec2<f32>(1228f, arg_0)))), select(vec4<bool>(true, !any(var_0.zz), any(!vec4<bool>(false, var_0.x, false, var_0.x)), var_0.x), select(!vec4<bool>(true, var_0.x, var_0.x, var_0.x), select(select(vec4<bool>(false, true, false, var_0.x), vec4<bool>(var_0.x, false, false, var_0.x), var_0.x), !vec4<bool>(var_0.x, true, true, false), any(vec2<bool>(var_0.x, var_0.x))), vec4<bool>(false, !var_0.x, select(true, false, false), any(vec3<bool>(var_0.x, var_0.x, false)))), vec4<bool>(!(u_input.b >= u_input.d), var_0.x, select(var_0.x, var_0.x, false), any(vec3<bool>(var_0.x, true, true)) || true)));
    var_0 = vec3<bool>(!(var_0.x || false), any(var_1.b), !all(select(var_1.b, var_1.b, true)));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_1.a.x))));
    return vec2<i32>(_wgslsmith_clamp_i32(~(-52335i), ~(~(~1i)), -1i), u_input.a);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: f32) -> Struct_2 {
    let var_0 = vec3<u32>(1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 1u, arg_1.x), _wgslsmith_clamp_vec3_u32(u_input.c.xxz, vec3<u32>(0u, arg_1.x, arg_1.x), vec3<u32>(u_input.b, u_input.d, 1u))) >> (~arg_1.x % 32u), arg_1.x);
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a, arg_0.x), reverseBits(-5623i) << (arg_1.x % 32u));
    let var_2 = Struct_3(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -937f) - -138f), -1082f)), arg_2.a.x, Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(662f, arg_2.a.x), vec2<f32>(1000f, -1092f))))), vec4<bool>(true, arg_2.b.x, false, arg_2.b.x))), ~arg_1.x);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a.x), -378f));
    var var_4 = arg_2.b.x & false;
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = i32(-1i) * -1i;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2023f))) + -1927f));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-207f))), _wgslsmith_f_op_f32(f32(-1f) * -133f));
    let var_2 = func_1(firstLeadingBit(vec4<i32>(u_input.a, max(6619i, var_0) | ~var_0, ~(-20129i) | (0i | u_input.a), firstLeadingBit(u_input.a))), ~_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 4294967295u), _wgslsmith_mult_vec2_u32(vec2<u32>(34286u, 0u), u_input.c.wy)), abs(~vec2<u32>(u_input.b, u_input.d))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1361f, -962f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1793f, 378f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-556f, -136f))))), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true)), _wgslsmith_f_op_f32(floor(503f)));
    var_1 = _wgslsmith_f_op_f32(trunc(var_2.a.a.x));
    let var_3 = var_2;
    var_1 = _wgslsmith_f_op_f32(-1121f + _wgslsmith_f_op_f32(-var_3.a.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(min(var_0, -2512i)));
}

