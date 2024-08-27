struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> i32 {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2)));
    var var_2 = Struct_2(~max(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.x, 2147483647i, -9684i), select(vec3<i32>(-1811i, -1i, -29736i), vec3<i32>(arg_0.x, arg_3.b.x, arg_3.c.x), vec3<bool>(false, true, true))), arg_3.b.yxw), Struct_1(u_input.a, -(arg_3.b ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, -42041i), vec4<i32>(-14343i, 6569i, 1i, -2147483647i), vec4<i32>(0i, arg_0.x, -55705i, 18987i))), _wgslsmith_mod_vec2_i32(abs(arg_0), vec2<i32>(1i, arg_0.x)), ~_wgslsmith_mod_u32(2236u, abs(4294967295u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1471f, 237f, -390f, var_1) + vec4<f32>(arg_2, var_1, 1000f, arg_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -763f, arg_1, -213f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(233f, -1678f, arg_2, 246f) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2, var_1, arg_2, arg_1)))))));
    var_0 = false;
    let var_3 = Struct_2(-(firstLeadingBit(min(vec3<i32>(6061i, 1i, 26605i), var_2.a)) & _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), var_2.a)), var_2.b, vec4<f32>(119f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-642f, arg_2, false)) * arg_2)), -298f, arg_2));
    return var_2.a.x;
}

fn func_2(arg_0: vec3<bool>) -> vec2<i32> {
    let var_0 = Struct_2(vec3<i32>(_wgslsmith_clamp_i32(1i, func_3(vec2<i32>(17051i, 0i), 617f, 386f, Struct_1(u_input.a, vec4<i32>(1i, 20434i, 0i, -49895i), vec2<i32>(1i, 0i), u_input.a)), -9039i) ^ _wgslsmith_mod_i32(reverseBits(34049i), 1i), min(-5128i, 1i), ~abs(-1i)), Struct_1(~(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 16807u, u_input.a), vec3<u32>(u_input.a, 1699u, u_input.a)) >> (_wgslsmith_clamp_u32(1u, u_input.a, u_input.a) % 32u)), ~vec4<i32>(min(-2147483647i, 53191i), 1i, ~1i, -30795i), vec2<i32>(-1i, ~1i), ~(~abs(u_input.a))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(384f, -848f, -1264f, -1304f), vec4<f32>(-1436f, 2563f, -533f, 1700f), vec4<bool>(arg_0.x, false, arg_0.x, true))), vec4<f32>(-1000f, 892f, 653f, 257f)) * vec4<f32>(777f, 1f, -1460f, _wgslsmith_f_op_f32(2487f - 587f))))));
    let var_1 = vec4<i32>(var_0.b.b.x, 0i, _wgslsmith_dot_vec3_i32(-var_0.b.b.ywz, vec3<i32>(abs(9749i >> (u_input.a % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(29914i, var_0.b.b.x) & vec2<i32>(-2147483647i, -2147483647i), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.a.x, var_0.a.x), vec2<i32>(-1i, var_0.b.b.x))), _wgslsmith_add_i32(1i, var_0.b.c.x))), abs(var_0.b.c.x));
    var var_2 = var_0.b;
    var_2 = Struct_1(~_wgslsmith_clamp_u32(var_2.d, u_input.a, _wgslsmith_add_u32(_wgslsmith_mult_u32(24788u, var_0.b.d), var_0.b.a)), var_0.b.b, _wgslsmith_div_vec2_i32(vec2<i32>(-1i, func_3(var_1.xy, var_0.c.x, 696f, Struct_1(1u, vec4<i32>(var_1.x, var_2.b.x, -1i, 24262i), var_1.yy, u_input.a))), vec2<i32>(var_0.a.x, 2147483647i) | vec2<i32>(1i, var_0.a.x)) ^ firstLeadingBit(vec2<i32>(-2147483647i, select(-1i, var_0.a.x, true))), ~_wgslsmith_mult_u32(firstTrailingBit(~0u), _wgslsmith_clamp_u32(1u, firstTrailingBit(var_2.d), 1u)));
    var var_3 = -1561f;
    return firstTrailingBit(~vec2<i32>(~(~19797i), ~_wgslsmith_sub_i32(var_1.x, -2147483647i)));
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: vec3<bool>) -> vec4<i32> {
    let var_0 = arg_2.x;
    let var_1 = arg_0.x != reverseBits(1u);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -441f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1260f * 873f), _wgslsmith_f_op_f32(-209f - -147f))))));
    let var_3 = arg_0.xz;
    var var_4 = 27642u;
    return vec4<i32>(_wgslsmith_sub_i32(-8185i, _wgslsmith_dot_vec2_i32(func_2(vec3<bool>(var_0, true, false)), vec2<i32>(~2147483647i, firstTrailingBit(0i)))), _wgslsmith_dot_vec2_i32(~select(vec2<i32>(1i, 1i), vec2<i32>(15627i, 32944i) >> (arg_0.zx % vec2<u32>(32u)), select(arg_2.xx, arg_2.zy, arg_2.zx)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-1i, -16339i)), 87660i)), -14720i, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~u_input.a, -(~_wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), func_1(vec3<u32>(u_input.a, 27681u, u_input.a), false, vec3<bool>(false, true, true)))), vec2<i32>(~(~1i), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 2147483647i, 1i, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(-24238i, 17818i, 0i, 12438i), vec4<i32>(25842i, 2147483647i, -1i, -5884i)), -vec4<i32>(25907i, 8423i, 4374i, -11795i)), max(vec4<i32>(2147483647i, -54099i, -1i, 1i), vec4<i32>(1i, 1i, 1i, 1i)))), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(84457u, u_input.a, u_input.a) | vec3<u32>(0u, u_input.a, u_input.a)), vec3<u32>(31424u, _wgslsmith_add_u32(u_input.a, u_input.a), 17578u >> (u_input.a % 32u))), ~vec3<u32>(_wgslsmith_clamp_u32(0u, u_input.a, u_input.a), 0u, min(17028u, u_input.a))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -101f)));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1566f) - _wgslsmith_f_op_f32(sign(945f))), -1130f))) + -502f);
    var_1 = -2397f;
    var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(473f - -1087f))))));
    var var_2 = vec3<u32>(var_0.a, select(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(25487u, u_input.a, 4294967295u, 41276u) & vec4<u32>(var_0.d, var_0.d, 60341u, 26023u), ~vec4<u32>(1u, 80528u, var_0.a, 4294967295u)), vec4<u32>(firstTrailingBit(var_0.a), 27546u, ~107704u, ~1u)), firstLeadingBit(52155u), any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false))))), _wgslsmith_mult_u32(4294967295u, ~(0u ^ u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-452f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -441f))), var_0.b, u_input.a, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(358f * _wgslsmith_f_op_f32(min(1076f, 590f))), 117f, -1983f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -156f))))), _wgslsmith_sub_i32(-388i, var_0.b.x));
}

