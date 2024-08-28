struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: vec4<u32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(true, true, false, true, false, false, true, false, false, false, true, false, true, false, false, false, false, true, true, true, false, false, true);

var<private> global1: array<vec2<f32>, 8> = array<vec2<f32>, 8>(vec2<f32>(-294f, 1284f), vec2<f32>(1669f, 1000f), vec2<f32>(686f, 1256f), vec2<f32>(-292f, -236f), vec2<f32>(-582f, -525f), vec2<f32>(-1101f, 932f), vec2<f32>(447f, 1315f), vec2<f32>(1203f, -1827f));

var<private> global2: vec3<u32> = vec3<u32>(13937u, 2069u, 13970u);

var<private> global3: array<Struct_2, 4>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> bool {
    return global0[_wgslsmith_index_u32(global2.x, 23u)];
}

fn func_2(arg_0: vec3<f32>, arg_1: bool) -> u32 {
    global0 = array<bool, 23>();
    var var_0 = Struct_3(global3[_wgslsmith_index_u32(~1u, 4u)], select(select(select(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(global2.x, 23u)]), vec3<bool>(arg_1, true, false), vec3<bool>(global0[_wgslsmith_index_u32(20818u, 23u)], arg_1, true)), select(select(vec3<bool>(true, true, arg_1), vec3<bool>(global0[_wgslsmith_index_u32(global2.x, 23u)], false, false), vec3<bool>(true, false, arg_1)), select(vec3<bool>(false, arg_1, true), vec3<bool>(false, global0[_wgslsmith_index_u32(global2.x, 23u)], false), vec3<bool>(global0[_wgslsmith_index_u32(46906u, 23u)], false, false)), true), !vec3<bool>(arg_1, true, false)), !(!(!vec3<bool>(arg_1, true, true))), vec3<bool>(true, func_3(), true)), _wgslsmith_mod_i32(min(countOneBits(~0i), u_input.a), u_input.a));
    var var_1 = all(select(var_0.b.xx, var_0.b.zy, !(!(arg_1 | arg_1))));
    let var_2 = abs(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, global2.x, global2.x) ^ (_wgslsmith_add_vec3_u32(vec3<u32>(62137u, global2.x, 0u), vec3<u32>(global2.x, global2.x, global2.x)) >> (firstLeadingBit(vec3<u32>(global2.x, global2.x, 0u)) % vec3<u32>(32u))), ~(~(~vec3<u32>(global2.x, global2.x, global2.x)))));
    global3 = array<Struct_2, 4>();
    return var_2;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<bool>) -> u32 {
    global3 = array<Struct_2, 4>();
    return firstLeadingBit(func_2(arg_0.xyx, !(!(global2.x != 38629u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(countOneBits(51928u), Struct_3(global3[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-673f, -2737f, 1991f, -1296f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1188f, 575f, 248f, -1359f))), !(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(global2.x, 23u)], global0[_wgslsmith_index_u32(34492u, 23u)]))), 4u)], select(select(select(vec3<bool>(true, true, true), vec3<bool>(global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(54826u, 23u)]), false), !vec3<bool>(global0[_wgslsmith_index_u32(global2.x, 23u)], global0[_wgslsmith_index_u32(60376u, 23u)], true), true), vec3<bool>(2147483647i < u_input.a, false, global0[_wgslsmith_index_u32(4294967295u, 23u)]), true), abs(-u_input.a)), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global2.x, 0u), vec3<u32>(4294967295u, 1u, 4294967295u)), abs(9837u), _wgslsmith_dot_vec4_u32(vec4<u32>(32375u, global2.x, global2.x, global2.x), vec4<u32>(1u, 81286u, global2.x, 4294967295u)), _wgslsmith_add_u32(105607u, global2.x)) | ~abs(vec4<u32>(global2.x, global2.x, 60385u, 48908u)), abs(~vec4<u32>(global2.x, global2.x, global2.x, global2.x))), 1i);
    var var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(global2.x, countOneBits(_wgslsmith_dot_vec4_u32(select(vec4<u32>(global2.x, 37948u, 1u, global2.x), vec4<u32>(var_0.c.x, global2.x, global2.x, global2.x), global0[_wgslsmith_index_u32(var_0.a, 23u)]), vec4<u32>(4294967295u, 75590u, var_0.a, var_0.a))), 1u), var_0.c.yzy);
    global0 = array<bool, 23>();
    let var_2 = firstTrailingBit(vec2<i32>(-1i, 1i));
    global0 = array<bool, 23>();
    var var_3 = all(!(!select(select(vec4<bool>(true, var_0.b.b.x, var_0.b.b.x, true), vec4<bool>(false, global0[_wgslsmith_index_u32(2217u, 23u)], true, global0[_wgslsmith_index_u32(0u, 23u)]), var_0.b.b.x), vec4<bool>(global0[_wgslsmith_index_u32(var_1.x, 23u)], var_0.b.b.x, false, true), global2.x > global2.x)));
    global3 = array<Struct_2, 4>();
    var var_4 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-2563i, var_2.x, firstTrailingBit(2147483647i), var_0.b.a.a.a) << (abs(vec4<u32>(var_1.x ^ var_0.c.x, _wgslsmith_dot_vec3_u32(var_0.c.ywz, vec3<u32>(1u, 7274u, 17536u)), 1u ^ var_0.c.x, var_0.c.x)) % vec4<u32>(32u)));
}

