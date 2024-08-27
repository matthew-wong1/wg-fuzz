struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec4<u32>,
    d: Struct_2,
    e: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: vec3<bool>,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18>;

var<private> global1: vec2<f32>;

var<private> global2: array<vec4<f32>, 5>;

var<private> global3: array<vec3<f32>, 19>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1969f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1.x, arg_1))) + 159f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -490f) * vec2<f32>(930f, arg_0)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2162f), _wgslsmith_f_op_f32(980f - global1.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, arg_0) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -270f))))));
    global2 = array<vec4<f32>, 5>();
    var var_0 = vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a.x, 18u)]);
    var_0 = select(!vec3<bool>(!(!global0[_wgslsmith_index_u32(u_input.a.x, 18u)]), true, select(!var_0.x, u_input.a.x > 0u, true)), vec3<bool>(true, false, false), var_0.x);
    let var_1 = vec2<u32>(~u_input.a.x, 4294967295u);
    return Struct_1(_wgslsmith_sub_i32(-33287i, -_wgslsmith_mod_i32(u_input.b.x, ~(-38772i))));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: vec2<bool>) -> u32 {
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -1174f));
    global3 = array<vec3<f32>, 19>();
    global1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_1.yy)))))));
    global3 = array<vec3<f32>, 19>();
    var var_0 = Struct_2(~_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(arg_0, 62466i, -8085i), ~0i, arg_0, ~arg_0), _wgslsmith_sub_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, -2147483647i, 31786i, 2147483647i) & u_input.b)));
    return 0u;
}

fn func_1() -> vec4<f32> {
    let var_0 = func_2(259f, _wgslsmith_f_op_f32(round(global1.x)));
    let var_1 = var_0.a;
    global3 = array<vec3<f32>, 19>();
    var var_2 = global3[_wgslsmith_index_u32(func_3(1i, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(741f, -451f, -935f))), ~countOneBits(vec3<i32>(-10871i, -31292i, u_input.b.x) | u_input.b.yxz), !vec2<bool>(!global0[_wgslsmith_index_u32(u_input.a.x, 18u)], true)) & u_input.a.x, 19u)];
    global0 = array<bool, 18>();
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), 791f, var_2.x, -215f) - global2[_wgslsmith_index_u32(u_input.a.x, 5u)]) + global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) | vec4<u32>(u_input.a.x, 71755u, 5534u, u_input.a.x)), vec4<u32>(u_input.a.x, ~50043u, ~u_input.a.x, u_input.a.x)), 5u)]), vec4<f32>(344f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global1.x, global1.x)))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-260f - var_2.x), _wgslsmith_f_op_f32(438f - -196f)))), global1.x, -590f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.yzx;
    var var_1 = u_input.b;
    var var_2 = vec3<i32>(u_input.b.x << (u_input.a.x % 32u), var_0.x, u_input.b.x);
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1234f, global1.x, true))), -846f, -1609f));
    var var_4 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1277f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(f32(-1f) * -1247f)) - _wgslsmith_f_op_vec4_f32(func_1()))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(1u, 5u)]) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, -573f, global1.x, 1000f))))));
    let var_5 = select(abs(-u_input.b), select(reverseBits(~u_input.b), select(vec4<i32>(-1i, -1i, u_input.b.x, ~var_2.x), min(vec4<i32>(24049i, -16212i, 41853i, var_0.x), u_input.b), select(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)], true, false), !vec4<bool>(global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(20339u, 18u)], true, global0[_wgslsmith_index_u32(4294967295u, 18u)]), select(vec4<bool>(true, global0[_wgslsmith_index_u32(64748u, 18u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 18u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], global0[_wgslsmith_index_u32(21493u, 18u)], global0[_wgslsmith_index_u32(79802u, 18u)], global0[_wgslsmith_index_u32(u_input.a.x, 18u)]), vec4<bool>(global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(u_input.a.x, 18u)], false, global0[_wgslsmith_index_u32(32126u, 18u)])))), global0[_wgslsmith_index_u32(~abs(_wgslsmith_add_u32(95752u, u_input.a.x)), 18u)]), !vec4<bool>(-1i < var_0.x, !(!global0[_wgslsmith_index_u32(0u, 18u)]), true, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(25346u << (1u % 32u), 43225u), 18u)]));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-u_input.b.x));
}

