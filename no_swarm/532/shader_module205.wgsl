struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<u32>, 22>;

var<private> global2: Struct_1 = Struct_1(-452f, true, vec2<u32>(67836u, 15730u));

var<private> global3: array<Struct_2, 28>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-669f, _wgslsmith_f_op_f32(-1853f - global2.a))), -994f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.a))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-968f)) - _wgslsmith_f_op_f32(global2.a + global2.a)) - _wgslsmith_f_op_f32(min(1000f, _wgslsmith_div_f32(global2.a, global2.a)))))));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(115f, global2.a, global2.b)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1704f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.a, -177f, global2.a), vec3<f32>(659f, -1477f, -1372f))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.a, global2.a, global2.a))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(global2.a - global2.a), 837f, _wgslsmith_f_op_f32(round(587f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, global2.a, -601f)), vec3<f32>(global2.a, global2.a, global2.a)), global2.b))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-845f, -884f, global2.a), vec3<f32>(561f, var_1.x, global2.a))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(440f, -228f, var_1.x)))))));
    var var_2 = global2.b;
    var var_3 = Struct_3(!global2.b, 1u);
    return _wgslsmith_dot_vec3_i32(-reverseBits((vec3<i32>(u_input.d.x, u_input.b.x, 30835i) << (vec3<u32>(var_3.b, 4294967295u, global2.c.x) % vec3<u32>(32u))) >> (~vec3<u32>(55396u, global2.c.x, 15798u) % vec3<u32>(32u))), u_input.a.zyy << (((~vec3<u32>(12692u, global2.c.x, global2.c.x) ^ ~vec3<u32>(var_3.b, global2.c.x, var_3.b)) & abs(vec3<u32>(var_3.b, var_3.b, 44352u))) % vec3<u32>(32u)));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_3) -> Struct_1 {
    global0 = 6217u;
    var var_0 = !(all(!select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(arg_2.a, false, arg_1), vec3<bool>(true, true, false))) | true);
    global3 = array<Struct_2, 28>();
    global2 = Struct_1(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(sign(arg_0))), func_3() == 2147483647i, reverseBits(_wgslsmith_add_vec2_u32(global2.c, ~(vec2<u32>(arg_2.b, global2.c.x) << (vec2<u32>(global2.c.x, global2.c.x) % vec2<u32>(32u))))));
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) - -1798f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global2.a, arg_0, true)), _wgslsmith_f_op_f32(round(2062f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1170f - 568f)))), true, vec2<u32>(global2.c.x, 4294967295u));
    return Struct_1(-859f, -783f <= arg_0, vec2<u32>(var_1.c.x, 80496u));
}

fn func_1(arg_0: u32) -> f32 {
    global2 = func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(global2.a, _wgslsmith_div_f32(1269f, 1214f), _wgslsmith_mult_i32(u_input.e, 6981i) > _wgslsmith_clamp_i32(u_input.e, u_input.e, u_input.b.x))))), false, Struct_3(global2.b, global2.c.x));
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-532f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(611f * global2.a), -390f)), _wgslsmith_f_op_f32(-global2.a))), global2.a));
    global3 = array<Struct_2, 28>();
    let var_1 = Struct_3(!any(select(vec3<bool>(false, true, true), vec3<bool>(global2.b, global2.b, global2.b), global2.b)) & true, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(global1[_wgslsmith_index_u32(0u, 22u)], _wgslsmith_clamp_vec4_u32(global1[_wgslsmith_index_u32(max(global2.c.x, 1u), 22u)], _wgslsmith_mult_vec4_u32(global1[_wgslsmith_index_u32(arg_0, 22u)], vec4<u32>(arg_0, 2809u, 8478u, global2.c.x)), max(vec4<u32>(0u, global2.c.x, arg_0, arg_0), vec4<u32>(arg_0, global2.c.x, 18014u, global2.c.x)))), abs(global1[_wgslsmith_index_u32(14861u, 22u)])));
    let var_2 = abs(_wgslsmith_div_u32(~(~global2.c.x), arg_0));
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(select(global2.a, _wgslsmith_f_op_f32(func_1(global2.c.x)), true));
    global0 = global2.c.x;
    global3 = array<Struct_2, 28>();
    let var_1 = var_0;
    let var_2 = Struct_2(u_input.a.zwx, vec4<i32>(-38002i, 21008i, 60960i, ~_wgslsmith_clamp_i32(min(u_input.c, -2147483647i), ~u_input.a.x, -31079i)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_0)), -925f)), global2.b, global2.c);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 4294967295u) ^ vec2<u32>(var_3.c.x, var_3.c.x), global2.c), global2.c));
}

