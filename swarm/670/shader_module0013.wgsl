struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<f32, 29>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec3<f32>, arg_1: u32) -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.c.x & u_input.c.x, u_input.c.x), u_input.c.yz), vec2<i32>(_wgslsmith_sub_i32(33611i, ~u_input.c.x), ~(~u_input.c.x))), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), -796f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.zx, _wgslsmith_f_op_vec2_f32(-arg_0.yy)) * arg_0.yx)), ~vec2<i32>(_wgslsmith_mod_i32(u_input.c.x, u_input.c.x) | u_input.c.x, ~(-39754i)), false);
    global1 = array<f32, 29>();
    let var_1 = var_0.e;
    let var_2 = Struct_4(Struct_1(!select(vec3<bool>(true, var_1, true), vec3<bool>(var_1, var_0.e, var_0.e), !vec3<bool>(var_0.e, false, true))));
    let var_3 = global1[_wgslsmith_index_u32(arg_1 << (~firstLeadingBit(firstTrailingBit(u_input.a.x)) % 32u), 29u)];
    return Struct_2(vec2<bool>(1u > select(select(4294967295u, 4294967295u, true), arg_1, var_0.e), false));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: bool) -> bool {
    var var_0 = Struct_3(-39424i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 29u)]), _wgslsmith_f_op_f32(trunc(-1402f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(1u, 29u)], -478f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-108f, global1[_wgslsmith_index_u32(35418u, 29u)]), vec2<f32>(119f, -506f), true)))), vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_1, 29u)] * -223f), _wgslsmith_f_op_f32(806f * 1472f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(596f, global1[_wgslsmith_index_u32(u_input.b, 29u)]))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-979f, global1[_wgslsmith_index_u32(arg_1, 29u)]) - vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], -362f))))), vec2<i32>(0i, u_input.c.x), arg_0.a.x);
    var var_1 = vec3<bool>(!arg_2, false == arg_2, true);
    var var_2 = func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(reverseBits(u_input.a.x), 29u)])), _wgslsmith_f_op_f32(max(249f, var_0.b.x)), _wgslsmith_f_op_f32(max(var_0.c.x, global1[_wgslsmith_index_u32(~26243u, 29u)]))), 1u ^ u_input.b);
    var var_3 = _wgslsmith_add_u32(_wgslsmith_sub_u32(countOneBits(~(~0u)), ~(1u & u_input.a.x)), ~min(firstTrailingBit(1u), 4294967295u));
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-398f, 354f, -1183f, 1269f)))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(230f, global1[_wgslsmith_index_u32(arg_1, 29u)], _wgslsmith_f_op_f32(sign(283f)), _wgslsmith_f_op_f32(f32(-1f) * -1273f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(arg_1, 29u)], var_0.c.x, global1[_wgslsmith_index_u32(arg_1, 29u)], 365f))))));
    return var_1.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> vec2<bool> {
    global0 = any(select(vec4<bool>(true, true, true, true), vec4<bool>(func_3(func_2(vec3<f32>(601f, -412f, global1[_wgslsmith_index_u32(arg_0.x, 29u)]), u_input.b), arg_0.x | u_input.a.x, true), true, any(vec4<bool>(false, true, false, true)), !(arg_1 <= 1u)), any(vec4<bool>(true, true, true, true))));
    let var_0 = max(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 10014i), -firstLeadingBit(max(vec4<i32>(-21008i, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(2147483647i, u_input.c.x, 1i, -3366i)) | vec4<i32>(-1i, -34807i, u_input.c.x, 46978i)));
    var var_1 = func_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(arg_1, 29u)], global1[_wgslsmith_index_u32(u_input.a.x, 29u)], 188f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(93381u, 29u)], global1[_wgslsmith_index_u32(arg_1, 29u)], global1[_wgslsmith_index_u32(arg_1, 29u)]) * vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], global1[_wgslsmith_index_u32(arg_1, 29u)], 3030f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1205f, 907f, global1[_wgslsmith_index_u32(arg_0.x, 29u)]) * vec3<f32>(650f, global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(arg_1, 29u)])))))), _wgslsmith_mod_u32(~u_input.b, ~arg_0.x));
    global1 = array<f32, 29>();
    var var_2 = Struct_1(!select(vec3<bool>(u_input.b != arg_1, true, global1[_wgslsmith_index_u32(arg_1, 29u)] > global1[_wgslsmith_index_u32(1u, 29u)]), vec3<bool>(all(vec3<bool>(true, var_1.a.x, false)), any(vec4<bool>(var_1.a.x, false, true, var_1.a.x)), var_1.a.x), select(vec3<bool>(false, var_1.a.x, var_1.a.x), !vec3<bool>(var_1.a.x, false, false), !vec3<bool>(true, var_1.a.x, false))));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 29>();
    var var_0 = Struct_4(Struct_1(vec3<bool>(any(vec3<bool>(false, true, false)), true, (global1[_wgslsmith_index_u32(u_input.b, 29u)] < global1[_wgslsmith_index_u32(u_input.b, 29u)]) & true)));
    global1 = array<f32, 29>();
    global1 = array<f32, 29>();
    let var_1 = abs(-u_input.c);
    global0 = var_0.a.a.x;
    var var_2 = Struct_2(select(select(select(func_1(u_input.a, 1780u), !var_0.a.a.zx, func_2(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(u_input.b, 29u)]), u_input.b).a), var_0.a.a.xx, vec2<bool>(true, true)), !vec2<bool>(any(vec2<bool>(false, var_0.a.a.x)), all(vec3<bool>(true, false, var_0.a.a.x))), global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_div_u32(4294967295u, u_input.a.x)), 29u)] < global1[_wgslsmith_index_u32(max(u_input.a.x, _wgslsmith_mod_u32(2388u, u_input.b)), 29u)]));
    global0 = true;
    var var_3 = Struct_3(1i, vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -835f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1133f)) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 29u)]))))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1513f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-666f, 1000f) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 29u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(831f, -1255f)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1404f, global1[_wgslsmith_index_u32(u_input.b, 29u)])))))), vec2<i32>(u_input.c.x, i32(-1i) * -11101i), true);
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstLeadingBit(vec4<u32>(u_input.b, ~29039u, _wgslsmith_mod_u32(22573u, 35104u), 4294967295u << (0u % 32u)))), reverseBits(u_input.a.x), abs(_wgslsmith_dot_vec2_u32(firstTrailingBit(firstLeadingBit(u_input.a.zx)), abs(min(u_input.a.zx, vec2<u32>(u_input.a.x, 94642u))))), vec4<i32>(-15645i, ~(max(2147483647i, var_3.d.x) << (123620u % 32u)), -16039i, -(~(i32(-1i) * -2147483647i))), abs(_wgslsmith_div_vec3_u32(~u_input.a & (u_input.a >> (u_input.a % vec3<u32>(32u))), vec3<u32>(4294967295u, abs(3442u), 1u))));
}

