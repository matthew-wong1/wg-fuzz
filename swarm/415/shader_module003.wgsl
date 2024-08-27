struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
    c: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<f32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_3) -> i32 {
    global0 = 275f;
    let var_0 = ~_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(abs(vec4<u32>(0u, 1u, 0u, arg_2.c.a)), vec4<u32>(reverseBits(4294967295u), min(4294967295u, 1u), 38954u, 34643u)), abs(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 16949u, 14490u, 1386u), vec4<u32>(4294967295u, u_input.d, u_input.b.x, arg_2.a))));
    var var_1 = arg_1;
    var_1 = false | !arg_2.b.b.x;
    var_1 = !arg_1;
    return u_input.c.x >> (var_0.x % 32u);
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: bool, arg_3: vec3<i32>) -> f32 {
    global0 = arg_1.x;
    let var_0 = Struct_5(func_3(_wgslsmith_mod_i32(max(-41243i, 0i), _wgslsmith_mod_i32(arg_3.x, 0i)), arg_0 || false, Struct_3(u_input.b.x, Struct_1(arg_2, vec3<bool>(true, arg_0, arg_0), arg_2, vec3<f32>(arg_1.x, 199f, arg_1.x)), Struct_2(44365u, vec2<bool>(true, false), vec2<f32>(arg_1.x, arg_1.x)))) | -43334i, ~(~_wgslsmith_mult_i32(min(-8955i, -2147483647i), arg_3.x)), abs(reverseBits(_wgslsmith_mod_vec3_i32(arg_3, _wgslsmith_add_vec3_i32(arg_3, vec3<i32>(u_input.e, 0i, arg_3.x))))), u_input.b);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1418f)));
    var var_2 = arg_0;
    var var_3 = 0u;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -232f)), -186f);
}

fn func_1() -> i32 {
    global0 = 1f;
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(false, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-270f, -980f), vec2<f32>(666f, -928f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(370f, 2012f) * vec2<f32>(267f, 1032f))), any(vec4<bool>(true, true, true, true)), vec3<i32>(-u_input.a.x, -4698i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -28400i, u_input.c.x, u_input.a.x), u_input.c)))) * _wgslsmith_f_op_f32(1038f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -500f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1548f), _wgslsmith_f_op_f32(ceil(-3309f)))) + _wgslsmith_f_op_f32(-501f - _wgslsmith_f_op_f32(round(-775f))))));
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(637f))))));
    let var_1 = Struct_5(_wgslsmith_mod_i32(1i, firstLeadingBit(_wgslsmith_mod_i32(u_input.a.x, u_input.e >> (1u % 32u)))), _wgslsmith_mult_i32(-2147483647i, -_wgslsmith_clamp_i32(-5245i, 50336i, u_input.e)) ^ reverseBits(-u_input.a.x), u_input.c.yxx, ~(~abs(vec2<u32>(u_input.b.x, u_input.b.x))));
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(true, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-812f, -1000f), vec2<f32>(-682f, -305f), false)), true, _wgslsmith_mod_vec3_i32(u_input.a, u_input.a)))), 569f), -572f));
    return -var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(_wgslsmith_mult_i32(countOneBits(1i), u_input.e), u_input.a.x, func_1(), firstLeadingBit(46944i));
    var_0 = ~_wgslsmith_add_vec4_i32(abs(reverseBits(u_input.c)) << (abs(abs(vec4<u32>(31050u, 1u, u_input.b.x, 23991u))) % vec4<u32>(32u)), vec4<i32>(2147483647i, ~(-35759i), var_0.x, _wgslsmith_sub_i32(var_0.x, var_0.x)));
    var_0 = vec4<i32>(func_3(_wgslsmith_div_i32(-2147483647i, _wgslsmith_mult_i32(-23640i, u_input.a.x)) << (_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(1u, 53002u, u_input.d)), vec3<u32>(4543u, 1u, u_input.d)) % 32u), all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), vec3<bool>(false, true, false))), Struct_3(_wgslsmith_add_u32(4294967295u, abs(0u)), Struct_1(false, select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(895f, 144f, 635f))), Struct_2(0u, vec2<bool>(true, true), vec2<f32>(-512f, -1000f)))), firstTrailingBit(countOneBits(~(-1i))), -33103i, -1i);
    var var_1 = Struct_3(16944u, Struct_1(true, select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), vec3<bool>(true, any(vec3<bool>(false, false, false)), all(vec2<bool>(false, true))), vec3<bool>(false, true, true)), select(57600i <= u_input.a.x, false, true & all(vec3<bool>(true, false, true))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-165f, 1239f, 170f), vec3<f32>(1168f, -224f, 1239f), vec3<bool>(false, true, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(3019f, 1413f, -101f))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))))), Struct_2(~0u, select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-569f, -285f)))))));
    var_0 = firstLeadingBit(countOneBits(_wgslsmith_sub_vec4_i32(u_input.c, firstTrailingBit(vec4<i32>(u_input.e, u_input.e, -2142i, var_0.x)))) & vec4<i32>(0i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(16302i, -19533i, 16723i), vec3<i32>(1i, -2147483647i, u_input.a.x)), u_input.a), func_3(-var_0.x, var_1.c.b.x, Struct_3(2613u, var_1.b, Struct_2(30838u, vec2<bool>(false, var_1.b.a), vec2<f32>(430f, -894f)))), 2147483647i));
    var var_2 = var_1.b.d.x;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -207f), _wgslsmith_div_f32(-1000f, var_1.c.c.x))) - 630f);
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(var_1.c.a, 1u, u_input.b.x, var_1.c.a)), vec4<u32>(25268u, 42175u, u_input.d, u_input.b.x)), ~vec4<u32>(37486u, 4294967295u, 1u, 0u)), vec4<u32>(u_input.b.x, _wgslsmith_add_u32(u_input.d, _wgslsmith_add_u32(0u, 84593u)), firstTrailingBit(var_1.c.a), 50248u), !(!select(vec4<bool>(true, false, false, var_1.b.a), vec4<bool>(var_1.b.c, true, true, true), var_1.b.c))), _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_1.a, u_input.b.x, 37467u, 1u) & vec4<u32>(4294967295u, u_input.d, var_1.c.a, var_1.c.a), ~vec4<u32>(u_input.d, 46508u, var_1.a, 28669u), true) & _wgslsmith_div_vec4_u32(vec4<u32>(11188u, var_1.c.a, 4294967295u, u_input.d), reverseBits(vec4<u32>(u_input.d, 0u, 1u, 26539u))), vec4<u32>(_wgslsmith_div_u32(12987u, u_input.b.x ^ u_input.b.x), ~firstTrailingBit(4294967295u), var_1.a | _wgslsmith_div_u32(186u, var_1.c.a), ~(var_1.c.a | 0u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, _wgslsmith_f_op_f32(var_3 * var_1.c.c.x), var_1.c.c.x, _wgslsmith_f_op_f32(select(var_3, _wgslsmith_f_op_f32(exp2(var_1.c.c.x)), true))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-var_3), -1000f, 786f, var_3)))), vec3<i32>(~(~(-var_0.x)), 2147483647i, -1i), var_3);
}

