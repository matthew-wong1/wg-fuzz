struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 29>;

var<private> global2: bool;

var<private> global3: u32;

var<private> global4: array<i32, 21>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: bool) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(sign(1780f)), select(vec4<bool>(!arg_1, false, (13930i << (u_input.a.x % 32u)) == 77036i, !any(vec3<bool>(true, arg_2, true))), select(!vec4<bool>(arg_2, false, true, arg_2), vec4<bool>(true, arg_1, all(vec4<bool>(arg_1, arg_1, arg_1, arg_1)), !arg_1), arg_2), vec4<bool>(true, true, true, arg_1)), abs(_wgslsmith_sub_vec3_u32(vec3<u32>(35253u, 0u >> (global1[_wgslsmith_index_u32(u_input.a.x, 29u)] % 32u), 7647u), _wgslsmith_mod_vec3_u32(max(u_input.a.xxy, u_input.a.zyy), _wgslsmith_mod_vec3_u32(vec3<u32>(7056u, 62180u, arg_0), u_input.a.zzx)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-931f * -2099f)), -156f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(262f, -1934f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(613f)), _wgslsmith_f_op_f32(select(129f, 349f, arg_1))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(694f + -700f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-696f)) - 420f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -286f) + _wgslsmith_f_op_f32(f32(-1f) * -713f))))));
    var var_1 = 1u;
    global1 = array<u32, 29>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.e.xyz));
    global2 = true;
    return _wgslsmith_f_op_f32(f32(-1f) * -671f);
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(38319u, true, true && all(vec4<bool>(false, true, false, true)))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1203f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-262f - 703f), -396f)))) + vec2<f32>(-133f, 173f));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, 976f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + -792f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 177f)) - var_1.x));
}

fn func_1() -> u32 {
    var var_0 = vec2<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))) - -956f) >= _wgslsmith_f_op_f32(func_2()));
    var var_1 = u_input.a;
    global0 = false;
    var var_2 = var_1.xxw;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1098f, -1063f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-711f - -1289f)), _wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -365f)), 924f)), -682f, -1000f);
    return var_1.x;
}

fn func_4(arg_0: u32) -> Struct_3 {
    var var_0 = Struct_2(true, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-826f, -1111f, false))))), vec4<bool>(true, true, true, true), u_input.a.wwz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1002f - -665f), _wgslsmith_f_op_f32(floor(1699f)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(351f + 1422f), _wgslsmith_f_op_f32(f32(-1f) * -1840f), -167f, -1560f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -743f, 1035f, -1419f)) * vec4<f32>(-1052f, 933f, 413f, 566f))))));
    var_0 = Struct_2(true, var_0.b);
    let var_1 = Struct_2(var_0.a | (arg_0 > arg_0), var_0.b);
    global0 = any(var_0.b.b.zyw);
    global4 = array<i32, 21>();
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-362f, var_0.b.a))) * _wgslsmith_div_vec2_f32(var_1.b.e.yx, vec2<f32>(-472f, var_1.b.d.x))))), var_1, var_1, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.e.x)), select(!select(var_1.b.b, var_0.b.b, var_1.b.b), !var_0.b.b, select(select(vec4<bool>(var_0.b.b.x, var_1.b.b.x, false, false), vec4<bool>(var_0.a, false, var_0.a, true), var_1.a), !vec4<bool>(false, var_1.b.b.x, false, var_0.b.b.x), select(vec4<bool>(var_1.b.b.x, var_0.b.b.x, var_1.a, false), var_0.b.b, var_0.b.b))), var_0.b.c, var_1.b.e.yw, var_1.b.e), var_0.b.e.zwy);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ((~1u << (0u % 32u)) < global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~1u, 29u)], 29u)]) || !(-1i >= ~(global4[_wgslsmith_index_u32(0u, 21u)] ^ global4[_wgslsmith_index_u32(9480u, 21u)]));
    global4 = array<i32, 21>();
    var var_0 = func_4(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u & global1[_wgslsmith_index_u32(4294967295u, 29u)], 0u, global1[_wgslsmith_index_u32(4294967295u, 29u)], ~global1[_wgslsmith_index_u32(u_input.a.x, 29u)]), vec4<u32>(1u, ~1u, func_1(), u_input.a.x)));
    global4 = array<i32, 21>();
    let var_1 = var_0.b.b.b;
    global4 = array<i32, 21>();
    var var_2 = Struct_4(~(vec2<u32>(_wgslsmith_mult_u32(1u, var_0.b.b.c.x), 48064u) | min(u_input.a.xx, _wgslsmith_mod_vec2_u32(u_input.a.zy, var_0.c.b.c.zz))), var_1.xzw, firstLeadingBit(4294967295u));
    global1 = array<u32, 29>();
    let var_3 = _wgslsmith_dot_vec3_u32(~u_input.a.zwz, abs(~vec3<u32>(4294967295u, 4294967295u, 57394u) & select(~var_0.c.b.c, u_input.a.wzz, all(vec2<bool>(false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<u32>(global1[_wgslsmith_index_u32(var_2.a.x, 29u)], var_2.c)), vec2<u32>(u_input.a.x, 1u));
}

