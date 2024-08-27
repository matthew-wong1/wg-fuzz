struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = !(!vec3<bool>(u_input.d <= u_input.d, true, any(vec3<bool>(true, true, true))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(ceil(-1000f)), any(var_0.yx))))) * 496f), arg_0.x);
    var var_2 = u_input.a.x;
    let var_3 = u_input.e.wz;
    let var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(166f - 944f)));
    return Struct_2(~abs(1i), var_3.x, arg_0);
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> i32 {
    let var_0 = arg_1.c;
    let var_1 = _wgslsmith_dot_vec3_u32(u_input.a.ywy << ((vec3<u32>(_wgslsmith_div_u32(arg_0, u_input.c.x), ~15895u, u_input.b) & u_input.a.yxx) % vec3<u32>(32u)), abs(_wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(u_input.b, u_input.a.x, u_input.a.x)), vec3<u32>(0u, u_input.c.x, u_input.c.x)) & ~_wgslsmith_sub_vec3_u32(u_input.a.zxy, vec3<u32>(1u, 11298u, arg_0))));
    var var_2 = arg_1;
    var_2 = Struct_2(-7005i, _wgslsmith_div_i32(arg_1.a, arg_1.b), _wgslsmith_f_op_vec3_f32(step(var_2.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.c) + var_0))));
    var_2 = func_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + arg_1.c.x) * 2735f), _wgslsmith_f_op_f32(-var_2.c.x), arg_1.c.x), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(select(var_0.x, -2748f, true)), _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_div_f32(991f, 1587f)))))), reverseBits(vec4<i32>(var_2.b, arg_1.b, max(reverseBits(0i), arg_1.a), -36539i)));
    return -1093i;
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec4<bool>) -> StorageBuffer {
    var var_0 = arg_0;
    return StorageBuffer(firstTrailingBit(select(u_input.e.wx, u_input.e.wy, vec2<bool>(arg_2.x, true))) >> (u_input.c % vec2<u32>(32u)), arg_1.c, ~(-vec4<i32>(countOneBits(u_input.e.x), ~u_input.e.x, func_1(arg_1.c, u_input.e).a, i32(-1i) * -97718i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_3(_wgslsmith_sub_i32(func_2(~u_input.c.x, func_1(vec3<f32>(241f, -236f, -293f), u_input.e)) >> (u_input.c.x % 32u), ~((-2147483647i >> (u_input.b % 32u)) & ~u_input.e.x)), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -175f, 503f) - vec3<f32>(-1185f, -601f, -286f)), vec3<f32>(-1079f, 2530f, 916f)))), vec4<i32>(~u_input.e.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, u_input.d, 1i), u_input.e.wxy), ~u_input.d, 1i) >> (_wgslsmith_div_vec4_u32(u_input.a & u_input.a, vec4<u32>(u_input.c.x, 4294967295u, u_input.b, 4294967295u)) % vec4<u32>(32u))), vec4<bool>(true, false, true, any(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))));
}

