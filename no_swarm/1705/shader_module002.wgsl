struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: vec3<bool>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<bool> = vec3<bool>(true, true, true);

var<private> global2: array<vec3<bool>, 30> = array<vec3<bool>, 30>(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false));

var<private> global3: array<u32, 10>;

var<private> global4: array<vec3<bool>, 9>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: bool, arg_1: Struct_3) -> f32 {
    let var_0 = Struct_3(countOneBits(vec3<i32>(-1i) * -select(arg_1.a, vec3<i32>(-15438i, 34799i, arg_1.a.x), global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(55544u, 10u)], 9u)])));
    var var_1 = firstLeadingBit(vec3<i32>(arg_1.a.x, 1i, _wgslsmith_div_i32(20340i, u_input.c << (global3[_wgslsmith_index_u32(53831u, 10u)] % 32u)) ^ _wgslsmith_add_i32(0i, var_0.a.x)));
    var_1 = vec3<i32>(-firstTrailingBit(var_0.a.x), var_0.a.x, abs(min(-27285i, -arg_1.a.x)) | ~(-25037i));
    global3 = array<u32, 10>();
    var var_2 = abs(var_1.x | u_input.a);
    return _wgslsmith_f_op_f32(f32(-1f) * -2639f);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<bool>) -> vec4<bool> {
    var var_0 = u_input.b << (~1u % 32u);
    var_0 = u_input.b;
    return vec4<bool>(any(!(!(!vec3<bool>(arg_1.x, false, true)))), all(select(vec2<bool>(global1.x, arg_1.x), select(!arg_1.xy, arg_1.zy, vec2<bool>(global1.x, global1.x)), select(vec2<bool>(true, global1.x), select(vec2<bool>(false, arg_1.x), global1.zz, vec2<bool>(false, false)), global1.xy))), any(arg_1.zy) & any(select(!global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 10u)], 30u)], select(vec3<bool>(arg_1.x, global1.x, true), vec3<bool>(true, arg_1.x, global1.x), false), select(global4[_wgslsmith_index_u32(u_input.b, 9u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(568u, 10u)], 30u)], global2[_wgslsmith_index_u32(1u, 30u)]))), any(select(select(select(arg_1, vec3<bool>(global1.x, true, true), global2[_wgslsmith_index_u32(u_input.b, 30u)]), select(vec3<bool>(global1.x, arg_1.x, true), vec3<bool>(false, global1.x, false), arg_1), global1.x), global4[_wgslsmith_index_u32(u_input.b, 9u)], !any(vec4<bool>(false, true, global1.x, true)))));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>) -> f32 {
    var var_0 = ~_wgslsmith_mod_i32(u_input.c, ~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-17672i, -2147483647i), i32(-1i) * -6939i, -u_input.c));
    let var_1 = 145f;
    var var_2 = _wgslsmith_mult_vec4_i32(reverseBits(abs(countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, u_input.a, u_input.c, u_input.a), vec4<i32>(u_input.c, u_input.a, u_input.c, 26238i))))), _wgslsmith_sub_vec4_i32(vec4<i32>(select(_wgslsmith_mult_i32(8480i, 1i), _wgslsmith_mult_i32(1i, u_input.a), global1.x), -u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, -3326i, -1i), vec4<i32>(u_input.c, u_input.a, -1i, u_input.c) & vec4<i32>(0i, -12548i, -1i, 0i)), countOneBits(~u_input.c)), countOneBits(vec4<i32>(_wgslsmith_add_i32(-2147483647i, u_input.c), ~u_input.a, 1i, -37147i))));
    global1 = !(!global4[_wgslsmith_index_u32(u_input.b, 9u)]);
    var var_3 = global1.x;
    return var_1;
}

fn func_1() -> f32 {
    global2 = array<vec3<bool>, 30>();
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -520f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global1.x, Struct_3(vec3<i32>(u_input.c, 20332i, 2147483647i)))))) - _wgslsmith_f_op_f32(-1982f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-316f, 486f, true)) + -1298f)))));
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(-318f, _wgslsmith_f_op_f32(sign(-1791f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -544f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(167f + 599f), -112f), any(!vec3<bool>(false, global1.x, global1.x)))), _wgslsmith_f_op_f32(-1f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1020f) * _wgslsmith_f_op_f32(floor(-1081f))), -2288f)), -900f, -785f));
    var var_1 = select(u_input.b, _wgslsmith_mod_u32(36568u, ~firstLeadingBit(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 10u)], 10u)])), !all(vec3<bool>(true, false, any(global1.yy))));
    let var_2 = Struct_1(i32(-1i) * -firstLeadingBit(-2147483647i), ~vec4<u32>(~u_input.b, ~reverseBits(39430u), (global3[_wgslsmith_index_u32(1u, 10u)] ^ 26809u) | ~global3[_wgslsmith_index_u32(0u, 10u)], u_input.b), 172f);
    return _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(abs(var_2.c)), func_3(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a, u_input.c, -1i, -36427i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, var_2.a, var_2.a, u_input.c), vec4<i32>(-56700i, var_2.a, u_input.c, -24494i))), _wgslsmith_sub_i32(_wgslsmith_add_i32(-2147483647i, var_2.a), ~u_input.a), u_input.c, -32519i), !(!global4[_wgslsmith_index_u32(min(global3[_wgslsmith_index_u32(87768u, 10u)], u_input.b), 9u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1000f)), -250f)))));
    let var_0 = Struct_2(vec2<f32>(1f, 1f), global1.x);
    let var_1 = var_0;
    global3 = array<u32, 10>();
    let var_2 = Struct_2(var_1.a, any(!vec3<bool>(false, global1.x != global1.x, -165f < var_0.a.x)));
    let var_3 = u_input.c;
    let var_4 = var_2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a.x))), var_2.a.x) + vec3<f32>(_wgslsmith_f_op_f32(func_2(all(vec4<bool>(var_0.b, var_0.b, true, false)), Struct_3(vec3<i32>(2147483647i, var_3, -5148i)))), _wgslsmith_f_op_f32(select(var_1.a.x, var_1.a.x, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4 - 1519f) - _wgslsmith_f_op_f32(var_1.a.x * 759f)))));
}

