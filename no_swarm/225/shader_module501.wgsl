struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<f32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    let var_0 = u_input.d.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1651f, 1166f)))) * vec2<f32>(_wgslsmith_f_op_f32(-1545f - 609f), _wgslsmith_div_f32(-914f, -481f)))) + vec2<f32>(-244f, 1f));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x - 1497f), _wgslsmith_f_op_f32(floor(-730f)))))), 9675u, any(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), vec4<f32>(595f, -429f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-588f + -1240f))) * _wgslsmith_f_op_f32(-var_1.x))));
    var var_3 = Struct_2(-vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(10671i, 2147483647i), u_input.b), u_input.a.x, ~38945i, ~(-12574i)), !select(!select(vec4<bool>(true, var_2.c, var_2.c, var_2.c), vec4<bool>(var_2.c, var_2.c, var_2.c, true), true), vec4<bool>(any(vec3<bool>(var_2.c, false, var_2.c)), var_2.c, var_2.c, !var_2.c), var_2.c), ~(~(~vec2<u32>(1u, u_input.d.x))) | countOneBits(u_input.e.zx));
    let var_4 = var_2.c;
    return 43839i;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: u32, arg_3: i32) -> vec3<f32> {
    var var_0 = -(~_wgslsmith_sub_i32(arg_3, _wgslsmith_add_i32(-5938i ^ arg_3, u_input.b)));
    let var_1 = arg_2;
    var_0 = func_3();
    var_0 = ~(~((~u_input.b << (max(1u, arg_0) % 32u)) >> (~arg_2 % 32u)));
    var var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(arg_1, -300f)), arg_1, 1001f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1, -1770f, arg_1)))))), _wgslsmith_mod_vec3_u32(~min(reverseBits(vec3<u32>(arg_2, arg_2, 1u)), vec3<u32>(0u, 100240u, 9587u)), vec3<u32>(~50821u, arg_0, _wgslsmith_div_u32(4294967295u, 129592u)) >> (vec3<u32>(_wgslsmith_mult_u32(var_1, 0u), 1u, _wgslsmith_add_u32(u_input.e.x, var_1)) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-886f, arg_1, arg_1))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1, -1239f, 928f))), vec3<f32>(-107f, _wgslsmith_f_op_f32(round(1792f)), _wgslsmith_f_op_f32(521f * arg_1)), vec3<bool>(true, true, true)))), u_input.b, _wgslsmith_dot_vec2_u32(u_input.e.xx, _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(~u_input.d.zx, _wgslsmith_sub_vec2_u32(vec2<u32>(var_1, arg_2), vec2<u32>(var_1, 16542u))), _wgslsmith_clamp_vec2_u32(u_input.d.yx, u_input.d.yz, vec2<u32>(u_input.e.x, 0u)))));
    return vec3<f32>(_wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(780f * 376f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(var_2.c.x, var_2.c.x))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<u32>) -> i32 {
    var var_0 = arg_1 >> (~(~(reverseBits(u_input.d.yx) >> (_wgslsmith_sub_vec2_u32(u_input.d.xx, vec2<u32>(arg_1.x, u_input.d.x)) % vec2<u32>(32u)))) % vec2<u32>(32u));
    let var_1 = max(1u, ~0u);
    var_0 = firstLeadingBit(min(~vec2<u32>(37625u, ~0u), u_input.d.zy));
    let var_2 = Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(max(84588u, var_1), 1497f, ~u_input.c, max(23404i, u_input.a.x))) - _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_mod_u32(arg_1.x, 4294967295u), _wgslsmith_f_op_f32(max(408f, 277f)), ~0u, -2147483647i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1478f, -288f, -806f)))))), u_input.e, vec3<f32>(_wgslsmith_f_op_f32(-1899f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1787f * 653f), _wgslsmith_f_op_f32(686f * 788f)))), _wgslsmith_f_op_f32(-1000f + -1163f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2068f)))), 1i, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u >> (u_input.d.x % 32u), 1u, _wgslsmith_add_u32(var_0.x, 1u))), firstLeadingBit(_wgslsmith_mod_vec3_u32(max(u_input.d, vec3<u32>(20260u, u_input.c, 1u)), vec3<u32>(u_input.e.x, 42303u, 0u) << (vec3<u32>(arg_1.x, var_1, 4294967295u) % vec3<u32>(32u))))));
    var var_3 = !(!select(!(!arg_0), arg_0, vec2<bool>(-40649i < u_input.a.x, !arg_0.x)));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(96503u, 1u, u_input.c, max(~(41175u & u_input.c), u_input.e.x | (abs(107313u) >> ((u_input.e.x & 1u) % 32u))));
    let var_1 = var_0.x;
    let var_2 = 1669u;
    let var_3 = Struct_3(6512i, false, Struct_2(vec4<i32>(func_1(vec2<bool>(true, false), u_input.e.yz), u_input.b, -31765i ^ u_input.a.x, u_input.a.x ^ -24333i) | _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(-1i, u_input.a.x, 2147483647i, u_input.a.x)), vec4<i32>(0i, 8176i, 1i, 10271i) >> (var_0 % vec4<u32>(32u))), vec4<bool>(all(vec2<bool>(true, true)), all(vec4<bool>(false, true, false, false)) && true, any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))), true), ~var_0.xz));
    var var_4 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(abs(50590u), _wgslsmith_f_op_f32(-1850f + 802f), var_1 | 1u, -u_input.b)) * vec3<f32>(_wgslsmith_f_op_f32(sign(771f)), 1000f, 1000f))), var_0.zzz & var_0.ywz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-181f * _wgslsmith_f_op_f32(f32(-1f) * -545f)), 1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1929f)))))), abs(~(-2147483647i) & func_3()), min(reverseBits(var_1), 20107u));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_sub_vec3_u32(~_wgslsmith_clamp_vec3_u32(u_input.e, var_4.b, u_input.d), ~(~vec3<u32>(1u, var_2, var_2)))), _wgslsmith_dot_vec2_u32(vec2<u32>(max(_wgslsmith_div_u32(0u, var_2), var_1), 74046u), select(~vec2<u32>(var_2, 1u), var_0.yz, 447f != var_4.c.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_4.a) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1085f, -104f, _wgslsmith_f_op_f32(f32(-1f) * -1415f)), _wgslsmith_f_op_vec3_f32(var_4.c * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-463f, 195f, 1277f))), true))), vec3<i32>(select(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-3366i, -2147483647i, var_3.c.a.x), vec3<i32>(0i, 2147483647i, u_input.b))), _wgslsmith_add_i32(22483i, -2147483647i), true), reverseBits(_wgslsmith_div_i32(abs(1i), _wgslsmith_clamp_i32(-1i, 16871i, u_input.b))), u_input.b), -(~vec2<i32>(-1i, var_4.d) & vec2<i32>(-2147483647i, _wgslsmith_mult_i32(0i, 2147483647i))));
}

