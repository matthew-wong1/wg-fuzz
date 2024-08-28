struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(25016u, 1u);

var<private> global1: u32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    global0 = ~_wgslsmith_div_vec2_u32(arg_0.b.zx, vec2<u32>(~4294967295u, _wgslsmith_sub_u32(arg_0.b.x, ~arg_0.b.x)));
    var var_0 = Struct_3(Struct_2(vec2<i32>(1i, arg_0.a.x), arg_0), select(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, 0u, arg_0.b.x), vec4<u32>(59232u, global0.x, 1u, 2938u)) | abs(select(vec4<u32>(4294967295u, 4294967295u, 16062u, 4294967295u), vec4<u32>(arg_0.b.x, global0.x, arg_0.b.x, 0u), vec4<bool>(false, false, false, true))), vec4<u32>(0u, firstTrailingBit(arg_0.b.x) & 4294967295u, countOneBits(_wgslsmith_add_u32(1u, 28416u)), arg_0.b.x), false));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-944f - -752f) * -859f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(609f)), _wgslsmith_div_f32(121f, -549f))))));
    var var_2 = abs(_wgslsmith_sub_i32(-1i, ~(select(var_0.a.a.x, -1i, false) | u_input.a.x)));
    global1 = var_0.a.b.b.x;
    return Struct_3(var_0.a, ~(~_wgslsmith_sub_vec4_u32(var_0.b, vec4<u32>(arg_0.b.x, 25923u, global0.x, var_0.a.b.b.x))) ^ vec4<u32>(~_wgslsmith_mult_u32(global0.x, 2777u), _wgslsmith_mult_u32(141441u << (var_0.b.x % 32u), 25167u), ~43964u, ~_wgslsmith_mod_u32(59964u, 1u)));
}

fn func_1() -> vec2<bool> {
    global0 = countOneBits(~firstTrailingBit(vec2<u32>(1u, 4294967295u)));
    let var_0 = vec2<u32>(4294967295u, global0.x);
    global1 = ~global0.x;
    var var_1 = 0i;
    let var_2 = func_2(Struct_1(vec3<i32>(countOneBits(u_input.a.x), reverseBits(u_input.a.x) ^ u_input.a.x, u_input.a.x), vec3<u32>(~(var_0.x << (1u % 32u)), var_0.x, 51744u)));
    return vec2<bool>(!(!(!any(vec4<bool>(false, false, true, true)))), false);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<f32>) -> Struct_3 {
    return func_2(Struct_1(~vec3<i32>(-2147483647i, -2147483647i, u_input.a.x), vec3<u32>(~(~1u), _wgslsmith_clamp_u32(~56899u, global0.x | global0.x, _wgslsmith_div_u32(1u, 87084u)), ~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<u32>(58628u, 45845u) << (reverseBits(~(~vec2<u32>(0u, global0.x)) << (vec2<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0.x, global0.x, global0.x), vec4<u32>(global0.x, 1u, 0u, global0.x))) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_0 = 2147483647i;
    var var_1 = func_3(select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(any(vec4<bool>(false, true, true, false)), true), true), func_1(), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(select(-1238f, -271f, true)), _wgslsmith_f_op_f32(1000f - -403f), -520f))) + vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1113f - 2784f))), _wgslsmith_f_op_f32(max(-1305f, _wgslsmith_f_op_f32(-1159f * 262f))), _wgslsmith_f_op_f32(step(479f, -1575f)))));
    var var_2 = global0.x;
    var_1 = Struct_3(func_2(Struct_1(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x)), var_1.a.b.a ^ var_1.a.b.a), max(vec3<u32>(var_1.a.b.b.x, 1u, global0.x), ~vec3<u32>(var_1.b.x, var_1.b.x, 4294967295u)))).a, ~(~(~vec4<u32>(99888u, global0.x, 4294967295u, 5010u))));
    let x = u_input.a;
    s_output = StorageBuffer(0i, global0.x);
}

