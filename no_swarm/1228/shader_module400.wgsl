struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -583f;

var<private> global1: array<u32, 32>;

var<private> global2: array<Struct_3, 23>;

var<private> global3: Struct_1;

var<private> global4: array<bool, 2> = array<bool, 2>(false, false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: vec3<u32>) -> f32 {
    global3 = Struct_1(arg_0);
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(arg_2.a));
    let var_1 = _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(~arg_0.x, ~2404u), min(30816u, 1u)) ^ vec2<u32>(_wgslsmith_div_u32(0u & global3.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_3.x, 32u)], 32u)] << (global3.a.x % 32u)), 1u), ~select(_wgslsmith_mult_vec2_u32(~arg_0.xx, vec2<u32>(4294967295u, 88581u)), vec2<u32>(4294967295u, 8757u), global1[_wgslsmith_index_u32(1u, 32u)] <= ~67096u));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-999f, -1161f)));
    var var_2 = Struct_1(vec3<u32>(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~select(arg_0.x, 54798u, false), 11571u, var_1.x), 32u)], arg_0.x, (abs(global1[_wgslsmith_index_u32(2230u, 32u)]) & _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 1u, arg_0.x, global1[_wgslsmith_index_u32(1u, 32u)]), vec4<u32>(global3.a.x, 0u, 65731u, 1u))) | ~abs(arg_0.x)));
    return _wgslsmith_f_op_f32(round(arg_2.b));
}

fn func_2(arg_0: vec2<i32>) -> vec3<u32> {
    let var_0 = true;
    var var_1 = Struct_5(Struct_3(Struct_1((global3.a & vec3<u32>(global3.a.x, 1u, 4007u)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(17976u, global3.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 32u)], 32u)]), global3.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(round(1385f)), _wgslsmith_div_f32(-657f, -1898f), 1f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-309f, 977f, 1001f, -286f)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-969f, 1000f, 336f, 1021f), vec4<f32>(-179f, 923f, -298f, 784f))))), Struct_1(firstLeadingBit(_wgslsmith_mod_vec3_u32(global3.a, vec3<u32>(global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(global3.a.x, 32u)], global3.a.x)))), 90972u, vec3<i32>(-56421i, i32(-1i) * -2147483647i, ~max(u_input.a.x, 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global3.a, vec3<bool>(var_0, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.a.x, 32u)], 32u)]), 32u)], 2u)], u_input.a.x != arg_0.x), Struct_4(vec3<f32>(-2835f, -241f, -1107f), _wgslsmith_f_op_f32(sign(894f))), ~(global3.a << (global3.a % vec3<u32>(32u)))))));
    global2 = array<Struct_3, 23>();
    var var_2 = false;
    var_2 = any(!(!vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 2u)] & var_0, true)));
    return var_1.a.c.a;
}

fn func_1(arg_0: vec4<f32>) -> bool {
    var var_0 = -28341i;
    var var_1 = _wgslsmith_div_i32(abs(0i), _wgslsmith_mod_i32(-u_input.a.x, -u_input.a.x));
    global2 = array<Struct_3, 23>();
    var var_2 = ~vec3<u32>(~0u, 0u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global3.a.x, global3.a.x), vec3<u32>(18336u, 33683u, global3.a.x)) | 29003u, ~(global1[_wgslsmith_index_u32(0u, 32u)] ^ global3.a.x)));
    var_2 = select(~func_2(u_input.a.yx), ~global3.a, !(!vec3<bool>(all(vec2<bool>(true, true)), false, true)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1000f))));
    var var_0 = u_input.a.zz;
    var var_1 = !select(vec2<bool>(true, any(vec3<bool>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 32u)], 2u)], global4[_wgslsmith_index_u32(0u, 2u)], true))), !vec2<bool>(all(vec3<bool>(false, true, false)), func_1(vec4<f32>(-1577f, -1499f, 240f, 691f))), all(!select(vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 2u)], false, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.a.x, 32u)], 2u)]), vec3<bool>(false, true, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 32u)], 32u)], 2u)]), false)));
    let var_2 = -17246i;
    let var_3 = _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(abs(~firstTrailingBit(vec4<u32>(25507u, 1u, global3.a.x, 38858u))), _wgslsmith_div_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 32u)], 29368u), 32u)], 39641u, 38060u, abs(global3.a.x)), _wgslsmith_add_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(48715u, 32u)], global1[_wgslsmith_index_u32(4294967295u, 32u)], 2045u, global3.a.x), abs(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 32u)], global3.a.x, global3.a.x, global1[_wgslsmith_index_u32(global3.a.x, 32u)]))))), vec4<u32>(~_wgslsmith_sub_u32(0u, global3.a.x), global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec3_u32(global3.a, vec3<u32>(110094u, global3.a.x, global3.a.x))), 32u)] & _wgslsmith_sub_u32(~global3.a.x, ~global1[_wgslsmith_index_u32(8151u, 32u)]), ~1u, 0u));
    global0 = -266f;
    var var_4 = !vec3<bool>(var_1.x, true, false);
    global2 = array<Struct_3, 23>();
    let var_5 = max(var_3.wz, abs(vec2<u32>(~(0u >> (global3.a.x % 32u)), var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.a) ^ vec3<i32>(var_2, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_2, 1i, 2147483647i, 18801i), vec4<i32>(var_0.x, var_0.x, 10219i, var_0.x)), vec4<i32>(var_2, 35935i, u_input.a.x, var_0.x)), 2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1434f, 341f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1084f + 450f) + _wgslsmith_f_op_f32(select(-387f, 219f, var_4.x))))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1267f)))))));
}

