struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_2,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_3;

var<private> global2: array<vec2<f32>, 8> = array<vec2<f32>, 8>(vec2<f32>(-1409f, -535f), vec2<f32>(508f, -969f), vec2<f32>(873f, -528f), vec2<f32>(-2297f, 1641f), vec2<f32>(693f, 722f), vec2<f32>(218f, -422f), vec2<f32>(-2747f, 971f), vec2<f32>(2413f, 715f));

var<private> global3: f32 = 362f;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: vec4<bool>) -> f32 {
    var var_0 = select(vec3<bool>(all(arg_2.www), select(!all(arg_2.yyw), false, any(vec2<bool>(arg_2.x, arg_2.x))), false), arg_2.xzx, select(select(arg_2.yww, !(!vec3<bool>(arg_2.x, true, arg_2.x)), arg_2.x), !vec3<bool>(arg_1 < global1.a.b.x, true, all(vec3<bool>(true, true, arg_2.x))), select(!vec3<bool>(arg_2.x, arg_2.x, false), !vec3<bool>(arg_2.x, true, true), vec3<bool>(true, true, global1.b.x == 45198u))));
    var_0 = select(select(vec3<bool>(all(arg_2), true != var_0.x, true), !(!select(arg_2.xyx, arg_2.zww, arg_2.x)), vec3<bool>(all(!arg_2), false, select(false, var_0.x, arg_2.x))), vec3<bool>(true, true, var_0.x && (global0.c.c >= global1.e)), !var_0.x);
    var var_1 = global1.b.x;
    var var_2 = Struct_3(global1.a, vec2<u32>(~countOneBits(~u_input.a.x), 87083u), global1.c, ~9237u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-247f))));
    return _wgslsmith_f_op_f32(-var_2.e);
}

fn func_2() -> f32 {
    let var_0 = Struct_1(vec2<f32>(-134f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-851f))))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(global1.e, 1690f), global0.c.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.a.b.x), _wgslsmith_f_op_f32(ceil(1102f))) + global1.c.d.xz))));
    let var_1 = 897f;
    global3 = 1f;
    global0 = Struct_3(global0.c.b, min(select(select(u_input.a.wz, vec2<u32>(0u, global1.b.x), true), select(_wgslsmith_clamp_vec2_u32(global1.b, global1.b, u_input.a.xw), global1.b, u_input.c <= 52935i), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), true)), _wgslsmith_sub_vec2_u32(~vec2<u32>(global1.d, global1.b.x), global0.b >> ((global1.b << (global1.b % vec2<u32>(32u))) % vec2<u32>(32u)))), Struct_2(1000f, Struct_1(global1.a.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global2[_wgslsmith_index_u32(u_input.b, 8u)], global2[_wgslsmith_index_u32(1u, 8u)])), _wgslsmith_f_op_vec2_f32(global0.c.b.a + var_0.b))), _wgslsmith_f_op_f32(ceil(947f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1 * global0.c.d.x), global1.e, _wgslsmith_f_op_f32(func_3(vec3<i32>(u_input.c, 2147483647i, u_input.c), -745f, vec4<bool>(true, false, false, true)))))), min(~(4294967295u & u_input.a.x) ^ global0.b.x, global1.d), var_1);
    global3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a.b.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)) + _wgslsmith_f_op_f32(-global0.c.a));
}

fn func_1(arg_0: u32, arg_1: Struct_3) -> vec2<f32> {
    global1 = arg_1;
    global1 = arg_1;
    var var_0 = Struct_2(_wgslsmith_f_op_f32(func_2()), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(arg_1.a.a)))), _wgslsmith_f_op_vec2_f32(exp2(global0.c.b.b)), select(vec2<bool>(true, true), vec2<bool>(true, true), true))), _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(~global0.b.x, 8u)])), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-719f + -751f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(341f, 1472f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.c.b.a.x)) + _wgslsmith_f_op_f32(-global1.a.b.x))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-global0.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-123f, 658f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-220f - 2120f), arg_1.e, all(vec3<bool>(false, true, true))))))));
    global0 = arg_1;
    let var_1 = min(-vec3<i32>(_wgslsmith_add_i32(~u_input.c, ~u_input.c), 33920i, 1i), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, -30368i, u_input.c), ~vec3<i32>(93014i, u_input.c, u_input.c)), -(vec3<i32>(2147483647i, u_input.c, 16860i) & vec3<i32>(-18047i, -1i, u_input.c))), -abs(vec3<i32>(u_input.c, -68609i, u_input.c) << (vec3<u32>(u_input.b, 4294967295u, 1u) % vec3<u32>(32u)))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_0.b.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.c, 1838f), arg_1.c.d.yz, true)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.a.a.x, arg_1.c.a), vec2<f32>(var_0.d.x, global0.e), true)), true))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(658f, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_1(1u, Struct_3(Struct_1(global2[_wgslsmith_index_u32(11337u, 8u)], vec2<f32>(global0.c.b.b.x, global0.c.d.x)), vec2<u32>(1u, 55413u), Struct_2(745f, global1.c.b, 1126f, vec3<f32>(global0.e, -1178f, global0.c.c)), global0.d, global1.a.b.x)))))), _wgslsmith_f_op_vec2_f32(func_1(~1532u, Struct_3(Struct_1(vec2<f32>(global1.e, global0.a.b.x), vec2<f32>(-1155f, global0.e)), _wgslsmith_sub_vec2_u32(vec2<u32>(26821u, 37981u), global0.b), Struct_2(global1.c.c, global0.a, -281f, global0.c.d), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, global0.d, global1.b.x), vec4<u32>(52297u, global0.b.x, global1.d, 66075u)), _wgslsmith_f_op_f32(select(-855f, -377f, true)))))), global0.e, global1.c.d);
    global0 = Struct_3(global1.c.b, vec2<u32>(~(~(1u << (u_input.a.x % 32u))), max(33105u, 35495u)), Struct_2(_wgslsmith_f_op_f32(-global1.e), var_0.b, -1095f, global1.c.d), 4294967295u, global1.c.c);
    var var_1 = abs(abs(countOneBits(firstTrailingBit(vec4<i32>(2147483647i, -1i, 31776i, u_input.c))) << (~(u_input.a | u_input.a) % vec4<u32>(32u))));
    var var_2 = ~select(global0.b, vec2<u32>(abs(~32552u), _wgslsmith_mod_u32(~1u, 1u)), vec2<bool>(true, true));
    global3 = -101f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -2841f, 1165f, var_0.b.a.x) * vec4<f32>(1061f, global1.a.b.x, -437f, -262f)))))));
}

