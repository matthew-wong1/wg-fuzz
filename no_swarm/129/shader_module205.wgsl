struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = ~abs(arg_0);
    var_0 = arg_0;
    return ~_wgslsmith_sub_u32(arg_0, abs(arg_0 & 67085u));
}

fn func_2(arg_0: vec2<bool>) -> vec4<i32> {
    var var_0 = !(u_input.c != func_3(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, 0u), vec2<u32>(u_input.c, u_input.c) & vec2<u32>(38364u, 4294967295u))));
    var var_1 = firstTrailingBit(firstTrailingBit(vec4<i32>(u_input.b, min(u_input.a, -1i), ~u_input.e.x, 40742i) << (select(~vec4<u32>(u_input.c, 1u, 3788u, 4294967295u), vec4<u32>(u_input.c, 4294967295u, 46978u, u_input.c), true) % vec4<u32>(32u))));
    let var_2 = !(!all(vec2<bool>(true, any(vec3<bool>(arg_0.x, false, arg_0.x)))));
    var var_3 = 1u;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(max(1f, 1865f)), 15012u, vec4<f32>(_wgslsmith_f_op_f32(step(-458f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-237f, 1509f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2284f))), -526f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), ~abs(abs(vec4<u32>(u_input.c, u_input.c, u_input.c, 0u))) ^ ~vec4<u32>(u_input.c, _wgslsmith_mod_u32(u_input.c, 60951u), u_input.c, _wgslsmith_mult_u32(1u, u_input.c)));
    return _wgslsmith_clamp_vec4_i32(-reverseBits(~vec4<i32>(21978i, var_1.x, var_1.x, var_1.x)), _wgslsmith_div_vec4_i32(max(max(select(vec4<i32>(u_input.e.x, var_1.x, u_input.e.x, u_input.b), vec4<i32>(u_input.a, var_1.x, var_1.x, u_input.e.x), vec4<bool>(false, true, arg_0.x, true)), vec4<i32>(33i, var_1.x, u_input.a, u_input.a) | vec4<i32>(u_input.b, -20330i, u_input.b, -1i)), ~vec4<i32>(-39146i, var_1.x, -2147483647i, -1i) >> (vec4<u32>(0u, u_input.c, 1u, 4294967295u) % vec4<u32>(32u))), vec4<i32>((u_input.e.x | var_1.x) | u_input.d, _wgslsmith_clamp_i32(-43453i, u_input.d, u_input.b) << ((var_4.d.x >> (var_4.d.x % 32u)) % 32u), 78i, firstLeadingBit(i32(-1i) * -22361i))), firstLeadingBit(_wgslsmith_div_vec4_i32(-vec4<i32>(var_1.x, 1i, 16595i, 39883i), -vec4<i32>(-61376i, -12108i, var_1.x, var_1.x))) >> (~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 48547u, 0u, 4294967295u), var_4.d), ~var_4.d) % vec4<u32>(32u)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-596f, _wgslsmith_f_op_f32(exp2(arg_0.c.x)), 1f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -891f), -741f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1063f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.c.x, arg_0.c.x, arg_0.c.x))))))));
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(func_2(vec2<bool>(false, true))), ~vec4<i32>(u_input.e.x, 1i, u_input.a, u_input.e.x)) << (firstTrailingBit(_wgslsmith_mult_u32(1u >> (u_input.c % 32u), _wgslsmith_mod_u32(4294967295u, arg_0.d.x))) % 32u), _wgslsmith_dot_vec2_i32(~(~(vec2<i32>(1i, -2147483647i) >> (arg_0.d.xw % vec2<u32>(32u)))), u_input.e));
    var_1 = select(u_input.e.x, _wgslsmith_dot_vec2_i32(u_input.e, u_input.e), false);
    var var_2 = Struct_1(-149f, 27758u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(arg_0.c)) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(819f, -399f)), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(107f * -1788f)), _wgslsmith_f_op_f32(-1005f - _wgslsmith_f_op_f32(arg_0.c.x + 206f)))), ~(~(~vec4<u32>(arg_0.d.x, 1u, u_input.c, 12202u))));
    var var_3 = arg_0;
    return arg_0;
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = 4294967295u;
    var var_1 = select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(any(vec4<bool>(select(true, true, true), true, true, all(vec3<bool>(true, true, true)))), true, any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), u_input.b > 46852i))), vec3<bool>(true, true, true));
    var var_2 = arg_2.c;
    var var_3 = var_2.xzz;
    let var_4 = Struct_1(var_3.x, arg_2.b, _wgslsmith_f_op_vec4_f32(-arg_2.c), vec4<u32>(reverseBits(12382u), _wgslsmith_dot_vec4_u32(vec4<u32>(67687u, 1u, 1396u, var_0), func_1(arg_3).d), 4294967295u, 1u));
    return reverseBits((arg_1 >> (arg_3.d.x % 32u)) | arg_0);
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = func_1(arg_2);
    var var_1 = Struct_1(arg_2.a, u_input.c, vec4<f32>(arg_2.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-944f)), arg_1.c.x)), 1248f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -542f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(233f, var_0.a)))), _wgslsmith_sub_vec4_u32(arg_2.d, ~arg_1.d));
    var_1 = Struct_1(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_sub_u32(arg_1.d.x, ~_wgslsmith_div_u32(u_input.c, u_input.c) >> (~_wgslsmith_clamp_u32(0u, arg_1.d.x, var_1.d.x) % 32u)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1601f, _wgslsmith_f_op_f32(arg_1.a * var_0.c.x), _wgslsmith_f_op_f32(-932f * -1000f), _wgslsmith_f_op_f32(-1290f + -1514f)), vec4<f32>(-656f, _wgslsmith_div_f32(arg_2.c.x, arg_2.a), _wgslsmith_f_op_f32(-arg_2.c.x), 459f))))), vec4<u32>(~4294967295u, abs(59509u), 55494u, _wgslsmith_mult_u32(arg_1.d.x, 26104u ^ var_0.b) ^ arg_1.d.x));
    var var_2 = vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1909f)))), var_1.a);
    var_0 = arg_2;
    return arg_2;
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-884f + -396f);
    var_0 = _wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a + arg_0.a) - -877f))));
    let var_1 = ~_wgslsmith_mod_vec3_u32(firstTrailingBit(arg_0.d.yzz), vec3<u32>(~reverseBits(64056u), arg_0.b, (arg_0.b >> (u_input.c % 32u)) | 33663u));
    let var_2 = ~(~(abs(countOneBits(vec3<i32>(u_input.a, -7143i, u_input.e.x))) | ~_wgslsmith_div_vec3_i32(vec3<i32>(22990i, 2147483647i, -1i), vec3<i32>(-2147483647i, u_input.b, u_input.d))));
    let var_3 = arg_0;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(657f, -827f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -305f))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(374f, 314f) - vec2<f32>(1714f, 500f)), vec2<f32>(-1516f, 431f)))))));
    let var_2 = _wgslsmith_sub_u32(_wgslsmith_add_u32(select(firstTrailingBit(4294967295u) ^ (u_input.c >> (u_input.c % 32u)), ~u_input.c >> (u_input.c % 32u), !select(false, true, true)), _wgslsmith_mult_u32(~(~u_input.c), 8879u)), 1u);
    var var_3 = func_6(func_5(abs(func_4(_wgslsmith_mod_i32(1i, u_input.b), _wgslsmith_clamp_i32(u_input.b, 1i, -1i), Struct_1(var_1.x, u_input.c, vec4<f32>(var_1.x, var_1.x, var_1.x, 650f), vec4<u32>(u_input.c, 15401u, 17999u, u_input.c)), func_1(Struct_1(var_1.x, 0u, vec4<f32>(var_1.x, 1027f, 145f, 1228f), vec4<u32>(var_2, var_2, var_2, var_2))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * 2334f) + _wgslsmith_f_op_f32(var_1.x - -526f)), 6203u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -459f, 1884f, var_1.x) - vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x))), _wgslsmith_sub_vec4_u32(~vec4<u32>(20072u, u_input.c, 30218u, 3971u), ~vec4<u32>(33783u, 4294967295u, var_2, u_input.c))), func_1(func_1(Struct_1(var_1.x, var_2, vec4<f32>(109f, var_1.x, var_1.x, var_1.x), vec4<u32>(u_input.c, 3940u, 1u, var_2))))));
    var var_4 = _wgslsmith_clamp_vec3_i32(func_2(vec2<bool>(true, true)).wwz, _wgslsmith_div_vec3_i32(-(vec3<i32>(u_input.e.x, -45451i, u_input.d) & vec3<i32>(0i, 1i, u_input.d)) & _wgslsmith_add_vec3_i32(-vec3<i32>(0i, u_input.d, u_input.a), ~vec3<i32>(u_input.a, u_input.d, u_input.b)), ~func_2(vec2<bool>(false, false)).wyy), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(reverseBits(firstTrailingBit(vec3<i32>(-27624i, u_input.a, u_input.b))), abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.a, u_input.b), vec3<i32>(49155i, u_input.e.x, u_input.b), vec3<i32>(47274i, 2147483647i, u_input.e.x)))), ~(~select(vec3<i32>(u_input.d, -38211i, u_input.b), vec3<i32>(u_input.b, u_input.d, u_input.b), false)), vec3<i32>(u_input.b, ~u_input.a << (abs(29663u) % 32u), u_input.d)));
    var_4 = firstLeadingBit(~firstLeadingBit(vec3<i32>(~2147483647i, _wgslsmith_clamp_i32(2147483647i, var_4.x, 1i), 13397i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x);
}

