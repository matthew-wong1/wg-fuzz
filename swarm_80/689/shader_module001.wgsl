struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: f32,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2 = Struct_2(16363i, vec2<bool>(false, true), Struct_1(1u, i32(-2147483648), 1842f, 4294967295u));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: u32) -> vec4<f32> {
    global0 = 66673u;
    global1 = Struct_2(_wgslsmith_dot_vec3_i32(select(vec3<i32>(-1i, u_input.d << (44551u % 32u), -2280i), vec3<i32>(global1.c.b, -2147483647i, -global1.a), any(vec3<bool>(true, false, global1.b.x))), vec3<i32>(-1i) * -vec3<i32>(3858i, 1i, u_input.a)), global1.b, global1.c);
    var var_0 = Struct_3(arg_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.c.c), 139f)), -347f, !(!(!(!vec2<bool>(global1.b.x, true)))), ~global1.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(274f + var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - 1832f)), _wgslsmith_f_op_f32(f32(-1f) * -1181f))) * vec3<f32>(_wgslsmith_f_op_f32(-var_0.c), 2187f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global1.c.c)), -1548f) * var_0.b)));
    var var_2 = Struct_3(reverseBits(min(~arg_0, 0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.c.c)) * 1731f), 1862f, !vec2<bool>(-169f < var_1.x, any(vec4<bool>(var_0.d.x, var_0.d.x, true, global1.b.x))), max(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(0i, -35344i)), ~vec2<i32>(-56823i, -59205i)), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-36900i, -1i), vec2<i32>(global1.a, u_input.a)), _wgslsmith_add_vec2_i32(vec2<i32>(var_0.e, var_0.e), vec2<i32>(global1.c.b, 36002i)), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.e, global1.a), vec2<i32>(26787i, 0i)))), _wgslsmith_add_i32(u_input.a, min(-u_input.a, 0i))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.c.c, -326f, 1600f, var_0.c), vec4<f32>(var_1.x, var_1.x, 236f, -1043f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-2706f, 955f, global1.c.c, var_0.c), vec4<f32>(global1.c.c, 723f, global1.c.c, var_0.b))))));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1374f)))), 132f, 1353f, _wgslsmith_f_op_f32(-1021f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -170f), global1.c.c)))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(max(4294967295u, 28301u))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(196f, -957f, global1.c.c, -498f))), vec4<f32>(1129f, global1.c.c, global1.c.c, global1.c.c))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(var_0.zwz, _wgslsmith_f_op_vec3_f32(select(var_0.wyw, var_0.xyy, select(vec3<bool>(global1.b.x, false, any(vec3<bool>(true, false, global1.b.x))), vec3<bool>(all(vec3<bool>(global1.b.x, global1.b.x, global1.b.x)), !global1.b.x, false & global1.b.x), true))), true));
    var var_2 = !all(!vec3<bool>(global1.c.b > u_input.d, any(vec2<bool>(true, global1.b.x)), all(vec3<bool>(true, false, global1.b.x))));
    global0 = countOneBits(~4294967295u);
    var_2 = !global1.b.x && any(vec4<bool>(false, true, -1405f > _wgslsmith_f_op_f32(trunc(var_1.x)), !global1.b.x));
    return global1.c;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>) -> f32 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(568f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.c - arg_1.x)))))));
    let var_2 = select(vec4<bool>(true, all(vec2<bool>(global1.b.x, true)) != arg_0.b.x, select(!(arg_0.b.x || arg_0.b.x), global1.b.x, arg_0.b.x), any(vec4<bool>(true, true, true || global1.b.x, true))), vec4<bool>(!arg_0.b.x, u_input.c.x < 4294967295u, !(!select(arg_0.b.x, arg_0.b.x, global1.b.x)), any(select(vec3<bool>(false, false, global1.b.x), !vec3<bool>(arg_0.b.x, arg_0.b.x, global1.b.x), var_0.b < -1i))), global1.b.x);
    let var_3 = Struct_2(_wgslsmith_sub_i32(-42131i, ~2147483647i), select(select(global1.b, vec2<bool>(select(var_2.x, global1.b.x, var_2.x), all(var_2)), all(select(var_2, var_2, global1.b.x))), !select(!vec2<bool>(false, global1.b.x), arg_0.b, !vec2<bool>(global1.b.x, var_2.x)), vec2<bool>(false, !(global1.a <= arg_0.c.b))), global1.c);
    var var_4 = false;
    return _wgslsmith_f_op_f32(-arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(global1.c.c, _wgslsmith_f_op_f32(-global1.c.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c.c), _wgslsmith_f_op_f32(func_1(Struct_2(-21117i, global1.b, global1.c), vec2<f32>(1348f, global1.c.c)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.c - global1.c.c))) + 306f));
    let var_1 = vec4<u32>(min(u_input.c.x, ~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 7806u), u_input.c))), select(~_wgslsmith_mod_u32(1u, max(global1.c.a, u_input.b)), 0u, !any(select(vec3<bool>(false, global1.b.x, false), vec3<bool>(global1.b.x, false, global1.b.x), vec3<bool>(global1.b.x, global1.b.x, global1.b.x)))), countOneBits(24855u), ~_wgslsmith_clamp_u32(abs(1u), 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.c.d, 1u, u_input.b, 0u), vec4<u32>(28585u, 1u, 6240u, u_input.c.x))) ^ u_input.b);
    var var_2 = ~global1.c.d ^ (firstLeadingBit(~40952u) ^ ~(~var_1.x));
    let var_3 = Struct_3(4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-1953f + global1.c.c))) * var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(var_1.x & 1u)).x + _wgslsmith_f_op_f32(-global1.c.c))), !vec2<bool>(global1.b.x, -4762i != global1.a), -5168i);
    var var_4 = Struct_1(max(reverseBits(countOneBits(_wgslsmith_clamp_u32(0u, 26536u, 0u))), 4294967295u), 1i, var_3.b, var_3.a);
    var var_5 = vec3<bool>(any(!select(select(vec4<bool>(global1.b.x, false, global1.b.x, var_3.d.x), vec4<bool>(global1.b.x, global1.b.x, var_3.d.x, var_3.d.x), vec4<bool>(false, false, var_3.d.x, global1.b.x)), !vec4<bool>(true, var_3.d.x, true, true), select(var_3.d.x, var_3.d.x, false))), any(!(!(!var_3.d))), var_3.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(210f, -741f, 442f, var_3.c))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -481f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -496f)), 1822f, var_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1000f, 1f)))));
}

