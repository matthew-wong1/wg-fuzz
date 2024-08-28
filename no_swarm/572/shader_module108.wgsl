struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 11> = array<vec4<f32>, 11>(vec4<f32>(-631f, 680f, 1107f, 1205f), vec4<f32>(-150f, -1000f, -810f, 193f), vec4<f32>(-2285f, 476f, 131f, -389f), vec4<f32>(-1671f, -105f, -1313f, -130f), vec4<f32>(912f, 243f, 1101f, 1710f), vec4<f32>(518f, 410f, -2736f, -238f), vec4<f32>(841f, -797f, -647f, -328f), vec4<f32>(509f, -1000f, 142f, -895f), vec4<f32>(1000f, -478f, 1000f, -565f), vec4<f32>(1270f, 700f, 900f, -1441f), vec4<f32>(-734f, 1000f, -455f, 226f));

var<private> global1: vec2<bool> = vec2<bool>(false, true);

var<private> global2: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec2<f32>, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1794f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(514f, arg_2.x))), 1402f)), false)));
    var var_1 = ~u_input.c.zww;
    var var_2 = Struct_1(global2.a, arg_0, firstLeadingBit(~(~1u)));
    var var_3 = !select(!vec4<bool>(!arg_0, select(false, var_2.b, arg_0), false, global2.b), select(vec4<bool>(false, global1.x, select(true, false, true), global2.b), !vec4<bool>(false, false, false, global2.b), false), true);
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(step(arg_2.x, var_0)), _wgslsmith_f_op_f32(step(-580f, _wgslsmith_f_op_f32(-478f + _wgslsmith_f_op_f32(var_0 - -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1223f)))))));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1786f, 1568f)))), 1f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_3.a))));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: vec4<i32>, arg_3: vec4<f32>) -> vec4<bool> {
    var var_0 = ~0u < _wgslsmith_mod_u32(23140u, abs(abs(23597u)) & u_input.b);
    global2 = Struct_1(_wgslsmith_f_op_f32(func_3(false, u_input.c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, arg_1.x) + _wgslsmith_f_op_vec2_f32(trunc(arg_3.xw))) - _wgslsmith_f_op_vec2_f32(-arg_3.zw)), Struct_1(268f, false && !global1.x, global2.c))), !global1.x, u_input.b);
    let var_1 = global1.x;
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, _wgslsmith_clamp_i32(-1i, -1i, ~arg_2.x)), vec2<i32>(0i, ~arg_2.x));
    global2 = Struct_1(_wgslsmith_f_op_f32(arg_1.x * 610f), _wgslsmith_add_u32(u_input.d.x, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 0u, 0u, 0u), u_input.d), vec4<u32>(u_input.a, 33180u, u_input.b, u_input.d.x))) > 25454u, ~(~(~(~u_input.b))));
    return vec4<bool>(global2.b, !(!any(vec2<bool>(global1.x, global2.b))), global2.b, global2.c <= ~(~_wgslsmith_dot_vec3_u32(u_input.d.yzx, vec3<u32>(global2.c, 1u, 53691u))));
}

fn func_1(arg_0: u32) -> bool {
    var var_0 = !vec3<bool>(global1.x, global2.b & any(vec2<bool>(global2.b, false)), true);
    let var_1 = select(!(!func_2(global2.a, global0[_wgslsmith_index_u32(~u_input.b, 11u)], u_input.c, _wgslsmith_f_op_vec4_f32(max(global0[_wgslsmith_index_u32(u_input.a, 11u)], vec4<f32>(870f, 176f, global2.a, 317f))))), !vec4<bool>(var_0.x, global2.b & (global2.c < 14712u), true, false), select(vec4<bool>(true, true, select(true, any(vec3<bool>(true, true, global1.x)), all(vec4<bool>(true, true, false, false))), !global1.x), func_2(_wgslsmith_f_op_f32(-global2.a), vec4<f32>(_wgslsmith_f_op_f32(select(-1848f, global2.a, true)), _wgslsmith_f_op_f32(select(-1685f, global2.a, global1.x)), 1497f, _wgslsmith_f_op_f32(min(global2.a, global2.a))), u_input.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(arg_0, 11u)] - global0[_wgslsmith_index_u32(4294967295u, 11u)]) + _wgslsmith_f_op_vec4_f32(vec4<f32>(273f, -826f, 1000f, 481f) - vec4<f32>(293f, global2.a, global2.a, -1000f)))), false));
    global0 = array<vec4<f32>, 11>();
    global2 = Struct_1(_wgslsmith_f_op_f32(-global2.a), true, u_input.a);
    global0 = array<vec4<f32>, 11>();
    return select(true, all(var_0.zz), global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(_wgslsmith_f_op_f32(sign(global2.a)), func_1(_wgslsmith_clamp_u32(global2.c, global2.c, ~1u)), select(~u_input.b, global2.c, !(!global2.b) & (-u_input.c.x < min(u_input.c.x, u_input.c.x))));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(global2.a + global2.a), false, 18768u);
    let var_1 = select(select(~(~u_input.d.yx), ~u_input.d.wz, func_2(_wgslsmith_f_op_f32(var_0.a + 1272f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, global2.a, var_0.a, -193f)), abs(vec4<i32>(12293i, u_input.c.x, 38282i, u_input.c.x)), global0[_wgslsmith_index_u32(0u, 11u)]).ww), ~vec2<u32>(~12150u, ~global2.c), vec2<bool>(global1.x, all(vec3<bool>(true, true, true)))) >> (u_input.d.xw % vec2<u32>(32u));
    var var_2 = var_0;
    let var_3 = var_0.b;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1348f - global2.a), _wgslsmith_f_op_f32(ceil(global2.a))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1478f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1028f * 591f))))), false, min(var_2.c, var_0.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-84043i, ~firstLeadingBit(i32(-1i) * -34697i)), vec2<i32>(-1i) * -abs(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, 1i), vec2<i32>(u_input.c.x, u_input.c.x))), 1390f);
}

