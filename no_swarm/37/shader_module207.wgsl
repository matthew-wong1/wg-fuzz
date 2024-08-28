struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<bool>,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(20183i, vec4<u32>(53112u, 23470u, 1u, 0u), Struct_1(true, -924f, vec3<bool>(true, false, false), 0u, vec4<i32>(0i, -1i, 145i, -17443i)), vec2<u32>(74722u, 4294967295u)));

var<private> global1: array<i32, 21> = array<i32, 21>(1i, 11197i, -1i, 1i, 0i, i32(-2147483648), -58257i, 59445i, i32(-2147483648), i32(-2147483648), -42091i, -13597i, -10692i, 1i, i32(-2147483648), 0i, 59399i, -72292i, 42285i, 1i, 45595i);

var<private> global2: array<Struct_1, 25>;

var<private> global3: bool;

var<private> global4: vec2<i32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<f32>) -> bool {
    let var_0 = Struct_3(_wgslsmith_add_vec2_u32(arg_2.b.wx, arg_2.d), vec4<bool>(arg_0.c.a, !all(select(vec4<bool>(false, true, arg_0.c.a, arg_2.c.c.x), vec4<bool>(false, arg_1.c.x, false, arg_1.c.x), arg_0.c.a)), arg_2.c.a, global1[_wgslsmith_index_u32(1u, 21u)] > _wgslsmith_sub_i32(1i, abs(u_input.d))));
    var var_1 = arg_0;
    let var_2 = var_1.d.x;
    let var_3 = ~(~(~u_input.c.x) | (~(~var_1.d.x) & (max(arg_1.d, 43771u) | arg_1.d)));
    let var_4 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1893f, arg_3.x)));
    return var_1.c.a;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: vec3<f32>) -> f32 {
    global3 = all(vec4<bool>(false | (~arg_0.x < (global1[_wgslsmith_index_u32(u_input.c.x, 21u)] << (13946u % 32u))), false, true && all(vec2<bool>(true, false)), false));
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(arg_2.x))));
    global3 = false;
    var var_1 = all(!select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, any(vec2<bool>(true, true)), true, func_3(global0[_wgslsmith_index_u32(4294967295u, 1u)], Struct_1(true, -1326f, vec3<bool>(true, true, false), arg_1.x, u_input.b), Struct_2(global1[_wgslsmith_index_u32(u_input.c.x, 21u)], vec4<u32>(4294967295u, 4294967295u, arg_1.x, 1u), Struct_1(false, var_0, vec3<bool>(true, true, false), u_input.c.x, vec4<i32>(42066i, arg_0.x, -40615i, 19103i)), vec2<u32>(4294967295u, arg_1.x)), vec2<f32>(var_0, 730f))), false));
    return arg_2.x;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<f32>) -> vec2<bool> {
    global4 = reverseBits(arg_1.e.zz);
    global2 = array<Struct_1, 25>();
    var var_0 = -_wgslsmith_div_vec3_i32(-select(arg_1.e.wxw ^ arg_1.e.wxw, select(arg_1.e.www, vec3<i32>(41476i, global1[_wgslsmith_index_u32(8646u, 21u)], 2147483647i), true), arg_1.c.x), u_input.b.zwx);
    var var_1 = -25473i;
    var var_2 = Struct_3(vec2<u32>(1u, 4294967295u), select(select(vec4<bool>(true, !arg_1.a, all(vec4<bool>(arg_1.c.x, arg_1.a, true, arg_1.c.x)), any(arg_1.c.zy)), !(!vec4<bool>(arg_1.c.x, true, arg_1.c.x, arg_1.a)), vec4<bool>(true, select(true, true, true), true, arg_1.a)), vec4<bool>(false, _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(13643u, 21u)], u_input.a.x) <= -1i, true, false), vec4<bool>(true, ~u_input.c.x < _wgslsmith_dot_vec2_u32(u_input.c.xy, u_input.c.zz), (var_0.x < arg_1.e.x) & func_3(Struct_2(global1[_wgslsmith_index_u32(u_input.c.x, 21u)], u_input.c, arg_1, u_input.c.yz), Struct_1(true, 1000f, arg_1.c, arg_1.d, vec4<i32>(global4.x, arg_1.e.x, 8413i, -1i)), global0[_wgslsmith_index_u32(33650u, 1u)], arg_2.ww), arg_1.a)));
    return select(var_2.b.wy, !(!select(var_2.b.zz, !vec2<bool>(arg_1.a, var_2.b.x), var_2.b.ww)), !vec2<bool>(!(!arg_1.c.x), all(select(var_2.b, var_2.b, true))));
}

fn func_1(arg_0: Struct_1) -> f32 {
    global3 = true;
    var var_0 = ~u_input.c;
    global4 = max(select(vec2<i32>(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(u_input.c.x, 21u)] << (13691u % 32u), global4.x), u_input.b.x), -_wgslsmith_clamp_vec2_i32(reverseBits(u_input.a), vec2<i32>(5535i, global4.x), vec2<i32>(global4.x, u_input.a.x) | u_input.b.yx), select(func_4(_wgslsmith_f_op_f32(func_2(vec2<i32>(-1i, -2147483647i), var_0.wzz, vec3<f32>(805f, 235f, 456f))), Struct_1(arg_0.c.x, 1052f, vec3<bool>(false, arg_0.a, arg_0.a), 51763u, arg_0.e), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, 507f, arg_0.b, 564f) * vec4<f32>(386f, 867f, arg_0.b, 1675f))), !vec2<bool>(true, arg_0.c.x), arg_0.c.yz)), _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(var_0.x, 21u)], global4.x), arg_0.e.x), abs(u_input.b.zx), vec2<i32>(~global4.x, max(global1[_wgslsmith_index_u32(u_input.c.x, 21u)], global1[_wgslsmith_index_u32(u_input.c.x, 21u)]))), min(-vec2<i32>(-2147483647i, global4.x), vec2<i32>(min(global1[_wgslsmith_index_u32(4294967295u, 21u)], arg_0.e.x), ~global1[_wgslsmith_index_u32(var_0.x, 21u)]))));
    let var_1 = Struct_2(27142i, vec4<u32>(arg_0.d, 4294967295u, var_0.x, _wgslsmith_clamp_u32(6606u, arg_0.d, 6596u)), arg_0, countOneBits(u_input.c.wz));
    let var_2 = arg_0;
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(u_input.c.x, 21u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(Struct_1(true, 1538f, vec3<bool>(false, true, false), 19180u, vec4<i32>(u_input.a.x, 0i, u_input.b.x, 1i)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-120f - _wgslsmith_f_op_f32(f32(-1f) * -1140f)))));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, u_input.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 39146u, 0u), vec3<u32>(12749u, u_input.c.x, 1u))), _wgslsmith_dot_vec3_u32(u_input.c.zzw, abs(u_input.c.zwx)), 113672u), 25u)])), var_1.x));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1299f, var_1.x, var_1.x))), vec3<f32>(-600f, 514f, 310f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(478f + _wgslsmith_f_op_f32(step(-478f, 485f))), _wgslsmith_f_op_f32(select(-1458f, 1000f, true)), 692f)));
    let var_4 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, min(29976u, ~(~(~u_input.c.x)))), 25u)];
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<i32>(i32(-1i) * -1i, -8468i, ~6833i, -global1[_wgslsmith_index_u32(u_input.c.x, 21u)])) ^ u_input.b, _wgslsmith_mult_u32(~(~var_4.d), max(~u_input.c.x, var_4.d)) >> (~u_input.c.x % 32u), _wgslsmith_div_f32(var_1.x, var_1.x));
}

