struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(true, false, true, false)));

var<private> global1: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(-1368f, 293f), vec2<f32>(2031f, 271f), vec2<f32>(112f, -208f), vec2<f32>(1709f, -409f), vec2<f32>(1857f, 684f), vec2<f32>(-1563f, -1807f), vec2<f32>(1374f, -269f), vec2<f32>(1291f, -462f), vec2<f32>(1087f, 2702f), vec2<f32>(-694f, 361f), vec2<f32>(109f, 909f), vec2<f32>(628f, 1299f), vec2<f32>(-1624f, 678f), vec2<f32>(1680f, -1468f), vec2<f32>(-468f, 652f), vec2<f32>(625f, 753f), vec2<f32>(1316f, 1005f), vec2<f32>(-489f, -1117f), vec2<f32>(-347f, 517f));

var<private> global2: u32 = 1u;

var<private> global3: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true));

var<private> global4: array<i32, 23> = array<i32, 23>(2147483647i, 2147483647i, 4672i, 23549i, 1i, -7093i, -1924i, 1i, 1i, -48307i, 1i, -40624i, 22893i, 2147483647i, -1i, 63030i, -15302i, 18890i, -1i, 30420i, 1i, 1i, 14368i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: bool) -> vec4<f32> {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~(u_input.c.yy << (u_input.c.ww % vec2<u32>(32u)))), vec2<u32>(~u_input.b ^ ~u_input.b, ~u_input.b | (u_input.a | 0u))) | 1u, 12u)];
    let var_1 = vec4<bool>(false, var_0.a.x, true, false && (_wgslsmith_f_op_f32(_wgslsmith_div_f32(-805f, 1251f) * _wgslsmith_f_op_f32(f32(-1f) * -1862f)) != _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(sign(-913f))))));
    var var_2 = Struct_1(select(var_1, global3[_wgslsmith_index_u32(min(~9627u, 0u), 9u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1571f)) + _wgslsmith_f_op_f32(floor(-2812f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-984f)))));
    return vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(597f, -1182f), -1556f)) + _wgslsmith_f_op_f32(f32(-1f) * -453f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(955f))))), _wgslsmith_f_op_f32(701f - 570f), -826f, -237f);
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_3(i32(-1i) * -global4[_wgslsmith_index_u32((u_input.b >> (1u % 32u)) ^ max(u_input.a, 1u), 23u)], arg_0));
    let var_1 = Struct_1(!select(!global3[_wgslsmith_index_u32(1u, 9u)], vec4<bool>(all(vec3<bool>(arg_0, arg_0, arg_0)), arg_0 & false, any(vec3<bool>(arg_0, arg_0, true)), arg_0), select(select(global3[_wgslsmith_index_u32(36726u, 9u)], vec4<bool>(false, false, true, true), global3[_wgslsmith_index_u32(u_input.a, 9u)]), select(global3[_wgslsmith_index_u32(4294967295u, 9u)], global3[_wgslsmith_index_u32(u_input.c.x, 9u)], global3[_wgslsmith_index_u32(51910u, 9u)]), select(global3[_wgslsmith_index_u32(76929u, 9u)], global3[_wgslsmith_index_u32(u_input.b, 9u)], global3[_wgslsmith_index_u32(21222u, 9u)]))));
    var var_2 = 1000f;
    return _wgslsmith_add_i32(-42372i, global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.c.x << (u_input.a % 32u), _wgslsmith_dot_vec2_u32(u_input.c.yz, u_input.c.xx)), ~u_input.a), 1u), 23u)]);
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = vec2<i32>(_wgslsmith_sub_i32(-3956i >> (u_input.b % 32u), _wgslsmith_mult_i32(abs(global4[_wgslsmith_index_u32(1u, 23u)]), global4[_wgslsmith_index_u32(u_input.a, 23u)] & func_2(true))), global4[_wgslsmith_index_u32(u_input.c.x, 23u)]);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(1u, 12u)];
    global3 = array<vec4<bool>, 9>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2044f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(233f, -1048f)) * _wgslsmith_f_op_f32(sign(1190f))))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(267f)), -1000f))) < _wgslsmith_f_op_f32(-1f);
    let var_2 = _wgslsmith_clamp_vec2_u32(u_input.c.yx, u_input.c.yz, ~(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, 163743u), u_input.c.wz))));
    let var_3 = !all(vec3<bool>(_wgslsmith_mult_i32(global4[_wgslsmith_index_u32(u_input.a, 23u)], 1i) < _wgslsmith_dot_vec4_i32(vec4<i32>(-46471i, -15165i, global4[_wgslsmith_index_u32(u_input.c.x, 23u)], global4[_wgslsmith_index_u32(u_input.b, 23u)]), vec4<i32>(1i, 0i, 1i, global4[_wgslsmith_index_u32(27300u, 23u)])), true, func_1(627f) <= _wgslsmith_mod_u32(1u, 4294967295u)));
    global0 = array<Struct_1, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(-867f, countOneBits(u_input.a), _wgslsmith_sub_u32(u_input.a, 4294967295u), var_2);
}

