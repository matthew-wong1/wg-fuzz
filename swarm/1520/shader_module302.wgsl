struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 2> = array<vec4<u32>, 2>(vec4<u32>(4294967295u, 4294967295u, 69442u, 104392u), vec4<u32>(0u, 0u, 26543u, 15811u));

var<private> global1: vec4<i32> = vec4<i32>(-53487i, -7782i, i32(-2147483648), i32(-2147483648));

var<private> global2: f32;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_1, arg_3: vec2<f32>) -> vec3<f32> {
    global2 = arg_3.x;
    let var_0 = _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.b, ~_wgslsmith_div_u32(u_input.b, ~41673u)), u_input.b, select(0u, _wgslsmith_div_u32(u_input.b, ~(u_input.b << (u_input.b % 32u))), _wgslsmith_dot_vec2_i32(vec2<i32>(-20970i, arg_0.x) ^ vec2<i32>(0i, -47653i), u_input.a) > u_input.a.x));
    let var_1 = arg_2;
    global0 = array<vec4<u32>, 2>();
    let var_2 = ~vec4<u32>(var_0, max(~_wgslsmith_add_u32(16055u, 39467u), _wgslsmith_add_u32(~var_0, 13371u)), u_input.b, 18691u);
    return vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -845f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(387f, -347f), arg_3.x) - _wgslsmith_f_op_f32(sign(arg_3.x))), arg_3.x), arg_3.x);
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(888f, -2460f, arg_0)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1246f, arg_0, 1044f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2879f, 194f, arg_0) * vec3<f32>(arg_0, arg_0, -243f)), _wgslsmith_f_op_vec3_f32(func_3(global1.wxz, global1.x, Struct_1(true), vec2<f32>(1917f, 2383f)))))));
    var var_2 = Struct_1(any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true)));
    let var_3 = Struct_1(true);
    global1 = abs(max(-vec4<i32>(u_input.a.x, 14576i, -1i, u_input.a.x) ^ vec4<i32>(global1.x, 19415i, -2147483647i, -110675i), abs(vec4<i32>(1i, -2147483647i, global1.x, 1i) >> (vec4<u32>(1u, 0u, u_input.b, 58289u) % vec4<u32>(32u))))) & vec4<i32>(0i, ~_wgslsmith_add_i32(reverseBits(5916i), _wgslsmith_dot_vec3_i32(global1.zww, vec3<i32>(global1.x, global1.x, 0i))), ~abs(-u_input.a.x), _wgslsmith_clamp_i32(18664i, _wgslsmith_dot_vec2_i32(u_input.a, _wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.a.x), global1.xx)), 0i));
    return Struct_1(any(vec2<bool>(var_3.a, all(vec3<bool>(true, true, true)))));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: i32) -> f32 {
    var var_0 = -457f;
    let var_1 = _wgslsmith_dot_vec2_u32(~(~firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(0u, arg_1), vec2<u32>(u_input.b, 1u)))), abs(_wgslsmith_mult_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, arg_1), vec2<u32>(4294967295u, 23162u)), ~(~vec2<u32>(arg_1, 4294967295u)))));
    let var_2 = func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(322f - -425f)))))));
    global2 = _wgslsmith_f_op_vec3_f32(func_3(vec3<i32>(firstTrailingBit(countOneBits(_wgslsmith_clamp_i32(arg_2, arg_2, 43915i))), arg_0.x, min(_wgslsmith_dot_vec4_i32(vec4<i32>(23886i, arg_2, -50560i, -1117i), _wgslsmith_add_vec4_i32(vec4<i32>(global1.x, arg_0.x, -1i, -2147483647i), vec4<i32>(arg_0.x, global1.x, 18210i, global1.x))), _wgslsmith_add_i32(arg_0.x, arg_0.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 14583i, -77249i) ^ min(vec3<i32>(-1i, -42193i, 37536i), vec3<i32>(u_input.a.x, global1.x, -2147483647i)), ~max(global1.xyz, vec3<i32>(arg_0.x, global1.x, 15167i))) & ~_wgslsmith_dot_vec2_i32(global1.ww << (vec2<u32>(0u, u_input.b) % vec2<u32>(32u)), arg_0.yx), var_2, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(744f, -1697f), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1034f, -148f), vec2<f32>(1021f, -706f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(678f, -451f) * vec2<f32>(482f, 1910f)))))))).x;
    global2 = _wgslsmith_div_f32(-1955f, 1436f);
    return _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_clamp_vec3_i32(arg_0, vec3<i32>(arg_0.x, arg_2 >> (~52547u % 32u), ~arg_0.x), (vec3<i32>(-11206i, arg_2, arg_2) & vec3<i32>(-34548i, global1.x, 0i)) >> (firstLeadingBit(~vec3<u32>(1u, 4294967295u, 14155u)) % vec3<u32>(32u))), global1.x, var_2, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1450f, 645f)), vec2<f32>(1000f, 565f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1644f, -386f) + vec2<f32>(763f, 244f))))))).x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-1064f + -955f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global1.zxy, 4294967295u, -7458i)) + -231f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1299f)))), _wgslsmith_f_op_f32(abs(597f))));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-143f)) + 1f);
    let var_1 = select(global0[_wgslsmith_index_u32(1u, 2u)], vec4<u32>((~30057u ^ u_input.b) & max(u_input.b, _wgslsmith_mod_u32(u_input.b, 4294967295u)), 1u, 0u, ~(~u_input.b) >> (1u % 32u)), vec4<bool>(true, !(!any(vec2<bool>(true, false))), u_input.b > u_input.b, any(select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-231f))));
    global1 = _wgslsmith_div_vec4_i32(~(-countOneBits(vec4<i32>(1214i, -1i, 2147483647i, 23924i))), -abs(~vec4<i32>(u_input.a.x, global1.x, global1.x, u_input.a.x)));
    let var_3 = Struct_1(true);
    global0 = array<vec4<u32>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(-395f, -889f, global1.xzz, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-243f))))));
}

