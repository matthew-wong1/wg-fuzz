struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 26>;

var<private> global1: array<vec3<i32>, 15>;

var<private> global2: u32 = 152294u;

var<private> global3: Struct_3 = Struct_3(1u, 1u);

var<private> global4: Struct_3;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> bool {
    var var_0 = Struct_2(max(71379u & (12803u & global4.b), 8025u) | ~min(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(21459u, 4294967295u, global4.a), u_input.e.zzy)), (_wgslsmith_f_op_f32(step(-715f, _wgslsmith_f_op_f32(264f * -1000f))) > -1423f) | !(true | any(vec2<bool>(true, false))));
    var var_1 = Struct_2(_wgslsmith_mod_u32(~1u, global4.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-477f + -224f)) + 1416f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1314f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(176f)))));
    var var_2 = -reverseBits(firstLeadingBit(2147483647i));
    let var_3 = Struct_3(max(4294967295u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, u_input.d, 8544u), vec3<u32>(global3.b, u_input.e.x, global3.a)) | _wgslsmith_mod_u32(reverseBits(u_input.e.x), var_0.a)), ~(~firstLeadingBit(4294967295u)));
    global3 = var_3;
    return true;
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: vec2<f32>, arg_3: vec3<u32>) -> bool {
    global0 = array<vec4<i32>, 26>();
    var var_0 = 0i;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), arg_2.x, -1246f, arg_2.x);
    let var_2 = vec3<bool>(!all(vec2<bool>(true, true)), true, (var_1.x < arg_2.x) && func_3());
    var var_3 = Struct_2(~31181u, var_2.x);
    return var_3.b;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = Struct_2(firstTrailingBit(global3.b) << (_wgslsmith_mult_u32(_wgslsmith_div_u32(1u, _wgslsmith_dot_vec3_u32(arg_2.a, arg_2.a)), u_input.c) % 32u), func_3());
    var var_1 = !(!arg_1);
    var var_2 = var_0;
    let var_3 = u_input.e.xyx;
    let var_4 = Struct_2(0u, var_0.b);
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-204f, _wgslsmith_f_op_f32(-536f + -1030f), _wgslsmith_f_op_f32(ceil(-485f)))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1000f, -401f, _wgslsmith_f_op_f32(-arg_2.c))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1247f, _wgslsmith_div_f32(arg_2.c, arg_2.c), _wgslsmith_f_op_f32(f32(-1f) * -736f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2.c, -1000f, _wgslsmith_f_op_f32(142f - arg_2.c)))))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(Struct_3(arg_0.a, arg_1.a), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_2(vec4<i32>(1i, -2147483647i, -1i, -2147483647i), -2147483647i, vec2<f32>(2654f, 1282f), u_input.e.zzx)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false)), true), Struct_1(u_input.e.xyy, abs(vec2<i32>(u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(max(-1700f, -220f))))));
    var_0 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1365f), _wgslsmith_div_f32(2361f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)) - _wgslsmith_f_op_f32(-var_0.x)) + var_0.x)));
    let var_1 = Struct_1(~vec3<u32>(_wgslsmith_mod_u32(u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a, 44976u, 0u), u_input.e.wxz)), 67873u, abs(60u) | _wgslsmith_div_u32(29502u, global4.b)), u_input.a.ww, 537f);
    var var_2 = select(vec2<bool>(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), false))), any(vec4<bool>(true, true, true, true))), select(!vec2<bool>(true, func_3()), vec2<bool>(!any(vec4<bool>(false, true, true, false)), true | all(vec2<bool>(true, false))), true), all(vec4<bool>(true, any(vec4<bool>(false, true, false, true)), func_3(), true)));
    let var_3 = !vec3<bool>(all(!(!vec2<bool>(var_2.x, false))), var_2.x, true);
    return ~(~(~(~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_3(abs(~(~u_input.b)), func_1(Struct_3(~(global3.a | 38659u), 0u), Struct_3(u_input.d << (_wgslsmith_clamp_u32(68598u, global3.b, 69304u) % 32u), global4.b), global3.a));
    let var_0 = _wgslsmith_mod_u32(~select(u_input.b, global3.b, true) ^ ~u_input.e.x, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(u_input.e, firstTrailingBit(~u_input.e)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 59515u, u_input.e.x, 1u) & ~u_input.e, select(select(u_input.e, vec4<u32>(4294967295u, 553u, u_input.d, global4.b), vec4<bool>(true, false, false, true)), u_input.e | vec4<u32>(38626u, 4294967295u, 4294967295u, 0u), true))));
    let var_1 = any(vec4<bool>(true, true, true, true));
    global0 = array<vec4<i32>, 26>();
    var var_2 = Struct_1(vec3<u32>(~1u, select(global3.a, 8765u, true) >> (67858u % 32u), _wgslsmith_clamp_u32(0u, var_0, ~_wgslsmith_div_u32(global4.b, global4.b))), -_wgslsmith_sub_vec2_i32(-u_input.a.wy, u_input.a.yw) >> (vec2<u32>(global3.a, global3.a) % vec2<u32>(32u)), 807f);
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_3(~(~var_2.a.x), var_0), !select(vec3<bool>(true, true, true), !vec3<bool>(false, var_1, false), !vec3<bool>(false, var_1, var_1)), Struct_1(u_input.e.wzy, u_input.a.zw, _wgslsmith_f_op_f32(f32(-1f) * -977f)))).zz * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.c * _wgslsmith_f_op_f32(step(-955f, -658f))), _wgslsmith_f_op_f32(var_2.c - var_2.c)), -159f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_3.x), var_3.x, _wgslsmith_f_op_f32(f32(-1f) * -927f))), -105f, var_2.a.x, vec2<u32>(1u | global4.b, 4294967295u));
}

