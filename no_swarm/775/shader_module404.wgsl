struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<bool>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

var<private> global1: Struct_1;

var<private> global2: i32 = 0i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(667f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.b, global1.b))), true)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -521f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b * 1121f)))) + _wgslsmith_f_op_f32(ceil(global1.b)));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.b)) - _wgslsmith_f_op_f32(-2225f - -1644f)), _wgslsmith_f_op_f32(trunc(var_0)))))));
    var var_2 = select(global1.c.zx, global1.c.zw, global1.c.yz);
    return Struct_1(countOneBits(i32(-1i) * -2147483647i), var_0, select(global1.c, !global1.c, true), 20628u);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec2<f32>) -> vec2<bool> {
    global1 = func_2();
    global0 = array<Struct_1, 3>();
    global2 = 44301i;
    global1 = arg_0;
    global0 = array<Struct_1, 3>();
    return vec2<bool>(arg_2.c.x, 1685f <= arg_2.b);
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: bool) -> i32 {
    let var_0 = all(!select(select(vec3<bool>(true, false, true), select(vec3<bool>(true, global1.c.x, true), vec3<bool>(global1.c.x, true, true), vec3<bool>(true, arg_1.x, global1.c.x)), vec3<bool>(false, arg_1.x, arg_3)), select(select(vec3<bool>(false, true, global1.c.x), vec3<bool>(arg_1.x, false, true), arg_3), func_2().c.xxz, func_2().c.ywz), !vec3<bool>(false, false, arg_3)));
    global2 = 2147483647i;
    let var_1 = u_input.b.x;
    var var_2 = var_1;
    var var_3 = vec4<i32>(1i, -(~_wgslsmith_div_i32(~u_input.c, -27126i)), _wgslsmith_mult_i32(1i, ~(-countOneBits(arg_2.a))), arg_2.a);
    return ~(arg_2.a << (11583u % 32u)) << ((~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, arg_2.d), select(vec2<u32>(61520u, arg_2.d), vec2<u32>(u_input.b.x, 7898u), true)) << (func_2().d % 32u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 3>();
    let var_0 = vec2<i32>(global1.a, ~func_3(1f, !func_1(global0[_wgslsmith_index_u32(global1.d, 3u)], u_input.b.zx, Struct_1(u_input.c, global1.b, vec4<bool>(global1.c.x, false, true, global1.c.x), global1.d), vec2<f32>(-124f, -210f)), global0[_wgslsmith_index_u32(select(global1.d >> (9187u % 32u), reverseBits(global1.d), global1.c.x), 3u)], !(global1.a < -2147483647i)));
    var var_1 = global0[_wgslsmith_index_u32(0u, 3u)];
    let var_2 = global0[_wgslsmith_index_u32(var_1.d, 3u)];
    var var_3 = ~_wgslsmith_mult_u32(~select(_wgslsmith_mult_u32(68035u, u_input.b.x), 0u, false || global1.c.x), u_input.a & (var_2.d << ((var_1.d ^ 4294967295u) % 32u)));
    var_3 = var_2.d;
    var var_4 = _wgslsmith_mult_vec4_i32((reverseBits(firstLeadingBit(vec4<i32>(var_2.a, -1i, 2147483647i, 1i))) & _wgslsmith_mult_vec4_i32(select(vec4<i32>(1i, u_input.c, -19508i, -2147483647i), vec4<i32>(var_1.a, global1.a, var_1.a, var_0.x), global1.c.x), abs(vec4<i32>(2147483647i, var_1.a, var_1.a, u_input.c)))) >> ((~(vec4<u32>(u_input.a, var_1.d, 45698u, 9182u) << (u_input.b % vec4<u32>(32u))) ^ (firstLeadingBit(u_input.b) | ~u_input.b)) % vec4<u32>(32u)), vec4<i32>(abs(abs(_wgslsmith_add_i32(var_2.a, global1.a))), u_input.c, var_2.a, _wgslsmith_div_i32(var_2.a, ~global1.a)));
    let x = u_input.a;
    s_output = StorageBuffer((var_0 ^ var_0) << (vec2<u32>(max(~global1.d, ~var_1.d), u_input.a) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, 1268f, -453f)) + vec3<f32>(624f, 1127f, -298f))) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-741f, _wgslsmith_f_op_f32(f32(-1f) * -763f), 1f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1560f, 1390f, var_1.b))))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, var_2.b, 1463f, -987f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(484f, var_2.b, 670f, var_1.b), vec4<f32>(-343f, -286f, var_1.b, global1.b), vec4<bool>(false, true, true, true)))), vec4<f32>(-1501f, 356f, -1212f, _wgslsmith_div_f32(var_1.b, var_2.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, -1000f, global1.b, -651f) + vec4<f32>(-1089f, global1.b, -403f, 907f)))) + vec4<f32>(_wgslsmith_f_op_f32(700f + var_2.b), global1.b, -193f, var_2.b)))), ~_wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_add_vec4_u32(vec4<u32>(var_1.d, 37184u, 17156u, 1u), vec4<u32>(14311u, var_1.d, 1u, 41271u))));
}

