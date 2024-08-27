struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: f32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)) * vec2<f32>(arg_0, arg_0)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -953f), 510f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(836f, arg_0) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(583f, arg_0)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0))), arg_0) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1081f, arg_0))))), !(!(!all(vec4<bool>(true, false, false, false))))));
    let var_1 = !vec4<bool>(true, false, !select(true, true, true), true);
    let var_2 = ~(~6743u);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1f);
    let var_3 = abs(countOneBits(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(34624i, u_input.d.x, 2147483647i), vec3<i32>(-2147483647i, u_input.b, u_input.b)), vec3<i32>(1i, -20933i, u_input.d.x)) ^ _wgslsmith_mod_vec3_i32(abs(vec3<i32>(-1i, 11132i, u_input.b)), vec3<i32>(2147483647i, -2147483647i, u_input.b))));
    return ~(max(~vec4<u32>(1u, 1u, u_input.c.x, u_input.a) | countOneBits(vec4<u32>(1u, 74341u, var_2, var_2)), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(44385u, u_input.a, 18659u, 31231u), vec4<u32>(12426u, 41829u, u_input.a, 25243u)), max(vec4<u32>(var_2, var_2, u_input.a, 0u), vec4<u32>(u_input.c.x, u_input.a, 0u, 4294967295u)))) ^ reverseBits(~vec4<u32>(16586u, 57543u, u_input.a, 1u)));
}

fn func_3() -> bool {
    let var_0 = Struct_2(vec2<bool>(!((51256u <= u_input.a) | any(vec2<bool>(true, true))), true), vec3<bool>(all(vec2<bool>(true, true)), -895f == _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-584f, -2125f))), any(vec2<bool>(true, true)) && true), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(189f, 1000f, 702f, -1716f))), any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)))), _wgslsmith_f_op_f32(-3721f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1397f)))))));
    var var_1 = -abs(~vec2<i32>(-8184i, 1i) & ~u_input.d);
    var var_2 = var_0.c;
    var var_3 = ~abs(~(firstTrailingBit(vec4<u32>(u_input.a, 13037u, u_input.a, 32126u)) & vec4<u32>(u_input.c.x, u_input.c.x, u_input.a, u_input.c.x)));
    var_3 = ~(~(~abs(vec4<u32>(var_3.x, u_input.a, 1u, 48883u)) | abs(abs(vec4<u32>(1u, 0u, 0u, 4294967295u)))));
    return !(~_wgslsmith_add_u32(62137u, u_input.a) >= ~var_3.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: i32, arg_3: u32) -> u32 {
    var var_0 = vec4<bool>(!((all(vec2<bool>(true, true)) == select(true, false, true)) || all(vec2<bool>(true, true))), false, true, false);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(2216f, -2184f, 1670f, 749f), vec4<f32>(-863f, -1000f, -306f, -1126f)) + vec4<f32>(1f, 1f, 1f, 1f))))), func_3(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1939f)))))));
    var_0 = vec4<bool>(true, !var_0.x, true, true);
    var var_2 = var_1.a.x;
    var var_3 = vec4<bool>(true, var_1.a.x != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.a.x - -1000f))), true, (0i < countOneBits(_wgslsmith_mod_i32(arg_0.x, -19250i))) | true);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec3<i32>(_wgslsmith_sub_i32(u_input.b & u_input.b, -u_input.d.x), u_input.b, -u_input.d.x));
    let var_1 = _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(90566u, 0u, u_input.c.x, u_input.c.x)), vec4<u32>(1u, u_input.a, 17240u, u_input.a) & min(vec4<u32>(0u, u_input.a, u_input.c.x, u_input.a), vec4<u32>(u_input.c.x, u_input.c.x, u_input.a, u_input.a))), _wgslsmith_clamp_vec4_u32(~abs(vec4<u32>(u_input.c.x, 22895u, u_input.a, 62699u)), vec4<u32>(1u, abs(u_input.a), u_input.c.x, ~0u), func_1(120f))) ^ _wgslsmith_div_vec4_u32(vec4<u32>(reverseBits(min(0u, 1u)), 1u, ~(~u_input.c.x), _wgslsmith_mult_u32(func_2(vec4<i32>(-54497i, u_input.d.x, 54994i, 3216i), 35899u, var_0.x, u_input.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, u_input.c.x), vec3<u32>(u_input.c.x, u_input.a, u_input.a)))), func_1(-418f));
    let var_2 = abs(_wgslsmith_dot_vec2_u32(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(u_input.a, u_input.c.x))), ~max(u_input.c, var_1.ww) & var_1.wz));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(511f, -197f)))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(140f, 1655f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-585f, -1110f), vec2<f32>(-1512f, 883f))))))));
    let var_4 = _wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-435f * _wgslsmith_f_op_f32(-var_3.x))))));
    var var_5 = 18117u;
    var var_6 = Struct_3(false);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, vec3<i32>(~(-1i), 3577i, ~(-3196i)), 472f);
}

