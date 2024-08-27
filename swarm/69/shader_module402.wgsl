struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_4,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec2<f32>(394f, 1922f), vec3<u32>(4294967295u, 4294967295u, 90430u)), Struct_1(vec2<f32>(651f, 1017f), vec3<u32>(6576u, 4294967295u, 1u)), Struct_1(vec2<f32>(-353f, 392f), vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_1(vec2<f32>(-2172f, -139f), vec3<u32>(42456u, 43462u, 4294967295u)), Struct_1(vec2<f32>(1017f, -601f), vec3<u32>(43953u, 4294967295u, 57645u)), Struct_1(vec2<f32>(849f, -713f), vec3<u32>(4294967295u, 49769u, 23224u)), Struct_1(vec2<f32>(-1000f, 1813f), vec3<u32>(98044u, 105455u, 35327u)), Struct_1(vec2<f32>(518f, 1129f), vec3<u32>(11866u, 4294967295u, 7945u)), Struct_1(vec2<f32>(827f, 1000f), vec3<u32>(1u, 4294967295u, 0u)), Struct_1(vec2<f32>(746f, 1000f), vec3<u32>(4294967295u, 1u, 79085u)), Struct_1(vec2<f32>(-724f, -1122f), vec3<u32>(10720u, 1u, 0u)), Struct_1(vec2<f32>(-223f, -736f), vec3<u32>(4294967295u, 0u, 1u)), Struct_1(vec2<f32>(-213f, 1481f), vec3<u32>(0u, 1u, 1u)), Struct_1(vec2<f32>(447f, -1045f), vec3<u32>(1u, 0u, 4294967295u)), Struct_1(vec2<f32>(-1751f, 1000f), vec3<u32>(7211u, 27431u, 35680u)), Struct_1(vec2<f32>(-2125f, 1006f), vec3<u32>(7440u, 1821u, 0u)), Struct_1(vec2<f32>(1128f, -1705f), vec3<u32>(0u, 16349u, 4294967295u)), Struct_1(vec2<f32>(567f, 561f), vec3<u32>(0u, 40197u, 1u)), Struct_1(vec2<f32>(-1137f, 953f), vec3<u32>(30980u, 0u, 0u)), Struct_1(vec2<f32>(1485f, -1497f), vec3<u32>(44125u, 14019u, 1u)), Struct_1(vec2<f32>(-700f, 1000f), vec3<u32>(106001u, 4294967295u, 22899u)), Struct_1(vec2<f32>(-481f, -469f), vec3<u32>(7034u, 4294967295u, 4294967295u)));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_5, arg_2: bool, arg_3: vec2<bool>) -> vec4<u32> {
    global1 = array<Struct_1, 22>();
    let var_0 = _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-2147483647i, i32(-1i) * -31784i, -13231i), abs(-4990i));
    return ~abs(_wgslsmith_mod_vec4_u32(vec4<u32>(2554u, 1u, arg_1.c.a.b.x, ~arg_0.b.b.a.b.x), ~vec4<u32>(4294967295u, 0u, 26055u, u_input.b) ^ ~vec4<u32>(arg_0.c.a.b.x, 57721u, 4294967295u, 70307u)));
}

fn func_2(arg_0: f32, arg_1: i32) -> vec2<i32> {
    let var_0 = Struct_3(~_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(select(vec4<u32>(8185u, u_input.b, global0.b.a.b.x, u_input.a), vec4<u32>(global0.b.a.b.x, u_input.b, u_input.b, u_input.a), vec4<bool>(true, false, false, false)), ~vec4<u32>(u_input.b, 1u, 0u, global0.b.a.b.x)), func_3(Struct_5(vec2<f32>(global0.a.x, global0.a.x), Struct_4(global0.b.a.a, Struct_2(global1[_wgslsmith_index_u32(46326u, 22u)])), Struct_2(Struct_1(global0.a, global0.b.a.b))), Struct_5(vec2<f32>(arg_0, 1784f), Struct_4(vec2<f32>(1734f, 310f), global0.b), Struct_2(Struct_1(vec2<f32>(-1000f, global0.b.a.a.x), global0.b.a.b))), false, vec2<bool>(true, true)), firstLeadingBit(vec4<u32>(u_input.a, global0.b.a.b.x, 413u, 14143u))));
    global1 = array<Struct_1, 22>();
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -861f))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-674f, 430f))), global0.b.a.b)));
    global1 = array<Struct_1, 22>();
    let var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-370f, 1372f), _wgslsmith_f_op_vec2_f32(select(global0.b.a.a, global0.b.a.a, vec2<bool>(true, true))), vec2<bool>(true, true)));
    return vec2<i32>(arg_1 >> (u_input.b % 32u), _wgslsmith_add_i32(arg_1, _wgslsmith_dot_vec4_i32(max(~vec4<i32>(64060i, arg_1, arg_1, 2147483647i), ~vec4<i32>(-27061i, arg_1, arg_1, arg_1)), -reverseBits(vec4<i32>(arg_1, -2147483647i, arg_1, arg_1)))));
}

fn func_1(arg_0: vec4<bool>) -> vec2<f32> {
    global1 = array<Struct_1, 22>();
    var var_0 = _wgslsmith_add_vec2_i32(func_2(_wgslsmith_f_op_f32(-global0.b.a.a.x), 2147483647i), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, -6892i), ~vec2<i32>(1i, _wgslsmith_sub_i32(8560i, -5843i)), -vec2<i32>(reverseBits(-30154i), abs(22449i))));
    let var_1 = vec3<bool>(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + global0.a.x) <= global0.a.x), arg_0.x, arg_0.x);
    var_0 = ~abs(_wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(var_0.x, 15117i)), func_2(global0.a.x, var_0.x)) << (countOneBits(vec2<u32>(global0.b.a.b.x, 0u) | global0.b.a.b.zz) % vec2<u32>(32u)));
    var_0 = countOneBits(func_2(-919f, _wgslsmith_mult_i32(~_wgslsmith_clamp_i32(var_0.x, -1i, -2147483647i), _wgslsmith_dot_vec2_i32(-vec2<i32>(35481i, var_0.x), vec2<i32>(2147483647i, var_0.x)))));
    return global0.a;
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: i32) -> Struct_2 {
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(vec2<f32>(global0.b.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-605f, global0.b.a.a.x)), _wgslsmith_f_op_f32(586f * global0.b.a.a.x), false)))), global0.b);
    var var_0 = !vec2<bool>(true, !(!(u_input.a == 0u)));
    var var_1 = Struct_4(global0.a, func_4(4554i, Struct_4(_wgslsmith_f_op_vec2_f32(func_1(!vec4<bool>(false, false, var_0.x, var_0.x))), global0.b), -2147483647i));
    global0 = Struct_4(var_1.b.a.a, Struct_2(func_4((i32(-1i) * -24789i) << (~u_input.a % 32u), Struct_4(var_1.b.a.a, func_4(9534i, Struct_4(vec2<f32>(global0.b.a.a.x, 136f), Struct_2(var_1.b.a)), -14782i)), min(countOneBits(-2147483647i), 1i)).a));
    var var_2 = min(min(~(~(~(-1i))), -reverseBits(1i)), -56354i ^ func_2(-1000f, abs(_wgslsmith_div_i32(5674i, -1i))).x);
    var_2 = -_wgslsmith_div_i32(1i, -23423i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-771f, _wgslsmith_f_op_f32(max(global0.a.x, -753f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - global0.a.x))), min(global0.b.a.b.x, var_1.b.a.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.a.b.x, 0u, 0u, reverseBits(_wgslsmith_sub_u32(58276u, global0.b.a.b.x))), vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, u_input.a, global0.b.a.b.x), var_1.b.a.b), 0u, 0u << (max(global0.b.a.b.x, u_input.b) % 32u), 96525u)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1422f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x + var_1.b.a.a.x))), 989f, 514f), var_1.b.a.b.x);
}

