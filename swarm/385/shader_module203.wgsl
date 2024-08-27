struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<i32>,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: bool,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 2>;

var<private> global1: array<i32, 28>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    global1 = array<i32, 28>();
    var var_0 = ~(~abs(1u));
    var_0 = _wgslsmith_add_u32(~0u, u_input.a.x);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-375f - 174f), _wgslsmith_f_op_f32(ceil(1182f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -119f))))));
    var var_2 = true;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + _wgslsmith_f_op_f32(f32(-1f) * -323f)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1, var_1)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_f_op_f32(ceil(254f)))))));
}

fn func_2(arg_0: bool) -> u32 {
    global0 = array<vec4<bool>, 2>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1232f), -162f) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-431f, -643f)))))) * vec2<f32>(_wgslsmith_f_op_f32(func_3(u_input.a.zz)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -902f))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, var_0.x))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 1923f) - vec2<f32>(-1967f, 594f))))));
    var var_1 = all(!select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, true), vec2<bool>(arg_0, false)), vec2<bool>(arg_0, true), select(vec2<bool>(false, false), vec2<bool>(false, arg_0), arg_0))) & false;
    var var_2 = all(vec2<bool>(true, any(!select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, arg_0, false), arg_0))));
    return ~firstLeadingBit(firstTrailingBit(abs(u_input.a.x)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<f32>) -> f32 {
    let var_0 = u_input.b;
    let var_1 = vec3<u32>(~0u, u_input.a.x, func_2(any(!select(vec2<bool>(false, true), vec2<bool>(true, true), false))));
    var var_2 = 2147483647i | -(global1[_wgslsmith_index_u32(1u, 28u)] | -u_input.c.x);
    var var_3 = Struct_4(_wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(~var_0, global1[_wgslsmith_index_u32(~u_input.a.x, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)]), _wgslsmith_sub_i32(max(17177i, 21028i), firstTrailingBit(1i))), var_0));
    var var_4 = Struct_4(var_3.a);
    return arg_1.x;
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_1) -> bool {
    let var_0 = firstLeadingBit(select(abs(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(12239u, u_input.a.x, u_input.a.x, 36762u), vec4<u32>(u_input.a.x, u_input.a.x, 1u, 4294967295u)), ~u_input.a.x)), ~u_input.a.yz, !vec2<bool>(true, all(vec4<bool>(arg_3.a, arg_2.x, arg_2.x, true)))));
    let var_1 = _wgslsmith_clamp_i32(~global1[_wgslsmith_index_u32(var_0.x | ~4294967295u, 28u)], arg_3.c.x, u_input.b);
    let var_2 = vec4<u32>(u_input.a.x, u_input.a.x, reverseBits(21969u), _wgslsmith_div_u32(1u, ~(~u_input.a.x)));
    var var_3 = _wgslsmith_add_i32(-(~countOneBits(28731i)), arg_3.c.x) & -((~arg_3.c.x ^ min(-1i, -10255i)) >> (0u % 32u));
    var var_4 = Struct_5(vec4<i32>(-1i, _wgslsmith_div_i32(_wgslsmith_mult_i32(9103i, -15259i), ~_wgslsmith_div_i32(global1[_wgslsmith_index_u32(var_2.x, 28u)], u_input.c.x)), arg_3.c.x, 64984i ^ _wgslsmith_sub_i32(max(global1[_wgslsmith_index_u32(13572u, 28u)], 0i), _wgslsmith_dot_vec2_i32(u_input.c.yx, arg_3.c))), arg_0.x, _wgslsmith_f_op_f32(step(651f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(387f, _wgslsmith_f_op_f32(select(arg_0.x, arg_1, false)))))))), arg_2.x && false, vec4<bool>(arg_2.x, false, 9118u == var_0.x, arg_3.e));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec3<bool>(true, func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(438f, -595f, -1000f)), _wgslsmith_f_op_f32(func_1(u_input.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(211f, 847f, 620f, -405f) * vec4<f32>(-386f, -1165f, 194f, -225f)))), vec4<bool>(false, true, all(global0[_wgslsmith_index_u32(u_input.a.x, 2u)]), true), Struct_1(u_input.c.x < 45045i, true, vec2<i32>(-2147483647i, -2147483647i), vec3<f32>(840f, 1676f, 1254f), any(vec4<bool>(true, true, true, false)))), any(vec2<bool>(true, true))));
    var var_1 = ~select(u_input.a, ~vec4<u32>(1u, u_input.a.x, ~37900u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.wz)), true || any(vec4<bool>(true, true, true, true)));
    let var_2 = Struct_1(!(_wgslsmith_clamp_u32(~var_1.x, max(var_1.x, 0u), var_1.x) <= ~var_1.x), _wgslsmith_div_f32(969f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-546f, -565f) - -664f)) >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(vec2<u32>(1u, var_1.x))))), firstLeadingBit(vec2<i32>(u_input.b, min(u_input.b >> (4294967295u % 32u), ~global1[_wgslsmith_index_u32(59300u, 28u)]))), vec3<f32>(_wgslsmith_f_op_f32(1276f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -1314f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(638f)) + _wgslsmith_f_op_f32(f32(-1f) * -216f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1642f))), all(global0[_wgslsmith_index_u32(var_1.x, 2u)]));
    global0 = array<vec4<bool>, 2>();
    var var_3 = _wgslsmith_f_op_f32(floor(-815f));
    let var_4 = -183f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, var_1.xx, 2147483647i, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1628f, var_2.d.x, -195f, 893f), vec4<f32>(var_4, -2050f, -1000f, -753f))))))));
}

