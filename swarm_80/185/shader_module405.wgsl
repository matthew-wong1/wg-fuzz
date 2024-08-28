struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    var var_0 = Struct_3(vec4<bool>(true, !(countOneBits(u_input.e) <= _wgslsmith_mult_i32(u_input.d, u_input.d)), all(vec2<bool>(true, true)), true | any(vec3<bool>(true, true, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -800f), 181f), _wgslsmith_add_i32(~u_input.e, ~(-u_input.e)) << (reverseBits(37468u) % 32u), max(vec3<i32>(-1i) * -(vec3<i32>(-1i, -1i, 41779i) | vec3<i32>(u_input.e, u_input.d, -25333i)), firstLeadingBit(~vec3<i32>(u_input.e, u_input.e, u_input.e))), Struct_2(Struct_1(u_input.b, 11241u, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1165f, 1641f, -593f, -457f)))), Struct_1(1u, ~59017u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-430f, -693f, -1000f, -2738f))), all(select(vec2<bool>(false, false), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true)))));
    var var_1 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(-7956i, u_input.e, 37705i, -5185i), vec4<i32>(u_input.d, u_input.e, -1i, var_0.d.x)), var_0.c), 31776i), (_wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.e, -2147483647i, -6351i), select(u_input.e, -23914i, var_0.e.c)) | countOneBits(var_0.c)) | max(_wgslsmith_clamp_i32(u_input.e, -31535i, var_0.c), -_wgslsmith_div_i32(u_input.d, u_input.e)), -1i);
    var var_2 = Struct_1(u_input.a.x, _wgslsmith_clamp_u32(u_input.b, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.a), u_input.a), 4294967295u), 1u), var_0.e.a.c);
    var_0 = Struct_3(var_0.a, 1000f, -1i, vec3<i32>(u_input.d, var_1.x, var_1.x), var_0.e);
    var_0 = Struct_3(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.c.x, -1787f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.e.a.c.x)))) - var_0.e.a.c.x), _wgslsmith_mult_i32(var_1.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(firstLeadingBit(var_1.x), i32(-1i) * -35375i), countOneBits(66290i) & _wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_0.d.x, var_1.x, u_input.d), vec4<i32>(-2147483647i, -23434i, -36781i, 4823i)))), ~abs(vec3<i32>(17132i ^ u_input.e, firstTrailingBit(var_0.c), _wgslsmith_mult_i32(2147483647i, -1i))), var_0.e);
    return _wgslsmith_clamp_i32(var_0.d.x, reverseBits(28781i), ~_wgslsmith_mult_i32(countOneBits(~var_1.x), var_0.c));
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = 0u;
    var var_1 = Struct_2(Struct_1(~58162u, ~u_input.a.x, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(select(-1533f, -947f, true)), -863f, _wgslsmith_f_op_f32(452f * -516f), _wgslsmith_f_op_f32(floor(131f)))))), Struct_1(~(~(~46999u)), countOneBits(74618u), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, 306f, -938f, -255f)))))))), true);
    let var_2 = vec4<i32>(0i, func_3(), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(arg_0, max(-2147483647i, -2147483647i)), u_input.e), _wgslsmith_clamp_vec2_i32(~(-vec2<i32>(u_input.e, -33051i)), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(58643i, arg_0), vec2<i32>(arg_0, arg_0)), vec2<i32>(u_input.e, u_input.e)), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 30776i), vec2<i32>(u_input.e, -1i)) & vec2<i32>(u_input.e, 1964i))), u_input.e);
    var_1 = Struct_2(Struct_1(var_1.b.a, _wgslsmith_clamp_u32(~var_0, ~(~var_0), var_1.b.b), vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.c.x), _wgslsmith_div_f32(-396f, _wgslsmith_div_f32(var_1.b.c.x, var_1.a.c.x)), _wgslsmith_f_op_f32(-var_1.b.c.x), var_1.a.c.x)), Struct_1(~_wgslsmith_add_u32(76945u, var_0) & var_0, ~(~(~0u)), vec4<f32>(_wgslsmith_f_op_f32(var_1.a.c.x + _wgslsmith_div_f32(var_1.b.c.x, -241f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_1.b.c.x, var_1.a.c.x, true)))), _wgslsmith_f_op_f32(-var_1.a.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -619f)))), var_1.c);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.c.x, var_1.b.c.x))))))));
    return Struct_1(_wgslsmith_mod_u32(var_1.b.a, var_1.a.b), var_1.b.b, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(var_1.a.c - var_1.a.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_3.x, -387f, 751f) + vec4<f32>(var_3.x, -888f, 346f, var_3.x)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3.x, var_1.b.c.x, var_3.x, 475f), vec4<f32>(-463f, var_1.a.c.x, 1000f, var_3.x)))), select(!vec4<bool>(false, var_1.c, true, var_1.c), select(vec4<bool>(var_1.c, false, false, var_1.c), vec4<bool>(true, false, var_1.c, true), vec4<bool>(true, true, false, var_1.c)), vec4<bool>(var_1.c, var_1.c, var_1.c, var_1.c)))), var_1.b.c)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> i32 {
    let var_0 = Struct_3(select(select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true)), vec4<bool>(true, true, true, true), true), vec4<bool>((u_input.d < u_input.e) | false, select(arg_0.c.x <= arg_0.c.x, true, true), true, true), false), arg_0.c.x, u_input.e, ~min(vec3<i32>(max(u_input.d, u_input.d), _wgslsmith_dot_vec2_i32(vec2<i32>(53353i, 52657i), vec2<i32>(u_input.e, u_input.e)), 0i), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.e, u_input.d, 1i), vec3<i32>(1i, 1i, 1i))), Struct_2(func_2(reverseBits(2147483647i)), func_2(abs(abs(u_input.d))), false));
    return ~u_input.d;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: Struct_4) -> Struct_1 {
    let var_0 = countOneBits(func_4(func_2(-2147483647i), firstLeadingBit(vec4<u32>(4294967295u, 39851u, 1u, arg_1.x)) << ((vec4<u32>(arg_1.x, 1u, u_input.a.x, 4294967295u) & vec4<u32>(20352u, arg_1.x, 17160u, 4294967295u)) % vec4<u32>(32u)))) == ~(~23224i);
    var var_1 = -1000f;
    let var_2 = ~(-arg_3.a.x);
    var_1 = _wgslsmith_f_op_f32(sign(-412f));
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -453f)));
    return Struct_1(_wgslsmith_add_u32(~arg_1.x, select(~_wgslsmith_mult_u32(60117u, 56592u), 1u, true)), arg_1.x, vec4<f32>(_wgslsmith_f_op_f32(abs(253f)), 1420f, -1651f, -1258f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    let var_1 = Struct_2(Struct_1(~_wgslsmith_div_u32(0u, ~u_input.b), u_input.a.x | 41129u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 840f, 141f, 992f)))))), func_1(-vec3<i32>(_wgslsmith_mult_i32(-2147483647i, 0i), -17343i, 2147483647i), firstLeadingBit(u_input.a.zz), select(vec4<i32>(-2147483647i, _wgslsmith_mod_i32(u_input.e, u_input.d), u_input.e, u_input.d), _wgslsmith_mult_vec4_i32(~vec4<i32>(-12222i, u_input.e, u_input.d, 51373i), ~vec4<i32>(17814i, -23795i, u_input.d, u_input.d)), (u_input.a.x << (1u % 32u)) != 1u), Struct_4(min(vec2<i32>(u_input.d, u_input.e), vec2<i32>(u_input.e, 27503i)))), true);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b.c.zz));
    var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_2.x * var_2.x), 352f) * func_1(countOneBits(~vec3<i32>(u_input.e, u_input.d, -2147483647i)), vec2<u32>(14281u, 0u), vec4<i32>(-6488i, u_input.d, _wgslsmith_sub_i32(34438i, -u_input.e), ~37421i), Struct_4(_wgslsmith_mod_vec2_i32(min(vec2<i32>(-23284i, -1i), vec2<i32>(u_input.e, 3362i)), vec2<i32>(u_input.d, -35347i) >> (u_input.a.xx % vec2<u32>(32u))))).c.yx);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(var_2.x - var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.c.x * _wgslsmith_f_op_f32(min(var_1.b.c.x, var_1.a.c.x)))) + 263f), _wgslsmith_f_op_f32(-func_2(_wgslsmith_mod_i32(u_input.d, u_input.d)).c.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(select(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.e, u_input.d, 1i), vec3<i32>(19901i, u_input.d, u_input.d)), vec3<i32>(u_input.e, 2147483647i, u_input.e) >> (u_input.a % vec3<u32>(32u)), false) ^ (countOneBits(vec3<i32>(13122i, u_input.e, u_input.d)) ^ vec3<i32>(u_input.e, 900i, u_input.d))), ~61809u, -_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(u_input.e, u_input.e)), u_input.d | u_input.e, u_input.d, u_input.e), firstLeadingBit(countOneBits(vec4<i32>(u_input.d, u_input.e, u_input.d, u_input.d)))), ~var_1.b.a);
}

