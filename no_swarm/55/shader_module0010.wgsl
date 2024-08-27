struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 25> = array<vec3<bool>, 25>(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> f32 {
    var var_0 = ~(-u_input.d);
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(570f - arg_1.a.x), -479f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a.x, _wgslsmith_div_f32(arg_1.c, 406f)))), ~max(vec4<u32>(firstLeadingBit(arg_0), _wgslsmith_mult_u32(u_input.c.x, 1u), ~arg_1.b.x, arg_1.d), ~arg_1.b), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(312f - arg_1.c)))))), _wgslsmith_dot_vec4_u32(reverseBits(max(vec4<u32>(0u, 0u, arg_1.b.x, arg_0), vec4<u32>(12694u, 0u, 0u, 22298u))), vec4<u32>(abs(u_input.c.x), ~0u, _wgslsmith_add_u32(38821u, min(0u, u_input.c.x)), arg_0)));
    global0 = array<vec3<bool>, 25>();
    var var_2 = arg_1;
    global0 = array<vec3<bool>, 25>();
    return _wgslsmith_f_op_f32(exp2(arg_1.a.x));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(905f, 603f, -951f))))), ~vec4<u32>(~(~u_input.b), _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.b, u_input.c.x), u_input.c, vec2<bool>(false, true)), ~vec2<u32>(u_input.b, u_input.b)), _wgslsmith_mod_u32(7249u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 13476u, 4294967295u), vec3<u32>(u_input.c.x, 5685u, 6360u))), ~(30373u << (u_input.c.x % 32u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(1u, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1582f, 607f, 867f) - vec3<f32>(2280f, -604f, 286f)), ~vec4<u32>(u_input.c.x, u_input.c.x, 40789u, u_input.b), _wgslsmith_f_op_f32(floor(-1000f)), 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1201f - 1161f))), !all(vec4<bool>(true, false, true, true)) && !any(vec3<bool>(true, true, true)))), u_input.c.x);
    let var_1 = u_input.c;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2350f, var_0.a.x, -855f)))), _wgslsmith_f_op_vec3_f32(var_0.a + vec3<f32>(294f, var_0.c, 823f))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -373f), _wgslsmith_f_op_f32(var_0.c * var_0.c), 2291f), _wgslsmith_f_op_vec3_f32(step(var_0.a, _wgslsmith_f_op_vec3_f32(-var_0.a)))))), var_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1941f - _wgslsmith_div_f32(1853f, var_0.c)))), -160f), 19364u);
    let var_3 = i32(-1i) * -13407i;
    let var_4 = ~(var_0.b.yyw >> (var_0.b.xyz % vec3<u32>(32u)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, 927f, 689f) + var_2.a) + _wgslsmith_div_vec3_f32(var_2.a, var_0.a)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a + vec3<f32>(-1128f, var_2.c, var_2.c)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, -241f, var_0.a.x))))), abs(_wgslsmith_add_vec4_u32(var_0.b, vec4<u32>(~u_input.b, countOneBits(1u), 5916u, 118884u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x))), ~countOneBits(6765u) >> (abs(~(~var_2.b.x)) % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> vec3<bool> {
    let var_0 = -33190i;
    global0 = array<vec3<bool>, 25>();
    var var_1 = countOneBits(arg_0.b.wzz);
    var var_2 = func_2();
    var var_3 = arg_0;
    return vec3<bool>(true, ~firstLeadingBit(var_0 | u_input.a) <= _wgslsmith_dot_vec3_i32(max(vec3<i32>(arg_1.x, -51055i, 53378i), arg_1.xzz), vec3<i32>(u_input.a ^ 4618i, abs(2147483647i), select(u_input.d.x, -21556i, true))), false);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: f32) -> Struct_1 {
    let var_0 = max(_wgslsmith_add_vec3_i32(firstTrailingBit(-_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, arg_0, arg_0), vec3<i32>(u_input.a, u_input.d.x, -52461i))), vec3<i32>(-1i, u_input.a, arg_0)), min(reverseBits(vec3<i32>(arg_0, 31488i, 1i)), ~select(vec3<i32>(11833i, arg_0, -2147483647i), vec3<i32>(-1i, arg_0, u_input.e.x), arg_1)) >> (select(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 9150u, 30730u) ^ vec3<u32>(u_input.c.x, 0u, 0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, 11441u, 29393u), vec3<u32>(0u, 25672u, u_input.c.x), vec3<u32>(1u, u_input.c.x, u_input.b))), vec3<u32>(u_input.b, 2429u, _wgslsmith_mult_u32(24351u, u_input.b)), global0[_wgslsmith_index_u32(59931u, 25u)]) % vec3<u32>(32u)));
    global0 = array<vec3<bool>, 25>();
    var var_1 = !(!arg_1);
    var var_2 = 41065u;
    var var_3 = select(func_4(func_2(), ~firstLeadingBit(vec4<i32>(20001i, var_0.x, -17044i, arg_0))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(~u_input.c.x, ~51210u), _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(28116u, u_input.c.x), u_input.c), u_input.b), 48700u)), 25u)], false);
    return Struct_1(vec3<f32>(-1739f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2775f)) + _wgslsmith_f_op_f32(arg_2 + -572f))), 663f), firstLeadingBit(abs(func_2().b)), -255f, _wgslsmith_mod_u32(u_input.b, u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 25>();
    global0 = array<vec3<bool>, 25>();
    var var_0 = func_1(_wgslsmith_mult_i32(i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, u_input.a, u_input.a, -1i), vec4<i32>(0i, -2147483647i, u_input.e.x, 46761i)), u_input.e.x), any(vec4<bool>(true, true, all(vec4<bool>(false, true, false, false)), true)) | !(!all(vec3<bool>(true, false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1836f + -774f))));
    global0 = array<vec3<bool>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c, _wgslsmith_add_i32(_wgslsmith_sub_i32(~(~(-2147483647i)), _wgslsmith_add_i32(abs(-19164i), _wgslsmith_clamp_i32(u_input.a, 1i, 2147483647i))), -(u_input.d.x ^ (u_input.a ^ u_input.a))), vec2<u32>(var_0.d, select(select(1u, 0u, true), func_2().b.x, !all(vec2<bool>(false, true)))));
}

