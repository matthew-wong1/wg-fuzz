struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-375i, 0i, 0i);

var<private> global1: array<Struct_4, 7> = array<Struct_4, 7>(Struct_4(295f), Struct_4(1132f), Struct_4(878f), Struct_4(448f), Struct_4(704f), Struct_4(-2115f), Struct_4(2620f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: i32) -> bool {
    var var_0 = 5301u;
    global0 = vec3<i32>(arg_1, -1i, (arg_1 << (firstTrailingBit(0u) % 32u)) & (i32(-1i) * -(~(-63895i))));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-424f, -878f)))), -1749f))));
    var var_2 = Struct_4(-1107f);
    var var_3 = -46266i;
    return true || any(vec4<bool>(arg_0.x >= -arg_1, all(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, false)) || all(vec4<bool>(true, true, false, false)), true & (u_input.c >= arg_0.x)));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: bool, arg_3: u32) -> Struct_3 {
    global1 = array<Struct_4, 7>();
    var var_0 = Struct_1(u_input.a.zxz);
    let var_1 = vec4<bool>(!(!arg_2), func_3(-(u_input.a | vec4<i32>(u_input.a.x, 1i, 2147483647i, global0.x)), arg_0) | true, ~0i <= _wgslsmith_mult_i32(-abs(20153i), min(u_input.a.x, countOneBits(31164i))), any(vec2<bool>(false, any(!vec2<bool>(arg_2, false)))));
    return Struct_3(var_1, vec4<bool>(true, false, true, any(var_1.xzz) && func_3(vec4<i32>(var_0.a.x, 1i, global0.x, u_input.c), ~var_0.a.x)));
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: vec2<f32>) -> Struct_3 {
    let var_0 = u_input.d.x;
    return func_2(_wgslsmith_clamp_i32(global0.x, 1i, abs(abs(firstTrailingBit(2147483647i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-436f * arg_2.x)))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, 373f) + arg_2.x)), arg_2.x >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1224f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.x), arg_2.x))), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(_wgslsmith_add_vec3_i32(u_input.a.wwy, ~abs(u_input.a.xwx)) >> (u_input.d.zzw % vec3<u32>(32u)));
    let var_1 = _wgslsmith_clamp_u32(~u_input.d.x | u_input.b.x, ~u_input.b.x, ~(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(0u, u_input.b.x, 0u, u_input.d.x)), max(vec4<u32>(u_input.b.x, u_input.d.x, u_input.b.x, u_input.d.x), u_input.b)) ^ u_input.d.x));
    var var_2 = func_1(u_input.d.yx, u_input.b.x, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1104f)), -562f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(583f * 2184f)), -673f), true)));
    var var_3 = Struct_3(vec4<bool>(any(var_2.b.zx), any(func_1(vec2<u32>(42951u, var_1), var_1 & u_input.d.x, vec2<f32>(932f, 1113f)).b), any(vec2<bool>(true, var_2.b.x || false)), var_2.b.x), var_2.a);
    var var_4 = 568i;
    var var_5 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-987f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(969f)))))));
    var_0 = u_input.a.xwx;
    let var_6 = Struct_3(!vec4<bool>(var_3.b.x, var_2.a.x, all(vec4<bool>(true, var_3.b.x, var_3.a.x, false)), !select(var_3.b.x, var_3.b.x, var_2.a.x)), vec4<bool>(any(vec3<bool>(var_2.a.x, true, func_3(u_input.a, u_input.a.x))), func_2(_wgslsmith_dot_vec3_i32(u_input.a.yzy, _wgslsmith_clamp_vec3_i32(u_input.a.wxz, vec3<i32>(global0.x, global0.x, u_input.c), u_input.a.xzx)), _wgslsmith_f_op_f32(min(var_5.a, _wgslsmith_f_op_f32(-521f - var_5.a))), true, u_input.d.x).b.x, var_3.a.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~min(min(0u, 8210u), ~34473u), var_1 >> (_wgslsmith_dot_vec4_u32(abs(u_input.b), ~u_input.b) % 32u), ~(~var_1), 11099u), _wgslsmith_f_op_vec2_f32(vec2<f32>(-274f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_5.a, -1000f)) * var_5.a)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.a, -574f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_5.a, 264f) - vec2<f32>(var_5.a, var_5.a))))), u_input.a.x);
}

