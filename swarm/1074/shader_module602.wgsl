struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: bool,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 2>;

var<private> global1: array<Struct_4, 31>;

var<private> global2: array<vec4<f32>, 8>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> Struct_1 {
    global0 = array<vec4<f32>, 2>();
    global0 = array<vec4<f32>, 2>();
    var var_0 = true;
    return Struct_1(~(u_input.b.x & u_input.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(112f, 515f, -175f), vec3<f32>(1000f, 841f, -1412f)))))), 7290i, ~abs(u_input.b.x), -2147483647i);
}

fn func_3(arg_0: Struct_5, arg_1: u32, arg_2: f32) -> f32 {
    global1 = array<Struct_4, 31>();
    let var_0 = firstLeadingBit(vec4<i32>(_wgslsmith_sub_i32(func_2().e, ~(arg_0.c.c & u_input.b.x)), u_input.b.x, 0i, min(i32(-1i) * -63886i, ~arg_0.c.c)));
    let var_1 = var_0.wz;
    var var_2 = select(~_wgslsmith_add_vec2_i32(var_1 << (vec2<u32>(11787u, 6130u) % vec2<u32>(32u)), -var_1), -var_1, !vec2<bool>(true, u_input.b.x != arg_0.c.c)) & var_1;
    global1 = array<Struct_4, 31>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-433f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(arg_2)))))), all(!select(vec2<bool>(false, false), vec2<bool>(true, arg_0.c.d), vec2<bool>(arg_0.c.e.x, arg_0.c.d))))));
}

fn func_1() -> Struct_5 {
    global1 = array<Struct_4, 31>();
    let var_0 = -827f;
    var var_1 = u_input.b.x;
    var var_2 = vec2<bool>((-53275i == -_wgslsmith_mult_i32(-2147483647i, u_input.b.x)) && false, false);
    var var_3 = func_2();
    return Struct_5(var_3.b.xz, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_3(vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_5(var_3.b.xy, var_3.b.x, Struct_3(vec4<f32>(-627f, var_0, var_0, var_0), var_3.b.x, 2496i, var_2.x, vec4<bool>(false, true, false, var_2.x))), u_input.a ^ u_input.c, -137f)), _wgslsmith_f_op_f32(func_3(Struct_5(vec2<f32>(-2674f, 336f), var_0, Struct_3(vec4<f32>(var_3.b.x, var_0, -1496f, 1169f), 445f, 0i, true, vec4<bool>(false, false, var_2.x, true))), ~0u, _wgslsmith_f_op_f32(-340f + 2037f))), 1665f, var_0), var_3.b.x, ~(~(-2147483647i)) & _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.c, 2147483647i, 2147483647i, 10544i), vec4<i32>(1i, var_3.e, -2147483647i, 32616i)), any(select(select(vec4<bool>(false, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, true, true), var_2.x), select(vec4<bool>(var_2.x, var_2.x, var_2.x, true), vec4<bool>(var_2.x, var_2.x, true, var_2.x), true), true)), select(!vec4<bool>(var_2.x, true, true, false), !select(vec4<bool>(true, false, false, var_2.x), vec4<bool>(true, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)), vec4<bool>(true, var_2.x, true, true))));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<i32>) -> u32 {
    global2 = array<vec4<f32>, 8>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1890f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(452f, _wgslsmith_div_f32(-431f, 187f), arg_0.c.d))) + arg_0.c.a.x));
    let var_1 = Struct_2(arg_0.c.a, ~_wgslsmith_add_u32(0u, reverseBits(47957u)), _wgslsmith_add_u32(firstLeadingBit(min(u_input.a, u_input.c)), ~(~u_input.a)) & countOneBits(abs(0u)), Struct_1(u_input.b.x, vec3<f32>(614f, var_0, -1933f), u_input.b.x, u_input.b.x, ~(_wgslsmith_mult_i32(0i, arg_1.x) & -12649i)));
    var var_2 = func_1().c;
    let var_3 = vec2<bool>(any(vec3<bool>(all(!vec4<bool>(false, arg_0.c.d, arg_0.c.d, true)), var_2.e.x, select(!var_2.e.x, false, true))), arg_0.c.e.x && (true & !var_2.d));
    return 49269u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-208f * _wgslsmith_f_op_f32(1461f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(834f)) - 1325f))));
    global0 = array<vec4<f32>, 2>();
    global1 = array<Struct_4, 31>();
    var var_1 = vec4<u32>(~(~0u), 0u ^ _wgslsmith_mod_u32(~4294967295u, select(0u, ~40206u, false)), func_4(func_1(), vec3<i32>(func_1().c.c, 48064i, u_input.b.x)), 4294967295u);
    global2 = array<vec4<f32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-func_1().c.a)) * vec4<f32>(2020f, 1518f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1102f))), 1011f)), ~0i);
}

