struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: Struct_1,
    d: i32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 23> = array<vec2<i32>, 23>(vec2<i32>(10235i, -27366i), vec2<i32>(1i, -26731i), vec2<i32>(59436i, i32(-2147483648)), vec2<i32>(2147483647i, -12684i), vec2<i32>(1i, 10116i), vec2<i32>(-1i, -1i), vec2<i32>(-18268i, -17172i), vec2<i32>(0i, -1i), vec2<i32>(7771i, i32(-2147483648)), vec2<i32>(0i, -7716i), vec2<i32>(29324i, -4543i), vec2<i32>(45190i, 20755i), vec2<i32>(18717i, i32(-2147483648)), vec2<i32>(48613i, 2147483647i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-18766i, 2147483647i), vec2<i32>(-49644i, 35519i), vec2<i32>(-27100i, 2147483647i), vec2<i32>(-19180i, 56828i), vec2<i32>(11577i, -55497i), vec2<i32>(32854i, -58462i), vec2<i32>(-1i, -1i), vec2<i32>(34843i, 2147483647i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: u32) -> f32 {
    let var_0 = select(!select(select(vec2<bool>(false, arg_1.b), vec2<bool>(true, true), true), select(!vec2<bool>(arg_0.b, true), select(arg_2, arg_2, vec2<bool>(arg_0.b, false)), !vec2<bool>(true, arg_2.x)), !(!arg_1.b)), vec2<bool>(true, true), select(!vec2<bool>(all(vec2<bool>(arg_0.b, true)), true), arg_2, arg_2));
    let var_1 = reverseBits(-9723i);
    var var_2 = 2147483647i;
    global0 = array<vec2<i32>, 23>();
    global0 = array<vec2<i32>, 23>();
    return -297f;
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    var var_0 = 1712f;
    let var_1 = Struct_1(-100f, true, ~(~9264u | _wgslsmith_clamp_u32(33777u, 4294967295u, 43374u)) | 4294967295u, vec3<f32>(-493f, _wgslsmith_f_op_f32(-1738f + _wgslsmith_f_op_f32(func_3(Struct_1(-188f, false, 31024u, vec3<f32>(721f, -785f, -442f), vec2<f32>(836f, 1576f)), Struct_1(-2126f, false, 0u, vec3<f32>(306f, -1000f, 156f), vec2<f32>(560f, -562f)), vec2<bool>(true, true), arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(f32(-1f) * -469f))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, 560f), vec2<f32>(-239f, -1000f)))), vec2<f32>(-630f, _wgslsmith_f_op_f32(min(-1000f, -1002f))))))));
    let var_2 = vec4<u32>(4294967295u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(abs(reverseBits(1u)), ~_wgslsmith_mod_u32(arg_0.x, arg_0.x)), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, arg_0.x, var_1.c, 1u), firstLeadingBit(vec4<u32>(arg_0.x, 27817u, 1u, var_1.c)) >> (vec4<u32>(var_1.c, 0u, arg_0.x, var_1.c) % vec4<u32>(32u))), firstTrailingBit(_wgslsmith_div_u32(53421u | arg_0.x, 1u))), ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(~1u, 54192u), arg_0.x), ~arg_0.x);
    global0 = array<vec2<i32>, 23>();
    let var_3 = _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(abs(vec4<i32>(abs(u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.a, 14545i)), 2147483647i, u_input.a)), u_input.b), vec4<i32>(abs(_wgslsmith_add_i32(firstLeadingBit(-1i), u_input.b.x)), _wgslsmith_mult_i32(countOneBits(u_input.b.x) & _wgslsmith_dot_vec4_i32(vec4<i32>(3337i, u_input.a, u_input.a, -2147483647i), vec4<i32>(u_input.b.x, -50584i, -1i, 1i)), 19066i), -1i, u_input.a), _wgslsmith_mult_vec4_i32(~(~vec4<i32>(u_input.a, u_input.a, u_input.b.x, u_input.b.x)), vec4<i32>(u_input.a << (36829u % 32u), _wgslsmith_div_i32(u_input.b.x, 2147483647i), 16680i, _wgslsmith_div_i32(1i, u_input.a))) >> (~var_2 % vec4<u32>(32u)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) + -583f))), _wgslsmith_f_op_f32(step(-893f, _wgslsmith_f_op_f32(min(var_1.e.x, _wgslsmith_f_op_f32(-var_1.a))))));
}

fn func_1() -> Struct_3 {
    global0 = array<vec2<i32>, 23>();
    var var_0 = Struct_1(701f, true, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 78419u, 28960u, 4294967295u), vec4<u32>(1u, 0u, 20267u, 23351u))) >> (_wgslsmith_mod_u32(reverseBits(~10218u), _wgslsmith_dot_vec2_u32(~vec2<u32>(69298u, 7369u), vec2<u32>(1u, 1u))) % 32u), vec3<f32>(-1677f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-585f * _wgslsmith_f_op_f32(trunc(-1218f)))), _wgslsmith_f_op_f32(select(-1490f, -324f, true))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(548f, -2203f) + vec2<f32>(851f, -985f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-939f, -349f))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-339f + -833f), -889f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-728f, 1808f) - _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -1123f), vec2<f32>(-1002f, -1319f)))))));
    return Struct_3(min(vec4<u32>(28383u, var_0.c ^ firstLeadingBit(16962u), ~abs(var_0.c), firstLeadingBit(1u) | var_0.c), (vec4<u32>(var_0.c, var_0.c, 1u, var_0.c) >> ((vec4<u32>(41990u, 35972u, var_0.c, var_0.c) << (vec4<u32>(var_0.c, var_0.c, 1u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))) & vec4<u32>(_wgslsmith_mod_u32(10466u, 1u), var_0.c, _wgslsmith_dot_vec4_u32(vec4<u32>(23955u, 32084u, 20380u, 0u), vec4<u32>(1u, var_0.c, 106211u, 23581u)), var_0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, var_0.c, 5502u), vec3<u32>(10551u, var_0.c, var_0.c)), vec3<u32>(var_0.c, var_0.c, var_0.c)))) - -533f), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(max(var_0.c, 56493u), firstTrailingBit(0u), _wgslsmith_clamp_u32(var_0.c, 43727u, var_0.c), 0u), ~abs(vec4<u32>(var_0.c, var_0.c, 23561u, 4294967295u))), ~498u, var_0.c, ~(~var_0.c)));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_1) -> f32 {
    global0 = array<vec2<i32>, 23>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_2(abs(~arg_1.c.wxw))), true, 0u, vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.b))), 2174f), _wgslsmith_div_vec2_f32(arg_2.d.yz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b, arg_1.b) - arg_2.d.zy))));
    var var_1 = u_input.b.ywz;
    var var_2 = Struct_3(firstTrailingBit(arg_1.c), 924f, ~(~min(arg_1.c, _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.c, 4294967295u, arg_1.c.x, 23601u), vec4<u32>(22079u, var_0.c, 66053u, arg_1.a.x)))));
    var_2 = arg_1;
    return 395f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, 34498u), vec3<u32>(0u, 27711u, 1547u)))), func_1(), Struct_1(_wgslsmith_div_f32(696f, func_1().b), true, 28906u, _wgslsmith_f_op_vec3_f32(vec3<f32>(-310f, -1094f, -957f) + vec3<f32>(-2102f, -858f, -1076f)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, 1f))))))));
    var var_1 = false;
    var var_2 = 1u;
    var_1 = true;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, -1408f), vec2<f32>(-299f, -1000f), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0, var_0)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 662f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0, var_0), vec2<f32>(503f, 950f)))) * vec2<f32>(-1509f, _wgslsmith_f_op_f32(-var_0)))) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(~vec3<u32>(63646u, 1u, 1u))), _wgslsmith_div_f32(894f, var_0)), 158f));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(1u, 1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1220f, _wgslsmith_f_op_f32(f32(-1f) * -765f), -843f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(307f, var_0, var_0)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -671f, var_0))) * vec3<f32>(-1381f, var_0, var_3.x))), func_1().b, func_1().c.wzy);
}

