struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.x, 1u, 1u, arg_2.x) | vec4<u32>(arg_2.x, arg_1, arg_2.x, 1u), ~vec4<u32>(4294967295u, arg_1, 4294967295u, arg_1)), _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(arg_2.x, 42852u, 1u, 50126u)), vec4<u32>(arg_2.x, arg_2.x, 0u, arg_1) | vec4<u32>(arg_1, 4294967295u, 0u, 0u))), vec4<u32>(14243u >> (_wgslsmith_sub_u32(arg_2.x, 0u) % 32u), ~max(72619u, arg_1), arg_2.x, arg_1));
    var var_1 = !any(vec2<bool>(true, true));
    var_1 = false;
    let var_2 = arg_1;
    var_1 = !any(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(false, false)), vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), false)));
    return Struct_1(!vec4<bool>(true, true, any(vec4<bool>(false, false, true, true)) & true, false), _wgslsmith_f_op_f32(ceil(arg_0)));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_4(arg_2);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.b - _wgslsmith_f_op_f32(-var_0.a.b)) * -372f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-433f, 1000f, arg_2.a.x)) * -1464f), _wgslsmith_f_op_f32(max(-1000f, 1878f)))), var_0.a.b);
    let var_2 = _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(~(-40491i), u_input.c.x, 1i));
    var var_3 = vec4<bool>(true, _wgslsmith_add_i32(1i, firstLeadingBit(-28857i)) <= _wgslsmith_mult_i32(var_2, u_input.c.x), arg_1.x, !arg_1.x);
    return arg_2;
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: Struct_3) -> Struct_3 {
    var var_0 = arg_2;
    var_0 = Struct_3(u_input.a.x & ~(~var_0.e ^ (u_input.c.x & 23791i)), var_0.c, Struct_1(arg_1.a.a, 269f), max(u_input.c, reverseBits(arg_2.d)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(countOneBits(u_input.a.yx), vec2<i32>(-74418i, i32(-1i) * -1i)), 0i, select(abs(arg_2.e), arg_2.a ^ reverseBits(0i), select(true, true, var_0.c.a.x))));
    var var_1 = ~(~(~u_input.a));
    var var_2 = 0i;
    var var_3 = 50057i;
    return Struct_3(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(arg_2.a, 8508i, -49281i), i32(-1i) * -2147483647i), ~vec2<i32>(-27254i, _wgslsmith_mod_i32(-13854i, u_input.c.x))), func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_0.b.b)))), ~_wgslsmith_add_u32(_wgslsmith_mod_u32(28318u, arg_0), 60231u), _wgslsmith_div_vec2_u32(vec2<u32>(14959u, arg_0), ~vec2<u32>(44299u, 31999u)) ^ _wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(arg_0, arg_0)), ~vec2<u32>(arg_0, 1u))), Struct_1(select(vec4<bool>(!arg_1.a.a.x, any(var_0.c.a.xww), var_0.b.a.x, var_0.c.a.x), arg_1.a.a, arg_2.c.a.x), _wgslsmith_f_op_f32(-var_0.c.b)), select(countOneBits(vec2<i32>(_wgslsmith_add_i32(arg_2.e, var_1.x), var_1.x)), -var_0.d, arg_2.c.a.xz), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x << (arg_0 % 32u), var_0.a | 2147483647i, firstTrailingBit(var_1.x)), vec3<i32>(-1i) * -vec3<i32>(47365i, 2147483647i, -2147483647i)), vec3<i32>(u_input.b.x, abs(firstTrailingBit(u_input.a.x)), ~select(arg_2.e, -1i, false))));
}

fn func_5(arg_0: Struct_3, arg_1: bool) -> Struct_2 {
    var var_0 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(~18679u, ~1u, ~4294967295u, 1u), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 9822u, 4294967295u, 1u), vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u)), vec4<u32>(4294967295u, 13867u, 4294967295u, 48931u))) << (countOneBits(~_wgslsmith_div_u32(9521u, ~40491u)) % 32u);
    let var_1 = vec3<u32>(~(~(~(~6587u))), firstLeadingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(2089u, 0u, 52016u, 0u), vec4<u32>(0u, 0u, 20521u, 4294967295u)))), 4294967295u);
    var var_2 = vec4<bool>(select(func_3(abs(4294967295u), !vec4<bool>(false, arg_1, false, false), arg_0.c).a.x, false, _wgslsmith_dot_vec3_u32(countOneBits(var_1), vec3<u32>(4294967295u, var_1.x, var_1.x)) != ~(~var_1.x)), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(var_1.yx, ~var_1.yx), min(~vec2<u32>(0u, 4294967295u), var_1.yz)) != ~10960u, arg_0.b.b != 1000f, arg_1);
    let var_3 = -1118f;
    let var_4 = _wgslsmith_f_op_f32(arg_0.c.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 - 2040f)))));
    return Struct_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3, -362f, arg_0.b.b) + vec3<f32>(210f, 1000f, var_4))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(925f, arg_0.c.b, var_3))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-298f, 1220f, -582f) - vec3<f32>(var_4, 440f, arg_0.b.b)))))), vec3<f32>(_wgslsmith_f_op_f32(max(arg_0.b.b, _wgslsmith_f_op_f32(f32(-1f) * -726f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3, 2830f))), 589f))));
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = func_5(func_4(1u, Struct_4(func_3(_wgslsmith_sub_u32(4294967295u, 1u), !vec4<bool>(true, true, false, arg_0.x), func_2(-1000f, 72546u, vec2<u32>(0u, 35105u)))), Struct_3(firstLeadingBit(u_input.b.x), Struct_1(!vec4<bool>(false, arg_0.x, true, arg_0.x), _wgslsmith_f_op_f32(abs(-1106f))), func_3(34913u, func_2(386f, 4294967295u, vec2<u32>(0u, 53235u)).a, func_3(1u, vec4<bool>(arg_0.x, arg_0.x, true, true), Struct_1(vec4<bool>(arg_0.x, true, true, arg_0.x), -686f))), -abs(vec2<i32>(u_input.a.x, 2147483647i)), countOneBits(-u_input.c.x))), true);
    var var_1 = _wgslsmith_add_vec4_i32(abs(countOneBits(firstTrailingBit(vec4<i32>(-1i, -3065i, 2147483647i, 1i)))), firstLeadingBit(~(-(~vec4<i32>(u_input.c.x, -39746i, -1i, u_input.c.x)))));
    let var_2 = Struct_4(Struct_1(func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a.x))), reverseBits(1u), select(vec2<u32>(1u, 1u), vec2<u32>(0u, 0u), 2919f <= var_0.a.x)).a, -203f));
    var var_3 = 1u;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(547f, 585f, 875f, 109f) - vec4<f32>(var_0.a.x, 1542f, var_0.a.x, var_2.a.b)), vec4<f32>(func_4(33932u, Struct_4(var_2.a), Struct_3(u_input.c.x, Struct_1(vec4<bool>(arg_0.x, false, true, true), -2680f), Struct_1(var_2.a.a, -1063f), var_1.yw, 34701i)).c.b, var_0.a.x, _wgslsmith_f_op_f32(-285f - var_2.a.b), var_2.a.b)))));
    return Struct_1(vec4<bool>(select(true, var_2.a.a.x, true), -1i != u_input.c.x, true, (var_2.a.b > _wgslsmith_f_op_f32(-282f * -619f)) & var_2.a.a.x), var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(!vec3<bool>(any(vec3<bool>(false, false, false)), select(true, true, true), any(vec3<bool>(false, true, true))));
    var var_1 = func_5(func_4(_wgslsmith_mult_u32(1u, abs(~22268u)), Struct_4(Struct_1(var_0.a, _wgslsmith_div_f32(552f, -423f))), Struct_3(u_input.c.x, func_2(_wgslsmith_div_f32(var_0.b, var_0.b), 27193u, firstLeadingBit(vec2<u32>(4294967295u, 1u))), func_3(1u, vec4<bool>(var_0.a.x, var_0.a.x, false, false), func_2(var_0.b, 0u, vec2<u32>(0u, 4294967295u))), firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, u_input.b.x), u_input.a.zz)), u_input.b.x)), var_0.a.x);
    var var_2 = -38170i;
    var var_3 = vec2<u32>(1u, 1u);
    var var_4 = func_2(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_div_u32(var_3.x, 21856u), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_3.x, ~var_3.x), ~vec2<u32>(4294967295u, 38640u)), ~firstLeadingBit(~vec2<u32>(var_3.x, var_3.x)))).a;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec3_i32(u_input.b, abs(u_input.b) >> (~vec3<u32>(var_3.x, 0u, var_3.x) % vec3<u32>(32u))), _wgslsmith_mult_u32(firstTrailingBit(firstLeadingBit(0u)), var_3.x));
}

