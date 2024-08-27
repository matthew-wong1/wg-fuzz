struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -19732i;

var<private> global1: Struct_2 = Struct_2(65043u, vec2<u32>(4294967295u, 4294967295u), 496f, vec2<f32>(-354f, 765f));

var<private> global2: array<u32, 3>;

var<private> global3: array<vec2<bool>, 9>;

var<private> global4: u32 = 14174u;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec2<bool>, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = arg_3;
    global0 = u_input.a.x;
    global0 = abs(~11576i);
    let var_1 = arg_3.c;
    global4 = global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~global2[_wgslsmith_index_u32(_wgslsmith_add_u32(2820u, global2[_wgslsmith_index_u32(38339u, 3u)]), 3u)], _wgslsmith_mod_u32(u_input.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.a, 3u)], 3u)]) >> (global1.a % 32u)), 3u)] | ~_wgslsmith_mod_u32(_wgslsmith_div_u32(~0u, u_input.b.x), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), u_input.b.wx)));
    return u_input.a.yz << (vec2<u32>(71545u, u_input.b.x) % vec2<u32>(32u));
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_1(~1i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.d.x - _wgslsmith_f_op_f32(191f * -1043f)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c + global1.d.x) + global1.d.x)), !(!global3[_wgslsmith_index_u32(4294967295u, 9u)]));
    global0 = var_0.a;
    var var_1 = Struct_3(u_input.b, 0i, u_input.b.x, Struct_2(0u, _wgslsmith_sub_vec2_u32(~global1.b, ~global1.b >> (~global1.b % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global1.c)), global1.d.x)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.d.x - global1.c)))), _wgslsmith_f_op_vec2_f32(floor(global1.d))));
    let var_2 = !select(vec4<bool>(all(!vec4<bool>(true, var_0.b, var_0.b, true)), all(!vec4<bool>(var_0.b, var_0.c.x, false, true)), any(vec2<bool>(var_0.b, false)), var_0.b), select(!select(vec4<bool>(true, var_0.c.x, var_0.c.x, true), vec4<bool>(false, var_0.c.x, true, var_0.c.x), vec4<bool>(true, true, var_0.b, var_0.b)), select(!vec4<bool>(var_0.b, var_0.c.x, false, var_0.c.x), vec4<bool>(true, var_0.b, true, true), select(vec4<bool>(false, var_0.b, false, var_0.b), vec4<bool>(var_0.c.x, true, var_0.b, true), vec4<bool>(true, var_0.c.x, var_0.b, var_0.c.x))), select(vec4<bool>(true, var_0.b, false, var_0.c.x), vec4<bool>(var_0.b, var_0.c.x, var_0.b, true), vec4<bool>(var_0.b, false, var_0.c.x, true))), any(vec2<bool>(!var_0.c.x, any(vec4<bool>(true, var_0.c.x, false, var_0.b)))));
    var var_3 = 0u;
    return _wgslsmith_div_vec2_u32(~abs(u_input.b.xz ^ u_input.b.zy), vec2<u32>(_wgslsmith_mult_u32(~min(global2[_wgslsmith_index_u32(0u, 3u)], 0u), ~var_1.d.a), _wgslsmith_div_u32(0u, ~0u)));
}

fn func_2(arg_0: Struct_1) -> vec3<f32> {
    global2 = array<u32, 3>();
    let var_0 = Struct_3(min(_wgslsmith_mod_vec4_u32(~vec4<u32>(17753u, u_input.b.x, 100605u, 948u), vec4<u32>(~34864u, min(8575u, global1.a), global1.a, ~1u)), ~(vec4<u32>(0u, global2[_wgslsmith_index_u32(1u, 3u)], global1.a, u_input.b.x) >> (~u_input.b % vec4<u32>(32u)))), 1i, _wgslsmith_add_u32(~4294967295u, 1u), Struct_2(~global1.a, ~abs(func_3()), _wgslsmith_f_op_f32(686f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) - -1167f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-558f, -603f)) * _wgslsmith_f_op_vec2_f32(abs(global1.d))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.d), vec2<f32>(global1.c, global1.d.x)))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(global1.d.x * _wgslsmith_f_op_f32(-var_0.d.d.x)), _wgslsmith_f_op_f32(-512f - var_0.d.c), -662f);
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) * _wgslsmith_f_op_f32(abs(var_1.x)));
    return vec3<f32>(var_1.x, 1140f, _wgslsmith_f_op_f32(-var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = ~1u;
    let var_0 = countOneBits(~(-u_input.a.wy ^ func_1(-1115f, _wgslsmith_f_op_f32(global1.d.x * 102f), select(vec2<bool>(true, true), global3[_wgslsmith_index_u32(global1.b.x, 9u)], true), Struct_1(-6005i, true, global3[_wgslsmith_index_u32(20199u, 9u)]))));
    let var_1 = global1.b.x != ~_wgslsmith_mult_u32(global1.b.x, 34432u);
    global3 = array<vec2<bool>, 9>();
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-739f, _wgslsmith_f_op_f32(global1.c * global1.d.x), _wgslsmith_f_op_f32(-global1.d.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.x, -678f, global1.c)) * vec3<f32>(global1.c, global1.c, global1.d.x))) * _wgslsmith_f_op_vec3_f32(func_2(Struct_1(abs(var_0.x), var_1, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 3u)] & 26568u, 3u)], 9u)])))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c * global1.c) - global1.d.x), global1.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-724f, global1.c)))));
    let var_3 = var_0.x;
    var var_4 = var_2.zy;
    let x = u_input.a;
    s_output = StorageBuffer(448f);
}

