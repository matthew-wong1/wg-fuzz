struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: vec2<bool>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_3,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
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

var<private> global0: array<vec4<f32>, 13>;

var<private> global1: array<Struct_4, 31>;

var<private> global2: vec2<f32>;

var<private> global3: i32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = 1i;
    var var_1 = vec4<i32>(0i, _wgslsmith_add_i32(abs(_wgslsmith_mod_i32(1i, 15500i)), (~12203i >> (0u % 32u)) << ((arg_0.b.x & _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, 72050u, arg_0.b.x, u_input.c))) % 32u)), ~_wgslsmith_add_i32(1i << (_wgslsmith_mod_u32(13996u, arg_0.b.x) % 32u), _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, 37789i, -2147483647i, -32088i), ~vec4<i32>(37545i, 2147483647i, 2147483647i, 0i))), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-1i) * -vec2<i32>(0i, -27922i))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, arg_0.a))) * arg_0.d.x) * _wgslsmith_f_op_f32(-arg_0.a)), global2.x);
    var var_3 = var_1.x;
    let var_4 = u_input.a;
    return -826i;
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<f32>) -> vec4<bool> {
    global3 = i32(-1i) * -2147483647i;
    var var_0 = ~vec4<u32>(u_input.b.x, 51301u, 4294967295u, min(u_input.d.x, ~select(u_input.b.x, 4868u, true)));
    global3 = 36031i;
    let var_1 = 663f;
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-403f)), _wgslsmith_f_op_f32(1023f - 165f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1000f)), arg_1.x))))));
    return !(!vec4<bool>(arg_0.x, arg_0.x, true | arg_0.x, any(vec2<bool>(arg_0.x, true))));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: Struct_3) -> vec4<bool> {
    let var_0 = vec2<bool>(arg_1.c.c.x, all(!func_3(select(arg_1.b.c, arg_1.c.c, arg_1.b.c.x), _wgslsmith_f_op_vec2_f32(step(arg_1.b.d.zw, vec2<f32>(-402f, global2.x))))));
    var var_1 = arg_3.b.xx;
    var var_2 = arg_1;
    let var_3 = var_1.x;
    var var_4 = global1[_wgslsmith_index_u32(36336u, 31u)];
    return arg_1.c.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(-1i, _wgslsmith_mod_i32(-_wgslsmith_mod_i32(-2814i, 62210i), _wgslsmith_add_i32(-2147483647i, func_1(Struct_1(global2.x, u_input.d.xw, vec4<bool>(false, false, true, false), vec4<f32>(685f, global2.x, 898f, global2.x))))) ^ (~1i >> (u_input.c % 32u)));
    let var_1 = vec4<bool>(all(func_2(~(-13131i), Struct_2(true, Struct_1(-1837f, u_input.d.ww, vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(0u, 13u)]), Struct_1(1991f, u_input.d.wx, vec4<bool>(false, false, false, true), global0[_wgslsmith_index_u32(37862u, 13u)])), -vec3<i32>(7602i, -2147483647i, 23487i), Struct_3(all(vec4<bool>(true, true, true, false)), vec4<i32>(1i, -1i, -40106i, -22478i), vec2<bool>(true, true), ~2147483647i, vec2<bool>(true, true)))), !(!(_wgslsmith_f_op_f32(467f - global2.x) >= global2.x)), true != func_3(func_3(vec4<bool>(true, true, true, true), vec2<f32>(731f, -793f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(540f, -670f)), vec2<f32>(532f, 1827f)))).x, any(vec2<bool>(false, false)));
    global0 = array<vec4<f32>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

