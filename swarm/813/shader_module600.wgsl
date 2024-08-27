struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: u32;

var<private> global2: Struct_1;

var<private> global3: array<vec3<f32>, 6> = array<vec3<f32>, 6>(vec3<f32>(-670f, -290f, -428f), vec3<f32>(-478f, -226f, -1000f), vec3<f32>(105f, 3496f, 554f), vec3<f32>(1657f, -440f, -316f), vec3<f32>(113f, 1000f, 505f), vec3<f32>(1610f, 1000f, -751f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = !vec3<bool>(~16741u == _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, 51444u, u_input.a, u_input.a), vec4<u32>(u_input.b.x, 5649u, 8897u, 4294967295u) << (vec4<u32>(16513u, 0u, u_input.a, 54337u) % vec4<u32>(32u))), 8209i > max(global2.b.x | 1i, 1i), true);
    var var_1 = arg_0;
    var var_2 = arg_0;
    var var_3 = Struct_1(-510f, vec2<i32>(-1i) * -(~(~var_2.b)));
    var var_4 = !var_0.x;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(-2087f, _wgslsmith_f_op_f32(var_3.a + 1367f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.a, 2556f, var_0.x)) * var_3.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(193f, -455f, var_1.a, global2.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-885f, -614f, 594f, -1767f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(905f, var_3.a, var_3.a, -212f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(169f, var_2.a, -589f, global2.a), vec4<f32>(global2.a, var_3.a, var_3.a, var_3.a), false))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: u32, arg_2: vec2<u32>, arg_3: Struct_1) -> bool {
    var var_0 = arg_0;
    global1 = 0u ^ ~arg_2.x;
    let var_1 = Struct_1(-533f, _wgslsmith_div_vec2_i32(global2.b, _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, -1i, -28446i), 1i), arg_3.b)));
    return all(select(select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, false, true, true)), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true)), true), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), false), vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true))))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<i32>) -> i32 {
    var var_0 = global2.a;
    let var_1 = 816f;
    let var_2 = global2.a;
    global0 = func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, 739f, var_1, var_1)), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(-1615f, vec2<i32>(arg_1.x, u_input.c))))), reverseBits(arg_0.x), ~(~reverseBits(vec2<u32>(u_input.b.x, arg_0.x))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(171f, 1046f) - var_1), arg_1.yx << (~vec2<u32>(arg_0.x, 34390u) % vec2<u32>(32u)))) || false;
    var var_3 = vec4<u32>(select(max(~(~arg_0.x), countOneBits(u_input.a)), ~firstLeadingBit(u_input.b.x) & u_input.a, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true))))), ~69183u, reverseBits(82552u) >> (abs(~u_input.b.x) % 32u), arg_0.x);
    return _wgslsmith_div_i32(arg_1.x, -46837i);
}

fn func_5(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = ~_wgslsmith_mod_u32(0u, 35615u);
    let var_1 = arg_2;
    var var_2 = vec4<i32>(1i, -11634i, arg_1.x, arg_2.b.x);
    let var_3 = global2.a;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.a)) - arg_2.a)), min(vec2<i32>(0i, select(~(-38189i), _wgslsmith_dot_vec2_i32(var_1.b, var_2.ww), var_0 != u_input.b.x)), _wgslsmith_add_vec2_i32(select(vec2<i32>(29879i, arg_2.b.x), vec2<i32>(arg_0, var_1.b.x), any(vec3<bool>(false, false, false))), vec2<i32>(1i, var_2.x))));
    return !select(vec2<bool>((var_4.b.x ^ arg_0) <= -4647i, true), vec2<bool>(all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true))), false), select(true, !any(vec4<bool>(false, false, true, true)), any(vec2<bool>(false, true))));
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -1218f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.a))), _wgslsmith_f_op_f32(floor(-755f)))), arg_0.a);
    var var_1 = select(all(vec4<bool>(true, true, true, true)), true, !any(func_5(func_2(u_input.b.zz, vec3<i32>(arg_0.b.x, -1i, global2.b.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, -23643i, -75909i, arg_0.b.x), vec4<i32>(1i, global2.b.x, arg_0.b.x, u_input.c)), Struct_1(-1284f, vec2<i32>(1i, global2.b.x)))));
    global2 = Struct_1(arg_0.a, vec2<i32>(~(-14194i) | _wgslsmith_div_i32(_wgslsmith_mult_i32(arg_0.b.x, -23015i), ~1712i), global2.b.x));
    let var_2 = _wgslsmith_mod_i32(i32(-1i) * -2147483647i, global2.b.x);
    var_1 = !(true | any(vec4<bool>(true, true, true, true)));
    return -315f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!vec3<bool>(-1i < global2.b.x, true, true)));
    global3 = array<vec3<f32>, 6>();
    var_0 = vec3<bool>(!(global2.a != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1609f + global2.a)))), global2.a > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(730f, global2.b)))), false);
    var var_1 = 12766u;
    var var_2 = ~(-2147483647i);
    var var_3 = u_input.c;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(global2.a + 1595f), -(vec2<i32>(u_input.c, global2.b.x) | abs(vec2<i32>(2147483647i, u_input.c))) ^ global2.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.a, _wgslsmith_f_op_f32(max(global2.a, 976f)), 1000f, _wgslsmith_f_op_f32(trunc(501f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-692f, global2.a, -2330f, 1000f) * vec4<f32>(-1000f, -893f, -247f, 772f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.a))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1748f), -299f, func_4(vec4<f32>(-677f, 1000f, -307f, -898f), 0u, u_input.b.yz, Struct_1(626f, global2.b))))), global2.a, var_4.a, _wgslsmith_div_f32(global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(-1763f, vec2<i32>(-1i, var_4.b.x))))))), _wgslsmith_add_vec2_u32(u_input.b.yy, ~vec2<u32>(reverseBits(1u), 32412u)));
}

