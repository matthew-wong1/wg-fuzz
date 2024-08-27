struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 31374u;

var<private> global1: array<vec2<u32>, 22>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_3, arg_3: f32) -> u32 {
    var var_0 = Struct_2(~1i, ~firstTrailingBit(vec3<u32>(u_input.a ^ u_input.a, 1u, 1u)), 27040u, -_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.c.x, u_input.b.x, 0i, 1i)), ~vec4<i32>(u_input.b.x, -2907i, -2147483647i, u_input.c.x)), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.b.xz, u_input.c.xy), i32(-1i) * -1i, u_input.c.x, 2147483647i)));
    let var_1 = arg_2;
    var var_2 = var_1;
    return firstTrailingBit(_wgslsmith_mod_u32(u_input.a, 7259u));
}

fn func_2() -> Struct_3 {
    var var_0 = ~(~_wgslsmith_sub_u32(~13678u, u_input.a)) >= (~u_input.a | func_3(-332f, u_input.a, Struct_3(vec2<bool>(true, false)), 1169f));
    global0 = ~43267u;
    global1 = array<vec2<u32>, 22>();
    global0 = 4294967295u;
    global0 = ~(_wgslsmith_mod_u32(~firstTrailingBit(u_input.a), countOneBits(~19515u)) & firstLeadingBit(1u));
    return Struct_3(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(!(1i >= u_input.c.x), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: u32) -> bool {
    let var_0 = func_2();
    let var_1 = vec3<i32>(i32(-1i) * -2105i, 2147483647i, 1i);
    global1 = array<vec2<u32>, 22>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 22>();
    global0 = ~(~3250u >> (~u_input.a % 32u));
    var var_0 = Struct_1(vec3<i32>(-2147483647i, 2147483647i, u_input.c.x), ~(~u_input.a), func_1(-_wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.b.x, 1i, -6396i), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1467f, -492f), vec2<f32>(842f, 1000f))), reverseBits(u_input.a)) | select(any(vec2<bool>(true, true)) & true, true, true));
    var var_1 = 51752u;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(514f)) * _wgslsmith_f_op_f32(trunc(-776f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(117f, 751f))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1000f, -947f))))));
    global0 = 1u;
    var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(~abs(var_0.b) << (6922u % 32u), abs(53185u >> (u_input.a % 32u))), global1[_wgslsmith_index_u32(9968u, 22u)]);
    global0 = 22557u >> (abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_0.b), vec2<u32>(u_input.a, var_0.b) & vec2<u32>(var_0.b, 7953u))) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(reverseBits(~var_0.b | func_3(var_2.x, 5957u, Struct_3(vec2<bool>(var_0.c, var_0.c)), 1020f)), var_0.b, _wgslsmith_clamp_u32(func_3(_wgslsmith_f_op_f32(-1138f + 552f), u_input.a, func_2(), -1448f), 1u, var_0.b), ~34234u));
}

