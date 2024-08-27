struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3>;

var<private> global1: i32 = 825i;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec3<i32>) -> f32 {
    let var_0 = 23335u;
    var var_1 = vec3<i32>(firstLeadingBit(arg_1), abs(-max(-2147483647i, -2147483647i) | -arg_0.a), ~1i);
    let var_2 = _wgslsmith_mod_u32(~abs(u_input.a) & ~(~(var_0 ^ u_input.b.x)), 41965u);
    global0 = array<Struct_2, 3>();
    global0 = array<Struct_2, 3>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-413f - -382f) - _wgslsmith_f_op_f32(f32(-1f) * -499f)), _wgslsmith_div_f32(-1000f, -731f))) * -1168f);
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: vec2<f32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0.a)), _wgslsmith_f_op_f32(-171f * _wgslsmith_f_op_f32(func_3(Struct_1(-1i), -27310i, select(vec3<i32>(u_input.c, 35266i, u_input.d.x), vec3<i32>(2147483647i, -41228i, u_input.d.x), vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x))))), 1186f));
    let var_1 = global0[_wgslsmith_index_u32(~4294967295u, 3u)];
    var var_2 = arg_0.b.xx;
    global0 = array<Struct_2, 3>();
    let var_3 = vec3<bool>(-326f != _wgslsmith_f_op_f32(arg_1 * arg_1), true, true);
    return arg_0.b;
}

fn func_1(arg_0: u32, arg_1: Struct_4) -> Struct_4 {
    var var_0 = arg_1.a;
    global1 = i32(-1i) * -select(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -2147483647i, -1i) | vec3<i32>(17496i, -2147483647i, u_input.c), -vec3<i32>(38646i, u_input.d.x, 1i)), _wgslsmith_add_i32(~u_input.c, 1i), any(vec3<bool>(arg_1.a.b.x, var_0.b.x, true)));
    var_0 = Struct_3(653f, select(select(vec4<bool>(true, all(var_0.b.wx), true, true), vec4<bool>(var_0.b.x, !var_0.b.x, var_0.b.x, !arg_1.a.b.x), any(vec3<bool>(false, var_0.b.x, arg_1.a.b.x))), vec4<bool>(true, arg_1.a.b.x, (41800u < u_input.a) & !arg_1.a.b.x, arg_1.a.b.x), func_2(Struct_3(_wgslsmith_f_op_f32(min(var_0.a, 1754f)), var_0.b), -266f, _wgslsmith_div_vec2_f32(vec2<f32>(-345f, var_0.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(-648f, 301f) - arg_1.b.yx)))));
    var var_1 = countOneBits(u_input.d);
    let var_2 = arg_1;
    return arg_1;
}

fn func_4(arg_0: Struct_4, arg_1: i32) -> Struct_3 {
    var var_0 = global0[_wgslsmith_index_u32(abs(countOneBits(1u)) >> (0u % 32u), 3u)];
    var var_1 = -reverseBits(arg_1);
    var var_2 = _wgslsmith_f_op_vec3_f32(-arg_0.b);
    var_1 = arg_1;
    let var_3 = Struct_4(arg_0.a, _wgslsmith_f_op_vec3_f32(-arg_0.b), 1074f);
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.d.x);
    let var_1 = Struct_4(func_4(func_1(select(countOneBits(54116u), 0u, true), Struct_4(Struct_3(430f, vec4<bool>(false, false, false, true)), vec3<f32>(-1672f, -271f, 1095f), 1f)), -_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.a, -10414i, 49773i, 32829i), vec4<i32>(u_input.d.x, 2147483647i, 15289i, u_input.d.x)), ~vec4<i32>(u_input.d.x, var_0.a, 0i, 35363i))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1065f, 1218f, -181f) * vec3<f32>(757f, -247f, -460f)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-696f, 1000f, -1865f), vec3<f32>(-948f, -1695f, 1962f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2131f, -1331f, -3209f) + vec3<f32>(568f, 1489f, -482f)), vec3<f32>(-152f, 1242f, 2390f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-833f, -1495f, -1090f))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-359f - -686f), _wgslsmith_div_f32(-293f, 1397f)), true)), vec3<bool>(true, true, true))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1065f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1518f), -687f)));
    var var_2 = var_1.a.b.zy;
    var_2 = var_1.a.b.yy;
    var_2 = var_1.a.b.ww;
    let var_3 = func_1(_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(27425u, u_input.b.x), 56776u ^ u_input.a), _wgslsmith_add_u32(69223u, u_input.a & u_input.b.x)), ~4294967295u), var_1);
    var var_4 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-173f, _wgslsmith_f_op_f32(trunc(var_3.b.x)), var_3.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-491f, var_3.a.a, -294f)))), all(func_4(Struct_4(Struct_3(1000f, var_4.b), var_1.b, var_3.a.a), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 33202i, -2147483647i), vec3<i32>(-8579i, u_input.d.x, 33241i))).b))), 41762u, ~firstLeadingBit(u_input.a), var_1.a.a);
}

