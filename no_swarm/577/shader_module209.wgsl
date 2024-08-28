struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<bool>,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(i32(-2147483648), 0i, -1i), true, vec3<bool>(false, false, true), vec2<u32>(0u, 69254u), 2092f);

var<private> global1: vec3<bool> = vec3<bool>(false, true, true);

var<private> global2: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_3(global0.c.x, Struct_1(_wgslsmith_clamp_vec3_i32(global0.a, global0.a, global0.a), global0.c.x, select(global0.c, !global0.c, true), ~abs(global0.d), _wgslsmith_f_op_f32(-248f * global0.e)), false);
    global0 = Struct_1(abs(_wgslsmith_mult_vec3_i32(reverseBits(abs(vec3<i32>(-1i, -2147483647i, -11101i))), var_0.b.a)), all(vec2<bool>(true, true)), global0.c, vec2<u32>(u_input.e, ~reverseBits(~4294967295u)), var_0.b.e);
    var var_1 = Struct_4(!((global1.x && true) && var_0.a) && global1.x, ((_wgslsmith_add_i32(u_input.a.x, u_input.a.x) | var_0.b.a.x) << (1u % 32u)) ^ u_input.a.x, global0.d, _wgslsmith_f_op_f32(var_0.b.e + 1f), var_0.b.e);
    global0 = var_0.b;
    var_0 = Struct_3(true, Struct_1(u_input.a.xxx, var_0.c, select(vec3<bool>(all(global0.c), any(global1.yx), !var_1.a), select(select(var_0.b.c, global0.c, vec3<bool>(true, var_1.a, var_0.c)), !var_0.b.c, var_0.b.c), any(vec4<bool>(true, var_0.b.b, false, true))), countOneBits(firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(20596u, 44988u), vec2<u32>(var_1.c.x, global0.d.x)))), var_1.e), any(var_0.b.c));
    return var_1.c;
}

fn func_2() -> Struct_1 {
    return Struct_1(reverseBits(reverseBits(vec3<i32>(u_input.a.x, ~0i, global0.a.x))), global0.c.x, !global0.c, _wgslsmith_mult_vec2_u32(global0.d, ~_wgslsmith_mult_vec2_u32(func_3(), ~u_input.b)), _wgslsmith_f_op_f32(min(-798f, global0.e)));
}

fn func_1() -> vec4<i32> {
    var var_0 = ~u_input.a.x;
    global2 = !global0.b;
    var_0 = u_input.a.x;
    let var_1 = Struct_3(global0.b, func_2(), global1.x);
    var var_2 = global0.e;
    return -u_input.a;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: f32) -> vec2<f32> {
    let var_0 = 1i;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 * vec2<f32>(248f, -704f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.e, arg_0.x) - vec2<f32>(994f, arg_0.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 + vec2<f32>(-1000f, global0.e)), arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(vec2<f32>(global0.e, _wgslsmith_f_op_f32(global0.e * global0.e)), func_1() | (u_input.a | u_input.a), global0.e))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, -184f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-302f, -474f))))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1458f, _wgslsmith_div_f32(global0.e, global0.e)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.e, global0.e) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.e, 1000f)))))));
    let var_1 = Struct_5(-global0.a.x);
    global1 = vec3<bool>(global0.b, 605f == _wgslsmith_f_op_f32(-432f + _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(max(-1336f, global0.e))))), select((~69206u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(global0.d.x, 4294967295u), vec2<u32>(40662u, 0u)) % 32u)) >= ~17248u, false, false));
    let var_2 = u_input.a | u_input.a;
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(584f, global0.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.e, var_0.x))), _wgslsmith_f_op_f32(sign(var_0.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.e)) * _wgslsmith_f_op_f32(-166f - global0.e)) * _wgslsmith_f_op_f32(func_2().e - -844f)))));
    global1 = global0.c;
    let var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.e, -230f, 1001f, -370f) * vec4<f32>(-1920f, -1000f, global0.e, global0.e))))), _wgslsmith_div_u32(_wgslsmith_div_u32(~var_4.d.x ^ var_4.d.x, _wgslsmith_dot_vec3_u32(~u_input.c.zyz, abs(u_input.c.xyx))), _wgslsmith_sub_u32(u_input.b.x, var_4.d.x)));
}

