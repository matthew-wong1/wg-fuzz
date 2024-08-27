struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<f32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 6>;

var<private> global2: f32 = 1000f;

var<private> global3: vec3<bool>;

var<private> global4: vec4<bool> = vec4<bool>(false, false, false, true);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1099f, arg_0.a, global4.x)), _wgslsmith_f_op_f32(exp2(arg_0.c.x)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.a.c.x + global0.e.a))) >= arg_1, arg_0.c);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.a.c.x)) - arg_2.a.c.x);
    let var_1 = !vec3<bool>(!any(vec3<bool>(false, arg_2.a.b, var_0.b)), global0.e.b, any(!(!vec4<bool>(true, arg_0.b, arg_0.b, var_0.b))));
    var var_2 = 533i;
    var var_3 = select(!all(select(vec4<bool>(arg_2.e.b, var_0.b, false, var_0.b), !vec4<bool>(false, arg_2.e.b, false, global0.d.b), u_input.e == -2147483647i)), true, true);
    return 36221i;
}

fn func_2() -> vec4<bool> {
    global4 = vec4<bool>(all(!global4.wxz) & (-560f >= global0.d.c.x), true && select(true, global0.e.b, any(vec2<bool>(global3.x, false))), global4.x, global4.x);
    let var_0 = abs(~global0.b);
    var var_1 = _wgslsmith_f_op_f32(round(global0.d.a));
    global3 = !(!vec3<bool>(select(false, false, true), !(!global4.x), any(global4.ywy)));
    global1 = array<i32, 6>();
    return select(vec4<bool>(true, !(!global0.e.b) || global0.d.b, global4.x, false), vec4<bool>(true || (-2147483647i >= func_3(global0.e, global0.e.c.x, Struct_2(global0.a, global0.b, -3175i, Struct_1(401f, false, global0.a.c), Struct_1(-730f, global0.e.b, global0.a.c)))), true, true, all(vec4<bool>(true, global0.a.b, global0.a.c.x != -659f, false))), true);
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> f32 {
    var var_0 = select(!vec4<bool>(_wgslsmith_f_op_f32(-global0.d.a) < global0.d.a, !(false || arg_1.b), select(all(vec2<bool>(true, global0.e.b)), false, false), all(global3.zy)), !func_2(), true);
    let var_1 = 43451u;
    var var_2 = any(func_2().wxy);
    var var_3 = _wgslsmith_dot_vec4_i32(-(~vec4<i32>(1i, 1i, -81i, u_input.c)), reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(global0.b.x, global0.b.x, 15851i, global1[_wgslsmith_index_u32(1u, 6u)]), vec4<i32>(u_input.b.x, -1i, 1i, u_input.b.x << (9322u % 32u)))));
    var_3 = 1i;
    return -1079f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 6>();
    global4 = select(!select(!vec4<bool>(true, global4.x, global3.x, global0.a.b), !vec4<bool>(global3.x, global3.x, global0.a.b, global3.x), !vec4<bool>(global3.x, false, global0.a.b, global0.a.b)), vec4<bool>(any(global3.zz), global0.a.b, true, !(global4.x & !global0.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(890f - 1253f), Struct_1(-469f, true, vec3<f32>(global0.e.a, global0.d.a, global0.e.a))))) >= global0.e.c.x);
    var var_0 = _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(global0.b.xx, _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 6u)], 0i), countOneBits(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 6u)], global1[_wgslsmith_index_u32(9062u, 6u)]))), select(u_input.b.xx, firstTrailingBit(vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], -2147483647i)), vec2<bool>(true, true)), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 6u)] ^ u_input.c, func_3(global0.d, global0.d.a, Struct_2(global0.a, vec4<i32>(global0.b.x, -54821i, -16591i, 2147483647i), global0.c, Struct_1(520f, global4.x, global0.a.c), Struct_1(-799f, global3.x, vec3<f32>(280f, global0.d.c.x, 1321f)))))), select(vec2<i32>(global1[_wgslsmith_index_u32(0u, 6u)], -1i) >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)), reverseBits(u_input.b.zx | u_input.b.xy), select(global0.e.b && false, select(false, true, false), global4.x))), ~u_input.b.zz, _wgslsmith_div_vec2_i32(-firstLeadingBit(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 6u)], u_input.e)), vec2<i32>(~2147483647i, ~global1[_wgslsmith_index_u32(93408u, 6u)])) ^ global0.b.wy);
    global2 = 1597f;
    var var_1 = Struct_2(Struct_1(global0.e.a, global3.x, vec3<f32>(_wgslsmith_f_op_f32(-global0.d.c.x), global0.a.c.x, _wgslsmith_f_op_f32(-global0.a.a))), -vec4<i32>(~(~var_0.x), ~_wgslsmith_sub_i32(u_input.b.x, var_0.x), u_input.e, _wgslsmith_sub_i32(~global0.c, _wgslsmith_sub_i32(var_0.x, 2212i))), u_input.b.x, Struct_1(_wgslsmith_f_op_f32(round(-953f)), func_2().x, vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-176f * 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.d.a, global0.a.c.x)))), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1279f)))), global0.a.c.x, (global1[_wgslsmith_index_u32(u_input.a, 6u)] != var_0.x) || (global0.d.b | global4.x))), global3.x, global0.d.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2122f - -412f) - var_1.a.c.x), var_1.e.c.x) * var_1.a.c.yx), _wgslsmith_dot_vec2_i32(var_1.b.yz, abs(vec2<i32>(19841i, -var_0.x))), _wgslsmith_f_op_vec2_f32(global0.a.c.zx - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.a.c.x, _wgslsmith_f_op_f32(step(var_1.a.a, global0.e.a)))))), vec3<i32>(select(-6340i, 1i, false & all(vec4<bool>(global0.d.b, false, global3.x, false))), var_0.x, -(~u_input.e)), vec3<i32>(~min(~global1[_wgslsmith_index_u32(u_input.a, 6u)], -35757i), 87770i, ~(-select(global1[_wgslsmith_index_u32(u_input.a, 6u)], -1i, global0.d.b))));
}

