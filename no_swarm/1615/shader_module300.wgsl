struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
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

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<i32>) -> vec4<bool> {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(124f)) - 1146f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), true);
    let var_1 = false;
    let var_2 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-964f))), _wgslsmith_f_op_f32(step(var_0.a.x, _wgslsmith_f_op_f32(trunc(var_0.a.x))))), any(vec3<bool>(true, false, all(vec4<bool>(var_1, true, var_1, var_1))))), vec4<f32>(-357f, var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.x))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.a.x)), var_0.a.x)), Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, var_0.a.x))), _wgslsmith_f_op_vec2_f32(floor(var_0.a)))))), true), Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.a.x)), _wgslsmith_f_op_f32(floor(1084f))), vec2<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(select(var_0.a.x, var_0.a.x, var_0.b))))), _wgslsmith_mult_i32(u_input.e >> (0u % 32u), -arg_0.x) >= -_wgslsmith_clamp_i32(u_input.b, -1i, -37946i)));
    let var_3 = Struct_1(var_0.a, var_2.c.b);
    let var_4 = var_0.a;
    return vec4<bool>(all(select(vec2<bool>(var_0.b | false, select(var_2.d.b, var_1, false)), select(!vec2<bool>(var_2.d.b, var_0.b), select(vec2<bool>(var_1, var_3.b), vec2<bool>(var_3.b, true), vec2<bool>(true, true)), var_1), select(all(vec3<bool>(true, var_0.b, true)), var_1, var_3.b))), false, any(!vec4<bool>(any(vec3<bool>(true, var_2.c.b, var_2.a.b)), all(vec2<bool>(false, var_1)), var_3.b != var_1, var_0.b)), !any(select(vec4<bool>(var_2.c.b, var_2.c.b, true, false), !vec4<bool>(var_1, var_2.d.b, false, var_0.b), var_2.d.b)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = select(vec4<bool>(arg_1.b, false, arg_1.b, any(vec2<bool>(all(vec3<bool>(true, arg_1.b, true)), true))), !(!vec4<bool>(true, true, true, arg_0.x | arg_1.b)), select(!vec4<bool>(!arg_0.x, all(vec3<bool>(arg_0.x, arg_0.x, true)), arg_1.b, arg_1.b & false), !(!func_3(vec2<i32>(u_input.b, 2147483647i))), true));
    var var_1 = u_input.d.x;
    var_1 = countOneBits(4587u);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), 1f, arg_1.a.x);
    let var_3 = arg_1;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a.x, 1000f) + var_2.xx))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = arg_0;
    var var_1 = ~u_input.d.x;
    var_1 = _wgslsmith_sub_u32((~u_input.d.x & ~5792u) & ((u_input.d.x >> (u_input.d.x % 32u)) & (u_input.d.x | u_input.d.x)), u_input.d.x) ^ _wgslsmith_mult_u32(~u_input.d.x, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 3663u, u_input.d.x) | vec4<u32>(u_input.d.x, u_input.d.x, 1u, u_input.d.x), abs(vec4<u32>(4294967295u, 1u, u_input.d.x, u_input.d.x))), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, 51840u, 30388u, 4294967295u), vec4<u32>(19460u, 134507u, 39803u, u_input.d.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(32889u, u_input.d.x, 1u, 23044u), vec4<u32>(44386u, 50572u, 4294967295u, 2469u), vec4<u32>(u_input.d.x, 1u, u_input.d.x, u_input.d.x)))));
    var_1 = 1u;
    let var_2 = vec4<i32>(2147483647i, -1i, _wgslsmith_mod_i32(u_input.b, ~u_input.a) & u_input.a, _wgslsmith_mod_i32(~2337i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.c, -2147483647i, 1i, u_input.c), _wgslsmith_clamp_vec4_i32(vec4<i32>(-26961i, u_input.c, -47374i, 1i), vec4<i32>(1i, u_input.c, -7048i, u_input.e), vec4<i32>(u_input.e, u_input.b, u_input.e, -25446i)), var_0.b), abs(-vec4<i32>(u_input.b, u_input.b, u_input.b, 1i)))));
    return !arg_1.yx;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = vec3<u32>(u_input.d.x, 57886u, u_input.d.x);
    var var_1 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(arg_0.xz, Struct_1(vec2<f32>(193f, 429f), arg_0.x)))) + vec2<f32>(-685f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), false), arg_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec2_f32(func_2(!(!vec2<bool>(arg_0.x, arg_0.x)), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(-1305f, -676f), vec2<f32>(-1680f, -176f)), select(false, arg_0.x, false)))).x)), Struct_2(Struct_1(vec2<f32>(1f, _wgslsmith_f_op_f32(max(-293f, 1034f))), select(true, arg_0.x, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 2512f, -237f, -800f) + vec4<f32>(786f, 1206f, 483f, -220f))))), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1379f, 744f))), select(arg_0.x, false, true)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(sign(1127f)), _wgslsmith_f_op_f32(step(204f, -603f))), !(!arg_0.x))));
    var var_2 = min(8927i, select(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 51739i, -1i, u_input.c), firstLeadingBit(vec4<i32>(-46825i, 58242i, -2147483647i, 47796i))), 22254i, true) >> (u_input.d.x % 32u));
    return Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(408f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, 1422f)))))), !arg_0.x && any(func_3(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -22326i), vec2<i32>(780i, -1i))).wzw));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: vec4<f32>) -> u32 {
    var var_0 = _wgslsmith_add_vec3_i32(-_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(0i, u_input.c, -22546i), select(vec3<i32>(u_input.b, u_input.b, 0i), vec3<i32>(0i, u_input.a, -32792i), arg_2.b)), vec3<i32>(_wgslsmith_div_i32(1i, arg_1), i32(-1i) * -1i, u_input.a & 34549i)), reverseBits(select(select(countOneBits(vec3<i32>(-3587i, 0i, 4292i)), vec3<i32>(-2094i, u_input.b, -17123i), false), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1, -2147483647i, u_input.a), vec3<i32>(9716i, arg_1, u_input.c)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, arg_1, 1i), vec3<i32>(arg_1, arg_1, u_input.c)), _wgslsmith_add_vec3_i32(vec3<i32>(arg_1, 1i, u_input.c), vec3<i32>(15031i, 35055i, arg_1))), vec3<bool>(true, true, arg_0.a.b))));
    let var_1 = _wgslsmith_mult_i32(~_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a, -12793i), u_input.c), 2147483647i) ^ u_input.e;
    var var_2 = !(!arg_2.b);
    var var_3 = ~u_input.b;
    var var_4 = _wgslsmith_mult_vec4_u32(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, abs(1u), 1u, u_input.d.x), countOneBits(~vec4<u32>(u_input.d.x, 0u, u_input.d.x, u_input.d.x)))), _wgslsmith_mult_vec4_u32(vec4<u32>(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, 6254u), vec3<u32>(u_input.d.x, 9989u, u_input.d.x))), _wgslsmith_dot_vec2_u32(u_input.d, ~vec2<u32>(u_input.d.x, 4294967295u)), u_input.d.x, _wgslsmith_mod_u32(7502u, 66265u) | (u_input.d.x & 72057u)), max(select(vec4<u32>(3972u, 19899u, u_input.d.x, 80718u), vec4<u32>(4294967295u, 4294967295u, u_input.d.x, 118754u), vec4<bool>(true, true, false, arg_0.c.b)) >> ((vec4<u32>(u_input.d.x, u_input.d.x, 1u, u_input.d.x) | vec4<u32>(60476u, 1u, u_input.d.x, 4294967295u)) % vec4<u32>(32u)), firstTrailingBit(~vec4<u32>(16935u, 11050u, 4294967295u, 0u)))));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_sub_u32(0u, func_5(Struct_2(Struct_1(vec2<f32>(1098f, 638f), true), _wgslsmith_f_op_vec4_f32(vec4<f32>(1858f, 2037f, 807f, -797f) + vec4<f32>(-252f, 777f, 1027f, -822f)), Struct_1(vec2<f32>(1000f, -1000f), false), Struct_1(vec2<f32>(778f, 1000f), false)), u_input.e, func_1(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(111f, -380f, 204f, -410f))));
    let var_1 = select(min(abs(countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<u32>(var_0, var_0, u_input.d.x)))), vec3<u32>(0u, u_input.d.x, firstLeadingBit(u_input.d.x))), ~_wgslsmith_sub_vec3_u32(select(~vec3<u32>(1u, 0u, u_input.d.x), ~vec3<u32>(44639u, u_input.d.x, 1u), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false)), ~(~vec3<u32>(23972u, var_0, 7601u))), !((func_3(vec2<i32>(u_input.b, u_input.e)).x && false) | true));
    let var_2 = func_1(!select(vec4<bool>(func_1(vec4<bool>(false, false, false, true)).b, func_1(vec4<bool>(true, false, false, false)).b, true, 1u <= var_0), func_3(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, u_input.b), vec2<i32>(37928i, -52169i), vec2<i32>(-1i, 1i))), any(select(vec2<bool>(false, true), vec2<bool>(false, true), true))));
    let var_3 = _wgslsmith_mod_vec2_u32(~(~vec2<u32>(~16143u, var_0)), vec2<u32>(100751u, ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(var_0, var_0), var_1.x)));
    var var_4 = Struct_2(func_1(vec4<bool>(!(u_input.a != u_input.a), var_2.b, !var_2.b, false)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1517f, -692f, -1434f, 1058f)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a.x * -161f), _wgslsmith_f_op_f32(trunc(-1349f))), -930f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.a.x))), var_2.a.x))), var_2, var_2);
    let var_5 = Struct_2(var_2, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_4.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-456f, var_4.b.x, var_2.a.x, 2691f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_4.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1166f, var_4.d.a.x, var_4.a.a.x, var_2.a.x) * var_4.b))) - var_4.b)), func_1(!select(!vec4<bool>(false, false, var_4.c.b, var_4.d.b), func_3(vec2<i32>(-652i, 0i)), 25093u != u_input.d.x)), func_1(vec4<bool>(var_4.c.b, !(!var_4.d.b), !var_4.d.b, !var_4.d.b)));
    let var_6 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(263f, ~vec2<u32>(11846u, ~var_0), abs(firstTrailingBit(_wgslsmith_mult_u32(~var_0, 21348u))), ~41461u);
}

