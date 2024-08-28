struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: u32,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 30>;

var<private> global2: array<i32, 10>;

var<private> global3: f32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<u32>) -> vec3<i32> {
    let var_0 = true;
    var var_1 = vec3<i32>(34282i, _wgslsmith_mult_i32(338i, ~(-29840i << (0u % 32u))), _wgslsmith_add_i32(0i, ~(-1i ^ global2[_wgslsmith_index_u32(arg_0.x, 10u)]))) | (~_wgslsmith_mod_vec3_i32(abs(vec3<i32>(2912i, -42910i, -1i)), vec3<i32>(-1i, 34826i, -53648i)) | -vec3<i32>(-1i | global2[_wgslsmith_index_u32(4294967295u, 10u)], u_input.d, min(u_input.c, 2147483647i)));
    let var_2 = select(!select(vec3<bool>(all(vec2<bool>(var_0, var_0)), false, true), vec3<bool>(false, select(var_0, true, var_0), true), !select(vec3<bool>(false, var_0, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), select(!select(!vec3<bool>(false, var_0, var_0), vec3<bool>(true, var_0, false), true), vec3<bool>(!any(vec2<bool>(var_0, true)), var_0, var_0), true | select(any(vec4<bool>(true, false, false, var_0)), !var_0, any(vec4<bool>(var_0, true, false, var_0)))), var_0 || any(vec3<bool>(true, select(true, var_0, var_0), var_0)));
    global2 = array<i32, 10>();
    var var_3 = global1[_wgslsmith_index_u32(31239u, 30u)];
    return -vec3<i32>(var_1.x, var_1.x, _wgslsmith_mult_i32(i32(-1i) * -1i, i32(-1i) * -var_1.x));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: vec4<f32>) -> i32 {
    var var_0 = func_3(select(~u_input.a.xzw, u_input.a.wwy, !any(vec3<bool>(arg_0.x, true, arg_0.x))));
    var_0 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.d, _wgslsmith_clamp_i32(31316i >> (u_input.b % 32u), select(var_0.x, -1i, true), -global2[_wgslsmith_index_u32(4174u, 10u)])), 0i), _wgslsmith_mult_i32(u_input.c, 2147483647i), _wgslsmith_div_i32(var_0.x, _wgslsmith_mod_i32(52435i, 8161i)));
    return _wgslsmith_add_i32(-2147483647i, var_0.x);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<i32>) -> vec2<i32> {
    global0 = true;
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(619f - 1499f), _wgslsmith_f_op_f32(ceil(-1194f)), -636f);
    global0 = ~abs(-24081i) < ((func_2(vec4<bool>(true, false, true, true), _wgslsmith_f_op_vec3_f32(select(var_0, vec3<f32>(-1060f, -500f, var_0.x), false)), _wgslsmith_div_vec4_f32(vec4<f32>(990f, var_0.x, -1181f, var_0.x), vec4<f32>(1144f, 240f, -175f, var_0.x))) | 41641i) ^ -arg_1.x);
    global1 = array<Struct_1, 30>();
    let var_1 = ~(~_wgslsmith_mod_vec3_u32(arg_0, min(select(arg_0, u_input.a.xyz, vec3<bool>(true, false, true)), ~arg_0)));
    return arg_1.xx;
}

fn func_4(arg_0: Struct_2) -> i32 {
    global0 = any(select(vec4<bool>(true, arg_0.b.x, true && arg_0.b.x, ~arg_0.d < _wgslsmith_sub_u32(u_input.a.x, u_input.b)), select(vec4<bool>(true, arg_0.b.x, !arg_0.b.x, !arg_0.b.x), !(!vec4<bool>(arg_0.b.x, arg_0.b.x, false, true)), arg_0.d < 1u), all(!select(vec3<bool>(true, true, arg_0.b.x), arg_0.b, vec3<bool>(arg_0.b.x, true, arg_0.b.x)))));
    global1 = array<Struct_1, 30>();
    global2 = array<i32, 10>();
    let var_0 = arg_0;
    global3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1000f)))), arg_0.e, arg_0.b.x));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(func_4(Struct_2(func_1(vec3<u32>(50224u, u_input.e, 0u), vec4<i32>(6502i, -32168i, 29304i, 1i)), vec3<bool>(true, true, any(vec3<bool>(true, true, false))), ~u_input.b, _wgslsmith_dot_vec4_u32(u_input.a, ~vec4<u32>(1u, 5472u, u_input.e, u_input.b)), _wgslsmith_f_op_f32(ceil(-818f)))), global2[_wgslsmith_index_u32(u_input.e, 10u)] & firstTrailingBit(-2147483647i));
    var var_1 = global1[_wgslsmith_index_u32(u_input.e, 30u)];
    let var_2 = Struct_1(_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(~u_input.a.yz, _wgslsmith_mult_vec2_u32(u_input.a.zz, u_input.a.zz)), vec2<u32>(33356u, u_input.e)));
    global1 = array<Struct_1, 30>();
    let var_3 = firstTrailingBit(0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(1f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(198f, -388f, false))), 986f))));
}

