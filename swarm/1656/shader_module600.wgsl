struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 15> = array<vec3<i32>, 15>(vec3<i32>(-45379i, -1i, 37660i), vec3<i32>(2147483647i, 2147483647i, -1i), vec3<i32>(-28388i, -1i, i32(-2147483648)), vec3<i32>(-1i, 2147483647i, i32(-2147483648)), vec3<i32>(-36070i, -12785i, 1i), vec3<i32>(5063i, 1i, -47000i), vec3<i32>(1i, -9373i, -27626i), vec3<i32>(-60333i, 2147483647i, 7651i), vec3<i32>(1i, 2147483647i, 9562i), vec3<i32>(i32(-2147483648), 1100i, 1i), vec3<i32>(24452i, -1i, -23016i), vec3<i32>(74578i, -27870i, -1i), vec3<i32>(0i, 11945i, 20398i), vec3<i32>(-40094i, 28219i, -35986i), vec3<i32>(-62285i, 39397i, -27263i));

var<private> global1: array<Struct_2, 6>;

var<private> global2: Struct_1;

var<private> global3: array<Struct_2, 19>;

var<private> global4: f32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: i32) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(~select(u_input.d.x, 4294967295u, 20987i < (global2.a.x >> (17289u % 32u))), 6u)];
    let var_1 = var_0.a;
    var var_2 = true;
    return -1220f;
}

fn func_2(arg_0: f32) -> f32 {
    global0 = array<vec3<i32>, 15>();
    global4 = global2.b;
    var var_0 = 0u;
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(global2.b, _wgslsmith_f_op_f32(sign(global2.d)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.b)) + 1f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0 * arg_0))), any(vec2<bool>(true, false))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 705f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2.b, -1051f)))))));
    global2 = Struct_1(abs(u_input.a.xy), _wgslsmith_f_op_f32(max(-755f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-675f, 1147f)) + _wgslsmith_f_op_f32(global2.d * 649f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0, 0i))))))), i32(-1i) * -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1309f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    return -1000f;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec3<f32>) -> Struct_2 {
    global0 = array<vec3<i32>, 15>();
    global4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.e - global2.d))));
    let var_0 = vec3<bool>(false, !(!any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true))), any(vec2<bool>(true, select(true, 29235i <= arg_1.a.c, false))));
    global2 = Struct_1(-reverseBits(global2.a) ^ firstLeadingBit(-min(global2.a, vec2<i32>(arg_1.a.c, arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.x))), ~abs(arg_1.a.a.x), _wgslsmith_f_op_f32(-arg_1.a.b));
    global3 = array<Struct_2, 19>();
    return Struct_2(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-323f - _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-479f * 796f), 30778i)))), 458f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(arg_1.d * _wgslsmith_f_op_vec4_f32(-arg_1.d)))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(-344f)), _wgslsmith_f_op_f32(-global2.d), global2.d, _wgslsmith_f_op_f32(floor(-115f)))), arg_2.x);
}

fn func_1(arg_0: u32, arg_1: vec2<u32>) -> Struct_2 {
    return func_4(vec2<i32>(abs(~(~u_input.a.x)), global2.c), Struct_2(Struct_1(vec2<i32>(u_input.a.x, global2.a.x), global2.b, global2.a.x, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-global2.b)))), global2.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b, _wgslsmith_f_op_f32(global2.b - -1103f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d, 1121f, 1000f, global2.d)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.b)))), vec3<f32>(1747f, global2.b, global2.d));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: vec4<i32>) -> StorageBuffer {
    var var_0 = vec2<i32>(abs(_wgslsmith_add_i32(-_wgslsmith_div_i32(-1i, global2.c), -1i)), ~arg_0.a.c);
    var var_1 = vec4<bool>(false, true, false, var_0.x <= -1i);
    global2 = arg_0.a;
    var var_2 = ~4294967295u;
    var_1 = select(!(!select(!vec4<bool>(true, true, var_1.x, false), !vec4<bool>(false, false, var_1.x, false), global2.c >= arg_0.a.c)), !select(!vec4<bool>(true, var_1.x, false, var_1.x), vec4<bool>(arg_0.a.c != u_input.a.x, any(vec4<bool>(true, var_1.x, var_1.x, false)), var_1.x & var_1.x, var_1.x), select(select(vec4<bool>(true, true, var_1.x, true), vec4<bool>(true, false, var_1.x, false), vec4<bool>(var_1.x, false, false, true)), !vec4<bool>(true, var_1.x, true, true), !vec4<bool>(var_1.x, var_1.x, var_1.x, false))), var_1.x || (false && (u_input.a.x > func_1(u_input.d.x, u_input.b).a.c)));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(arg_0.d)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(arg_0.d))), func_4(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, arg_0.a.a.x), vec2<i32>(0i, 1i)), func_4(vec2<i32>(1i, arg_2.x), Struct_2(Struct_1(arg_2.wz, 1883f, 1i, arg_1), 493f, -1000f, arg_0.d, -213f), arg_0.d.wyz), _wgslsmith_f_op_vec3_f32(arg_0.d.yzz - vec3<f32>(arg_0.d.x, global2.d, -703f))).d))), 4294967295u, u_input.d.x, min(u_input.d << (u_input.c.ywz % vec3<u32>(32u)), ~(~vec3<u32>(u_input.d.x, u_input.c.x, 38984u))) << (firstLeadingBit(vec3<u32>(_wgslsmith_div_u32(0u, u_input.d.x), u_input.c.x << (0u % 32u), 47763u)) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    let x = u_input.a;
    s_output = func_5(func_1(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, u_input.b.x, 4294967295u), u_input.d), vec3<u32>(u_input.b.x, 16526u, var_0.x)), var_0.zz), _wgslsmith_f_op_f32(func_2(1072f)), ~_wgslsmith_add_vec4_i32(~(u_input.a >> (vec4<u32>(46117u, 4294967295u, 35098u, 0u) % vec4<u32>(32u))), vec4<i32>(reverseBits(86290i), u_input.a.x & u_input.a.x, ~2147483647i, u_input.a.x)));
}

