struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: vec3<i32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -505f;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: i32, arg_1: u32) -> vec3<u32> {
    var var_0 = _wgslsmith_dot_vec3_u32(firstLeadingBit(min(vec3<u32>(62606u, 4294967295u, 4294967295u) & vec3<u32>(arg_1, arg_1, arg_1), select(abs(vec3<u32>(arg_1, u_input.a, 34121u)), ~vec3<u32>(6276u, u_input.b, u_input.b), vec3<bool>(false, true, true)))), reverseBits(vec3<u32>(_wgslsmith_mod_u32(~39270u, ~arg_1), countOneBits(u_input.b), _wgslsmith_clamp_u32(1u, arg_1, _wgslsmith_div_u32(arg_1, 11142u)))));
    global0 = -1321f;
    var var_1 = _wgslsmith_clamp_vec4_i32(select(vec4<i32>(u_input.c, arg_0, select(-2147483647i, ~2147483647i, true), -1i), u_input.d, !select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), false), true)), -abs(~countOneBits(u_input.d)), max(reverseBits(~u_input.d), -(u_input.d ^ (u_input.d >> (vec4<u32>(u_input.a, 4294967295u, u_input.a, arg_1) % vec4<u32>(32u))))));
    var_1 = vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.e.zy, var_1.ww), countOneBits(u_input.d.x)), -65939i, arg_0, min(i32(-1i) * -u_input.c, 64581i));
    let var_2 = vec2<u32>(0u, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(reverseBits(u_input.b), ~4294967295u, max(43172u, u_input.a), arg_1)), _wgslsmith_clamp_vec4_u32(~abs(vec4<u32>(37031u, 26645u, arg_1, u_input.a)), vec4<u32>(4294967295u, 1u, arg_1, 1u) >> (abs(vec4<u32>(3992u, u_input.a, 4294967295u, 1u)) % vec4<u32>(32u)), vec4<u32>(u_input.a, min(1u, 4294967295u), 74147u, arg_1))));
    return firstTrailingBit(abs(~vec3<u32>(19099u, u_input.b, arg_1) | (abs(vec3<u32>(u_input.b, var_2.x, var_2.x)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 13746u, arg_1), vec3<u32>(u_input.a, arg_1, var_2.x)))));
}

fn func_2() -> vec3<f32> {
    let var_0 = func_3(-20634i, u_input.a & u_input.a);
    var var_1 = Struct_1(-(i32(-1i) * -35795i));
    let var_2 = vec2<i32>(-2147483647i, ~abs(var_1.a));
    global0 = -703f;
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1034f - -1521f))) * _wgslsmith_f_op_f32(f32(-1f) * -469f)))));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(760f, -1393f) + 894f), 183f))), -141f, _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -440f) - _wgslsmith_f_op_f32(f32(-1f) * -484f))), true)));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = Struct_3(~17853u, 541f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(991f, 368f)), 253f, 355f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -145f, 1079f) - _wgslsmith_f_op_vec3_f32(func_2())))), select(vec3<i32>(select(_wgslsmith_div_i32(u_input.e.x, -2147483647i), u_input.c, true), arg_1.a, ~(-1i) | (arg_1.a >> (u_input.a % 32u))), vec3<i32>(arg_1.a, -u_input.d.x, arg_1.a | 13140i) & vec3<i32>(u_input.e.x, -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, arg_1.a, arg_1.a), vec3<i32>(u_input.c, 2147483647i, 15662i))), any(!(!vec4<bool>(arg_0, true, false, arg_0)))), abs(_wgslsmith_dot_vec2_i32(-vec2<i32>(arg_1.a, arg_1.a), u_input.e.xx)));
    var var_1 = arg_1;
    let var_2 = Struct_2(33338u, u_input.d, arg_1);
    var_0 = Struct_3(u_input.a, _wgslsmith_f_op_f32(max(var_0.b, _wgslsmith_f_op_vec3_f32(func_2()).x)), var_0.c, ~var_2.b.zzz, ~_wgslsmith_div_i32(min(-var_2.c.a, -2147483647i), select(-28914i, -17560i, arg_0 || false)));
    let var_3 = u_input.d;
    return vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(var_0.b * 1171f), _wgslsmith_f_op_f32(-var_0.b), var_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 20305u), ~vec2<u32>(u_input.a, u_input.b)), u_input.b);
    let var_1 = vec2<u32>(~27042u, ~(u_input.b >> (~4294967295u % 32u))) | (vec2<u32>(20650u, firstTrailingBit(_wgslsmith_mult_u32(20568u, 57924u))) ^ vec2<u32>(~28370u, 15047u));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-959f, -461f, 1635f, 824f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1338f, -849f, 689f, -934f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(957f, -999f, 490f, 330f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-381f, 1619f, 416f, -1033f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-825f, 2807f, -165f, 186f)), vec4<bool>(true, true, true, true)))) + _wgslsmith_f_op_vec4_f32(func_1(true, Struct_1(u_input.d.x)))));
    var var_3 = Struct_3(var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * -753f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.wzx * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, 1465f, var_2.x) + var_2.xyx), _wgslsmith_f_op_vec3_f32(-var_2.xzw))))), ~_wgslsmith_sub_vec3_i32(u_input.d.wxz, select(_wgslsmith_clamp_vec3_i32(vec3<i32>(23444i, u_input.d.x, u_input.d.x), vec3<i32>(u_input.d.x, 0i, -21071i), vec3<i32>(u_input.c, u_input.d.x, u_input.d.x)), _wgslsmith_add_vec3_i32(u_input.d.wwz, vec3<i32>(-1i, u_input.c, u_input.d.x)), vec3<bool>(false, false, true))), _wgslsmith_clamp_i32(firstLeadingBit(u_input.d.x), _wgslsmith_dot_vec4_i32(u_input.d, u_input.d), u_input.e.x));
    var_0 = ~select(var_1, select(var_1 << (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u)), var_1, select(vec2<bool>(true, true), vec2<bool>(false, false), false)) >> (~_wgslsmith_mod_vec2_u32(var_1, vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u)), vec2<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true))), all(vec3<bool>(false, true, true)) == true));
    var var_4 = _wgslsmith_f_op_f32(step(1839f, 1072f));
    let var_5 = 1u;
    var var_6 = Struct_3(~(~86970u), var_3.c.x, _wgslsmith_f_op_vec3_f32(var_3.c * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(471f, 530f, var_3.b), var_2.zyy))), vec3<f32>(var_2.x, _wgslsmith_f_op_vec3_f32(func_2()).x, _wgslsmith_f_op_f32(trunc(var_2.x))))), ~firstLeadingBit(max(~vec3<i32>(10249i, var_3.e, 18583i), vec3<i32>(1i, 0i, -92554i))), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(~vec2<i32>(reverseBits(var_3.e), reverseBits(var_3.e)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, u_input.d.x), var_3.d.zx >> (var_1 % vec2<u32>(32u)), ~var_6.d.zz) | vec2<i32>(var_3.d.x | 0i, abs(0i))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-543f - -433f) + var_6.c.x) - _wgslsmith_f_op_f32(max(var_6.c.x, _wgslsmith_f_op_f32(-289f + 235f)))), 1031f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(ceil(var_3.c.x))))), _wgslsmith_f_op_f32(f32(-1f) * -2055f)), -2147483647i ^ var_3.d.x, 1167f);
}

