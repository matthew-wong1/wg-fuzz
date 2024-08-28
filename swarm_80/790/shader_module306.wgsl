struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16>;

var<private> global1: vec4<f32>;

var<private> global2: array<i32, 21> = array<i32, 21>(-1i, 2147483647i, -24496i, 0i, 1i, 48906i, -3349i, 23593i, 2147483647i, i32(-2147483648), -31402i, -1i, 1i, -1i, -20947i, -1i, 1i, -45773i, 41195i, 37530i, 0i);

var<private> global3: array<vec4<f32>, 2>;

var<private> global4: vec3<u32> = vec3<u32>(1u, 41155u, 79339u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3) -> vec3<bool> {
    return select(vec3<bool>(!arg_0.d.x, !any(arg_0.d.xx), arg_2.d), arg_0.d, arg_0.d.x);
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> f32 {
    var var_0 = !((false || !arg_1.d.x) && all(!(!vec4<bool>(false, arg_1.d.x, arg_1.d.x, true))));
    global0 = array<f32, 16>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(sign(global1.x)), global2[_wgslsmith_index_u32(65456u, 21u)], arg_1.b, select(vec3<bool>(all(vec4<bool>(false, false, false, arg_1.d.x)), !arg_1.d.x, arg_1.d.x), arg_1.d, arg_1.d.x), ~global4.x);
    var var_2 = -(~vec3<i32>(-arg_1.c, arg_1.b, 0i) >> (~abs(u_input.a.ywy) % vec3<u32>(32u)));
    var var_3 = global4.x;
    return -519f;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>) -> vec3<bool> {
    let var_0 = vec4<bool>((arg_0.a.d.x & (true & !arg_1.x)) || (u_input.c.x == ~u_input.c.x), any(select(select(!vec3<bool>(arg_0.a.d.x, false, true), func_2(Struct_1(global1.x, 4084i, -48008i, arg_0.a.d, 36655u), global0[_wgslsmith_index_u32(25238u, 16u)], Struct_3(1i, vec3<i32>(u_input.c.x, arg_0.a.b, u_input.c.x), false, arg_0.a.d.x)), arg_0.a.d.x | true), arg_0.a.d, !arg_0.a.d.x)), false, func_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -543f), _wgslsmith_add_i32(arg_0.a.b, global2[_wgslsmith_index_u32(0u, 21u)]) >> (u_input.a.x % 32u), _wgslsmith_mult_i32(37058i, _wgslsmith_add_i32(arg_0.a.b, global2[_wgslsmith_index_u32(arg_0.a.e, 21u)])), vec3<bool>(true, true, true), 1u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0.a.e, Struct_1(-293f, -2147483647i, arg_0.a.c, arg_0.a.d, 4294967295u)))), global1.x), Struct_3(global2[_wgslsmith_index_u32(select(~arg_0.a.e, ~1u, arg_1.x), 21u)], abs(vec3<i32>(0i, global2[_wgslsmith_index_u32(u_input.b, 21u)], 2147483647i)) & _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, global2[_wgslsmith_index_u32(4294967295u, 21u)], global2[_wgslsmith_index_u32(58901u, 21u)]), vec3<i32>(u_input.c.x, arg_0.a.b, -3882i)), arg_0.a.d.x, true)).x);
    let var_1 = 4294967295u;
    var var_2 = ~(-u_input.c);
    var var_3 = arg_0.a.d.x;
    var var_4 = arg_0.a;
    return arg_0.a.d;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> vec2<i32> {
    global1 = global3[_wgslsmith_index_u32(4294967295u, 2u)];
    let var_0 = 1u;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-567f)));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.xz)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global1.zw)) * vec2<f32>(var_1, -580f)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(global1.x, -2359f), global1.wy), vec2<f32>(arg_1.a, var_1), false))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.xz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.yy)), func_1(Struct_2(Struct_1(global0[_wgslsmith_index_u32(var_0, 16u)], 23276i, -34054i, vec3<bool>(true, true, arg_1.d.x), 3203u)), func_2(arg_1, _wgslsmith_f_op_f32(arg_1.a * var_1), Struct_3(-65629i, vec3<i32>(-11291i, 2147483647i, -23856i), arg_2, arg_1.d.x)).yx).x)), vec2<bool>(true, true)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)) + _wgslsmith_f_op_f32(-220f * -602f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -939f) * 1336f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))) <= var_2.x;
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(global2[_wgslsmith_index_u32(61430u, 21u)], countOneBits(global2[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 21u)]), u_input.c.x << (firstLeadingBit(_wgslsmith_add_u32(1u, 0u)) % 32u), ~(_wgslsmith_sub_i32(u_input.c.x, global2[_wgslsmith_index_u32(u_input.b, 21u)]) & u_input.c.x)), (countOneBits(-u_input.c) ^ _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c.x, global2[_wgslsmith_index_u32(0u, 21u)]), vec2<i32>(-4525i, 0i)), u_input.c)) ^ func_4(~u_input.a.x >> (_wgslsmith_dot_vec3_u32(u_input.a.zxy, vec3<u32>(global4.x, global4.x, 52496u)) % 32u), Struct_1(-165f, min(0i, 54075i), global2[_wgslsmith_index_u32(11549u, 21u)] & global2[_wgslsmith_index_u32(0u, 21u)], func_1(Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], 2147483647i, global2[_wgslsmith_index_u32(global4.x, 21u)], vec3<bool>(false, false, false), u_input.a.x)), vec2<bool>(true, false)), select(global4.x, global4.x, false)), any(vec2<bool>(false, true)), true), -2147483647i);
}

