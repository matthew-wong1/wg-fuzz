struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: f32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1030f))))) - _wgslsmith_f_op_f32(exp2(1f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-907f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(292f - -1951f)))) - -1000f));
    var var_1 = vec2<f32>(-1945f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1988f - 1f))));
    let var_2 = Struct_4(Struct_2(vec4<u32>(u_input.c.x, u_input.a, u_input.a, 1u) << (~vec4<u32>(u_input.c.x, 26466u, u_input.a, 24055u) % vec4<u32>(32u)), Struct_1(-1i), Struct_1(u_input.b), Struct_1(_wgslsmith_dot_vec3_i32(global0.ywy, abs(global0.xzx)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -691f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, var_1.x), vec2<f32>(527f, var_1.x), vec2<bool>(false, true)))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1309f, var_1.x, 849f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -1000f, var_1.x) * vec3<f32>(1000f, 132f, -1209f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-656f, 250f, var_1.x), vec3<f32>(-606f, var_1.x, -1651f))))))), _wgslsmith_sub_vec2_u32(~countOneBits(u_input.c.yw), u_input.c.xy) | u_input.c.ww, select(~global0.wyx, -global0.xyx, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), all(vec3<bool>(true, false, true))))));
    var var_3 = _wgslsmith_div_i32(-1i, 13396i);
    let var_4 = ~(~(~global0.x)) ^ countOneBits(firstLeadingBit(global0.x));
    return _wgslsmith_f_op_vec3_f32(step(var_2.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x) + 556f), -1328f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(969f)))))));
}

fn func_2(arg_0: Struct_5) -> vec4<f32> {
    global0 = vec4<i32>(0i, ~u_input.b, _wgslsmith_div_i32(~max(arg_0.a << (u_input.a % 32u), -arg_0.b.a), _wgslsmith_add_i32(-u_input.b, abs(-2147483647i))), _wgslsmith_mult_i32(-163i, _wgslsmith_mult_i32(reverseBits(u_input.b), select(max(global0.x, global0.x), ~global0.x, false))));
    let var_0 = global0.x;
    let var_1 = Struct_4(Struct_2(~abs(vec4<u32>(u_input.c.x, 1u, 44444u, 13840u)), arg_0.b, arg_0.e, Struct_1(1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), arg_0.d.xz)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.d.x, arg_0.d.x, -320f), vec3<f32>(arg_0.d.x, 1564f, -843f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2386f, 1316f, 347f))) - vec3<f32>(arg_0.d.x, arg_0.d.x, arg_0.d.x)))), (min(~vec2<u32>(1u, u_input.c.x), vec2<u32>(arg_0.c, u_input.c.x)) & u_input.c.xz) << (~select(vec2<u32>(1u, u_input.c.x), u_input.c.zz, vec2<bool>(true, true)) % vec2<u32>(32u)), ~vec3<i32>((arg_0.b.a ^ arg_0.b.a) & firstTrailingBit(arg_0.a), 43687i, global0.x));
    let var_2 = Struct_3(1439f, max(4294967295u, abs(u_input.a)));
    global0 = vec4<i32>(-3008i, _wgslsmith_div_i32(reverseBits(-max(22272i, arg_0.e.a)), var_1.a.b.a), u_input.b, 31226i);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.a, _wgslsmith_div_f32(var_1.b.x, var_1.b.x), _wgslsmith_div_f32(-698f, 1235f), arg_0.d.x), vec4<f32>(var_2.a, var_2.a, _wgslsmith_f_op_f32(var_2.a - var_2.a), _wgslsmith_f_op_f32(-406f * arg_0.d.x))))) + vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f - -310f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-745f)))), true)), 1313f, -399f, _wgslsmith_f_op_f32(round(-1089f))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: i32, arg_3: vec3<u32>) -> vec3<u32> {
    let var_0 = Struct_5(-global0.x, Struct_1(arg_1.x), _wgslsmith_mult_u32(u_input.c.x, _wgslsmith_add_u32(11722u, arg_3.x << (~u_input.c.x % 32u))), _wgslsmith_f_op_vec4_f32(func_2(Struct_5(_wgslsmith_div_i32(~(-2147483647i), -1i), Struct_1(1i), ~1u, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(318f, -1121f, -787f, 128f)))), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, 0i), arg_1))))), Struct_1(-38258i));
    global0 = _wgslsmith_mult_vec4_i32(abs(_wgslsmith_mult_vec4_i32(arg_0 << ((vec4<u32>(u_input.a, 1u, 4294967295u, 26886u) | u_input.c) % vec4<u32>(32u)), reverseBits(vec4<i32>(arg_1.x, 0i, arg_2, 47200i)))), select(-arg_0, arg_0, vec4<bool>(any(vec3<bool>(false, true, false)), _wgslsmith_f_op_vec4_f32(func_2(var_0)).x == _wgslsmith_f_op_f32(-var_0.d.x), true, all(vec3<bool>(true, true, true)))));
    let var_1 = Struct_5(select(-_wgslsmith_div_i32(2147483647i, select(2147483647i, var_0.e.a, true)), -63479i & arg_0.x, -2147483647i > -arg_0.x), var_0.e, _wgslsmith_div_u32(~firstTrailingBit(0u), arg_3.x >> (32745u % 32u)), var_0.d, var_0.b);
    let var_2 = -vec2<i32>(max(-2862i, global0.x), var_0.a);
    var var_3 = ~vec4<i32>(max(-_wgslsmith_dot_vec3_i32(arg_0.xzy, vec3<i32>(u_input.b, -53637i, -1i)), min(~57959i, 3126i << (1u % 32u))), -var_2.x, u_input.b, max(-2147483647i, var_0.b.a) & (i32(-1i) * -2147483647i));
    return reverseBits(~arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = countOneBits(~(-_wgslsmith_mod_vec4_i32(~vec4<i32>(global0.x, -60484i, 1i, -8787i), vec4<i32>(u_input.b, u_input.b, 7989i, u_input.b))));
    let var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(43400u, 0u, 4581u), reverseBits(vec3<u32>(u_input.a, 12039u, u_input.a))), u_input.c.x, 0u), vec3<u32>(~37052u >> (u_input.a % 32u), u_input.a, ~48775u) >> (func_1(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-12425i, global0.x, u_input.b, -1i), vec4<i32>(u_input.b, -25041i, -19585i, u_input.b)), _wgslsmith_dot_vec3_i32(global0.yxw, vec3<i32>(-1i, -63916i, global0.x)), ~(-1i), -global0.x), -global0.xw & firstTrailingBit(vec2<i32>(u_input.b, 15787i)), 17315i, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.c.x, 48743u), vec3<u32>(u_input.c.x, 62353u, u_input.c.x) & u_input.c.wxz)) % vec3<u32>(32u)));
    global1 = -707f;
    global0 = vec4<i32>(-_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(global0.x, u_input.b), global0.wy & vec2<i32>(u_input.b, 0i)), vec2<i32>(-u_input.b, 2147483647i)), reverseBits(-1i) | _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(global0.x, global0.x), select(u_input.b, -4742i, true)), _wgslsmith_mod_i32(10436i, u_input.b >> (33941u % 32u))), firstTrailingBit(reverseBits(-(global0.x | -16685i))), -(u_input.b >> ((~u_input.a << (11069u % 32u)) % 32u)));
    var var_1 = Struct_5(_wgslsmith_mult_i32(-(~global0.x), u_input.b), Struct_1(~(-(u_input.b & 2147483647i))), abs(var_0.x) >> (31355u % 32u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(483f, 2980f, 946f, -754f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1043f, -314f, -615f, -1047f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-500f, _wgslsmith_f_op_f32(min(499f, 857f)), _wgslsmith_f_op_f32(select(883f, 678f, false)), _wgslsmith_f_op_f32(f32(-1f) * -736f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(925f, 198f, 667f, 586f)))))), Struct_1(-(_wgslsmith_mod_i32(u_input.b, global0.x) | -global0.x)));
    var var_2 = func_1(_wgslsmith_sub_vec4_i32(-((vec4<i32>(2147483647i, -11570i, var_1.a, global0.x) << (vec4<u32>(var_0.x, 4294967295u, 1u, 1u) % vec4<u32>(32u))) ^ min(vec4<i32>(var_1.e.a, u_input.b, -26013i, 2147483647i), vec4<i32>(global0.x, 0i, 25323i, 22583i))), vec4<i32>(countOneBits(1i), -u_input.b, _wgslsmith_mod_i32(44222i, u_input.b), ~u_input.b) >> (~(~u_input.c) % vec4<u32>(32u))), vec2<i32>(26700i, -_wgslsmith_div_i32(global0.x ^ -30958i, max(global0.x, u_input.b))), min(global0.x, -u_input.b), select(vec3<u32>(4294967295u, max(~var_1.c, var_0.x & 0u), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 86161u, 4294967295u), var_0), max(56877u, 24698u))), (vec3<u32>(var_0.x, u_input.a, var_0.x) ^ (u_input.c.yyw << (vec3<u32>(var_1.c, var_0.x, var_1.c) % vec3<u32>(32u)))) >> ((var_0 & u_input.c.xxy) % vec3<u32>(32u)), vec3<bool>(!(7771i >= var_1.e.a), true, all(vec4<bool>(true, false, false, false)))));
    var var_3 = var_1.d;
    let var_4 = _wgslsmith_add_vec3_i32(vec3<i32>(-_wgslsmith_dot_vec2_i32(global0.ww, global0.xw), ~max(-2147483647i, 31712i), _wgslsmith_clamp_i32(_wgslsmith_div_i32(var_1.a, -2147483647i), -var_1.a, -1i)), abs(~(global0.xyz & global0.www))) | global0.yxy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(vec3<i32>(-24357i, u_input.b, -(~4529i)), countOneBits(max(global0.xxx, select(vec3<i32>(92548i, 0i, var_4.x), vec3<i32>(1i, 12308i, 20889i), true)))));
}

