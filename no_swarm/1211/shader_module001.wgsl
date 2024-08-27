struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<u32>,
    d: vec4<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
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

var<private> global0: vec3<u32> = vec3<u32>(56787u, 36459u, 0u);

var<private> global1: bool = true;

var<private> global2: u32 = 7749u;

var<private> global3: array<i32, 23>;

var<private> global4: Struct_1;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    global3 = array<i32, 23>();
    let var_0 = Struct_2(-vec3<i32>(2147483647i, u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 33475i, -4883i, -2147483647i), vec4<i32>(u_input.b, arg_0.a.x, global3[_wgslsmith_index_u32(4294967295u, 23u)], -2147483647i))), _wgslsmith_f_op_vec4_f32(select(arg_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(arg_0.b))) * _wgslsmith_div_vec4_f32(arg_0.b, arg_0.b)), false)), arg_0.c);
    global0 = var_0.c.d;
    let var_1 = firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(~0u, 1u, ~(~22747u)), global4.d));
    global1 = !any(vec2<bool>(true, true)) & false;
    return ~vec4<u32>(17909u, (0u | _wgslsmith_add_u32(arg_0.c.d.x, global0.x)) | global0.x, ~4294967295u, var_1.x);
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: u32) -> Struct_1 {
    global1 = false;
    let var_0 = global4.a.x;
    global3 = array<i32, 23>();
    var var_1 = ~_wgslsmith_mult_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, 23997u, global4.c), ~vec4<u32>(77496u, 16750u, global0.x, 60206u)), ~abs(vec4<u32>(global4.c, global4.c, 0u, 51910u)), (u_input.a.x > u_input.b) | false), _wgslsmith_add_vec4_u32(func_3(Struct_2(vec3<i32>(-2147483647i, -24250i, -1i), vec4<f32>(-252f, global4.a.x, arg_1, 480f), Struct_1(vec3<f32>(-923f, -893f, arg_1), 10694u, arg_2, global4.d))), ~vec4<u32>(4294967295u, global4.d.x, 1u, arg_2) >> (vec4<u32>(global4.d.x, global0.x, 34723u, 83132u) % vec4<u32>(32u))));
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -953f))), global4.a.x)), _wgslsmith_f_op_f32(abs(global4.a.x))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-466f, var_2)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, arg_0.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -745f, -129f))), 0u, arg_2, ~var_1.www | ~(min(vec3<u32>(24513u, var_1.x, 1u), vec3<u32>(47846u, 4294967295u, global0.x)) | (var_1.zyx | global4.d)));
}

fn func_1(arg_0: u32) -> vec2<u32> {
    global4 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global4.a + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-328f, global4.a.x, -920f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.a) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.a.x, global4.a.x, global4.a.x) - vec3<f32>(1728f, global4.a.x, global4.a.x)))), global4.a.x, 119150u);
    global1 = any(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, any(vec2<bool>(false, true))), vec4<bool>(true, true, true, true)));
    var var_0 = ~global4.c;
    let var_1 = vec2<bool>(!(all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false))) | any(vec4<bool>(false, false, true, true))), all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))));
    global2 = arg_0;
    return ~_wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(4294967295u, arg_0)), abs(global0.xx)) & _wgslsmith_sub_vec2_u32(~_wgslsmith_add_vec2_u32(global4.d.zx, ~global4.d.xy), global0.zy);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = vec4<i32>(arg_0.x, _wgslsmith_clamp_i32(abs(firstTrailingBit(_wgslsmith_mod_i32(u_input.a.x, -12934i))), global3[_wgslsmith_index_u32(select(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(arg_1, global4.d.zy), 0u, global0.x), ~func_2(vec3<f32>(-197f, global4.a.x, -380f), -1000f, arg_1.x).b, true), 23u)], select(2400i, select(countOneBits(global3[_wgslsmith_index_u32(arg_1.x, 23u)]), -11753i, true), true)), ~abs(firstTrailingBit(_wgslsmith_clamp_i32(9075i, global3[_wgslsmith_index_u32(global4.c, 23u)], -1i))), -max(-1i, -2147483647i));
    var var_1 = !vec2<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global4.a.x, global4.a.x)), _wgslsmith_f_op_f32(trunc(global4.a.x))) == _wgslsmith_div_f32(global4.a.x, global4.a.x), false);
    let var_2 = global0.x;
    global3 = array<i32, 23>();
    var var_3 = (i32(-1i) * -11342i) < _wgslsmith_add_i32(1i << (~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global4.c, 0u, 57290u), vec4<u32>(arg_1.x, 23625u, 1u, 0u)) % 32u), ~1i);
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-206f, global4.a.x, global4.a.x), _wgslsmith_f_op_vec3_f32(trunc(global4.a)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(292f, global4.a.x, 279f))) + global4.a)), _wgslsmith_mod_u32(91580u, _wgslsmith_dot_vec4_u32(firstTrailingBit(firstLeadingBit(vec4<u32>(14624u, global0.x, 15328u, global0.x))), ~vec4<u32>(65212u, global0.x, 10521u, arg_1.x) ^ (vec4<u32>(arg_1.x, 16698u, 4413u, arg_1.x) | vec4<u32>(arg_1.x, 29816u, global4.c, global0.x)))), _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(global0.x, 0u, 28736u, 0u)), _wgslsmith_sub_vec4_u32(select(vec4<u32>(42646u, 4294967295u, 5856u, 44879u), vec4<u32>(4294967295u, global0.x, arg_1.x, global4.b), var_1.x), vec4<u32>(arg_1.x, 10999u, global4.b, arg_1.x))) << (abs(_wgslsmith_sub_u32(arg_1.x ^ global4.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global4.d.x, 4294967295u, 0u, 8087u), vec4<u32>(global0.x, 4294967295u, arg_1.x, global0.x)))) % 32u), global4.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global4 = func_4(~(-_wgslsmith_div_vec2_i32(u_input.a.yy, u_input.a.yx)) >> (global0.zx % vec2<u32>(32u)), func_1(~_wgslsmith_dot_vec2_u32(global0.xz, global4.d.yz)));
    let x = u_input.a;
    s_output = StorageBuffer(7277u);
}

