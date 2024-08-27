struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: vec4<bool> = vec4<bool>(true, true, true, false);

var<private> global2: array<vec4<i32>, 11>;

var<private> global3: Struct_4 = Struct_4(47997u, vec3<i32>(2147483647i, -1i, 48781i), 47175u);

var<private> global4: f32 = 451f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: Struct_4, arg_3: f32) -> f32 {
    global4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-135f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-488f + 298f) * _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(global0.x - arg_3))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global0.x, global0.x))))))));
    global4 = global0.x;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1069f, arg_3, _wgslsmith_f_op_f32(min(-940f, global0.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-507f, -819f, 484f) + vec3<f32>(arg_3, arg_3, arg_3)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-872f, 110f, 784f)))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2004f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_3, 1727f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_3))))));
    var var_0 = ~_wgslsmith_add_u32(global3.a, _wgslsmith_clamp_u32(global3.a, abs(~u_input.c.x), abs(_wgslsmith_sub_u32(arg_2.a, 34880u))));
    var var_1 = vec2<bool>(true != global1.x, select(!global1.x, any(vec4<bool>(!global1.x, true, global1.x, 17470u <= u_input.b.x)), _wgslsmith_f_op_f32(global0.x - _wgslsmith_div_f32(arg_3, 282f)) < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), global0.x))));
    return global0.x;
}

fn func_2(arg_0: Struct_4, arg_1: u32, arg_2: vec4<f32>) -> u32 {
    global2 = array<vec4<i32>, 11>();
    let var_0 = vec2<bool>(any(global1.yw), global1.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(851f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-870f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x - global0.x), 392f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(true, Struct_4(1u, arg_0.b, arg_1), arg_0, arg_2.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-696f * global0.x)))) * vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(true, Struct_4(u_input.c.x, vec3<i32>(global3.b.x, u_input.d.x, u_input.d.x), 4692u), Struct_4(4294967295u, global3.b, 46063u), arg_2.x))), _wgslsmith_f_op_f32(ceil(arg_2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(true, arg_0, arg_0, global0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.x, 1139f))) + -386f), 1871f));
    let var_2 = !global1.x && false;
    global3 = Struct_4(90367u, -(~_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.d.x, u_input.d.x), vec3<i32>(-1i, arg_0.b.x, 2147483647i))), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 4294967295u), vec2<u32>(arg_0.a, 106050u))));
    return 0u;
}

fn func_1() -> Struct_1 {
    return Struct_1(min(_wgslsmith_add_vec4_u32(vec4<u32>(func_2(Struct_4(4294967295u, u_input.d.xwy, 2431u), u_input.a, vec4<f32>(808f, global0.x, global0.x, -686f)), global3.c, u_input.c.x, 12683u), u_input.b), ~u_input.b), ~0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, 0u, u_input.b.x, 34657u), select(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b, 0u, 4294967295u, 1u), vec4<u32>(var_0.b, u_input.a, u_input.c.x, var_0.a.x)), ~vec4<u32>(50470u, 83764u, 0u, 1u), !vec4<bool>(global1.x, true, false, false))), abs(~vec4<u32>(global3.c, 0u, 81912u, 0u)) ^ var_0.a), _wgslsmith_mult_u32(0u, ~reverseBits(_wgslsmith_add_u32(26439u, 20175u))));
    global2 = array<vec4<i32>, 11>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))) - global0.x);
    global2 = array<vec4<i32>, 11>();
    let var_3 = ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(0u, 1u), _wgslsmith_dot_vec3_u32(var_1.a.ywy, var_0.a.zxy), _wgslsmith_div_u32(46318u, 16990u)), ~var_0.a.xzx));
    let var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_mod_u32(4294967295u, min(4294967295u, _wgslsmith_mod_u32(97194u, 8726u)))), -1221f, vec3<u32>(~4294967295u, abs(25114u), ~1u));
}

