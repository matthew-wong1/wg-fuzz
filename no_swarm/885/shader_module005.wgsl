struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32 = 38114i;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_1(arg_0: vec4<u32>) -> u32 {
    var var_0 = Struct_3(33496u, u_input.b, vec4<f32>(-1221f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))), 431f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-238f, -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1045f)))));
    return _wgslsmith_div_u32(var_0.a << (92806u % 32u), 31001u);
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(282f + arg_0.c)) * _wgslsmith_f_op_f32(arg_0.c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(241f + -356f) - _wgslsmith_f_op_f32(ceil(522f))))) * arg_0.c);
    var var_1 = _wgslsmith_mult_u32(0u, countOneBits(arg_0.d));
    var var_2 = _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-arg_0.a.x >> (_wgslsmith_add_u32(1u, arg_0.d) % 32u), 1i), select(max(arg_0.a >> (u_input.d % vec2<u32>(32u)), u_input.b), firstTrailingBit(~vec2<i32>(-40122i, 39093i)), vec2<bool>(true, true))), ~(_wgslsmith_sub_vec2_i32(select(arg_0.b.zy, vec2<i32>(0i, -6349i), true), vec2<i32>(-2147483647i, u_input.b.x)) ^ select(~arg_0.b.xy, arg_0.b.xy, true)));
    var var_3 = u_input.c;
    var_1 = _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, ~_wgslsmith_dot_vec2_u32(u_input.d, u_input.d), arg_0.d, _wgslsmith_add_u32(max(arg_0.d, arg_0.d), u_input.d.x)), ~(max(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.d, arg_0.d, 63032u, 1u), vec4<u32>(31754u, u_input.d.x, 4294967295u, 18111u)), vec4<u32>(arg_0.d, 1u, u_input.d.x, 0u)) | select(~vec4<u32>(arg_0.d, u_input.d.x, 4294967295u, arg_0.d), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, arg_0.d, 0u, 0u), vec4<u32>(55345u, u_input.d.x, 28903u, u_input.d.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-322f, var_0), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1281f * 698f)))));
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    global0 = 2891i;
    global1 = -41568i;
    global1 = u_input.b.x;
    global0 = -46604i;
    let var_0 = vec4<bool>(u_input.a >= 1i, any(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), !select(true, true, true) | !any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(988f, -545f))))) >= _wgslsmith_f_op_f32(-415f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-195f, 480f)) * _wgslsmith_f_op_f32(func_3(Struct_2(u_input.b, vec3<i32>(u_input.c, u_input.c, -1i), 695f, u_input.d.x))))));
    return Struct_2(u_input.b, select(vec3<i32>(max(_wgslsmith_add_i32(u_input.b.x, -62642i), -13176i), u_input.c, -24290i), _wgslsmith_mod_vec3_i32(reverseBits(select(vec3<i32>(25654i, -16004i, u_input.a), vec3<i32>(u_input.c, u_input.c, 2781i), var_0.x)), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, u_input.a, u_input.c), vec3<i32>(2147483647i, -7360i, u_input.c)), vec3<i32>(u_input.b.x, u_input.c, -7231i))), var_0.wyy), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1f)))), arg_0.x);
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> Struct_2 {
    let var_0 = vec3<u32>(arg_0.d, _wgslsmith_add_u32(firstTrailingBit(firstLeadingBit(34559u)) & (func_1(vec4<u32>(u_input.d.x, 9402u, 1u, 21358u)) ^ u_input.d.x), 39022u >> (abs(1u) % 32u)), arg_0.d);
    return func_2((u_input.d & (var_0.xx << (vec2<u32>(arg_0.d, var_0.x) % vec2<u32>(32u)))) | ~(~(vec2<u32>(var_0.x, 21182u) >> (u_input.d % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(u_input.b ^ abs(~countOneBits(vec2<i32>(-5655i, 2147483647i))), vec3<i32>(u_input.a, u_input.c, u_input.b.x) | (-(~vec3<i32>(u_input.b.x, u_input.c, -1i)) >> (vec3<u32>(26715u, ~u_input.d.x, func_1(vec4<u32>(16371u, u_input.d.x, u_input.d.x, 4294967295u))) % vec3<u32>(32u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -242f)))), u_input.d.x);
    global1 = 4477i;
    let var_1 = reverseBits(-1i & u_input.c);
    global1 = 1i;
    var_0 = func_4(func_2(~vec2<u32>(u_input.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 8466u, u_input.d.x), vec3<u32>(u_input.d.x, 1u, 1u)))), !(!((u_input.a & -1i) <= _wgslsmith_add_i32(4313i, var_0.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(var_0.c)), var_0.b, var_0.b.x);
}

