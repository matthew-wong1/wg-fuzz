struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_2) -> f32 {
    var var_0 = arg_2;
    var var_1 = u_input.e;
    let var_2 = var_0.c.c;
    var_1 = 1u;
    let var_3 = ~vec2<i32>(i32(-1i) * -1i, u_input.d.x);
    return arg_2.c.b;
}

fn func_2() -> Struct_1 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(537f, _wgslsmith_f_op_f32(sign(-184f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(954f)), 1000f, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1241f) - -1000f));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_0.x)))), _wgslsmith_mod_i32(_wgslsmith_div_i32(-2147483647i, u_input.a.x), u_input.a.x), Struct_2(-670f, select(false, true, false), Struct_1(104f, var_0.x, true, false), vec2<u32>(2099u, 19275u))))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), var_0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)))))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1510f, _wgslsmith_f_op_f32(var_0.x * var_0.x)) * _wgslsmith_f_op_f32(min(1083f, _wgslsmith_div_f32(-431f, _wgslsmith_f_op_f32(var_0.x + 573f))))), -132f, var_0.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_div_f32(118f, var_0.x)));
    var var_3 = 1u;
    return Struct_1(-749f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(288f + _wgslsmith_div_f32(669f, var_0.x)) * var_2.x), all(!vec4<bool>(true, any(vec4<bool>(false, true, true, true)), all(vec2<bool>(false, true)), all(vec3<bool>(true, false, false)))), true);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    let var_0 = ~(~_wgslsmith_div_vec2_u32(u_input.b.yw, ~vec2<u32>(u_input.b.x, u_input.c.x)));
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(arg_3.a))))), arg_2.c.a, _wgslsmith_f_op_f32(arg_3.a - arg_2.c.b))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.b, arg_2.c.a, -140f), vec3<f32>(-439f, -1000f, 775f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.a, -1000f, arg_0.b))), !vec3<bool>(arg_0.d, false, true))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1321f, var_1.x, var_1.x))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c.a, -782f, arg_2.a)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1781f, -356f, arg_3.a))))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -948f)), all(arg_1), func_2(), ~vec2<u32>(~firstTrailingBit(var_0.x), 0u));
    return func_2();
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> f32 {
    var var_0 = func_4(func_2(), select(vec2<bool>(false, true), select(!select(vec2<bool>(arg_1.d, arg_1.c), vec2<bool>(false, arg_2), vec2<bool>(arg_2, false)), vec2<bool>(!arg_3.d, u_input.d.x < -1i), select(vec2<bool>(true, false), vec2<bool>(arg_1.c, true), vec2<bool>(true, true))), !(_wgslsmith_f_op_f32(-988f + arg_3.b) > _wgslsmith_f_op_f32(min(arg_3.a, arg_3.b)))), Struct_2(_wgslsmith_f_op_f32(725f * _wgslsmith_f_op_f32(step(arg_3.b, _wgslsmith_f_op_f32(ceil(1000f))))), true, Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1088f + 2069f)), !any(vec3<bool>(arg_3.d, false, arg_2)), select(true, u_input.e > 4294967295u, true)), reverseBits(~(~u_input.c.xy))), func_2());
    let var_1 = abs(_wgslsmith_clamp_vec3_i32(select(reverseBits(u_input.a), vec3<i32>(u_input.d.x, -1i, u_input.a.x), arg_3.d), vec3<i32>(i32(-1i) * -2147483647i, -65795i, -7776i), vec3<i32>(-22379i, u_input.a.x, _wgslsmith_dot_vec2_i32(reverseBits(u_input.a.xx), u_input.a.xz))));
    var_0 = func_2();
    var var_2 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f + var_2.x), _wgslsmith_f_op_f32(1000f * -672f))))) + var_2.x));
}

fn func_5(arg_0: vec3<bool>, arg_1: f32) -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(608f * arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -533f)))), arg_1, arg_0.x, all(arg_0.yz));
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1201f, -607f))), func_4(Struct_1(arg_1, 1360f, false, true), vec2<bool>(true, var_0.d), Struct_2(553f, false, Struct_1(var_0.a, var_0.a, arg_0.x, true), vec2<u32>(1u, 1u)), Struct_1(var_0.a, var_0.b, arg_0.x, false)), all(vec3<bool>(var_0.d, var_0.c, true)), Struct_1(var_0.a, var_0.b, arg_0.x, arg_0.x))), arg_1))), false || all(vec2<bool>(true, select(true, false, arg_0.x))), (~u_input.d.x << (74542u % 32u)) <= 9947i);
    var var_1 = Struct_2(arg_1, arg_0.x, func_4(Struct_1(-273f, _wgslsmith_f_op_f32(f32(-1f) * -1138f), !any(arg_0), true), select(select(vec2<bool>(arg_0.x, false), arg_0.zz, false), !vec2<bool>(arg_0.x, false), !var_0.c), Struct_2(arg_1, true, func_2(), select(firstTrailingBit(u_input.b.wx), ~u_input.c.zx, vec2<bool>(false, var_0.d))), func_4(Struct_1(func_2().a, arg_1, false, func_2().d), vec2<bool>(arg_0.x, true), Struct_2(_wgslsmith_f_op_f32(-arg_1), u_input.b.x <= 31438u, func_2(), u_input.c.wy), Struct_1(1282f, _wgslsmith_f_op_f32(203f * 1000f), func_2().c, !arg_0.x))), u_input.c.wz);
    let var_2 = _wgslsmith_add_i32(u_input.a.x, max(-firstLeadingBit(abs(30697i)), _wgslsmith_mod_i32(~u_input.d.x, 1i) & -u_input.d.x));
    let var_3 = vec4<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.a, -566f), vec2<f32>(var_0.b, var_1.a))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a, -170f), vec2<f32>(-655f, var_1.a), var_1.c.c))), Struct_1(_wgslsmith_f_op_f32(-var_0.a), 371f, all(vec4<bool>(arg_0.x, var_0.d, arg_0.x, arg_0.x)), all(vec4<bool>(arg_0.x, var_1.b, true, false))), true, var_1.c))), -452f, _wgslsmith_f_op_f32(min(-1030f, -1477f)));
    return vec4<f32>(_wgslsmith_f_op_f32(-918f - _wgslsmith_f_op_f32(abs(var_1.a))), 192f, -180f, -223f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_5(vec3<bool>(_wgslsmith_f_op_f32(func_1(vec2<f32>(564f, -1164f), Struct_1(1000f, 1107f, true, true), false, Struct_1(546f, 1038f, true, true))) < _wgslsmith_f_op_f32(-309f + 442f), !(u_input.a.x <= u_input.d.x), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1245f)), _wgslsmith_f_op_f32(-1726f + -1000f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(695f, -294f, 1000f, -535f)))), vec4<f32>(_wgslsmith_f_op_f32(-902f - 692f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -764f), -720f), _wgslsmith_f_op_f32(161f - _wgslsmith_f_op_f32(-1405f + -836f)), 1066f)), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), true)), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), false), false), vec4<bool>(false, true, _wgslsmith_dot_vec3_u32(u_input.b.zzw, vec3<u32>(1u, u_input.b.x, 4294967295u)) > 41566u, true), true)));
    var var_1 = vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(578f)), _wgslsmith_f_op_f32(var_0.x + 1478f))));
    let var_2 = -vec4<i32>(1i, 18213i & u_input.d.x, abs(~(u_input.d.x | u_input.d.x)), 2147483647i >> (u_input.e % 32u));
    let var_3 = ~(~u_input.b);
    let var_4 = !(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.xyz);
}

