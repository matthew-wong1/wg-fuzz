struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
    d: f32,
    e: u32,
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

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: i32) -> vec3<i32> {
    var var_0 = Struct_1(true, -_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0, arg_0, arg_1), vec3<i32>(arg_0, 2147483647i, -1i)) & vec3<i32>(arg_0, -51085i, arg_0), abs(~vec3<i32>(-27303i, arg_1, -1i))), vec4<i32>(-1i, abs(_wgslsmith_div_i32(0i, firstLeadingBit(arg_1))), 0i, i32(-1i) * -12410i), -925f);
    let var_1 = ~(~reverseBits(vec3<u32>(u_input.a, u_input.a, 1u)));
    var_0 = Struct_1(true, select(~vec3<i32>(countOneBits(1i), max(var_0.c.x, 40172i), -18665i), vec3<i32>(0i, (arg_0 | arg_0) & abs(46541i), ~(var_0.b.x & 0i)), vec3<bool>(true, true, var_0.a)), ~_wgslsmith_sub_vec4_i32(abs(var_0.c ^ vec4<i32>(25277i, -47477i, var_0.b.x, arg_1)), ~(~vec4<i32>(var_0.b.x, 2147483647i, var_0.b.x, var_0.b.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.d))) + 334f))));
    var_0 = Struct_1(var_0.a, abs(-(var_0.c.xwy << (vec3<u32>(u_input.a, var_1.x, 71485u) % vec3<u32>(32u))) | _wgslsmith_clamp_vec3_i32(var_0.b, _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.b.x, 53730i, var_0.b.x), vec3<i32>(arg_1, -1i, arg_1), var_0.b), var_0.b)), var_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-745f - var_0.d), _wgslsmith_f_op_f32(round(-1103f))));
    let var_2 = var_0.a;
    return vec3<i32>(select(var_0.c.x, i32(-1i) * -2147483647i, var_0.a), 5930i, -5823i);
}

fn func_2(arg_0: bool, arg_1: i32) -> f32 {
    let var_0 = Struct_4(Struct_1(true, reverseBits(vec3<i32>(_wgslsmith_mod_i32(19686i, 2147483647i), abs(21496i), arg_1)), vec4<i32>(arg_1, arg_1, -max(arg_1, -11567i), 12143i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(342f, 200f))))), arg_0, Struct_1(u_input.a < u_input.a, abs(func_3(arg_1, arg_1) & -vec3<i32>(arg_1, arg_1, arg_1)), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1, -1i & arg_1, abs(-1i), abs(arg_1)), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -13820i, -2147483647i, arg_1) & vec4<i32>(arg_1, arg_1, 2147483647i, arg_1), abs(vec4<i32>(2147483647i, arg_1, arg_1, arg_1)))), 616f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1140f, 203f) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-728f, -898f)))))), Struct_3(_wgslsmith_mod_i32(_wgslsmith_sub_i32(arg_1, 38555i), -select(arg_1, -174i, arg_0)), Struct_1(arg_0, select(vec3<i32>(arg_1, -36634i, arg_1) >> (vec3<u32>(u_input.a, 34341u, u_input.a) % vec3<u32>(32u)), vec3<i32>(arg_1, 2147483647i, arg_1), arg_0), vec4<i32>(arg_1 | arg_1, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, arg_1), vec2<i32>(1i, arg_1)), arg_1, arg_1 | arg_1), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-386f - 487f)))), -(~reverseBits(vec3<i32>(arg_1, 9554i, -14606i)))));
    let var_1 = Struct_2(var_0.a, u_input.a, Struct_1(false, _wgslsmith_mult_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(arg_1, var_0.e.b.c.x, 1i), vec3<i32>(-2147483647i, var_0.e.c.x, arg_1)), max(reverseBits(vec3<i32>(var_0.a.b.x, var_0.c.b.x, arg_1)), vec3<i32>(-1i, arg_1, arg_1))), vec4<i32>(abs(var_0.c.c.x), 2147483647i, arg_1, (i32(-1i) * -5087i) & arg_1), _wgslsmith_f_op_f32(min(var_0.d.x, _wgslsmith_f_op_f32(var_0.d.x * _wgslsmith_f_op_f32(var_0.a.d + -332f))))), vec4<u32>(_wgslsmith_clamp_u32(reverseBits(4294967295u), 0u, ~12233u), u_input.a, select(_wgslsmith_div_u32(u_input.a, 11831u), reverseBits(5993u), any(vec3<bool>(arg_0, arg_0, false))) << (abs(_wgslsmith_mult_u32(u_input.a, 4294967295u)) % 32u), 4385u));
    var var_2 = 10362i;
    var_2 = ~_wgslsmith_dot_vec4_i32(var_0.a.c, reverseBits(firstTrailingBit(-vec4<i32>(-24063i, var_0.a.b.x, arg_1, 0i))));
    let var_3 = var_0.a;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.d.x)), _wgslsmith_f_op_f32(round(var_1.a.d)));
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-902f + 968f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1368f - _wgslsmith_f_op_f32(f32(-1f) * -1097f)), 713f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * 142f), _wgslsmith_f_op_f32(floor(-154f)))))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1841f), -1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -133f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-250f * 1000f), _wgslsmith_f_op_f32(func_2(false, -1i))))));
    let var_1 = Struct_2(Struct_1(false, _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(min(vec3<i32>(47899i, 14280i, -16388i), vec3<i32>(-1i, -39058i, 55896i)), abs(vec3<i32>(-47444i, -7195i, 16514i))), ~select(vec3<i32>(-1i, 0i, 2147483647i), vec3<i32>(-2147483647i, 2147483647i, -1i), true), vec3<i32>(i32(-1i) * -2147483647i, i32(-1i) * -1i, -15139i)), ~vec4<i32>(-26496i, select(11899i, 38701i, false), max(-7620i, 21282i), -5532i), -463f), u_input.a, Struct_1(any(vec4<bool>(select(true, false, true), true, true, all(vec3<bool>(false, false, false)))), countOneBits(~vec3<i32>(-2377i, 1i, 2147483647i)) >> (select(vec3<u32>(46883u, u_input.a, 1u), vec3<u32>(15475u, 15929u, u_input.a), vec3<bool>(false, false, false)) % vec3<u32>(32u)), _wgslsmith_div_vec4_i32(select(vec4<i32>(-2147483647i, 16000i, -2147483647i, -69653i), vec4<i32>(2147483647i, 21098i, -2332i, 2147483647i), true), vec4<i32>(1i, 1i, 1i, 1i)) >> (vec4<u32>(32122u, u_input.a, 1u, u_input.a) % vec4<u32>(32u)), _wgslsmith_f_op_f32(func_2(false, firstLeadingBit(_wgslsmith_add_i32(0i, 4795i))))), _wgslsmith_div_vec4_u32(min(select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 1u, 4138u, 4294967295u), vec4<u32>(u_input.a, u_input.a, 4294967295u, 37594u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 33609u, 0u), vec4<u32>(u_input.a, 0u, u_input.a, u_input.a)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), true)), ~(~vec4<u32>(u_input.a, u_input.a, 50335u, 1u))), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 35553u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) & vec4<u32>(u_input.a, u_input.a, u_input.a, 55588u), vec4<u32>(26673u, ~u_input.a, _wgslsmith_mod_u32(30747u, 1u), u_input.a | 0u))));
    let var_2 = vec4<bool>(var_1.a.a, (-1i != (0i << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b, u_input.a), vec2<u32>(4294967295u, 4294967295u)) % 32u))) || all(vec2<bool>(true, var_1.a.a)), true, var_1.a.a && var_1.a.a);
    var var_3 = ~var_1.d.yw;
    var var_4 = ~(~var_1.d.xzx);
    return StorageBuffer(_wgslsmith_mult_vec2_u32(var_1.d.wy, ~(~vec2<u32>(11319u, var_3.x))) ^ vec2<u32>(0u, (4294967295u & var_4.x) | abs(var_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-115f, -980f)), _wgslsmith_add_vec2_u32(max(vec2<u32>(var_1.b, 0u), ~(~vec2<u32>(var_4.x, var_3.x))), firstLeadingBit(vec2<u32>(~u_input.a, 69299u))), _wgslsmith_f_op_f32(abs(700f)), reverseBits(_wgslsmith_sub_u32(_wgslsmith_div_u32(~var_3.x, 0u), 102u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

