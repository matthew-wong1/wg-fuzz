struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> vec2<i32> {
    var var_0 = global1.a;
    return vec2<i32>(-1i) * -var_0.b;
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> Struct_2 {
    global1 = Struct_2(global0.a);
    global0 = Struct_2(global0.a);
    var var_0 = Struct_2(global1.a);
    var var_1 = 299f;
    global1 = Struct_2(Struct_1(1i, ~vec2<i32>(~var_0.a.a, -62848i)));
    return Struct_2(global0.a);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * _wgslsmith_f_op_f32(step(-424f, 722f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -855f) * _wgslsmith_f_op_f32(abs(-1722f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-206f)) + _wgslsmith_f_op_f32(1373f - -1001f)))));
    let var_1 = global1.a.b.x;
    global0 = Struct_2(func_2(abs(17273u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-368f, 499f, 554f) - vec3<f32>(1375f, 205f, 1324f)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-357f, 853f, -943f), vec3<f32>(-878f, 959f, -287f)))))).a);
    var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * 950f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-445f, _wgslsmith_f_op_f32(f32(-1f) * -629f)) - _wgslsmith_f_op_f32(1f * 645f))), _wgslsmith_div_f32(-338f, _wgslsmith_f_op_f32(trunc(-367f))), -238f, -910f);
    var var_3 = u_input.a.x >> (0u % 32u);
    return _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(7890u, u_input.a.x, u_input.a.x, 1u), vec4<u32>(1u, 1u, u_input.a.x, u_input.a.x)))), min(u_input.a.x, _wgslsmith_mult_u32(~u_input.a.x, ~u_input.a.x))) | 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(func_3(_wgslsmith_div_vec2_i32(~global1.a.b >> (u_input.a % vec2<u32>(32u)), ~func_1()), func_2(~u_input.a.x, vec3<f32>(-1583f, _wgslsmith_f_op_f32(-1137f + 180f), _wgslsmith_f_op_f32(822f - -1427f))), -global0.a.b.x));
    global0 = Struct_2(func_2(~u_input.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-571f, 727f, -933f)))) + vec3<f32>(-1013f, _wgslsmith_div_f32(-758f, 106f), _wgslsmith_div_f32(-197f, 592f)))).a);
    global0 = Struct_2(global1.a);
    let var_1 = Struct_2(Struct_1(_wgslsmith_mod_i32(global1.a.b.x, ~global1.a.b.x), -global0.a.b));
    global0 = Struct_2(Struct_1(-1i, vec2<i32>(_wgslsmith_sub_i32(-50001i, global1.a.b.x) & (global0.a.a | var_1.a.a), _wgslsmith_add_i32(_wgslsmith_add_i32(2147483647i, global0.a.b.x), var_1.a.b.x >> (u_input.a.x % 32u)))));
    var_0 = 1u;
    let var_2 = var_1.a;
    let var_3 = _wgslsmith_add_vec2_i32(-vec2<i32>(countOneBits(i32(-1i) * -11719i), 1i), ~global0.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(1f);
}

