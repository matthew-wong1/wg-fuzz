struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-39311i, true, vec4<f32>(-479f, -376f, 1190f, -1000f), vec4<u32>(3406u, 12978u, 0u, 4294967295u));

var<private> global1: Struct_1;

var<private> global2: f32 = 600f;

var<private> global3: f32;

var<private> global4: array<vec3<bool>, 15> = array<vec3<bool>, 15>(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool) -> f32 {
    global4 = array<vec3<bool>, 15>();
    global0 = Struct_1(-(i32(-1i) * -(~global1.a)), true, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(583f, 385f, global1.c.x, arg_0.c.x))))), countOneBits(vec4<u32>(~min(global0.d.x, arg_1.x), min(~9072u, global1.d.x ^ 0u), 1u, arg_0.d.x)));
    global3 = global1.c.x;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(global1.c.x, _wgslsmith_f_op_f32(max(global1.c.x, _wgslsmith_f_op_f32(min(-449f, arg_0.c.x)))))));
    var var_0 = _wgslsmith_f_op_f32(round(539f));
    return _wgslsmith_f_op_f32(floor(701f));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    global1 = Struct_1(-59978i, !global1.b, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.c.x, global0.c.x, _wgslsmith_f_op_f32(func_3(Struct_1(-1i, global0.b, arg_2.c, vec4<u32>(1u, 50313u, 1u, global0.d.x)), reverseBits(global0.d), arg_2.b)), 1658f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.x, 295f, global0.c.x, 1852f), _wgslsmith_f_op_vec4_f32(step(arg_0, global0.c))))), vec4<bool>(global0.b, false, true, true))), (~(~global0.d) ^ vec4<u32>(78833u, ~global1.d.x, ~global1.d.x, 58334u << (arg_1.x % 32u))) | vec4<u32>(_wgslsmith_sub_u32(22033u, _wgslsmith_mult_u32(arg_2.d.x, 1u)), global0.d.x, ~_wgslsmith_add_u32(arg_2.d.x, u_input.a.x), min(u_input.c & global1.d.x, arg_1.x)));
    var var_0 = arg_2;
    let var_1 = arg_2;
    let var_2 = ~firstTrailingBit(_wgslsmith_mult_vec2_i32(-abs(u_input.d.yy), u_input.d.xw));
    var var_3 = -_wgslsmith_mult_i32(var_2.x, _wgslsmith_add_i32(125981i, global0.a));
    return arg_2;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<i32>) -> vec4<i32> {
    global2 = global1.c.x;
    global1 = func_2(arg_0, global1.d.xy >> (vec2<u32>(_wgslsmith_mod_u32(~global0.d.x, 5250u), global1.d.x) % vec2<u32>(32u)), Struct_1(arg_1.x, any(select(global4[_wgslsmith_index_u32(~37758u, 15u)], select(vec3<bool>(global1.b, false, true), vec3<bool>(global0.b, global0.b, global1.b), vec3<bool>(false, false, true)), select(global4[_wgslsmith_index_u32(10174u, 15u)], global4[_wgslsmith_index_u32(u_input.b, 15u)], global0.b))), _wgslsmith_div_vec4_f32(global1.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 542f, global1.c.x, global0.c.x))), global1.d));
    return -_wgslsmith_div_vec4_i32(select(-vec4<i32>(global1.a, global1.a, 17827i, arg_1.x) << (global1.d % vec4<u32>(32u)), -(~vec4<i32>(-50035i, 0i, u_input.d.x, u_input.d.x)), true), -(~_wgslsmith_div_vec4_i32(vec4<i32>(global1.a, -15081i, 0i, arg_1.x), vec4<i32>(1i, 1i, 2147483647i, -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(-u_input.d, func_1(global1.c, u_input.d) | ~u_input.d), -1i), _wgslsmith_dot_vec2_i32(~u_input.d.yx, ~(-countOneBits(vec2<i32>(17238i, global0.a)))), ~global1.a);
    global4 = array<vec3<bool>, 15>();
    global0 = func_2(_wgslsmith_f_op_vec4_f32(-global1.c), global0.d.zz, func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.c)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global1.c - global1.c))), true)), global1.d.zy, func_2(_wgslsmith_f_op_vec4_f32(-global1.c), vec2<u32>(global0.d.x, 1u), func_2(_wgslsmith_f_op_vec4_f32(global0.c * vec4<f32>(global1.c.x, global0.c.x, global1.c.x, -1000f)), _wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(u_input.c, global0.d.x)), Struct_1(1i, global0.b, global1.c, global1.d)))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.x) - -571f);
    let var_1 = func_2(global0.c, global0.d.wz, func_2(global1.c, ~select(vec2<u32>(1u, 20814u), ~u_input.a, !vec2<bool>(true, global0.b)), Struct_1(i32(-1i) * -u_input.d.x, global0.b, global0.c, func_2(global1.c, global0.d.ww, Struct_1(1i, global0.b, vec4<f32>(global1.c.x, global0.c.x, global1.c.x, 955f), global1.d)).d)));
    let x = u_input.a;
    s_output = StorageBuffer(7974i, 1u, _wgslsmith_dot_vec2_i32(u_input.d.zy, var_0.xy), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.c.wwx), vec3<f32>(var_1.c.x, var_1.c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global0.c.x)))))));
}

