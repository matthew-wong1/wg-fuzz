struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec3<u32>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<u32>) -> vec3<bool> {
    let var_0 = _wgslsmith_div_i32(1i, u_input.a.x);
    var var_1 = _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_0, abs(-11982i)), -min(arg_1.c, ~vec2<i32>(u_input.a.x, var_0))), ~vec2<i32>(1i, u_input.a.x));
    let var_2 = vec4<u32>(~_wgslsmith_dot_vec2_u32(arg_2, vec2<u32>(29531u, arg_1.b.c)), max(~_wgslsmith_dot_vec3_u32(arg_1.a.zyz, arg_1.a.yxw), ~_wgslsmith_sub_u32(62799u, arg_0.b.c)), arg_2.x, _wgslsmith_mod_u32(0u, arg_1.b.c)) << (vec4<u32>(1u, ~arg_2.x, ~(~(~89363u)), select(~(~18797u), ~(arg_1.a.x ^ 4024u), all(arg_0.b.a.zx))) % vec4<u32>(32u));
    let var_3 = arg_0.b.b;
    var var_4 = arg_0;
    return vec3<bool>(arg_1.b.a.x, arg_0.b.a.x, all(select(vec2<bool>(true, arg_1.b.a.x), !vec2<bool>(arg_0.b.a.x, var_4.b.a.x), !select(vec2<bool>(arg_0.b.a.x, arg_1.b.a.x), vec2<bool>(arg_1.b.a.x, false), true))));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: bool) -> f32 {
    let var_0 = Struct_4(Struct_2(~1u, Struct_1(select(vec3<bool>(arg_1, arg_2, true), func_3(Struct_2(0u, Struct_1(vec3<bool>(arg_1, false, false), 907f, 31455u), true), Struct_3(vec4<u32>(32798u, 4294967295u, 67114u, 52394u), Struct_1(vec3<bool>(arg_2, true, arg_2), -1000f, 0u), vec2<i32>(u_input.a.x, u_input.a.x)), vec2<u32>(1u, 54197u)), all(vec4<bool>(true, arg_2, arg_2, arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(847f, -406f, false)) * _wgslsmith_f_op_f32(f32(-1f) * -407f)), 4294967295u), !all(vec3<bool>(true, false, arg_2))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))) + _wgslsmith_f_op_f32(f32(-1f) * -501f)), -721f), ~vec3<u32>(~79450u, _wgslsmith_mod_u32(~0u, 1u), 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1404f, -1000f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-390f * 867f), _wgslsmith_f_op_f32(1375f - -216f))) - _wgslsmith_f_op_f32(f32(-1f) * -887f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1512f, -1000f), _wgslsmith_f_op_f32(-1844f - -154f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(622f)), -1033f, _wgslsmith_f_op_f32(1664f + 1732f)) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -590f), 1420f, 1835f))));
    var var_1 = _wgslsmith_dot_vec2_u32(~(var_0.c.zx | vec2<u32>(~38972u, max(var_0.c.x, 4294967295u))), select(vec2<u32>(14811u, _wgslsmith_dot_vec3_u32(var_0.c, select(var_0.c, vec3<u32>(1u, var_0.a.a, var_0.a.b.c), vec3<bool>(false, arg_2, true)))), _wgslsmith_div_vec2_u32(var_0.c.zz & (vec2<u32>(93599u, 1u) & var_0.c.xx), var_0.c.yy), true));
    var var_2 = var_0.a;
    let var_3 = var_0.a;
    var_1 = (abs(var_3.a) | ~firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), var_0.c.zz))) ^ abs(_wgslsmith_sub_u32(~firstLeadingBit(0u), _wgslsmith_clamp_u32(4294967295u, ~var_3.a, ~var_0.c.x)));
    return _wgslsmith_f_op_f32(floor(-366f));
}

fn func_1() -> f32 {
    let var_0 = countOneBits(vec4<i32>(-1i) * -abs(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -21316i)));
    var var_1 = 1574f;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1110f), -1054f, true)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1215f), -2031f)), _wgslsmith_f_op_f32(trunc(-482f))));
    var_1 = var_2;
    var_1 = _wgslsmith_f_op_f32(func_2((~_wgslsmith_sub_i32(var_0.x, u_input.a.x) ^ u_input.a.x) & (var_0.x | u_input.a.x), false, false));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(Struct_2(41932u, Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(func_1()), _wgslsmith_div_u32(_wgslsmith_mod_u32(1u, 19217u), ~26665u)), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, -1i), vec3<i32>(-15722i, 15810i, u_input.a.x), u_input.a), firstTrailingBit(u_input.a)) < -54972i), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(970f, -472f), vec2<f32>(-3164f, -173f))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(2020f, -1100f), vec2<f32>(798f, -623f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(735f, 783f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1000f * 350f), 1119f) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-735f, -1000f) * vec2<f32>(385f, 306f))))), any(select(vec3<bool>(true, true, true), func_3(Struct_2(53792u, Struct_1(vec3<bool>(false, true, true), 618f, 78691u), false), Struct_3(vec4<u32>(3803u, 4294967295u, 109752u, 0u), Struct_1(vec3<bool>(true, true, false), -1000f, 4294967295u), vec2<i32>(u_input.a.x, -1448i)), vec2<u32>(5149u, 44371u)), true)))), select(~vec3<u32>(~17987u, min(26381u, 4294967295u), 1u), vec3<u32>(4294967295u, _wgslsmith_mod_u32(4294967295u, 1u), 46000u), vec3<bool>(u_input.a.x != (-1i & u_input.a.x), false, !(u_input.a.x < u_input.a.x))), _wgslsmith_div_f32(-1028f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(101f - 776f) + _wgslsmith_div_f32(773f, 1722f)) + 1553f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1481f + _wgslsmith_f_op_f32(f32(-1f) * -404f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.a.x, false, false))), 845f)));
    var_0 = Struct_4(Struct_2(~47989u, Struct_1(select(!var_0.a.b.a, !vec3<bool>(var_0.a.b.a.x, var_0.a.c, true), var_0.a.b.a.x), var_0.a.b.b, _wgslsmith_sub_u32(_wgslsmith_div_u32(73350u, var_0.c.x), var_0.a.a)), false), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.e.yx - var_0.e.yy) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(397f, var_0.e.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_0.e.yx * vec2<f32>(-1622f, var_0.a.b.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, 265f))))))), var_0.c & _wgslsmith_mod_vec3_u32(var_0.c ^ reverseBits(var_0.c), vec3<u32>(var_0.a.a, 0u, ~4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(876f - var_0.d), _wgslsmith_f_op_f32(f32(-1f) * -1712f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.x, var_0.b.x, var_0.b.x))))))));
    var_0 = Struct_4(Struct_2(reverseBits(var_0.a.b.c | _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 60139u, 24863u), vec3<u32>(4294967295u, 1u, 4294967295u))), Struct_1(select(var_0.a.b.a, vec3<bool>(false, var_0.a.c, false), !var_0.a.c), _wgslsmith_f_op_f32(min(-274f, _wgslsmith_f_op_f32(var_0.e.x - var_0.b.x))), var_0.c.x), var_0.a.b.a.x), _wgslsmith_f_op_vec2_f32(-var_0.e.yz), var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d * _wgslsmith_f_op_f32(f32(-1f) * -1315f)) - _wgslsmith_f_op_f32(f32(-1f) * -753f)), 132f, 420f));
    let var_1 = abs(~vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x)) << (~vec4<u32>(abs(max(var_0.a.b.c, var_0.a.a)), 1u, 4294967295u, var_0.c.x & ~5608u) % vec4<u32>(32u));
    var var_2 = Struct_1(!var_0.a.b.a, _wgslsmith_f_op_f32(floor(1434f)), _wgslsmith_dot_vec4_u32(max(select(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a.a, var_0.a.a, var_0.c.x, var_0.c.x), vec4<u32>(var_0.c.x, 12275u, 44095u, 68759u)), vec4<u32>(8319u, 1u, 27707u, 1u) | vec4<u32>(var_0.a.a, var_0.a.b.c, 0u, 39631u), vec4<bool>(var_0.a.b.a.x, var_0.a.b.a.x, var_0.a.c, true)), vec4<u32>(abs(0u), abs(var_0.a.b.c), abs(1u), firstLeadingBit(var_0.a.b.c))), max(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_0.a.b.c, 72259u, 0u), vec4<u32>(var_0.c.x, var_0.a.a, 35116u, 53075u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.b.c, var_0.a.b.c, var_0.a.b.c), var_0.c), _wgslsmith_sub_u32(var_0.a.b.c, 1u), reverseBits(1u), ~var_0.c.x))));
    var var_3 = all(func_3(var_0.a, Struct_3(vec4<u32>(1u, ~var_2.c, ~1u, _wgslsmith_dot_vec3_u32(var_0.c, var_0.c)), var_0.a.b, var_1.xy), ~min(~var_0.c.zy, abs(vec2<u32>(4294967295u, 4294967295u)))));
    let var_4 = Struct_3(~select(select(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a.b.c, var_2.c, 1u, var_2.c), vec4<u32>(var_2.c, var_0.c.x, var_0.a.b.c, var_0.c.x)), ~vec4<u32>(var_2.c, 6076u, 772u, 66898u), vec4<bool>(false, var_2.a.x, var_2.a.x, var_0.a.b.a.x)), ~(~vec4<u32>(var_0.c.x, 85308u, 4294967295u, var_2.c)), select(!vec4<bool>(false, false, var_0.a.b.a.x, true), select(vec4<bool>(var_2.a.x, var_2.a.x, false, var_2.a.x), vec4<bool>(var_2.a.x, true, var_2.a.x, var_2.a.x), vec4<bool>(false, var_0.a.b.a.x, var_0.a.b.a.x, var_2.a.x)), select(vec4<bool>(var_0.a.b.a.x, true, var_2.a.x, true), vec4<bool>(var_2.a.x, false, true, var_2.a.x), vec4<bool>(true, false, true, true)))), Struct_1(vec3<bool>(var_2.a.x, !var_0.a.b.a.x, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -574f) - var_0.b.x), -1874f), 1u), vec2<i32>(firstTrailingBit(select(_wgslsmith_dot_vec4_i32(var_1, var_1), ~(-22636i), true)), -7875i));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

