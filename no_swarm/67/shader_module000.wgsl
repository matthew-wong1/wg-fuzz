struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<u32>,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-558f, 716f, -398f) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-686f, -1656f, 312f))))))), 1187f, abs(max(1u, _wgslsmith_clamp_u32(~4294967295u, abs(1u), min(u_input.c, 1u)))), vec2<u32>(u_input.c >> (4294967295u % 32u), ~u_input.c), !(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)))));
    var var_1 = var_0.a;
    let var_2 = 17520i;
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(144f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + 260f)), _wgslsmith_f_op_f32(var_0.a.x + 425f))) * var_0.a);
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1130f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.x)) + _wgslsmith_f_op_f32(abs(var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -754f))) - var_0.a), _wgslsmith_f_op_f32(sign(1440f)), _wgslsmith_clamp_u32(_wgslsmith_add_u32(~u_input.d.x, _wgslsmith_div_u32(min(var_0.d.x, 1u), u_input.d.x)), 1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 27498u, u_input.c, 4294967295u), u_input.d)), u_input.d.wz, vec2<bool>(any(var_0.e) != var_0.e.x, select(false, false, false)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: vec2<u32>) -> vec2<bool> {
    let var_0 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3())))) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-566f)), _wgslsmith_f_op_f32(select(580f, -307f, arg_0.x)))));
    let var_1 = Struct_2(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(1144f)), _wgslsmith_f_op_f32(ceil(1921f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(552f, -1244f))))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(256f, -402f, -132f), vec3<f32>(-415f, -605f, 698f))) + vec3<f32>(584f, -866f, -103f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1795f, 467f, -989f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-193f, -151f, -1182f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-475f + -957f) * _wgslsmith_f_op_f32(637f + -383f))), arg_2.x, arg_2, vec2<bool>(arg_0.x | (arg_2.x != 1u), arg_1.x)), ~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a << (arg_2.x % 32u), ~33480i), min(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.b), vec2<i32>(u_input.a, 0i)), vec2<i32>(8970i, u_input.a))), Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(max(-274f, 785f)), _wgslsmith_f_op_f32(f32(-1f) * -261f), _wgslsmith_f_op_f32(func_3())), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2494f), _wgslsmith_div_f32(445f, -352f), -315f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(792f + 488f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-210f - 1594f), 659f)), u_input.c, arg_2, arg_0));
    return vec2<bool>(select(_wgslsmith_f_op_f32(-var_1.b.x) <= var_1.c.a.x, any(vec3<bool>(true, true, arg_0.x)), false) && !var_1.c.e.x, !(!(var_1.c.b <= _wgslsmith_f_op_f32(-446f + 699f))));
}

fn func_1(arg_0: vec2<f32>) -> bool {
    let var_0 = ~countOneBits(_wgslsmith_mult_vec4_u32(min(~vec4<u32>(u_input.d.x, 0u, u_input.c, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 0u)), u_input.d));
    let var_1 = _wgslsmith_f_op_f32(2149f - _wgslsmith_f_op_f32(-arg_0.x));
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-1000f + -446f), _wgslsmith_f_op_f32(trunc(arg_0.x))))), -702f, firstTrailingBit(45874u >> (u_input.d.x % 32u)) & select(u_input.d.x, 0u ^ var_0.x, any(vec2<bool>(false, false))), u_input.d.yw, select(vec2<bool>(true, -1581f >= arg_0.x), !func_2(vec2<bool>(false, true), vec3<bool>(false, true, true), u_input.d.yw), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true)))), 1i, 2147483647i, abs(var_0), Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(249f, -1849f, -253f), _wgslsmith_f_op_vec3_f32(vec3<f32>(151f, arg_0.x, -1513f) - vec3<f32>(arg_0.x, 788f, var_1)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1, arg_0.x, 523f))), vec3<f32>(arg_0.x, arg_0.x, var_1))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_0.x))), ~firstLeadingBit(u_input.d.x | 0u), max(max(var_0.wy, ~vec2<u32>(35425u, 4294967295u)), u_input.d.xw), vec2<bool>(any(vec3<bool>(true, true, true)), false)));
    let var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, _wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(343f, var_1)))) * vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(928f + var_2.a.b))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(arg_0 * vec2<f32>(496f, 184f))))))));
    var var_4 = Struct_2(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.e.b, 492f) * _wgslsmith_f_op_vec2_f32(var_3 - vec2<f32>(var_1, 1185f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1248f, var_3.x), var_3)))), select(func_2(var_2.a.e, vec3<bool>(var_2.a.e.x, false, var_2.e.e.x), vec2<u32>(u_input.d.x, var_0.x)), !vec2<bool>(var_2.a.e.x, var_2.e.e.x), true)))), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(var_1 * 293f), _wgslsmith_f_op_f32(-1709f + -407f), _wgslsmith_f_op_f32(floor(-1077f))))), var_1, var_0.x << (var_0.x % 32u), ~(~var_0.yw), vec2<bool>(!var_2.a.e.x, false)), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(max(2147483647i, var_2.b), _wgslsmith_clamp_i32(max(var_2.c, u_input.a), u_input.b, u_input.a))), Struct_1(vec3<f32>(197f, _wgslsmith_f_op_f32(exp2(var_3.x)), -1143f), _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x - -784f), _wgslsmith_f_op_f32(var_2.e.b * -684f)))), 0u, _wgslsmith_mult_vec2_u32(u_input.d.xw, u_input.d.zw), vec2<bool>(false, true)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(!func_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-425f, 808f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1059f, 1850f) + vec2<f32>(1092f, -1200f))))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-1095f)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(505f, 1608f), _wgslsmith_f_op_f32(-391f - 1000f)))))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(550f, 810f, -940f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1721f - -257f)), u_input.c, max(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(29538u, 4294967295u), vec2<u32>(1u, u_input.c)), u_input.d.x), max(vec2<u32>(u_input.d.x, u_input.c) & vec2<u32>(56042u, 0u), u_input.d.zx)), !select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), false))), firstLeadingBit(-min(vec2<i32>(66332i, -1i), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(2147483647i, -55479i)))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(455f - 1287f) * _wgslsmith_f_op_f32(floor(1325f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3()), -390f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3())))), -1790f, 0u, vec2<u32>(~_wgslsmith_mod_u32(4294967295u, u_input.d.x), 40189u), vec2<bool>(true, true)));
    let var_1 = var_0.e;
    var var_2 = Struct_2(false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-589f, _wgslsmith_f_op_f32(570f - var_1.a.x))), Struct_1(var_1.a, _wgslsmith_f_op_f32(max(-1024f, -593f)), _wgslsmith_dot_vec2_u32(var_1.d, vec2<u32>(u_input.d.x, _wgslsmith_mult_u32(var_1.d.x, var_1.c))), reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.c, var_1.c), vec2<u32>(u_input.d.x, var_0.e.d.x), vec2<u32>(1u, var_0.e.d.x)) ^ vec2<u32>(u_input.d.x, var_1.d.x)), vec2<bool>(false, select(false, var_0.a, var_1.e.x) != !var_0.a)), firstTrailingBit(vec2<i32>(35856i, abs(2147483647i))) ^ min(~abs(var_0.d), var_0.d), var_0.c);
    let var_3 = Struct_1(vec3<f32>(-970f, -657f, -299f), 1f, select(var_2.c.d.x, 99204u, false) ^ ~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_0.c.c, u_input.d.x, 1u, 41193u)), ~vec4<u32>(var_1.c, 1u, 4892u, var_2.e.c)), _wgslsmith_mult_vec2_u32(var_2.e.d, var_1.d ^ (_wgslsmith_add_vec2_u32(vec2<u32>(var_1.d.x, 81509u), vec2<u32>(0u, var_2.c.c)) << (_wgslsmith_add_vec2_u32(vec2<u32>(1u, 14680u), var_1.d) % vec2<u32>(32u)))), !vec2<bool>(var_0.c.e.x, var_0.c.e.x));
    var_2 = Struct_2(-u_input.b < -23781i, _wgslsmith_f_op_vec2_f32(var_2.e.a.xz - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-397f, _wgslsmith_f_op_f32(var_1.a.x * -806f))))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.b, var_0.b.x))), var_0.b.x), var_3.b, ~min(~37733u, _wgslsmith_sub_u32(98066u, 1u)), countOneBits(vec2<u32>(4294967295u, 11804u)) | _wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, var_3.d.x), var_1.d), var_0.c.e), _wgslsmith_mod_vec2_i32(var_0.d, vec2<i32>(countOneBits(_wgslsmith_mult_i32(-1i, 1i)), var_2.d.x)), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, -519f, 908f)), vec3<f32>(_wgslsmith_f_op_f32(982f * var_1.b), var_0.b.x, _wgslsmith_f_op_f32(-var_3.b)), !(!vec3<bool>(var_3.e.x, true, var_3.e.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(234f, -192f))), 19014u, ~(vec2<u32>(var_1.d.x, 0u) | var_1.d) | ~var_0.c.d, var_1.e));
    var_0 = Struct_2(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1102f, var_1.b) + vec2<f32>(var_1.b, var_0.e.a.x)) + _wgslsmith_f_op_vec2_f32(max(var_1.a.yz, var_1.a.yy)))) & true, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, -992f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.x, 1483f)))))), var_2.c, vec2<i32>(var_2.d.x, _wgslsmith_dot_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, var_0.d.x, u_input.a, 0i), vec4<i32>(var_2.d.x, var_0.d.x, u_input.b, u_input.b)), vec4<i32>(~1i, var_2.d.x, var_2.d.x, u_input.a | var_2.d.x))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.e.a.x))), var_2.e.b, -1000f), var_2.e.b, ~208u, u_input.d.ww, func_2(var_1.e, !select(vec3<bool>(false, true, var_0.e.e.x), vec3<bool>(var_0.e.e.x, var_3.e.x, var_1.e.x), var_2.a), _wgslsmith_add_vec2_u32(~vec2<u32>(42844u, u_input.c), var_3.d))));
    let var_4 = Struct_2(all(!(!(!var_1.e))), _wgslsmith_f_op_vec2_f32(var_1.a.yz - _wgslsmith_f_op_vec2_f32(trunc(var_0.c.a.zx))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-299f, var_2.b.x, 196f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(198f, -1738f, 1000f)))), _wgslsmith_f_op_f32(step(228f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_2.e.b, var_1.b))))), 26072u, vec2<u32>(u_input.d.x, ~u_input.c & ~var_0.e.c), select(!func_2(vec2<bool>(true, var_1.e.x), vec3<bool>(var_1.e.x, true, true), var_0.e.d), vec2<bool>(var_1.e.x, !var_1.e.x), select(vec2<bool>(var_0.c.e.x, var_2.a), func_2(var_3.e, vec3<bool>(true, var_2.e.e.x, false), vec2<u32>(64227u, 0u)), var_2.c.e.x))), vec2<i32>(-1i, -10629i), var_2.e);
    var_0 = Struct_2(func_1(var_1.a.xy) || !(abs(var_0.d.x) < 1i), vec2<f32>(var_2.b.x, _wgslsmith_div_f32(-984f, var_0.b.x)), Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_1.a)), _wgslsmith_f_op_vec3_f32(ceil(var_4.c.a))))), 160f, ~(var_4.c.d.x << (~var_0.e.d.x % 32u)), ~u_input.d.xz, select(!var_3.e, !vec2<bool>(var_1.e.x, var_3.e.x), true)), vec2<i32>(5776i, _wgslsmith_mult_i32(abs(2549i), var_2.d.x)), var_2.e);
    var var_5 = ~var_1.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.d.wxz, max(vec3<u32>(var_4.c.c, u_input.c, 57417u) | _wgslsmith_sub_vec3_u32(vec3<u32>(36948u, var_0.e.d.x, 0u), u_input.d.wwy), u_input.d.wzy)));
}

