struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_3) -> Struct_3 {
    var var_0 = arg_3.a;
    var_0 = arg_3.a;
    var var_1 = Struct_2(~(~(~(~arg_3.b))), ~_wgslsmith_sub_vec2_u32(~(~vec2<u32>(arg_3.b.x, u_input.a)), vec2<u32>(arg_2.x, u_input.a)), vec2<bool>(true, true), _wgslsmith_mult_i32(-arg_1, _wgslsmith_div_i32(2147483647i, arg_1)) << (~1u % 32u), -1058f);
    let var_2 = -20670i;
    var_0 = -1367f;
    return arg_3;
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: Struct_3) -> Struct_3 {
    var var_0 = Struct_2(~(~arg_3.b), ~_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, 34772u) >> (~arg_3.b % vec2<u32>(32u)), ~min(vec2<u32>(34079u, 30644u), arg_3.b)), !(!vec2<bool>(true, any(vec2<bool>(true, true)))), -24745i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_3.a))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2435f + arg_0)), arg_3.a)));
    var var_1 = Struct_4(firstTrailingBit(select(var_0.d & -2147483647i, _wgslsmith_add_i32(var_0.d | var_0.d, 1i), any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, var_0.c.x))))), select(vec2<bool>(any(vec3<bool>(true, false, var_0.c.x)) || (var_0.c.x || var_0.c.x), false), !(!var_0.c), var_0.c.x), Struct_2(arg_1, ~(~var_0.a), select(vec2<bool>(var_0.c.x, !var_0.c.x), vec2<bool>(var_0.c.x | false, true), vec2<bool>(var_0.c.x, all(vec3<bool>(var_0.c.x, var_0.c.x, true)))), ~(countOneBits(-7625i) >> (1u % 32u)), 1f), true);
    var var_2 = abs(_wgslsmith_mult_vec4_u32(~reverseBits(vec4<u32>(0u, var_1.c.b.x, 4294967295u, 11927u)) & vec4<u32>(arg_3.b.x | 0u, 4294967295u, var_1.c.b.x, ~u_input.a), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, 1u), vec4<u32>(4294967295u, 1u, arg_1.x, 1u)) | (arg_1.x ^ arg_1.x), firstLeadingBit(_wgslsmith_add_u32(arg_3.b.x, arg_1.x)), var_1.c.b.x, ~arg_3.b.x)));
    var var_3 = Struct_1(!vec3<bool>(var_0.c.x, true, select(false, true, 1364f < arg_3.a)));
    var var_4 = var_0.b;
    return func_2(select(vec3<bool>(var_0.d >= -6209i, var_0.e > _wgslsmith_f_op_f32(-var_0.e), (-8138i >> (u_input.a % 32u)) != var_1.a), select(vec3<bool>(true, true, true), !(!vec3<bool>(var_1.c.c.x, true, var_1.d)), var_3.a.x), vec3<bool>(_wgslsmith_f_op_f32(-var_1.c.e) >= _wgslsmith_f_op_f32(-var_1.c.e), true, !var_0.c.x)), 8210i, ~(~vec3<u32>(~arg_3.b.x, firstTrailingBit(30623u), max(arg_3.b.x, 56812u))), arg_3);
}

fn func_1(arg_0: Struct_4) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.e));
    var var_1 = true;
    var_1 = false;
    var var_2 = ~abs(arg_0.c.a);
    return func_3(-1700f, vec2<u32>(arg_0.c.a.x, 0u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 2841f)), func_2(vec3<bool>(_wgslsmith_f_op_f32(-arg_0.c.e) > _wgslsmith_f_op_f32(f32(-1f) * -1687f), false, false), arg_0.c.d, ~(~(~vec3<u32>(4294967295u, 9896u, var_2.x))), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(var_2.x, 32761u), vec2<u32>(arg_0.c.a.x, var_2.x)), min(vec2<u32>(var_2.x, 0u), arg_0.c.a)))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: u32, arg_3: f32) -> vec3<i32> {
    let var_0 = Struct_4(abs(select(reverseBits(~(-1i)), firstTrailingBit(_wgslsmith_sub_i32(0i, 15940i)), true)), !vec2<bool>(any(vec3<bool>(false, false, false)), 22774u >= ~arg_2), Struct_2(select(arg_0, _wgslsmith_add_vec2_u32(arg_0, _wgslsmith_div_vec2_u32(arg_1.b, arg_1.b)), vec2<bool>(true, true)), select(vec2<u32>(abs(36012u), 0u), _wgslsmith_sub_vec2_u32(arg_0, vec2<u32>(arg_0.x, arg_1.b.x)) & arg_1.b, false), !vec2<bool>(true, any(vec4<bool>(false, true, false, false))), -_wgslsmith_clamp_i32(-21272i << (1u % 32u), abs(2147483647i), 1i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_3)), func_3(_wgslsmith_f_op_f32(-arg_3), ~arg_1.b, vec2<f32>(426f, -440f), Struct_3(arg_1.a, vec2<u32>(arg_2, arg_1.b.x))).a))), true || select(!any(vec2<bool>(false, false)), true, false));
    var var_1 = func_3(683f, vec2<u32>(~9966u, countOneBits(_wgslsmith_clamp_u32(1u, select(arg_2, arg_2, false), ~arg_1.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.e, var_0.c.e))))))), arg_1).b.x;
    let var_2 = Struct_4(-15394i, !(!(!var_0.c.c)), Struct_2(arg_1.b, _wgslsmith_add_vec2_u32(reverseBits(func_3(arg_1.a, vec2<u32>(30622u, arg_0.x), vec2<f32>(-2656f, arg_1.a), Struct_3(-1596f, arg_1.b)).b), vec2<u32>(arg_0.x, arg_1.b.x)), !select(select(vec2<bool>(var_0.d, var_0.b.x), vec2<bool>(true, var_0.b.x), false), select(vec2<bool>(var_0.c.c.x, var_0.b.x), vec2<bool>(var_0.d, var_0.b.x), var_0.b), false | var_0.b.x), -1i, var_0.c.e), var_0.c.c.x && var_0.c.c.x);
    var var_3 = Struct_4(var_2.c.d, var_2.c.c, Struct_2(_wgslsmith_div_vec2_u32(vec2<u32>(max(arg_0.x, 77895u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.c.b.x, 45325u), vec3<u32>(5558u, 69752u, arg_0.x))), func_2(select(vec3<bool>(var_2.b.x, var_2.c.c.x, var_2.b.x), vec3<bool>(var_2.d, false, true), vec3<bool>(true, true, true)), -var_0.a, select(vec3<u32>(var_0.c.a.x, 1u, arg_0.x), vec3<u32>(4294967295u, var_2.c.b.x, 87688u), var_2.b.x), arg_1).b), vec2<u32>(_wgslsmith_dot_vec2_u32(var_2.c.a, vec2<u32>(arg_0.x, arg_2)), 4294967295u), !select(!var_2.c.c, select(vec2<bool>(var_0.b.x, false), var_2.c.c, var_0.b.x), any(vec2<bool>(false, var_0.d))), _wgslsmith_clamp_i32(~var_0.c.d, -var_2.c.d, -2147483647i), _wgslsmith_f_op_f32(step(473f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.e))))), var_0.c.c.x);
    let var_4 = var_2;
    return vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(~var_3.c.d, var_2.a, _wgslsmith_mult_i32(var_0.a, var_2.a)), min(abs(vec3<i32>(1i, var_3.c.d, -2147483647i)), vec3<i32>(-13753i, 2147483647i, 1i)), ~(vec3<i32>(var_0.a, var_4.c.d, var_2.a) | vec3<i32>(var_3.c.d, -1i, var_3.c.d))), vec3<i32>(select(_wgslsmith_sub_i32(var_4.c.d, 3918i), reverseBits(var_4.a), false | var_4.b.x), _wgslsmith_add_i32(var_3.c.d, ~0i), select(-var_3.c.d, -2147483647i, !var_3.d))), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(35707i, var_2.c.d, var_2.c.d) << (vec3<u32>(var_4.c.b.x, 39636u, 34181u) % vec3<u32>(32u))), firstTrailingBit(abs(vec3<i32>(-14443i, var_4.a, -9878i)))) | -18971i, -_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -42692i, -1592i), ~(-vec3<i32>(var_2.a, 36941i, 7336i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<i32>(0i, i32(-1i) * -2147483647i, -7911i), func_4(~((vec2<u32>(25180u, u_input.a) << (vec2<u32>(1527u, 1u) % vec2<u32>(32u))) >> (min(vec2<u32>(0u, 23761u), vec2<u32>(4294967295u, u_input.a)) % vec2<u32>(32u))), func_1(Struct_4(firstLeadingBit(-8663i), vec2<bool>(true, false), Struct_2(vec2<u32>(u_input.a, u_input.a), vec2<u32>(5664u, 2981u), vec2<bool>(false, true), 1i, 2006f), true)), 47528u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1866f) + _wgslsmith_f_op_f32(325f + -1000f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(552f + 638f), 275f))), vec3<bool>(any(vec3<bool>(false, true, true)), select(true, false, !select(false, true, true)), true));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-326f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -716f), func_2(vec3<bool>(false, true, false), var_0.x, vec3<u32>(4294967295u, 4294967295u, 71190u), Struct_3(-194f, vec2<u32>(u_input.a, 0u))).a)), -1000f)), -1000f, !(-var_0.x != var_0.x) && true));
    let var_2 = Struct_3(var_1, vec2<u32>(u_input.a, u_input.a));
    let var_3 = _wgslsmith_div_i32(2147483647i, var_0.x);
    var var_4 = Struct_2(select(vec2<u32>(max(u_input.a, ~4294967295u), 0u), vec2<u32>(u_input.a, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), var_2.b), _wgslsmith_sub_u32(5162u, 1u))), select(vec2<bool>(any(vec4<bool>(false, true, true, false)), 1i > var_3), vec2<bool>(true, true), _wgslsmith_f_op_f32(round(var_2.a)) >= _wgslsmith_f_op_f32(max(var_1, 285f)))), ~var_2.b & select(~(var_2.b ^ var_2.b), var_2.b >> ((var_2.b | vec2<u32>(var_2.b.x, 1u)) % vec2<u32>(32u)), all(vec3<bool>(true, true, true))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), all(vec3<bool>(false, false, false))), vec2<bool>(true, true)), !select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, true)), false), -1i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(-var_2.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(var_4.e, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_2.a)))))));
}

