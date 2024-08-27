struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<f32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(false, false));

var<private> global1: array<bool, 13> = array<bool, 13>(false, false, false, false, true, true, true, false, false, false, true, true, true);

var<private> global2: array<Struct_1, 26>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_4) -> u32 {
    var var_0 = arg_2.a;
    var var_1 = (-1i == ~(~73089i << (arg_1.b % 32u))) || any(!select(vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 13u)], global0.a.x), select(vec3<bool>(global1[_wgslsmith_index_u32(arg_1.b, 13u)], global1[_wgslsmith_index_u32(u_input.a.x, 13u)], global1[_wgslsmith_index_u32(arg_1.b, 13u)]), vec3<bool>(false, false, true), vec3<bool>(arg_1.a.a.x, arg_1.a.a.x, global0.a.x)), vec3<bool>(false, true, false)));
    let var_2 = arg_2;
    var var_3 = vec4<bool>(!all(!select(vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 13u)], global0.a.x), vec3<bool>(false, true, false), arg_1.a.a.x)), arg_1.a.a.x, true, true);
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, arg_0) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) - vec2<f32>(arg_0, arg_0)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-312f, 410f))), vec2<bool>(var_3.x, arg_1.a.a.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) + vec2<f32>(-797f, arg_0)), vec2<f32>(1097f, arg_0))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(347f, arg_0) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, 804f)))))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(401f, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, -774f), _wgslsmith_f_op_f32(ceil(arg_0)))))));
    return arg_1.b;
}

fn func_2(arg_0: i32, arg_1: vec4<i32>) -> bool {
    let var_0 = func_3(_wgslsmith_f_op_f32(abs(-161f)), Struct_2(Struct_1(vec2<bool>(true, true)), reverseBits(u_input.a.x)), Struct_4(arg_1.x >> (~u_input.a.x % 32u)));
    global1 = array<bool, 13>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -498f), _wgslsmith_f_op_f32(f32(-1f) * -847f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2216f))), 1f));
    global1 = array<bool, 13>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_1.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_1.x)))), -596f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, 555f)))));
    return true;
}

fn func_1() -> Struct_1 {
    global2 = array<Struct_1, 26>();
    let var_0 = 23802u;
    global0 = Struct_1(!vec2<bool>(func_2(-26700i, -vec4<i32>(1i, 15956i, -80105i, 3137i)), true));
    let var_1 = vec3<i32>(firstTrailingBit(-5730i), _wgslsmith_mod_i32(17113i, 2147483647i), -1i);
    var var_2 = firstLeadingBit(var_0);
    return Struct_1(!select(vec2<bool>(true, true), select(!vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 13u)]), !global0.a, global0.a.x), func_2(1i, ~vec4<i32>(-49273i, 14301i, 0i, var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1178f, 739f) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-441f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(569f - 191f), _wgslsmith_f_op_f32(1055f + 1227f)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-232f, 1200f)))))));
    global0 = global2[_wgslsmith_index_u32(~1u, 26u)];
    var var_1 = true || !(true | global0.a.x);
    var var_2 = !vec4<bool>(all(!select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 13u)], false, global0.a.x), vec3<bool>(false, true, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 13u)], false, true))), !global1[_wgslsmith_index_u32(~u_input.a.x, 13u)], false, 58047u != firstTrailingBit(u_input.a.x));
    var_1 = _wgslsmith_sub_i32(0i, ~(-(~(-47098i)))) < _wgslsmith_sub_i32(max(_wgslsmith_add_i32(~2147483647i, _wgslsmith_mult_i32(-2147483647i, 0i)), abs(2147483647i)), _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i)));
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(745f))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, countOneBits(u_input.a.x) >> (1u % 32u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-227f, -673f) * vec2<f32>(var_0.x, -414f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, var_0.x), vec2<f32>(946f, -591f), false)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, 368f), vec2<f32>(239f, var_0.x), global0.a.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))), firstTrailingBit(min(vec3<i32>(63309i, 23494i, 37738i), vec3<i32>(1i, -2147483647i, -45456i)) << (u_input.a.wyw % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -844f)), 629f, var_0.x <= _wgslsmith_f_op_f32(-var_0.x)))));
}

