struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: vec2<u32> = vec2<u32>(1u, 39956u);

var<private> global2: array<vec4<i32>, 24>;

var<private> global3: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(1226f, true), Struct_1(-1574f, true), Struct_1(-917f, true), Struct_1(-995f, false), Struct_1(-673f, false), Struct_1(494f, false), Struct_1(-1267f, true), Struct_1(-291f, false), Struct_1(-1856f, true), Struct_1(506f, false), Struct_1(-950f, true), Struct_1(-118f, false), Struct_1(-1000f, true), Struct_1(1251f, false), Struct_1(-1103f, false));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> bool {
    global1 = _wgslsmith_mod_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(34289u, u_input.b.x, global1.x, 26875u), ~vec4<u32>(u_input.b.x, 0u, u_input.c.x, 1804u)), ~(~23730u)), vec2<u32>(_wgslsmith_add_u32(62847u, _wgslsmith_div_u32(global1.x, _wgslsmith_mult_u32(u_input.b.x, u_input.c.x))), ~u_input.c.x));
    global1 = u_input.c.yy;
    let var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(arg_1.a)))), arg_1.a)), true);
    var var_1 = global0[_wgslsmith_index_u32(1u, 15u)];
    var var_2 = u_input.a.yxy;
    return !any(vec2<bool>(23311u >= _wgslsmith_clamp_u32(0u, 9026u, u_input.c.x), arg_2));
}

fn func_1(arg_0: u32) -> f32 {
    global2 = array<vec4<i32>, 24>();
    var var_0 = !(!(!(!(u_input.e.x < 68195i))));
    global0 = array<Struct_1, 15>();
    var_0 = ((true & (_wgslsmith_div_i32(u_input.a.x, u_input.e.x) == -u_input.e.x)) || ((firstTrailingBit(-2147483647i) ^ _wgslsmith_clamp_i32(1i, -85063i, u_input.e.x)) == 1i)) && (func_2(u_input.d, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1386f), select(true, false, true)), true, -u_input.d << (arg_0 % 32u)) | false);
    let var_1 = 745f;
    return -369f;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    global0 = array<Struct_1, 15>();
    var var_1 = global1.x;
    global1 = countOneBits(~u_input.c.zw);
    var var_2 = firstTrailingBit(countOneBits(select(firstTrailingBit(1i), u_input.a.x, false)) ^ 1i);
    return global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(19772u, 18366u << (u_input.c.x % 32u)), 15u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(max(-1000f, -308f))), _wgslsmith_f_op_f32(-501f - -1313f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -452f), _wgslsmith_f_op_f32(min(424f, 520f))))), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false))));
    global1 = u_input.b;
    global3 = array<Struct_1, 15>();
    var var_1 = func_3(vec3<f32>(-1993f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1923f, -1000f, false)))), _wgslsmith_f_op_f32(func_1(~3164u))), _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - 319f)))), global0[_wgslsmith_index_u32(max(_wgslsmith_div_u32(u_input.b.x, abs(0u)), ~(u_input.c.x >> (_wgslsmith_dot_vec3_u32(u_input.c.yxw, u_input.c.yzy) % 32u))), 15u)]);
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-597f, 354f) + vec2<f32>(var_0.a, var_0.a)) + vec2<f32>(-187f, var_0.a)), _wgslsmith_div_vec2_f32(vec2<f32>(-737f, 1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.a))), true)))));
    var var_3 = func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, _wgslsmith_f_op_f32(-var_2.x), func_3(vec3<f32>(var_2.x, var_0.a, -224f), global3[_wgslsmith_index_u32(7963u, 15u)]).a))), func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), 181f, _wgslsmith_f_op_f32(-535f + 298f))), Struct_1(var_2.x, true)));
    var var_4 = _wgslsmith_sub_vec3_i32(-u_input.e, ~vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a.yx, u_input.a.wx) ^ 77561i, 24201i, u_input.e.x));
    global1 = u_input.b;
    var var_5 = func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_3.a)), 128f, _wgslsmith_f_op_f32(-1f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.a), -552f, -296f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1662f, var_0.a, var_1.a), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-867f, var_2.x, var_3.a), vec3<f32>(var_0.a, -993f, 1971f))), true)))), Struct_1(1000f, true));
    let x = u_input.a;
    s_output = StorageBuffer(1000f, _wgslsmith_add_i32(-_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_4.x, u_input.a.x, var_4.x, -2147483647i), u_input.a), var_4.x), i32(-1i) * -2147483647i), u_input.e);
}

