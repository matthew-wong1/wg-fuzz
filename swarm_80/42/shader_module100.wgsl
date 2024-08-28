struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<f32, 12> = array<f32, 12>(-1150f, -1533f, 1043f, -785f, -1000f, -1025f, -796f, -1374f, -657f, -304f, 837f, -1165f);

var<private> global2: i32 = 1i;

var<private> global3: Struct_1;

var<private> global4: array<vec4<i32>, 30>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1() -> u32 {
    global1 = array<f32, 12>();
    var var_0 = ~_wgslsmith_div_i32(u_input.c.x, 1i << (_wgslsmith_add_u32(1u, u_input.a.x) % 32u)) < u_input.c.x;
    var var_1 = select(vec2<bool>(all(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true)), !((global0.c.a <= -5498i) && true)), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), any(vec2<bool>(true, true)));
    let var_2 = u_input.d.zy;
    var var_3 = true;
    return _wgslsmith_mult_u32(var_2.x, var_2.x);
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: f32) -> vec3<bool> {
    return !select(vec3<bool>((-1i >= u_input.c.x) & true, select(arg_1, arg_2 == -214f, !arg_1), false), select(!select(vec3<bool>(false, arg_1, true), vec3<bool>(true, false, arg_1), vec3<bool>(arg_1, arg_1, arg_1)), vec3<bool>(select(false, false, true), any(vec3<bool>(arg_1, arg_1, true)), true), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(52523u, 12u)]) > _wgslsmith_div_f32(global0.b, 1000f)), vec3<bool>(arg_1 && !arg_1, all(vec3<bool>(true, true, true)), (global3.a > 1i) || arg_1));
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = false;
    let var_1 = func_3(u_input.c, true, global0.b);
    global3 = Struct_1(-1i);
    let var_2 = -399f;
    let var_3 = true;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -u_input.c.x;
    global4 = array<vec4<i32>, 30>();
    global1 = array<f32, 12>();
    var var_0 = Struct_3(_wgslsmith_sub_u32(func_2(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b, 7827u), func_1())), 48410u), global3.a, global0.d.zy, global0.c, global0.d.x);
    var var_1 = u_input.e.yz;
    global3 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer((~global0.c.a | -(1i >> (u_input.e.x % 32u))) & (((u_input.c.x | -1i) >> (4294967295u % 32u)) << (4294967295u % 32u)), vec4<u32>(~(u_input.e.x << (var_0.a % 32u)), _wgslsmith_clamp_u32(4094u, _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.e.x, var_0.a), var_0.a), 4294967295u), _wgslsmith_sub_u32(firstLeadingBit(~u_input.d.x), 0u), ~abs(18132u)), _wgslsmith_dot_vec2_u32(abs(~firstLeadingBit(vec2<u32>(var_1.x, var_1.x))), u_input.e.zy ^ vec2<u32>(var_0.a, 30256u)), vec2<i32>(19820i, -1774i));
}

