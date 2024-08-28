struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 62473u;

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: array<Struct_1, 17>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> vec2<f32> {
    global2 = array<Struct_1, 17>();
    global0 = select(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.a.x, u_input.a.x, 24868u, 4294967295u)), abs(countOneBits(~vec4<u32>(u_input.a.x, 123318u, u_input.a.x, 23076u)))), u_input.a.x ^ 4294967295u, false);
    global0 = 0u;
    var var_0 = max(max(u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_mod_u32(firstTrailingBit(46156u), 1u), u_input.a.x)), u_input.a.x << (select(firstLeadingBit(u_input.a.x) & u_input.a.x, ~0u, true || !global1.x) % 32u));
    let var_1 = global2[_wgslsmith_index_u32(u_input.a.x, 17u)];
    return vec2<f32>(-161f, -857f);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> bool {
    var var_0 = arg_1;
    var var_1 = Struct_1(select(select(vec4<bool>(arg_1.c < arg_1.c, all(arg_1.a.yxy), arg_1.a.x, all(vec3<bool>(true, global1.x, arg_1.a.x))), vec4<bool>(global1.x, !arg_1.b.x, var_0.a.x, false), any(!var_0.a.xw)), !select(!vec4<bool>(true, arg_0.b.x, arg_0.a.x, true), select(vec4<bool>(true, false, arg_1.b.x, arg_0.b.x), vec4<bool>(arg_1.b.x, arg_1.a.x, false, global1.x), global1.x), vec4<bool>(arg_1.a.x, false, arg_1.a.x, true)), vec4<bool>(arg_1.c <= ~var_0.c, true, !select(var_0.a.x, true, var_0.a.x), !var_0.a.x)), !(!select(!var_0.b, var_0.a, !arg_1.b)), arg_2.x);
    global1 = vec2<bool>(true, true);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(884f, 135f)), _wgslsmith_f_op_f32(sign(1194f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2())))));
    var_1 = arg_0;
    return var_2.x < _wgslsmith_f_op_f32(abs(-1000f));
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_2());
    let var_1 = func_3(arg_0, arg_0, u_input.a);
    var var_2 = u_input.b.x;
    var var_3 = Struct_1(vec4<bool>(false, !any(!arg_0.a), !var_1, any(vec2<bool>(true, true)) || ((6024u >> (arg_0.c % 32u)) > _wgslsmith_dot_vec3_u32(vec3<u32>(32618u, 31070u, 0u), vec3<u32>(arg_0.c, 4294967295u, u_input.a.x)))), select(arg_0.b, vec4<bool>(false, global1.x, var_1, (var_0.x <= var_0.x) | true), true), u_input.a.x);
    global2 = array<Struct_1, 17>();
    return all(select(!(!vec2<bool>(true, arg_0.b.x)), select(vec2<bool>(true, false), !(!arg_0.a.yw), var_0.x >= 1000f), -938f > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x + 100f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 17>();
    var var_0 = abs(267u);
    global2 = array<Struct_1, 17>();
    let var_1 = u_input.b.zy;
    let var_2 = true;
    let var_3 = !func_1(Struct_1(vec4<bool>(true, false, false, true), select(vec4<bool>(global1.x, true, global1.x, false), select(vec4<bool>(false, var_2, false, global1.x), vec4<bool>(global1.x, global1.x, false, false), vec4<bool>(true, global1.x, false, false)), !vec4<bool>(var_2, var_2, true, true)), firstLeadingBit(~u_input.a.x)));
    let var_4 = global2[_wgslsmith_index_u32(6914u, 17u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-739f)), -1000f, 1082f, 1000f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1329f * -673f), -1330f, _wgslsmith_f_op_f32(max(-905f, 1696f)), _wgslsmith_f_op_f32(step(994f, 720f))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1183f), _wgslsmith_f_op_f32(1499f * 290f), _wgslsmith_f_op_f32(828f * -913f), 643f))), firstLeadingBit(min(var_1, vec2<i32>(u_input.b.x, -1i))) << ((u_input.a ^ min(~vec2<u32>(var_4.c, var_4.c), u_input.a >> (u_input.a % vec2<u32>(32u)))) % vec2<u32>(32u)), vec3<i32>(-17853i, 12605i, _wgslsmith_mult_i32(var_1.x, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_1.x, -2147483647i, var_1.x), 54788i << (u_input.a.x % 32u)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-621f)) - _wgslsmith_f_op_f32(f32(-1f) * -2364f)), -464f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1107f * -252f), _wgslsmith_f_op_f32(f32(-1f) * -1573f), u_input.a.x >= 0u)), 1f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(767f, 1000f, -446f, -228f) - vec4<f32>(-192f, -168f, -640f, -218f)))))))));
}

