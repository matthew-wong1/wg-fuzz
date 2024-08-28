struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 2>;

var<private> global1: vec3<i32> = vec3<i32>(1i, -9209i, -7795i);

var<private> global2: array<Struct_1, 17>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool) -> vec4<i32> {
    global2 = array<Struct_1, 17>();
    global1 = select(vec3<i32>(1i, 1i, 1i), ~u_input.c, true);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1011f - 196f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(895f * 542f) + _wgslsmith_f_op_f32(step(-1307f, -405f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-716f, -101f, false))))), 22878u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1206f - 626f) + _wgslsmith_f_op_f32(ceil(-118f)))));
    var var_1 = _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.a, 29296i), max(min(u_input.a, 0i), _wgslsmith_add_i32(-select(u_input.b, 2147483647i, arg_0), reverseBits(-2884i))));
    var var_2 = var_0;
    return select(_wgslsmith_sub_vec4_i32(firstLeadingBit(countOneBits(~vec4<i32>(global1.x, -23874i, -19841i, global1.x))), select(abs(vec4<i32>(global1.x, 1i, 2147483647i, u_input.c.x) ^ vec4<i32>(1i, 7821i, global1.x, -15142i)), vec4<i32>(-1i) * -vec4<i32>(global1.x, u_input.a, global1.x, 9097i), !arg_0)), vec4<i32>(reverseBits(57463i), ~global1.x, global1.x, global1.x), global0[_wgslsmith_index_u32(var_2.b, 2u)]);
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: vec4<bool>) -> vec3<bool> {
    global2 = array<Struct_1, 17>();
    var var_0 = 2402u;
    var var_1 = ~_wgslsmith_clamp_vec4_i32(select(_wgslsmith_mult_vec4_i32(vec4<i32>(19554i, global1.x, -37983i, global1.x), vec4<i32>(u_input.c.x, 23739i, -2147483647i, u_input.b)), func_3(arg_2.x), select(vec4<bool>(true, arg_2.x, false, arg_0.x), vec4<bool>(true, arg_0.x, false, arg_0.x), false)) | select(firstTrailingBit(vec4<i32>(u_input.a, global1.x, u_input.c.x, u_input.a)), ~vec4<i32>(9019i, u_input.a, global1.x, global1.x), global0[_wgslsmith_index_u32(~1u, 2u)]), reverseBits(abs(-vec4<i32>(global1.x, 7183i, 0i, 2147483647i))), vec4<i32>(-1i) * -(~vec4<i32>(11029i, 0i, 39916i, global1.x)));
    let var_2 = ~(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 22659u, 48767u, 0u), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)) ^ vec4<u32>(1u, 1u, 1u, 1u));
    var_1 = vec4<i32>(-1i, func_3(true).x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, ~_wgslsmith_clamp_i32(13227i, u_input.a, -28694i), 31469i, _wgslsmith_add_i32(_wgslsmith_mod_i32(global1.x, -49896i), var_1.x >> (79175u % 32u))), ~(vec4<i32>(global1.x, 50820i, global1.x, var_1.x) << (reverseBits(vec4<u32>(1u, var_2.x, var_2.x, var_2.x)) % vec4<u32>(32u)))), -2795i);
    return select(vec3<bool>(any(vec2<bool>(any(arg_2.yzy), !arg_0.x)), false, arg_2.x), select(!select(vec3<bool>(arg_2.x, arg_2.x, arg_2.x), select(vec3<bool>(true, arg_2.x, arg_0.x), vec3<bool>(true, arg_0.x, true), arg_0), vec3<bool>(arg_0.x, true, false)), vec3<bool>(any(arg_0) & (arg_0.x & true), any(global0[_wgslsmith_index_u32(16409u >> (var_2.x % 32u), 2u)]), any(vec3<bool>(arg_0.x, false, arg_0.x))), !select(vec3<bool>(true, arg_2.x, false), !arg_0, arg_2.wxz)), all(vec4<bool>(true, false, select(global1.x <= 69592i, arg_2.x, false), true)));
}

fn func_1(arg_0: vec2<u32>) -> vec2<bool> {
    global1 = vec3<i32>(_wgslsmith_div_i32(-24748i, 22550i), u_input.b, global1.x);
    global0 = array<vec4<bool>, 2>();
    global0 = array<vec4<bool>, 2>();
    let var_0 = select(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), func_2(vec3<bool>(false, true, false), 1281f, global0[_wgslsmith_index_u32(0u, 2u)])), true), vec3<bool>(false, any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), true), !(!all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)))));
    var var_1 = i32(-1i) * -48189i;
    return vec2<bool>((~(0u >> (arg_0.x % 32u)) << (arg_0.x % 32u)) >= arg_0.x, !all(vec3<bool>(all(var_0.yy), any(global0[_wgslsmith_index_u32(arg_0.x, 2u)]), func_2(var_0, -641f, vec4<bool>(var_0.x, var_0.x, true, var_0.x)).x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(select(~(~(~vec2<u32>(1u, 1u))), ~vec2<u32>(0u, ~1u), vec2<bool>(all(vec3<bool>(false, false, false)), !select(true, false, true))));
    let var_1 = true;
    global2 = array<Struct_1, 17>();
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~1u), 17u)];
    global0 = array<vec4<bool>, 2>();
    let var_3 = var_2.a;
    var var_4 = vec3<i32>(-(~global1.x), 1i, global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(u_input.c, ~vec3<i32>(1i, global1.x, 1i)));
}

