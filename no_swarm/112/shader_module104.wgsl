struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 17>;

var<private> global1: array<i32, 30>;

var<private> global2: vec2<f32>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec3<bool>, arg_1: f32) -> vec4<f32> {
    global2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, 268f) * _wgslsmith_f_op_f32(arg_1 - global2.x))))));
    let var_0 = arg_0;
    global1 = array<i32, 30>();
    var var_1 = vec4<bool>(!arg_0.x, 0i > _wgslsmith_mod_i32(0i, _wgslsmith_dot_vec3_i32(max(global0[_wgslsmith_index_u32(4294967295u, 17u)], vec3<i32>(-5131i, global1[_wgslsmith_index_u32(4390u, 30u)], u_input.d)), vec3<i32>(global1[_wgslsmith_index_u32(19668u, 30u)], 17128i, -9944i))), arg_0.x, true);
    var var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -1371f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(268f, 1278f))), vec2<f32>(_wgslsmith_f_op_f32(trunc(global2.x)), -1646f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(159f, _wgslsmith_f_op_f32(select(global2.x, _wgslsmith_div_f32(global2.x, -934f), arg_0.x))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, 1134f) + vec2<f32>(-1299f, -902f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-275f, global2.x), vec2<f32>(arg_1, global2.x), var_0.x))))))));
    return vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, 695f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1675f)), 1452f, var_2.x);
}

fn func_3() -> vec2<f32> {
    let var_0 = global2.x;
    var var_1 = 692f;
    global1 = array<i32, 30>();
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(687f, global2.x), vec2<f32>(-228f, global2.x)))))));
    var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global2.x))));
    return vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - 419f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), global2.x)));
}

fn func_2() -> f32 {
    global0 = array<vec3<i32>, 17>();
    let var_0 = Struct_5(u_input.c.wwz, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1869f + global2.x), -1000f)));
    global1 = array<i32, 30>();
    let var_1 = u_input.c;
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1832f, -1893f) * vec2<f32>(780f, -495f)), vec2<f32>(-529f, var_0.b))) - _wgslsmith_f_op_vec4_f32(func_1(vec3<bool>(true, false, true), _wgslsmith_div_f32(-787f, 578f))).zw)) - _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global2.x, global2.x), -481f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(604f, global2.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-160f, var_0.b))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(448f, var_0.b)))))));
    return 1809f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_1(select(vec3<bool>(true, true, true), vec3<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), true & select(true, false, false), false), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, u_input.b == 34888u, true), true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-816f - -1038f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.x))))))));
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -964f))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(func_2())) + -1497f);
    global2 = _wgslsmith_f_op_vec2_f32(sign(var_0.xz));
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.wx) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.xz))) + vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.x * var_0.x), _wgslsmith_f_op_f32(trunc(global2.x)))), _wgslsmith_f_op_f32(step(1397f, _wgslsmith_f_op_f32(-var_0.x))))) + vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x - 1318f))) + _wgslsmith_f_op_f32(-148f - var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-603f, global2.x, true)), _wgslsmith_f_op_f32(max(var_0.x, var_0.x))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_0.xw), var_0.wz))) * var_0.wz), global1[_wgslsmith_index_u32(reverseBits(u_input.b), 30u)], abs(_wgslsmith_clamp_vec2_u32(~_wgslsmith_mult_vec2_u32(u_input.c.yy, u_input.c.zy), _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.c.x, 1u), ~u_input.c.yx), u_input.c.yx)), u_input.a);
}

