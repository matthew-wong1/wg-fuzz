struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 24>;

var<private> global1: array<bool, 27>;

var<private> global2: Struct_1;

var<private> global3: array<i32, 20>;

var<private> global4: Struct_4 = Struct_4(false);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = i32(-1i) * -9628i;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, global2.a, -1576f, _wgslsmith_div_f32(global2.a, _wgslsmith_f_op_f32(global2.a * global2.a)))));
    let var_2 = Struct_3(~_wgslsmith_sub_vec3_u32(~select(vec3<u32>(68750u, arg_0, 1u), vec3<u32>(1u, 19115u, arg_0), true), ~vec3<u32>(arg_0, arg_0, 1u) << (_wgslsmith_mult_vec3_u32(vec3<u32>(30174u, 1u, 1u), vec3<u32>(arg_0, 44578u, 60382u)) % vec3<u32>(32u))), vec3<u32>(arg_0, ~(~countOneBits(arg_0)), ~arg_0));
    global1 = array<bool, 27>();
    let var_3 = Struct_1(-1263f);
    return arg_0;
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: u32) -> f32 {
    var var_0 = countOneBits(_wgslsmith_mult_u32(arg_2, 0u));
    global0 = array<vec3<i32>, 24>();
    global2 = Struct_1(_wgslsmith_f_op_f32(-663f * global2.a));
    var_0 = ~(~abs(max(77291u, arg_2) ^ arg_2));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-global2.a));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1482f, -1439f)))), global2.a)));
}

fn func_2(arg_0: bool) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)), _wgslsmith_f_op_f32(-1019f * global2.a)), _wgslsmith_f_op_f32(func_4(1i, ~30024u, _wgslsmith_div_u32(4294967295u, func_3(58082u)))), -1023f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-200f, 388f, global2.a, -2524f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.a, -413f, global2.a, -359f)))), _wgslsmith_div_vec4_f32(vec4<f32>(-3553f, _wgslsmith_div_f32(global2.a, 237f), _wgslsmith_f_op_f32(646f - global2.a), 1014f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a, 1417f, -1146f, -1385f) + vec4<f32>(global2.a, -538f, -422f, 563f)))))), vec4<bool>(true, all(select(!vec4<bool>(arg_0, global4.a, true, true), vec4<bool>(arg_0, global4.a, global4.a, true), select(true, false, arg_0))), any(vec4<bool>(global4.a, global4.a, all(vec4<bool>(global1[_wgslsmith_index_u32(27090u, 27u)], global4.a, global1[_wgslsmith_index_u32(41792u, 27u)], true)), true)), true)));
    global4 = Struct_4(all(vec3<bool>(true, true, true)));
    var var_1 = Struct_4(!global4.a);
    global2 = Struct_1(186f);
    let var_2 = 2133i;
    return Struct_3(~(~(~vec3<u32>(26590u, 1u, 38578u))), ~abs(vec3<u32>(1u, 1u, 1u)));
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1044f - -905f), _wgslsmith_f_op_f32(530f + _wgslsmith_f_op_f32(-global2.a)))), global2.a)));
    global0 = array<vec3<i32>, 24>();
    global0 = array<vec3<i32>, 24>();
    var var_1 = Struct_1(global2.a);
    let var_2 = func_2(all(select(!select(vec3<bool>(true, false, true), vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 27u)], false), false), vec3<bool>(any(vec4<bool>(global1[_wgslsmith_index_u32(29015u, 27u)], true, global1[_wgslsmith_index_u32(2545u, 27u)], global4.a)), global4.a, !global1[_wgslsmith_index_u32(29545u, 27u)]), !vec3<bool>(global4.a, true, false))));
    return Struct_4(true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 24>();
    let var_0 = ~4294967295u;
    global4 = func_1();
    var var_1 = var_0;
    var_1 = 26240u;
    let var_2 = func_2(global1[_wgslsmith_index_u32(abs(4294967295u), 27u)]);
    var_1 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.a + global2.a), 1192f), _wgslsmith_f_op_f32(global2.a * global2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a))))), var_0, _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(min(vec2<u32>(var_0, 1u), vec2<u32>(var_0, 4294967295u)), var_2.b.zx), var_2.a.xx), var_2.a.yy), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, global2.a, global2.a, -2253f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1272f, global2.a, 204f, global2.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-323f, global2.a, global2.a, global2.a))) - vec4<f32>(global2.a, global2.a, global2.a, -1000f)), any(vec4<bool>(global4.a, true, global4.a, global1[_wgslsmith_index_u32(42525u, 27u)])))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)), _wgslsmith_f_op_f32(floor(108f)), global2.a, _wgslsmith_f_op_f32(round(global2.a))))));
}

