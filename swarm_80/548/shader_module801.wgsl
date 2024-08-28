struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: bool,
    d: vec3<u32>,
    e: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 32>;

var<private> global1: Struct_4 = Struct_4(4294967295u, Struct_3(vec4<i32>(2147483647i, i32(-2147483648), 52867i, 10026i), false, false, vec3<u32>(0u, 50860u, 34951u), 1192f), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true));

var<private> global2: array<vec4<f32>, 4> = array<vec4<f32>, 4>(vec4<f32>(-313f, -541f, 627f, 1475f), vec4<f32>(126f, 681f, 1000f, 1475f), vec4<f32>(799f, 456f, 1356f, 420f), vec4<f32>(1034f, 1785f, -362f, 1956f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_5) -> u32 {
    global0 = array<vec3<i32>, 32>();
    global0 = array<vec3<i32>, 32>();
    return 1u;
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: u32) -> u32 {
    global1 = arg_0;
    let var_0 = Struct_1(arg_1.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.ywy), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.e, -1000f, arg_1.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global1.b.e, global1.b.e))))), 2147483647i);
    var var_1 = 0i << (1u % 32u);
    let var_2 = arg_0;
    var var_3 = select(vec3<u32>(select(_wgslsmith_mod_u32(arg_0.b.d.x, 41603u), ~arg_2, true), _wgslsmith_mult_u32(arg_2, global1.a), ~1599u), _wgslsmith_sub_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(20076u, var_2.b.d.x), vec2<u32>(arg_2, arg_0.a)), 36155u, var_2.a), vec3<u32>(_wgslsmith_mod_u32(1u, abs(25077u)), 67375u, func_1(Struct_5(arg_0.d, vec3<bool>(true, true, true), Struct_2(1u))))), select(arg_0.d.yyw, vec3<bool>(global1.c.x, !arg_0.d.x, false), arg_0.c.x | any(select(vec4<bool>(true, true, true, global1.d.x), var_2.d, false))));
    return 32640u;
}

fn func_2(arg_0: i32) -> StorageBuffer {
    global2 = array<vec4<f32>, 4>();
    var var_0 = Struct_4(4294967295u, Struct_3(~select(vec4<i32>(arg_0, arg_0, arg_0, 54503i), _wgslsmith_clamp_vec4_i32(global1.b.a, vec4<i32>(global1.b.a.x, u_input.a.x, u_input.a.x, -17691i), global1.b.a), select(vec4<bool>(true, global1.d.x, global1.c.x, global1.b.c), global1.c, global1.d)), global1.b.b & !global1.b.c, any(global1.c.zzx), vec3<u32>(1u, ~func_3(Struct_4(global1.a, global1.b, global1.d, global1.d), global2[_wgslsmith_index_u32(global1.a, 4u)], global1.b.d.x), ~0u), 593f), !global1.c, !global1.d);
    global0 = array<vec3<i32>, 32>();
    let var_1 = Struct_1(342f, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.b.e, 2053f, 1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-615f, 1611f, 217f) - vec3<f32>(var_0.b.e, -592f, 674f))))))), ~_wgslsmith_add_i32(2147483647i | ~arg_0, abs(-16710i)));
    global2 = array<vec4<f32>, 4>();
    return StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(f32(-1f) * -1044f)))), 1788f, -1094f, _wgslsmith_div_f32(-1103f, _wgslsmith_f_op_f32(f32(-1f) * -370f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 46274i;
    var var_1 = global1.b.e;
    var var_2 = Struct_2(global1.a);
    var_1 = -626f;
    var_2 = Struct_2(max(_wgslsmith_mult_u32(~14470u, _wgslsmith_mod_u32(~global1.a, func_1(Struct_5(global1.d, vec3<bool>(true, global1.d.x, global1.c.x), Struct_2(0u))))), 0u));
    let x = u_input.a;
    s_output = func_2(firstLeadingBit(global1.b.a.x));
}

