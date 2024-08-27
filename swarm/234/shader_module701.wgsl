struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
    d: u32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 24>;

var<private> global1: array<u32, 23> = array<u32, 23>(0u, 64002u, 0u, 23810u, 1u, 32206u, 26344u, 4294967295u, 1u, 13442u, 4294967295u, 31968u, 81u, 4294967295u, 34831u, 10800u, 41141u, 0u, 1u, 1u, 10575u, 0u, 18625u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> u32 {
    global1 = array<u32, 23>();
    global0 = array<vec4<bool>, 24>();
    global0 = array<vec4<bool>, 24>();
    let var_0 = u_input.a.x;
    global1 = array<u32, 23>();
    return ~abs(_wgslsmith_mod_u32(~global1[_wgslsmith_index_u32(208u, 23u)], 0u));
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_2 {
    global0 = array<vec4<bool>, 24>();
    global1 = array<u32, 23>();
    global1 = array<u32, 23>();
    global0 = array<vec4<bool>, 24>();
    global0 = array<vec4<bool>, 24>();
    return Struct_2(Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(-1669f, -990f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1002f, 1168f) + vec2<f32>(-154f, 1000f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-1733f, -559f), vec2<f32>(-356f, 656f)))), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), 28026u, vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(round(584f)), select(vec2<bool>(true, false), vec2<bool>(true, true), false), ~4294967295u);
}

fn func_3(arg_0: vec4<u32>, arg_1: u32) -> u32 {
    global1 = array<u32, 23>();
    let var_0 = min(u_input.a.yy, select(_wgslsmith_clamp_vec2_i32(firstTrailingBit(~vec2<i32>(u_input.a.x, u_input.a.x)), firstTrailingBit(vec2<i32>(u_input.a.x, u_input.a.x)), ~(vec2<i32>(9546i, u_input.a.x) | vec2<i32>(-27214i, u_input.a.x))), -vec2<i32>(19511i, 5466i) | select(~u_input.a.xy, select(u_input.a.zy, vec2<i32>(u_input.a.x, u_input.a.x), true), vec2<bool>(false, false)), !func_2(_wgslsmith_mod_u32(12496u, arg_1), arg_0.x & 14309u).a.b.x));
    global1 = array<u32, 23>();
    global0 = array<vec4<bool>, 24>();
    var var_1 = u_input.a;
    return _wgslsmith_add_u32(~arg_1, 0u) ^ _wgslsmith_mult_u32(~_wgslsmith_mult_u32(func_1(), ~110247u), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 24>();
    var var_0 = func_2(func_1(), 43455u);
    global1 = array<u32, 23>();
    var_0 = func_2(min(0u, ~(~(~4117u))), global1[_wgslsmith_index_u32(0u, 23u)]);
    global1 = array<u32, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(func_3(select(vec4<u32>(var_0.d, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.a.c, 23u)], 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16870u, 23u)], 23u)], 0u), vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(28479u, 23u)], 74072u, global1[_wgslsmith_index_u32(44987u, 23u)]), true), ~4610u), 23u)], 23u)] | ~_wgslsmith_mod_u32(51295u, var_0.a.c), global1[_wgslsmith_index_u32(abs(~13066u), 23u)]), ~(vec3<i32>(abs(u_input.a.x), u_input.a.x, ~u_input.a.x) >> (~select(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.d, 23u)], 23u)], 9743u, 73991u), vec3<u32>(1u, var_0.a.c, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.a.c, 23u)], 23u)]), var_0.a.b) % vec3<u32>(32u))), 1i, vec3<i32>(u_input.a.x, -2147483647i, -1i));
}

