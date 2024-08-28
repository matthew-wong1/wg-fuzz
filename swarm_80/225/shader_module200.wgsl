struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec2<bool>(false, true));

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32) -> vec2<bool> {
    let var_0 = max(~(u_input.e.x >> (63851u % 32u)), ~(-30265i));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1209f * arg_0) * _wgslsmith_f_op_f32(min(arg_0, -581f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1006f - _wgslsmith_f_op_f32(trunc(arg_0))))), arg_0);
    let var_2 = Struct_1(select(vec2<bool>(true, false), global1.a, max(~u_input.c.x, 22452u) > _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), ~vec2<u32>(29982u, 77347u))));
    global2 = !vec2<bool>(false, var_2.a.x);
    var var_3 = Struct_1(vec2<bool>(global0.a.x, global1.a.x));
    return global1.a;
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: i32) -> Struct_1 {
    let var_0 = select(vec4<bool>(false, u_input.c.x <= ~(~4294967295u), false, all(!(!arg_0))), !arg_0, global2.x);
    global3 = !select(vec2<bool>(global0.a.x, var_0.x), vec2<bool>(all(select(vec2<bool>(global1.a.x, global2.x), arg_0.xx, global1.a)), true), var_0.x);
    var var_1 = min(arg_1, u_input.a);
    global2 = select(!func_3(_wgslsmith_div_f32(-1386f, _wgslsmith_f_op_f32(ceil(-1146f)))), select(var_0.xx, select(vec2<bool>(true, true), var_0.zy, global3.x), global1.a), vec2<bool>(-1i >= firstTrailingBit(1i), all(select(!var_0, select(arg_0, arg_0, vec4<bool>(true, global0.a.x, false, false)), true))));
    var var_2 = Struct_1(!arg_0.wy);
    return Struct_1(arg_0.zy);
}

fn func_4(arg_0: Struct_1) -> bool {
    var var_0 = ~vec3<u32>(abs(firstTrailingBit(u_input.c.x ^ 0u)), firstLeadingBit(abs(~0u)), _wgslsmith_add_u32(~(~u_input.c.x), abs(min(0u, u_input.c.x))));
    let var_1 = vec4<bool>(true, true, !(1i == u_input.e.x), any(!vec4<bool>(all(arg_0.a), global0.a.x, global3.x, any(global0.a))));
    global0 = arg_0;
    global1 = func_2(select(select(!var_1, !(!var_1), select(vec4<bool>(true, true, true, true), select(vec4<bool>(global2.x, true, false, false), vec4<bool>(global1.a.x, true, false, global2.x), global0.a.x), !var_1)), !(!(!vec4<bool>(true, var_1.x, global0.a.x, global2.x))), !select(!vec4<bool>(global2.x, false, false, global1.a.x), var_1, 1u >= var_0.x)), (min(_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.b), u_input.e.x) << (var_0.x % 32u)) ^ u_input.a, u_input.a << ((_wgslsmith_mod_u32(~var_0.x, 33224u) >> (36540u % 32u)) % 32u));
    var var_2 = func_2(!vec4<bool>(global3.x, global3.x, true, true), ~u_input.e.x, (_wgslsmith_div_i32(u_input.b, reverseBits(2147483647i)) | 1i) >> (~88278u % 32u));
    return all(select(var_1.zzz, select(!(!vec3<bool>(true, var_1.x, global0.a.x)), vec3<bool>(false, var_1.x, global1.a.x), true), var_1.zzz));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: bool) -> f32 {
    var var_0 = 1u;
    var var_1 = Struct_1(vec2<bool>(!(global1.a.x != global0.a.x) && false, !func_4(func_2(vec4<bool>(false, arg_2, true, global2.x), 1i, u_input.a))));
    global2 = func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2102f))) - 582f));
    var var_2 = u_input.d.yx;
    let var_3 = func_2(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(arg_2, global1.a.x, true, global1.a.x), !vec4<bool>(global1.a.x, true, false, arg_2)), vec4<bool>(false, false, func_3(arg_1).x, false), false), abs(2147483647i), firstLeadingBit(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-41386i, u_input.a)), _wgslsmith_add_vec2_i32(u_input.e, vec2<i32>(1552i, -1i) << (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u))))));
    return -1484f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -284f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(511f + _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1145f, -1000f, 908f, 1647f)), _wgslsmith_f_op_f32(trunc(-1026f)), global1.a.x & true))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(449f, 1108f)), _wgslsmith_f_op_f32(floor(-461f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1044f + 1037f) * _wgslsmith_f_op_f32(select(-3841f, 197f, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(172f)) - -1144f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.x));
}

