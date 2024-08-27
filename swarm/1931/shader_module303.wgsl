struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec2<f32>,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

var<private> global1: array<i32, 4>;

var<private> global2: i32;

var<private> global3: Struct_1 = Struct_1(vec3<u32>(39918u, 4294967295u, 4294967295u), -10995i, vec2<f32>(1352f, -641f), vec2<f32>(846f, -1405f), i32(-2147483648));

var<private> global4: array<vec4<bool>, 16>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: bool, arg_3: u32) -> Struct_4 {
    global0 = !select(!vec3<bool>(2648f > global3.c.x, -2147483647i > u_input.d, arg_1.x), !vec3<bool>(select(global0.x, global0.x, false), global0.x, false), vec3<bool>(global0.x, false, true));
    var var_0 = abs(~_wgslsmith_mult_i32(firstLeadingBit(global1[_wgslsmith_index_u32(36700u, 4u)] | u_input.d), _wgslsmith_dot_vec2_i32(u_input.b.yz, u_input.a)));
    var var_1 = arg_0;
    let var_2 = Struct_2(vec3<f32>(1000f, 105f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -144f), _wgslsmith_f_op_f32(1327f - global3.d.x))))));
    var_0 = _wgslsmith_sub_i32(select(~global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32(u_input.c.x, 4294967295u)), 4u)], -8196i, global0.x), select(_wgslsmith_mult_i32(_wgslsmith_add_i32(global3.b, global1[_wgslsmith_index_u32(arg_3, 4u)]), firstLeadingBit(global3.e)), abs(12737i) >> (max(arg_3, u_input.c.x) % 32u), all(!arg_1)) ^ -3305i);
    return Struct_4(max(-(vec3<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 4u)], global1[_wgslsmith_index_u32(arg_0, 4u)], global1[_wgslsmith_index_u32(1u, 4u)]) ^ -vec3<i32>(-4089i, global1[_wgslsmith_index_u32(75033u, 4u)], -5729i)), _wgslsmith_add_vec3_i32(abs(vec3<i32>(u_input.b.x, -3818i, global1[_wgslsmith_index_u32(global3.a.x, 4u)])), u_input.b)), _wgslsmith_f_op_f32(global3.c.x - -792f));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    global3 = Struct_1(select(vec3<u32>(firstLeadingBit(13861u), countOneBits(_wgslsmith_sub_u32(61116u, 0u)), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.e, u_input.c.x, u_input.c.x), global3.a.x, 7349u)), global3.a, false), _wgslsmith_clamp_i32(-21137i, 1i, global3.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.d - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.c * vec2<f32>(global3.c.x, global3.c.x))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(global3.d)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global3.d.x), global3.c.x)))), ~(-9686i));
    let var_0 = global3.a.x ^ 25083u;
    global0 = vec3<bool>(!global0.x, global0.x, select(any(!(!vec4<bool>(true, arg_0.x, false, false))), select(any(vec4<bool>(global0.x, arg_0.x, true, arg_0.x)), select(global1[_wgslsmith_index_u32(1u, 4u)] < u_input.d, arg_0.x & true, true), false), global3.b >= firstTrailingBit(-44967i)));
    let var_1 = 1u ^ u_input.e;
    var var_2 = vec4<i32>(-54657i, ~2147483647i, u_input.a.x, global3.b);
    return var_0;
}

fn func_2() -> f32 {
    var var_0 = global4[_wgslsmith_index_u32(global3.a.x, 16u)];
    var_0 = select(global4[_wgslsmith_index_u32(func_3(!global4[_wgslsmith_index_u32(46625u, 16u)]) | 1u, 16u)], !vec4<bool>(true, false, global0.x, !(global3.a.x <= global3.a.x)), global4[_wgslsmith_index_u32(u_input.c.x, 16u)]);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -646f), -803f);
    global4 = array<vec4<bool>, 16>();
    var var_2 = var_0.wy;
    return 217f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global3.a.x, global0.xy, any(select(global4[_wgslsmith_index_u32(~(~62253u), 16u)], !(!vec4<bool>(global0.x, false, false, global0.x)), any(vec2<bool>(global0.x, global0.x)))), 4294967295u);
    let var_1 = Struct_4(vec3<i32>(~func_1(u_input.e, select(global0.zy, global0.zy, vec2<bool>(global0.x, true)), global0.x && global0.x, _wgslsmith_mult_u32(u_input.e, 1u)).a.x, var_0.a.x, 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())));
    global1 = array<i32, 4>();
    var var_2 = 492f;
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(209f, 994f, global3.d.x, var_0.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1194f, -139f, -1074f, -188f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(800f, var_1.b, 1484f, global3.c.x) - vec4<f32>(-550f, -1245f, 1184f, -600f))))))));
    let var_4 = Struct_1(~global3.a, _wgslsmith_dot_vec4_i32(firstTrailingBit(-vec4<i32>(global1[_wgslsmith_index_u32(17339u, 4u)], var_0.a.x, 13579i, -1i)) ^ max(select(vec4<i32>(var_1.a.x, global1[_wgslsmith_index_u32(global3.a.x, 4u)], var_1.a.x, -2147483647i), vec4<i32>(global3.e, 2147483647i, 2308i, global3.b), false), vec4<i32>(var_1.a.x, var_0.a.x, 2147483647i, var_1.a.x)), vec4<i32>(47948i, _wgslsmith_dot_vec4_i32(vec4<i32>(global3.b, -2147483647i, 2147483647i, 57947i), ~vec4<i32>(1i, var_0.a.x, global3.e, 598i)), _wgslsmith_add_i32(_wgslsmith_add_i32(0i, global1[_wgslsmith_index_u32(global3.a.x, 4u)]), 1i), -global1[_wgslsmith_index_u32(20017u, 4u)] ^ _wgslsmith_dot_vec2_i32(u_input.b.zy, u_input.a))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_3.zw), _wgslsmith_f_op_vec2_f32(-vec2<f32>(185f, var_3.x))))))), vec2<f32>(1622f, _wgslsmith_f_op_f32(round(1000f))), -10095i);
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.a, _wgslsmith_mult_vec2_i32(u_input.a, -firstLeadingBit(var_1.a.zy))), 765f);
}

