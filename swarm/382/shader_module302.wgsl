struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec3<bool>) -> vec3<i32> {
    return vec3<i32>(u_input.b, _wgslsmith_dot_vec3_i32(max(~vec3<i32>(u_input.a, -2147483647i, u_input.b), min(vec3<i32>(u_input.a, 28436i, u_input.c.x), vec3<i32>(0i, 14470i, 1i)) | max(vec3<i32>(u_input.c.x, u_input.a, 20880i), vec3<i32>(u_input.a, -1i, u_input.b))), select(vec3<i32>(countOneBits(1i), _wgslsmith_div_i32(20327i, 26938i), u_input.b), max(vec3<i32>(3064i, 50031i, u_input.c.x) ^ vec3<i32>(u_input.b, 1i, u_input.a), countOneBits(vec3<i32>(1i, -32109i, -22573i))), !(!vec3<bool>(arg_1.b, arg_2.x, arg_1.b)))), u_input.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec3<i32>) -> vec3<u32> {
    let var_0 = u_input.d;
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-354f, -154f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c, -1390f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.c, arg_1.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(880f, -1000f)), vec2<bool>(false, false)))))))));
    var var_3 = Struct_3(false, false, -179f);
    var_3 = Struct_3(var_3.a, arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c)), 932f)));
    return vec3<u32>(~arg_2.a, ~(abs(~2048u) >> ((arg_0.a << (select(arg_2.a, arg_0.a, var_1) % 32u)) % 32u)), u_input.d);
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1245f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.c))) * -1478f), _wgslsmith_f_op_f32(-arg_0.c)));
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, _wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(min(-998f, arg_0.c))) - vec3<f32>(_wgslsmith_f_op_f32(step(-991f, _wgslsmith_f_op_f32(sign(-265f)))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(577f, -1350f))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-672f, arg_0.c, -1000f) + vec3<f32>(arg_0.c, -2396f, var_0.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 345f, 944f) * vec3<f32>(-1000f, 2251f, var_0.x)))))), true));
    var var_1 = abs(~func_4(Struct_1(41897u), Struct_3(true, arg_0.b, _wgslsmith_f_op_f32(-arg_0.c)), Struct_1(1u), func_3(var_0.x, arg_0, vec3<bool>(true, arg_0.a, false))));
    let var_2 = vec3<u32>(min(~firstLeadingBit(~0u), 1u), u_input.d, 0u);
    var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1050f, _wgslsmith_div_f32(var_0.x, arg_0.c), _wgslsmith_f_op_f32(-arg_0.c))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-625f, var_0.x, 882f) * vec3<f32>(arg_0.c, 559f, var_0.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1116f, 772f, 1247f) + vec3<f32>(var_0.x, -1913f, var_0.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, -1000f, arg_0.c), vec3<f32>(-692f, var_0.x, 1355f), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1212f, -647f, -618f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -1000f) - vec3<f32>(-1538f, var_0.x, var_0.x))) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.c, var_0.x, -788f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_0.x, var_0.x)))))));
    return Struct_1(reverseBits(41450u));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: vec2<f32>) -> u32 {
    var var_0 = func_2(Struct_3(!select(false, true, any(vec4<bool>(true, false, false, false))), false, _wgslsmith_f_op_f32(step(-963f, arg_2.x))));
    let var_1 = select(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), ~min(~vec2<u32>(var_0.a, arg_1.b.a), vec2<u32>(72271u, 44426u) | vec2<u32>(arg_0, 0u)), reverseBits(vec2<u32>(1u, u_input.d))), vec2<u32>(~47455u, countOneBits(var_0.a >> (u_input.d % 32u)) >> (((0u & arg_1.b.a) & ~31124u) % 32u)), false);
    let var_2 = select(select(vec3<bool>(true, any(vec2<bool>(false, false)) && all(vec3<bool>(false, false, false)), any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))), !vec3<bool>(true, true, select(true, true, true)), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), 44967i < arg_1.a)), select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), vec3<bool>(true, true, true), true));
    var var_3 = var_2.x;
    var_3 = firstTrailingBit(~(_wgslsmith_mod_i32(u_input.a, u_input.c.x) << (~arg_0 % 32u))) >= -u_input.b;
    return ~u_input.d;
}

fn func_6(arg_0: vec2<i32>, arg_1: u32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(703f * -513f))), -185f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -325f) * _wgslsmith_f_op_f32(ceil(1289f))))), false)));
    let var_1 = func_2(Struct_3(false, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(517f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-539f - var_0)), _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(var_0 + 360f))));
    return Struct_3(true, arg_1 > 8159u, 1f);
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: vec3<u32>, arg_3: f32) -> u32 {
    let var_0 = !arg_0.x;
    let var_1 = vec3<bool>(true, !all(arg_0), true);
    var var_2 = !(!all(!(!vec3<bool>(true, var_1.x, true))));
    var var_3 = func_6(vec2<i32>(-17533i, u_input.b), func_5(u_input.d, Struct_2(11852i, func_2(Struct_3(var_0, true, arg_3)), 34710u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(662f, -468f), vec2<f32>(arg_3, 368f), arg_1)), vec2<f32>(-1454f, arg_3), var_1.zx))) | ~u_input.d);
    let var_4 = vec2<i32>(1i, -28365i);
    return 35999u;
}

fn func_7(arg_0: u32, arg_1: u32, arg_2: f32, arg_3: vec3<u32>) -> vec4<bool> {
    let var_0 = func_6(min(u_input.c, firstTrailingBit(~_wgslsmith_mod_vec2_i32(u_input.c, vec2<i32>(u_input.a, u_input.a)))), ~(~_wgslsmith_clamp_u32(0u, 4294967295u, arg_0) << ((1u | firstTrailingBit(41170u)) % 32u)));
    var var_1 = Struct_2(1i, Struct_1(21078u), 0u);
    let var_2 = func_2(Struct_3(false, select(false, true, var_0.b), 1237f));
    var_1 = Struct_2(-57715i, func_2(func_6(u_input.c, ~u_input.d)), 4294967295u);
    let var_3 = func_6(vec2<i32>(-1i) * -u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(~(~arg_0), ~var_1.b.a, countOneBits(~4294967295u)), _wgslsmith_clamp_vec3_u32(select(~arg_3, firstTrailingBit(vec3<u32>(9527u, 1u, 4294967295u)), true), arg_3, arg_3)));
    return vec4<bool>(!(1u == var_1.c), false, arg_0 < 1u, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(u_input.d, 39906u << (0u % 32u));
    var_0 = ~u_input.d;
    var_0 = 1u;
    let var_1 = abs(4294967295u | (51556u | (u_input.d >> (27164u % 32u))));
    let var_2 = !func_7(func_1(vec3<bool>(true, true, u_input.c.x < u_input.c.x), false, ~(vec3<u32>(4294967295u, var_1, u_input.d) >> (vec3<u32>(var_1, 36041u, u_input.d) % vec3<u32>(32u))), _wgslsmith_f_op_f32(f32(-1f) * -248f)), func_4(Struct_1(u_input.d), func_6(min(u_input.c, vec2<i32>(-8575i, -5530i)), 0u), Struct_1(var_1), ~vec3<i32>(-33554i, u_input.a, -1i)).x, _wgslsmith_f_op_f32(min(215f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -436f), -1008f, true)))), firstTrailingBit(~(~vec3<u32>(1u, 2400u, 80732u))));
    var_0 = func_2(func_6(_wgslsmith_add_vec2_i32(~u_input.c, vec2<i32>(-1i, -13885i) | u_input.c), ~(~var_1 << (1u % 32u)))).a;
    let var_3 = Struct_1(var_1);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, ~abs(_wgslsmith_mult_i32(~u_input.b, _wgslsmith_mod_i32(u_input.b, -22653i))));
}

