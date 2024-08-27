struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<bool>,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9>;

var<private> global1: Struct_1 = Struct_1(976f, false, vec4<bool>(true, false, false, true), vec3<bool>(false, true, true), true);

var<private> global2: bool;

var<private> global3: i32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = abs(vec3<i32>(-1i) * -u_input.e);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + -2112f);
    let var_2 = ~(select(vec4<u32>(u_input.b, u_input.b, u_input.b, 63847u) ^ vec4<u32>(10645u, u_input.b, 16325u, 4294967295u), ~vec4<u32>(11685u, u_input.d, 5745u, 22731u), !any(vec3<bool>(false, global1.c.x, global1.b))) ^ _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b, 4294967295u, u_input.d, 122727u) ^ countOneBits(vec4<u32>(39821u, 4294967295u, 4294967295u, 24678u)), max(~vec4<u32>(u_input.d, 62799u, u_input.d, 28319u), abs(vec4<u32>(515u, 4294967295u, 54033u, 59496u)))));
    global1 = Struct_1(-181f, true, !(!(!select(global1.c, vec4<bool>(global1.d.x, false, global1.c.x, global1.e), global1.d.x))), select(vec3<bool>(all(vec2<bool>(global1.e, global1.d.x)), any(vec3<bool>(false, global1.d.x, global1.e)), select(!global1.c.x, true, true)), select(select(!vec3<bool>(global1.e, true, global1.d.x), vec3<bool>(global1.e, global1.e, true), vec3<bool>(false, global1.e, global1.d.x)), vec3<bool>(false, global1.c.x, !global1.e), !(!global1.d)), global1.c.xwy), false);
    var_1 = global1.a;
    return global1.a;
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1) -> f32 {
    let var_0 = ~vec4<u32>(u_input.b, ~37488u, u_input.b, ~u_input.b);
    global2 = global1.e;
    global3 = u_input.c.x;
    global0 = array<Struct_2, 9>();
    var var_1 = !(!(1f <= arg_2.a));
    return -460f;
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> vec2<u32> {
    var var_0 = u_input.c.x;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(arg_0 + -348f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.a), arg_0))))));
    global3 = 2147483647i;
    var_1 = vec2<f32>(-1218f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), 1000f)));
    let var_2 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, arg_0, _wgslsmith_f_op_f32(-432f + var_1.x), _wgslsmith_f_op_f32(round(287f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1876f, global1.a, var_1.x)))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.x)) - _wgslsmith_f_op_f32(round(-1105f))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-908f))), false, vec4<bool>(true, any(select(vec4<bool>(global1.b, global1.d.x, false, true), vec4<bool>(true, false, global1.b, false), vec4<bool>(global1.e, global1.e, false, global1.e))), u_input.c.x != u_input.c.x, global1.e), !vec3<bool>(false, true, global1.e), any(select(vec3<bool>(global1.e, global1.e, false), global1.c.zwx, vec3<bool>(global1.c.x, true, global1.b))))));
    return arg_1.zy;
}

fn func_1(arg_0: i32, arg_1: bool) -> f32 {
    var var_0 = ~select(select(select(vec2<u32>(u_input.b, u_input.d), ~vec2<u32>(u_input.d, 0u), !global1.d.yy), func_2(-620f, ~vec3<u32>(39595u, 44193u, u_input.b)), any(select(vec2<bool>(true, true), vec2<bool>(false, arg_1), vec2<bool>(global1.b, false)))), vec2<u32>(u_input.d, min(1u, 4294967295u) | u_input.b), arg_1);
    var var_1 = Struct_1(-1000f, true, !(!global1.c), global1.c.wxx, true);
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_1.a))));
    var var_3 = ~abs(-2147483647i);
    var var_4 = vec2<u32>(0u, _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(0u, 24830u >> (u_input.b % 32u), 34595u)), min(~vec3<u32>(5199u, 27443u, 0u), vec3<u32>(u_input.d, ~var_0.x, _wgslsmith_add_u32(u_input.d, 4294967295u)))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2825f, -711f, global1.d.x))) * _wgslsmith_f_op_f32(max(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + -1674f)))), var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 9>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1284f, global1.a, -1524f))))));
    global2 = false;
    var var_1 = u_input.e.x;
    let var_2 = ~_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-2147483647i, u_input.c.x, u_input.a, 1i), vec4<i32>(1i, -11218i, u_input.a, -3905i) ^ vec4<i32>(-2147483647i, u_input.e.x, -2147483647i, -2147483647i), ~vec4<i32>(u_input.a, u_input.e.x, u_input.c.x, 79668i)), abs(abs(vec4<i32>(u_input.a, -1i, 0i, u_input.a)))), vec4<i32>(-_wgslsmith_div_i32(5872i, -1i), -61923i, 2147483647i, -53415i));
    var var_3 = vec2<u32>(49227u, u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.zy, u_input.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -722f) + _wgslsmith_f_op_f32(func_1(_wgslsmith_clamp_i32(u_input.c.x, var_2.x, -58741i), var_0.x >= var_0.x)))));
}

