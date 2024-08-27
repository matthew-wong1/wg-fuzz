struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: u32 = 20683u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool, arg_1: f32) -> f32 {
    global1 = abs(~(~1u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1)) - arg_1);
}

fn func_4(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = -1i > -(u_input.d.x ^ -2147483647i);
    var var_1 = u_input.b;
    var var_2 = vec4<u32>(reverseBits(~firstLeadingBit(1u)), u_input.b, 18300u, _wgslsmith_mult_u32(36367u, _wgslsmith_mult_u32(abs(1u), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(4724u, 1u))))));
    let var_3 = min(~(~var_2.zx << (_wgslsmith_add_vec2_u32(var_2.yx ^ var_2.wy, reverseBits(vec2<u32>(var_2.x, u_input.b))) % vec2<u32>(32u))), vec2<u32>(~(max(var_2.x, 2093u) | 80931u), _wgslsmith_mod_u32(~var_2.x >> (1u % 32u), ~0u)));
    var var_4 = max(u_input.e.x, _wgslsmith_add_i32(firstTrailingBit(~(u_input.e.x | -1i)), abs(min(u_input.a << (var_3.x % 32u), 1i))));
    return _wgslsmith_mult_vec4_u32(~min(min(vec4<u32>(4294967295u, var_3.x, 4294967295u, 46765u), _wgslsmith_add_vec4_u32(vec4<u32>(83934u, u_input.b, 18048u, var_3.x), vec4<u32>(5864u, var_2.x, u_input.b, var_3.x))), min(vec4<u32>(u_input.b, 1u, var_2.x, 1u), vec4<u32>(46721u, var_2.x, 0u, 0u) ^ vec4<u32>(67068u, 1u, var_3.x, 7269u))), countOneBits(_wgslsmith_add_vec4_u32((vec4<u32>(var_3.x, 0u, var_3.x, var_2.x) | vec4<u32>(0u, u_input.b, 0u, u_input.b)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(4138u, 4294967295u, 66927u, var_2.x), vec4<u32>(u_input.b, u_input.b, 2175u, var_3.x)) % vec4<u32>(32u)), ~select(vec4<u32>(u_input.b, 113446u, 15790u, var_3.x), vec4<u32>(4294967295u, var_3.x, u_input.b, 4294967295u), vec4<bool>(false, false, false, false)))));
}

fn func_2() -> vec2<u32> {
    let var_0 = select(~vec4<u32>(4294967295u, 9383u, ~min(u_input.b, u_input.b), 16812u), (~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, 4294967295u, 4294967295u), vec4<u32>(162786u, 1u, 0u, 73062u)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, u_input.b), ~vec4<u32>(3564u, u_input.b, 94153u, u_input.b), min(vec4<u32>(4639u, u_input.b, 4294967295u, u_input.b), vec4<u32>(20399u, 4294967295u, 0u, 26732u)))) | func_4(Struct_1(_wgslsmith_f_op_f32(func_3(global0.x, -377f)))), true);
    let var_1 = -(i32(-1i) * -1i);
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(var_1 ^ u_input.d.x, u_input.d.x) << (3183u % 32u), abs(abs(-46971i))), u_input.d.yx >> (min((vec2<u32>(u_input.b, u_input.b) & vec2<u32>(4736u, 1u)) | _wgslsmith_add_vec2_u32(var_0.xx, vec2<u32>(1u, u_input.b)), var_0.ww) % vec2<u32>(32u)));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-613f * _wgslsmith_f_op_f32(375f - 909f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1919f - 479f))))), _wgslsmith_f_op_f32(sign(557f)));
    var_2 = var_1;
    return var_0.zy;
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_2) -> vec2<bool> {
    global1 = u_input.b;
    let var_0 = ~_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.b, ~u_input.b), reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 42714u), func_2())));
    var var_1 = arg_1;
    let var_2 = _wgslsmith_dot_vec3_u32(max(vec3<u32>(var_0.x, 1u, 4294967295u), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b, 27087u, u_input.b) | ~vec3<u32>(u_input.b, var_0.x, 1u), ~(~vec3<u32>(0u, 13821u, 4294967295u)))), vec3<u32>(u_input.b, 47595u, _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(8747u, 87775u, 37026u, 4294967295u), vec4<u32>(5759u, 4294967295u, 1u, var_0.x)), u_input.b)));
    let var_3 = Struct_1(arg_2.a.x);
    return select(arg_0.zy, select(vec2<bool>(global0.x & true, true), arg_0.xz, !arg_0.x), select(false, arg_0.x, ~arg_1 != -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec2<bool>(!all(vec3<bool>(false, global0.x, global0.x)), true), !(!select(!vec2<bool>(global0.x, false), select(vec2<bool>(true, true), vec2<bool>(false, global0.x), global0.x), func_1(vec4<bool>(true, false, global0.x, false), -32473i, Struct_2(vec3<f32>(-500f, -1501f, 1000f), Struct_1(-963f), Struct_1(-1763f))))), global0.x);
    var var_0 = vec3<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(235f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1236f)) + _wgslsmith_f_op_f32(max(-896f, -1000f)))), -1241f), -1000f);
    global1 = 1u;
    var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 548f, var_0.x)), vec3<f32>(-1331f, var_0.x, var_0.x))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-624f, var_0.x, var_0.x)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1123f, 669f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-187f, var_0.x, var_0.x))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, var_0.x, var_0.x), vec3<f32>(-1423f, 1114f, var_0.x))))))));
    var var_1 = firstTrailingBit(~max(_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.d.x, 39261i), 38331i << (u_input.b % 32u)), u_input.d.x));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-507f, -121f))))));
    var var_3 = Struct_2(vec3<f32>(var_2.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-319f)))), var_2.a)), var_2.a), Struct_1(-509f), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-579f, -2003f) - var_3.a.zz), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_3.a.xy, var_0.xx))))))), _wgslsmith_mod_i32(-(0i ^ (u_input.a << (0u % 32u))), _wgslsmith_add_i32(19270i, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-2147483647i, 1i)), ~vec2<i32>(16514i, u_input.e.x)))));
}

