struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-703f + _wgslsmith_f_op_f32(-1f)), 104f, -1982f);
    return u_input.c.x;
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(500f, -1168f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(773f, 1000f) - vec2<f32>(1434f, -529f))))));
    let var_1 = Struct_2(vec4<u32>(26752u, 18244u, (_wgslsmith_mult_u32(u_input.a.x, 0u) ^ _wgslsmith_mod_u32(1u, 4294967295u)) | 0u, 4294967295u), 1i);
    var var_2 = -271f;
    var var_3 = 4294967295u;
    let var_4 = Struct_2(_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(_wgslsmith_div_u32(15866u, var_1.a.x), 0u, max(1u, 42771u), u_input.a.x)), ~(~vec4<u32>(41067u, 78424u, u_input.c.x, var_1.a.x)) & ~vec4<u32>(47252u, var_1.a.x, 0u, 23130u)), ~firstLeadingBit(-1i));
    return !select(vec3<bool>(true, !(u_input.d.x < -35552i), false), vec3<bool>(true, any(vec4<bool>(false, false, true, false)), true), !vec3<bool>(any(vec3<bool>(true, true, false)), true, any(vec2<bool>(true, true))));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    var var_0 = _wgslsmith_clamp_u32(60463u, u_input.c.x << (func_2() % 32u), 18373u);
    let var_1 = select(true, firstTrailingBit(reverseBits(14456u)) >= arg_2, all(func_3()) && arg_1.a) || arg_1.a;
    var var_2 = var_1;
    var var_3 = !(!vec3<bool>(arg_1.a, false, true));
    var var_4 = !select(vec3<bool>(arg_1.a, var_1, !(arg_0.x != -288f)), vec3<bool>(true, !func_3().x, !var_1), true);
    return Struct_2(select(~(vec4<u32>(1u, arg_2, arg_2, 77546u) >> (u_input.c % vec4<u32>(32u))), ~vec4<u32>(72210u, 32958u, u_input.e.x >> (arg_2 % 32u), u_input.a.x), false), -1i);
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_2) -> u32 {
    var var_0 = func_1(_wgslsmith_f_op_vec3_f32(round(arg_2.wyx)), Struct_1((-u_input.d.x > _wgslsmith_div_i32(-20607i, -50132i)) & true), firstTrailingBit(abs(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 528f, 139f)), Struct_1(true), 1u).a.x)));
    let var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(countOneBits(u_input.b), (u_input.b & (vec3<i32>(arg_3.b, var_0.b, arg_3.b) >> (arg_3.a.xyz % vec3<u32>(32u)))) >> (vec3<u32>(var_0.a.x, u_input.c.x, _wgslsmith_add_u32(arg_3.a.x, 4294967295u)) % vec3<u32>(32u))), select(vec3<i32>(var_0.b, -2147483647i, -23757i), reverseBits(max(vec3<i32>(var_0.b, u_input.d.x, var_0.b) >> (vec3<u32>(40455u, 1u, arg_3.a.x) % vec3<u32>(32u)), abs(u_input.b))), select(vec3<bool>(any(vec4<bool>(false, false, true, true)), true, true), vec3<bool>(true, false, func_3().x), false)));
    var_0 = arg_3;
    let var_2 = vec4<bool>(any(vec3<bool>(true, true, true)), true, !all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(arg_2.x, -1484f)))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1199f)), 958f));
    let var_3 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(trunc(arg_2.x)), _wgslsmith_f_op_f32(floor(arg_2.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.zyz)))), Struct_1(var_2.x), var_0.a.x);
    return _wgslsmith_dot_vec4_u32(countOneBits(var_0.a), ~(~func_1(vec3<f32>(arg_2.x, -692f, 3060f), Struct_1(var_2.x), ~u_input.a.x).a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(func_4(41787u, _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), u_input.b.x ^ u_input.b.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1065f, 734f, 937f, 1521f))), func_1(vec3<f32>(-1868f, -766f, 1063f), Struct_1(false), u_input.a.x)), u_input.c.x, func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-220f, 864f, 550f), vec3<f32>(639f, -1147f, -1093f)))), Struct_1(false), firstTrailingBit(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x))).a.x) & select(firstLeadingBit(~_wgslsmith_mod_vec3_u32(u_input.e, u_input.c.ywx)), ~(~vec3<u32>(u_input.c.x, u_input.e.x, 1u) ^ vec3<u32>(u_input.e.x, u_input.e.x, 1u)), true);
    var_0 = u_input.e & select(u_input.c.xzz, u_input.e, vec3<bool>(true, true, true));
    let var_1 = 1000f;
    let var_2 = firstTrailingBit(_wgslsmith_clamp_vec4_u32(u_input.c, reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.e.x, var_0.x), u_input.c)) ^ vec4<u32>(4294967295u, 0u, ~u_input.e.x, 1u), max(abs(~vec4<u32>(u_input.a.x, var_0.x, var_0.x, 0u)), vec4<u32>(5714u ^ var_0.x, ~4294967295u, 42666u, _wgslsmith_add_u32(var_0.x, u_input.e.x)))));
    var_0 = ~_wgslsmith_sub_vec3_u32(~firstLeadingBit(abs(vec3<u32>(67998u, var_0.x, 22495u))), ~(~(~vec3<u32>(2891u, 66205u, 25787u))));
    var_0 = vec3<u32>(var_2.x, abs(min(4294967295u, 1u)) ^ _wgslsmith_sub_u32(44157u, u_input.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(4294967295u, u_input.c.x) >> (u_input.a.x % 32u), var_2.x, var_0.x >> (reverseBits(30997u) % 32u), firstTrailingBit(~40482u)), select(vec4<u32>(u_input.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(6412u, u_input.e.x, u_input.c.x, 4294967295u), vec4<u32>(4294967295u, 17206u, 4294967295u, 4294967295u)), 22287u, min(var_2.x, 59494u)), var_2, _wgslsmith_f_op_f32(-var_1) != -450f)));
    var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 1u), vec2<u32>(u_input.c.x, var_2.x) & vec2<u32>(var_2.x, var_0.x)), 573u, ~4294967295u >> (1u % 32u)), select(~vec3<u32>(0u, 3322u, 1u) << ((countOneBits(var_2.xwy) >> (vec3<u32>(0u, 4294967295u, 32809u) % vec3<u32>(32u))) % vec3<u32>(32u)), ~(~(vec3<u32>(var_0.x, var_0.x, u_input.a.x) >> (var_2.xxx % vec3<u32>(32u)))), false));
    var var_3 = vec3<bool>(!all(vec3<bool>(true, func_3().x, any(vec2<bool>(false, true)))), any(vec3<bool>(false, true, true)), !(_wgslsmith_f_op_f32(step(var_1, _wgslsmith_f_op_f32(var_1 * -622f))) > var_1));
    let var_4 = abs(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, u_input.d.x, -4659i), u_input.b >> (vec3<u32>(4294967295u, 52841u, 42161u) % vec3<u32>(32u)), u_input.b), u_input.b, select(func_3(), !vec3<bool>(true, false, var_3.x), vec3<bool>(false, var_3.x, var_3.x)))) ^ _wgslsmith_sub_vec3_i32(-_wgslsmith_mod_vec3_i32(-vec3<i32>(33289i, u_input.b.x, 31442i), -u_input.b), firstLeadingBit(u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -43020i, -1i, u_input.b.x) & vec4<i32>(u_input.b.x, 22341i, var_4.x, var_4.x), vec4<i32>(u_input.b.x, -31182i, u_input.d.x, var_4.x) << (vec4<u32>(var_2.x, var_2.x, u_input.c.x, var_2.x) % vec4<u32>(32u))) ^ _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(0i, 2147483647i, var_4.x), vec3<i32>(var_4.x, 1i, 1i)), vec3<i32>(u_input.b.x, u_input.d.x, u_input.d.x)), ~var_4.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(1000f)), -515f)), vec4<i32>(_wgslsmith_sub_i32(min(-28107i, var_4.x & 2147483647i), firstTrailingBit(2147483647i)), u_input.d.x, countOneBits(-2147483647i), u_input.b.x), ~2147483647i | -u_input.b.x, 75564u);
}

