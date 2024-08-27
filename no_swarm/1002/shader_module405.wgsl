struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> vec3<f32> {
    let var_0 = reverseBits(~(~arg_2.a));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(628f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, 699f))))), 357f));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(arg_2.c.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(f32(-1f) * -342f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(arg_2.c.a)))))));
    var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + -570f)));
    var_2 = arg_2.c;
    return vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_2.a, arg_1.c.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1121f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * 1553f) * _wgslsmith_f_op_f32(arg_0.a * var_1))) + -1271f), 727f);
}

fn func_2() -> i32 {
    var var_0 = Struct_2(vec4<u32>(9427u, u_input.b, u_input.a.x, u_input.b), u_input.a.x, Struct_1(_wgslsmith_f_op_f32(1000f * 695f)));
    var var_1 = vec3<bool>(false, select(true, ~(10133u | var_0.a.x) > 0u, all(vec4<bool>(true, true, true, all(vec3<bool>(true, true, false))))), !((select(77668u, var_0.b, false) > abs(1u)) & true));
    var var_2 = Struct_3(-((i32(-1i) * -16824i) << (firstTrailingBit(~0u) % 32u)));
    var var_3 = any(vec3<bool>(any(!select(vec4<bool>(false, true, var_1.x, true), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(false, false, var_1.x, true))), ~(-7151i) == u_input.c, !any(var_1.xz)));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(1000f), Struct_2(firstLeadingBit(var_0.a) ^ ~vec4<u32>(1u, u_input.b, var_0.b, u_input.b), countOneBits(44288u) >> (var_0.a.x % 32u), var_0.c), Struct_2(vec4<u32>(102660u, ~var_0.a.x, ~52335u, _wgslsmith_div_u32(24992u, 40086u)), u_input.a.x, var_0.c))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.a, var_0.c.a, var_0.c.a)))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.c.a, var_0.c.a, -400f)))))))));
    return u_input.c;
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.a.x;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(309f, 688f))))));
    let var_2 = ~(-(vec2<i32>(func_2(), -u_input.c) << (~abs(u_input.a.yz) % vec2<u32>(32u))));
    var var_3 = (-var_2 | var_2) & vec2<i32>(firstLeadingBit(-(var_2.x & var_2.x)), _wgslsmith_sub_i32(max(i32(-1i) * -53625i, -u_input.c), u_input.c));
    let var_4 = u_input.b;
    return Struct_1(var_1.a);
}

fn func_4(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec4<f32>) -> Struct_3 {
    let var_0 = min(~_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, arg_1.x, 0i), vec3<i32>(1i, 6589i, arg_1.x)) << ((vec3<u32>(4294967295u, 4294967295u, u_input.a.x) ^ vec3<u32>(arg_2.a.x, u_input.b, arg_2.a.x)) % vec3<u32>(32u)), -vec3<i32>(arg_1.x, arg_1.x, u_input.c)), -(_wgslsmith_add_vec3_i32(-vec3<i32>(43315i, u_input.c, arg_1.x), vec3<i32>(arg_1.x, u_input.c, 0i)) | (_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.x, -1i, u_input.c), vec3<i32>(arg_1.x, u_input.c, arg_1.x)) ^ max(vec3<i32>(6419i, 1i, 1i), vec3<i32>(42426i, -61128i, -1i)))));
    let var_1 = u_input.a;
    var var_2 = var_0.x;
    var_2 = var_0.x;
    var var_3 = any(vec3<bool>(any(vec2<bool>(true, true)), false, false));
    return Struct_3(u_input.c);
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> vec3<i32> {
    let var_0 = -_wgslsmith_add_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.a, arg_1.a), select(vec2<i32>(-58578i, u_input.c), vec2<i32>(u_input.c, arg_1.a), vec2<bool>(true, true))), vec2<i32>((-1i << (u_input.a.x % 32u)) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a, arg_1.a, u_input.c, arg_1.a), vec4<i32>(50954i, -24392i, arg_1.a, 1i)), -_wgslsmith_sub_i32(21397i, 2147483647i)));
    var var_1 = Struct_2(u_input.a, ~0u, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(-1030f), Struct_2(vec4<u32>(1u, u_input.a.x, u_input.b, 46638u), u_input.a.x, Struct_1(arg_0)), Struct_2(vec4<u32>(u_input.a.x, u_input.b, 16843u, u_input.a.x), u_input.b, Struct_1(-458f)))).x)));
    var var_2 = var_1.c;
    var var_3 = var_1.c;
    var var_4 = vec4<u32>(~(~4316u), 1u, (max(0u, ~u_input.a.x) | select(~9436u, u_input.b, true)) ^ ~u_input.a.x, ~1u);
    return ~abs(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(52868i, 0i, 0i), vec3<i32>(var_0.x, 38512i, -25782i)), min(vec3<i32>(var_0.x, 2147483647i, 39345i), vec3<i32>(0i, u_input.c, var_0.x))) << ((_wgslsmith_add_vec3_u32(var_4.wzw, vec3<u32>(1u, var_4.x, 60751u)) << (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 75038u, 41252u), vec3<u32>(u_input.b, 4294967295u, u_input.a.x)) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(max(-1077f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_1 = _wgslsmith_mult_vec3_i32(((vec3<i32>(-2147483647i, -1i, 2096i) >> (vec3<u32>(u_input.b, 1u, u_input.b) % vec3<u32>(32u))) ^ -vec3<i32>(u_input.c, -17308i, -2147483647i)) | (~vec3<i32>(u_input.c, -47342i, u_input.c) | (vec3<i32>(41972i, -2147483647i, -14610i) ^ vec3<i32>(u_input.c, u_input.c, u_input.c))), vec3<i32>(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 62972i), vec2<i32>(u_input.c, u_input.c))), ~u_input.c | u_input.c, -5753i)) | vec3<i32>(u_input.c, -(1i ^ max(u_input.c, u_input.c)), -2147483647i);
    let var_2 = _wgslsmith_dot_vec3_i32(abs(vec3<i32>(select(0i, u_input.c, false) ^ u_input.c, firstLeadingBit(-var_1.x), -(~var_1.x))), func_5(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1774f))))), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-155f * -966f)), countOneBits(abs(vec2<i32>(-2147483647i, var_1.x))), Struct_2(u_input.a >> (u_input.a % vec4<u32>(32u)), _wgslsmith_add_u32(u_input.b, 10252u), func_1()), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(918f, -785f, 2131f, -1470f)))))));
    let var_3 = Struct_3(0i);
    var_0 = _wgslsmith_f_op_f32(-977f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -762f) + _wgslsmith_f_op_f32(f32(-1f) * -1022f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(566f + 433f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(365f))))));
    let var_4 = -abs(vec4<i32>(-1i, 0i, var_3.a, min(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2, 1i, u_input.c, u_input.c), vec4<i32>(-2147483647i, 44142i, var_1.x, 1i)), 0i >> (u_input.b % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~4294967295u, _wgslsmith_dot_vec3_u32(max(_wgslsmith_mod_vec3_u32(u_input.a.xxx, vec3<u32>(u_input.a.x, 4294967295u, u_input.b)), ~vec3<u32>(u_input.a.x, 19799u, u_input.a.x)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 30395u), u_input.a.wzx), vec3<u32>(28717u, 0u, 4294967295u), select(vec3<u32>(1u, u_input.b, u_input.a.x), vec3<u32>(1u, u_input.a.x, u_input.b), vec3<bool>(true, false, true))))), ~vec3<u32>(~u_input.b, 4294967295u, 4294967295u), _wgslsmith_clamp_vec2_u32(vec2<u32>(~1u, _wgslsmith_add_u32(u_input.a.x, 28042u)) & _wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(46752u, u_input.a.x)), firstTrailingBit(~vec2<u32>(u_input.a.x, 1u)), vec2<u32>(4294967295u, ~(~4294967295u))));
}

