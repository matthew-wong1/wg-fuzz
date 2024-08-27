struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: vec4<u32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_3) -> bool {
    return all(!vec4<bool>(all(vec4<bool>(false, true, false, false)), all(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), u_input.c < _wgslsmith_div_u32(1u, 4038u), all(vec3<bool>(true, true, true))));
}

fn func_2(arg_0: f32, arg_1: u32) -> vec2<i32> {
    let var_0 = vec2<f32>(-376f, 135f);
    let var_1 = select(!vec3<bool>(all(vec3<bool>(false, true, false)), true, true && (1u != u_input.e)), vec3<bool>(u_input.b.x < 1i, true, func_3(Struct_3(_wgslsmith_div_f32(3069f, arg_0), -u_input.a))), vec3<bool>(true, true, true));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-var_0.x), vec2<i32>(2190i, -2147483647i));
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_2.a))));
    let var_4 = vec2<bool>(!var_1.x, !var_1.x);
    return vec2<i32>(-3807i, 50490i >> ((~0u | max(71186u, arg_1 & 156u)) % 32u));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec3<u32>, arg_3: f32) -> Struct_3 {
    let var_0 = Struct_4(Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -180f) + _wgslsmith_f_op_f32(f32(-1f) * -1273f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-247f, arg_3)), arg_3 != _wgslsmith_f_op_f32(931f - -132f))), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, 9992i), func_2(-393f, 24557u)), vec2<i32>(-1i, 1i) | vec2<i32>(-1i, u_input.d))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_3 * -390f), _wgslsmith_f_op_f32(min(arg_3, _wgslsmith_f_op_f32(floor(1052f)))), _wgslsmith_f_op_f32(-arg_3)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1511f, arg_3, arg_3))))), abs(~countOneBits(vec4<u32>(0u, 25257u, 4294967295u, 46664u))));
    let var_1 = !select(select(!(!vec3<bool>(false, arg_0, true)), !vec3<bool>(false, arg_0, false), true), !select(vec3<bool>(arg_1, arg_0, arg_1), vec3<bool>(false, true, arg_0), arg_0), true);
    let var_2 = ~_wgslsmith_clamp_u32(~u_input.e, 0u, u_input.e);
    let var_3 = all(!select(var_1, !var_1, vec3<bool>(all(vec4<bool>(var_1.x, var_1.x, false, arg_1)), var_1.x, false)));
    var var_4 = Struct_5(~(~(-16383i)));
    return Struct_3(var_0.a.a, var_0.a.b);
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    var var_0 = Struct_4(arg_1.a, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1003f, 651f, arg_1.a.a), vec3<f32>(-536f, arg_1.b.x, arg_1.b.x))))), vec4<u32>(u_input.e >> (~_wgslsmith_dot_vec4_u32(arg_2.c, arg_2.c) % 32u), 4294967295u, 1u, countOneBits(abs(_wgslsmith_add_u32(arg_1.c.x, arg_2.c.x)))));
    let var_1 = arg_1;
    var_0 = var_1;
    let var_2 = true;
    let var_3 = -min(abs(u_input.a), vec2<i32>(var_0.a.b.x, -6977i)) >> (_wgslsmith_sub_vec2_u32(arg_1.c.wy, ~vec2<u32>(arg_2.c.x, var_1.c.x | 62306u)) % vec2<u32>(32u));
    return arg_2.d;
}

fn func_5(arg_0: Struct_1) -> Struct_5 {
    var var_0 = ~u_input.b;
    let var_1 = func_1(true, true, ~vec3<u32>(~countOneBits(arg_0.b), ~4227u, 44566u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -705f), -657f)))));
    var_0 = abs(-_wgslsmith_mult_vec3_i32(u_input.b, vec3<i32>(var_0.x, -u_input.b.x, i32(-1i) * -386i)));
    var var_2 = ~(~vec2<u32>(89579u, func_4(true, Struct_4(Struct_3(725f, var_1.b), vec3<f32>(-260f, arg_0.c, arg_0.c), vec4<u32>(56046u, 0u, 3050u, 18009u)), Struct_2(arg_0.d, 145f, vec4<u32>(4294967295u, 5640u, arg_0.b, arg_0.b), Struct_1(412f, 57317u, -2077f, 0i), var_0.xy), _wgslsmith_dot_vec3_u32(vec3<u32>(35089u, 0u, u_input.e), vec3<u32>(arg_0.b, arg_0.b, arg_0.b))).b));
    var var_3 = _wgslsmith_dot_vec3_i32(u_input.b, _wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(31343i, var_1.b.x, var_1.b.x)), vec3<i32>(0i, var_0.x, u_input.a.x)) << (~(~vec3<u32>(0u, arg_0.b, 27517u)) % vec3<u32>(32u))) << (~(~0u) % 32u);
    return Struct_5(-(u_input.a.x & u_input.b.x));
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_5) -> Struct_5 {
    var var_0 = vec3<f32>(1f, -418f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f - -798f)))))));
    let var_1 = vec2<bool>(true || !all(vec4<bool>(true, true, true, true)), !(-62387i <= u_input.a.x));
    var var_2 = vec2<u32>(41207u, ~(~(u_input.e | 4294967295u))) ^ vec2<u32>(_wgslsmith_mult_u32(~_wgslsmith_div_u32(u_input.e, 56365u), u_input.e), 7827u);
    let var_3 = Struct_4(func_1(var_1.x, true, firstLeadingBit(~vec3<u32>(var_2.x, u_input.c, 4294967295u)), _wgslsmith_div_f32(func_4(!var_1.x, Struct_4(Struct_3(-1000f, u_input.a), vec3<f32>(var_0.x, var_0.x, var_0.x), vec4<u32>(var_2.x, u_input.c, u_input.e, var_2.x)), Struct_2(arg_0.x, var_0.x, vec4<u32>(65328u, u_input.c, var_2.x, 0u), Struct_1(1475f, 0u, 650f, arg_0.x), vec2<i32>(arg_0.x, arg_0.x)), select(var_2.x, 0u, var_1.x)).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-560f, -2046f)) * _wgslsmith_f_op_f32(var_0.x + var_0.x)))), vec3<f32>(1f, 1f, 1f), countOneBits(~(~vec4<u32>(4294967295u, 3159u, 69562u, var_2.x) >> (abs(vec4<u32>(3908u, var_2.x, var_2.x, u_input.c)) % vec4<u32>(32u)))));
    var var_4 = select(!var_1, select(var_1, !vec2<bool>(false, var_1.x), var_1), false);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(abs(~vec2<u32>(u_input.c, u_input.e)) >> (vec2<u32>(109256u, _wgslsmith_mod_u32(u_input.c, u_input.c)) % vec2<u32>(32u))));
    let var_1 = ~u_input.d;
    var var_2 = func_6(~(-firstTrailingBit(abs(u_input.a))), func_5(func_4(true, Struct_4(func_1(true, true, vec3<u32>(u_input.e, 22920u, 0u), 183f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-762f, -1000f, -1184f))), vec4<u32>(var_0.x, 24054u, 41428u, 4294967295u)), Struct_2(~(-25250i), _wgslsmith_f_op_f32(1299f - -774f), ~vec4<u32>(47892u, 113104u, 79042u, 1u), Struct_1(-851f, 47260u, -109f, 1i), abs(u_input.a)), var_0.x)));
    let var_3 = abs(vec3<u32>(16883u << (u_input.c % 32u), select(~_wgslsmith_sub_u32(u_input.c, u_input.e), _wgslsmith_div_u32(var_0.x, var_0.x & 4294967295u), any(vec3<bool>(false, false, false)) & false), u_input.e));
    var var_4 = Struct_4(func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(395f, -1110f)), -690f) >= _wgslsmith_f_op_f32(1047f + _wgslsmith_div_f32(-672f, 1379f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-392f, -2541f)), _wgslsmith_f_op_f32(min(1567f, -527f)))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1234f + -508f) + _wgslsmith_f_op_f32(f32(-1f) * -703f)), ~vec3<u32>(1u, ~var_3.x, _wgslsmith_add_u32(var_0.x, 4294967295u)), func_1(true, all(vec2<bool>(true, false)), vec3<u32>(firstTrailingBit(var_3.x), u_input.e ^ var_0.x, ~var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(580f)))).a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-589f, 1286f, -415f) * vec3<f32>(-1000f, 1485f, -1372f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-686f, -856f, 676f), vec3<f32>(1000f, -647f, -1315f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2510f, 2928f, -1001f) - vec3<f32>(-683f, 1000f, -619f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-977f, 327f, -1471f) - vec3<f32>(-860f, 706f, -203f))))), countOneBits(select(~firstLeadingBit(vec4<u32>(var_3.x, var_3.x, 57643u, var_3.x)), select(abs(vec4<u32>(var_3.x, 0u, 17846u, 0u)), ~vec4<u32>(11045u, 4294967295u, 0u, 4294967295u), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true))), true && any(vec2<bool>(true, true)))));
    let var_5 = var_3;
    var var_6 = 7746u;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(firstTrailingBit(u_input.a.x)), ~(_wgslsmith_add_u32(var_5.x, 0u) >> (25107u % 32u)), abs(var_3));
}

