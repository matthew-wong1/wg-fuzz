struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec4<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: vec3<u32>) -> u32 {
    let var_0 = 47653i;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(571f, 719f, 694f, 391f), vec4<f32>(-558f, -677f, -260f, -242f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, -115f, 696f, 673f), vec4<f32>(1045f, 140f, 915f, 1004f))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(204f, 1000f, -170f, -571f)))))));
    let var_2 = var_1;
    var var_3 = _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(8768u, _wgslsmith_sub_u32(arg_2.x, 26167u), arg_2.x), arg_2 & vec3<u32>(arg_2.x, u_input.c, arg_1.x)), ~_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(66086u, 69270u, 26081u), arg_2, vec3<u32>(0u, 41523u, arg_1.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.x, 0u, u_input.c), vec3<u32>(arg_2.x, arg_2.x, 0u)))) & _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 4294967295u, abs(arg_2.x)), ~vec3<u32>(arg_2.x, 62870u, u_input.c)), abs(~(vec3<u32>(arg_2.x, u_input.c, 4284u) & vec3<u32>(4294967295u, arg_2.x, 2005u))));
    var var_4 = Struct_1(var_2.a);
    return arg_1.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<i32>) -> Struct_3 {
    var var_0 = countOneBits(u_input.c) >> ((countOneBits(~min(u_input.c, 4294967295u)) >> (~reverseBits(func_3(false, arg_0.xx, vec3<u32>(u_input.c, arg_0.x, arg_0.x))) % 32u)) % 32u);
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1410f), _wgslsmith_f_op_f32(step(-786f, 1600f)), _wgslsmith_div_f32(-2284f, 1318f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-457f, -124f, -1005f))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1363f, 773f, -473f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-608f, 414f, -416f) + vec3<f32>(-383f, -740f, 1122f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-985f, -494f, 586f) + vec3<f32>(1000f, 296f, -443f)) + vec3<f32>(_wgslsmith_div_f32(-762f, 1000f), 791f, _wgslsmith_f_op_f32(-137f - -412f)))));
    var_0 = _wgslsmith_div_u32(~u_input.c, 1u);
    var_0 = 1u;
    let var_2 = ~_wgslsmith_mult_u32(~_wgslsmith_add_u32(arg_0.x >> (u_input.c % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c, 29658u, 4294967295u), vec4<u32>(u_input.c, 37178u, arg_0.x, arg_0.x))), ~_wgslsmith_sub_u32(0u, u_input.c));
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(step(413f, var_1.x))))), ~arg_0.x);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1995f + arg_1.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-906f)), _wgslsmith_f_op_f32(floor(-834f))))))), firstTrailingBit(8992u));
    var_0 = func_2(vec3<u32>(_wgslsmith_add_u32(var_0.b, 1u), firstTrailingBit(firstLeadingBit(24887u)), ~(~var_0.b)), vec4<i32>(max(u_input.b.x, -19218i), 29497i, select(u_input.a, _wgslsmith_sub_i32(-2147483647i, u_input.b.x), select(false, false, false)) << (~arg_0 % 32u), _wgslsmith_div_i32(-74419i, u_input.a) << (u_input.c % 32u)));
    let var_1 = -abs(vec3<i32>(_wgslsmith_mod_i32(u_input.b.x, 1i), u_input.b.x, -46310i)) ^ u_input.b.xyy;
    return Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-2144f, _wgslsmith_f_op_f32(max(-718f, arg_1.a)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1993f, -180f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-610f, arg_1.a)) * _wgslsmith_f_op_f32(abs(arg_1.a))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-901f + var_0.a), _wgslsmith_f_op_f32(ceil(2138f))))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, -527f, _wgslsmith_f_op_f32(ceil(var_0.a)), arg_1.a)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> Struct_3 {
    let var_0 = arg_2;
    let var_1 = 1525f;
    var var_2 = vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, ~(~u_input.c), ~countOneBits(1u), 4294967295u), firstTrailingBit(vec4<u32>(firstLeadingBit(1u), ~u_input.c, arg_2.a << (69575u % 32u), 122420u))), _wgslsmith_mod_u32(arg_2.a, var_0.a), ~(~u_input.c) | ~_wgslsmith_mult_u32(firstTrailingBit(u_input.c), ~u_input.c));
    let var_3 = func_4(~12080u, Struct_3(1499f, ~(~12260u)), ~u_input.c);
    let var_4 = Struct_3(arg_0.a.x, var_0.a ^ _wgslsmith_mult_u32(4294967295u, _wgslsmith_mod_u32(min(1u, 4294967295u), ~arg_2.a)));
    return var_4;
}

fn func_6(arg_0: Struct_3, arg_1: bool, arg_2: vec4<u32>) -> StorageBuffer {
    var var_0 = arg_2;
    var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 36734u, ~arg_0.b, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 57760u, u_input.c, arg_0.b), vec4<u32>(43075u, arg_2.x, 30984u, arg_0.b)) | _wgslsmith_mod_u32(1u, ~u_input.c)), arg_2);
    let var_1 = countOneBits(1u);
    let var_2 = Struct_3(arg_0.a, _wgslsmith_clamp_u32(countOneBits(abs(~var_1)), abs(~u_input.c) | 32698u, func_3(true, arg_2.yw, var_0.wwy)));
    var_0 = vec4<u32>(u_input.c << (~(~63709u) % 32u), ~(~4294967295u), 0u, firstTrailingBit(1u));
    return StorageBuffer(2850f, _wgslsmith_sub_u32(_wgslsmith_add_u32(4294967295u, var_2.b), _wgslsmith_div_u32(arg_0.b, var_0.x)), _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(818f, arg_0.a, var_2.a, arg_0.a)))))), -(~abs(vec4<i32>(u_input.b.x, 2147483647i, -1i, u_input.b.x))));
}

fn func_1() -> StorageBuffer {
    return func_6(func_5(func_4(u_input.c, func_2(vec3<u32>(0u, 0u, 1u), vec4<i32>(2147483647i, 1i, 1i, 1i)), 59408u), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(542f, -656f, false)), -1305f, 750f, 1002f)), Struct_2(1u, select(vec2<i32>(27045i, 48874i), abs(vec2<i32>(u_input.b.x, u_input.a)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1105f)), _wgslsmith_f_op_f32(1564f - -1000f))))), !(!(-36594i <= u_input.a) == (_wgslsmith_clamp_u32(u_input.c, 1300u, 4294967295u) != _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 0u, 4294967295u), vec4<u32>(74687u, 9352u, 0u, 1u)))), _wgslsmith_add_vec4_u32(~((vec4<u32>(1u, 52136u, 57735u, u_input.c) ^ vec4<u32>(u_input.c, 0u, 0u, u_input.c)) & (vec4<u32>(u_input.c, u_input.c, 4048u, u_input.c) & vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c))), vec4<u32>(u_input.c, select(4294967295u, 0u, true), u_input.c, u_input.c) & ~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 41236u, u_input.c, 1u), vec4<u32>(u_input.c, 40646u, u_input.c, u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

