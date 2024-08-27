struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec4<f32>,
    d: vec2<bool>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: u32,
    c: Struct_1,
    d: vec4<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true, Struct_1(vec2<f32>(-904f, -1303f)), Struct_1(vec2<f32>(-708f, -530f)));

var<private> global1: Struct_3;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: i32, arg_3: f32) -> f32 {
    global1 = Struct_3(vec2<i32>(_wgslsmith_div_i32(~(-65058i), 1i), _wgslsmith_dot_vec4_i32(firstLeadingBit(-vec4<i32>(26847i, -1i, -9328i, 1i)), vec4<i32>(arg_1.x, 10684i, firstTrailingBit(-17298i), arg_1.x))), Struct_1(vec2<f32>(-757f, 665f)), arg_0, Struct_2(!global0.a, global1.d.b, Struct_1(global0.c.a)));
    var var_0 = false;
    var var_1 = vec3<u32>(~u_input.a, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 4294967295u), firstTrailingBit(vec3<u32>(0u, u_input.a, 0u))) >> (_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a, 1u), firstTrailingBit(1u)) % 32u), 0u), 1u);
    var var_2 = vec2<i32>(~(-abs(arg_1.x) << ((_wgslsmith_mult_u32(37350u, var_1.x) | 1u) % 32u)), firstLeadingBit(42821i));
    var_2 = ~_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(arg_1.x, -33153i), vec2<i32>(-27782i, 2147483647i)) ^ ~(-vec2<i32>(var_2.x, 1i)), arg_1);
    return _wgslsmith_f_op_f32(f32(-1f) * -945f);
}

fn func_2() -> Struct_3 {
    let var_0 = -1029f;
    global1 = Struct_3(global1.a << ((vec2<u32>(~u_input.a, ~15721u) >> (~vec2<u32>(11393u, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u)), global1.d.b, global1.b, global1.d);
    let var_1 = !(!select(select(!vec3<bool>(true, global1.d.a, true), vec3<bool>(false, true, false), vec3<bool>(false, global0.a, true)), vec3<bool>(all(vec3<bool>(global0.a, global1.d.a, global0.a)), global1.d.a, global1.d.a), select(!vec3<bool>(false, global0.a, true), vec3<bool>(global1.d.a, true, global1.d.a), !vec3<bool>(global1.d.a, global1.d.a, global0.a))));
    let var_2 = vec2<u32>(~u_input.a, u_input.a);
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_vec2_f32(-global0.b.a)), vec2<i32>(~global1.a.x, -global1.a.x), abs(firstLeadingBit(8492i)), _wgslsmith_f_op_f32(min(693f, _wgslsmith_f_op_f32(1115f - global1.c.a.x))))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1098f, -412f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.a.x, -844f, _wgslsmith_f_op_f32(f32(-1f) * -1527f))));
    return Struct_3(global1.a, global0.c, global0.c, Struct_2(any(vec3<bool>(all(var_1), select(true, global0.a, global0.a), var_1.x)), Struct_1(_wgslsmith_f_op_vec2_f32(global1.b.a + _wgslsmith_div_vec2_f32(vec2<f32>(var_3.x, -635f), global1.d.c.a))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.zx + global0.c.a)))));
}

fn func_1() -> f32 {
    var var_0 = 4294967295u;
    let var_1 = 1u;
    var var_2 = func_2();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.a.x - 1351f) * _wgslsmith_f_op_f32(ceil(var_2.b.a.x)))), global1.c.a.x)));
    global0 = global1.d;
    return var_2.d.c.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.b.a.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.c.a) - global0.c.a));
    var_1 = vec2<f32>(_wgslsmith_div_f32(-1056f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.c.a.x + -1003f), _wgslsmith_f_op_f32(step(2224f, 1099f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_f32(round(global1.d.b.a.x)));
    var_0 = 571f;
    var var_2 = vec3<u32>(~_wgslsmith_sub_u32(countOneBits(_wgslsmith_clamp_u32(u_input.a, 1u, 14547u)), 1u & _wgslsmith_add_u32(4294967295u, u_input.a)), 1u, ~_wgslsmith_add_u32(~u_input.a, _wgslsmith_add_u32(u_input.a, 4294967295u)) >> (_wgslsmith_clamp_u32(_wgslsmith_sub_u32(0u, _wgslsmith_div_u32(1u, u_input.a)), 69429u, 44323u) % 32u));
    var var_3 = global1.d;
    global1 = func_2();
    var_3 = Struct_2(true, func_2().d.c, global0.c);
    var var_4 = global1.a & global1.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~abs(~73640u), 28043u, _wgslsmith_add_u32(12832u, u_input.a)), _wgslsmith_add_i32(global1.a.x, -(firstLeadingBit(var_4.x) << (u_input.a % 32u))));
}

