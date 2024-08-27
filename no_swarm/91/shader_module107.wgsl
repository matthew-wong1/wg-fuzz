struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(false, 1u), Struct_2(true, 33516u), Struct_2(true, 10863u), Struct_2(false, 14808u), Struct_2(false, 80514u), Struct_2(true, 4294967295u), Struct_2(false, 24993u), Struct_2(false, 21026u), Struct_2(true, 711u), Struct_2(true, 4294967295u), Struct_2(false, 4294967295u), Struct_2(true, 66029u), Struct_2(false, 0u), Struct_2(false, 28411u), Struct_2(false, 1u), Struct_2(true, 77927u), Struct_2(false, 44067u), Struct_2(false, 51840u), Struct_2(false, 1u), Struct_2(true, 30644u), Struct_2(true, 20506u), Struct_2(false, 0u));

var<private> global2: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(abs(global2.a));
}

fn func_2() -> f32 {
    let var_0 = 1i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(func_3())) - -477f));
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    global2 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(534f * global0.x) + _wgslsmith_f_op_f32(func_2())))), _wgslsmith_f_op_f32(-global0.x), vec3<i32>(firstTrailingBit(u_input.d), firstLeadingBit(-1i), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, u_input.d), vec2<i32>(global2.c.x, 20812i)) & (global2.c.x & global2.c.x)) << (_wgslsmith_mult_vec3_u32(max(~global2.d, _wgslsmith_mult_vec3_u32(global2.d, vec3<u32>(global2.d.x, global2.d.x, global2.d.x))), (vec3<u32>(4294967295u, 29183u, global2.d.x) << (global2.d % vec3<u32>(32u))) | (global2.d & global2.d)) % vec3<u32>(32u)), ~vec3<u32>(~_wgslsmith_div_u32(77904u, 80264u), 4294967295u, min(4294967295u >> (global2.d.x % 32u), 1u)));
    let var_0 = global2.d.x;
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.xx;
    var var_1 = 15017u;
    var var_2 = 105f;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-1264f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b - global2.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b * 1373f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b * _wgslsmith_f_op_f32(1f * var_0.x))), global2.a);
    var var_3 = Struct_1(1000f, var_0.x, global2.c, global2.d);
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -493f), var_0.x);
    let var_5 = Struct_3(global1[_wgslsmith_index_u32(global2.d.x | ~4294967295u, 22u)], 0i);
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.x)), -752f);
    let var_6 = Struct_2(true | (-208f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(var_3.c)) * 1015f)), global2.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_6.b, var_5.a.b, var_5.a.b), vec3<u32>(40329u, var_5.a.b, var_6.b))), firstTrailingBit(29626u) << (4294967295u % 32u)), ~(~firstTrailingBit(vec4<i32>(global2.c.x, var_5.b, global2.c.x, var_5.b)) | select(_wgslsmith_sub_vec4_i32(vec4<i32>(-5854i, u_input.b, -16754i, u_input.b), vec4<i32>(-13577i, 1i, 1i, global2.c.x)), firstLeadingBit(vec4<i32>(-36488i, var_3.c.x, var_3.c.x, u_input.d)), vec4<bool>(false, false, var_5.a.a, true))), _wgslsmith_mod_u32(_wgslsmith_div_u32(~0u, abs(global2.d.x)), _wgslsmith_div_u32(92497u, var_3.d.x)));
}

