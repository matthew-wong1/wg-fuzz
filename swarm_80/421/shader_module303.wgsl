struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec3<bool>,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: f32,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4, arg_2: f32) -> vec4<i32> {
    var var_0 = arg_1.b.x;
    var_0 = ~arg_1.b.x ^ countOneBits(arg_1.b.x);
    var var_1 = arg_1;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2))), var_1.e);
    var var_3 = false == (false & arg_0.b.c.x);
    return ~(~abs(-(vec4<i32>(arg_1.b.x, 6838i, -17365i, 71616i) << (vec4<u32>(0u, 0u, u_input.a, arg_0.b.a.x) % vec4<u32>(32u)))));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_4(select(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, u_input.a < 4294967295u, true, any(vec2<bool>(false, false))), vec4<bool>(true, true, true, true)), true), _wgslsmith_add_vec4_i32(vec4<i32>(-12789i, ~_wgslsmith_add_i32(-40889i, u_input.b.x), (i32(-1i) * -1i) & u_input.b.x, -u_input.b.x), -firstTrailingBit(vec4<i32>(0i, -1i, 47589i, u_input.b.x))), -419f, Struct_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-378f, -318f), vec2<f32>(501f, -291f), true)) + vec2<f32>(1000f, 772f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, -655f))))), Struct_1(vec2<u32>(~u_input.a, abs(9133u)), -830f, vec3<bool>(true, true, true), 1569f, vec2<bool>(true, true))), Struct_1(~(~min(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(3498u, 0u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-286f - 374f), -979f, true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(2423f)))))), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), true), _wgslsmith_f_op_f32(-1f), vec2<bool>(true, true)));
    let var_1 = _wgslsmith_sub_u32(~_wgslsmith_mod_u32(firstLeadingBit(18774u), u_input.a), u_input.a);
    var var_2 = var_0.d;
    let var_3 = firstLeadingBit(abs((var_0.b.xzz & var_0.b.zzx) | var_0.b.yxx));
    var var_4 = vec3<f32>(var_0.e.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_0.c)), _wgslsmith_div_f32(var_2.a.x, 1000f)))))));
    return !select(vec4<bool>(var_0.d.b.e.x, select(true, select(false, var_0.e.c.x, var_2.b.c.x), false), true, var_0.a.x), vec4<bool>(any(!var_2.b.c.xy), false, true, var_0.e.c.x), select(select(vec4<bool>(false, var_0.a.x, true, true), var_0.a, var_0.a), var_0.a, true));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_1) -> Struct_3 {
    let var_0 = arg_2.c;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(arg_1.a.x, arg_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-589f - arg_2.d))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-464f, arg_2.d)) - -209f), _wgslsmith_f_op_f32(max(2168f, _wgslsmith_f_op_f32(-arg_2.d))))));
    let var_2 = arg_1.b.e.x;
    let var_3 = all(!func_3());
    let var_4 = 1u;
    return arg_1;
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_4) -> i32 {
    return _wgslsmith_sub_i32(-arg_2.b.x, abs(23028i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-714f))), _wgslsmith_clamp_vec4_u32(min(vec4<u32>(1u, reverseBits(u_input.a), u_input.a ^ u_input.a, 1u), ~vec4<u32>(u_input.a, 2103u, u_input.a, 18602u)), vec4<u32>(u_input.a & 0u, abs(u_input.a), ~_wgslsmith_div_u32(u_input.a, 4294967295u), u_input.a), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(37511u, 28190u, 1u, u_input.a) ^ vec4<u32>(18368u, u_input.a, 0u, 1u)), vec4<u32>(u_input.a, u_input.a, ~27617u, 4294967295u << (u_input.a % 32u)))), Struct_4(vec4<bool>(true, true, true, select(true, true, true)), ~abs(func_1(Struct_3(vec2<f32>(-1145f, 788f), Struct_1(vec2<u32>(u_input.a, u_input.a), 422f, vec3<bool>(true, true, true), -1046f, vec2<bool>(true, true))), Struct_4(vec4<bool>(false, false, false, true), vec4<i32>(u_input.b.x, u_input.b.x, -1i, -4192i), -1825f, Struct_3(vec2<f32>(-1034f, -547f), Struct_1(vec2<u32>(u_input.a, 0u), -398f, vec3<bool>(false, true, false), -375f, vec2<bool>(true, false))), Struct_1(vec2<u32>(u_input.a, u_input.a), -980f, vec3<bool>(true, false, false), 561f, vec2<bool>(true, false))), -219f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-488f)) - _wgslsmith_f_op_f32(select(439f, _wgslsmith_f_op_f32(abs(-1042f)), true))), func_2(vec4<bool>(true, true, true, true), Struct_3(vec2<f32>(-1159f, -770f), Struct_1(vec2<u32>(u_input.a, 10774u), 1000f, vec3<bool>(false, true, false), 442f, vec2<bool>(true, false))), Struct_1(vec2<u32>(97871u, u_input.a), _wgslsmith_f_op_f32(max(840f, 1000f)), vec3<bool>(true, true, true), -1146f, vec2<bool>(true, true))), func_2(func_3(), func_2(vec4<bool>(true, true, true, true), Struct_3(vec2<f32>(-1000f, -282f), Struct_1(vec2<u32>(u_input.a, u_input.a), -406f, vec3<bool>(true, true, false), 621f, vec2<bool>(false, true))), func_2(vec4<bool>(true, false, true, false), Struct_3(vec2<f32>(1457f, 1178f), Struct_1(vec2<u32>(u_input.a, 28225u), -1269f, vec3<bool>(false, true, true), 893f, vec2<bool>(false, true))), Struct_1(vec2<u32>(u_input.a, 52577u), 101f, vec3<bool>(true, false, true), 348f, vec2<bool>(true, true))).b), func_2(vec4<bool>(true, true, true, true), Struct_3(vec2<f32>(1000f, -471f), Struct_1(vec2<u32>(u_input.a, 1u), -2064f, vec3<bool>(true, true, false), 244f, vec2<bool>(true, false))), Struct_1(vec2<u32>(1u, 24478u), -568f, vec3<bool>(false, true, false), -576f, vec2<bool>(true, true))).b).b));
    let var_1 = (true && any(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), false))) && true;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(192f, _wgslsmith_f_op_f32(f32(-1f) * -555f))) * _wgslsmith_f_op_f32(-func_2(vec4<bool>(var_1, var_1, var_1, false), Struct_3(vec2<f32>(1502f, 1000f), Struct_1(vec2<u32>(0u, 6467u), -581f, vec3<bool>(true, var_1, true), -337f, vec2<bool>(var_1, true))), Struct_1(vec2<u32>(13554u, 17132u), 1000f, vec3<bool>(true, true, true), 694f, vec2<bool>(var_1, var_1))).a.x)))), func_2(func_3(), func_2(vec4<bool>(true, true, true, true), Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(138f, 871f) + vec2<f32>(-1000f, 1000f)), Struct_1(vec2<u32>(u_input.a, u_input.a), 216f, vec3<bool>(false, true, var_1), -844f, vec2<bool>(var_1, var_1))), func_2(!vec4<bool>(true, var_1, false, var_1), func_2(vec4<bool>(var_1, var_1, var_1, true), Struct_3(vec2<f32>(-316f, -242f), Struct_1(vec2<u32>(0u, 92111u), -789f, vec3<bool>(var_1, false, false), 494f, vec2<bool>(false, var_1))), Struct_1(vec2<u32>(u_input.a, u_input.a), -200f, vec3<bool>(false, var_1, var_1), 1608f, vec2<bool>(true, true))), func_2(vec4<bool>(var_1, false, false, true), Struct_3(vec2<f32>(-1094f, -1000f), Struct_1(vec2<u32>(u_input.a, u_input.a), 406f, vec3<bool>(true, var_1, false), -353f, vec2<bool>(true, var_1))), Struct_1(vec2<u32>(22195u, 58891u), -1101f, vec3<bool>(true, true, true), -540f, vec2<bool>(false, true))).b).b), func_2(vec4<bool>(true, true & var_1, var_1, u_input.a > u_input.a), func_2(!vec4<bool>(var_1, true, var_1, false), Struct_3(vec2<f32>(242f, 1605f), Struct_1(vec2<u32>(u_input.a, u_input.a), 1394f, vec3<bool>(false, true, var_1), 1000f, vec2<bool>(true, false))), func_2(vec4<bool>(false, var_1, var_1, false), Struct_3(vec2<f32>(-1000f, -1894f), Struct_1(vec2<u32>(25670u, 4294967295u), -1066f, vec3<bool>(true, false, var_1), -1118f, vec2<bool>(var_1, true))), Struct_1(vec2<u32>(u_input.a, 0u), -2320f, vec3<bool>(var_1, true, false), -1552f, vec2<bool>(var_1, var_1))).b), Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(72665u, 37869u), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_f_op_f32(floor(-890f)), vec3<bool>(var_1, true, var_1), _wgslsmith_f_op_f32(695f - -557f), !vec2<bool>(var_1, var_1))).b).b);
    let var_3 = vec3<f32>(_wgslsmith_div_f32(func_2(select(vec4<bool>(false, var_2.b.c.x, false, false), !vec4<bool>(var_1, var_1, var_1, var_1), true), func_2(select(vec4<bool>(var_1, var_2.b.c.x, var_2.b.e.x, true), vec4<bool>(var_2.b.c.x, var_1, var_2.b.e.x, var_1), var_2.b.e.x), Struct_3(vec2<f32>(var_2.a, -1830f), var_2.b), func_2(vec4<bool>(var_1, var_2.b.c.x, false, false), Struct_3(vec2<f32>(var_2.a, var_2.a), var_2.b), Struct_1(var_2.b.a, 290f, vec3<bool>(false, var_1, false), 962f, vec2<bool>(var_2.b.c.x, false))).b), Struct_1(var_2.b.a << (var_2.b.a % vec2<u32>(32u)), _wgslsmith_f_op_f32(exp2(var_2.a)), func_3().xzx, _wgslsmith_f_op_f32(sign(1000f)), vec2<bool>(var_1, true))).b.b, 1f), _wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(548f + -233f))), -1000f)));
    let var_4 = var_2.b;
    var var_5 = firstTrailingBit(reverseBits(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(46385u, 49243u, 1u, var_2.b.a.x), vec4<u32>(var_4.a.x, var_4.a.x, 1u, var_2.b.a.x)), ~4294967295u, ~3878u) & ~vec3<u32>(14001u, var_4.a.x, 4294967295u)));
    var_2 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_4.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -450f) - _wgslsmith_f_op_f32(max(-1200f, var_2.a))) + _wgslsmith_f_op_f32(-var_3.x)), true)), Struct_1(~max(var_4.a, _wgslsmith_add_vec2_u32(vec2<u32>(104609u, var_4.a.x), var_5.zx)), 485f, var_4.c, 452f, !vec2<bool>(var_2.b.b != var_3.x, false)));
    var_5 = (abs(~(vec3<u32>(u_input.a, 0u, 14187u) & vec3<u32>(u_input.a, var_2.b.a.x, 4814u))) >> (select(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_4.a.x, var_2.b.a.x), vec3<u32>(1u, var_5.x, var_5.x)), var_5.x, max(1u, 4294967295u)), firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.b.a.x, 86403u, var_2.b.a.x), vec3<u32>(var_5.x, 4294967295u, 78019u), vec3<u32>(0u, 0u, 0u))), true) % vec3<u32>(32u))) << (min(reverseBits(vec3<u32>(0u, var_2.b.a.x, 1u)) & vec3<u32>(~1u, var_2.b.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(23647u, 102091u, var_5.x, 1u), vec4<u32>(var_2.b.a.x, 1u, 4294967295u, var_4.a.x))), _wgslsmith_mult_vec3_u32(vec3<u32>(42460u, 0u, 52069u) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, var_5.x), vec3<u32>(1u, 4294967295u, var_4.a.x), vec3<u32>(var_4.a.x, u_input.a, u_input.a)) % vec3<u32>(32u)), max(_wgslsmith_sub_vec3_u32(vec3<u32>(var_5.x, 13990u, 0u), vec3<u32>(72478u, var_5.x, var_4.a.x)), vec3<u32>(var_5.x, 71229u, 1u) >> (vec3<u32>(1u, 1u, var_4.a.x) % vec3<u32>(32u))))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_dot_vec4_u32(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(var_5.x, 30950u, var_2.b.a.x, 41850u), vec4<u32>(var_2.b.a.x, var_2.b.a.x, 8290u, var_5.x))), _wgslsmith_div_vec4_u32(~vec4<u32>(var_5.x, 0u, 0u, var_5.x), firstLeadingBit(vec4<u32>(4294967295u, var_5.x, 1u, 27106u)))), _wgslsmith_sub_u32(20554u, func_2(select(vec4<bool>(true, var_4.e.x, var_1, var_4.e.x), vec4<bool>(var_1, var_2.b.e.x, false, true), var_2.b.e.x), func_2(vec4<bool>(false, var_4.e.x, var_2.b.c.x, var_2.b.c.x), Struct_3(var_3.yz, var_2.b), Struct_1(vec2<u32>(12041u, u_input.a), 961f, vec3<bool>(true, var_4.e.x, true), 2441f, var_2.b.c.xx)), Struct_1(var_5.xz, var_2.b.b, var_4.c, var_3.x, var_4.c.yy)).b.a.x), abs(12704u)), abs(~var_0));
}

