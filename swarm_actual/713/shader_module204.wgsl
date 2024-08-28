struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(true, 2871i), Struct_2(false, 19483i), Struct_2(true, 20070i), Struct_2(true, -24003i), Struct_2(true, i32(-2147483648)), Struct_2(true, 1i), Struct_2(false, 1i), Struct_2(false, 65199i), Struct_2(false, 0i), Struct_2(true, 0i), Struct_2(true, i32(-2147483648)), Struct_2(false, 37367i), Struct_2(true, 3497i), Struct_2(false, i32(-2147483648)), Struct_2(true, 1i), Struct_2(true, 7449i), Struct_2(true, -12567i), Struct_2(false, 1i), Struct_2(true, 3765i), Struct_2(true, i32(-2147483648)), Struct_2(false, 69564i), Struct_2(true, -1i));

var<private> global2: array<Struct_1, 27>;

var<private> global3: Struct_3 = Struct_3(vec3<i32>(15916i, 1i, 1i));

var<private> global4: Struct_3;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: f32) -> bool {
    global1 = array<Struct_2, 22>();
    let var_0 = global1[_wgslsmith_index_u32(global0.x, 22u)];
    global1 = array<Struct_2, 22>();
    global2 = array<Struct_1, 27>();
    global0 = vec4<u32>(firstTrailingBit(4294967295u), global0.x, abs(82309u), firstTrailingBit(abs(0u)));
    return var_0.a;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> i32 {
    var var_0 = vec3<u32>(~global0.x, global0.x, max(firstTrailingBit(_wgslsmith_mod_u32(0u | global0.x, global0.x)), global0.x));
    let var_1 = arg_1.x;
    global4 = Struct_3(reverseBits(vec3<i32>(_wgslsmith_div_i32(u_input.a.x, _wgslsmith_mult_i32(-1i, 81245i)), abs(arg_0.b) | _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), -global3.a.x)));
    let var_2 = -1000f;
    let var_3 = Struct_4(min(max(vec4<u32>(29234u, global0.x, global0.x, var_0.x) | countOneBits(vec4<u32>(1u, global0.x, var_0.x, 0u)), ~countOneBits(vec4<u32>(var_0.x, 4294967295u, 3091u, 14485u))), vec4<u32>(min(min(var_0.x, 11608u), 1u), countOneBits(_wgslsmith_div_u32(var_0.x, 1u)), 1u, global0.x)), vec3<bool>(1u <= ~(~global0.x), false, true | (countOneBits(0u) >= ~var_0.x)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(51419u, global0.x), 22u)], Struct_3(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global4.a.x, global3.a.x, u_input.a.x), vec3<i32>(27619i, -1i, u_input.a.x), _wgslsmith_sub_vec3_i32(u_input.a.zzy, vec3<i32>(arg_0.b, global3.a.x, -30424i))), _wgslsmith_div_vec3_i32(global3.a, _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.b, 1i, arg_0.b), global4.a)))));
    return -u_input.a.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2) -> f32 {
    global4 = Struct_3(global4.a);
    global3 = Struct_3(global4.a);
    global3 = Struct_3(-(~global4.a));
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(961f, _wgslsmith_f_op_f32(min(-413f, arg_0.x)))))));
    let var_1 = Struct_3(_wgslsmith_add_vec3_i32(~min(vec3<i32>(0i, -5897i, 2147483647i), vec3<i32>(1i, 2147483647i, -2147483647i)), vec3<i32>(_wgslsmith_div_i32(68126i, 2147483647i), func_3(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.x, 39995u), 27u)], vec4<bool>(arg_1.a, true, arg_1.a, false)), -_wgslsmith_mult_i32(29575i, arg_1.b))));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(u_input.a.x >> (global0.x % 32u), ~global3.a.x, u_input.a.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-956f, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(582f, 761f, -1053f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(199f, 802f, 1000f))), Struct_2(func_1(-1093f), _wgslsmith_sub_i32(global3.a.x, 0i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-733f, -1405f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(483f, -361f, 282f) - vec3<f32>(1780f, 222f, 1425f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(839f, 267f, 824f) + vec3<f32>(182f, -1000f, -302f)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))))));
    var var_2 = global0.xyz;
    var var_3 = global0.wz;
    var_3 = var_2.yx;
    let var_4 = u_input.a.wz;
    global0 = ~vec4<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(var_3.x, 11561u, 378u), abs(0u)) & _wgslsmith_sub_u32(global0.x, 4294967295u ^ var_2.x), ~(~firstLeadingBit(global0.x)), var_2.x, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(65061u, 11746u, global0.x), vec3<u32>(var_2.x, 19527u, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, max(vec4<u32>(1u, ~0u, 87816u, _wgslsmith_add_u32(44220u, 9226u)) | vec4<u32>(_wgslsmith_add_u32(1u, var_2.x), firstTrailingBit(var_3.x), firstTrailingBit(16018u), 56584u), vec4<u32>(_wgslsmith_div_u32(106915u, global0.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.x, var_3.x, 0u), ~vec3<u32>(var_2.x, 49316u, 1u)), global0.x, 4294967295u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1336f), var_1.x, var_1.x, var_1.x)))), 103339u, u_input.a);
}

