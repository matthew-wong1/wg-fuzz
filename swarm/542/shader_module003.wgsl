struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 29>;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(false, true, true, true), 822f, vec3<u32>(4294967295u, 16826u, 64578u));

var<private> global2: bool;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec2<bool> {
    var var_0 = all(global1.a);
    var var_1 = Struct_2(global1.a.xw, vec2<i32>(-1i << (_wgslsmith_dot_vec3_u32(~vec3<u32>(34419u, 0u, u_input.b), global1.c) % 32u), u_input.e.x));
    let var_2 = Struct_2(!vec2<bool>(var_1.a.x, false), u_input.e.xw);
    global1 = Struct_1(!(!select(global1.a, !vec4<bool>(var_2.a.x, var_1.a.x, global1.a.x, var_2.a.x), !global1.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(920f + _wgslsmith_f_op_f32(f32(-1f) * -609f)))), global1.c);
    var var_3 = Struct_1(vec4<bool>(all(!select(vec4<bool>(false, true, false, global1.a.x), vec4<bool>(true, false, var_1.a.x, true), var_1.a.x)), !var_2.a.x, select(any(global1.a), -u_input.a.x >= (337i << (0u % 32u)), !(var_1.a.x | false)), var_1.a.x), -1114f, ~(~(~global1.c)) & ~((global1.c ^ global1.c) | max(global1.c, vec3<u32>(6456u, 4294967295u, u_input.d))));
    return vec2<bool>(true, true);
}

fn func_2(arg_0: vec2<bool>) -> vec2<i32> {
    var var_0 = vec4<bool>(all(select(select(func_3(), func_3(), true), select(vec2<bool>(true, true), vec2<bool>(arg_0.x, global1.a.x), arg_0.x), global1.a.x)), true, any(global1.a.xxy), false);
    let var_1 = Struct_1(!global1.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.b))), global1.c);
    var var_2 = Struct_2(arg_0, ~reverseBits(u_input.e.zx));
    var var_3 = var_1.c.x;
    global0 = array<vec4<f32>, 29>();
    return countOneBits(var_2.b);
}

fn func_1() -> Struct_2 {
    var var_0 = any(!(!(!select(global1.a, vec4<bool>(true, global1.a.x, global1.a.x, true), vec4<bool>(global1.a.x, true, true, global1.a.x)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(789f, _wgslsmith_f_op_f32(global1.b - global1.b))))));
    let var_2 = Struct_2(vec2<bool>(true, global1.a.x), func_2(global1.a.yz));
    global1 = Struct_1(select(select(vec4<bool>(select(global1.a.x, true, global1.a.x), true, true, true), select(select(global1.a, global1.a, false), vec4<bool>(var_2.a.x, var_2.a.x, false, var_2.a.x), true), any(!global1.a.zw)), select(vec4<bool>(true && global1.a.x, func_3().x, func_3().x, func_3().x), global1.a, select(!global1.a, select(global1.a, global1.a, global1.a), select(vec4<bool>(global1.a.x, global1.a.x, global1.a.x, false), vec4<bool>(false, global1.a.x, true, var_2.a.x), global1.a))), global1.a), _wgslsmith_f_op_f32(select(var_1.x, var_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(347f, 117f)))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(158f)) - -1000f))), ~global1.c);
    let var_3 = Struct_1(!select(select(select(global1.a, global1.a, global1.a.x), select(global1.a, vec4<bool>(global1.a.x, global1.a.x, var_2.a.x, true), vec4<bool>(global1.a.x, false, false, true)), var_2.a.x), vec4<bool>(true, var_2.a.x, var_2.a.x, var_2.a.x), !(!var_2.a.x)), _wgslsmith_f_op_f32(188f - 104f), global1.c);
    return var_2;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: bool, arg_3: Struct_2) -> bool {
    var var_0 = vec2<f32>(global1.b, 1379f);
    global1 = Struct_1(vec4<bool>(true, func_1().a.x, true, true), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-913f * -199f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(403f, global1.b) * 1823f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1005f)) - var_0.x) * _wgslsmith_f_op_f32(step(global1.b, arg_0))))), select(vec3<u32>(_wgslsmith_clamp_u32(85422u >> (global1.c.x % 32u), _wgslsmith_add_u32(0u, u_input.b), 1u & global1.c.x), ~(~global1.c.x), global1.c.x), select(vec3<u32>(0u, reverseBits(4294967295u), ~30894u), global1.c, true), any(arg_3.a)));
    var var_1 = Struct_1(select(vec4<bool>(global1.a.x || true, !select(arg_1, true, global1.a.x), arg_3.a.x, false), !global1.a, arg_2), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(step(-269f, _wgslsmith_f_op_f32(min(var_0.x, 1199f))))), ~(~global1.c));
    global2 = all(!vec3<bool>(all(!global1.a), (8552i >> (0u % 32u)) < _wgslsmith_add_i32(2147483647i, arg_3.b.x), arg_3.a.x));
    let var_2 = -2147483647i;
    return var_1.b == _wgslsmith_f_op_f32(313f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(183f - 1008f)))));
}

fn func_5(arg_0: Struct_1) -> vec2<f32> {
    global1 = arg_0;
    global1 = arg_0;
    let var_0 = 0i;
    let var_1 = vec2<i32>(~(_wgslsmith_div_i32(abs(var_0), ~u_input.e.x) | -abs(2147483647i)), ~var_0);
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(18778i, max(1i, -2147483647i), u_input.e.x, countOneBits(u_input.a.x)), vec4<i32>(58835i, 1i, -2147483647i, _wgslsmith_dot_vec2_i32(abs(-u_input.e.yy), u_input.e.yx)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-2003f * global1.b), 1f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.b, 1424f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    var var_1 = _wgslsmith_f_op_vec2_f32(func_5(Struct_1(vec4<bool>(func_4(-765f, select(true, true, global1.a.x), true, func_1()), global1.a.x, true, global1.c.x != _wgslsmith_div_u32(u_input.d, var_0)), global1.b, vec3<u32>(_wgslsmith_div_u32(u_input.b, global1.c.x) | ~var_0, global1.c.x, 11710u))));
    var var_2 = vec2<u32>(~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.b, var_0)), select(~global1.c.xx, global1.c.xy, !global1.a.xx)), var_0);
    let var_3 = 679f;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_5(Struct_1(!global1.a, 1508f, global1.c))).x);
    global1 = Struct_1(global1.a, -1712f, global1.c);
    let x = u_input.a;
    s_output = StorageBuffer(global1.b, 4294967295u, -u_input.e.x, max(reverseBits(~global1.c.yx), firstLeadingBit(_wgslsmith_add_vec2_u32(global1.c.yy, vec2<u32>(global1.c.x, 17783u))) & firstLeadingBit(global1.c.xx << (vec2<u32>(u_input.d, global1.c.x) % vec2<u32>(32u)))), -8820i << (global1.c.x % 32u));
}

