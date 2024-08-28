struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: bool,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_4 = Struct_4(Struct_3(0i, true, false, 17397u));

var<private> global2: array<vec4<u32>, 19>;

var<private> global3: array<i32, 8>;

var<private> global4: array<i32, 31>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = select(1i, global3[_wgslsmith_index_u32(global1.a.d, 8u)], true);
    global1 = Struct_4(Struct_3(global1.a.a, true, all(select(!vec4<bool>(false, false, false, arg_0.c), select(vec4<bool>(false, global1.a.c, false, arg_0.b), vec4<bool>(true, global1.a.b, true, false), vec4<bool>(true, arg_0.b, arg_0.c, false)), vec4<bool>(false, true, true, false))), 4294967295u));
    var var_1 = Struct_4(global1.a);
    var var_2 = 0u;
    global0 = Struct_2(global0.b, Struct_1(global0.b.a, _wgslsmith_f_op_f32(-global0.b.d), vec2<i32>(-1i) * -countOneBits(global0.a.c), 1647f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1478f));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_5 {
    return Struct_5(vec4<bool>((arg_1.b.b >= _wgslsmith_f_op_f32(func_3(Struct_3(arg_1.b.c.x, arg_0, false, u_input.a.x)))) && arg_0, true, true, !arg_0));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_5) -> f32 {
    let var_0 = _wgslsmith_div_f32(-145f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(arg_1.d + 661f))), _wgslsmith_f_op_f32(f32(-1f) * -293f)));
    let var_1 = _wgslsmith_sub_u32(global1.a.d, firstTrailingBit(_wgslsmith_add_u32(~(~0u), _wgslsmith_dot_vec2_u32(u_input.a.zy, u_input.a.zx))));
    var var_2 = _wgslsmith_div_i32(2147483647i, _wgslsmith_add_i32(~0i, -1i));
    var var_3 = vec4<i32>(-2147483647i, -2147483647i, -(arg_1.c.x | firstLeadingBit(_wgslsmith_div_i32(-1i, 2147483647i))), _wgslsmith_sub_i32(arg_0.c.x, (i32(-1i) * -global3[_wgslsmith_index_u32(21212u, 8u)]) >> (global1.a.d % 32u)));
    global2 = array<vec4<u32>, 19>();
    return arg_1.d;
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: i32, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_2(global0.b, Struct_1(_wgslsmith_f_op_f32(-317f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(816f + arg_1.x))), arg_1.x, global0.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-281f)))));
    return Struct_1(-2140f, _wgslsmith_f_op_f32(floor(var_0.a.d)), vec2<i32>(1i, 42469i), _wgslsmith_f_op_f32(select(-482f, 874f, !any(select(vec3<bool>(arg_0.b, arg_3, false), vec3<bool>(global1.a.c, global1.a.b, arg_3), vec3<bool>(arg_3, true, false))))));
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = func_5(global1.a, vec4<f32>(814f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(Struct_1(1450f, -672f, vec2<i32>(global4[_wgslsmith_index_u32(global1.a.d, 31u)], global1.a.a), -1274f), global0.a, func_2(false, Struct_2(Struct_1(global0.a.d, 633f, global0.a.c, 1779f), global0.a), arg_0.yy))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.b.b)) * 278f) * _wgslsmith_div_f32(1362f, 167f)), global0.b.d), global1.a.a, !(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.b.b, global0.b.a), global0.a.d) <= 1583f));
    let var_1 = Struct_2(func_5(global1.a, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(func_3(global1.a)), _wgslsmith_f_op_f32(var_0.b - 2220f), func_5(Struct_3(-42820i, global1.a.c, false, global1.a.d), vec4<f32>(global0.a.b, var_0.b, var_0.a, 856f), var_0.c.x, global1.a.c).d, _wgslsmith_f_op_f32(ceil(var_0.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.b, -767f, var_0.b, 507f) + vec4<f32>(959f, global0.b.b, var_0.b, -938f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-319f, global0.a.b, 1412f, -967f)))), all(vec2<bool>(global1.a.c, global1.a.c)))), reverseBits(min(countOneBits(-2147483647i), var_0.c.x ^ 67926i)), all(vec3<bool>(false, true, true & global1.a.b))), func_5(Struct_3(~abs(0i), global1.a.b, any(!vec2<bool>(global1.a.c, global1.a.b)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, global1.a.d), select(u_input.a, u_input.a, vec3<bool>(true, global1.a.b, global1.a.c)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1706f, 1f, -1479f, _wgslsmith_f_op_f32(global0.b.a + global0.a.d))), abs(countOneBits(0i << (1u % 32u))), true));
    global4 = array<i32, 31>();
    global3 = array<i32, 8>();
    var var_2 = any(vec3<bool>(global1.a.c, true, _wgslsmith_f_op_f32(round(-1000f)) != var_1.b.d));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(_wgslsmith_mult_vec3_u32(u_input.a, ~u_input.a));
    global0 = func_1(~(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 38861i, global4[_wgslsmith_index_u32(0u, 31u)]), vec3<i32>(1i, global4[_wgslsmith_index_u32(var_0.x, 31u)], 48372i))) | vec3<i32>(1i, min(global3[_wgslsmith_index_u32(u_input.a.x, 8u)], _wgslsmith_div_i32(-8337i, 13765i)), 1i));
    let var_1 = -225f;
    var var_2 = global1.a.a;
    var var_3 = -817f;
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.a), -333f);
    global2 = array<vec4<u32>, 19>();
    var var_5 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1, 526f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1942f * 1636f), global0.a.b), global0.b.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.a, -1967f, global0.b.d) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1, 928f, 1021f)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1, -2285f, global0.b.a)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, 1765f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-260f, -815f, -592f, 427f), vec4<f32>(1000f, var_5.x, -975f, -108f)))))));
}

