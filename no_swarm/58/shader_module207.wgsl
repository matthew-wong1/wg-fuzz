struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(86217i, 1i, -1i, 1725i);

var<private> global1: Struct_1;

var<private> global2: array<vec3<u32>, 10> = array<vec3<u32>, 10>(vec3<u32>(0u, 60764u, 1u), vec3<u32>(0u, 13652u, 4294967295u), vec3<u32>(4294967295u, 44150u, 27827u), vec3<u32>(1u, 62013u, 13127u), vec3<u32>(0u, 21794u, 1u), vec3<u32>(14036u, 1u, 1u), vec3<u32>(67600u, 0u, 1u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(4294967295u, 4294967295u, 17622u), vec3<u32>(4294967295u, 39040u, 6893u));

var<private> global3: array<f32, 30>;

var<private> global4: vec4<i32> = vec4<i32>(-5128i, 30367i, 16635i, -10734i);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> bool {
    global4 = u_input.b;
    var var_0 = Struct_1(global1.a, 36928u > (firstLeadingBit(4294967295u) ^ _wgslsmith_mult_u32(u_input.c.x ^ global1.c.x, 14067u & u_input.c.x)), global1.c ^ ~(~(~vec3<u32>(1u, 0u, 0u))));
    let var_1 = -1457f;
    let var_2 = min(1i, 28390i);
    var var_3 = (0u >= _wgslsmith_mod_u32(~var_0.c.x, var_0.c.x)) & var_0.b;
    return all(!var_0.a);
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> i32 {
    var var_0 = func_3();
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1015f, 1000f, _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(0u, 30u)])), global3[_wgslsmith_index_u32(~1u, 30u)]) - vec4<f32>(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(0u, 30u)])), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 30u)]), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global1.c.x, 30u)] - global3[_wgslsmith_index_u32(global1.c.x, 30u)]), -166f)), vec4<f32>(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(~1u, 30u)], global3[_wgslsmith_index_u32(~0u, 30u)])), global3[_wgslsmith_index_u32(10773u, 30u)], -394f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(u_input.c.x, 30u)])))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(2305f - -923f))), -481f, global3[_wgslsmith_index_u32(~global1.c.x, 30u)]) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_1.yxw, var_1.wyw), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(573f, -1486f, global3[_wgslsmith_index_u32(arg_1.c.x, 30u)]) + var_1.zww))) + var_1.zxy));
    let var_3 = u_input.b.wzz;
    global0 = _wgslsmith_add_vec4_i32(max(vec4<i32>(countOneBits(-10744i), u_input.a.x, var_3.x, 29972i), abs(vec4<i32>(u_input.b.x, 294i, var_3.x, var_3.x))), ~vec4<i32>(u_input.a.x, global0.x, -2147483647i, 0i) | ((vec4<i32>(-23516i, 64032i, -1i, 76511i) ^ u_input.b) & vec4<i32>(global0.x, global0.x, -45789i, -35511i))) | (vec4<i32>(-1i) * -u_input.b);
    return _wgslsmith_dot_vec4_i32(u_input.b, firstLeadingBit(_wgslsmith_mult_vec4_i32(u_input.b, u_input.b)));
}

fn func_1(arg_0: bool) -> vec4<bool> {
    global0 = _wgslsmith_div_vec4_i32(vec4<i32>(i32(-1i) * -1i, _wgslsmith_clamp_i32(~global0.x, global4.x, _wgslsmith_sub_i32(global4.x, 1i) | reverseBits(global0.x)), global0.x & -global0.x, ~_wgslsmith_sub_i32(-23974i, 10172i)), ~(-u_input.b & vec4<i32>(28959i, abs(19320i), -u_input.b.x, _wgslsmith_add_i32(u_input.b.x, 2147483647i))));
    var var_0 = -1000f;
    global2 = array<vec3<u32>, 10>();
    var var_1 = abs(_wgslsmith_mod_i32(u_input.b.x | _wgslsmith_mod_i32(~global4.x, u_input.a.x), u_input.b.x));
    global0 = -vec4<i32>(-12550i, global0.x, -3770i, ~reverseBits(global4.x) | func_2(true, Struct_1(global1.a, true, u_input.c)));
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(false);
    let var_1 = Struct_1(!vec4<bool>(!var_0.x, !global1.b, any(!vec4<bool>(var_0.x, global1.a.x, global1.b, global1.b)), var_0.x), false, u_input.c);
    var var_2 = ~(~(~var_1.c.yy | ~(vec2<u32>(u_input.c.x, 11598u) & vec2<u32>(var_1.c.x, 43509u))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global1.c.x, 30u)]), true)))), 365f);
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3[_wgslsmith_index_u32(global1.c.x, 30u)], global3[_wgslsmith_index_u32(u_input.c.x, 30u)], var_3.x, 1562f), vec4<f32>(global3[_wgslsmith_index_u32(15137u, 30u)], var_3.x, 1060f, 877f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-803f, -725f, global3[_wgslsmith_index_u32(u_input.c.x, 30u)], global3[_wgslsmith_index_u32(u_input.c.x, 30u)]), vec4<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 30u)], -521f, var_3.x, var_3.x), false))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(1u, 30u)], -404f, var_3.x, var_3.x) - vec4<f32>(201f, global3[_wgslsmith_index_u32(var_2.x, 30u)], var_3.x, global3[_wgslsmith_index_u32(var_2.x, 30u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, global3[_wgslsmith_index_u32(80089u, 30u)], 368f, global3[_wgslsmith_index_u32(u_input.c.x, 30u)]) + vec4<f32>(global3[_wgslsmith_index_u32(34400u, 30u)], 109f, -827f, -1000f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_3.x * global3[_wgslsmith_index_u32(var_2.x, 30u)]), _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(f32(-1f) * -1578f), 663f))));
    var var_5 = !global1.a.xz;
    var var_6 = ~(vec4<i32>(i32(-1i) * -global4.x, -global0.x, max(global0.x, ~1i), -u_input.b.x & select(global4.x, 4322i, false)) ^ u_input.b);
    let var_7 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec4<u32>(~countOneBits(12342u), 4294967295u, 17695u, firstTrailingBit(2422u))), var_4.ywy, _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(global4.x, u_input.a.x), -global0.x), u_input.b.x, ~global4.x, var_6.x), vec4<i32>(global4.x, -1i, var_6.x, global4.x) ^ countOneBits(u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(reverseBits(0u), 30u)] - -105f) - _wgslsmith_f_op_f32(var_3.x * 113f)));
}

