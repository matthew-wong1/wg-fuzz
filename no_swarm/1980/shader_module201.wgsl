struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(-1018f, -413f, 1178f, -369f), vec4<f32>(-1800f, -1239f, 720f, -1895f), vec4<f32>(130f, -608f, 1000f, -179f), vec4<f32>(-3167f, 1050f, -505f, 886f), vec4<f32>(-1149f, -1000f, 195f, -447f), vec4<f32>(354f, -1062f, 1000f, -1132f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: bool) -> i32 {
    return min(~u_input.a, _wgslsmith_div_i32(u_input.e.x, i32(-1i) * -(~1i)));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec4<u32>, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = vec4<u32>(u_input.b.x, 51969u, ~_wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(~arg_1, ~4294967295u, u_input.b.x)), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~(~arg_2), arg_2), ~_wgslsmith_mod_u32(~1u, _wgslsmith_dot_vec2_u32(arg_2.wy, vec2<u32>(89744u, 47635u)))));
    let var_1 = firstTrailingBit(u_input.a);
    var var_2 = max(_wgslsmith_mult_i32(func_2(arg_3.x && true), -_wgslsmith_dot_vec3_i32(vec3<i32>(var_1, 0i, -53630i), vec3<i32>(40959i, -1i, var_1)) ^ -2147483647i), ~(var_1 >> (22886u % 32u)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(-460f, 1405f), _wgslsmith_f_op_f32(floor(1840f))))), ~arg_2.x, vec3<bool>(select(select(arg_3.x & true, !arg_3.x, true), true, any(arg_3.zz)), any(arg_3), !select(all(arg_3), true, any(vec4<bool>(arg_3.x, arg_3.x, arg_3.x, false)))));
    return Struct_1(vec2<f32>(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-440f * -2854f), 1254f)), 0u, vec3<bool>(!all(select(vec4<bool>(var_3.c.x, false, false, arg_3.x), vec4<bool>(arg_3.x, false, var_3.c.x, arg_3.x), var_3.c.x)), var_3.c.x, true));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = var_0.b;
    let var_2 = arg_0;
    let var_3 = u_input.e.x;
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -647f, arg_3.a.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-835f * 349f), -278f, 334f))));
    return func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1583f - arg_0.a.x) - _wgslsmith_f_op_f32(floor(354f))))), u_input.b.x, firstLeadingBit(~vec4<u32>(firstTrailingBit(14043u), func_1(var_4.x, 14680u, vec4<u32>(91529u, var_2.b, u_input.d.x, var_2.b), vec3<bool>(true, arg_0.c.x, var_0.c.x)).b, var_0.b, func_1(1000f, 4294967295u, vec4<u32>(37194u, 1u, var_0.b, 0u), var_0.c).b)), arg_3.c);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec2<f32> {
    global0 = array<vec4<f32>, 6>();
    var var_0 = abs(u_input.c.x);
    var_0 = u_input.e.x;
    let var_1 = u_input.c.x;
    let var_2 = u_input.e.x | -17970i;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(770f, arg_0.a.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1784f, 229f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_4(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -381f)), _wgslsmith_add_u32(u_input.d.x, 0u), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(1002f + 800f)), func_3(Struct_1(vec2<f32>(672f, -1178f), u_input.d.x, vec3<bool>(false, false, true)), u_input.c.x, _wgslsmith_f_op_f32(round(391f)), func_1(2338f, u_input.b.x, vec4<u32>(4294967295u, u_input.d.x, 17932u, u_input.d.x), vec3<bool>(false, true, true))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(227f * 666f) + -1441f), 279f))), u_input.b.x, vec3<bool>(!(any(vec2<bool>(false, false)) & true), func_3(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-167f, 374f)), ~u_input.b.x, select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), -30077i, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), func_3(func_3(Struct_1(vec2<f32>(115f, -1096f), u_input.b.x, vec3<bool>(true, true, false)), -1i, 353f, Struct_1(vec2<f32>(1644f, 447f), u_input.d.x, vec3<bool>(false, false, true))), _wgslsmith_mult_i32(u_input.a, 0i), -830f, func_3(Struct_1(vec2<f32>(-803f, 994f), u_input.d.x, vec3<bool>(false, false, true)), -5500i, 539f, Struct_1(vec2<f32>(-992f, 841f), u_input.b.x, vec3<bool>(true, false, false))))).c.x, (true && func_1(507f, u_input.b.x, vec4<u32>(u_input.b.x, 14601u, u_input.d.x, u_input.d.x), vec3<bool>(true, true, false)).c.x) || !func_3(Struct_1(vec2<f32>(550f, -205f), 105349u, vec3<bool>(false, false, false)), u_input.e.x, -3195f, Struct_1(vec2<f32>(606f, -351f), u_input.d.x, vec3<bool>(true, true, false))).c.x));
    var var_2 = u_input.b;
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a + vec2<f32>(397f, var_1.a.x)) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.a.x, -1000f)))))), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(4294967295u, 46737u)), u_input.d ^ _wgslsmith_clamp_vec2_u32(var_2.yz, vec2<u32>(var_1.b, 4294967295u), vec2<u32>(12482u, 0u))), vec3<bool>(false, true, all(!func_3(var_1, u_input.a, var_1.a.x, Struct_1(vec2<f32>(-235f, var_1.a.x), u_input.b.x, vec3<bool>(false, true, true))).c.zx)));
    let var_4 = -530f;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(countOneBits(u_input.b.x), 44934u), var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -565f), true)))), u_input.e.xxw);
}

