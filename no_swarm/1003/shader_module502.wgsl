struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: bool,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: vec2<f32>;

var<private> global2: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false));

var<private> global3: Struct_2;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: f32) -> vec4<f32> {
    global2 = array<vec4<bool>, 24>();
    global1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(global3.b + vec2<f32>(-1000f, global3.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global3.d)))))));
    global0 = array<Struct_1, 17>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(499f, -1000f, global3.b.x, arg_2))))), _wgslsmith_f_op_vec2_f32(global3.d - vec2<f32>(229f, -330f)), !(!(!(global3.c && true))), global3.d, global3.e);
    let var_1 = Struct_3(global3.e, var_0.e, var_0.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global3.d.x, var_0.b.x)) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_0.a.yyx * global3.a.wzw)))) * vec3<f32>(_wgslsmith_f_op_f32(-arg_2), 465f, -604f)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2863f, var_1.d.x, 285f, global3.a.x) - _wgslsmith_f_op_vec4_f32(var_0.a + vec4<f32>(-501f, -963f, -861f, -1025f))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, global1.x, 116f, arg_2), vec4<f32>(-470f, var_0.b.x, var_0.d.x, var_0.a.x))), vec4<f32>(-1102f, 265f, -307f, 2020f)))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.a, var_0.a) * _wgslsmith_f_op_vec4_f32(-var_0.a))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global3.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.d.x, global3.d.x, 149f, 1540f))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(243f, var_0.d.x, var_0.d.x, 1000f), vec4<f32>(-320f, global1.x, var_1.d.x, -2820f)))), all(!(!vec3<bool>(var_0.c, var_1.c, var_1.c))))));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(false, firstLeadingBit(u_input.a.x), 438f)))) + global3.a);
    let var_1 = global3.e.a;
    let var_2 = 42020u;
    return Struct_1(~global3.e.a);
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    global3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(297f, global1.x, global3.a.x, -1352f)) * _wgslsmith_f_op_vec4_f32(-global3.a))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-367f, _wgslsmith_f_op_f32(exp2(global1.x))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, global1.x), _wgslsmith_f_op_vec2_f32(-global3.d), vec2<bool>(true, true)))))), (_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_add_u32(13257u, u_input.a.x)) | ~_wgslsmith_div_u32(4294967295u, global3.e.a.x)) != (u_input.a.x | (_wgslsmith_mod_u32(global3.e.a.x, global3.e.a.x) >> ((arg_0.x ^ 4408u) % 32u))), global3.d, func_2());
    let var_0 = func_2();
    global3 = Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.d.x) - _wgslsmith_f_op_f32(-global3.b.x)), global1.x, 1550f, global1.x), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(step(127f, global3.a.x)), 798f, _wgslsmith_f_op_f32(min(-151f, -286f)), 1484f)))), _wgslsmith_f_op_vec2_f32(global3.b * _wgslsmith_div_vec2_f32(global3.b, global3.b)), !global3.c, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1284f, 102f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1101f, global3.a.x))) + vec2<f32>(global3.d.x, global3.d.x))))), func_2());
    let var_1 = Struct_3(var_0, var_0, !(_wgslsmith_clamp_i32(1i, 26890i, -1129i) > -1i) || (_wgslsmith_f_op_f32(-global1.x) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - -592f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.a.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(global3.b.x, global3.b.x, true)))), _wgslsmith_f_op_f32(abs(-338f))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(162f - global1.x), global1.x, -316f)))));
    let var_2 = ~u_input.b;
    return Struct_2(vec4<f32>(_wgslsmith_f_op_f32(var_1.d.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-248f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.d.x, 190f)) + global1.x)), _wgslsmith_div_f32(541f, var_1.d.x), -310f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1322f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.x * 1259f) - _wgslsmith_f_op_f32(-global1.x)))), var_1.c, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global3.d.x, global1.x))), var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, ~countOneBits(1u), u_input.a.x)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.a));
    var var_2 = func_2();
    global0 = array<Struct_1, 17>();
    var var_3 = var_0.e.a.x;
    var_2 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x, max(1u, ~abs(global3.e.a.x) ^ ~(var_2.a.x << (u_input.a.x % 32u))), var_1.x, 0i, _wgslsmith_div_f32(var_1.x, 1124f));
}

