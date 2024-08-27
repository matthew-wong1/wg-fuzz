struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(4908u, 1147f, 4294967295u, vec4<bool>(false, false, false, true)), Struct_1(53862u, 1663f, 4294967295u, vec4<bool>(false, false, false, false)), Struct_1(59931u, -216f, 30517u, vec4<bool>(true, true, false, true)), Struct_1(16569u, -514f, 0u, vec4<bool>(false, true, false, true)), Struct_1(0u, 622f, 1u, vec4<bool>(false, false, true, false)), Struct_1(0u, 1012f, 46051u, vec4<bool>(true, true, false, true)), Struct_1(4294967295u, 721f, 6127u, vec4<bool>(true, true, false, false)), Struct_1(0u, 883f, 26420u, vec4<bool>(true, false, false, true)), Struct_1(13784u, -2467f, 4294967295u, vec4<bool>(false, true, false, false)), Struct_1(4294967295u, -701f, 4294967295u, vec4<bool>(false, false, false, true)), Struct_1(1u, 176f, 1u, vec4<bool>(true, true, true, false)), Struct_1(1u, 692f, 1u, vec4<bool>(true, false, true, false)), Struct_1(1u, -688f, 0u, vec4<bool>(false, true, true, false)), Struct_1(58505u, 1000f, 1u, vec4<bool>(false, true, false, false)), Struct_1(1u, 109f, 70623u, vec4<bool>(false, false, true, true)), Struct_1(46225u, 359f, 1u, vec4<bool>(true, false, true, true)), Struct_1(25656u, 1082f, 29963u, vec4<bool>(true, true, true, false)), Struct_1(15978u, -135f, 1u, vec4<bool>(true, false, true, false)), Struct_1(46290u, 225f, 24790u, vec4<bool>(true, false, false, false)), Struct_1(69467u, -1977f, 4294967295u, vec4<bool>(true, true, true, false)), Struct_1(29208u, -321f, 9529u, vec4<bool>(false, true, false, false)), Struct_1(92319u, -1000f, 8096u, vec4<bool>(true, true, false, true)), Struct_1(0u, 290f, 35596u, vec4<bool>(true, false, true, false)), Struct_1(9949u, -1558f, 1u, vec4<bool>(false, false, false, false)), Struct_1(0u, 443f, 58824u, vec4<bool>(true, true, false, false)), Struct_1(11831u, 2031f, 0u, vec4<bool>(false, false, true, false)), Struct_1(28676u, 1012f, 72348u, vec4<bool>(true, false, false, false)), Struct_1(3609u, -136f, 0u, vec4<bool>(true, true, true, false)), Struct_1(0u, 191f, 26264u, vec4<bool>(true, false, true, false)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: bool) -> vec2<f32> {
    global0 = Struct_2(-_wgslsmith_mod_i32(min(-1i, 0i), arg_0.x >> (u_input.c % 32u)) << (_wgslsmith_dot_vec3_u32(u_input.a.zwy, ~select(u_input.a.zxw, u_input.a.wyx, global0.c.d.x)) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(global0.c.b + 1949f))), Struct_1(global0.c.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.b))), 32781u, select(global0.c.d, select(global0.c.d, vec4<bool>(true, true, true, true), any(global0.c.d)), select(!global0.c.d, vec4<bool>(global0.c.d.x, true, global0.c.d.x, arg_1), global0.c.d.x))));
    let var_0 = Struct_1(abs(~(_wgslsmith_dot_vec2_u32(u_input.a.wx, u_input.a.zx) >> (firstTrailingBit(u_input.a.x) % 32u))), 798f, 13287u, select(!(!select(vec4<bool>(global0.c.d.x, true, global0.c.d.x, global0.c.d.x), vec4<bool>(true, global0.c.d.x, false, global0.c.d.x), false)), vec4<bool>(true, false, any(select(vec3<bool>(true, arg_1, false), vec3<bool>(false, false, true), true)), true), vec4<bool>(global0.c.d.x, arg_1, false, arg_1 & arg_1)));
    global1 = array<Struct_1, 29>();
    global0 = Struct_2(firstLeadingBit(-(_wgslsmith_mult_i32(global0.a, 0i) << (var_0.a % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2006f))), Struct_1(~firstTrailingBit(_wgslsmith_clamp_u32(44901u, var_0.a, 3831u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-220f, 130f))), 535f)), global0.c.c, !(!(!vec4<bool>(false, true, global0.c.d.x, true)))));
    let var_1 = 1i;
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-789f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -846f)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2077f - var_0.b)), var_0.b), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.c.b, global0.c.b))))), !(!(!vec2<bool>(true, arg_1)))));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec3<i32>) -> vec2<f32> {
    global1 = array<Struct_1, 29>();
    var var_0 = -vec2<i32>(global0.a, -(~(-2147483647i)));
    global1 = array<Struct_1, 29>();
    global0 = Struct_2(global0.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_1)))), Struct_1(105371u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -239f)), _wgslsmith_mod_u32(u_input.c, ~global0.c.a & 48143u), vec4<bool>(global0.c.d.x, global0.c.d.x, true, global0.c.d.x)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(351f, 1048f) - vec2<f32>(global0.c.b, -1924f))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -988f), global0.b)) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_3(vec2<i32>(var_0.x, -45347i), false))))));
}

fn func_1() -> f32 {
    let var_0 = i32(-1i) * -43753i;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(50482u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b))), u_input.d)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c.b), _wgslsmith_f_op_f32(350f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) - _wgslsmith_f_op_f32(floor(-773f))) - _wgslsmith_f_op_f32(f32(-1f) * -1358f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-2147483647i, global0.b, Struct_1(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * global0.b)), ~u_input.c, global0.c.d));
    let var_1 = select(var_0.c.d.x, any(!(!(!vec4<bool>(true, global0.c.d.x, global0.c.d.x, var_0.c.d.x)))), all(select(select(vec2<bool>(true, true), var_0.c.d.xy, any(global0.c.d.ww)), global0.c.d.yw, select(global0.c.d.zx, var_0.c.d.ww, u_input.a.x > 22252u))));
    global0 = var_0;
    global0 = var_0;
    let var_2 = global1[_wgslsmith_index_u32(u_input.c | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x | var_0.c.c, ~1u) << (~(~vec2<u32>(23017u, 0u)) % vec2<u32>(32u)), u_input.a.wx), 29u)];
    global1 = array<Struct_1, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

