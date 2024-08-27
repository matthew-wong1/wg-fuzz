struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: f32,
    e: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13>;

var<private> global1: array<u32, 8>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: bool, arg_3: Struct_2) -> bool {
    var var_0 = _wgslsmith_div_u32(countOneBits(arg_1.b), ((~1u << (0u % 32u)) | (28842u & firstTrailingBit(global1[_wgslsmith_index_u32(u_input.d.x, 8u)]))) & 4294967295u);
    var_0 = abs(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.a, select(max(vec4<u32>(arg_1.b, arg_1.e, 34088u, 50121u), u_input.a), vec4<u32>(global1[_wgslsmith_index_u32(arg_1.e, 8u)], 0u, 16574u, 10002u), select(vec4<bool>(arg_2, true, arg_2, arg_1.a.b.c), vec4<bool>(arg_1.a.b.c, arg_2, arg_1.c.b.c, false), false))), abs(max(~u_input.d.x, 4294967295u & global1[_wgslsmith_index_u32(45471u, 8u)]))));
    let var_1 = vec2<i32>(arg_1.c.a, u_input.b.x);
    global1 = array<u32, 8>();
    var_0 = 84402u;
    return true;
}

fn func_2(arg_0: vec4<i32>, arg_1: f32) -> Struct_2 {
    let var_0 = vec3<bool>(all(select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), true || func_3(global0[_wgslsmith_index_u32(u_input.d.x, 13u)], Struct_3(Struct_2(arg_0.x, Struct_1(-452f, 0i, false, true, vec3<f32>(arg_1, -1000f, arg_1)), arg_1), global1[_wgslsmith_index_u32(u_input.d.x, 8u)], Struct_2(u_input.e, Struct_1(arg_1, 0i, true, false, vec3<f32>(arg_1, -409f, arg_1)), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], 8u)], 13u)]), -839f, global1[_wgslsmith_index_u32(4294967295u, 8u)]), false, Struct_2(-32922i, Struct_1(1227f, 1i, false, true, vec3<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 13u)], 424f, 1928f)), -1186f)))), true, true);
    global0 = array<f32, 13>();
    var var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(55509i, u_input.e, ~(~3809i), min(arg_0.x, 24771i)), arg_0);
    var var_2 = !(!vec4<bool>(any(select(vec3<bool>(false, true, var_0.x), var_0, false)), !(70358i == arg_0.x), any(var_0.yx), var_0.x));
    let var_3 = global0[_wgslsmith_index_u32(~select(~u_input.a.x, ~_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(u_input.d.x, 8u)], u_input.d.x ^ 0u, abs(global1[_wgslsmith_index_u32(u_input.d.x, 8u)])), true), 13u)];
    return Struct_2(-2147483647i, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1, _wgslsmith_div_f32(arg_1, global0[_wgslsmith_index_u32(u_input.a.x, 13u)])))), -12068i, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 13u)])), Struct_3(Struct_2(0i, Struct_1(1062f, arg_0.x, var_2.x, var_0.x, vec3<f32>(-657f, global0[_wgslsmith_index_u32(2457u, 13u)], arg_1)), arg_1), _wgslsmith_add_u32(1u, u_input.d.x), Struct_2(-1i, Struct_1(1000f, var_1.x, var_2.x, true, vec3<f32>(arg_1, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 13u)], 449f)), -1000f), global0[_wgslsmith_index_u32(u_input.a.x, 13u)], 1u), any(vec3<bool>(true, true, true)), Struct_2(u_input.c.x, Struct_1(-1577f, u_input.b.x, true, true, vec3<f32>(global0[_wgslsmith_index_u32(1u, 13u)], -1375f, -500f)), _wgslsmith_f_op_f32(min(-729f, arg_1)))), !(_wgslsmith_add_i32(43566i, arg_0.x) < (u_input.c.x >> (u_input.a.x % 32u))), vec3<f32>(263f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~23988u, 13u)] + _wgslsmith_f_op_f32(round(arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2969f - -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * arg_1)))));
}

fn func_1(arg_0: bool, arg_1: i32) -> vec2<i32> {
    global1 = array<u32, 8>();
    var var_0 = Struct_3(func_2(vec4<i32>(u_input.c.x, 0i, -33347i, 2147483647i) & ~(vec4<i32>(u_input.e, 0i, u_input.e, -39807i) << (vec4<u32>(global1[_wgslsmith_index_u32(54906u, 8u)], 1u, 4294967295u, global1[_wgslsmith_index_u32(62771u, 8u)]) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d.x, 8u)], 13u)] * global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], 13u)]), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.a.x, 13u)])))))), 0u, Struct_2(_wgslsmith_sub_i32(firstTrailingBit(-u_input.e), arg_1), Struct_1(global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1443u, 8u)], 8u)], 8u)], u_input.a.x), 13u)], 1i, true, select(arg_0, false, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(46559u, 13u)]), vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], global0[_wgslsmith_index_u32(1u, 13u)], -811f))))), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(~min(global1[_wgslsmith_index_u32(0u, 8u)], 47363u), 13u)]))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(~u_input.a.x, 13u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -982f)))) + -229f), select(22106u, 16622u, false));
    var var_1 = !select(select(vec4<bool>(var_0.a.b.c, false, false, !var_0.c.b.d), select(select(vec4<bool>(true, true, var_0.a.b.c, var_0.c.b.d), vec4<bool>(arg_0, arg_0, arg_0, arg_0), true), vec4<bool>(false, true, var_0.a.b.d, false), vec4<bool>(true, var_0.c.b.d, var_0.c.b.c, true)), func_2(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, u_input.e, arg_1), vec4<i32>(16263i, 7530i, 7739i, u_input.e)), -1670f).b.d), select(select(vec4<bool>(true, var_0.a.b.d, arg_0, arg_0), select(vec4<bool>(false, var_0.c.b.c, var_0.a.b.d, false), vec4<bool>(true, var_0.a.b.c, true, true), vec4<bool>(var_0.a.b.d, arg_0, arg_0, arg_0)), var_0.c.b.d), vec4<bool>(true, true, any(vec4<bool>(false, true, arg_0, false)), true), vec4<bool>(true, all(vec4<bool>(true, true, true, var_0.a.b.c)), any(vec4<bool>(true, var_0.a.b.c, false, true)), !var_0.a.b.c)), select(!vec4<bool>(true, arg_0, var_0.c.b.c, arg_0), select(vec4<bool>(arg_0, false, false, false), !vec4<bool>(var_0.a.b.c, arg_0, true, var_0.c.b.c), true), -var_0.c.b.b != ~arg_1));
    global1 = array<u32, 8>();
    global0 = array<f32, 13>();
    return min(u_input.c.zy, abs(u_input.b.xz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!(!any(vec2<bool>(false, true))), u_input.c.x >= 20526i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, ~(max(u_input.a.zxx, select(u_input.d, vec3<u32>(1u, 4294967295u, 9555u), vec3<bool>(false, var_0.x, var_0.x))) & vec3<u32>(u_input.a.x, ~0u, global1[_wgslsmith_index_u32(30490u ^ global1[_wgslsmith_index_u32(4294967295u, 8u)], 8u)])), func_1(true, u_input.c.x));
}

