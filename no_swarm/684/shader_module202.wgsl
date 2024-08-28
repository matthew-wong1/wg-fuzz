struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(13350u, 0u, 34943u), vec3<u32>(91632u, 46580u, 22367u), vec3<u32>(97525u, 6372u, 64216u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(37907u, 0u, 38060u));

var<private> global1: Struct_1;

var<private> global2: vec4<bool> = vec4<bool>(true, false, true, true);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(-global1.a);
    global0 = array<vec3<u32>, 5>();
    global0 = array<vec3<u32>, 5>();
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a - arg_1.b)) + -1690f))));
    var var_2 = arg_2;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b, var_2.b)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b, 349f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_2.b)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1531f, 271f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(264f, global1.a))))));
}

fn func_2() -> vec4<u32> {
    let var_0 = -2147483647i;
    var var_1 = global1.c.x;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(step(124f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b, -2725f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(929f, 1051f)) - _wgslsmith_f_op_f32(global1.a + -1260f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(f32(-1f) * -591f))), !(!global2.yx));
    var_1 = var_2.c.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(func_3(~2147483647i, var_2, var_2, !global1.c));
    return firstTrailingBit(countOneBits(firstTrailingBit(~(vec4<u32>(u_input.b, 89009u, u_input.b, u_input.b) << (vec4<u32>(49462u, 2451u, 79435u, 17298u) % vec4<u32>(32u))))));
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: u32, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = 1i;
    var var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 1u, arg_2, 43320u) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 35114u, 4294967295u, arg_2), vec4<u32>(1u, u_input.b, 29636u, 68801u)) % vec4<u32>(32u)), ~vec4<u32>(30379u, 50185u, arg_2, 21188u) & (vec4<u32>(0u, arg_2, arg_2, 0u) & vec4<u32>(1u, 26207u, 23937u, 35629u))), u_input.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2, 1u, arg_2, 4294967295u), vec4<u32>(0u, ~20369u, arg_2, u_input.b)), ~_wgslsmith_add_u32(min(4294967295u, u_input.b), ~arg_2)), (select(func_2(), ~vec4<u32>(arg_2, u_input.b, u_input.b, u_input.b), vec4<bool>(false, global1.c.x, true, global1.c.x)) << ((vec4<u32>(arg_2, 9621u, u_input.b, 0u) ^ select(vec4<u32>(4294967295u, 4294967295u, u_input.b, 30102u), vec4<u32>(76048u, u_input.b, 23686u, 0u), global2.x)) % vec4<u32>(32u))) | vec4<u32>(countOneBits(countOneBits(u_input.b)), 1u, 1u, 0u));
    var_0 = u_input.d.x;
    var var_2 = Struct_1(1f, 898f, vec2<bool>((u_input.c << (~arg_2 % 32u)) >= 23251i, global1.c.x));
    let var_3 = Struct_1(-349f, arg_0, vec2<bool>(true || global1.c.x, true));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-1121f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b * -1666f) - global1.a) - -801f)), vec2<bool>(~40641i != u_input.a.x, false));
    var var_1 = func_1(-478f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(1000f + global1.b), _wgslsmith_f_op_f32(select(global1.b, var_0.a, var_0.c.x))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-639f, global1.a))))))), select(u_input.b, u_input.b, false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -767f), global1.a, -208f)))));
    var var_2 = global2.xzx;
    var var_3 = Struct_1(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_1.a)), var_1.b)))), select(vec2<bool>(func_1(1246f, vec2<f32>(1263f, var_0.b), u_input.b, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(872f, 787f, var_1.b)))).c.x, true), !select(!global2.yw, func_1(-443f, vec2<f32>(var_1.b, var_0.b), u_input.b, vec3<f32>(1157f, 1284f, var_0.b)).c, all(var_2.yy)), select(select(vec2<bool>(true, false), func_1(-712f, vec2<f32>(-1004f, 1277f), 1u, vec3<f32>(global1.b, -216f, -1000f)).c, select(false, false, global2.x)), func_1(_wgslsmith_f_op_f32(ceil(429f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, 1000f)), ~u_input.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, global1.b, global1.b) - vec3<f32>(global1.b, global1.b, -1000f))).c, !select(vec2<bool>(global1.c.x, true), vec2<bool>(true, false), vec2<bool>(false, false)))));
    global0 = array<vec3<u32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, var_0.b)) * vec2<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_div_f32(var_0.a, global1.b))) * _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 431f)), vec2<f32>(2080f, -241f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-944f, global1.b) - vec2<f32>(305f, 727f))))), u_input.b, u_input.a.x, u_input.a ^ (vec2<i32>(-1i) * -(u_input.a | vec2<i32>(u_input.a.x, u_input.d.x))));
}

