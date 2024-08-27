struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_2) -> vec2<bool> {
    var var_0 = arg_2.a.x;
    let var_1 = Struct_2(arg_0.zy, abs(arg_2.b));
    var var_2 = vec3<u32>(arg_1, 4294967295u, 1u);
    var var_3 = global0[_wgslsmith_index_u32(u_input.b, 4u)];
    global0 = array<Struct_1, 4>();
    return !vec2<bool>(all(select(var_1.a, var_3.c, false)) | any(vec4<bool>(var_3.c.x, false, true, false)), true);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: i32, arg_3: f32) -> bool {
    global0 = array<Struct_1, 4>();
    var var_0 = Struct_2(select(vec2<bool>(_wgslsmith_f_op_f32(-2393f * 294f) <= _wgslsmith_f_op_f32(round(-100f)), false), vec2<bool>(arg_0.c.x, all(select(vec3<bool>(true, arg_0.c.x, true), vec3<bool>(true, arg_0.c.x, false), true))), select(func_3(vec3<bool>(arg_0.c.x, arg_0.c.x, false), u_input.d, Struct_2(vec2<bool>(true, false), vec4<i32>(-1i, arg_2, -33596i, arg_2))), func_3(select(vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x), vec3<bool>(arg_0.c.x, arg_0.c.x, false), arg_0.c.x), _wgslsmith_sub_u32(u_input.b, 89926u), Struct_2(vec2<bool>(false, arg_0.c.x), vec4<i32>(arg_0.d, arg_2, 2147483647i, u_input.c))), vec2<bool>(arg_0.c.x & arg_0.c.x, select(arg_0.c.x, arg_0.c.x, true)))), ~(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.d, 2147483647i, 0i, 1i), vec4<i32>(-29712i, u_input.c, arg_2, -1i)) | -vec4<i32>(u_input.a, arg_2, -1i, u_input.a)) >> (vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(27366u, u_input.b), arg_0.b), abs(u_input.d) & ~7223u, u_input.d, ~countOneBits(arg_0.b.x)) % vec4<u32>(32u)));
    var var_1 = ~(~u_input.a);
    var_1 = var_0.b.x | (_wgslsmith_dot_vec3_i32(var_0.b.xww, _wgslsmith_add_vec3_i32(var_0.b.yzx, var_0.b.wzy)) & 0i);
    var var_2 = arg_1;
    return true;
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: vec4<u32>, arg_3: vec3<f32>) -> u32 {
    var var_0 = select(select(vec4<bool>(select(arg_0.a.x, all(vec2<bool>(true, arg_0.a.x)), arg_0.a.x), !all(vec3<bool>(true, arg_0.a.x, arg_0.a.x)), !arg_0.a.x, (-1i | u_input.c) != -arg_1), vec4<bool>(func_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, 69136u, u_input.d, u_input.d), vec4<u32>(0u, 9028u, arg_2.x, 1u)), 4u)], arg_3.xz, i32(-1i) * -31006i, arg_3.x), true, arg_0.a.x | all(vec3<bool>(arg_0.a.x, false, arg_0.a.x)), select(arg_1 != 2147483647i, true, !arg_0.a.x)), !select(select(vec4<bool>(arg_0.a.x, false, false, arg_0.a.x), vec4<bool>(arg_0.a.x, false, false, false), false), vec4<bool>(true, false, arg_0.a.x, true), !vec4<bool>(arg_0.a.x, arg_0.a.x, false, arg_0.a.x))), vec4<bool>(arg_0.a.x, arg_0.a.x || all(!vec3<bool>(false, arg_0.a.x, true)), all(vec4<bool>(false, any(vec3<bool>(arg_0.a.x, true, false)), true, arg_0.a.x || arg_0.a.x)), arg_0.a.x), select(!select(!vec4<bool>(false, arg_0.a.x, arg_0.a.x, true), !vec4<bool>(true, false, arg_0.a.x, arg_0.a.x), vec4<bool>(true, true, true, true)), vec4<bool>(true, arg_0.a.x, 34772u >= select(u_input.d, arg_2.x, false), -1016f > arg_3.x), select(select(vec4<bool>(arg_0.a.x, true, arg_0.a.x, arg_0.a.x), !vec4<bool>(arg_0.a.x, arg_0.a.x, true, false), select(vec4<bool>(true, false, arg_0.a.x, false), vec4<bool>(true, true, true, true), arg_0.a.x)), vec4<bool>(func_2(global0[_wgslsmith_index_u32(u_input.b, 4u)], vec2<f32>(153f, arg_3.x), arg_1, arg_3.x), true, true, true), select(vec4<bool>(false, false, true, arg_0.a.x), vec4<bool>(true, arg_0.a.x, arg_0.a.x, arg_0.a.x), all(vec4<bool>(arg_0.a.x, true, false, false))))));
    var_0 = select(select(!select(!vec4<bool>(arg_0.a.x, true, true, false), !vec4<bool>(arg_0.a.x, false, true, arg_0.a.x), func_2(global0[_wgslsmith_index_u32(26147u, 4u)], vec2<f32>(239f, arg_3.x), arg_0.b.x, 1309f)), !(!(!vec4<bool>(arg_0.a.x, var_0.x, true, true))), select(vec4<bool>(var_0.x, false, false, all(vec4<bool>(var_0.x, true, false, var_0.x))), !(!vec4<bool>(true, false, var_0.x, false)), select(select(vec4<bool>(true, true, false, var_0.x), vec4<bool>(arg_0.a.x, true, true, true), true), !vec4<bool>(true, false, arg_0.a.x, var_0.x), select(vec4<bool>(false, arg_0.a.x, var_0.x, var_0.x), vec4<bool>(true, true, var_0.x, true), vec4<bool>(var_0.x, false, arg_0.a.x, var_0.x))))), select(select(!select(vec4<bool>(arg_0.a.x, true, var_0.x, arg_0.a.x), vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(arg_0.a.x, arg_0.a.x, false, false)), !select(vec4<bool>(false, arg_0.a.x, false, var_0.x), vec4<bool>(var_0.x, true, arg_0.a.x, false), false), vec4<bool>(false, var_0.x, true, true)), vec4<bool>(all(var_0.wx) & any(var_0.yxw), !select(true, var_0.x, true), var_0.x, !all(var_0.wy)), vec4<bool>(all(!vec4<bool>(false, true, arg_0.a.x, true)), false, !(!var_0.x), true)), arg_0.a.x);
    global0 = array<Struct_1, 4>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(143f)));
    var var_2 = firstLeadingBit(~arg_2.yy);
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, 1351f, ~func_1(Struct_2(select(vec2<bool>(true, var_0), vec2<bool>(true, false), false), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.c, -2147483647i, -2147483647i), vec4<i32>(u_input.a, 1i, u_input.c, 2147483647i))), _wgslsmith_add_i32(1i, 10803i), vec4<u32>(u_input.b, ~u_input.d, u_input.b, ~u_input.b), vec3<f32>(_wgslsmith_f_op_f32(662f + -1052f), _wgslsmith_f_op_f32(112f - -1297f), -1349f)), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -387f))))), -625f));
}

