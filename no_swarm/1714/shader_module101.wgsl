struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7> = array<i32, 7>(-8255i, 2147483647i, 2147483647i, 20694i, 11207i, -3638i, 5157i);

var<private> global1: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(376f, 0i), Struct_2(-1460f, 1i), Struct_2(-658f, 68792i), Struct_2(-2211f, 0i), Struct_2(-484f, -14756i), Struct_2(-1076f, 29867i), Struct_2(1090f, 0i), Struct_2(1109f, -20199i), Struct_2(1906f, 2147483647i), Struct_2(1335f, -54358i), Struct_2(1000f, 8036i), Struct_2(-543f, -5866i), Struct_2(-1066f, -44669i), Struct_2(-1782f, i32(-2147483648)), Struct_2(-2519f, 603i), Struct_2(1000f, -9663i), Struct_2(-1071f, 0i), Struct_2(1053f, 26676i), Struct_2(1668f, 3663i), Struct_2(-290f, -12849i), Struct_2(-1062f, 71139i), Struct_2(-1698f, 6760i), Struct_2(1828f, 39553i), Struct_2(-732f, 5913i), Struct_2(-702f, 2147483647i), Struct_2(363f, -1i), Struct_2(-1000f, 40177i), Struct_2(1273f, 2147483647i), Struct_2(290f, 30073i), Struct_2(-228f, -1i), Struct_2(203f, 2147483647i), Struct_2(345f, 0i));

var<private> global2: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global3: array<Struct_1, 18>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> bool {
    global0 = array<i32, 7>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(f32(-1f) * -1196f)), _wgslsmith_dot_vec2_i32(-(~vec2<i32>(1i, 1i)), firstLeadingBit(~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, -16467i), vec2<i32>(arg_0.b, u_input.c)))));
    var var_1 = vec2<i32>(53i, max(_wgslsmith_mult_i32(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c, u_input.c, var_0.b), vec4<i32>(-18540i, 0i, 18605i, 1i))), (arg_0.b >> (u_input.e.x % 32u)) | (arg_0.b | 0i)), 0i));
    global0 = array<i32, 7>();
    let var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(155f, var_0.a)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, 917f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.a, var_0.a))), vec2<f32>(-292f, var_0.a))), vec2<f32>(-345f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0.a)), -788f)), true)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, -1376f) * vec2<f32>(-801f, -730f))) * vec2<f32>(584f, -354f))))));
    return any(vec2<bool>((0u >= ~u_input.d.x) != all(select(vec2<bool>(true, true), global2.xw, global2.zy)), true));
}

fn func_2() -> vec2<u32> {
    global1 = array<Struct_2, 32>();
    let var_0 = !all(vec4<bool>(true, all(vec4<bool>(false, false, true, global2.x)), global2.x, !(u_input.c <= 4763i)));
    let var_1 = !global2.zxx;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(583f * 403f)))), 2147483647i);
    var var_3 = select(3300u < select(1u, firstLeadingBit(48044u), var_0), global2.x, true) && (any(vec3<bool>(var_1.x & global2.x, var_1.x || false, true)) | func_3(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.d, u_input.d), 32u)], _wgslsmith_f_op_f32(sign(796f)) <= 909f));
    return u_input.d.xz;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: bool, arg_3: Struct_2) -> bool {
    let var_0 = vec2<u32>(1u, ~4294967295u) & (func_2() & (~vec2<u32>(u_input.d.x, u_input.a.x) ^ ~vec2<u32>(29u, u_input.a.x)));
    global1 = array<Struct_2, 32>();
    let var_1 = _wgslsmith_f_op_f32(trunc(arg_3.a));
    let var_2 = arg_1.xx;
    global0 = array<i32, 7>();
    return false;
}

fn func_4(arg_0: vec2<f32>, arg_1: bool) -> u32 {
    var var_0 = ~25386u;
    var var_1 = u_input.d.x;
    global0 = array<i32, 7>();
    let var_2 = global3[_wgslsmith_index_u32(u_input.d.x, 18u)];
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(min(u_input.e.yyx, countOneBits(u_input.d)), ((vec3<u32>(0u, 1820u, 52192u) | vec3<u32>(u_input.e.x, 25753u, u_input.b)) | u_input.d) >> (~vec3<u32>(19611u, 1u, u_input.a.x) % vec3<u32>(32u))), 32u)];
    return select(~u_input.d.x, u_input.e.x, !all(global2.xwz));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !select(!(!vec4<bool>(global2.x, false, global2.x, global2.x)), vec4<bool>(global2.x, false, true, any(vec3<bool>(global2.x, false, false))), vec4<bool>(any(!vec3<bool>(global2.x, true, true)), global2.x, global2.x, all(!vec4<bool>(global2.x, global2.x, true, true))));
    let var_0 = abs(~_wgslsmith_mod_vec3_i32(~vec3<i32>(22844i, -16765i, -1i), firstTrailingBit(vec3<i32>(-13711i, u_input.c, 2147483647i)))) & ~abs(vec3<i32>(select(-2147483647i, 2561i, global2.x), -1i, min(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], u_input.c)));
    global3 = array<Struct_1, 18>();
    var var_1 = select(u_input.e.yxz, ~u_input.e.wwy, false);
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1552f, _wgslsmith_f_op_f32(785f - 1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-236f, 277f, -804f, -1407f), vec4<f32>(383f, 1427f, 1237f, 446f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(617f, -1051f, 1263f, 399f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, _wgslsmith_f_op_f32(exp2(var_2.x)), _wgslsmith_mult_i32(u_input.c, global0[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.yx)), func_1(!vec4<bool>(false, global2.x, false, false), abs(var_0), 101f != var_2.x, Struct_2(var_2.x, -1i))), 7u)]));
}

