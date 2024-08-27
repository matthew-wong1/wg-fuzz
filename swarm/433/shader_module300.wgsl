struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1i, vec2<i32>(0i, 1i), 0i, true);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> i32 {
    return countOneBits(_wgslsmith_add_i32(global0.b.x, _wgslsmith_mod_i32(-2147483647i, 1i))) << (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), ~vec2<u32>(_wgslsmith_mult_u32(1096u, 0u), 0u)) % 32u);
}

fn func_4(arg_0: vec3<i32>) -> u32 {
    let var_0 = Struct_1(-u_input.a.x, vec2<i32>(~(arg_0.x ^ u_input.c.x) >> (1u % 32u), func_3()), firstLeadingBit(u_input.d | 1i) ^ _wgslsmith_dot_vec4_i32(-(vec4<i32>(arg_0.x, -29180i, arg_0.x, u_input.a.x) ^ u_input.a), ~u_input.a), global0.d);
    global0 = Struct_1(_wgslsmith_sub_i32(-global0.a, var_0.a), vec2<i32>(-(~_wgslsmith_div_i32(2914i, global0.b.x)), _wgslsmith_dot_vec4_i32(u_input.a, _wgslsmith_clamp_vec4_i32(abs(u_input.a), firstLeadingBit(u_input.a), firstTrailingBit(u_input.a)))), -(~arg_0.x | max(abs(-34266i), ~1i)), true);
    let var_1 = u_input.b > u_input.b;
    let var_2 = vec4<bool>(!all(vec4<bool>(var_0.d & var_1, true, false, true)), max(_wgslsmith_dot_vec3_i32(min(arg_0, u_input.a.xxw), -u_input.a.wxz), abs(14983i)) >= _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-37975i, -8384i, arg_0.x), 4096i, _wgslsmith_div_i32(2147483647i, _wgslsmith_mod_i32(31806i, arg_0.x))), var_0.d, all(!select(select(vec4<bool>(false, true, true, var_0.d), vec4<bool>(false, true, global0.d, true), vec4<bool>(true, var_0.d, var_0.d, true)), !vec4<bool>(var_0.d, true, var_0.d, false), vec4<bool>(var_1, var_0.d, true, true))));
    return 0u;
}

fn func_2() -> u32 {
    let var_0 = Struct_2(func_4(-vec3<i32>(global0.c, func_3(), -27475i)), ~vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 34821u, 33085u, 21620u), vec4<u32>(1u, 0u, u_input.b, u_input.b)), firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.b), vec3<u32>(28639u, 51321u, u_input.b)))), _wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.d ^ -5392i, _wgslsmith_sub_i32(-18260i, u_input.a.x), max(-2147483647i, u_input.d), max(-4472i, 94747i)), u_input.a), Struct_1(-40180i, abs(reverseBits(~vec2<i32>(-17211i, u_input.c.x))), global0.b.x ^ -_wgslsmith_div_i32(global0.a, 2147483647i), any(vec3<bool>(true, false, global0.d == false))));
    let var_1 = Struct_2(~(~1u), _wgslsmith_div_vec2_u32(vec2<u32>(70807u, var_0.a), ~(~_wgslsmith_add_vec2_u32(vec2<u32>(var_0.b.x, 16594u), var_0.b))), ~(~vec4<i32>(u_input.a.x, -u_input.d, ~(-17257i), -var_0.d.b.x)), var_0.d);
    var var_2 = ~countOneBits(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_1.b.x, 57579u, var_1.b.x, var_0.a), vec4<u32>(var_1.a, u_input.b, 11670u, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b.x, 22930u, var_1.b.x, 0u), vec4<u32>(7874u, 0u, u_input.b, 5225u))));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -314f);
    var var_4 = var_0.d;
    return _wgslsmith_dot_vec4_u32(select(vec4<u32>(reverseBits(abs(1u)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, 4294967295u), _wgslsmith_clamp_vec2_u32(vec2<u32>(68834u, var_1.b.x), var_0.b, vec2<u32>(136584u, u_input.b))), _wgslsmith_dot_vec3_u32(reverseBits(var_2.xww), _wgslsmith_div_vec3_u32(var_2.yzx, vec3<u32>(u_input.b, u_input.b, 1u))), _wgslsmith_add_u32(6762u, ~var_1.b.x)), firstTrailingBit(vec4<u32>(~var_2.x, ~0u, var_0.a, ~22979u)), vec4<bool>(false, global0.d, var_1.d.d, true)), (~(~vec4<u32>(var_0.b.x, 6401u, 4087u, var_2.x)) | ~countOneBits(vec4<u32>(0u, 1u, 0u, var_1.b.x))) | _wgslsmith_add_vec4_u32(min(firstTrailingBit(vec4<u32>(u_input.b, 57879u, 4278u, var_0.a)), ~vec4<u32>(4290u, u_input.b, var_2.x, var_2.x)), select(vec4<u32>(4294967295u, var_2.x, 4294967295u, 30656u), _wgslsmith_mod_vec4_u32(vec4<u32>(45447u, 7955u, var_0.b.x, u_input.b), vec4<u32>(1u, 0u, var_0.b.x, 46211u)), var_1.d.d)));
}

fn func_1(arg_0: vec3<f32>) -> StorageBuffer {
    var var_0 = max(1u | ~(~u_input.b << (u_input.b % 32u)), _wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(4294967295u, ~u_input.b, u_input.b ^ u_input.b), u_input.b, func_2()));
    var_0 = 65011u;
    let var_1 = firstLeadingBit(u_input.a);
    let var_2 = arg_0;
    let var_3 = _wgslsmith_mod_vec3_u32(~min(vec3<u32>(~u_input.b, ~9128u, _wgslsmith_add_u32(60436u, u_input.b)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 62654u, 68338u), vec3<u32>(4294967295u, u_input.b, 105290u)) & vec3<u32>(31698u, 52349u, u_input.b)), ~(~(~(~vec3<u32>(u_input.b, u_input.b, u_input.b)))));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1313f), var_2.x, _wgslsmith_f_op_f32(-1717f - _wgslsmith_f_op_f32(select(arg_0.x, var_2.x, global0.d))))), countOneBits(16434i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -970f)), _wgslsmith_f_op_f32(sign(var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(vec3<f32>(-1308f, -2322f, _wgslsmith_f_op_f32(-295f + -644f)));
}

