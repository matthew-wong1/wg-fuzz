struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<i32, 12>;

var<private> global2: i32;

var<private> global3: f32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> u32 {
    global2 = global1[_wgslsmith_index_u32(~abs(~arg_2.b << (9653u % 32u)), 12u)] >> (_wgslsmith_add_u32(~(~(4294967295u | arg_2.b)), ~_wgslsmith_sub_u32(~arg_2.b, arg_2.b & arg_0)) % 32u);
    let var_0 = Struct_3(!select(true, all(vec3<bool>(true, false, false)), select(true, true, true)) | false);
    let var_1 = var_0;
    var var_2 = var_1;
    global3 = -680f;
    return abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~(~arg_2.b), _wgslsmith_mod_u32(~1u, ~17966u)), _wgslsmith_sub_vec3_u32(firstLeadingBit(max(vec3<u32>(70890u, 0u, arg_2.b), vec3<u32>(arg_2.b, arg_2.b, 4294967295u))), ~(vec3<u32>(arg_2.b, 0u, arg_0) >> (vec3<u32>(28207u, 1u, arg_2.b) % vec3<u32>(32u))))));
}

fn func_2(arg_0: Struct_5, arg_1: u32, arg_2: Struct_4, arg_3: Struct_3) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -1170f, 329f), vec3<f32>(-860f, -443f, arg_0.a.a))))));
    var var_1 = vec3<u32>(1u, arg_1, ~(func_3(arg_1, -28359i, Struct_1(636f, 1u)) ^ ~arg_0.a.b));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(452f)), 610f))), _wgslsmith_f_op_f32(var_0.x - var_0.x))));
    global0 = var_0.x;
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.x, 0u), 12u)];
    return max(abs(~(~abs(vec3<i32>(-1i, -18327i, u_input.a.x)))), -_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, -55161i, -2147483647i), -(vec3<i32>(global1[_wgslsmith_index_u32(arg_1, 12u)], -34463i, u_input.b) ^ vec3<i32>(1i, -6206i, u_input.a.x))));
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: f32) -> i32 {
    global2 = _wgslsmith_sub_i32(2147483647i, _wgslsmith_dot_vec2_i32(abs(firstLeadingBit(vec2<i32>(466i, global1[_wgslsmith_index_u32(arg_1.x, 12u)]))), _wgslsmith_div_vec2_i32(~vec2<i32>(-1i, arg_0), abs(u_input.a))) & global1[_wgslsmith_index_u32(arg_1.x, 12u)]);
    global2 = countOneBits(_wgslsmith_dot_vec3_i32(~(~(-vec3<i32>(2147483647i, 34723i, 1i))), ~(-func_2(Struct_5(Struct_1(-588f, 4294967295u), Struct_3(true)), 0u, Struct_4(Struct_1(-1000f, 6570u), arg_1), Struct_3(true)))));
    var var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(f32(-1f) * -766f)), 32408u), min(vec2<u32>(max(arg_1.x & 31610u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_1.x), vec2<u32>(1u, arg_1.x))), arg_1.x), _wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(arg_1.x, arg_1.x)), abs(vec2<u32>(4294967295u, 1u) >> (arg_1 % vec2<u32>(32u))))));
    var var_1 = Struct_4(Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-750f + var_0.a.a), _wgslsmith_f_op_f32(step(1025f, arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(896f, arg_2)))), arg_1.x), select(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_1.x, 0u), arg_1), arg_1), abs(abs(abs(vec2<u32>(var_0.b.x, 1u)))), vec2<bool>(true, true)));
    var var_2 = !vec3<bool>(true, false, !all(vec4<bool>(true, true, true, true)));
    return countOneBits(u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 12>();
    global2 = func_1(~global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, 4294967295u, 1u), ~44749u), 12u)], ~vec2<u32>(1u, 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-780f, _wgslsmith_f_op_f32(floor(-1271f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2188f), -1000f)))) * -1367f));
    var var_0 = global1[_wgslsmith_index_u32(~33522u, 12u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -593f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -992f)))));
    var var_2 = Struct_4(Struct_1(var_1.x, _wgslsmith_sub_u32(reverseBits(1u) << (_wgslsmith_dot_vec2_u32(vec2<u32>(94536u, 4294967295u), vec2<u32>(1u, 0u)) % 32u), 0u)), max(vec2<u32>(_wgslsmith_sub_u32(39325u, 15404u) << (1u % 32u), 1u), vec2<u32>(4294967295u, _wgslsmith_add_u32(func_3(18504u, 7661i, Struct_1(var_1.x, 49902u)), ~0u))));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1274f))))));
    var_1 = vec2<f32>(var_1.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.a + var_1.x) * 531f))), _wgslsmith_f_op_f32(var_2.a.a - _wgslsmith_f_op_f32(floor(-1000f))), false)));
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-2234f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.a.a)) + _wgslsmith_div_f32(-1000f, var_1.x))), 588f) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.a.a)))), 877f, _wgslsmith_f_op_f32(sign(1f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(-571f, _wgslsmith_f_op_f32(-var_1.x), any(vec4<bool>(true, 1366f != var_3.x, true, 4294967295u >= var_2.a.b)))), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(select(0u, var_2.b.x, true), 28920u), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(21099u, var_2.a.b, var_2.a.b), vec3<u32>(var_2.b.x, var_2.a.b, var_2.a.b)), var_2.b.x)), var_2.b), 308f, reverseBits(reverseBits(_wgslsmith_dot_vec2_i32(~u_input.a, -vec2<i32>(global1[_wgslsmith_index_u32(16993u, 12u)], global1[_wgslsmith_index_u32(var_2.b.x, 12u)])))));
}

