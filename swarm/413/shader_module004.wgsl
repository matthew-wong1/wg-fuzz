struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec3<u32>,
    d: Struct_3,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_3 = Struct_3(Struct_1(vec2<f32>(597f, 407f), 974f, vec2<bool>(false, true)));

var<private> global2: vec4<u32>;

var<private> global3: array<vec3<u32>, 29>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> f32 {
    return _wgslsmith_f_op_f32(global1.a.a.x - -150f);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<u32>) -> bool {
    global3 = array<vec3<u32>, 29>();
    var var_0 = -15074i;
    let var_1 = 100f;
    let var_2 = arg_0;
    global1 = Struct_3(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_0.a)), arg_1.zz), arg_1.x, !vec2<bool>(!global1.a.c.x, !arg_0.c.x)));
    return !(any(vec2<bool>(true, false)) || all(vec3<bool>(all(vec3<bool>(true, true, false)), any(vec4<bool>(true, var_2.c.x, false, true)), !global1.a.c.x)));
}

fn func_2() -> vec3<bool> {
    global1 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-global1.a.a), 2356f, vec2<bool>(global1.a.c.x, !global1.a.c.x)));
    let var_0 = _wgslsmith_div_f32(1736f, -124f);
    var var_1 = true;
    return !vec3<bool>(global1.a.c.x || any(vec4<bool>(global1.a.c.x, global1.a.c.x, global1.a.c.x, false)), !(!func_3(global1.a, vec4<f32>(var_0, global1.a.a.x, -832f, 1129f), vec4<u32>(global2.x, 0u, 4294967295u, global2.x))), func_3(global1.a, vec4<f32>(var_0, _wgslsmith_f_op_f32(-508f - var_0), _wgslsmith_f_op_f32(trunc(global1.a.b)), _wgslsmith_f_op_f32(global1.a.a.x - var_0)), select(~vec4<u32>(global2.x, global2.x, 0u, 46653u), vec4<u32>(1u, 4294967295u, global2.x, 23817u) & vec4<u32>(0u, global2.x, 1u, 1u), !vec4<bool>(true, global1.a.c.x, global1.a.c.x, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.a.b), _wgslsmith_f_op_f32(floor(global1.a.a.x)), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.a.a.x * 1869f)))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-697f, 889f, 2699f, -496f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2295f, 260f, -1373f, global1.a.a.x)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(2672f, global1.a.b, global1.a.b, 1294f), vec4<f32>(global1.a.b, global1.a.a.x, global1.a.b, global1.a.a.x), vec4<bool>(false, global1.a.c.x, true, global1.a.c.x))))))));
    let var_1 = false;
    let var_2 = select(!(!select(vec3<bool>(var_1, true, true), vec3<bool>(false, var_1, global1.a.c.x), global2.x >= global2.x)), !(!func_2()), false);
    var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-336f, var_0.x, -314f, 1021f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, global1.a.a.x, -1022f, 260f)))) - vec4<f32>(-1097f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(floor(global1.a.a.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global1.a.b)), _wgslsmith_f_op_f32(global1.a.b * 877f))), _wgslsmith_f_op_f32(f32(-1f) * -740f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(2231f, _wgslsmith_f_op_f32(-global1.a.b), _wgslsmith_f_op_f32(254f * var_0.x), _wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, var_0.x, 703f, var_0.x), vec4<f32>(var_0.x, -1460f, global1.a.a.x, -303f)))))))));
    var var_3 = ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(46783u, global2.x), abs(global2.x | ~0u), _wgslsmith_sub_u32(global2.x << (~16633u % 32u), _wgslsmith_mod_u32(global2.x, global2.x) >> (_wgslsmith_clamp_u32(global2.x, 4294967295u, global2.x) % 32u)));
    var_3 = ~global2.x;
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.a.a + _wgslsmith_f_op_vec2_f32(global1.a.a * _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.b, 118f) * vec2<f32>(234f, global1.a.a.x)))) - _wgslsmith_div_vec2_f32(global1.a.a, global1.a.a)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.a.b - global1.a.b))), 320f))), func_2().yx);
    var var_5 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(global2.x, 62009u) ^ 4294967295u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(global2.x, 44747u), _wgslsmith_dot_vec2_u32(global2.wz, global2.ww)), firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, global2.x, 1u), global2.yxx)), ~_wgslsmith_sub_u32(global2.x, 1u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(global2.x, 21521u, 1u, global2.x) >> (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global2.x, global2.x, global2.x), vec4<u32>(global2.x, 77493u, 2655u, global2.x)) % vec4<u32>(32u)), firstTrailingBit(~vec4<u32>(global2.x, global2.x, global2.x, global2.x)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, global2.x, global2.x, global2.x), vec4<u32>(global2.x, 37630u, 65656u, 4294967295u))));
    global1 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(min(global1.a.a, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, 252f), global1.a.a), vec2<f32>(-1631f, 106f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.b)), !vec2<bool>(all(vec3<bool>(var_4.c.x, false, true)), global1.a.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(1u >> (_wgslsmith_mod_u32(26083u, var_5.x) % 32u)), _wgslsmith_mod_u32(~var_5.x, ~26619u) >> ((1u >> (global2.x % 32u)) % 32u), ~(~countOneBits(var_5.x)), 0u));
}

