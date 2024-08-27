struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    return false;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<f32>) -> vec2<bool> {
    let var_0 = Struct_1(func_3(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false)), max(min(vec2<u32>(0u, 26597u), vec2<u32>(0u, 60817u)), vec2<u32>(1020u, 4294967295u)), Struct_1(50783i > arg_0.x, true, _wgslsmith_div_vec2_f32(arg_1.yx, vec2<f32>(-791f, -769f))), Struct_1(true, true, arg_1.wy)) && !(arg_1.x > _wgslsmith_f_op_f32(1007f * 1385f)), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.yy + arg_1.xy))) - _wgslsmith_f_op_vec2_f32(arg_1.xx + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.xy, vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)]))))));
    let var_1 = 1u;
    global0 = array<f32, 16>();
    global0 = array<f32, 16>();
    global0 = array<f32, 16>();
    return !select(select(vec2<bool>(28914u >= var_1, any(vec3<bool>(false, false, true))), select(select(vec2<bool>(true, var_0.a), vec2<bool>(true, var_0.b), vec2<bool>(true, true)), !vec2<bool>(var_0.b, true), !vec2<bool>(var_0.b, var_0.a)), vec2<bool>(true, global0[_wgslsmith_index_u32(var_1, 16u)] < 761f)), !select(select(vec2<bool>(var_0.b, false), vec2<bool>(var_0.a, true), vec2<bool>(var_0.a, var_0.b)), vec2<bool>(false, false), !vec2<bool>(var_0.a, false)), vec2<bool>(var_0.a, all(select(vec3<bool>(false, true, var_0.a), vec3<bool>(var_0.b, var_0.b, true), vec3<bool>(true, true, false)))));
}

fn func_1() -> vec3<bool> {
    var var_0 = select(!(!(all(vec4<bool>(true, true, false, true)) || false)), true, !(!(!select(false, false, false))));
    let var_1 = u_input.a.x;
    global0 = array<f32, 16>();
    var var_2 = any(select(!select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, false)), func_2(vec2<i32>(u_input.a.x, 2147483647i) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(43748u, 16u)], 2423f, 1031f, global0[_wgslsmith_index_u32(0u, 16u)])) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(13857u, 16u)], global0[_wgslsmith_index_u32(1935u, 16u)], 805f, -374f) + vec4<f32>(global0[_wgslsmith_index_u32(172u, 16u)], 263f, 1220f, global0[_wgslsmith_index_u32(1u, 16u)])))), vec2<bool>(!func_2(vec2<i32>(u_input.b.x, 1i), vec4<f32>(251f, global0[_wgslsmith_index_u32(1988u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)])).x, true)));
    var_0 = true;
    return !(!select(vec3<bool>(true, all(vec3<bool>(true, true, false)), any(vec4<bool>(true, true, true, false))), vec3<bool>(true, true, true), select(false, false, all(vec4<bool>(true, false, false, false)))));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = !select(!vec4<bool>(arg_2.x | arg_2.x, all(arg_2), all(arg_2), arg_2.x), select(!vec4<bool>(false, true, true, arg_1), select(vec4<bool>(true, arg_1, arg_1, false), select(vec4<bool>(true, arg_1, false, arg_2.x), vec4<bool>(arg_1, false, false, false), vec4<bool>(true, arg_2.x, arg_2.x, false)), !vec4<bool>(true, arg_2.x, arg_2.x, false)), !select(vec4<bool>(true, arg_2.x, true, arg_1), vec4<bool>(arg_1, true, false, false), vec4<bool>(arg_2.x, false, true, arg_1))), !((1u | arg_0) > _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 61313u), vec2<u32>(arg_0, 1u))));
    let var_1 = ~(max(vec2<u32>(0u, arg_0) ^ vec2<u32>(arg_0, arg_0), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(20799u, 17336u))) << (vec2<u32>(~28040u, ~6266u) % vec2<u32>(32u))) << (vec2<u32>(firstTrailingBit(arg_0) & (4294967295u & arg_0), arg_0) % vec2<u32>(32u));
    var var_2 = 0u;
    global0 = array<f32, 16>();
    var_0 = select(vec4<bool>(all(select(!vec4<bool>(true, false, var_0.x, false), vec4<bool>(arg_2.x, false, false, arg_2.x), !vec4<bool>(var_0.x, true, false, true))), !(!(arg_1 | false)), func_1().x, all(!select(var_0.zy, vec2<bool>(false, false), var_0.zw))), !(!select(!vec4<bool>(arg_2.x, true, true, var_0.x), !vec4<bool>(true, var_0.x, true, var_0.x), arg_1 || true)), !(!func_3(vec4<bool>(true, arg_1, false, var_0.x), ~vec2<u32>(4294967295u, 0u), Struct_1(false, false, vec2<f32>(196f, global0[_wgslsmith_index_u32(14643u, 16u)])), Struct_1(false, true, vec2<f32>(-2162f, global0[_wgslsmith_index_u32(arg_0, 16u)])))));
    return Struct_1(arg_2.x, false, vec2<f32>(-1318f, -1247f));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = u_input.a.x & _wgslsmith_dot_vec4_i32(max(min(vec4<i32>(0i, u_input.b.x, 2147483647i, u_input.b.x), ~vec4<i32>(u_input.a.x, 0i, -23838i, u_input.b.x)), -_wgslsmith_div_vec4_i32(vec4<i32>(8001i, -14675i, u_input.a.x, 2147483647i), vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, u_input.b.x))), -vec4<i32>(-4396i, u_input.b.x, u_input.a.x, 0i));
    global0 = array<f32, 16>();
    global0 = array<f32, 16>();
    let var_1 = 1u;
    let var_2 = arg_0;
    return Struct_1(true != arg_1, ~var_1 < ~0u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.c, var_2.c) + arg_0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(1u, any(vec4<bool>(true, true, true, true)), select(!func_1(), vec3<bool>(func_3(vec4<bool>(false, false, false, true), vec2<u32>(4294967295u, 107415u), Struct_1(false, false, vec2<f32>(global0[_wgslsmith_index_u32(74881u, 16u)], global0[_wgslsmith_index_u32(44182u, 16u)])), Struct_1(true, true, vec2<f32>(-778f, -1000f))), -20676i < u_input.a.x, any(vec2<bool>(true, false))), true)), true, ~firstLeadingBit(~max(vec3<u32>(26711u, 44556u, 4294967295u), vec3<u32>(1u, 1u, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 16u)]) * var_0.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1542f * global0[_wgslsmith_index_u32(1u, 16u)])), -u_input.a.x);
}

