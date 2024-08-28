struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(657f, 8531u, vec3<i32>(2147483647i, -1i, 2147483647i), vec2<i32>(2147483647i, 34473i));

var<private> global1: array<vec2<bool>, 6>;

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(1331f, 91324u, vec3<i32>(-15064i, 0i, -11911i), vec2<i32>(i32(-2147483648), 3572i)), Struct_1(-180f, 0u, vec3<i32>(27575i, 2885i, 3451i), vec2<i32>(i32(-2147483648), 73831i)), Struct_1(-484f, 67713u, vec3<i32>(-1i, -1i, i32(-2147483648)), vec2<i32>(-1i, -1i)));

var<private> global3: bool = true;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: u32) -> u32 {
    global2 = array<Struct_1, 3>();
    let var_0 = global2[_wgslsmith_index_u32(abs(arg_1.b & firstLeadingBit(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(29730u, 6740u, arg_2)), firstTrailingBit(vec3<u32>(19516u, u_input.e, 44516u))))), 3u)];
    let var_1 = arg_0;
    let var_2 = 16430i;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(567f)) + _wgslsmith_div_f32(global0.a, arg_0.x)))), arg_2, global0.c, var_0.c.yz);
    return _wgslsmith_add_u32(~_wgslsmith_sub_u32(abs(~4294967295u), _wgslsmith_sub_u32(arg_2, arg_2)), ~_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(var_0.b, var_3.b)), vec2<u32>(_wgslsmith_clamp_u32(u_input.e, 0u, var_3.b), ~0u)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -364f)))), 23619u, ~_wgslsmith_add_vec3_i32(~vec3<i32>(-26142i, arg_1.d.x, arg_1.d.x), -vec3<i32>(-1i, 45348i, global0.d.x) ^ global0.c), _wgslsmith_add_vec2_i32(vec2<i32>(arg_1.c.x, (-31596i | global0.c.x) | -8021i), vec2<i32>(_wgslsmith_sub_i32(arg_2.d.x, arg_2.d.x) | global0.c.x, global0.c.x)));
    let var_1 = _wgslsmith_mult_u32(30686u, var_0.b);
    let var_2 = 0i;
    global3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1438f + _wgslsmith_f_op_f32(-arg_1.a)))) <= arg_3.x;
    global2 = array<Struct_1, 3>();
    return select(vec2<bool>(false, false), vec2<bool>(true, all(vec4<bool>(true, arg_3.x > 1406f, true, any(vec3<bool>(false, true, false))))), false);
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> vec3<bool> {
    let var_0 = global0.b;
    global2 = array<Struct_1, 3>();
    global0 = Struct_1(arg_0.a, func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1070f, -1358f)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(903f, arg_0.a))))), arg_0, 52215u), _wgslsmith_mult_vec3_i32(-global0.c, vec3<i32>(u_input.c.x, select(_wgslsmith_sub_i32(-17854i, -18339i), 3719i, arg_1), arg_0.d.x)), vec2<i32>(global0.c.x, min(reverseBits(u_input.d & u_input.c.x), -1i)));
    let var_1 = vec4<bool>(all(select(!vec2<bool>(false, arg_1), vec2<bool>(true, true), !func_3(arg_0.a, global2[_wgslsmith_index_u32(arg_0.b, 3u)], arg_0, vec2<f32>(1924f, 195f)))), true, true, true);
    let var_2 = Struct_1(541f, ~arg_0.b, ~u_input.c, _wgslsmith_div_vec2_i32(arg_0.c.zy, vec2<i32>(u_input.c.x, _wgslsmith_add_i32(global0.d.x, global0.c.x))) << (~(vec2<u32>(14274u, 38260u) << (countOneBits(vec2<u32>(global0.b, 66640u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    return select(!select(select(!vec3<bool>(false, var_1.x, true), !vec3<bool>(arg_1, true, true), vec3<bool>(false, arg_1, false)), var_1.wyx, !(var_1.x & arg_1)), vec3<bool>(true, firstLeadingBit(global0.b) >= 11957u, !arg_1), select(arg_1, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~_wgslsmith_div_vec3_u32(abs(~vec3<u32>(u_input.e, global0.b, u_input.e)), firstTrailingBit(vec3<u32>(global0.b, 1475u, 10877u))), ~_wgslsmith_add_vec3_u32(max(~vec3<u32>(global0.b, 26694u, 16606u), vec3<u32>(39190u, u_input.e, 1u) | vec3<u32>(0u, global0.b, u_input.e)), vec3<u32>(0u, global0.b, 90389u)), func_1(Struct_1(global0.a, ~global0.b, vec3<i32>(abs(2877i), u_input.c.x, global0.d.x), ~global0.d), true));
    let var_1 = vec2<u32>(~(~85094u), max(~_wgslsmith_add_u32(~0u, max(global0.b, var_0.x)), global0.b));
    var var_2 = !vec4<bool>(true, false, any(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, true, false), false)), (global0.a != _wgslsmith_f_op_f32(global0.a * global0.a)) && true);
    global2 = array<Struct_1, 3>();
    global1 = array<vec2<bool>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-857f, -310f)), vec2<f32>(global0.a, 1000f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1184f, global0.a) * vec2<f32>(global0.a, global0.a)))), max(select(abs(var_0.yz), vec2<u32>(~u_input.e, 1u), func_3(-1451f, Struct_1(global0.a, 2334u, vec3<i32>(global0.d.x, global0.c.x, 0i), global0.d), global2[_wgslsmith_index_u32(abs(95050u), 3u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1064f, 326f))).x), var_1), vec3<u32>(37091u, _wgslsmith_mult_u32(~countOneBits(var_0.x), 2902u), _wgslsmith_mult_u32(var_0.x, ~(~101703u))));
}

