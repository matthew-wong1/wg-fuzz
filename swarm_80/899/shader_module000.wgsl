struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<bool>,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-21769i, -1i, -48278i);

var<private> global1: array<u32, 25>;

var<private> global2: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(Struct_2(Struct_1(vec4<i32>(-1i, -1i, 0i, 0i)), true, Struct_1(vec4<i32>(-2887i, 0i, 19794i, 8410i)), Struct_1(vec4<i32>(-2385i, 28016i, -45304i, 17702i))), -248f, vec3<f32>(1495f, 1217f, -894f)));

var<private> global3: array<vec4<u32>, 2> = array<vec4<u32>, 2>(vec4<u32>(1u, 16832u, 1u, 28725u), vec4<u32>(75106u, 4294967295u, 73585u, 1u));

var<private> global4: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec4<i32>(-24698i, i32(-2147483648), 1i, -11655i)), Struct_1(vec4<i32>(-17980i, -12408i, 0i, -1i)), Struct_1(vec4<i32>(i32(-2147483648), 0i, -1i, 75438i)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    global1 = array<u32, 25>();
    var var_0 = 1u;
    global4 = array<Struct_1, 3>();
    global4 = array<Struct_1, 3>();
    let var_1 = countOneBits(~arg_0.x);
    return Struct_1(-_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.c, _wgslsmith_clamp_vec4_i32(u_input.c, vec4<i32>(global0.x, 13206i, -44274i, -1i), u_input.c)), ~(~vec4<i32>(var_1, 2147483647i, u_input.a, arg_0.x))));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    return 4294967295u;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_5 {
    var var_0 = (arg_0.x && (false || arg_0.x)) && false;
    global0 = ~vec3<i32>(-21698i, _wgslsmith_add_i32(~2147483647i, min(-2147483647i, global0.x ^ arg_1.a.x)), arg_1.a.x);
    var var_1 = -164f;
    var var_2 = Struct_4(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(func_3(select(~vec3<u32>(global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(80134u, 25u)], 0u), ~(vec3<u32>(1u, global1[_wgslsmith_index_u32(0u, 25u)], 1u) ^ vec3<u32>(global1[_wgslsmith_index_u32(1u, 25u)], 1u, global1[_wgslsmith_index_u32(6843u, 25u)])), !arg_0.xwx)), 25u)], 25u)], 25u)], 3u)], 19217i, firstLeadingBit(_wgslsmith_dot_vec4_u32(~global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 25u)], 25u)], 25u)], 2u)] << (~vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 25u)], 5460u, 19628u, 51989u) % vec4<u32>(32u)), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(25080u, 25u)], 25u)], 25u)], 25u)], 25u)], 25u)] ^ 0u, firstTrailingBit(4294967295u), ~4294967295u, abs(0u)))), -46221i, !(!(!vec3<bool>(arg_0.x, arg_0.x, true))));
    var var_3 = -849f;
    return Struct_5(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-660f, -1000f, 723f, -571f), vec4<f32>(644f, 417f, 1334f, -1405f))))))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_5, arg_3: Struct_3) -> i32 {
    let var_0 = min(vec2<u32>(~4294967295u, 0u | ~global1[_wgslsmith_index_u32(~1u, 25u)]), ~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 25u)], 25u)] | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17961u, 25u)], 25u)], 25u)], 25u)], ~9778u) >> (_wgslsmith_add_vec2_u32(~(vec2<u32>(1u, global1[_wgslsmith_index_u32(4294967295u, 25u)]) >> (vec2<u32>(4294967295u, 29286u) % vec2<u32>(32u))), vec2<u32>(abs(global1[_wgslsmith_index_u32(34012u, 25u)]), global1[_wgslsmith_index_u32(abs(4294967295u), 25u)])) % vec2<u32>(32u)));
    global2 = array<Struct_3, 1>();
    let var_1 = ~vec3<i32>(-19336i, -30308i, 7195i);
    let var_2 = ~(~vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global1[_wgslsmith_index_u32(31946u, 25u)], 1u, 22165u), vec4<u32>(var_0.x, var_0.x, 20207u, 24877u)), 21382u), ~_wgslsmith_mult_u32(99807u, var_0.x), global1[_wgslsmith_index_u32(var_0.x, 25u)] >> (_wgslsmith_add_u32(18780u, 0u) % 32u), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(countOneBits(82418u), 25u)], var_0.x ^ 0u), 25u)]));
    global4 = array<Struct_1, 3>();
    return 8139i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.c.xxw | vec3<i32>(u_input.b.x, abs(12184i), global0.x & func_4(u_input.c, func_1(global0.zx), func_2(vec4<bool>(true, false, false, true), global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(42066u, 25u)], 25u)], 3u)]), Struct_3(Struct_2(global4[_wgslsmith_index_u32(1u, 3u)], true, Struct_1(vec4<i32>(global0.x, global0.x, -38703i, u_input.c.x)), global4[_wgslsmith_index_u32(0u, 3u)]), 147f, vec3<f32>(1329f, -577f, -826f))));
    var var_0 = vec2<bool>(true, false);
    let var_1 = vec2<i32>(global0.x, select(-33196i, -1i, false));
    let var_2 = Struct_2(Struct_1(-u_input.c), any(vec4<bool>(select(var_0.x, all(vec2<bool>(var_0.x, var_0.x)), all(vec3<bool>(true, false, true))), true, !(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 25u)], 25u)], 25u)] < 20551u), all(select(vec2<bool>(false, var_0.x), vec2<bool>(true, var_0.x), true)))), Struct_1(-u_input.c), Struct_1(vec4<i32>(-1i) * -(~u_input.c)));
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -933f) - -881f) + _wgslsmith_f_op_f32(select(625f, _wgslsmith_f_op_f32(1237f + -720f), any(vec4<bool>(var_2.b, false, var_0.x, var_0.x))))))));
    var var_4 = Struct_4(func_1(vec2<i32>(countOneBits(0i), select(countOneBits(global0.x), -1i, true & var_2.b))), ~(~(~(-34444i))), ~global1[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, 69706u), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24732u, 25u)], 25u)], 25u)], 0u), vec2<bool>(var_2.b, false)), firstTrailingBit(vec2<u32>(4895u, global1[_wgslsmith_index_u32(1u, 25u)]))), 25u)]), 25u)], -441i, vec3<bool>(any(!select(vec4<bool>(var_2.b, true, false, false), vec4<bool>(true, true, var_0.x, true), var_0.x)), false, true));
    global3 = array<vec4<u32>, 2>();
    global4 = array<Struct_1, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(997f * 723f)), _wgslsmith_f_op_f32(f32(-1f) * -783f), _wgslsmith_f_op_f32(min(-450f, _wgslsmith_f_op_f32(420f + 588f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 1000f, 386f), _wgslsmith_f_op_vec3_f32(vec3<f32>(458f, -826f, 312f) - vec3<f32>(-621f, -805f, 139f))))));
}

