struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 14>;

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(vec2<bool>(false, true), 1159f, 1u, 45084i), -10300i));

var<private> global2: array<bool, 23>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> Struct_4 {
    global0 = array<vec3<f32>, 14>();
    let var_0 = _wgslsmith_f_op_f32(-global1.a.a.b);
    var var_1 = vec2<i32>(~(~(-5587i)) >> (1u % 32u), ~global1.a.a.d) | -(~(~_wgslsmith_clamp_vec2_i32(vec2<i32>(global1.a.b, global1.a.a.d), vec2<i32>(global1.a.a.d, 2147483647i), vec2<i32>(global1.a.b, 2147483647i))));
    var var_2 = Struct_4(_wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(~global1.a.a.c ^ u_input.a, 14u)], _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(u_input.a, 14u)])), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(35186u, 26170u) ^ (23790u >> (u_input.a % 32u)), 14u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global1.a.a.c, u_input.a, 32647u, u_input.b), reverseBits(vec4<u32>(u_input.a, 4294967295u, 4294967295u, 1u))), 23u)]))), _wgslsmith_mult_vec2_u32(~vec2<u32>(~4294967295u, ~4294967295u), firstLeadingBit(~vec2<u32>(global1.a.a.c, 0u) >> ((vec2<u32>(4848u, u_input.a) | vec2<u32>(global1.a.a.c, 1u)) % vec2<u32>(32u)))), firstLeadingBit(~(~(vec2<u32>(global1.a.a.c, 0u) ^ vec2<u32>(u_input.b, global1.a.a.c)))), Struct_3(global1.a), Struct_1(global1.a.a.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2545f, 738f) * _wgslsmith_f_op_f32(floor(var_0))))), 4294967295u, ~(~global1.a.a.d & global1.a.b)));
    global0 = array<vec3<f32>, 14>();
    return Struct_4(var_2.a, vec2<u32>((~u_input.b | u_input.b) | 38183u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, var_2.b.x, u_input.a), vec4<u32>(48916u, 1u, var_2.c.x, 50215u)) & 111771u), ~vec2<u32>(9322u, var_2.e.c), var_2.d, var_2.e);
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: i32) -> i32 {
    let var_0 = !(!(!(_wgslsmith_sub_i32(-21322i, arg_3) != abs(1i))));
    let var_1 = 4294967295u;
    var var_2 = min(-firstTrailingBit(~(~vec4<i32>(arg_3, 30414i, arg_2.e.d, -2147483647i))), vec4<i32>(arg_2.d.a.a.d, ~2147483647i, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(global1.a.b, 1i, -18977i, 1i) << (vec4<u32>(0u, 14245u, 6087u, u_input.b) % vec4<u32>(32u))), vec4<i32>(select(global1.a.b, arg_3, arg_2.d.a.a.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.b, arg_0.a.b, global1.a.b), vec3<i32>(arg_2.d.a.a.d, arg_0.a.a.d, arg_3)), max(global1.a.a.d, -1i), func_2().d.a.a.d)), _wgslsmith_sub_i32(global1.a.a.d, global1.a.b)));
    let var_3 = arg_0.a.a.b;
    global1 = func_2().d;
    return arg_0.a.a.d;
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: bool) -> i32 {
    var var_0 = Struct_3(func_2().d.a);
    let var_1 = firstLeadingBit(13241i);
    let var_2 = Struct_2(Struct_1(select(!var_0.a.a.a, select(global1.a.a.a, global1.a.a.a, !global1.a.a.a), select(true, true, false) && true), _wgslsmith_f_op_f32(step(2015f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -922f) * 1348f))), ~(~var_0.a.a.c & global1.a.a.c), ~(_wgslsmith_sub_i32(-13339i, var_0.a.a.d) >> (1u % 32u))), var_0.a.b);
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(495f)), _wgslsmith_f_op_f32(-var_2.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1304f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(443f - global1.a.a.b))), _wgslsmith_div_f32(global1.a.a.b, 1f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.a.a.b, var_0.a.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.a.a.b, -1357f))), 1f))));
    var_0 = Struct_3(var_0.a);
    return ~(-(~2147483647i) | (countOneBits(-5578i) << (global1.a.a.c % 32u)));
}

fn func_1(arg_0: f32, arg_1: Struct_4, arg_2: Struct_3) -> bool {
    global0 = array<vec3<f32>, 14>();
    let var_0 = vec2<i32>(arg_2.a.a.d, func_4(-28218i, func_3(Struct_3(arg_2.a), vec2<u32>(arg_1.d.a.a.c, 1u), func_2(), ~arg_2.a.b) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 0u, global1.a.a.c), ~vec3<u32>(arg_2.a.a.c, 4294967295u, 4294967295u)) % 32u), func_2().a.x != arg_1.d.a.a.b));
    return arg_2.a.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec4<u32>(global1.a.a.c, _wgslsmith_clamp_u32(1u, u_input.b, u_input.b), global1.a.a.c, 4294967295u) ^ ~abs(vec4<u32>(u_input.b, u_input.b, global1.a.a.c, 1u)));
    var var_1 = select(global1.a.a.d, global1.a.b, any(select(!select(vec4<bool>(global1.a.a.a.x, true, false, true), vec4<bool>(global1.a.a.a.x, true, true, global1.a.a.a.x), vec4<bool>(global1.a.a.a.x, global1.a.a.a.x, global2[_wgslsmith_index_u32(4294967295u, 23u)], true)), !select(vec4<bool>(false, global2[_wgslsmith_index_u32(var_0.x, 23u)], global1.a.a.a.x, global2[_wgslsmith_index_u32(global1.a.a.c, 23u)]), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 23u)], global1.a.a.a.x, global2[_wgslsmith_index_u32(4294967295u, 23u)], false), global2[_wgslsmith_index_u32(13024u, 23u)]), vec4<bool>(global1.a.a.a.x, u_input.a <= var_0.x, func_1(global1.a.a.b, Struct_4(vec3<f32>(979f, 844f, global1.a.a.b), vec2<u32>(u_input.b, global1.a.a.c), vec2<u32>(global1.a.a.c, 4294967295u), Struct_3(global1.a), global1.a.a), Struct_3(global1.a)), false))));
    global1 = Struct_3(global1.a);
    let var_2 = -(~global1.a.a.d);
    var var_3 = _wgslsmith_add_vec3_i32(-(~(-select(vec3<i32>(33582i, -44976i, -34727i), vec3<i32>(var_2, global1.a.a.d, -13473i), vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 23u)], true)))), ~select(vec3<i32>(global1.a.b, countOneBits(var_2), var_2), ~vec3<i32>(2873i, global1.a.b, global1.a.b), !vec3<bool>(global2[_wgslsmith_index_u32(global1.a.a.c, 23u)], false, global1.a.a.a.x)));
    var var_4 = all(select(select(!select(vec4<bool>(false, global1.a.a.a.x, true, true), vec4<bool>(true, false, global2[_wgslsmith_index_u32(var_0.x, 23u)], false), vec4<bool>(global1.a.a.a.x, true, global2[_wgslsmith_index_u32(8419u, 23u)], false)), vec4<bool>(!global2[_wgslsmith_index_u32(var_0.x, 23u)], all(global1.a.a.a), global1.a.a.b > global1.a.a.b, 39826u > u_input.a), vec4<bool>(all(vec3<bool>(global1.a.a.a.x, false, global1.a.a.a.x)), true, true, select(false, true, false))), vec4<bool>(select(global1.a.a.a.x && true, global2[_wgslsmith_index_u32(reverseBits(4294967295u), 23u)], any(vec4<bool>(false, true, false, false))), func_2().e.a.x, all(global1.a.a.a), global1.a.a.a.x), !(!global1.a.a.a.x)));
    var_3 = vec3<i32>(i32(-1i) * -(~global1.a.a.d), ~var_3.x, ~2147483647i);
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~max(vec3<u32>(abs(var_0.x), u_input.a, 25163u), ~(vec3<u32>(var_0.x, 1u, 36610u) | vec3<u32>(u_input.a, 4294967295u, global1.a.a.c))));
}

