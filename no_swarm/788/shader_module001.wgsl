struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
    d: f32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 1> = array<vec2<bool>, 1>(vec2<bool>(true, true));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> u32 {
    global0 = array<vec2<bool>, 1>();
    global0 = array<vec2<bool>, 1>();
    let var_0 = arg_0.b;
    let var_1 = -(~(u_input.c.wz ^ (vec2<i32>(-1i) * -u_input.a.wz)));
    global0 = array<vec2<bool>, 1>();
    return reverseBits(var_0.a.x);
}

fn func_2() -> u32 {
    var var_0 = u_input.a.x;
    var var_1 = Struct_1(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~5882u, reverseBits(48781u), func_3(Struct_2(vec4<u32>(u_input.b, u_input.b, u_input.b, 43487u), Struct_1(vec2<u32>(0u, 72949u)), 30584u, 917f, vec2<f32>(185f, -543f)), u_input.b)), u_input.b), 4294967295u));
    let var_2 = ~1u;
    var_1 = Struct_1(~(~var_1.a));
    var var_3 = Struct_1(~var_1.a);
    return 4294967295u;
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: i32, arg_3: Struct_1) -> u32 {
    global0 = array<vec2<bool>, 1>();
    let var_0 = _wgslsmith_f_op_f32(trunc(-281f));
    global0 = array<vec2<bool>, 1>();
    global0 = array<vec2<bool>, 1>();
    let var_1 = arg_3.a;
    return func_2();
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> Struct_2 {
    let var_0 = arg_0;
    var var_1 = select(arg_0.a.zwz, !(!select(!arg_0.a.zzy, select(arg_0.a.xyz, vec3<bool>(false, var_0.a.x, arg_1), false), true)), !(!(!vec3<bool>(false, arg_1, arg_0.a.x))));
    var_1 = arg_0.a.zzy;
    var_1 = arg_0.a.wyw;
    var_1 = !select(var_0.a.ywz, vec3<bool>(!arg_1, arg_1, !(!arg_1)), arg_0.a.yyw);
    return Struct_2(~vec4<u32>(~var_0.c.a.x, 1u, 4294967295u, func_1(~u_input.c.x, vec2<u32>(32548u, 0u) ^ var_0.c.a, -21113i, arg_0.c)), var_0.c, min(min(~_wgslsmith_div_u32(62911u, u_input.b), 76284u), ~(~_wgslsmith_mod_u32(4294967295u, 6273u))), -413f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-1419f)), 1583f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_3(vec4<bool>(true, true, false, true), false, Struct_1(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(26211u, 183u, 26640u), vec3<u32>(8561u, 0u, 17487u)), u_input.b << (4294967295u % 32u))), _wgslsmith_mult_u32(u_input.b >> (2195u % 32u), func_1(u_input.a.x, vec2<u32>(1u, 48558u), 2147483647i, Struct_1(vec2<u32>(u_input.b, 1505u)))) | firstTrailingBit(~0u)), all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false))))));
    var_0 = Struct_2(var_0.a >> (~vec4<u32>(u_input.b, _wgslsmith_sub_u32(var_0.b.a.x, var_0.a.x), _wgslsmith_dot_vec4_u32(var_0.a, vec4<u32>(0u, 4294967295u, 57081u, 67953u)), 0u) % vec4<u32>(32u)), Struct_1(var_0.a.xy), 38385u, 1f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.e.x, var_0.d) + vec2<f32>(var_0.d, var_0.d)), vec2<f32>(1100f, _wgslsmith_f_op_f32(var_0.d * -685f))))));
    var_0 = func_4(Struct_3(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), true)), true, var_0.b, 85655u), u_input.c.x <= max(u_input.a.x, abs(abs(1i))));
    var_0 = func_4(Struct_3(vec4<bool>(all(vec3<bool>(true, true, true)), !(var_0.e.x > -955f), any(vec2<bool>(false, false)), true), true, Struct_1(reverseBits(var_0.a.wx)), ~(_wgslsmith_add_u32(u_input.b, u_input.b) << (4294967295u % 32u))), !select(var_0.d != _wgslsmith_f_op_f32(var_0.e.x * var_0.e.x), -567f >= _wgslsmith_f_op_f32(-var_0.e.x), ~u_input.c.x >= -17477i));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(895f, 1000f, -1470f) - vec3<f32>(var_0.e.x, var_0.e.x, var_0.e.x)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e.x, var_0.d, -1000f) - vec3<f32>(var_0.d, var_0.e.x, var_0.e.x)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_0.d)), _wgslsmith_f_op_f32(trunc(-232f)))), var_0.d), _wgslsmith_f_op_f32(857f + _wgslsmith_f_op_f32(f32(-1f) * -1908f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_0.d))))));
    global0 = array<vec2<bool>, 1>();
    var_0 = func_4(Struct_3(vec4<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false))), true, any(vec2<bool>(false, false)) || select(true, true, true), true), any(vec3<bool>(true, true, true)) & all(vec4<bool>(false, false, true, true)), func_4(Struct_3(vec4<bool>(true, true, true, true), true, Struct_1(var_0.b.a), var_0.c), select(select(true, true, false), any(vec4<bool>(true, false, true, true)), false)).b, ~(~(~var_0.a.x))), false);
    let x = u_input.a;
    s_output = StorageBuffer(-980f, func_3(Struct_2(firstTrailingBit(vec4<u32>(1u, 46427u, 0u, 4294967295u)), func_4(Struct_3(vec4<bool>(false, false, false, true), true, Struct_1(var_0.b.a), 0u), true).b, _wgslsmith_sub_u32(var_0.c, var_0.c), -372f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x))), _wgslsmith_mult_u32(0u, ~u_input.b)) << ((func_2() | u_input.b) % 32u), countOneBits(~(-u_input.a.wzz) & -select(u_input.c.wwx, u_input.a.yxx, true)), abs(~_wgslsmith_div_vec3_i32(vec3<i32>(5143i, u_input.a.x, u_input.d), vec3<i32>(u_input.d, u_input.d, 59832i)) ^ _wgslsmith_sub_vec3_i32(u_input.c.wyw, vec3<i32>(u_input.a.x, u_input.c.x, 0i))), ~var_0.a.wy);
}

