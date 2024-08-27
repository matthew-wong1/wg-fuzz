struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_3,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 32>;

var<private> global1: array<f32, 8>;

var<private> global2: u32 = 1u;

var<private> global3: array<i32, 6>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool) -> vec3<bool> {
    let var_0 = vec3<bool>(false, select(arg_0, !any(!vec4<bool>(true, arg_0, false, arg_0)), any(select(!vec3<bool>(false, arg_0, true), vec3<bool>(arg_0, arg_0, false), arg_0))), all(select(select(select(vec4<bool>(false, arg_0, true, true), vec4<bool>(false, arg_0, arg_0, arg_0), arg_0), vec4<bool>(false, arg_0, false, arg_0), vec4<bool>(false, true, true, false)), vec4<bool>(any(vec4<bool>(true, false, true, arg_0)), all(vec4<bool>(arg_0, arg_0, false, false)), true, false & arg_0), !(!vec4<bool>(false, true, arg_0, true)))));
    global3 = array<i32, 6>();
    global1 = array<f32, 8>();
    let var_1 = ~vec2<i32>(_wgslsmith_clamp_i32(~reverseBits(global3[_wgslsmith_index_u32(u_input.b.x, 6u)]), _wgslsmith_mult_i32(-1i << (u_input.b.x % 32u), u_input.c.x), _wgslsmith_sub_i32(_wgslsmith_div_i32(16215i, global3[_wgslsmith_index_u32(u_input.b.x, 6u)]), _wgslsmith_dot_vec3_i32(u_input.c.xzy, u_input.c.ywx))), global3[_wgslsmith_index_u32(max(abs(_wgslsmith_dot_vec3_u32(u_input.b, global0[_wgslsmith_index_u32(u_input.b.x, 32u)])), 0u), 6u)]);
    global0 = array<vec3<u32>, 32>();
    return vec3<bool>(true, all(!vec3<bool>(var_0.x, any(var_0), var_0.x)), all(!select(!vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(false, true, false, var_0.x), !vec4<bool>(false, false, false, arg_0))));
}

fn func_2(arg_0: bool, arg_1: f32) -> u32 {
    let var_0 = 2789i;
    global0 = array<vec3<u32>, 32>();
    let var_1 = Struct_1(u_input.c.yy, 1u, vec2<i32>(-(~_wgslsmith_div_i32(global3[_wgslsmith_index_u32(22440u, 6u)], -3065i)), u_input.a));
    var var_2 = func_3(!(!arg_0));
    let var_3 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(firstLeadingBit(_wgslsmith_add_u32(var_1.b, 4294967295u)) << (1u % 32u), _wgslsmith_add_u32(1u >> ((0u | u_input.b.x) % 32u), var_1.b)), 32u)];
    return _wgslsmith_add_u32(~(_wgslsmith_clamp_u32(~67484u, ~u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b.zz, u_input.b.zx)) | 10397u), 1u);
}

fn func_1() -> Struct_1 {
    global1 = array<f32, 8>();
    global0 = array<vec3<u32>, 32>();
    global0 = array<vec3<u32>, 32>();
    var var_0 = _wgslsmith_div_u32(_wgslsmith_sub_u32(select(4294967295u, ~_wgslsmith_dot_vec2_u32(u_input.b.zx, vec2<u32>(0u, 18672u)), all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true)))), 1u), u_input.b.x);
    var var_1 = _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.b.x, reverseBits(_wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_sub_u32(14781u, 0u), ~100836u))), 0u, ~(~(func_2(false, 1514f) ^ 37270u)));
    return Struct_1(~firstLeadingBit(firstTrailingBit(u_input.c.xx)), _wgslsmith_mult_u32(3414u, u_input.b.x), vec2<i32>(abs(min(_wgslsmith_sub_i32(u_input.a, -2147483647i), -91374i)), -(u_input.c.x >> (1u % 32u))));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<u32>, arg_2: Struct_5, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = arg_2.a.wzy;
    let var_1 = func_3(arg_0.b.b.b.x >= ~arg_2.b.b.b.x).x;
    let var_2 = select(func_3(arg_0.b.c.a.x), select(!vec3<bool>(arg_0.b.b.a.x, false, arg_0.d), arg_2.b.b.a, true), !arg_0.b.b.a);
    global1 = array<f32, 8>();
    var var_3 = 29723i;
    return Struct_1(_wgslsmith_add_vec2_i32(-vec2<i32>(-1i, abs(global3[_wgslsmith_index_u32(80010u, 6u)])), _wgslsmith_div_vec2_i32(abs(arg_0.b.c.b.zy), arg_2.b.b.d.a)), _wgslsmith_add_u32((_wgslsmith_mult_u32(0u, arg_2.c) | func_2(var_1, 1000f)) << (~(~22253u) % 32u), arg_1.x), abs(vec2<i32>(~_wgslsmith_div_i32(2147483647i, 1693i), u_input.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 32>();
    global3 = array<i32, 6>();
    global0 = array<vec3<u32>, 32>();
    var var_0 = _wgslsmith_add_i32(-30402i, global3[_wgslsmith_index_u32(u_input.b.x, 6u)]);
    let var_1 = !vec2<bool>(false, true || any(vec4<bool>(true, false, false, false)));
    let var_2 = var_1.x;
    let var_3 = -141f;
    let var_4 = func_4(Struct_5(vec4<f32>(_wgslsmith_div_f32(var_3, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 8u)] + global1[_wgslsmith_index_u32(31273u, 8u)]))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 8u)]), _wgslsmith_div_f32(_wgslsmith_div_f32(var_3, -114f), _wgslsmith_f_op_f32(1000f - var_3))), Struct_3(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, global1[_wgslsmith_index_u32(u_input.b.x, 8u)], -1399f, var_3), _wgslsmith_f_op_vec4_f32(vec4<f32>(411f, -1968f, 807f, var_3) * vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 8u)], var_3, var_3, var_3)))), Struct_2(vec3<bool>(false, var_1.x, false), -vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), var_1.x, func_1()), Struct_2(!vec3<bool>(var_2, var_1.x, false), max(vec4<i32>(-1i, -2147483647i, u_input.c.x, 15316i), vec4<i32>(u_input.c.x, u_input.c.x, -26301i, global3[_wgslsmith_index_u32(u_input.b.x, 6u)])), 944f >= global1[_wgslsmith_index_u32(u_input.b.x, 8u)], Struct_1(vec2<i32>(-38143i, global3[_wgslsmith_index_u32(u_input.b.x, 6u)]), u_input.b.x, u_input.c.wy)), _wgslsmith_f_op_f32(var_3 + var_3)), _wgslsmith_clamp_u32(u_input.b.x, ~u_input.b.x << (abs(u_input.b.x) % 32u), select(u_input.b.x, min(u_input.b.x, u_input.b.x), func_3(true).x)), var_2 & all(!vec3<bool>(var_1.x, false, var_2))), _wgslsmith_div_vec3_u32(~_wgslsmith_div_vec3_u32(global0[_wgslsmith_index_u32(3777u, 32u)], u_input.b) ^ ~(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x) | vec3<u32>(4294967295u, u_input.b.x, 4294967295u)), vec3<u32>(~(~4294967295u), 7182u, 0u)), Struct_5(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-659f, global1[_wgslsmith_index_u32(u_input.b.x, 8u)], var_3, -1147f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1235f, var_3, -1562f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3, -2039f, -1377f, var_3), vec4<f32>(var_3, -763f, -574f, 1000f))), select(vec4<bool>(var_2, true, true, false), vec4<bool>(var_2, true, true, var_2), true))))), Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 8u)], var_3, var_3, -566f) + vec4<f32>(var_3, -111f, global1[_wgslsmith_index_u32(15423u, 8u)], -1051f)), vec4<f32>(1692f, -1512f, var_3, global1[_wgslsmith_index_u32(21034u, 8u)])), Struct_2(vec3<bool>(true, true, true), abs(u_input.c), func_3(var_2).x, func_1()), Struct_2(vec3<bool>(var_1.x, false, false), _wgslsmith_add_vec4_i32(vec4<i32>(-16959i, -2147483647i, global3[_wgslsmith_index_u32(24144u, 6u)], u_input.c.x), u_input.c), false, func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2829f + global1[_wgslsmith_index_u32(29465u, 8u)]) * var_3)), 4294967295u, var_1.x), _wgslsmith_mod_vec4_u32(max(_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 1u, 75344u, u_input.b.x), _wgslsmith_mod_vec4_u32(vec4<u32>(46991u, 55465u, 35988u, 0u), vec4<u32>(60152u, 0u, u_input.b.x, 4294967295u))), vec4<u32>(~u_input.b.x, 5740u, 12667u, _wgslsmith_sub_u32(u_input.b.x, 1u))), ~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.b.x, 0u, u_input.b.x), vec4<u32>(56209u, 0u, 4294967295u, u_input.b.x)), ~vec4<u32>(u_input.b.x, 4294967295u, 18231u, 34633u))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-3460f, var_3, 282f), vec3<f32>(-635f, global1[_wgslsmith_index_u32(0u, 8u)], global1[_wgslsmith_index_u32(u_input.b.x, 8u)]), vec3<bool>(false, var_2, false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-917f, 725f, global1[_wgslsmith_index_u32(var_4.b, 8u)])))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1388f, global1[_wgslsmith_index_u32(67406u, 8u)], var_3)), vec3<f32>(var_3, -1091f, -655f)))), countOneBits(global3[_wgslsmith_index_u32(~0u, 6u)]));
}

