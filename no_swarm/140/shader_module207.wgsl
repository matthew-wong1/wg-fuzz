struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: i32,
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

var<private> global0: Struct_2 = Struct_2(-835f);

var<private> global1: array<f32, 7> = array<f32, 7>(-490f, 828f, 127f, 1278f, 977f, 1489f, 461f);

var<private> global2: bool = false;

var<private> global3: Struct_1;

var<private> global4: array<f32, 24>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1() -> vec3<bool> {
    global2 = true;
    var var_0 = ~vec2<u32>(global3.c, ~firstLeadingBit(firstTrailingBit(global3.c)));
    let var_1 = Struct_1(global3.a, !any(!global3.a.yxy), ~_wgslsmith_sub_u32(25784u, firstLeadingBit(abs(global3.c))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1007f, global0.a, global3.d.x, _wgslsmith_f_op_f32(-global3.d.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global3.d, vec4<f32>(global0.a, global1[_wgslsmith_index_u32(global3.c, 7u)], -1093f, -930f))))));
    var var_2 = 1u;
    let var_3 = true;
    return global3.a.xxz;
}

fn func_3() -> u32 {
    let var_0 = 1u;
    global0 = Struct_2(-1356f);
    global2 = all(vec4<bool>(global3.a.x, all(vec2<bool>(true, true)), true, !(-u_input.d == _wgslsmith_clamp_i32(-1i, u_input.b, -1i))));
    global2 = true;
    let var_1 = global3.a;
    return 6379u;
}

fn func_2(arg_0: Struct_2) -> f32 {
    global3 = Struct_1(select(vec4<bool>(!global3.b, global3.c >= global3.c, true, true), vec4<bool>(global3.a.x, global3.b, !any(global3.a.wy), !global3.a.x), select(vec4<bool>(global1[_wgslsmith_index_u32(global3.c, 7u)] <= global4[_wgslsmith_index_u32(3915u, 24u)], true, true, true), select(vec4<bool>(global3.b, global3.a.x, false, false), !vec4<bool>(global3.a.x, true, global3.a.x, global3.b), vec4<bool>(global3.b, true, false, global3.a.x)), false || !global3.a.x)), !global3.b, ~func_3(), _wgslsmith_f_op_vec4_f32(step(global3.d, _wgslsmith_div_vec4_f32(global3.d, _wgslsmith_f_op_vec4_f32(step(global3.d, _wgslsmith_f_op_vec4_f32(-global3.d)))))));
    var var_0 = u_input.a;
    let var_1 = vec3<i32>(2147483647i ^ firstLeadingBit(max(0i, u_input.c.x >> (global3.c % 32u))), ~min(-2147483647i, -1i), u_input.c.x);
    let var_2 = countOneBits(u_input.c);
    global1 = array<f32, 7>();
    return -821f;
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: i32, arg_3: u32) -> Struct_2 {
    return Struct_2(1000f);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<f32, 24>();
    let var_0 = abs(firstTrailingBit(global3.c));
    let var_1 = false;
    let var_2 = func_4(func_1(), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(Struct_2(_wgslsmith_f_op_f32(-global3.d.x)))))), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 17606i, u_input.d, 1i), vec4<i32>(-1i, u_input.a, u_input.b, u_input.d)), vec4<i32>(u_input.c.x, -92123i, 1i, _wgslsmith_add_i32(67473i & u_input.b, u_input.d))), ~(((global3.c ^ 68385u) << (4294967295u % 32u)) << (_wgslsmith_sub_u32(abs(4294967295u), ~var_0) % 32u)));
    global0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1699f + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(19815u, 7u)] - global1[_wgslsmith_index_u32(9664u, 7u)]))), func_4(vec3<bool>(select(false, global3.b, var_1), var_1, var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-963f + -619f)), -16373i | u_input.a, ~(~global3.c)).a));
    let var_3 = ~reverseBits(1669i);
    global3 = Struct_1(!select(!global3.a, global3.a, !(!var_1)), !any(global3.a.wxz), 0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(global3.d)) * _wgslsmith_f_op_vec4_f32(global3.d + global3.d)))));
    var var_4 = _wgslsmith_f_op_f32(round(global0.a));
    let x = u_input.a;
    s_output = StorageBuffer(38534u << (~var_0 % 32u));
}

