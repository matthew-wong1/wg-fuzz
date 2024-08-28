struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(549f, -1387f);

var<private> global1: bool;

var<private> global2: array<vec4<i32>, 10>;

var<private> global3: array<f32, 27> = array<f32, 27>(-432f, -251f, -1504f, 1719f, -255f, 846f, 1792f, 226f, 1080f, -1003f, -110f, -273f, -355f, -667f, 1488f, 1627f, -1006f, -826f, -1006f, -373f, 155f, -1180f, 370f, 1556f, 400f, -350f, 357f);

var<private> global4: f32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> bool {
    global0 = vec2<f32>(global3[_wgslsmith_index_u32(~1u, 27u)], 2044f);
    let var_0 = vec2<i32>(-1i, reverseBits(-1325i)) & ~(~u_input.c.wx);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-447f, global0.x, global3[_wgslsmith_index_u32(4294967295u, 27u)], -1094f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1209f, -1071f, -277f, -2428f), vec4<f32>(global3[_wgslsmith_index_u32(u_input.b, 27u)], 511f, -1909f, 106f), vec4<bool>(true, true, false, arg_1.b.x))))))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - -377f)) - -747f), global3[_wgslsmith_index_u32(1u, 27u)], _wgslsmith_f_op_f32(trunc(-1893f)), global0.x));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3[_wgslsmith_index_u32(1u, 27u)], global3[_wgslsmith_index_u32(17543u, 27u)], var_1.x, var_1.x), vec4<f32>(global0.x, global0.x, global3[_wgslsmith_index_u32(1u, 27u)], global3[_wgslsmith_index_u32(4294967295u, 27u)]))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -889f, global0.x, var_1.x) * vec4<f32>(var_1.x, 1956f, global0.x, 535f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1306f, 551f, -868f, 1000f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, global0.x, -1515f, global3[_wgslsmith_index_u32(arg_0, 27u)]) + vec4<f32>(global3[_wgslsmith_index_u32(arg_0, 27u)], -602f, -349f, 328f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(u_input.b, 27u)], -1100f, global3[_wgslsmith_index_u32(arg_0, 27u)], global3[_wgslsmith_index_u32(arg_0, 27u)])))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global0.x)))));
    return all(select(vec3<bool>(all(vec2<bool>(arg_1.a.x, true)), arg_1.a.x, !any(arg_1.b)), !arg_1.b, vec3<bool>(false, arg_1.a.x & all(vec2<bool>(arg_1.b.x, arg_1.b.x)), all(arg_1.b))));
}

fn func_2(arg_0: vec4<f32>) -> Struct_2 {
    let var_0 = !vec2<bool>(~(-15849i) > -u_input.c.x, !func_3(~u_input.b, Struct_2(vec2<bool>(false, false), vec3<bool>(true, false, false))));
    let var_1 = vec2<u32>(~_wgslsmith_add_u32(~_wgslsmith_mod_u32(u_input.b, 12864u), u_input.b), 18770u);
    global1 = true;
    global4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.x))), arg_0.x));
    global2 = array<vec4<i32>, 10>();
    return Struct_2(select(vec2<bool>(true, var_0.x), select(!(!var_0), select(var_0, !var_0, var_0), !vec2<bool>(var_0.x, var_0.x)), var_0.x), vec3<bool>(var_0.x, var_0.x != true, any(select(!vec3<bool>(true, var_0.x, var_0.x), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, true, false), vec3<bool>(var_0.x, false, true)), true))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> i32 {
    var var_0 = 54338u;
    let var_1 = vec3<i32>(u_input.a.x, -44364i, u_input.c.x);
    let var_2 = arg_1;
    let var_3 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(417f, global0.x, global3[_wgslsmith_index_u32(0u, 27u)], _wgslsmith_f_op_f32(-global0.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(446f, global3[_wgslsmith_index_u32(4294967295u, 27u)], global3[_wgslsmith_index_u32(4294967295u, 27u)], 465f) + vec4<f32>(global0.x, global3[_wgslsmith_index_u32(19409u, 27u)], -1549f, global0.x)), vec4<f32>(-1933f, 696f, -396f, global0.x)))));
    let var_4 = ~(firstLeadingBit(~4294967295u) & (~63581u & ~u_input.b)) ^ _wgslsmith_mod_u32(~_wgslsmith_mult_u32(2839u, u_input.b), u_input.b);
    return 21420i;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    var var_0 = firstTrailingBit(min(u_input.c.xzy, vec3<i32>(-46475i, ~u_input.a.x, u_input.a.x)) ^ (~vec3<i32>(-2147483647i, 1i, arg_2.a) << (min(~vec3<u32>(1u, u_input.b, 0u), ~vec3<u32>(u_input.b, u_input.b, 0u)) % vec3<u32>(32u))));
    var var_1 = Struct_1(~arg_2.a, any(!vec2<bool>(false, arg_0.b.x)));
    global4 = _wgslsmith_f_op_f32(f32(-1f) * -372f);
    var var_2 = Struct_1(-5244i, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(-1090f, global0.x), -368f))) == global3[_wgslsmith_index_u32(u_input.b, 27u)]);
    global2 = array<vec4<i32>, 10>();
    return Struct_2(vec2<bool>(false, false), arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<i32>, 10>();
    var var_0 = func_4(Struct_2(vec2<bool>(true, true), vec3<bool>(true, true, true)), false, Struct_1(_wgslsmith_clamp_i32(func_1(Struct_1(u_input.a.x, false), Struct_2(vec2<bool>(false, true), vec3<bool>(true, true, false))), -(12661i | u_input.c.x), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-34976i, u_input.c.x, 37879i, u_input.c.x), global2[_wgslsmith_index_u32(u_input.b, 10u)]), ~u_input.c)), any(vec2<bool>(true, true))));
    var var_1 = Struct_1(0i, var_0.b.x || true);
    let var_2 = any(!vec3<bool>(false, all(vec4<bool>(false, var_0.a.x, true, var_1.b)), var_0.b.x));
    global1 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-vec4<i32>(countOneBits(0i), _wgslsmith_div_i32(var_1.a, 2147483647i), -30156i, _wgslsmith_clamp_i32(u_input.c.x, -1i, 68559i))), vec2<f32>(-474f, -573f), ~select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 4294967295u, 4077u)), _wgslsmith_div_vec3_u32(max(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(20007u, 1115u, u_input.b)), vec3<u32>(1u, 1u, 30398u)), true | func_4(Struct_2(var_0.b.yy, var_0.b), var_1.b, Struct_1(u_input.c.x, true)).a.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(720f, global0.x) - vec2<f32>(global3[_wgslsmith_index_u32(u_input.b, 27u)], 299f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-752f, 597f) * vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 27u)], global0.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, global0.x))))), _wgslsmith_f_op_f32(-1000f + -525f));
}

