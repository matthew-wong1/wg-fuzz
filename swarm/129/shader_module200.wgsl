struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: vec3<f32>,
    d: i32,
    e: vec3<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec2<i32>, 2>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: i32, arg_1: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2443f - 1141f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, -121f))) - _wgslsmith_f_op_f32(-arg_1))));
    return ~u_input.b;
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = vec3<bool>(true, false, !all(vec4<bool>(true, false, false, true)));
    var var_1 = 8267u;
    global1 = array<vec2<i32>, 2>();
    global1 = array<vec2<i32>, 2>();
    return -16928i;
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_4, arg_3: u32) -> Struct_3 {
    var var_0 = arg_3;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1442f + _wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), 1000f), _wgslsmith_f_op_f32(sign(global0.x))))), -979f);
    var var_2 = ~vec2<u32>(u_input.a.x, abs(firstLeadingBit(arg_2.a.x)));
    var var_3 = Struct_2(select(vec4<bool>(u_input.a.x >= var_2.x, !any(vec3<bool>(true, true, false)), select(true, true, var_1.x >= 1693f), arg_3 < 46475u), !vec4<bool>(all(vec4<bool>(false, true, false, true)), false, false, true), false), Struct_1(-vec3<i32>(-14952i, func_2(28363i, -1000f), func_3(vec3<i32>(0i, 0i, arg_1), Struct_1(vec3<i32>(arg_0.x, 30793i, 1i), -1i, vec3<u32>(1u, arg_2.a.x, 0u), vec3<u32>(1u, arg_2.a.x, 4294967295u), var_2.x), Struct_1(arg_0.yxy, 1i, vec3<u32>(arg_2.a.x, 21956u, u_input.a.x), vec3<u32>(0u, 53156u, arg_3), var_2.x))), ~_wgslsmith_div_i32(reverseBits(24580i), -1i), ~select(arg_2.a.ywy, vec3<u32>(arg_3, 43821u, 1u), true), ~arg_2.a.zzx, var_2.x), Struct_1(vec3<i32>(u_input.b, _wgslsmith_div_i32(arg_1, u_input.b), -func_3(arg_0.wwz, Struct_1(arg_0.xyx, 19669i, vec3<u32>(arg_2.a.x, 0u, var_2.x), vec3<u32>(68448u, 4294967295u, arg_2.a.x), arg_2.a.x), Struct_1(arg_0.xzy, -17251i, arg_2.a.wxz, vec3<u32>(u_input.a.x, arg_3, 7161u), arg_2.a.x))), -1i, max(~arg_2.a.xwz, arg_2.a.wyz), vec3<u32>(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(0u, 0u, var_2.x, arg_3)), ~vec4<u32>(44126u, u_input.a.x, 11445u, arg_2.a.x)), u_input.a.x, _wgslsmith_sub_u32(44319u << (arg_2.a.x % 32u), arg_3)), ~arg_2.a.x));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(var_1)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_1))))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_1)))))));
    return Struct_3(-arg_0.x, var_3.a, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, var_1.x, 1124f), var_1)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1594f, -1575f, global0.x) + var_1))))), -19480i, countOneBits(var_3.b.c >> (select(reverseBits(arg_2.a.wwy), ~var_3.c.d, true) % vec3<u32>(32u))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_3) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(860f)), _wgslsmith_f_op_f32(-arg_2.c.x), _wgslsmith_f_op_f32(ceil(global0.x)), arg_2.c.x)) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(511f, -198f, global0.x, 1433f))))))))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.c.x * 486f), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -506f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * -1260f)))), 858f);
    var var_1 = firstLeadingBit(countOneBits(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 4294967295u, 0u, 35095u), firstTrailingBit(vec4<u32>(50333u, arg_2.e.x, u_input.a.x, arg_2.e.x))), 4294967295u, 4294967295u, 37673u)));
    var var_2 = countOneBits(arg_1.a);
    var_2 = _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(arg_1.a, -_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 2147483647i, 2147483647i), arg_1.a, arg_1.a)) | _wgslsmith_sub_vec3_i32(-vec3<i32>(arg_1.b, u_input.b, -9393i), vec3<i32>(u_input.b ^ -3076i, var_2.x, 21367i)), abs(abs(select(arg_1.a, arg_1.a, vec3<bool>(arg_2.b.x, false, arg_2.b.x)))));
    return ~_wgslsmith_add_vec4_i32(select(vec4<i32>(u_input.b, 2147483647i, -1i, -2147483647i) << (vec4<u32>(arg_2.e.x, arg_2.e.x, 42140u, arg_2.e.x) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(-vec4<i32>(arg_2.a, arg_0.x, 2180i, 2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -16065i, 42575i, 875i), vec4<i32>(u_input.b, arg_2.a, -1i, u_input.b))), arg_2.b), min(select(_wgslsmith_mult_vec4_i32(vec4<i32>(-39212i, arg_1.b, -2147483647i, arg_2.a), vec4<i32>(-28459i, arg_2.a, arg_1.b, -55429i)), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 10316i, arg_2.a, 25918i), vec4<i32>(arg_0.x, arg_2.d, 12905i, arg_2.a)), arg_2.d <= arg_0.x), firstLeadingBit(vec4<i32>(arg_0.x, 2147483647i, -3164i, var_2.x) | vec4<i32>(u_input.b, var_2.x, arg_0.x, -600i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec4_i32(-firstLeadingBit(vec4<i32>(max(u_input.b, u_input.b), u_input.b, reverseBits(-1i), -16205i)), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(func_4(vec3<i32>(u_input.b, -74923i, u_input.b) & vec3<i32>(u_input.b, u_input.b, -8718i), Struct_1(vec3<i32>(-25129i, u_input.b, 26334i), 37717i, vec3<u32>(u_input.a.x, u_input.a.x, 37954u), vec3<u32>(0u, 0u, 1u), u_input.a.x), func_1(vec4<i32>(16522i, 2147483647i, -43954i, u_input.b), u_input.b, Struct_4(vec4<u32>(34949u, 11354u, 32070u, 51368u)), u_input.a.x)), vec4<i32>(firstTrailingBit(18690i), -2147483647i, ~u_input.b, _wgslsmith_sub_i32(u_input.b, 0i))), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, -2147483647i, 6630i, -1i) << (vec4<u32>(8290u, u_input.a.x, u_input.a.x, 45408u) % vec4<u32>(32u)), ~vec4<i32>(4955i, 6828i, u_input.b, u_input.b))));
    var var_1 = func_1(vec4<i32>(-1i, firstLeadingBit(0i) ^ -(~var_0.x), ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(u_input.b, 18213i, -2147483647i) ^ var_0.wwz), _wgslsmith_sub_i32(var_0.x, u_input.b) & 1i), u_input.b, Struct_4(vec4<u32>(u_input.a.x, ~(~0u), _wgslsmith_mod_u32(min(u_input.a.x, u_input.a.x), ~22189u), u_input.a.x)), _wgslsmith_mult_u32(firstLeadingBit(u_input.a.x), (u_input.a.x << (4294967295u % 32u)) << (_wgslsmith_mult_u32(4379u, u_input.a.x) % 32u)) << (~((u_input.a.x | 26882u) | abs(0u)) % 32u));
    var var_2 = vec3<bool>(var_1.b.x, false, _wgslsmith_div_u32(var_1.e.x, max(var_1.e.x, u_input.a.x) >> (38751u % 32u)) <= ~(~_wgslsmith_div_u32(1u, 22550u)));
    var var_3 = Struct_2(var_1.b, Struct_1((firstLeadingBit(vec3<i32>(-66736i, u_input.b, 2147483647i)) | var_0.xzy) & firstLeadingBit(vec3<i32>(var_1.a, 1i, var_1.d)), i32(-1i) * -func_1(vec4<i32>(u_input.b, -2147483647i, 13814i, var_0.x), var_1.a, Struct_4(vec4<u32>(28052u, 4294967295u, 22119u, var_1.e.x)), 4294967295u).a, var_1.e, _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(var_1.e, vec3<u32>(0u, 54609u, 0u)), vec3<u32>(92502u, var_1.e.x, max(var_1.e.x, 71664u))), ~11336u | u_input.a.x), Struct_1(vec3<i32>(_wgslsmith_mult_i32(var_1.d, -4501i), var_1.a, _wgslsmith_mult_i32(2147483647i & var_0.x, var_1.d)), -firstTrailingBit(_wgslsmith_sub_i32(-2147483647i, -1i)), var_1.e, func_1(vec4<i32>(func_1(vec4<i32>(u_input.b, var_1.d, u_input.b, -41970i), u_input.b, Struct_4(vec4<u32>(72403u, 27048u, 2601u, 1u)), var_1.e.x).a, ~19445i, var_0.x, ~1i), -firstLeadingBit(u_input.b), Struct_4(abs(vec4<u32>(27985u, 33869u, 33926u, var_1.e.x))), ~(~u_input.a.x)).e, _wgslsmith_div_u32(~(u_input.a.x | 40494u), u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-496f, 830f, var_1.c.x, 315f), vec4<f32>(-481f, global0.x, global0.x, 714f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-319f, var_1.c.x, global0.x, var_1.c.x)))))), u_input.a.x >> (~1u % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + global0.x) - global0.x)) * global0.x));
}

