struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: Struct_2;

var<private> global2: vec3<f32> = vec3<f32>(-648f, -167f, 1582f);

var<private> global3: array<vec4<f32>, 9> = array<vec4<f32>, 9>(vec4<f32>(898f, 662f, -257f, -1940f), vec4<f32>(-948f, -366f, 289f, 1269f), vec4<f32>(-759f, -805f, 1000f, -686f), vec4<f32>(-247f, 490f, -1195f, 483f), vec4<f32>(336f, 870f, -432f, -683f), vec4<f32>(858f, 1376f, 1313f, -974f), vec4<f32>(1924f, -1190f, -143f, 361f), vec4<f32>(-557f, -516f, -124f, 735f), vec4<f32>(103f, 348f, -420f, -539f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(min(-476f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global2.x, -2188f)))))));
    var var_1 = ~_wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(58299u, 4294967295u, 4294967295u), u_input.b), u_input.a ^ _wgslsmith_mod_u32(reverseBits(u_input.a), 0u), global1.c);
    global2 = vec3<f32>(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(global1.b * global2.x)))), -998f);
    return 1u;
}

fn func_2() -> bool {
    let var_0 = u_input.b.x;
    var var_1 = u_input.a;
    var var_2 = Struct_1(global2.zz, vec2<bool>(true, true), vec2<bool>(false, !(!all(vec2<bool>(false, false)))), true);
    var var_3 = Struct_2(-417f, global1.a, ~var_0 ^ (func_3(abs(u_input.c), true) >> (~0u % 32u)));
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1681f, -347f, -1005f), vec3<f32>(var_2.a.x, -255f, global1.b)) - _wgslsmith_div_vec3_f32(vec3<f32>(global1.a, var_3.a, 240f), vec3<f32>(-331f, global1.b, 439f))) + vec3<f32>(_wgslsmith_f_op_f32(-792f * 1024f), _wgslsmith_f_op_f32(-var_2.a.x), -2076f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, 1278f, global1.a) + vec3<f32>(595f, -625f, var_3.a)))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(353f, global1.b, var_2.a.x), _wgslsmith_div_vec3_f32(vec3<f32>(792f, global2.x, var_3.b), vec3<f32>(-796f, var_2.a.x, -768f)), vec3<bool>(true, true, true))))));
    return !(any(!(!vec2<bool>(var_2.c.x, var_2.c.x))) & true);
}

fn func_1() -> f32 {
    let var_0 = reverseBits(-vec4<i32>(0i, u_input.e, _wgslsmith_mult_i32(u_input.c.x, u_input.e) >> (~0u % 32u), min(_wgslsmith_sub_i32(34182i, u_input.e), ~0i)));
    var var_1 = u_input.e << ((2229u | ~_wgslsmith_add_u32(u_input.d, ~1u)) % 32u);
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    var var_2 = !vec4<bool>(func_2(), false, true, !(_wgslsmith_f_op_f32(-738f * global2.x) == _wgslsmith_f_op_f32(abs(-1154f))));
    return -1600f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.yx - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2773f, global1.a))))), vec2<bool>(true, false), !vec2<bool>(-1000f <= _wgslsmith_div_f32(global1.b, global2.x), _wgslsmith_f_op_f32(392f * global1.b) >= _wgslsmith_f_op_f32(sign(global1.b))), true || !all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true)));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.x))), global1.a)), -1114f, _wgslsmith_f_op_f32(select(global1.b, var_0.a.x, _wgslsmith_f_op_f32(func_1()) > -730f)), var_0.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(global1.a)), _wgslsmith_f_op_f32(trunc(var_0.a.x)), _wgslsmith_f_op_f32(abs(global2.x)), _wgslsmith_f_op_f32(sign(global2.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 9u)]) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(630f, global2.x, -1000f, var_0.a.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, -1000f, 1267f))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -315f), -290f, _wgslsmith_f_op_f32(f32(-1f) * -966f), _wgslsmith_f_op_f32(f32(-1f) * -901f))))));
    global2 = vec3<f32>(_wgslsmith_div_f32(global1.b, _wgslsmith_f_op_f32(f32(-1f) * -467f)), global2.x, 617f);
    var var_2 = var_0.a;
    var var_3 = all(vec3<bool>(var_0.c.x, !select(var_0.c.x, false, true), true || var_0.d));
    let var_4 = !var_0.c.x;
    var var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_div_f32(global1.a, -688f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(select(u_input.c.x, -2147483647i, true), 0i), _wgslsmith_sub_i32(-u_input.e, 1i), u_input.c.x, ~2147483647i), vec4<i32>(reverseBits(u_input.e), u_input.c.x, u_input.e, -u_input.e) ^ ~vec4<i32>(u_input.e, u_input.c.x, -1i, u_input.e)));
}

