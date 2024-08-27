struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
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

var<private> global0: array<vec3<i32>, 23>;

var<private> global1: array<vec4<bool>, 28>;

var<private> global2: array<Struct_1, 30>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: i32) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(arg_0.x, 30u)];
    global0 = array<vec3<i32>, 23>();
    var var_1 = var_0.b.wxz;
    let var_2 = global2[_wgslsmith_index_u32(4294967295u, 30u)];
    global1 = array<vec4<bool>, 28>();
    return Struct_1(_wgslsmith_mod_vec4_i32(select(firstLeadingBit(var_0.a), vec4<i32>(30024i, 1i, var_0.a.x, abs(-2147483647i)), true), _wgslsmith_clamp_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a.x, var_0.a.x, 29389i, 9266i), var_0.a), _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(arg_2, -20865i, arg_2, arg_2)), firstLeadingBit(var_0.a), -vec4<i32>(arg_2, -7873i, -1029i, -1i)), var_0.a)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1000f, var_2.b.x, 248f)), var_0.b)))), arg_1.x);
}

fn func_1() -> vec2<f32> {
    global1 = array<vec4<bool>, 28>();
    let var_0 = Struct_2(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~(u_input.a ^ vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.a.x)), u_input.a), 30u)]);
    global0 = array<vec3<i32>, 23>();
    var var_1 = Struct_2(func_2(u_input.a.yy, vec4<bool>(false, var_0.a.c, any(global1[_wgslsmith_index_u32(4294967295u, 28u)]), !(!var_0.a.c)), _wgslsmith_div_i32(~(var_0.a.a.x >> (32147u % 32u)), -var_0.a.a.x << (abs(u_input.a.x) % 32u))));
    global2 = array<Struct_1, 30>();
    return var_1.a.b.yw;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: u32) -> f32 {
    global1 = array<vec4<bool>, 28>();
    var var_0 = u_input.a.www;
    let var_1 = _wgslsmith_sub_u32(~abs(max(select(1u, 35678u, arg_0.c), _wgslsmith_sub_u32(arg_3, arg_3))), _wgslsmith_mult_u32(abs(max(4294967295u, 56109u)), ~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a.wy, var_0.xx), var_0.xz & vec2<u32>(19159u, var_0.x))));
    let var_2 = !(!any(!(!vec2<bool>(arg_2.a.c, arg_0.c))));
    var var_3 = ~0u;
    return arg_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1000f * -496f), 504f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-1119f + -291f), _wgslsmith_f_op_f32(f32(-1f) * -612f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_1()), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-156f, -1210f)))), true))) + _wgslsmith_div_vec2_f32(vec2<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-516f)), _wgslsmith_f_op_f32(1671f * 1541f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-166f, -792f)), vec2<f32>(-209f, 1000f)) - vec2<f32>(1086f, _wgslsmith_f_op_f32(func_3(Struct_1(vec4<i32>(1i, -2147483647i, 1i, 0i), vec4<f32>(216f, -634f, -2365f, -350f), false), Struct_2(Struct_1(vec4<i32>(-2147483647i, 292i, -928i, 42154i), vec4<f32>(-278f, -1776f, 2179f, -359f), true)), Struct_2(global2[_wgslsmith_index_u32(u_input.a.x, 30u)]), u_input.a.x))))));
    var var_1 = true;
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(abs(12322u), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, u_input.a), _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, u_input.a.x, u_input.b, 1u)), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.b)))), 66569u), 30u)];
    var var_3 = Struct_1(abs(var_2.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(func_2(select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(0u, u_input.b), vec2<bool>(true, var_2.c)), !vec4<bool>(var_2.c, true, var_2.c, var_2.c), -23970i).b)) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.b + var_2.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.b * vec4<f32>(var_0.x, var_0.x, 256f, 647f)))))), !var_2.c);
    var var_4 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_3.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(var_3.b - vec4<f32>(var_0.x, -1205f, var_2.b.x, 890f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1311f, -1728f, var_0.x)))))))));
    let var_5 = Struct_2(Struct_1(abs(_wgslsmith_div_vec4_i32(var_2.a, var_3.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1855f, var_2.b.x, -472f, -1194f) * vec4<f32>(-796f, var_3.b.x, var_4.x, var_3.b.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_3.b.x, var_3.b.x, var_2.b.x, 1143f))), var_2.b)), abs(u_input.a.x) <= 4294967295u));
    var var_6 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -864f)), _wgslsmith_div_f32(var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_4.x, 810f))))));
}

