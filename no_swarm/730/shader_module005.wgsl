struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<bool> {
    let var_0 = all(select(select(vec2<bool>(false, any(vec4<bool>(true, false, true, true))), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(true, true, false)), any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))))));
    var var_1 = Struct_1(vec3<u32>(u_input.a.x, 1u, _wgslsmith_dot_vec4_u32(u_input.a << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), u_input.a) ^ u_input.a.x), ~_wgslsmith_add_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a.x, u_input.a.x), u_input.a.ywx), ~u_input.a.yww), ~_wgslsmith_mult_vec3_u32(vec3<u32>(6248u, u_input.a.x << (0u % 32u), 561u), ~countOneBits(vec3<u32>(u_input.a.x, 11860u, 62957u))), true, vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-689f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-532f)), -141f)))));
    var var_2 = vec3<u32>(~u_input.a.x, ~var_1.b.x & 0u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(53493u, 4294967295u, u_input.a.x), ~u_input.a.wwy) >> (vec3<u32>(firstTrailingBit(u_input.a.x), u_input.a.x, 32026u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(~u_input.a.ywx, vec3<u32>(var_1.b.x, _wgslsmith_mult_u32(1u, 81281u), firstTrailingBit(4294967295u)))));
    let var_3 = Struct_1(vec3<u32>(_wgslsmith_clamp_u32(~firstLeadingBit(var_1.a.x), 1u, 56166u), _wgslsmith_add_u32(min(0u, 1u), 1u), _wgslsmith_sub_u32(var_2.x, 0u)), vec3<u32>(4294967295u, _wgslsmith_clamp_u32(~var_1.b.x, ~9721u, firstLeadingBit(var_2.x)), ~abs(u_input.a.x)) >> (u_input.a.zyy % vec3<u32>(32u)), var_1.a, false, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-837f, _wgslsmith_f_op_f32(select(1000f, -698f, var_1.d))) + var_1.e))));
    global0 = array<Struct_2, 14>();
    return select(select(select(select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, true, var_1.d), vec4<bool>(true, var_1.d, var_0, var_0), var_1.d), select(vec4<bool>(false, var_0, var_0, true), vec4<bool>(var_3.d, true, var_0, var_3.d), false)), !select(vec4<bool>(var_1.d, false, var_1.d, true), vec4<bool>(var_1.d, var_1.d, true, true), var_0), true), select(!(!vec4<bool>(false, var_0, var_3.d, true)), vec4<bool>(var_3.d, select(var_0, var_0, var_1.d), var_0, var_0), !var_1.d), true), select(!(!vec4<bool>(var_0, var_3.d, var_3.d, false)), vec4<bool>(all(!vec2<bool>(false, var_1.d)), all(vec4<bool>(true, true, var_0, true)) && all(vec4<bool>(true, true, true, true)), var_1.d, false), !select(vec4<bool>(true, true, true, var_1.d), !vec4<bool>(var_0, true, var_0, var_3.d), vec4<bool>(var_3.d, true, var_3.d, var_3.d))), vec4<bool>(true, true, (499f >= _wgslsmith_f_op_f32(-var_1.e.x)) != !var_3.d, _wgslsmith_div_f32(var_3.e.x, _wgslsmith_f_op_f32(trunc(var_3.e.x))) == _wgslsmith_f_op_f32(-var_3.e.x)));
}

fn func_2(arg_0: Struct_2) -> f32 {
    let var_0 = arg_0.a;
    let var_1 = var_0;
    var var_2 = any(func_3());
    global0 = array<Struct_2, 14>();
    let var_3 = Struct_1(_wgslsmith_add_vec3_u32(~vec3<u32>(var_1.c.x, ~4294967295u, 11426u), u_input.a.xyx), vec3<u32>(~4294967295u, 0u, var_1.b.x), ~_wgslsmith_add_vec3_u32(abs(~u_input.a.yxy), vec3<u32>(var_1.a.x, countOneBits(4294967295u), ~u_input.a.x)), arg_0.a.d, _wgslsmith_f_op_vec2_f32(-var_1.e));
    return -109f;
}

fn func_1() -> vec3<u32> {
    let var_0 = -424f;
    let var_1 = ~u_input.a.x;
    var var_2 = Struct_1(vec3<u32>(0u, ~(var_1 << (4294967295u % 32u)), var_1), _wgslsmith_sub_vec3_u32(u_input.a.xwz, ~vec3<u32>(~1u, 32104u, ~u_input.a.x)), vec3<u32>(~var_1, u_input.a.x, countOneBits(_wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_div_vec4_u32(u_input.a, u_input.a)))), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -319f) + _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(u_input.a.wyy, u_input.a.zyx, vec3<u32>(6847u, var_1, 24667u), false, vec2<f32>(-394f, 1158f)))))), var_0)));
    var_2 = Struct_1(_wgslsmith_mod_vec3_u32(~u_input.a.wyw, vec3<u32>(var_2.a.x & 37863u, 34270u, ~76388u)), _wgslsmith_div_vec3_u32(u_input.a.yyz, countOneBits(max(u_input.a.zzy << (var_2.c % vec3<u32>(32u)), var_2.a))), u_input.a.zwx << (~var_2.a % vec3<u32>(32u)), var_2.d, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.e.x - -747f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.e.x), _wgslsmith_f_op_f32(f32(-1f) * -917f), !var_2.d))))));
    var var_3 = Struct_1(~vec3<u32>(~u_input.a.x, ~3461u, var_1) >> ((~vec3<u32>(0u, 0u, u_input.a.x) >> (vec3<u32>(31224u, var_2.b.x, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(~51981u << (reverseBits(var_2.b.x) % 32u), 1u, _wgslsmith_dot_vec4_u32(u_input.a, ~u_input.a)), ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), u_input.a), ~16498u, 24036u)), ~vec3<u32>(u_input.a.x, u_input.a.x, ~0u) << (vec3<u32>(~(~64256u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b.x, 106776u, 30623u), vec3<u32>(46084u, 47520u, u_input.a.x)), ~var_1) % vec3<u32>(32u)), all(func_3().zx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.e), var_2.e)))));
    return min(var_3.b, max(vec3<u32>(_wgslsmith_add_u32(4294967295u, var_1), 5508u, abs(46795u)), ~(~vec3<u32>(var_3.a.x, 118658u, var_1)))) ^ u_input.a.wxy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(_wgslsmith_sub_u32(1u, ~u_input.a.x) & 1u));
    let var_1 = Struct_1(select(_wgslsmith_add_vec3_u32(~vec3<u32>(15945u, u_input.a.x, u_input.a.x), func_1()), _wgslsmith_mod_vec3_u32(vec3<u32>(max(u_input.a.x, u_input.a.x), 25327u, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), (u_input.a.yxx >> (u_input.a.yyw % vec3<u32>(32u))) << (~vec3<u32>(78556u, 48294u, 6504u) % vec3<u32>(32u))), !any(vec2<bool>(false, true))), select(u_input.a.xwx, vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.a.xzz, u_input.a.zyy) << (~u_input.a.x % 32u), 4294967295u, ~(u_input.a.x >> (37663u % 32u))), true), vec3<u32>(~u_input.a.x, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x ^ 23286u, 17529u, ~4294967295u, min(u_input.a.x, 1u)), vec4<u32>(4294967295u, u_input.a.x, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 2623u, u_input.a.x, u_input.a.x), u_input.a)))), all(vec3<bool>(true, true, true)) || false, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(floor(-1152f)), 930f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-1259f * 664f), -990f))), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), true), true))));
    let var_2 = Struct_2(Struct_1(~var_1.a, _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(var_1.a.x, var_1.b.x, u_input.a.x)), ~_wgslsmith_mod_vec3_u32(u_input.a.xwz, u_input.a.wyy)), select(u_input.a.wyz, ~vec3<u32>(1u, u_input.a.x, 54036u) | ~var_1.c, true), var_1.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1130f), 270f) * _wgslsmith_f_op_vec2_f32(-var_1.e))));
    let var_3 = Struct_2(Struct_1(abs(vec3<u32>(~var_1.a.x, _wgslsmith_add_u32(u_input.a.x, 52713u), 4294967295u)), firstTrailingBit(~(~var_1.b)), u_input.a.yzw, var_1.e.x <= -488f, vec2<f32>(-724f, 200f)));
    var_0 = var_1.c.x | ~1u;
    let var_4 = 30910i;
    var var_5 = var_2.a.e;
    let var_6 = Struct_1(~vec3<u32>(_wgslsmith_clamp_u32(59461u, func_1().x, 4294967295u), (var_1.c.x ^ 0u) | var_2.a.c.x, min(1u, select(0u, var_2.a.a.x, false))), ~_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(0u, 4294967295u, var_3.a.a.x)) & firstLeadingBit(var_2.a.a), vec3<u32>(6570u, _wgslsmith_div_u32(u_input.a.x, 0u), firstLeadingBit(4294967295u))), vec3<u32>(_wgslsmith_div_u32(firstTrailingBit(u_input.a.x), 13920u), 20405u, _wgslsmith_div_u32(~var_1.a.x, var_3.a.a.x)), true == var_2.a.d, var_3.a.e);
    var var_7 = Struct_1(~(abs(vec3<u32>(9856u, 20956u, 77368u)) << (u_input.a.yxy % vec3<u32>(32u))), ~(var_1.b >> (~_wgslsmith_mult_vec3_u32(var_6.c, vec3<u32>(var_6.b.x, 22415u, var_1.c.x)) % vec3<u32>(32u))), vec3<u32>(~(var_1.b.x & u_input.a.x), 4294967295u, 1u), false, _wgslsmith_f_op_vec2_f32(abs(var_1.e)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.e.x, -1423f, var_6.e.x, var_2.a.e.x), vec4<f32>(var_5.x, var_7.e.x, -2388f, -179f)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1022f))), -1000f, 775f), ~(-49091i), var_4);
}

