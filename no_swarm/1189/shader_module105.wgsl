struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: vec3<f32>) -> u32 {
    let var_0 = countOneBits(62480u);
    let var_1 = !any(vec2<bool>(true, min(u_input.c.x, u_input.b) < _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, u_input.b, 233i, u_input.b), vec4<i32>(u_input.c.x, arg_0.x, arg_0.x, 3955i))));
    var var_2 = arg_2.xy;
    var var_3 = Struct_1(~select(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, u_input.b) ^ vec3<i32>(arg_0.x, -20847i, arg_0.x), firstTrailingBit(vec3<i32>(u_input.c.x, 0i, 0i))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, arg_0.x, arg_0.x), vec3<i32>(-1858i, -24278i, 52821i), vec3<i32>(-1i, -2147483647i, -442i)) << (max(u_input.a.zxz, u_input.a.zxy) % vec3<u32>(32u)), vec3<bool>(var_1, false, 2147483647i > arg_0.x)), _wgslsmith_sub_vec4_u32(u_input.a, u_input.a), ~11355u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, arg_2.x)) * _wgslsmith_div_vec3_f32(arg_2, arg_2)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-300f, _wgslsmith_f_op_f32(select(arg_2.x, var_2.x, true)), _wgslsmith_f_op_f32(-arg_2.x)))));
    return var_3.b.x;
}

fn func_2() -> u32 {
    var var_0 = -abs(firstTrailingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.b, u_input.b, -1i), vec4<i32>(u_input.c.x, 23257i, 20383i, u_input.b)), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -1i))));
    let var_1 = ~max(1u, ~68786u);
    var_0 = -(_wgslsmith_add_vec4_i32(-(vec4<i32>(-16366i, -43074i, var_0.x, 2147483647i) & vec4<i32>(u_input.c.x, var_0.x, var_0.x, 40811i)), vec4<i32>(-2147483647i, -2147483647i, u_input.c.x & 5805i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, var_0.x, u_input.c.x), var_0.zzy))) & min(vec4<i32>(var_0.x, 24332i, 44163i, var_0.x) >> (~vec4<u32>(22828u, 43586u, u_input.a.x, var_1) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, u_input.c.x, 2528i, var_0.x), vec4<i32>(-1i, 1i, 26432i, u_input.b) >> (vec4<u32>(var_1, var_1, 38538u, u_input.a.x) % vec4<u32>(32u)))));
    var_0 = vec4<i32>(abs(i32(-1i) * -1i), -var_0.x << (~func_3(countOneBits(u_input.c), _wgslsmith_sub_u32(1848u, u_input.a.x), vec3<f32>(-436f, -2108f, -204f)) % 32u), u_input.b, 1i);
    var_0 = vec4<i32>(-14099i, -(~var_0.x), abs(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_0.x, -4199i), select(vec2<i32>(var_0.x, var_0.x), u_input.c, false)), -vec2<i32>(u_input.b, 0i) ^ (vec2<i32>(2147483647i, var_0.x) << (u_input.a.yw % vec2<u32>(32u))))), firstLeadingBit(1i));
    return _wgslsmith_div_u32(u_input.a.x, var_1);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = 3126i;
    var var_1 = arg_1;
    var var_2 = -(vec4<i32>(-1i) * -(vec4<i32>(-1i) * -vec4<i32>(arg_0.a.x, u_input.b, 2147483647i, -1i)));
    let var_3 = !(!vec2<bool>(true, any(vec3<bool>(true, true, true))));
    var_2 = vec4<i32>(countOneBits(abs(-2147483647i)), _wgslsmith_add_i32(var_2.x, i32(-1i) * -8350i), ~(-35597i), ~35624i);
    return Struct_1(var_2.wzz, var_1.b, ~59995u, vec3<f32>(arg_0.d.x, 193f, var_1.d.x));
}

fn func_1() -> i32 {
    var var_0 = func_4(Struct_1(vec3<i32>(select(u_input.b >> (u_input.a.x % 32u), i32(-1i) * -1i, true), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.c.x, 38460i, u_input.b, -49903i)), max(vec4<i32>(-7045i, 0i, u_input.c.x, u_input.b), vec4<i32>(u_input.c.x, u_input.c.x, -53440i, u_input.b))), u_input.b), ~countOneBits(vec4<u32>(29776u, 14755u, 0u, 1u)), func_2(), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(353f)))), 814f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(785f, 1000f, false)), _wgslsmith_f_op_f32(-1000f * -1000f))))), Struct_1(~select(vec3<i32>(66163i, u_input.c.x, 2932i) | vec3<i32>(u_input.c.x, u_input.b, u_input.c.x), vec3<i32>(70454i, u_input.c.x, u_input.c.x) ^ vec3<i32>(u_input.b, u_input.b, 16382i), true), ~(u_input.a << (vec4<u32>(25343u, u_input.a.x, u_input.a.x, 1u) % vec4<u32>(32u))), ~abs(~0u), vec3<f32>(1640f, _wgslsmith_f_op_f32(trunc(-605f)), _wgslsmith_f_op_f32(-1000f + 218f))));
    var_0 = Struct_1(var_0.a, u_input.a, select(~(~var_0.b.x) ^ var_0.c, var_0.c, true), vec3<f32>(var_0.d.x, var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -849f))));
    var_0 = func_4(func_4(Struct_1(var_0.a, max(var_0.b, vec4<u32>(1u, 4294967295u, 19753u, 0u)), u_input.a.x, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_0.d * var_0.d)))), func_4(func_4(func_4(Struct_1(var_0.a, vec4<u32>(var_0.b.x, u_input.a.x, 9090u, u_input.a.x), 4294967295u, var_0.d), Struct_1(vec3<i32>(var_0.a.x, -34499i, 0i), vec4<u32>(44658u, u_input.a.x, 75344u, 85283u), 4294967295u, vec3<f32>(-398f, 501f, 141f))), func_4(Struct_1(var_0.a, var_0.b, 48533u, var_0.d), Struct_1(vec3<i32>(var_0.a.x, u_input.b, u_input.c.x), vec4<u32>(u_input.a.x, 44012u, 4294967295u, u_input.a.x), 4294967295u, vec3<f32>(var_0.d.x, 573f, var_0.d.x)))), Struct_1(vec3<i32>(u_input.b, var_0.a.x, u_input.b), _wgslsmith_clamp_vec4_u32(var_0.b, var_0.b, u_input.a), 1u, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.d.x, var_0.d.x, var_0.d.x)))))), Struct_1(vec3<i32>(_wgslsmith_div_i32(6027i, func_4(Struct_1(var_0.a, var_0.b, var_0.b.x, var_0.d), Struct_1(vec3<i32>(0i, 1i, 2147483647i), vec4<u32>(0u, var_0.c, 5539u, 47290u), var_0.b.x, var_0.d)).a.x), ~u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(31271i, var_0.a.x), var_0.a.yz)), var_0.b, ~var_0.c, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.d) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(409f, var_0.d.x, var_0.d.x), var_0.d, vec3<bool>(true, false, false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, -2695f, 275f)) + vec3<f32>(588f, var_0.d.x, 359f))))));
    var_0 = Struct_1(var_0.a, countOneBits(_wgslsmith_clamp_vec4_u32(~u_input.a, abs(~vec4<u32>(u_input.a.x, 40202u, 27976u, u_input.a.x)), u_input.a)), ~max(~(~30320u), firstLeadingBit(var_0.c) ^ min(u_input.a.x, 4294967295u)), _wgslsmith_f_op_vec3_f32(-var_0.d));
    var_0 = Struct_1(var_0.a << (reverseBits(u_input.a.wxx) % vec3<u32>(32u)), vec4<u32>(abs(var_0.b.x), 1u, _wgslsmith_div_u32(u_input.a.x, u_input.a.x), 0u), func_4(Struct_1(firstTrailingBit(-vec3<i32>(-10478i, u_input.c.x, u_input.b)), abs(u_input.a) | (vec4<u32>(0u, 68686u, u_input.a.x, 79975u) | vec4<u32>(u_input.a.x, u_input.a.x, 0u, var_0.c)), 1u, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(var_0.d))))), func_4(func_4(Struct_1(var_0.a, var_0.b, var_0.b.x, var_0.d), Struct_1(var_0.a, vec4<u32>(u_input.a.x, 39212u, var_0.c, u_input.a.x), 36266u, vec3<f32>(var_0.d.x, var_0.d.x, var_0.d.x))), Struct_1(var_0.a, select(var_0.b, vec4<u32>(var_0.c, var_0.b.x, u_input.a.x, 36140u), true), func_3(vec2<i32>(-16398i, -1i), 14592u, vec3<f32>(var_0.d.x, var_0.d.x, -1654f)), var_0.d))).c, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(var_0.d, vec3<f32>(_wgslsmith_f_op_f32(max(-2036f, 1526f)), var_0.d.x, var_0.d.x), all(vec2<bool>(false, false)))), var_0.d)));
    return _wgslsmith_clamp_i32(~min(41981i, -var_0.a.x), _wgslsmith_sub_i32(1i, abs(-var_0.a.x)), u_input.b) & u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!vec2<bool>(any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false))), !any(vec4<bool>(true, true, true, true))));
    var var_1 = -632f;
    var var_2 = all(vec3<bool>(reverseBits(func_1()) == _wgslsmith_clamp_i32(select(1i, 0i, var_0), 2147483647i, countOneBits(18438i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1755f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-579f))), true));
    var_1 = -850f;
    var_2 = false;
    let var_3 = _wgslsmith_mult_i32((-2147483647i ^ u_input.b) >> (~(~_wgslsmith_mod_u32(u_input.a.x, 0u)) % 32u), abs(-2147483647i));
    var_1 = _wgslsmith_f_op_f32(max(-218f, _wgslsmith_f_op_f32(min(-905f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(896f, 413f)), -890f))))));
    var var_4 = Struct_1(-select(vec3<i32>(2147483647i, u_input.b, u_input.b >> (4294967295u % 32u)), vec3<i32>(u_input.b | -25677i, -1i | u_input.c.x, -u_input.c.x), vec3<bool>(true, false, var_0)), select(u_input.a, u_input.a, vec4<bool>(true, true, true, true)), _wgslsmith_div_u32(~func_3(-vec2<i32>(-1i, -2147483647i), u_input.a.x, vec3<f32>(980f, 234f, -296f)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a.zzw << (vec3<u32>(0u, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), u_input.a.xxz | vec3<u32>(u_input.a.x, 1u, u_input.a.x)), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<u32>(6110u, u_input.a.x, 29718u)), u_input.a.xxz))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-705f, -260f, 236f) * vec3<f32>(-647f, 1741f, -344f)), vec3<f32>(-1005f, -1780f, 1376f), var_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-624f, 1104f, -1000f))), all(vec4<bool>(!var_0, true, true, all(vec4<bool>(true, var_0, var_0, var_0)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_4.d.x)), -269f)), -abs(_wgslsmith_sub_i32(-2147483647i, func_4(Struct_1(vec3<i32>(u_input.c.x, 20787i, 0i), var_4.b, u_input.a.x, vec3<f32>(228f, var_4.d.x, 937f)), Struct_1(var_4.a, u_input.a, 60847u, var_4.d)).a.x)), countOneBits(var_4.b.zx), _wgslsmith_f_op_f32(-var_4.d.x), _wgslsmith_div_i32(-firstLeadingBit(var_4.a.x >> (var_4.b.x % 32u)), select(reverseBits(2147483647i), -14243i, !var_0) | u_input.b));
}

