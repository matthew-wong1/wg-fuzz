struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: Struct_2,
    d: Struct_2,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: vec2<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: Struct_3) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-745f - _wgslsmith_f_op_f32(1699f - -1000f))))) * _wgslsmith_f_op_f32(max(662f, -273f)));
    let var_1 = arg_3;
    var var_2 = 963f;
    var var_3 = arg_0.c;
    return vec2<i32>(arg_0.c.x, arg_1);
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = 4294967295u;
    let var_1 = -vec2<i32>(_wgslsmith_sub_i32(~_wgslsmith_mod_i32(710i, -2147483647i), 1i), _wgslsmith_dot_vec2_i32(func_3(Struct_1(true, false, vec3<i32>(-2147483647i, -7051i, 1i)), i32(-1i) * -2147483647i, _wgslsmith_mod_u32(u_input.a, 32130u), Struct_3(vec3<bool>(true, false, true), u_input.a, Struct_2(vec2<bool>(true, false), Struct_1(false, false, vec3<i32>(-11986i, -6532i, -13546i))), Struct_2(vec2<bool>(false, true), Struct_1(true, true, vec3<i32>(2147483647i, 1i, 15950i))), vec2<i32>(-2147483647i, 0i))), -vec2<i32>(2147483647i, -933i)));
    return Struct_1(true, true, vec3<i32>(func_3(Struct_1(false, true, vec3<i32>(1i, var_1.x, -956i)), 0i, 80231u, Struct_3(vec3<bool>(false, true, true), arg_0.x, Struct_2(vec2<bool>(false, true), Struct_1(true, false, vec3<i32>(var_1.x, var_1.x, 36617i))), Struct_2(vec2<bool>(false, true), Struct_1(true, false, vec3<i32>(54370i, var_1.x, var_1.x))), vec2<i32>(var_1.x, 55859i))).x & ~(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, -48836i, var_1.x, var_1.x), vec4<i32>(-2147483647i, var_1.x, var_1.x, var_1.x)), 38248i, abs(0i)), firstTrailingBit(vec3<i32>(var_1.x, var_1.x, 20054i))), _wgslsmith_mod_i32(var_1.x >> (0u % 32u), 10974i)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_3(arg_0.a, ((1u & arg_0.b) << (_wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b, u_input.a, arg_0.b), vec3<u32>(1u, u_input.a, 4294967295u)), arg_0.b) % 32u)) << (~(~arg_0.b | (arg_0.b >> (arg_0.b % 32u))) % 32u), Struct_2(arg_1.a, arg_1.b), arg_1, _wgslsmith_mod_vec2_i32(firstTrailingBit(func_2(vec3<u32>(9703u, 39844u, 54594u)).c.yx) >> (max(vec2<u32>(0u, u_input.a), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.b, 54601u), vec2<u32>(0u, u_input.a))) % vec2<u32>(32u)), -arg_0.c.b.c.yz));
    let var_1 = vec4<bool>(arg_0.a.x, arg_1.b.a, var_0.d.b.a, arg_3.x);
    var var_2 = vec3<bool>(true, all(!arg_1.a), any(arg_0.c.a));
    var_2 = vec3<bool>(var_2.x, true, !arg_0.d.a.x);
    let var_3 = Struct_1(var_1.x, true, -vec3<i32>(-_wgslsmith_mod_i32(-1500i, arg_1.b.c.x), 5651i, firstTrailingBit(_wgslsmith_add_i32(arg_0.e.x, 10104i))));
    return arg_1.b;
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = func_4(Struct_3(select(vec3<bool>(true, all(vec4<bool>(false, true, true, false)), true), vec3<bool>(true, true, true), true), arg_0.x, Struct_2(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), func_2(vec3<u32>(arg_0.x, 36969u, 18645u) >> (arg_0 % vec3<u32>(32u)))), Struct_2(vec2<bool>(true, true), func_2(~vec3<u32>(u_input.a, 4294967295u, arg_0.x))), ~_wgslsmith_sub_vec2_i32(-vec2<i32>(90676i, -1i), vec2<i32>(1i, 1i))), Struct_2(vec2<bool>(_wgslsmith_f_op_f32(trunc(975f)) < 1426f, !func_2(vec3<u32>(16086u, 0u, u_input.a)).b), func_2(_wgslsmith_sub_vec3_u32(~arg_0, arg_0 ^ vec3<u32>(arg_0.x, u_input.a, u_input.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-202f, -340f, 121f)), vec3<f32>(1779f, -918f, 1172f)))))), select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), true), vec3<bool>(true, true, false), true), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true))));
    let var_1 = ~abs(firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(17024u, arg_0.x, 36737u), ~vec3<u32>(u_input.a, 38604u, 4294967295u))));
    var var_2 = var_1.x;
    let var_3 = -(firstTrailingBit(_wgslsmith_div_i32(~var_0.c.x, _wgslsmith_dot_vec2_i32(var_0.c.xy, var_0.c.xx))) & var_0.c.x);
    var_2 = ~u_input.a;
    return Struct_1(!any(select(vec4<bool>(var_0.b, var_0.a, var_0.a, var_0.a), select(vec4<bool>(false, var_0.a, var_0.b, false), vec4<bool>(true, false, var_0.a, false), vec4<bool>(true, var_0.b, var_0.a, var_0.a)), vec4<bool>(var_0.a, false, true, var_0.a))), func_2(arg_0).a, ~(-var_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~select(min(max(vec2<u32>(8617u, 0u), vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(0u, 0u)), ~(~vec2<u32>(20182u, u_input.a)), vec2<bool>(true, true)));
    var var_1 = func_1(vec3<u32>(0u, _wgslsmith_clamp_u32(var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(42508u, 4294967295u, 0u, 48199u), select(vec4<u32>(14167u, 913u, var_0.x, u_input.a), vec4<u32>(var_0.x, 4294967295u, 4294967295u, 0u), vec4<bool>(false, false, false, false))), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(47686u, var_0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 18199u, u_input.a), vec3<u32>(var_0.x, 0u, 40276u)), _wgslsmith_mult_u32(24217u, var_0.x))), 1u));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -265f);
    var_1 = func_1(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(29826u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_0.x, 8072u), vec3<u32>(41574u, u_input.a, var_0.x))), ~u_input.a, var_0.x), select(~vec3<u32>(u_input.a, 0u, var_0.x) << (vec3<u32>(var_0.x, var_0.x, 1u) % vec3<u32>(32u)), ~(~vec3<u32>(17009u, u_input.a, u_input.a)), false)));
    var_1 = func_1(_wgslsmith_mult_vec3_u32(vec3<u32>(firstLeadingBit(reverseBits(1u)), _wgslsmith_mod_u32(0u | u_input.a, ~var_0.x), ~u_input.a), countOneBits(vec3<u32>(var_0.x, ~u_input.a, u_input.a))));
    var_1 = func_2(_wgslsmith_mod_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, var_0.x, 58064u), vec3<u32>(9864u, u_input.a, 4294967295u)), ~(~vec3<u32>(4294967295u, 5737u, 4294967295u))) << ((abs(vec3<u32>(var_0.x, 12080u, 4294967295u)) & (vec3<u32>(u_input.a, 1u, var_0.x) << (abs(vec3<u32>(u_input.a, var_0.x, u_input.a)) % vec3<u32>(32u)))) % vec3<u32>(32u)));
    var var_3 = all(select(!(!(!vec3<bool>(var_1.a, var_1.a, var_1.a))), !(!(!vec3<bool>(var_1.a, false, false))), select(vec3<bool>(var_1.b, true, true), select(!vec3<bool>(true, false, var_1.b), !vec3<bool>(var_1.a, false, true), true), !vec3<bool>(var_1.b, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_2, var_2) * vec3<f32>(var_2, -1582f, var_2))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * var_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -593f)), 1217f)), -436f, var_1.c.xy, var_1.c);
}

