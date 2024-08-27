struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: f32,
    d: f32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: Struct_2,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec4<f32>, 15>;

var<private> global2: Struct_1 = Struct_1(86892u);

var<private> global3: array<vec4<bool>, 8>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>) -> vec4<i32> {
    let var_0 = Struct_1(min(~(~_wgslsmith_mult_u32(0u, u_input.b)), max(global2.a, ~u_input.b) ^ _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(4294967295u, 1u, 1u)), 15485u)));
    let var_1 = global0.x;
    var var_2 = -(i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(-13679i, u_input.a.x, u_input.e), vec3<i32>(u_input.a.x, arg_0.x, u_input.e))) ^ arg_0.x;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1840f * global0.x) - _wgslsmith_f_op_f32(f32(-1f) * -551f)), _wgslsmith_f_op_f32(1208f + _wgslsmith_div_f32(398f, global0.x)), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(f32(-1f) * -179f)))));
    var var_3 = !(!all(vec4<bool>(true, true, true, true)) | (true | all(vec2<bool>(true, true))));
    return vec4<i32>(-1i) * -(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 1i, 86776i, 0i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-9673i, -19501i, arg_0.x, arg_0.x), vec4<i32>(-11828i, u_input.e, u_input.a.x, u_input.e), vec4<i32>(arg_0.x, 2147483647i, arg_0.x, u_input.e))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: Struct_3) -> bool {
    let var_0 = arg_3.c;
    let var_1 = func_3(arg_1.zz);
    global1 = array<vec4<f32>, 15>();
    global3 = array<vec4<bool>, 8>();
    var var_2 = Struct_1(_wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, 44331u, 0u), abs(vec4<u32>(u_input.b, arg_3.d.e.x, u_input.d.x, 95489u))), ~1u));
    return arg_3.c;
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = vec2<bool>(all(vec4<bool>(global0.x != _wgslsmith_f_op_f32(-arg_0), true, true, func_2(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(0u, 15u)]), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.e, u_input.e, -23794i), vec3<i32>(u_input.e, u_input.a.x, u_input.e)), Struct_3(true, Struct_1(51823u), true, Struct_2(2325f, -5060i, global0.x, global0.x, u_input.c), vec3<i32>(60593i, 0i, 1i)), Struct_3(true, Struct_1(global2.a), false, Struct_2(281f, 1703i, 310f, 170f, vec3<u32>(32477u, global2.a, global2.a)), vec3<i32>(u_input.e, u_input.e, u_input.e))))), true);
    let var_1 = any(vec4<bool>(var_0.x, !any(var_0), ~(u_input.c.x >> (global2.a % 32u)) <= 70187u, func_2(vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_div_f32(279f, arg_0), _wgslsmith_div_f32(-1360f, global0.x), _wgslsmith_f_op_f32(-arg_0)), select(vec3<i32>(u_input.e, 2147483647i, 0i) ^ vec3<i32>(-12994i, u_input.a.x, u_input.a.x), -vec3<i32>(12771i, -26863i, 9806i), all(var_0)), Struct_3(true, Struct_1(53801u), u_input.e < 15357i, Struct_2(global0.x, u_input.a.x, global0.x, arg_0, u_input.c), vec3<i32>(u_input.e, 0i, u_input.a.x) ^ vec3<i32>(u_input.e, 2147483647i, u_input.a.x)), Struct_3(false, Struct_1(global2.a), var_0.x, Struct_2(103f, u_input.e, arg_0, 329f, u_input.c), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, 1i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.e, u_input.a.x))))));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(arg_0)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1695f * global0.x)))))))));
    let var_3 = ~(~1i);
    let var_4 = Struct_1(~_wgslsmith_sub_u32(abs(global2.a), global2.a));
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(-1448f);
    let var_0 = true;
    let var_1 = true;
    global2 = Struct_1(5935u);
    var var_2 = Struct_2(108f, ~_wgslsmith_clamp_i32(u_input.a.x, 4820i, u_input.e), _wgslsmith_f_op_f32(-805f + -1259f), 944f, _wgslsmith_sub_vec3_u32(u_input.c | u_input.c, vec3<u32>(1u, u_input.c.x | 4294967295u, _wgslsmith_div_u32(4294967295u, firstTrailingBit(1u)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b, 1i, max(-24802i, _wgslsmith_dot_vec3_i32(vec3<i32>(-70093i, var_2.b, var_2.b) | vec3<i32>(var_2.b, u_input.e, u_input.e), abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, -2147483647i, var_2.b), vec3<i32>(-32693i, var_2.b, u_input.a.x), vec3<i32>(-1510i, 2147483647i, u_input.e))))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.d, _wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(305f - global0.x), _wgslsmith_f_op_f32(ceil(1229f))))))), ~_wgslsmith_mod_vec2_u32(~_wgslsmith_add_vec2_u32(u_input.d, var_2.e.xz), var_2.e.yy));
}

