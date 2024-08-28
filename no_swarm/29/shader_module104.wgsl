struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

var<private> global1: f32;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> vec3<bool> {
    global0 = vec3<bool>(true, true, true);
    let var_0 = 0u;
    let var_1 = !(u_input.d.x <= _wgslsmith_mod_i32(u_input.b.x, -19478i));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(376f, -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(828f, -1000f))))))));
    var var_3 = u_input.b;
    return vec3<bool>(!var_1, var_2.a < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -774f)), false);
}

fn func_3() -> bool {
    var var_0 = true;
    var_0 = false;
    var_0 = global0.x;
    var var_1 = Struct_1(~(-u_input.d));
    let var_2 = vec3<bool>(true, any(global0.xy), false);
    return false;
}

fn func_1(arg_0: vec4<f32>, arg_1: i32) -> f32 {
    global0 = select(vec3<bool>(global0.x, true, !all(select(global0.yy, global0.zx, global0.x))), func_2(), vec3<bool>(any(vec4<bool>(global0.x, false, true, true)) || !func_3(), _wgslsmith_f_op_f32(trunc(arg_0.x)) < _wgslsmith_f_op_f32(-110f + _wgslsmith_f_op_f32(f32(-1f) * -142f)), false));
    var var_0 = Struct_4(arg_0.x);
    let var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(490f, var_0.a))) * _wgslsmith_f_op_f32(-351f - 434f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_0.a)), var_0.a, u_input.c != 4294967295u)) * _wgslsmith_f_op_f32(abs(arg_0.x)))));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -374f);
    let var_2 = vec4<u32>(min(select(_wgslsmith_add_u32(u_input.c, 17077u), 1u, select(false && global0.x, global0.x, u_input.a.x > -27208i)), u_input.c), firstTrailingBit(3194u), ~51605u, ~1u);
    return -348f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d.x;
    let var_1 = all(select(select(vec4<bool>(global0.x && global0.x, false, true, !global0.x), vec4<bool>(true, global0.x, any(vec4<bool>(global0.x, global0.x, global0.x, false)), u_input.d.x == u_input.a.x), vec4<bool>(!global0.x, true, global0.x, any(vec3<bool>(global0.x, true, true)))), !(!(!vec4<bool>(global0.x, global0.x, false, global0.x))), vec4<bool>(_wgslsmith_f_op_f32(ceil(-337f)) <= -376f, true, all(!vec4<bool>(global0.x, false, false, global0.x)), global0.x)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1432f + _wgslsmith_f_op_f32(func_1(vec4<f32>(272f, 1060f, -260f, -1584f), u_input.a.x))), -1065f))), 693f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1053f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-448f + 882f))))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_f_op_f32(-var_2.x)) - _wgslsmith_f_op_f32(step(var_2.x, var_2.x)));
    global1 = _wgslsmith_f_op_f32(-1304f + _wgslsmith_f_op_f32(-var_2.x));
    let var_3 = max(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c | 43101u), _wgslsmith_sub_vec4_u32(vec4<u32>(firstTrailingBit(u_input.c), u_input.c, 9843u >> (1u % 32u), firstLeadingBit(910u)), abs(vec4<u32>(u_input.c, u_input.c, 33769u, 1u)))) << (_wgslsmith_clamp_vec4_u32(~vec4<u32>(~u_input.c, ~0u, u_input.c, ~u_input.c), ~(_wgslsmith_mult_vec4_u32(vec4<u32>(31890u, u_input.c, 1u, 4294967295u), vec4<u32>(1u, u_input.c, 1u, u_input.c)) & _wgslsmith_add_vec4_u32(vec4<u32>(784u, 31638u, u_input.c, u_input.c), vec4<u32>(11668u, u_input.c, u_input.c, 1u))), abs(vec4<u32>(108112u, u_input.c, 62866u, 4294967295u))) % vec4<u32>(32u));
    let var_4 = Struct_1(vec3<i32>(countOneBits(-33018i), 0i, i32(-1i) * -2147483647i));
    var var_5 = !vec4<bool>(any(!vec4<bool>(var_1, global0.x, false, false)), global0.x, !any(vec3<bool>(var_1, global0.x, var_1)) || global0.x, select(var_3.x, min(65088u, var_3.x), global0.x) <= 1u);
    let var_6 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(699f)), reverseBits(vec3<i32>(i32(-1i) * -u_input.a.x, ~(-u_input.d.x), abs(-var_4.a.x))));
}

