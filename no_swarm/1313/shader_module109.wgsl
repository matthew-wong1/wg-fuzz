struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: f32,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: Struct_3,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: bool) -> f32 {
    var var_0 = arg_2;
    var var_1 = Struct_1(-vec4<i32>(~u_input.a.x, u_input.d.x, ~(-arg_1.x), u_input.a.x), u_input.c.zy);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1231f, 665f, 364f, 241f), vec4<f32>(1590f, -900f, 283f, -1575f), arg_2)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-970f, -1217f, 1059f, 485f) * vec4<f32>(-1910f, -521f, 798f, -1888f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(925f, -194f, -407f, -1627f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-978f, 1306f, -214f, -812f) + vec4<f32>(986f, -1000f, -1228f, -361f))))))));
    let var_3 = 1i;
    var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.x, var_2.x, -879f, 1133f)))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -225f), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(var_2.x - 612f)))))));
    return 802f;
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = !vec3<bool>(any(vec3<bool>(true, true, true)) | true, true, all(vec3<bool>(any(vec4<bool>(false, false, false, false)), true, true)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1074f, -1293f))) * _wgslsmith_f_op_f32(step(-1276f, _wgslsmith_f_op_f32(-535f + 1000f))))) + -610f);
    let var_2 = var_0.x;
    var var_3 = _wgslsmith_f_op_f32(func_3(28254u, -vec3<i32>(arg_0, arg_0, arg_0) >> (u_input.c % vec3<u32>(32u)), var_0.x));
    var_3 = 134f;
    return Struct_2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-var_1), -1116f))), false);
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec3<f32>) -> vec2<f32> {
    let var_0 = select(vec3<bool>(_wgslsmith_f_op_f32(-1f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + arg_0), false, _wgslsmith_f_op_f32(f32(-1f) * -2444f) != arg_0), !select(vec3<bool>(true, arg_1, true), select(vec3<bool>(true, true, false), vec3<bool>(false, arg_1, arg_1), arg_1), all(vec2<bool>(arg_1, true)) & arg_1), !select(!select(vec3<bool>(true, true, true), vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(false, true, arg_1)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, arg_1), vec3<bool>(false, arg_1, true), vec3<bool>(arg_1, false, false)), vec3<bool>(true, true, arg_1)), select(vec3<bool>(arg_1, arg_1, true), !vec3<bool>(arg_1, arg_1, false), arg_1)));
    var var_1 = func_2((~(-u_input.a.x) << (~55586u % 32u)) & ~(-7087i));
    var var_2 = Struct_4(-948f, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)) - 1000f), -284f), u_input.a.x, Struct_3(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.c.yz, vec2<u32>(91798u, u_input.b)), vec2<u32>(_wgslsmith_mod_u32(0u, 1u), ~23990u)), u_input.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-664f, -294f, true)), arg_0)), vec3<i32>(-166i, -(min(u_input.d.x, 10575i) << (1u % 32u)), u_input.d.x));
    var_2 = Struct_4(arg_0, var_1.a, var_2.e.x, Struct_3(u_input.c.x, u_input.b & 24641u, _wgslsmith_f_op_f32(417f + -244f)), vec3<i32>(countOneBits(2147483647i), ~u_input.a.x ^ 34467i, -5404i));
    let var_3 = Struct_4(392f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-242f, 664f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(var_2.b, var_2.b), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-123f, 297f))), var_0.zz)))), _wgslsmith_dot_vec4_i32(vec4<i32>(~_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.e.x, u_input.d.x), ~var_2.e.zz), u_input.a.x, -12917i), ~vec4<i32>(_wgslsmith_mod_i32(13361i, -2147483647i), var_2.e.x, _wgslsmith_div_i32(-1i, 30400i), -var_2.e.x)), Struct_3(~var_2.d.a, firstTrailingBit(firstLeadingBit(~var_2.d.b)), arg_2.x), vec3<i32>(max(1i, u_input.a.x), -abs(~u_input.a.x), ~(firstTrailingBit(38676i) ^ -u_input.a.x)));
    return _wgslsmith_f_op_vec2_f32(exp2(var_1.a));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: f32, arg_3: u32) -> Struct_2 {
    var var_0 = u_input.d;
    let var_1 = arg_1.c;
    var_0 = _wgslsmith_mult_vec4_i32(u_input.d, u_input.d);
    let var_2 = true;
    var var_3 = max(vec4<i32>(32476i, abs(var_0.x), _wgslsmith_sub_i32(_wgslsmith_div_i32(-u_input.a.x, ~var_0.x), firstLeadingBit(max(61620i, u_input.d.x))), -1i), _wgslsmith_sub_vec4_i32(~(~(-u_input.d)), ~(-vec4<i32>(var_0.x, 2147483647i, var_0.x, u_input.a.x) | (u_input.d << (vec4<u32>(62838u, 61082u, arg_1.a, 90664u) % vec4<u32>(32u))))));
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_0, vec2<f32>(arg_2, arg_0.x))), arg_0), arg_0)) - arg_0), var_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1654f), false, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -771f, -1494f) - vec3<f32>(-1151f, -1721f, -1564f)))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(266f, 471f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -807f)), vec2<bool>(false, false))))), Struct_3(u_input.b, ~_wgslsmith_mod_u32(0u, _wgslsmith_clamp_u32(4294967295u, 1u, 4559u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f + 1349f))))), 1402f, 0u);
    let var_1 = Struct_3(~_wgslsmith_add_u32(~(1u >> (u_input.c.x % 32u)), 41802u), firstLeadingBit(0u), _wgslsmith_f_op_f32(f32(-1f) * -269f));
    let var_2 = all(vec2<bool>(var_0.b, false)) == var_0.b;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, 954f, var_1.c, 405f))))))));
    let var_4 = min(vec3<u32>(108615u, _wgslsmith_mult_u32(~var_1.b, 4294967295u), 1u), u_input.c);
    let var_5 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3.x)))))), _wgslsmith_div_f32(-776f, 952f), -956f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(-var_1.c)))) - _wgslsmith_f_op_f32(236f + 330f)));
    var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_5)));
    let var_6 = false;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, ~min(var_4, ~var_4), 6441u);
}

