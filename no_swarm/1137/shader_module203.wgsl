struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: u32,
    d: vec3<bool>,
    e: bool,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
    c: Struct_3,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_2 = Struct_2(vec2<u32>(0u, 4294967295u), false, 6224u, vec3<bool>(true, false, false), true);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec4<f32>, arg_3: u32) -> f32 {
    global1 = Struct_2(global1.a, global1.e, _wgslsmith_add_u32(~(~7168u), global1.c), !vec3<bool>(false, false, !select(false, true, arg_1)), false);
    var var_0 = _wgslsmith_sub_u32(40593u, global1.a.x);
    var_0 = global1.a.x | _wgslsmith_dot_vec2_u32(vec2<u32>(abs(77594u), 0u), global1.a);
    global1 = Struct_2(global1.a, any(global1.d.xz), _wgslsmith_dot_vec3_u32(~(~(vec3<u32>(0u, u_input.c, 21704u) >> (vec3<u32>(global1.a.x, 4294967295u, global1.c) % vec3<u32>(32u)))), ~(~(~vec3<u32>(29335u, global1.c, u_input.d)))), select(vec3<bool>(global1.b, all(vec3<bool>(global1.e, global1.e, arg_1)) || true, arg_1), select(vec3<bool>(!global1.b, all(vec4<bool>(global1.e, true, arg_1, arg_1)), global1.e), vec3<bool>(u_input.a.x < 41547i, select(true, global1.b, false), !arg_1), global1.d.x), select(vec3<bool>(true, true, true), global1.d, !vec3<bool>(arg_1, true, false))), global1.d.x);
    var_0 = _wgslsmith_clamp_u32(u_input.d, u_input.d, u_input.c);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -120f) + global0.a.x));
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> Struct_3 {
    var var_0 = false;
    var var_1 = firstLeadingBit(2935u);
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(176f, _wgslsmith_f_op_f32(990f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-366f + -562f), _wgslsmith_f_op_f32(1131f - 1084f), global1.d.x & true))))), _wgslsmith_f_op_f32(select(global0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-1000f, true, vec4<f32>(-1677f, arg_1, arg_0.a.x, 783f), 35701u)) - _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(step(-475f, arg_1))), all(select(!vec2<bool>(false, global1.d.x), !global1.d.zz, true))))));
    var var_3 = select(0i << (0u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(~(-u_input.b.x), u_input.b.x, u_input.b.x, u_input.a.x), vec4<i32>(2147483647i, ~u_input.b.x, u_input.a.x, _wgslsmith_mult_i32(u_input.b.x, 2147483647i)) ^ vec4<i32>(-u_input.a.x, _wgslsmith_dot_vec4_i32(u_input.b, u_input.b), 14485i, u_input.b.x)), !(!global1.d.x));
    var_3 = u_input.a.x;
    return arg_0;
}

fn func_4(arg_0: Struct_4) -> Struct_3 {
    var var_0 = Struct_2(select(select(vec2<u32>(arg_0.b.x, global1.c), select(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.b.x, global1.c), global1.a), vec2<u32>(global1.c, u_input.c), !global1.d.xz), any(select(vec3<bool>(true, true, true), global1.d, false))), ~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.c, u_input.d, 1u), vec3<u32>(2859u, u_input.d, arg_0.b.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.x, 84032u, 0u), vec3<u32>(3935u, 1u, global1.a.x))), vec2<bool>(global1.d.x, all(vec2<bool>(false, false)))), all(!global1.d), max(_wgslsmith_mult_u32(~global1.a.x, arg_0.b.x), ~1u), vec3<bool>(firstLeadingBit(countOneBits(u_input.b.x)) >= ~(~u_input.a.x), global1.b, !global1.e), !global1.e);
    global1 = Struct_2(global1.a, false, ~0u, !vec3<bool>(!(u_input.b.x < u_input.b.x), all(select(vec4<bool>(global1.d.x, false, false, true), vec4<bool>(false, var_0.e, false, global1.e), vec4<bool>(true, global1.b, var_0.b, false))), all(vec3<bool>(false, true, false))), false);
    global0 = func_2(Struct_3(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-417f - -583f), global0.a.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1214f, 258f), vec2<f32>(518f, global0.a.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(532f, -1008f) + global0.a), vec2<bool>(global1.d.x, true)))))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-378f + -367f)) + -138f), all(!(!var_0.d.yz)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -630f), 392f, _wgslsmith_f_op_f32(-arg_0.c.a.x), global0.a.x), 0u)));
    global0 = func_2(arg_0.c, _wgslsmith_f_op_f32(-global0.a.x));
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(func_2(Struct_3(vec2<f32>(1000f, -2262f)), _wgslsmith_f_op_f32(ceil(247f))).a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, 1211f)))))));
    return arg_0.c;
}

fn func_1() -> vec4<u32> {
    var var_0 = Struct_4(-1727f, global1.a, Struct_3(_wgslsmith_f_op_vec2_f32(select(global0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a)), global1.d.yx))));
    var var_1 = u_input.c;
    let var_2 = ~(-vec2<i32>(u_input.a.x, u_input.b.x));
    let var_3 = ~0u;
    var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x - global0.a.x) + global0.a.x), var_0.b, func_4(Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1358f * -1275f), var_0.c.a.x, global1.b)), _wgslsmith_div_vec2_u32(var_0.b, max(var_0.b, var_0.b)), func_2(var_0.c, 1f))));
    return abs(abs(max(vec4<u32>(8504u, 5781u, u_input.d, u_input.c) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_3, 16574u, u_input.c), vec4<u32>(var_3, var_0.b.x, var_3, 80399u)), ~(vec4<u32>(31184u, 125779u, 1u, 0u) << (vec4<u32>(29184u, var_3, 80925u, u_input.d) % vec4<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a) * _wgslsmith_f_op_vec2_f32(-global0.a)));
    let var_0 = ~countOneBits(firstTrailingBit(vec4<u32>(1u, global1.a.x, 4294967295u, u_input.d))) & min(~firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 72406u, 4294967295u, u_input.d), vec4<u32>(47382u, global1.a.x, global1.c, 1u))), func_1());
    let var_1 = false || !any(select(global1.d, !global1.d, any(vec4<bool>(false, global1.e, global1.d.x, global1.d.x))));
    var var_2 = Struct_3(global0.a);
    global1 = Struct_2(vec2<u32>(var_0.x, global1.c), global1.d.x, 4294967295u, !vec3<bool>(var_1, var_1, global1.d.x), false);
    let var_3 = Struct_1(-30665i > _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.b.x, -u_input.b.x, ~28594i), ~abs(u_input.a.x)), vec2<bool>(var_1, !var_1));
    let var_4 = Struct_2(global1.a, global1.d.x, ~(~abs(firstTrailingBit(global1.a.x))), global1.d, var_3.b.x);
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(486f, 1036f))), _wgslsmith_f_op_f32(-global0.a.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.x, global0.a.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_clamp_u32(1u, ~4294967295u, _wgslsmith_mod_u32(global1.c, 1u)) | 1u, 1u, _wgslsmith_add_u32(countOneBits(31821u), _wgslsmith_dot_vec2_u32(~global1.a, vec2<u32>(1u, u_input.d) & vec2<u32>(u_input.d, 95535u))), 4294967295u), ~_wgslsmith_clamp_vec2_i32(u_input.b.yy, vec2<i32>(~(-2003i), -42885i), vec2<i32>(u_input.a.x, 0i)));
}

