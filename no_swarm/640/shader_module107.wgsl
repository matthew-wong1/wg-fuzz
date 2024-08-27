struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 3> = array<vec2<i32>, 3>(vec2<i32>(1i, -26020i), vec2<i32>(2976i, -20869i), vec2<i32>(-63926i, -52882i));

var<private> global1: Struct_4;

var<private> global2: array<f32, 1>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<bool> {
    let var_0 = global1.b.a.zw;
    var var_1 = _wgslsmith_div_f32(global2[_wgslsmith_index_u32(~var_0.x, 1u)], -1705f);
    global1 = Struct_4(global2[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global1.b.a.x, 0u), vec3<u32>(var_0.x, 101496u, var_0.x)), ~var_0.x)), 1u)], Struct_2(_wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b.x, global1.b.a.x, 0u, u_input.b.x), vec4<u32>(var_0.x, u_input.a.x, 5642u, var_0.x) ^ u_input.a)), all(!vec3<bool>(true, true, global1.b.b)), ~_wgslsmith_div_u32(~var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 81532u), vec2<u32>(0u, global1.b.a.x))), global1.b.d));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(270f, _wgslsmith_div_f32(global2[_wgslsmith_index_u32(19339u, 1u)], global1.a), global1.a, _wgslsmith_f_op_f32(step(451f, global2[_wgslsmith_index_u32(var_0.x, 1u)])))))));
    var var_3 = Struct_3(!(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, global1.b.b, true), vec3<bool>(global1.b.b, false, global1.b.b)))), global1.b);
    return select(!vec4<bool>(all(var_3.a), 1u <= u_input.b.x, true, false), select(!select(!vec4<bool>(var_3.a.x, false, false, var_3.a.x), !vec4<bool>(global1.b.b, true, global1.b.b, true), false), !vec4<bool>(true, false, true, !global1.b.b), vec4<bool>(false, firstTrailingBit(global1.b.c) == _wgslsmith_dot_vec2_u32(u_input.a.zz, vec2<u32>(4294967295u, global1.b.d.a)), !global1.b.b, false)), var_3.b.b);
}

fn func_2() -> Struct_3 {
    global0 = array<vec2<i32>, 3>();
    var var_0 = vec3<bool>(!select(false, all(func_3()), true), global1.b.b, true);
    let var_1 = global1.b.c;
    var_0 = func_3().ywz;
    global2 = array<f32, 1>();
    return Struct_3(!select(vec3<bool>(all(vec4<bool>(false, var_0.x, true, false)), true, true), select(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(false, var_0.x, global1.b.b), var_0.x), select(vec3<bool>(global1.b.b, global1.b.b, false), vec3<bool>(false, var_0.x, var_0.x), global1.b.b), all(var_0.xy)), any(vec3<bool>(global1.b.b, global1.b.b, global1.b.b))), global1.b);
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1361f * 867f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 11821u, arg_1.a), global1.b.a.xxy), 1u)] - _wgslsmith_div_f32(1993f, arg_0)) - global2[_wgslsmith_index_u32(~global1.b.c | _wgslsmith_mod_u32(68677u, global1.b.d.a), 1u)]), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-542f))))));
    var var_2 = 890f;
    var var_3 = var_0.a.x;
    let var_4 = 2147483647i;
    return Struct_2(firstLeadingBit(~(~(~global1.b.a))), any(select(vec3<bool>(var_0.a.x, true, true), func_3().ywz, !global1.b.b & (u_input.a.x < global1.b.d.a))), abs(_wgslsmith_dot_vec4_u32(~var_0.b.a, _wgslsmith_clamp_vec4_u32(~var_0.b.a, vec4<u32>(554u, global1.b.a.x, 3455u, var_0.b.a.x), global1.b.a & u_input.a))), Struct_1(var_0.b.c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 3>();
    let var_0 = func_1(-1216f, global1.b.d);
    let var_1 = _wgslsmith_add_vec3_u32(firstTrailingBit(~vec3<u32>(0u, 34844u, 4294967295u)) | _wgslsmith_mod_vec3_u32(~vec3<u32>(0u, global1.b.d.a, var_0.c), func_1(global1.a, Struct_1(u_input.a.x)).a.xxw), select(vec3<u32>(_wgslsmith_add_u32(4284u, 1u), _wgslsmith_dot_vec3_u32(global1.b.a.xwz, u_input.a.yzx), var_0.a.x), min(vec3<u32>(34010u, global1.b.d.a, 81978u), ~vec3<u32>(17628u, global1.b.c, 1385u)), func_1(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(var_0.c, 1u)], 347f), func_1(global1.a, Struct_1(1u)).d).b)) | abs(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(var_0.d.a, 8346u), firstLeadingBit(global1.b.d.a)), 0u, ~(~var_0.d.a)));
    var var_2 = ~1u;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1079f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(678f, 1124f))), global2[_wgslsmith_index_u32(var_0.d.a, 1u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.a, -589f))))) - _wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(54091u, 1u)], global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, ~var_0.a.x), 1u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0.a.x, 1u)] - global2[_wgslsmith_index_u32(global1.b.a.x, 1u)]) - global2[_wgslsmith_index_u32(~4294967295u, 1u)]), global1.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-1024f, -1000f)), -1374f, 1415f, 1000f))));
    let var_4 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(0i, _wgslsmith_sub_i32(min(-1i, 55430i), select(-2147483647i, -1718i, true))), i32(-1i) * -18210i, ~(~1i)), max(vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(vec3<i32>(33434i, -25876i, -1i), vec3<i32>(1i, 2147483647i, -17146i)), -_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 1i) >> (vec3<u32>(var_0.a.x, var_1.x, global1.b.d.a) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 0i, -11710i), vec3<i32>(2147483647i, -2121i, -23179i)))));
    global0 = array<vec2<i32>, 3>();
    let var_5 = ~var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(_wgslsmith_mult_u32(reverseBits(var_0.a.x), u_input.b.x)));
}

