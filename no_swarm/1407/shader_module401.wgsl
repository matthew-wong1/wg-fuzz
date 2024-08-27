struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> vec2<bool> {
    var var_0 = -554f;
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(719f)), _wgslsmith_f_op_f32(730f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(196f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1156f, -1272f) - _wgslsmith_f_op_f32(206f * 751f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(501f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(251f))))))));
    var var_1 = Struct_3(Struct_1(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(4294967295u, u_input.a, u_input.a)), firstLeadingBit(vec3<u32>(0u, u_input.b, 65833u))) < (50794u & _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, 0u), vec3<u32>(4294967295u, 4294967295u, u_input.a))), i32(-1i) * -1i), reverseBits(_wgslsmith_add_vec4_i32(~abs(vec4<i32>(arg_0, arg_0, u_input.c.x, 1i)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.d.x, u_input.c.x, arg_0, u_input.c.x), _wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.d.x, -4066i, 17168i), vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, u_input.d.x)), u_input.c))), vec2<bool>(true, true));
    var var_2 = Struct_4(vec2<u32>(_wgslsmith_dot_vec4_u32(~(vec4<u32>(4365u, 9714u, u_input.a, 0u) >> (vec4<u32>(u_input.a, 1u, 59390u, 1u) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_add_u32(4294967295u, u_input.a), 1u, reverseBits(0u), ~u_input.b)), reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 12777u), vec2<u32>(u_input.a, u_input.a)))), Struct_3(Struct_1(true, _wgslsmith_sub_i32(var_1.a.b, abs(var_1.b.x))), -reverseBits(abs(var_1.b)), var_1.c));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(step(-2041f, _wgslsmith_f_op_f32(-617f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-158f - 937f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(859f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-608f, -816f))))), 203f);
    return var_2.b.c;
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(-932f, arg_1.b), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-986f, arg_1.b))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -526f), -1252f)), select(func_3(u_input.d.x), !select(vec2<bool>(arg_1.e.a, arg_1.d.a), vec2<bool>(true, arg_1.e.a), arg_1.d.a), vec2<bool>(true, true)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -393f), arg_1.b), arg_1.c));
    var var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(abs(max(vec4<i32>(arg_1.a, -2147483647i, 48772i, 16359i), vec4<i32>(19266i, u_input.d.x, 0i, u_input.d.x)) << ((vec4<u32>(arg_0, 0u, 0u, arg_0) & vec4<u32>(u_input.a, arg_0, u_input.a, 4294967295u)) % vec4<u32>(32u))), min(~_wgslsmith_mod_vec4_i32(vec4<i32>(-51799i, arg_1.e.b, u_input.d.x, arg_1.e.b), vec4<i32>(-15269i, arg_1.a, -13512i, arg_1.d.b)), abs(select(u_input.c, vec4<i32>(0i, 0i, arg_1.d.b, u_input.d.x), vec4<bool>(arg_1.e.a, arg_1.c, arg_1.d.a, arg_1.c))))), vec4<i32>(23718i, ~0i, i32(-1i) * -2147483647i, firstTrailingBit(u_input.d.x)));
    var var_2 = all(select(!(!(!vec3<bool>(true, false, arg_1.d.a))), select(select(vec3<bool>(arg_1.c, true, arg_1.c), !vec3<bool>(arg_1.d.a, true, arg_1.e.a), !vec3<bool>(false, true, arg_1.d.a)), select(vec3<bool>(false, arg_1.c, arg_1.c), vec3<bool>(false, true, true), arg_1.d.a), true | (arg_0 != u_input.b)), !(var_0.x != _wgslsmith_f_op_f32(var_0.x + var_0.x))));
    var_2 = !all(select(select(vec4<bool>(arg_1.c, arg_1.e.a, true, arg_1.e.a), !vec4<bool>(arg_1.d.a, arg_1.c, true, false), arg_1.e.a), !select(vec4<bool>(arg_1.e.a, arg_1.d.a, false, true), vec4<bool>(false, true, arg_1.c, arg_1.c), arg_1.c), select(vec4<bool>(arg_1.c, false, true, true), !vec4<bool>(arg_1.d.a, false, arg_1.d.a, arg_1.d.a), !vec4<bool>(arg_1.e.a, arg_1.c, true, true))));
    var_1 = max(max(arg_1.d.b, u_input.c.x), abs(-arg_1.a));
    return ~(-min(~min(u_input.c.x, u_input.c.x), _wgslsmith_add_i32(arg_1.e.b, abs(u_input.c.x))));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_4) -> vec2<f32> {
    var var_0 = arg_0.a & (arg_2.b.a.b & -1i);
    var_0 = arg_0.e.b;
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1055f)) * -724f);
    var var_3 = select(u_input.c.ywz, vec3<i32>(u_input.d.x, _wgslsmith_clamp_i32(abs(abs(arg_0.d.b)), _wgslsmith_mult_i32(func_2(63079u, Struct_2(6291i, arg_0.b, true, Struct_1(true, -1i), Struct_1(var_1, -34478i))), 1i), reverseBits(_wgslsmith_clamp_i32(u_input.c.x, -2147483647i, arg_2.b.b.x))), 2147483647i), false | all(vec4<bool>(!arg_0.c, 651f >= var_2, all(vec4<bool>(true, arg_2.b.c.x, arg_2.b.c.x, arg_2.b.c.x)), arg_0.c | false)));
    return vec2<f32>(_wgslsmith_f_op_f32(arg_0.b - var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1186f - _wgslsmith_f_op_f32(749f - arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(1126f, 1607f), -1000f)) * vec2<f32>(1f, 1f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-665f, _wgslsmith_f_op_f32(trunc(-126f))) - vec2<f32>(1f, 1f)) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_1(Struct_2(41899i, -1007f, true, Struct_1(false, u_input.c.x), Struct_1(true, -1i)), vec2<bool>(false, true), Struct_4(vec2<u32>(u_input.a, 21378u), Struct_3(Struct_1(true, u_input.c.x), vec4<i32>(-7343i, u_input.d.x, -33116i, 0i), vec2<bool>(true, false))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(823f, -332f)), vec2<bool>(true, true))), vec2<f32>(_wgslsmith_f_op_f32(1217f + -683f), _wgslsmith_f_op_f32(f32(-1f) * -578f))))));
    var_0 = vec2<f32>(-990f, var_0.x);
    let var_1 = Struct_3(Struct_1(func_3(max(u_input.c.x << (1u % 32u), u_input.d.x)).x, -13823i), _wgslsmith_mult_vec4_i32(vec4<i32>(-3561i, reverseBits(0i), min(~u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-17311i, u_input.c.x, u_input.d.x, u_input.d.x), u_input.c)), (u_input.d.x << (34748u % 32u)) << (_wgslsmith_div_u32(25018u, 1u) % 32u)), vec4<i32>(~(-8362i) << (_wgslsmith_add_u32(u_input.b, u_input.a) % 32u), 1i, -(~u_input.c.x), -45549i)), !select(func_3(-2147483647i), vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(false, true, true, true)), true)));
    let var_2 = 1f;
    var var_3 = Struct_4(select(abs(~vec2<u32>(u_input.a, u_input.b)) >> ((vec2<u32>(u_input.a, u_input.b) | abs(vec2<u32>(58506u, 4294967295u))) % vec2<u32>(32u)), vec2<u32>(u_input.a, ~66050u), var_1.c), var_1);
    let var_4 = var_3.b;
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(-1025f)), 397f);
    var_3 = Struct_4(vec2<u32>(~(1u << (u_input.a % 32u)), 31457u), Struct_3(Struct_1(false, _wgslsmith_div_i32(var_1.b.x, u_input.c.x)), u_input.c ^ (var_3.b.b ^ (u_input.c & vec4<i32>(20320i, -2147483647i, var_1.a.b, var_4.a.b))), !vec2<bool>(true, select(true, var_4.a.a, true))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(1652f)))))), _wgslsmith_f_op_f32(-var_2));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(u_input.a, 15195u, var_3.a.x), var_4.a.b, firstLeadingBit(abs(vec3<i32>(-1i, -1i, 0i))), 104621u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-684f))));
}

