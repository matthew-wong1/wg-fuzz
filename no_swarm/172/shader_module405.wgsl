struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: i32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2147483647i, -2801i);

var<private> global1: vec4<i32> = vec4<i32>(-1i, 1i, 39119i, -1i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool) -> i32 {
    var var_0 = arg_0;
    global0 = global1.zz;
    var var_1 = Struct_1(select(!(!select(arg_0, vec2<bool>(true, false), var_0.x)), arg_0, var_0.x), !select(!select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(var_0.x, var_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_1, true, arg_1, arg_1)), vec4<bool>(arg_0.x, true, true, false), any(select(vec4<bool>(true, var_0.x, true, arg_0.x), vec4<bool>(arg_1, var_0.x, var_0.x, false), var_0.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1676f, _wgslsmith_f_op_f32(521f + 337f), -217f) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1297f, 1222f, -442f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(651f, -729f, -833f) + vec3<f32>(1000f, 1073f, 2206f)), !arg_0.x)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-232f, -493f, -513f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-448f, -986f, -425f), vec3<f32>(-1000f, -763f, -651f)))))))), -2147483647i, ~vec4<u32>(max(~4836u, 30218u), abs(103373u >> (1u % 32u)), 3828u, 4571u));
    var var_2 = var_1.d;
    let var_3 = ~(~_wgslsmith_sub_u32(var_1.e.x, var_1.e.x));
    return _wgslsmith_dot_vec3_i32(global1.zzw, u_input.b);
}

fn func_2() -> Struct_1 {
    global0 = global1.wy;
    global0 = vec2<i32>(global1.x, _wgslsmith_clamp_i32(-12767i, max(-57485i, -1i), 16845i));
    var var_0 = -(-2147483647i | global0.x);
    global1 = select(~select(-(~vec4<i32>(global1.x, u_input.b.x, 1i, 0i)), vec4<i32>(reverseBits(global0.x), global0.x, u_input.b.x, _wgslsmith_mult_i32(-1246i, global0.x)), any(vec3<bool>(true, true, true))), vec4<i32>(_wgslsmith_add_i32(func_3(vec2<bool>(true, true), any(vec2<bool>(false, false))), _wgslsmith_dot_vec4_i32(select(vec4<i32>(global1.x, global1.x, 1i, global0.x), vec4<i32>(global1.x, 1i, 2147483647i, 2147483647i), false), firstTrailingBit(vec4<i32>(global1.x, u_input.b.x, u_input.b.x, global1.x)))), abs(global1.x) & -24893i, global1.x, global1.x), any(vec4<bool>(true, true, true, true)));
    var var_1 = 1u < ~_wgslsmith_clamp_u32(1u, 27599u, 1u);
    return Struct_1(vec2<bool>(true, true), vec4<bool>(true, false, true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 534f, -867f) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(936f, 592f, -205f)))), vec3<f32>(_wgslsmith_f_op_f32(abs(551f)), _wgslsmith_f_op_f32(1067f * -402f), 794f)))), ~(-func_3(select(vec2<bool>(false, true), vec2<bool>(true, false), true), true)), vec4<u32>(~36018u, 2641u, ~1u, _wgslsmith_add_u32(abs(1u), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, 82306u, 107u)), vec3<u32>(0u, 17610u, 1u)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_3;
    var var_1 = func_2();
    return arg_2;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = arg_2;
    var var_1 = func_4(vec3<f32>(-169f, var_0.c.x, var_0.c.x), func_2(), arg_2, func_2());
    let var_2 = _wgslsmith_f_op_f32(trunc(1f));
    var var_3 = arg_2;
    var_1 = var_0;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!select(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), true), !vec4<bool>(true, all(func_1(11513i, true, Struct_1(vec2<bool>(false, false), vec4<bool>(true, true, true, false), vec3<f32>(155f, -417f, -218f), -2147483647i, vec4<u32>(4294967295u, 0u, 0u, 107602u)))), true, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(214f, -231f, -2028f) * vec3<f32>(-1540f, 2222f, -521f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1269f, -722f, 221f))))) + _wgslsmith_f_op_vec3_f32(abs(func_2().c))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1101f, 1000f, 708f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(581f, -470f, -522f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(198f, -2831f, -423f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1091f, 617f, -575f) + vec3<f32>(228f, -643f, 1000f))))), u_input.a, ~vec4<u32>(1u, countOneBits(func_2().e.x), 33832u, select(0u, 0u, false) >> (~13914u % 32u)));
    var var_1 = vec2<bool>(true, true);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(0i, 24004i, global1.x, var_0.d)), vec4<i32>(u_input.c.x, global0.x, global1.x, 2147483647i) | vec4<i32>(-12040i, var_0.d, -50013i, global1.x)) >> (~vec4<u32>(4294967295u, var_0.e.x, 17807u, var_0.e.x) % vec4<u32>(32u))), var_0.e.xw, abs(firstTrailingBit(firstLeadingBit(firstLeadingBit(vec4<i32>(39324i, u_input.c.x, var_0.d, -59886i))))), _wgslsmith_f_op_f32(ceil(-897f)));
}

