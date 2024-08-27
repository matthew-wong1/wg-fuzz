struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec2<u32>,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    var var_0 = ~u_input.b.zx;
    var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(max(~(~arg_0.x), _wgslsmith_div_u32(_wgslsmith_clamp_u32(4294967295u, u_input.d, var_0.x), _wgslsmith_dot_vec2_u32(arg_0.zz, u_input.b.wz))), var_0.x), arg_0.yz, u_input.b.xw);
    var_0 = ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, ~28526u), arg_0.yx) ^ ~_wgslsmith_sub_vec2_u32(vec2<u32>(56470u, firstTrailingBit(17166u)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, var_0.x, var_0.x, 112853u), vec4<u32>(u_input.b.x, 8486u, 4294967295u, 0u)), u_input.b.x ^ 0u));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(274f, 447f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1051f))))));
    let var_2 = Struct_3(Struct_2(select(~(-1i) > _wgslsmith_dot_vec3_i32(vec3<i32>(3841i, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, 28882i, 11836i)), any(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)))), 1u, u_input.c.x), Struct_1(572f, vec4<bool>(true | (u_input.d != var_0.x), select(true, 50860i >= u_input.a.x, any(vec2<bool>(false, false))), false, !(0u >= u_input.d)), (vec2<u32>(u_input.d, 67082u) | (vec2<u32>(var_0.x, 61797u) & vec2<u32>(u_input.b.x, 60726u))) & ~vec2<u32>(arg_0.x, 4294967295u), vec2<bool>(true, true), ~(arg_0 & select(vec3<u32>(u_input.d, var_0.x, 74585u), vec3<u32>(0u, arg_0.x, 4294967295u), true))));
    return _wgslsmith_f_op_f32(-var_2.b.a);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: bool) -> i32 {
    let var_0 = Struct_3(Struct_2(false, arg_1.x, u_input.c.x), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2138f, arg_0.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + 2055f))), !(!vec4<bool>(true, arg_2, arg_2, arg_2)), vec2<u32>(~u_input.d, firstTrailingBit(~u_input.b.x)), vec2<bool>(true, !arg_2 | true), reverseBits(~max(u_input.b.zxy, u_input.b.wxz))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(arg_0.x)), !select(select(!vec4<bool>(false, false, var_0.a.a, var_0.b.b.x), select(var_0.b.b, vec4<bool>(true, var_0.b.b.x, true, false), vec4<bool>(var_0.a.a, arg_2, var_0.b.d.x, var_0.b.d.x)), vec4<bool>(arg_2, arg_2, arg_2, arg_2)), !var_0.b.b, var_0.b.b), u_input.b.xy, select(select(vec2<bool>(var_0.b.a >= 1121f, true), !(!vec2<bool>(true, var_0.a.a)), arg_2), vec2<bool>(true, var_0.b.d.x), var_0.b.b.zy), ~(~(~u_input.b.ywx) << (_wgslsmith_sub_vec3_u32(u_input.b.xyx << (u_input.b.zwx % vec3<u32>(32u)), select(var_0.b.e, u_input.b.wzy, var_0.b.b.zyy)) % vec3<u32>(32u))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2423f, arg_0.x)), _wgslsmith_f_op_f32(func_3(~select(firstTrailingBit(var_1.e), ~vec3<u32>(var_0.a.b, var_0.b.e.x, u_input.b.x), var_1.d.x))));
    var_1 = Struct_1(-437f, !var_1.b, vec2<u32>(_wgslsmith_clamp_u32(~52403u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(arg_1, vec2<u32>(0u, u_input.d)), var_0.b.e.yz), countOneBits(21758u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, 9546u, 0u), var_1.e ^ vec3<u32>(39720u, var_1.e.x, 0u))), !var_1.b.xz, vec3<u32>(~1u ^ arg_1.x, var_1.e.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(61035u, 4294967295u), vec2<u32>(0u, var_0.a.b)), var_0.b.c.x)) ^ ~(var_1.e | ~vec3<u32>(arg_1.x, u_input.d, 1u)));
    let var_3 = Struct_3(var_0.a, var_0.b);
    return var_0.a.c;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_3(Struct_2(any(vec2<bool>(true, true)), _wgslsmith_sub_u32(u_input.d, ~u_input.d), func_4(vec3<f32>(_wgslsmith_f_op_f32(154f - 611f), -752f, _wgslsmith_f_op_f32(func_3(vec3<u32>(4294967295u, 26214u, 1u)))), vec2<u32>(u_input.d | u_input.b.x, u_input.d), any(select(vec2<bool>(false, false), vec2<bool>(true, false), true)))), Struct_1(_wgslsmith_f_op_f32(sign(-137f)), select(vec4<bool>(all(vec4<bool>(true, false, false, true)), any(vec3<bool>(true, false, true)), true, u_input.a.x > 13069i), vec4<bool>(false, true, u_input.a.x == u_input.a.x, u_input.a.x == u_input.a.x), false), u_input.b.yx, select(vec2<bool>(true, true), select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), all(vec4<bool>(true, false, false, false))), any(vec3<bool>(true, false, true)) & false), firstTrailingBit(abs(u_input.b.wxw)) << (vec3<u32>(u_input.d & 35843u, ~u_input.d, 1u) % vec3<u32>(32u))));
    var_0 = Struct_3(Struct_2(var_0.b.d.x, abs(_wgslsmith_mod_u32(reverseBits(23302u), _wgslsmith_sub_u32(89515u, u_input.d))), var_0.a.c), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1000f)), var_0.b.a), select(!var_0.b.b, var_0.b.b, any(select(var_0.b.b.zw, var_0.b.b.wy, true))), _wgslsmith_sub_vec2_u32(u_input.b.wz, ~(~var_0.b.e.zz)), vec2<bool>(!(!var_0.a.a), var_0.b.b.x), _wgslsmith_mod_vec3_u32(vec3<u32>(~u_input.b.x, u_input.d, ~4294967295u), vec3<u32>(~0u, var_0.b.c.x, 4294967295u))));
    let var_1 = vec3<u32>(u_input.b.x, firstTrailingBit(4294967295u | var_0.b.e.x), ~_wgslsmith_div_u32(0u, max(1u, reverseBits(17421u))));
    let var_2 = any(vec2<bool>(!var_0.b.d.x, !(!(var_0.b.a > -1370f))));
    var var_3 = 531f;
    return Struct_2(any(!(!var_0.b.b)), max(~u_input.b.x, reverseBits(~u_input.d | (u_input.d | u_input.d))), -13598i & _wgslsmith_sub_i32(reverseBits(2147483647i), 1i | -u_input.a.x));
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_3(func_2(), Struct_1(1139f, select(vec4<bool>(all(vec2<bool>(false, true)), true, false, false), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), false), all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), false))), vec2<u32>(abs(22939u), u_input.d), vec2<bool>(true & all(vec3<bool>(false, false, true)), any(vec3<bool>(false, true, false))), vec3<u32>(~0u, func_2().b, ~1u)));
    var_0 = Struct_3(func_2(), var_0.b);
    let var_1 = ~max(4294967295u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.b.zwy, u_input.b.wzy), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.b, var_0.b.c.x), u_input.b.ww))) <= _wgslsmith_add_u32(u_input.d, ~(~36527u));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-671f, -804f, -365f, var_0.b.a)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.a, var_0.b.a, var_0.b.a, var_0.b.a) - vec4<f32>(-211f, var_0.b.a, var_0.b.a, var_0.b.a))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.b.a, var_0.b.a, var_0.b.a, var_0.b.a), vec4<f32>(102f, 1890f, var_0.b.a, 285f))), vec4<f32>(var_0.b.a, -1928f, 1000f, var_0.b.a)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(613f, 946f, var_0.b.a, var_0.b.a) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.a, -1000f, var_0.b.a, var_0.b.a) * vec4<f32>(var_0.b.a, var_0.b.a, var_0.b.a, 113f))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(var_0.b.a + var_0.b.a), 1531f, -493f, _wgslsmith_f_op_f32(f32(-1f) * -200f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.a, -492f, var_0.b.a, var_0.b.a) - vec4<f32>(-524f, -386f, -823f, var_0.b.a))))), !select(!var_0.b.b, vec4<bool>(false, true, false, var_0.b.d.x), !var_1))));
    return Struct_3(var_0.a, var_0.b);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_3) -> Struct_2 {
    let var_0 = u_input.b;
    var var_1 = arg_3.b.a;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_1.b.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -724f))))), arg_2.b.a);
    let var_3 = Struct_2(arg_3.b.d.x && arg_3.a.a, 76865u, abs(arg_3.a.c) << (21181u % 32u));
    var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(abs(vec3<u32>(0u, u_input.b.x, arg_1.a.b) | vec3<u32>(17874u, u_input.b.x, 252u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(340f - _wgslsmith_f_op_f32(min(arg_2.b.a, -326f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.x - 311f), arg_2.b.a)))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1066f, 355f))), _wgslsmith_f_op_f32(-169f * _wgslsmith_f_op_f32(-var_2.x))));
    return func_2();
}

fn func_6(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    var var_0 = true;
    let var_1 = arg_3.b.zyx;
    let var_2 = func_1().b;
    var_0 = func_1().a.a;
    var_0 = all(vec2<bool>(arg_1.a, any(select(vec4<bool>(false, false, false, var_2.b.x), var_2.b, func_1().b.b))));
    return func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(!func_6(_wgslsmith_f_op_f32(step(-347f, _wgslsmith_f_op_f32(f32(-1f) * -274f))), func_5(vec4<bool>(true, true, true, true), func_1(), func_1(), func_1()), Struct_2(func_1().b.b.x, ~4294967295u, abs(u_input.a.x)), func_1().b), u_input.d, i32(-1i) * -reverseBits(54626i << (u_input.d % 32u)));
    let var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.b, vec3<i32>(abs(-32045i), -17189i, reverseBits(var_0.c)), 1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.a)));
}

