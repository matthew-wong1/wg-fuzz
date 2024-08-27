struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: Struct_2,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec3<f32>;

var<private> global2: array<vec3<f32>, 19>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3) -> vec2<i32> {
    let var_0 = Struct_3(vec4<i32>(-2147483647i, _wgslsmith_div_i32(15187i, -10786i), 51849i, i32(-1i) * -u_input.b.x), -abs(-_wgslsmith_sub_vec2_i32(vec2<i32>(11851i, u_input.b.x), u_input.b.zw)), arg_0.e, (7729u << (_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(arg_0.c.c.zyy, arg_0.e.c.zzx), ~vec3<u32>(51332u, 37809u, arg_0.e.a.a)) % 32u)) < arg_0.c.c.x, arg_0.c);
    var var_1 = Struct_3(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.b.x, var_0.a.x, -14968i, -2147483647i), u_input.b | u_input.b, max(u_input.b, vec4<i32>(var_0.b.x, 25029i, u_input.b.x, 0i))) >> (reverseBits(vec4<u32>(var_0.c.b.a, arg_0.e.b.a, var_0.e.c.x, arg_0.e.a.a)) % vec4<u32>(32u)), -(var_0.a ^ var_0.a) ^ (u_input.b << (vec4<u32>(var_0.c.a.a, u_input.c, arg_0.c.b.a, u_input.a.x) % vec4<u32>(32u)))), -var_0.a.yy, Struct_2(var_0.e.a, Struct_1(abs(4294967295u), var_0.d, true), vec4<u32>(u_input.c, _wgslsmith_div_u32(u_input.a.x, var_0.e.c.x), 37328u | arg_0.e.c.x, 116580u >> (u_input.a.x % 32u)) | ~select(var_0.e.c, vec4<u32>(22800u, 11222u, 1u, arg_0.c.a.a), arg_0.c.b.b), reverseBits(~60789u) <= ~_wgslsmith_div_u32(4294967295u, arg_0.c.a.a), false), ~(-var_0.a.x) > arg_0.b.x, arg_0.e);
    let var_2 = !select(vec4<bool>(all(select(vec4<bool>(var_1.c.d, false, true, false), vec4<bool>(var_0.c.e, var_0.d, false, true), false)), var_0.d, any(!vec3<bool>(false, var_0.c.b.c, false)), !arg_0.c.e), vec4<bool>(all(!vec4<bool>(true, false, var_0.e.b.b, false)), !(global1.x >= 479f), var_0.c.a.c, false), select(select(vec4<bool>(false, true, var_0.e.a.b, true), !vec4<bool>(arg_0.e.e, false, true, true), vec4<bool>(arg_0.e.d, arg_0.e.a.b, var_0.c.b.c, arg_0.e.d)), select(vec4<bool>(false, false, false, var_0.c.d), select(vec4<bool>(true, true, false, var_0.e.b.c), vec4<bool>(var_1.d, false, arg_0.c.a.c, true), var_1.c.e), !vec4<bool>(false, false, var_1.e.e, false)), true));
    var var_3 = var_1.a.x;
    var var_4 = var_1.c.b;
    return countOneBits(vec2<i32>(1i, firstLeadingBit(_wgslsmith_add_i32(arg_0.b.x, 0i)) >> (~_wgslsmith_mult_u32(var_0.e.a.a, 1u) % 32u)));
}

fn func_2(arg_0: Struct_2) -> vec3<f32> {
    var var_0 = _wgslsmith_div_vec2_i32(u_input.b.xz, func_3(Struct_3(~vec4<i32>(1i, 27735i, -2147483647i, 1i), vec2<i32>(2147483647i, u_input.b.x) ^ vec2<i32>(u_input.b.x, 23462i), arg_0, all(vec3<bool>(arg_0.b.c, arg_0.e, arg_0.e)), arg_0))) ^ vec2<i32>(-2147483647i, -2147483647i);
    let var_1 = global1.x;
    global1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1107f, -345f, global1.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1430f * -1000f), 285f, -614f) + global2[_wgslsmith_index_u32(u_input.c, 19u)]), vec3<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + -161f)), global1.x))));
    let var_2 = -_wgslsmith_mod_i32(var_0.x, 2147483647i);
    let var_3 = arg_0.a;
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2050f))))), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1088f))))));
}

fn func_1(arg_0: u32, arg_1: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_2(arg_1.c));
    var_0 = global2[_wgslsmith_index_u32(u_input.a.x | arg_0, 19u)];
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-162f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2(Struct_2(Struct_1(4294967295u, arg_1.d, arg_1.d), arg_1.e.a, arg_1.e.c, arg_1.e.b.c, arg_1.d))).x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1326f, -1029f)))), true)));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-748f, var_0.x)), 387f)), -698f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_2(arg_1.c)).x + _wgslsmith_f_op_f32(abs(global1.x))))) - global1.x));
    global1 = _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(~arg_0, 19u)]);
    return arg_1.e.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1790i;
    global2 = array<vec3<f32>, 19>();
    let var_0 = 31119u != _wgslsmith_mult_u32(_wgslsmith_add_u32(~func_1(14121u, Struct_3(vec4<i32>(-2147483647i, 0i, 16196i, u_input.b.x), u_input.b.wx, Struct_2(Struct_1(u_input.a.x, true, false), Struct_1(61747u, false, false), vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.c), true, false), true, Struct_2(Struct_1(u_input.a.x, false, false), Struct_1(26904u, true, true), vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.c), false, false))), ~u_input.c), 1516u);
    let var_1 = Struct_4(vec2<bool>(var_0 | !any(vec3<bool>(var_0, false, false)), any(vec4<bool>(var_0, true, var_0, var_0))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global1.x)))), -1000f));
    let var_3 = all(!select(!(!vec4<bool>(true, var_0, var_1.a.x, false)), vec4<bool>(all(vec3<bool>(var_0, var_0, var_0)), all(vec3<bool>(false, false, var_0)), true, var_1.a.x), vec4<bool>(true, any(vec4<bool>(true, false, var_0, true)), true, global1.x == 129f)));
    let x = u_input.a;
    s_output = StorageBuffer(-(~vec4<i32>(1i ^ u_input.b.x, -u_input.b.x, -6913i, -36921i)), -454f, vec4<u32>(~u_input.c, u_input.c, abs(0u), _wgslsmith_mod_u32(~u_input.a.x, 1u)));
}

