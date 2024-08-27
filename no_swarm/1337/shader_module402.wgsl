struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: f32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> u32 {
    let var_0 = Struct_2(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-553f))), _wgslsmith_f_op_f32(abs(1f)), (_wgslsmith_mult_i32(u_input.b, -51873i) | _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, 2147483647i, arg_1, 2545i), vec4<i32>(u_input.b, u_input.a, 1i, 43753i))) & 1i, Struct_1(!vec3<bool>(true, all(vec4<bool>(false, false, true, false)), any(vec3<bool>(false, false, true))), 249f, vec4<i32>(-1i) * -abs(vec4<i32>(0i, u_input.a, u_input.a, 24285i)), select(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, arg_0.a), vec2<u32>(arg_0.a, arg_0.a), vec2<u32>(23153u, 4294967295u)) >> (countOneBits(vec2<u32>(arg_0.a, 1u)) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(~vec2<u32>(31200u, arg_0.a), min(vec2<u32>(62248u, 11851u), vec2<u32>(arg_0.a, 16967u))), true), vec4<bool>(true, true, true, true)));
    var var_1 = vec3<f32>(-1619f, _wgslsmith_f_op_f32(min(-1047f, _wgslsmith_f_op_f32(var_0.c + -1000f))), _wgslsmith_f_op_f32(abs(var_0.c)));
    var_1 = vec3<f32>(var_1.x, 1692f, -1654f);
    let var_2 = ~(~reverseBits(vec3<u32>(4294967295u, 1u, 12499u)));
    let var_3 = Struct_2(!(_wgslsmith_clamp_i32(-2147483647i, 0i, var_0.e.c.x) > -u_input.a), _wgslsmith_f_op_f32(max(var_0.c, _wgslsmith_f_op_f32(-var_1.x))), -1957f, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(var_0.e.c.x, -31503i)), var_0.e.c.wx), Struct_1(vec3<bool>(var_0.a, all(vec4<bool>(false, true, true, true)) | true, !var_0.e.a.x), _wgslsmith_f_op_f32(-var_1.x), var_0.e.c, var_0.e.d, var_0.e.e));
    return _wgslsmith_div_u32(select(var_3.e.d.x, 0u, var_3.e.a.x), _wgslsmith_clamp_u32(_wgslsmith_div_u32(arg_0.a, var_2.x), reverseBits(var_0.e.d.x), var_2.x) << (~(~4294967295u) % 32u)) ^ var_0.e.d.x;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: Struct_5, arg_3: vec2<bool>) -> f32 {
    let var_0 = vec4<i32>(max(2147483647i, select(1i, ~(-2147483647i), true) ^ select(arg_1.b.x << (arg_2.c.e.d.x % 32u), countOneBits(18375i), arg_3.x)), u_input.b, ~(~firstLeadingBit(arg_1.b.x)), _wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(-arg_2.c.e.c, ~vec4<i32>(arg_2.a.c.x, arg_1.b.x, arg_2.a.c.x, -1i)), vec4<i32>(abs(0i), _wgslsmith_div_i32(u_input.b, min(arg_1.b.x, u_input.a)), u_input.a, arg_2.a.c.x)));
    var var_1 = arg_2.c;
    var_1 = Struct_2(select(arg_2.a.d.x, arg_2.a.d.x, true) == ~_wgslsmith_mod_u32(arg_1.a.a, ~26209u), 759f, _wgslsmith_f_op_f32(-var_1.e.b), u_input.b, Struct_1(select(var_1.e.e.zxy, select(var_1.e.e.xxy, arg_2.a.a, var_1.e.a), vec3<bool>(!arg_3.x, arg_1.a.a <= arg_0.x, true)), 1000f, _wgslsmith_add_vec4_i32(var_1.e.c, ~(-arg_2.c.e.c)), _wgslsmith_mod_vec2_u32(abs(var_1.e.d), _wgslsmith_add_vec2_u32(~var_1.e.d, ~var_1.e.d)), vec4<bool>(any(select(var_1.e.e, var_1.e.e, var_1.e.e)), true, true, false)));
    var var_2 = arg_1.a;
    var_1 = Struct_2(!var_1.e.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1271f - var_1.e.b), _wgslsmith_f_op_f32(-arg_2.c.b))))), _wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_f32(-var_1.b), ~(~4610i), Struct_1(vec3<bool>(false, false, arg_2.a.e.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.c.e.b - _wgslsmith_f_op_f32(var_1.b * 663f)))), vec4<i32>(-1i, arg_2.a.c.x, -2147483647i ^ var_0.x, -7187i) | var_0, arg_0.xz, vec4<bool>(select(true, all(var_1.e.a.yz), arg_2.c.e.e.x), all(arg_2.c.e.e), _wgslsmith_f_op_f32(f32(-1f) * -1165f) != _wgslsmith_f_op_f32(var_1.e.b * -1298f), true)));
    return -329f;
}

fn func_5(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: f32, arg_3: u32) -> vec4<u32> {
    var var_0 = Struct_1(select(vec3<bool>(true, true, _wgslsmith_mod_u32(arg_0.a.a, arg_3) >= arg_0.a.a), vec3<bool>(all(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)) && false, true, arg_1.x), !vec3<bool>(true, true, !arg_1.x)), _wgslsmith_f_op_f32(sign(arg_2)), ~_wgslsmith_add_vec4_i32(-min(vec4<i32>(u_input.a, u_input.a, arg_0.b.x, u_input.a), vec4<i32>(arg_0.b.x, 2147483647i, u_input.b, 5578i)), ~(vec4<i32>(arg_0.b.x, -19193i, u_input.a, u_input.a) << (vec4<u32>(77087u, arg_0.a.a, arg_3, arg_0.a.a) % vec4<u32>(32u)))), vec2<u32>(~1u, func_3(arg_0.a, arg_0.b.x)), !select(select(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), !vec4<bool>(false, true, true, arg_1.x), vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x)), vec4<bool>(arg_1.x, all(vec3<bool>(false, arg_1.x, arg_1.x)), arg_1.x, true), true));
    let var_1 = vec3<f32>(arg_2, 627f, _wgslsmith_f_op_f32(step(-177f, _wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(-arg_2)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-570f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(974f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -1121f)) - _wgslsmith_f_op_f32(ceil(var_0.b)));
    var_0 = Struct_1(!select(!(!vec3<bool>(false, arg_1.x, var_0.e.x)), vec3<bool>(false, any(vec4<bool>(arg_1.x, var_0.a.x, var_0.e.x, true)), var_0.a.x), false), -1000f, var_0.c & abs(vec4<i32>(arg_0.b.x, ~(-35872i), arg_0.b.x, firstTrailingBit(1i))), vec2<u32>(reverseBits(~(arg_3 >> (1u % 32u))), _wgslsmith_add_u32(37147u, _wgslsmith_clamp_u32(abs(0u), arg_3 ^ var_0.d.x, _wgslsmith_mod_u32(0u, arg_0.a.a)))), vec4<bool>(false, any(vec4<bool>(true, !var_0.a.x, false, var_1.x >= -1169f)), true, abs(max(u_input.a, u_input.a)) == firstLeadingBit(1i)));
    var var_3 = Struct_2(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * 893f)))), _wgslsmith_f_op_f32(-var_0.b), arg_0.b.x, Struct_1(vec3<bool>(var_1.x >= -660f, true, true), _wgslsmith_f_op_f32(round(-1866f)), _wgslsmith_mod_vec4_i32(-select(var_0.c, var_0.c, arg_1.x), var_0.c), countOneBits(select(vec2<u32>(arg_0.a.a, var_0.d.x), ~var_0.d, var_0.c.x >= 17773i)), select(var_0.e, select(vec4<bool>(true, var_0.a.x, false, false), vec4<bool>(true, var_0.a.x, true, var_0.e.x), true), true)));
    return _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(57767u, 4294967295u, 44695u, 4294967295u), vec4<u32>(1u, arg_0.a.a, arg_0.a.a, 33077u), vec4<u32>(var_0.d.x, arg_3, 0u, 0u))), vec4<u32>(~(~arg_3), arg_0.a.a, var_0.d.x, arg_3), _wgslsmith_sub_vec4_u32(select(vec4<u32>(4294967295u, arg_0.a.a, 33276u, var_3.e.d.x), vec4<u32>(25449u, 1u, var_3.e.d.x, 2406u), var_0.e), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, var_0.d.x, arg_0.a.a), vec4<u32>(arg_3, arg_3, arg_0.a.a, arg_0.a.a))) >> ((~vec4<u32>(75172u, var_0.d.x, var_0.d.x, 4294967295u) ^ (vec4<u32>(17599u, var_3.e.d.x, var_3.e.d.x, 4294967295u) & vec4<u32>(3852u, 20542u, 0u, var_3.e.d.x))) % vec4<u32>(32u))), vec4<u32>(1u << (_wgslsmith_sub_u32(_wgslsmith_mod_u32(77191u, var_0.d.x), _wgslsmith_mod_u32(var_3.e.d.x, 4294967295u)) % 32u), _wgslsmith_mod_u32(41236u, func_3(arg_0.a, -20780i)), ~(~(arg_3 >> (28440u % 32u))), firstLeadingBit(~(var_3.e.d.x & 66960u))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_4) -> vec4<u32> {
    return func_5(arg_1, select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(vec3<u32>(func_3(Struct_3(arg_1.a.a), u_input.b), arg_1.a.a, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 1u, arg_0.x), vec3<u32>(4294967295u, arg_0.x, 4294967295u))), Struct_4(arg_1.a, vec3<i32>(arg_1.b.x, 17237i, -1i)), Struct_5(Struct_1(vec3<bool>(true, true, true), 936f, vec4<i32>(u_input.a, 2147483647i, arg_1.b.x, 16083i), vec2<u32>(15059u, 102626u), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), Struct_2(false, 1428f, -689f, u_input.b, Struct_1(vec3<bool>(true, true, true), -126f, vec4<i32>(1i, arg_1.b.x, u_input.a, u_input.b), vec2<u32>(arg_0.x, 84219u), vec4<bool>(true, true, true, false)))), vec2<bool>(any(vec4<bool>(false, false, true, true)), true))))), _wgslsmith_dot_vec2_u32(arg_0 >> (arg_0 % vec2<u32>(32u)), arg_0));
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = _wgslsmith_clamp_vec4_i32((~vec4<i32>(7647i, 1i, 2147483647i, u_input.a) >> (vec4<u32>(0u, 24105u, 30088u, 4294967295u) % vec4<u32>(32u))) | vec4<i32>(_wgslsmith_mod_i32(-13583i, u_input.b), u_input.b, 3133i, _wgslsmith_dot_vec3_i32(vec3<i32>(-80i, u_input.a, 0i), vec3<i32>(u_input.a, -2147483647i, -32682i))), countOneBits(reverseBits(vec4<i32>(u_input.b, u_input.b, -38652i, 27729i)) << (func_2(vec2<u32>(4294967295u, 20781u), Struct_4(Struct_3(9369u), vec3<i32>(u_input.b, u_input.a, u_input.b))) % vec4<u32>(32u))), max(vec4<i32>(u_input.b, -8628i, i32(-1i) * -2147483647i, -162i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 19888i, 2991i, -119i), vec4<i32>(1638i, u_input.a, u_input.b, u_input.a) ^ vec4<i32>(u_input.a, u_input.b, u_input.a, u_input.b)))) & (max(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(u_input.b, -36763i, u_input.a, 2147483647i)), vec4<i32>(2147483647i, u_input.a, u_input.a, -1i) >> (vec4<u32>(33830u, 3351u, 4294967295u, 30096u) % vec4<u32>(32u))), vec4<i32>(41837i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, -93799i, u_input.a), vec4<i32>(u_input.b, u_input.b, 2147483647i, 30229i)), u_input.b)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)));
    var_0 = -reverseBits(-vec4<i32>(-41924i, 18767i, var_0.x, u_input.a) ^ abs(vec4<i32>(0i, 2147483647i, 2147483647i, u_input.b) ^ vec4<i32>(1i, 58656i, u_input.b, u_input.a)));
    let var_1 = select(-var_0.wz, var_0.xy << (~(~vec2<u32>(30147u, 4294967295u)) % vec2<u32>(32u)), !vec2<bool>(true, !arg_0 & true));
    var var_2 = Struct_2(any(!select(vec2<bool>(true, true), vec2<bool>(arg_0, arg_0), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(688f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-885f)))) * -203f), 757f, 2147483647i & firstTrailingBit(i32(-1i) * -2147483647i), Struct_1(vec3<bool>(true, true, -6778i < _wgslsmith_clamp_i32(u_input.a, 46593i, var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1924f), vec4<i32>(var_0.x, countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 1i), var_1)), reverseBits(var_0.x), abs(var_0.x)), _wgslsmith_add_vec2_u32(max(select(vec2<u32>(1u, 87790u), vec2<u32>(42012u, 7476u), vec2<bool>(arg_0, false)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(17731u, 4294967295u))), _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(51166u, 60120u), vec2<u32>(12950u, 55883u)), vec2<u32>(1u, 1u))), !(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, arg_0, arg_0, false), arg_0))));
    var_2 = Struct_2(false, _wgslsmith_f_op_f32(f32(-1f) * -328f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.e.b * var_2.e.b), var_2.c))))), var_0.x, Struct_1(var_2.e.e.wyy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.e.b + _wgslsmith_f_op_f32(abs(-1022f))) * 1000f), ~vec4<i32>(-2147483647i, var_0.x, var_0.x & 18120i, var_1.x), _wgslsmith_mult_vec2_u32(var_2.e.d, countOneBits(var_2.e.d)) | (vec2<u32>(54695u, 0u) << (vec2<u32>(4294967295u, var_2.e.d.x) % vec2<u32>(32u))), !var_2.e.e));
    return -1543f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(false))));
    let var_1 = min(~firstTrailingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(64085u, 11734u), ~vec2<u32>(1u, 0u))), firstTrailingBit(abs(func_3(Struct_3(24064u), -19989i | u_input.b))));
    let var_2 = _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(select(select(vec4<u32>(41624u, 1u, var_1, var_1), _wgslsmith_div_vec4_u32(vec4<u32>(1u, var_1, 4294967295u, 1u), vec4<u32>(1u, 4294967295u, var_1, 22789u)), any(vec4<bool>(true, false, false, false))), vec4<u32>(0u, 31462u, ~var_1, var_1), true), select(vec4<u32>(1u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, 0u, 3712u, var_1), vec4<u32>(var_1, 4294967295u, 119945u, 62865u)), 1u), vec4<u32>(~66457u, _wgslsmith_mult_u32(var_1, var_1), 59022u, _wgslsmith_mod_u32(var_1, var_1)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)))), vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, 20710u), ~51191u), 4294967295u, ~22313u << (var_1 % 32u), var_1));
    let var_3 = Struct_5(Struct_1(vec3<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true)), true, true), _wgslsmith_f_op_f32(abs(-1254f)), -firstLeadingBit(vec4<i32>(u_input.a, -2147483647i, u_input.b, 1i)), vec2<u32>(countOneBits(~var_2.x), 34771u), vec4<bool>(!all(vec2<bool>(false, false)), false, !(-2147483647i <= u_input.a), true)), select(select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)), all(vec2<bool>(true, true))), vec4<bool>(true, true, false, true), false), select(vec4<bool>(5564u <= var_2.x, any(vec4<bool>(false, true, false, false)), true, false), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(false, true, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), true)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true)))), any(vec3<bool>(select(false, true, false), true, select(true, true, true)))), Struct_2(!(all(vec3<bool>(false, false, false)) & true), -114f, _wgslsmith_f_op_f32(f32(-1f) * -301f), -(~17970i), Struct_1(vec3<bool>(true, true, true), 1000f, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 1i, 0i, u_input.a), vec4<i32>(u_input.a, -2147483647i, u_input.b, 10743i)), _wgslsmith_clamp_vec2_u32(reverseBits(var_2.xy), var_2.yw, ~vec2<u32>(23149u, var_1)), vec4<bool>(any(vec4<bool>(true, false, false, false)), true, true, true))));
    var var_4 = Struct_3(var_3.c.e.d.x);
    let var_5 = ~vec3<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(var_3.a.d, vec2<u32>(var_3.a.d.x, 40379u)), var_2.yz), ~45709u ^ ~var_4.a);
    let var_6 = -1000f;
    let var_7 = any(select(!var_3.c.e.e.yy, vec2<bool>(var_3.c.a, false), var_3.a.e.x));
    var_4 = Struct_3(var_4.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.d.x, vec3<f32>(894f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_6, -255f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c.c + 321f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-532f, -1431f, -890f, 500f) * vec4<f32>(-1506f, -1219f, -2329f, var_3.c.e.b)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.a.b, var_3.a.b, var_6, var_6), vec4<f32>(-1284f, var_3.a.b, -351f, 1744f)) + vec4<f32>(var_6, var_3.c.e.b, -2410f, var_3.c.e.b))))), ~var_3.c.e.c.x, ~var_2.wyy);
}

