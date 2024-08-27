struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<bool>,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(33314u, vec3<bool>(true, true, false), vec4<bool>(false, true, true, true), vec2<u32>(2338u, 0u), vec3<bool>(true, false, true));

var<private> global1: vec4<f32> = vec4<f32>(-1170f, -345f, 349f, 1000f);

var<private> global2: array<u32, 5>;

var<private> global3: array<u32, 9> = array<u32, 9>(26268u, 74992u, 3033u, 0u, 0u, 2303u, 4294967295u, 8501u, 26656u);

var<private> global4: Struct_1 = Struct_1(15025u, vec3<bool>(true, true, false), vec4<bool>(true, true, true, true), vec2<u32>(41795u, 29496u), vec3<bool>(true, false, false));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> bool {
    let var_0 = arg_1;
    global1 = vec4<f32>(global1.x, _wgslsmith_f_op_f32(min(-2022f, 962f)), -850f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x)))));
    global2 = array<u32, 5>();
    global4 = Struct_1(select(arg_1.a, var_0.d.x, var_0.e.x), !(!(!select(var_0.e, global4.c.xyx, arg_1.c.wwy))), vec4<bool>(arg_1.b.x, !all(vec2<bool>(true, true)), var_0.b.x, !all(vec2<bool>(global4.b.x, global0.e.x))), _wgslsmith_mult_vec2_u32(~vec2<u32>(var_0.d.x, ~arg_0.x), vec2<u32>(1u, global0.a)), !select(select(vec3<bool>(true, var_0.c.x, global4.b.x), !global0.c.ywx, 0u > global0.d.x), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, arg_1.b.x, false), global4.e), select(vec3<bool>(false, global4.b.x, false), var_0.e, vec3<bool>(global0.c.x, global4.e.x, false))), select(!vec3<bool>(true, true, global4.b.x), select(vec3<bool>(false, global0.b.x, false), vec3<bool>(false, true, false), vec3<bool>(false, var_0.b.x, true)), vec3<bool>(false, global4.c.x, global0.e.x))));
    var var_1 = arg_1.d;
    return select(true, -46151i <= abs(abs(u_input.a.x)), !var_0.e.x || !any(var_0.e)) && !all(vec4<bool>(!global4.e.x, true, global0.b.x, u_input.a.x == u_input.a.x));
}

fn func_2() -> vec4<f32> {
    let var_0 = vec2<bool>(true, 2147483647i != ~(-_wgslsmith_div_i32(u_input.a.x, u_input.a.x)));
    global4 = Struct_1(0u, !vec3<bool>(true, any(select(global0.c.yww, vec3<bool>(true, global4.c.x, true), false)), global0.e.x | func_3(vec4<u32>(0u, global3[_wgslsmith_index_u32(5710u, 9u)], global0.d.x, 4294967295u), Struct_1(1u, global0.c.zyy, vec4<bool>(false, var_0.x, global4.e.x, false), global0.d, vec3<bool>(global4.c.x, global4.c.x, true)))), select(vec4<bool>(all(!vec4<bool>(true, false, true, global0.e.x)), any(!global4.e), global4.b.x, var_0.x), !vec4<bool>(all(vec3<bool>(true, global4.e.x, var_0.x)), !var_0.x, global0.b.x, 3543i == u_input.a.x), !all(select(global4.e.zz, vec2<bool>(global4.c.x, var_0.x), global0.e.x))), ~vec2<u32>(~min(1u, 1u), global3[_wgslsmith_index_u32(~global0.a ^ global4.a, 9u)]), vec3<bool>(!(_wgslsmith_dot_vec3_i32(u_input.a.zxx, u_input.a.yzy) >= -u_input.a.x), true, true & (firstTrailingBit(global0.a) > ~1u)));
    global2 = array<u32, 5>();
    var var_1 = Struct_1(0u, !(!global0.e), select(vec4<bool>(global0.b.x, all(!vec2<bool>(var_0.x, var_0.x)), var_0.x, false), vec4<bool>(false, !global0.c.x, false, var_0.x), global4.c), abs(abs(abs(_wgslsmith_div_vec2_u32(vec2<u32>(global4.a, global2[_wgslsmith_index_u32(global4.a, 5u)]), vec2<u32>(global4.a, 4294967295u))))), global4.b);
    var var_2 = Struct_1(global4.a ^ 1u, select(global4.b, vec3<bool>(true, select(var_0.x, !var_0.x, global0.c.x), all(select(var_1.e, var_1.b, global0.c.xww))), vec3<bool>(false, false, func_3(~vec4<u32>(var_1.a, 16032u, global2[_wgslsmith_index_u32(39456u, 5u)], 1u), Struct_1(0u, global4.e, var_1.c, global4.d, global0.c.zyz)))), vec4<bool>(any(!(!global0.c)), var_0.x, ~(-u_input.a.x) < -1i, true), global0.d, !vec3<bool>(var_0.x, !(global0.e.x || true), all(vec4<bool>(false, global0.b.x, global0.b.x, var_1.e.x))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 507f, -2024f, 461f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-421f, -176f, global1.x, 843f) * vec4<f32>(global1.x, global1.x, 2506f, global1.x)) * vec4<f32>(-496f, global1.x, 1149f, 1665f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-751f, 969f, global1.x, global1.x) * vec4<f32>(-1189f, global1.x, global1.x, global1.x))))));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: vec4<i32>, arg_3: vec4<i32>) -> StorageBuffer {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1434f, -1954f, -1927f, -753f)), _wgslsmith_f_op_vec4_f32(func_2())), vec4<f32>(global1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(global1.x, global1.x)))), _wgslsmith_f_op_vec4_f32(func_2()).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1408f * 280f) + -1000f))));
    var var_0 = abs(vec3<i32>(-arg_3.x, u_input.a.x, -(~u_input.a.x & select(-1i, -42785i, false))));
    let var_1 = Struct_1(4294967295u, select(global4.e, !select(select(vec3<bool>(false, true, false), global0.c.yxz, global0.b), select(global4.e, global4.e, vec3<bool>(global0.b.x, global4.e.x, global4.e.x)), global4.c.xxw), vec3<bool>(false, !global0.c.x | func_3(vec4<u32>(52938u, 3704u, 4294967295u, global3[_wgslsmith_index_u32(1u, 9u)]), Struct_1(0u, global0.c.wzz, global4.c, vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.a, 5u)], 5u)], global3[_wgslsmith_index_u32(4449u, 9u)]), global4.e)), false)), vec4<bool>(true, global0.c.x, global4.e.x, any(vec2<bool>(true, global0.c.x))), global4.d, !select(vec3<bool>(false == global4.b.x, global0.e.x, false), global4.e, true | !global0.e.x));
    var var_2 = var_1;
    var_0 = _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_2.x, arg_3.x, u_input.a.x), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, -9788i, -1183i), ~arg_3.yyx))), vec3<i32>(arg_2.x, _wgslsmith_clamp_i32(-_wgslsmith_add_i32(u_input.a.x, var_0.x), _wgslsmith_mod_i32(arg_2.x, firstTrailingBit(1i)), 0i), arg_3.x), _wgslsmith_add_vec3_i32(arg_2.ywy & vec3<i32>(u_input.a.x, ~arg_3.x, var_0.x), arg_3.www));
    return StorageBuffer(global1.x, u_input.a.x, ~(~(~_wgslsmith_dot_vec2_u32(global0.d, vec2<u32>(global4.d.x, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.a, 5u)], 9u)])))), global4.d.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-352f, -651f, _wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.d.x;
    let var_1 = global4.b.xz;
    global3 = array<u32, 9>();
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + global1.x) * -891f), _wgslsmith_f_op_f32(f32(-1f) * -146f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * -578f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1798f)))))));
    global3 = array<u32, 9>();
    let x = u_input.a;
    s_output = func_1(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~0u, _wgslsmith_clamp_u32(0u, 21512u, 4294967295u)) >> (~4294967295u % 32u), 9u)], _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, 33284u), 42598u), _wgslsmith_sub_u32(global0.d.x, 0u) << (~7068u % 32u))), global1.xw, _wgslsmith_mult_vec4_i32(-_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(1i, -1555i, 23851i, 21877i)), u_input.a), ~u_input.a), -((vec4<i32>(u_input.a.x, 2147483647i, 2147483647i, u_input.a.x) | vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) & vec4<i32>(select(-1i, -32592i, false), _wgslsmith_sub_i32(-56914i, u_input.a.x), -2147483647i, 27553i)));
}

