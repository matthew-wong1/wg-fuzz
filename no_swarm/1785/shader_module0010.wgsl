struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 13>;

var<private> global1: array<Struct_1, 23>;

var<private> global2: bool;

var<private> global3: Struct_1 = Struct_1(false);

var<private> global4: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    global0 = array<vec3<i32>, 13>();
    global3 = Struct_1(global4.a);
    let var_0 = Struct_1(~(~1u) < _wgslsmith_add_u32(~(~39613u), ~u_input.c));
    let var_1 = Struct_1(!(arg_0 && (~u_input.a == 33232u)));
    var var_2 = Struct_1(true);
    return global1[_wgslsmith_index_u32(u_input.c, 23u)];
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    var var_0 = arg_1.a;
    let var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(2147483647i, u_input.b));
    var var_2 = !all(vec3<bool>(true, global4.a, all(!vec4<bool>(global4.a, global4.a, true, false))));
    var var_3 = arg_0;
    let var_4 = Struct_1(global3.a);
    return func_2(global4.a);
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = func_2(true);
    return Struct_1(true);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = func_1(func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-284f + -232f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1291f - 1247f))), Struct_1(false)), Struct_1(false), _wgslsmith_dot_vec2_u32(vec2<u32>(22616u >> (0u % 32u), _wgslsmith_div_u32(u_input.a, max(arg_0.x, arg_0.x))), abs(vec2<u32>(0u, 90494u))));
    global2 = func_1(Struct_1(!(!global4.a)), func_1(Struct_1(false), Struct_1(any(!vec3<bool>(arg_1.a, true, arg_1.a))), _wgslsmith_mult_u32(arg_0.x, u_input.c)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(arg_0, arg_0), 1u)).a;
    return func_2(~((u_input.b << (59581u % 32u)) & arg_2) <= -u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_4(~(vec3<u32>(28446u, 36330u ^ u_input.c, u_input.a) & ~(~vec3<u32>(0u, u_input.a, 40162u))), func_3(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(542f * 1782f))), func_1(Struct_1(false || global3.a), Struct_1(any(vec2<bool>(false, global3.a))), 75300u)), -21449i);
    global0 = array<vec3<i32>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(-(~22941i), ~vec4<i32>(-2147483647i, 1i, 44804i >> (u_input.c % 32u), ~1i & (u_input.b & u_input.b)), vec4<u32>(_wgslsmith_mult_u32(u_input.a, u_input.c ^ u_input.a), select(u_input.a, ~(~64707u), func_2(global4.a || false).a), abs(1u), abs(firstTrailingBit(1u))));
}

