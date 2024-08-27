struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: u32,
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

var<private> global0: Struct_1;

var<private> global1: Struct_3 = Struct_3(Struct_2(1000f, Struct_1(vec2<i32>(-6594i, 0i))), 81284u, Struct_1(vec2<i32>(i32(-2147483648), 0i)));

var<private> global2: Struct_4;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: Struct_1) -> f32 {
    global0 = arg_0.c;
    var var_0 = arg_2.c.a.x;
    let var_1 = false;
    var var_2 = -(~(~(-vec4<i32>(arg_3.a.x, global2.b.c.a.x, arg_3.a.x, global2.b.c.a.x)) << (~vec4<u32>(4294967295u, 1u, 4294967295u, 0u) % vec4<u32>(32u))));
    var var_3 = Struct_1(var_2.wy);
    return _wgslsmith_f_op_f32(-915f * -1002f);
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: i32, arg_3: f32) -> i32 {
    var var_0 = vec2<f32>(global2.b.a.a, -489f);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(global1.a.a)), -714f))))), Struct_1(global2.b.a.b.a));
    var var_2 = global2.b.c.a.x;
    global1 = global2.b;
    global1 = global2.b;
    return ~(-min(-1i, abs(global0.a.x)));
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: i32, arg_3: Struct_2) -> i32 {
    global2 = Struct_4(global2.a, Struct_3(global2.b.a, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~38309u, _wgslsmith_mult_u32(global1.b, 37479u)), u_input.a, _wgslsmith_clamp_u32(1u, 4294967295u, _wgslsmith_add_u32(0u, 9798u))), arg_3.b), Struct_1(-(countOneBits(global1.a.b.a) | ~global2.c.a)), _wgslsmith_f_op_f32(arg_0.x + global1.a.a) == _wgslsmith_f_op_f32(floor(1589f)));
    let var_0 = ~u_input.c;
    var var_1 = global1.a.b;
    let var_2 = -1i;
    var var_3 = arg_3.b;
    return firstLeadingBit(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.a * arg_0.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(345f + arg_3.a))), 1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1808f)))) | (var_0.x >> (u_input.a % 32u));
}

fn func_4(arg_0: vec2<i32>, arg_1: i32) -> Struct_2 {
    let var_0 = Struct_3(global1.a, u_input.d.x, global2.b.a.b);
    var var_1 = reverseBits(vec3<i32>(global2.c.a.x, -1i, 40278i));
    global1 = Struct_3(var_0.a, ~u_input.a, Struct_1(vec2<i32>(global0.a.x, -max(global2.c.a.x, global1.c.a.x))));
    var var_2 = var_0.a;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(sign(865f)), Struct_1(global0.a));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-980f + -194f)))))), global1.a.b);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2) -> vec4<bool> {
    var var_0 = global2.b;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(798f, -384f, 2611f, _wgslsmith_f_op_f32(-777f - _wgslsmith_div_f32(global2.b.a.a, -388f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.x, 1131f, var_0.a.a, -663f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(max(global2.b.a.a, -943f)), _wgslsmith_f_op_f32(global2.b.a.a * global1.a.a), _wgslsmith_f_op_f32(-global1.a.a), _wgslsmith_f_op_f32(-635f * 605f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 726f, 223f, global1.a.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-137f, 2087f, 597f, global2.b.a.a) + vec4<f32>(744f, -1699f, var_0.a.a, -194f)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.b.a.a, -637f, arg_1.a, global2.b.a.a), vec4<f32>(var_0.a.a, -1000f, global1.a.a, global1.a.a)))))));
    var_0 = global2.b;
    global1 = Struct_3(func_4(vec2<i32>(-(arg_1.b.a.x << (var_0.b % 32u)), 29961i & global0.a.x), global0.a.x), 45423u, global1.a.b);
    global1 = Struct_3(func_4(var_0.c.a >> (u_input.d % vec2<u32>(32u)), _wgslsmith_add_i32(-func_4(global0.a, u_input.c.x).b.a.x, global2.c.a.x)), global1.b, func_4(vec2<i32>(global0.a.x, var_0.c.a.x), func_3(882f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) + _wgslsmith_f_op_f32(exp2(var_1.x))), _wgslsmith_clamp_i32(-1i, reverseBits(-1i), global1.c.a.x), var_1.x)).b);
    return global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(global1.a, ~(35683u | ~_wgslsmith_mult_u32(u_input.d.x, u_input.d.x)), global1.c);
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1149f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1731f - -1017f))), -1676f, 207f) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(109f, global2.b.a.a, -589f, global2.b.a.a) * vec4<f32>(global2.b.a.a, global1.a.a, global2.b.a.a, global1.a.a)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.b.a.a, 1000f, global2.b.a.a, global1.a.a), vec4<f32>(global1.a.a, global1.a.a, 769f, -1198f)))))));
    var var_1 = global2.b;
    let var_2 = Struct_4(func_5(vec3<f32>(var_1.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global2.b, var_0.wy, Struct_3(Struct_2(var_0.x, Struct_1(vec2<i32>(global0.a.x, 34975i))), global2.b.b, var_1.c), Struct_1(vec2<i32>(global0.a.x, 16671i)))) - global2.b.a.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_1.a.a))))), func_4(u_input.b.xx, func_2(_wgslsmith_f_op_vec2_f32(-var_0.xy), global1.a.a, ~(-19593i), Struct_2(1000f, global2.c)))), Struct_3(func_4(~max(global2.c.a, vec2<i32>(var_1.c.a.x, var_1.c.a.x)), ~2147483647i), 1u, global2.b.a.b), global1.a.b, false || !(7779u > var_1.b));
    global0 = global1.c;
    let var_3 = Struct_2(global1.a.a, func_4(_wgslsmith_add_vec2_i32(-(global1.c.a ^ vec2<i32>(-1i, -1i)), -var_2.b.a.b.a), countOneBits(~(-1912i))).b);
    global1 = global2.b;
    let var_4 = vec2<f32>(_wgslsmith_div_f32(555f, var_2.b.a.a), -1187f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(select(global2.b.b, 34755u, true) & var_2.b.b, u_input.d.x));
}

