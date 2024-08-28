struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(-40174i, vec2<i32>(2147483647i, 2290i)), Struct_1(1i, vec2<i32>(-6422i, -19794i)), Struct_1(2147483647i, vec2<i32>(25778i, -1i)), Struct_1(2147483647i, vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(0i, vec2<i32>(1i, 2147483647i)), Struct_1(1i, vec2<i32>(0i, 1i)), Struct_1(i32(-2147483648), vec2<i32>(0i, -55999i)), Struct_1(-1167i, vec2<i32>(-11909i, -1i)), Struct_1(-13182i, vec2<i32>(-18882i, 9185i)), Struct_1(2147483647i, vec2<i32>(1159i, 0i)), Struct_1(-23481i, vec2<i32>(15050i, i32(-2147483648))), Struct_1(-55846i, vec2<i32>(2147483647i, 23436i)), Struct_1(1i, vec2<i32>(2147483647i, 2147483647i)), Struct_1(1i, vec2<i32>(1i, 51080i)), Struct_1(12276i, vec2<i32>(2147483647i, 60786i)), Struct_1(2147483647i, vec2<i32>(0i, i32(-2147483648))), Struct_1(2147483647i, vec2<i32>(1i, i32(-2147483648))), Struct_1(i32(-2147483648), vec2<i32>(-16935i, 3466i)), Struct_1(24873i, vec2<i32>(29465i, 2147483647i)), Struct_1(0i, vec2<i32>(32417i, 1i)), Struct_1(59724i, vec2<i32>(9427i, 0i)), Struct_1(5086i, vec2<i32>(-18324i, 15931i)), Struct_1(-1i, vec2<i32>(-47672i, -10093i)), Struct_1(-16277i, vec2<i32>(-4146i, 0i)), Struct_1(i32(-2147483648), vec2<i32>(-14223i, -10875i)), Struct_1(-32722i, vec2<i32>(-15331i, i32(-2147483648))), Struct_1(31123i, vec2<i32>(-1i, -1i)), Struct_1(0i, vec2<i32>(25722i, 2147483647i)));

var<private> global2: bool = true;

var<private> global3: array<i32, 3>;

var<private> global4: array<vec4<i32>, 11>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> u32 {
    return min(83903u, max(u_input.b.x, u_input.b.x));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = ~u_input.b;
    return (~0u | firstTrailingBit(func_2())) | var_0.x;
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -777f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -619f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1024f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -732f)))));
    var_0 = _wgslsmith_f_op_f32(-159f * _wgslsmith_f_op_f32(ceil(-245f)));
    global0 = abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(min(u_input.b.x, 41311u), arg_1.x ^ arg_1.x), u_input.c.zy));
    var var_1 = u_input.c.yx;
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-435f))), -1128f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1295f - -591f) - _wgslsmith_f_op_f32(249f * 563f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(541f, _wgslsmith_f_op_f32(floor(936f)), -979f)) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2325f, -1410f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -782f))), 148f)));
    return Struct_1(arg_3.a, ~vec2<i32>(select(31572i, arg_2, true), 66854i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_3(true, _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(func_1(vec2<i32>(-2147483647i, u_input.e.x), Struct_1(-2147483647i, vec2<i32>(2147483647i, global3[_wgslsmith_index_u32(u_input.b.x, 3u)])), global1[_wgslsmith_index_u32(0u, 28u)]), ~u_input.c.x), 104352u, u_input.c.x, func_1(vec2<i32>(0i, 0i), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, u_input.c.x), 28u)], Struct_1(global3[_wgslsmith_index_u32(25815u, 3u)], u_input.e))), vec4<u32>(_wgslsmith_mult_u32(firstLeadingBit(87477u), func_2()), 16271u, ~u_input.b.x, u_input.b.x)), -109200i, Struct_1(-28375i, _wgslsmith_div_vec2_i32(vec2<i32>(-559i, global3[_wgslsmith_index_u32(0u, 3u)]) | vec2<i32>(-11840i, -134i), vec2<i32>(global3[_wgslsmith_index_u32(65193u, 3u)], ~18301i))));
    global2 = !select(true, any(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), true)), true);
    global3 = array<i32, 3>();
    global3 = array<i32, 3>();
    let var_1 = vec4<bool>(any(!select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), vec3<bool>(false, true, true), vec3<bool>(true, true, false))), true, true & any(!select(vec2<bool>(false, false), vec2<bool>(true, false), false)), all(vec2<bool>(true, true)) | true);
    var var_2 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, -1118f);
}

