struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1() -> f32 {
    var var_0 = false;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1023f * 772f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_1(654f);
    var var_1 = var_0;
    let var_2 = u_input.c.x;
    var_1 = Struct_1(-1144f);
    let var_3 = countOneBits(max(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(9184i, u_input.a, u_input.a), max(vec3<i32>(0i, -649i, -38394i), vec3<i32>(23507i, u_input.a, u_input.a))), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<i32>(-1i, -27265i, u_input.a)), vec3<i32>(u_input.a, u_input.a, u_input.a) | vec3<i32>(u_input.a, u_input.a, u_input.a)), firstTrailingBit(vec3<i32>(14676i, -35940i, u_input.a))), ~(-vec3<i32>(u_input.a, -8997i, -517i)) | -vec3<i32>(1i, u_input.a, u_input.a)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) * arg_2.a);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(min(2368f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1281f) + 1306f))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-329f, _wgslsmith_div_f32(-200f, var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_1.zyy, Struct_1(-1000f), Struct_1(var_0.a)))))));
    var_0 = arg_2;
    var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_f32(step(1470f, arg_2.a)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1330f));
    return vec3<u32>(~abs(u_input.c.x), reverseBits(_wgslsmith_dot_vec4_u32(~u_input.c, _wgslsmith_mult_vec4_u32(reverseBits(u_input.c), _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.c.x, 4294967295u, u_input.c.x), u_input.c)))), 5305u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -3613i;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_f_op_f32(f32(-1f) * -1256f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-858f))))));
    var var_2 = vec2<bool>(true && (-(i32(-1i) * -1i) >= (0i >> (u_input.c.x % 32u))), any(select(vec2<bool>(any(vec2<bool>(false, true)), u_input.a <= 0i), vec2<bool>(true, true), true)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(floor(933f)));
    var var_4 = vec4<u32>(u_input.b.x, firstTrailingBit(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.b.x, 4294967295u, u_input.c.x)), func_2(var_3, vec4<bool>(var_2.x, var_2.x, var_2.x, false), var_3, Struct_1(1878f))) ^ u_input.c.x), _wgslsmith_clamp_u32(u_input.b.x, abs(~(~u_input.c.x)), u_input.c.x), u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(1f, var_4.wyx, vec3<u32>(~(u_input.c.x ^ 1u), _wgslsmith_add_u32(1u, 27882u), _wgslsmith_dot_vec3_u32(vec3<u32>(12102u, u_input.b.x, var_4.x), vec3<u32>(40031u, 4294967295u, 42501u))) << (u_input.c.yxw % vec3<u32>(32u)), _wgslsmith_sub_u32(u_input.c.x, 0u));
}

