struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1414f, Struct_1(1i, -1528f, 53925u, false));

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(-14480i, -551f, 4294967295u, false), Struct_1(2147483647i, 244f, 0u, true), Struct_1(1i, -686f, 1u, false), Struct_1(0i, -1808f, 1u, true), Struct_1(2147483647i, -1000f, 25928u, false), Struct_1(-34435i, 263f, 1u, true), Struct_1(1i, -1255f, 30224u, false), Struct_1(-57832i, 669f, 58377u, false), Struct_1(-58957i, 1163f, 24248u, true), Struct_1(1i, -668f, 17506u, false), Struct_1(-1i, -687f, 53304u, true), Struct_1(1998i, -410f, 29302u, true), Struct_1(1i, 1030f, 1u, false), Struct_1(-63492i, -863f, 1u, true), Struct_1(-1i, 1000f, 4294967295u, false), Struct_1(1i, -1000f, 1u, true), Struct_1(-62095i, 1000f, 10422u, false), Struct_1(2147483647i, 908f, 37365u, true), Struct_1(-33304i, 821f, 0u, false), Struct_1(30778i, -260f, 18793u, true), Struct_1(-42818i, 501f, 34548u, false), Struct_1(-1i, 1139f, 17398u, true), Struct_1(43837i, 402f, 0u, true), Struct_1(-24631i, 309f, 0u, true));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<u32> {
    global1 = array<Struct_1, 24>();
    global0 = Struct_2(global0.a, Struct_1(_wgslsmith_clamp_i32(1i, global0.b.a, countOneBits(u_input.b & u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -221f), _wgslsmith_f_op_f32(global0.a * 272f)))), global0.b.c, true));
    let var_0 = countOneBits(u_input.c.x);
    return select(vec4<u32>(~u_input.c.x, abs(max(1u, 11149u)), ~firstLeadingBit(firstTrailingBit(3472u)), _wgslsmith_clamp_u32(reverseBits(_wgslsmith_clamp_u32(global0.b.c, 20485u, global0.b.c)), 5481u, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, ~4294967295u | ~u_input.c.x, u_input.c.x, ~(~0u)), ~reverseBits(~vec4<u32>(0u, 4294967295u, var_0, 15807u))), select(select(!vec4<bool>(true, global0.b.d, global0.b.d, global0.b.d), select(vec4<bool>(global0.b.d, true, global0.b.d, global0.b.d), !vec4<bool>(global0.b.d, global0.b.d, global0.b.d, false), global0.b.d), true), vec4<bool>(true, !any(vec4<bool>(false, global0.b.d, global0.b.d, global0.b.d)), global0.b.d, global0.b.d), global0.b.d));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> Struct_3 {
    var var_0 = ~vec3<i32>(_wgslsmith_sub_i32(~_wgslsmith_add_i32(global0.b.a, arg_2), 1i), i32(-1i) * -countOneBits(12150i), 68232i);
    global0 = Struct_2(_wgslsmith_f_op_f32(-arg_0.a), Struct_1(_wgslsmith_add_i32(arg_0.b.a, -64639i) | _wgslsmith_dot_vec2_i32(-u_input.a.xz, _wgslsmith_clamp_vec2_i32(u_input.a.xz, vec2<i32>(49963i, 2147483647i), vec2<i32>(31125i, 2147483647i))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.b.b)) * _wgslsmith_f_op_f32(sign(-1294f))))), _wgslsmith_sub_u32(~(~0u), global0.b.c), !(!global0.b.d && (true | arg_0.b.d))));
    var var_1 = -u_input.a.yzx;
    var_1 = -vec3<i32>(select(37951i, ~(-2147483647i) ^ _wgslsmith_add_i32(arg_1.a, arg_0.b.a), any(vec3<bool>(false, true, global0.b.d)) || arg_0.b.d), ~2147483647i, var_1.x);
    let var_2 = ~vec3<u32>(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(0u, arg_1.c, 34342u, arg_1.c)), func_3()), ~reverseBits(u_input.c.x), ~(_wgslsmith_dot_vec3_u32(u_input.c, u_input.c) & 0u));
    return Struct_3(arg_0, arg_0, arg_0.b);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_4, arg_3: Struct_1) -> i32 {
    global1 = array<Struct_1, 24>();
    let var_0 = -firstLeadingBit(u_input.a.zyx);
    var var_1 = func_2(func_2(arg_0.a, Struct_1(global0.b.a, global0.b.b, arg_0.c.c, !all(vec2<bool>(global0.b.d, global0.b.d))), i32(-1i) * -(~var_0.x)).a, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(arg_2.c, 4294967295u, 33913u ^ arg_0.b.b.c, _wgslsmith_dot_vec2_u32(vec2<u32>(29238u, global0.b.c), u_input.c.yx)), firstLeadingBit(~vec4<u32>(1u, arg_1.c, 1u, 0u))), abs(firstTrailingBit(vec4<u32>(arg_0.b.b.c, arg_1.c, arg_2.c, u_input.c.x)))), 24u)], _wgslsmith_add_i32(abs(~0i), var_0.x)).a;
    return _wgslsmith_mult_i32(firstLeadingBit(var_0.x), -select(~u_input.b, -24062i, select(false, var_1.b.d, true)));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_1) -> i32 {
    global1 = array<Struct_1, 24>();
    var var_0 = vec4<i32>(arg_2.a, u_input.a.x, -(~(~2147483647i)), ~func_4(func_2(Struct_2(183f, Struct_1(arg_2.a, arg_2.b, global0.b.c, false)), arg_2, ~global0.b.a), Struct_4(-global0.b.a, min(arg_2.a, 19721i), ~43862u), Struct_4(firstTrailingBit(global0.b.a), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.a, global0.b.a), vec2<i32>(-6202i, u_input.b)), ~global0.b.c), Struct_1(max(arg_2.a, u_input.b), global0.a, _wgslsmith_add_u32(89135u, 38368u), true)));
    var_0 = u_input.a;
    let var_1 = vec4<u32>(0u, ~firstTrailingBit(u_input.c.x), 15437u, _wgslsmith_dot_vec3_u32(~u_input.c, u_input.c)) | ~vec4<u32>(global0.b.c, global0.b.c, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, arg_2.c, 4294967295u, arg_2.c), vec4<u32>(4294967295u, u_input.c.x, 9861u, 36767u)), u_input.c.x), arg_1);
    var var_2 = abs(u_input.a.www);
    return reverseBits(-2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    global1 = array<Struct_1, 24>();
    var var_1 = vec2<i32>(_wgslsmith_mult_i32(u_input.a.x, _wgslsmith_mult_i32(min(func_1(vec3<f32>(global0.a, -202f, -259f), 4294967295u, Struct_1(global0.b.a, 238f, global0.b.c, global0.b.d)), -890i), ~func_4(Struct_3(Struct_2(1049f, global0.b), Struct_2(global0.a, global1[_wgslsmith_index_u32(1u, 24u)]), Struct_1(2904i, global0.a, u_input.c.x, global0.b.d)), Struct_4(-2147483647i, u_input.a.x, 4294967295u), Struct_4(-1i, u_input.b, 59871u), global1[_wgslsmith_index_u32(global0.b.c, 24u)]))), 16057i);
    var var_2 = firstTrailingBit(~u_input.c.xx);
    var var_3 = !(!any(select(select(vec2<bool>(global0.b.d, true), vec2<bool>(true, false), var_0), vec2<bool>(true, true), true)));
    var_3 = global0.b.d;
    global1 = array<Struct_1, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-176f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -168f) + -131f), _wgslsmith_f_op_f32(floor(265f)), global0.a))));
}

