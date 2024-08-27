struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: Struct_1,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec2<f32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: i32) -> f32 {
    let var_0 = u_input.b.yzx;
    var var_1 = max(~firstLeadingBit(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2, -44338i, var_0.x, -1i), u_input.b), u_input.b)), min(vec4<i32>(var_0.x, -firstTrailingBit(-2147483647i), _wgslsmith_div_i32(67325i, -9251i), -46901i), u_input.b));
    var var_2 = u_input.b.x;
    var_2 = abs((2147483647i << (u_input.c.x % 32u)) | u_input.b.x);
    var_1 = u_input.b;
    return _wgslsmith_f_op_f32(global1.x * global1.x);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: vec2<bool>) -> i32 {
    global0 = arg_3;
    global1 = vec2<f32>(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(func_2(!(false && global0.x), true, i32(-1i) * -61049i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(step(arg_2.c.a.x, -653f)))), _wgslsmith_f_op_f32(abs(arg_2.c.a.x))));
    var var_0 = arg_2.d;
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a.xw + vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x * -591f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -101f)))));
    global1 = _wgslsmith_f_op_vec2_f32(-var_0.a.yz);
    return u_input.b.x;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> i32 {
    var var_0 = u_input.c.x;
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, -131f, global1.x, -794f))))))), firstLeadingBit(60992u) >> (countOneBits(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a)) % 32u));
    var_0 = firstLeadingBit(var_1.b);
    var_0 = ~u_input.a.x;
    var var_2 = 83073u;
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec3<bool>(true, true, true), vec3<bool>(true & !global0.x, true, !global0.x), min(u_input.b.x, func_1(Struct_1(vec3<f32>(global1.x, global1.x, global1.x)), vec3<bool>(global0.x, false, global0.x), Struct_3(vec4<u32>(29736u, u_input.a.x, 1u, 4294967295u), true, Struct_1(vec3<f32>(global1.x, -1298f, -583f)), Struct_2(vec4<f32>(global1.x, global1.x, 215f, global1.x), u_input.a.x), global1.x), vec2<bool>(global0.x, global0.x))) != (_wgslsmith_mod_i32(u_input.b.x, -7023i) & -2147483647i));
    var var_1 = Struct_1(vec3<f32>(global1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x - global1.x), -641f))));
    global1 = _wgslsmith_f_op_vec2_f32(exp2(var_1.a.yz));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(func_3(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, var_1.a.x, global1.x) * vec3<f32>(global1.x, var_1.a.x, 2394f))), Struct_1(vec3<f32>(-1281f, global1.x, global1.x)), var_0.x), -(~u_input.b.x) | ((i32(-1i) * -10518i) << (_wgslsmith_mod_u32(u_input.c.x, u_input.a.x) % 32u)), u_input.b.x), u_input.b.wx, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -550f)), global1.x, global1.x) + vec3<f32>(global1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1000f, 904f, global0.x)))), _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(f32(-1f) * -2240f)))), abs(vec3<i32>(i32(-1i) * -1i, u_input.b.x, u_input.b.x >> (u_input.c.x % 32u)) >> ((vec3<u32>(30463u, 1u, 8255u) | firstLeadingBit(u_input.a)) % vec3<u32>(32u))), -987f);
}

