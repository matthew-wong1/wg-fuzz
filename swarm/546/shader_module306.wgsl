struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<bool>,
    d: vec3<bool>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: u32,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<u32, 5> = array<u32, 5>(34156u, 1u, 10394u, 0u, 56391u);

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(4294967295u, vec3<u32>(4294967295u, 42953u, 46937u)), Struct_1(1u, vec3<u32>(9997u, 4294967295u, 1u)), Struct_1(1u, vec3<u32>(1u, 40900u, 1u)), Struct_1(65666u, vec3<u32>(0u, 0u, 4294967295u)), Struct_1(9486u, vec3<u32>(35561u, 1u, 8098u)), Struct_1(4294967295u, vec3<u32>(1u, 1u, 9642u)), Struct_1(22590u, vec3<u32>(1u, 1u, 42501u)), Struct_1(44792u, vec3<u32>(28384u, 4294967295u, 57798u)), Struct_1(1u, vec3<u32>(14883u, 73335u, 1u)), Struct_1(8336u, vec3<u32>(0u, 0u, 1u)), Struct_1(1u, vec3<u32>(50271u, 1u, 138325u)), Struct_1(14364u, vec3<u32>(1u, 36063u, 8162u)), Struct_1(4294967295u, vec3<u32>(5811u, 4294967295u, 125859u)), Struct_1(1u, vec3<u32>(16939u, 12021u, 7509u)), Struct_1(0u, vec3<u32>(0u, 74776u, 36758u)), Struct_1(38640u, vec3<u32>(0u, 26846u, 33238u)), Struct_1(4294967295u, vec3<u32>(1u, 1u, 35801u)), Struct_1(0u, vec3<u32>(0u, 1u, 4294967295u)), Struct_1(27546u, vec3<u32>(15652u, 10316u, 1u)), Struct_1(44803u, vec3<u32>(4294967295u, 43634u, 61947u)), Struct_1(20778u, vec3<u32>(4294967295u, 1u, 4294967295u)), Struct_1(0u, vec3<u32>(20088u, 0u, 4294967295u)), Struct_1(3116u, vec3<u32>(0u, 0u, 4294967295u)), Struct_1(0u, vec3<u32>(1u, 14944u, 34119u)), Struct_1(0u, vec3<u32>(63732u, 0u, 4294967295u)));

var<private> global3: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(77361u, vec3<u32>(8544u, 35090u, 0u)), Struct_1(4294967295u, vec3<u32>(14891u, 99674u, 4294967295u)), Struct_1(1u, vec3<u32>(4294967295u, 0u, 10751u)), Struct_1(1u, vec3<u32>(7333u, 14374u, 9778u)), Struct_1(22875u, vec3<u32>(41440u, 0u, 70938u)), Struct_1(0u, vec3<u32>(1u, 4294967295u, 0u)), Struct_1(1u, vec3<u32>(4294967295u, 4294967295u, 1u)));

var<private> global4: array<vec3<i32>, 19>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_4, arg_3: vec3<u32>) -> f32 {
    var var_0 = ~0u;
    let var_1 = !vec4<bool>(any(!(!vec4<bool>(arg_2.b.e, false, false, arg_2.b.e))), true, false, arg_2.b.e);
    let var_2 = !select(var_1.wwx, vec3<bool>(true, true, arg_2.b.e), any(vec3<bool>(!var_1.x, true, true)));
    global3 = array<Struct_1, 7>();
    var_0 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.b.b, arg_2.a.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.a.x)) * _wgslsmith_f_op_f32(max(1000f, arg_2.a.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -815f) + _wgslsmith_f_op_f32(-1399f + 1294f)))));
}

fn func_2() -> u32 {
    global0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(20911u, u_input.d, Struct_4(vec2<f32>(global0.x, 929f), Struct_3(global1[_wgslsmith_index_u32(23310u, 5u)], global0.x, 1u, 42276i, true), u_input.b.yy), vec3<u32>(u_input.d, u_input.d, global1[_wgslsmith_index_u32(u_input.d, 5u)]))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -316f)), _wgslsmith_div_vec2_f32(vec2<f32>(-414f, -1148f), vec2<f32>(638f, global0.x)))))))));
    let var_0 = _wgslsmith_f_op_f32(343f * _wgslsmith_f_op_f32(round(global0.x)));
    let var_1 = u_input.b;
    var var_2 = any(vec3<bool>(true, true, true)) || (!(any(vec3<bool>(false, false, false)) & true) || false);
    global1 = array<u32, 5>();
    return 27796u | _wgslsmith_div_u32(u_input.d & _wgslsmith_clamp_u32(0u, select(0u, u_input.d, false), _wgslsmith_div_u32(0u, global1[_wgslsmith_index_u32(4294967295u, 5u)])), firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(4016u, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 5u)], 6397u), vec2<u32>(29025u, 1u)))));
}

fn func_1() -> vec4<bool> {
    global4 = array<vec3<i32>, 19>();
    let var_0 = global1[_wgslsmith_index_u32(~(~abs(u_input.d)), 5u)];
    global2 = array<Struct_1, 25>();
    global1 = array<u32, 5>();
    var var_1 = vec4<u32>(~30203u, 4294967295u, func_2(), _wgslsmith_dot_vec2_u32(~vec2<u32>(66721u, ~global1[_wgslsmith_index_u32(1u, 5u)]), vec2<u32>(abs(~u_input.d), 0u)));
    return vec4<bool>(false, false, true & all(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), true)), true);
}

fn func_4(arg_0: Struct_2) -> vec2<i32> {
    return u_input.b.xx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~_wgslsmith_sub_vec2_i32(u_input.b.zx, vec2<i32>(1715i, _wgslsmith_dot_vec4_i32(u_input.b, u_input.b))), func_4(Struct_2(Struct_1(max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20998u, 5u)], 5u)], 5u)], u_input.d), vec3<u32>(60015u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(39016u, 5u)], 5u)], u_input.d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(559f, global0.x, global0.x, -794f))) - vec4<f32>(-562f, -1000f, 1885f, -719f)), vec2<bool>(true, true), vec3<bool>(any(vec4<bool>(true, false, false, false)), -619f < global0.x, true), func_1())), ((~u_input.d << (52822u % 32u)) != _wgslsmith_dot_vec2_u32(vec2<u32>(0u, global1[_wgslsmith_index_u32(1u, 5u)]), vec2<u32>(1u, global1[_wgslsmith_index_u32(u_input.d, 5u)]))) | all(func_1().zzz));
    global4 = array<vec3<i32>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_add_vec4_u32(~(vec4<u32>(global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(32217u, 5u)], 1u, 4294967295u) << (vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(u_input.d, 5u)], u_input.d, u_input.d) % vec4<u32>(32u))), firstTrailingBit(vec4<u32>(1u, u_input.d, 47670u, 0u) << (vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 5u)], global1[_wgslsmith_index_u32(u_input.d, 5u)], 4294967295u, 59721u) % vec4<u32>(32u))))), ~(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(u_input.d, 5u)], 27022u, 67256u), vec3<u32>(u_input.d, 20919u, u_input.d), vec3<u32>(u_input.d, 4294967295u, 14525u))) & _wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.d, 4294967295u), abs(vec3<u32>(u_input.d, global1[_wgslsmith_index_u32(u_input.d, 5u)], global1[_wgslsmith_index_u32(1u, 5u)])))));
}

