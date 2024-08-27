struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(2187f, -192f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2() -> i32 {
    global0 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.x, _wgslsmith_f_op_f32(global0.x * 300f))));
    let var_0 = ~_wgslsmith_sub_u32(~abs(4294967295u), ~_wgslsmith_add_u32(u_input.b.x, 0u)) | 62656u;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-656f, 987f))))), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(1142f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -452f))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.yy) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.xz)));
    let var_3 = u_input.c.x;
    return 11064i;
}

fn func_1() -> bool {
    let var_0 = !all(vec2<bool>(true, true));
    var var_1 = select(min(~(-3686i) >> (_wgslsmith_dot_vec2_u32(u_input.c.xw, _wgslsmith_mult_vec2_u32(u_input.c.zw, u_input.c.zy)) % 32u), ~(func_2() ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 0i, u_input.a, u_input.a), vec4<i32>(u_input.a, 1i, u_input.a, u_input.a)))), -5670i ^ _wgslsmith_add_i32(u_input.a, u_input.a), false);
    return !(u_input.a == (i32(-1i) * -(-2147483647i >> (u_input.c.x % 32u))));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(abs(~(u_input.d.x << (~30678u % 32u))), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), !select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, false, false, true)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true))), ~countOneBits(~u_input.c.wxx), abs(u_input.d.zwy));
    global0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1233f), global0.x), vec2<f32>(-123f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-392f)), _wgslsmith_f_op_f32(select(global0.x, global0.x, var_0.b.x))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.x, global0.x))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) * vec2<f32>(global0.x, -363f))) - vec2<f32>(global0.x, -1651f))));
    let var_2 = Struct_1(vec2<f32>(global0.x, -546f));
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(var_1.a + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, -799f), vec2<f32>(-1055f, 202f))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1528f - -437f) - global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -524f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, 579f), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(388f + global0.x), 1536f)), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(473f * global0.x)))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(select(global0.x, 436f, !(global0.x >= 1000f)))), 500f);
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-3341f, _wgslsmith_f_op_f32(268f - -985f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global0.x, global0.x)), -684f, func_1())), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x))))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(step(-723f, _wgslsmith_f_op_f32(min(-760f, 1000f))))))), -935f);
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(903f, var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_add_i32(-abs(u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -1i, u_input.a) >> (u_input.b.yww % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -1i, 2147483647i), vec3<i32>(6732i, u_input.a, -2147483647i)))), -select(u_input.a | 0i, 3290i, true)), ~21178i, ~(-(vec4<i32>(-2147483647i, -12648i, u_input.a, u_input.a) << (u_input.b % vec4<u32>(32u))) << (u_input.d % vec4<u32>(32u))), _wgslsmith_f_op_f32(exp2(var_2)), ~(~min(76648u, ~1u)));
}

