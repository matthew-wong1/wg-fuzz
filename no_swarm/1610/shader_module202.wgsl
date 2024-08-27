struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(0i), -180f, Struct_1(14996i), vec2<f32>(-530f, 1437f));

var<private> global1: f32;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global0.d + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -784f), global0.d.x))));
    let var_1 = -38906i;
    global1 = -1018f;
    var var_2 = global0.a;
    let var_3 = 1i;
    return !(!vec3<bool>(true, all(vec3<bool>(false, false, true)), var_0.x < _wgslsmith_f_op_f32(f32(-1f) * -1651f)));
}

fn func_3(arg_0: vec2<bool>) -> vec3<bool> {
    var var_0 = ~0i;
    let var_1 = ~(vec2<i32>(abs(_wgslsmith_div_i32(u_input.a.x, u_input.a.x)), _wgslsmith_clamp_i32(-2147483647i, global0.a.a, -48061i)) << (min(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b), u_input.b.x), reverseBits(abs(vec2<u32>(35746u, 0u)))) % vec2<u32>(32u)));
    let var_2 = 120305u;
    global0 = Struct_2(global0.c, 370f, Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.a, global0.a.a), vec2<i32>(var_1.x, var_1.x)), ~50563i)), global0.d);
    let var_3 = Struct_3(Struct_2(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-437f))) + _wgslsmith_f_op_f32(-global0.b)), Struct_1(5350i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(global0.b)), -818f))), firstTrailingBit(~vec2<i32>(-10876i, ~(-2147483647i))));
    return vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -418f))) >= _wgslsmith_f_op_f32(221f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.d.x, var_3.a.b)) + -848f)), true | any(select(vec2<bool>(false, arg_0.x), func_1().yz, true)), func_1().x);
}

fn func_2(arg_0: vec3<u32>) -> StorageBuffer {
    var var_0 = u_input.a;
    var var_1 = u_input.b.zz;
    global1 = _wgslsmith_f_op_f32(min(776f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -378f), 303f))));
    var var_2 = func_3(vec2<bool>(all(vec3<bool>(false, all(vec4<bool>(false, false, true, false)), true)), true));
    var var_3 = Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, -710f, _wgslsmith_f_op_f32(global0.d.x - global0.b)) * vec3<f32>(-662f, _wgslsmith_div_f32(global0.b, global0.d.x), _wgslsmith_f_op_f32(-global0.d.x))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-551f, 111f, -770f)))))), vec3<bool>(all(vec2<bool>(true, true)), func_3(!var_2.yy).x, true), ~countOneBits(~48264u | var_1.x), !(!vec4<bool>(true, select(true, true, false), 1i != global0.a.a, var_2.x)));
    return StorageBuffer(vec4<u32>(u_input.b.x, 16765u, ~(~1u), _wgslsmith_mod_u32(44946u, _wgslsmith_clamp_u32(var_3.c, var_1.x, _wgslsmith_mult_u32(var_3.c, var_3.c)))), var_3.a.x, vec4<i32>(_wgslsmith_mult_i32(var_0.x, abs(global0.a.a)), _wgslsmith_dot_vec2_i32(~var_0.zz & reverseBits(vec2<i32>(2147483647i, global0.c.a)), ~(-u_input.a.xy)), -2147483647i, 0i), _wgslsmith_mult_vec2_i32(var_0.xx, _wgslsmith_mult_vec2_i32(vec2<i32>(-26800i, _wgslsmith_add_i32(var_0.x, var_0.x)), u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(u_input.a ^ vec3<i32>(u_input.a.x, global0.a.a, -2147483647i >> (~u_input.b.x % 32u)));
    var var_1 = !select(!vec3<bool>(global0.d.x != 1149f, any(vec3<bool>(false, true, true)), select(true, false, true)), func_1(), true);
    let var_2 = false;
    var var_3 = Struct_1(_wgslsmith_add_i32(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_0.x), u_input.a.xz) & 1i), 72556i));
    let var_4 = ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.b.x, 4294967295u), _wgslsmith_mod_u32(u_input.b.x, u_input.b.x & 15114u)), 0u);
    let x = u_input.a;
    s_output = func_2(u_input.b);
}

