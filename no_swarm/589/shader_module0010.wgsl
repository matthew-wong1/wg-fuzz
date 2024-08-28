struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(14288i, -4663i);

var<private> global1: Struct_1 = Struct_1(4294967295u, vec4<i32>(67193i, i32(-2147483648), 1i, 2147483647i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<bool> {
    global1 = Struct_1(4294967295u, _wgslsmith_div_vec4_i32(max(vec4<i32>(max(-1i, -4271i), -26306i, ~45088i, global1.b.x & global0.x), abs(vec4<i32>(global1.b.x, global1.b.x, 17878i, -9498i)) | -global1.b), vec4<i32>(~global1.b.x << (abs(u_input.b) % 32u), abs(31890i), abs(-2147483647i), -6155i)));
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-665f, -1000f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1805f, 1205f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-688f, _wgslsmith_div_f32(-1593f, -1378f)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(222f, 1623f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-138f, 1076f)), true)))) + vec2<f32>(-1358f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -523f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-114f))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, false)) - _wgslsmith_f_op_f32(var_0.x * -377f)), -1000f) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-590f, var_0.x))))))));
    var var_2 = -38498i;
    var_2 = -1i | global1.b.x;
    return vec2<bool>(0u > _wgslsmith_mod_u32(~(~global1.a), firstLeadingBit(u_input.a.x)), any(vec4<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))), true, true)));
}

fn func_2(arg_0: bool, arg_1: vec4<bool>) -> u32 {
    global0 = vec2<i32>(-2147483647i, -1i) >> (select(~(vec2<u32>(1u, global1.a) ^ vec2<u32>(40249u, 1u)) >> (u_input.a.wx % vec2<u32>(32u)), u_input.a.yz ^ ~(~u_input.a.wx), func_3()) % vec2<u32>(32u));
    let var_0 = Struct_1(62705u, vec4<i32>(1i, _wgslsmith_add_i32(2147483647i, ~global1.b.x), global1.b.x, _wgslsmith_sub_i32(23815i, _wgslsmith_mod_i32(-7110i, global0.x))));
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(global1.b.xww, global1.b.wyx), -1i);
    let var_2 = arg_0;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(sign(911f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1313f, -1000f)))))));
    return global1.a;
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    global1 = Struct_1(abs(_wgslsmith_mult_u32(~global1.a, _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b, 1u), global1.a >> (1u % 32u)))), global1.b);
    global0 = ~vec2<i32>(1i, global0.x);
    let var_0 = _wgslsmith_div_u32(global1.a & u_input.c, ~4294967295u);
    var var_1 = vec2<u32>(~_wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(64118u, u_input.c), 1u), func_2(true, vec4<bool>(true, true, true, true))), ~66970u);
    var var_2 = -592f;
    return Struct_1(1u, _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(global1.b, firstTrailingBit(vec4<i32>(-2147483647i, -2147483647i, global1.b.x, 2147483647i)), -global1.b), ~vec4<i32>(global1.b.x & arg_0.x, -54475i, ~global0.x, -12871i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1974f;
    global1 = Struct_1(~(firstTrailingBit(0u) ^ (_wgslsmith_div_u32(global1.a, global1.a) ^ _wgslsmith_mult_u32(0u, 0u))), global1.b);
    let var_1 = func_1(global1.b.yw);
    global0 = var_1.b.zy;
    global0 = vec2<i32>(~global1.b.x, _wgslsmith_add_i32(-global0.x, -33147i));
    global0 = abs(-(~select(var_1.b.yz, global1.b.zy, select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec2_u32(abs(u_input.a.ww), vec2<u32>(0u, 11830u), ~u_input.a.ww) & u_input.a.xw);
}

