struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<bool>,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(389f, Struct_4(vec4<f32>(134f, -1848f, 1379f, -1512f), vec2<bool>(true, false)), -567f, Struct_1(1u, vec4<f32>(-399f, 767f, 804f, -1000f), vec4<bool>(false, false, true, true)), 4294967295u);

var<private> global1: array<Struct_1, 16>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> Struct_1 {
    let var_0 = false;
    return arg_1;
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: vec4<f32>, arg_3: Struct_3) -> vec4<f32> {
    var var_0 = 60293u & (1u ^ u_input.b.x);
    let var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(~select(0u, 82401u, false), arg_0.x, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, arg_0.x, global0.d.a), u_input.b.x << (arg_0.x % 32u))) | u_input.b, ~u_input.b);
    global1 = array<Struct_1, 16>();
    global0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, 1430f)), Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2)), select(arg_3.a.xy, func_2(_wgslsmith_f_op_f32(-389f - -561f), func_2(-1316f, global1[_wgslsmith_index_u32(global0.d.a, 16u)], -1225f, arg_2.x), _wgslsmith_f_op_f32(f32(-1f) * -1065f), -440f).c.zz, arg_3.a.xx)), global0.b.a.x, global1[_wgslsmith_index_u32(4294967295u, 16u)], ~firstLeadingBit(~53542u));
    global1 = array<Struct_1, 16>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, 152f, -766f, arg_2.x) * global0.b.a) - global0.b.a))))));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<bool>) -> bool {
    global0 = Struct_5(_wgslsmith_div_f32(-1544f, 1000f), Struct_4(arg_1.b, select(vec2<bool>(false, global0.d.c.x), vec2<bool>(true, true), global0.b.b.x || select(arg_2.x, true, false))), 644f, func_2(-326f, Struct_1(u_input.b.x, arg_0, arg_1.c), global0.a, global0.d.b.x), 1u);
    var var_0 = global0.b;
    global0 = Struct_5(var_0.a.x, global0.b, 1328f, Struct_1(~arg_1.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(global0.e, arg_1.a, arg_1.a, arg_1.a) ^ vec4<u32>(36530u, u_input.b.x, u_input.b.x, 46386u), any(global0.d.c.yzy), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-526f, global0.c, -753f, 2941f))), Struct_3(vec3<bool>(false, false, global0.b.b.x), global0.e))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global0.b.a))), func_2(_wgslsmith_f_op_f32(arg_0.x - global0.a), global0.d, global0.c, _wgslsmith_div_f32(-330f, -969f)).c)), vec4<bool>(global0.d.c.x, false, false, true)), arg_1.a);
    var var_1 = Struct_3(select(vec3<bool>(all(select(vec4<bool>(true, arg_2.x, var_0.b.x, false), arg_1.c, vec4<bool>(arg_2.x, true, true, var_0.b.x))), true, true), !global0.d.c.xyw, !func_2(_wgslsmith_f_op_f32(1037f - global0.c), Struct_1(u_input.b.x, var_0.a, vec4<bool>(arg_1.c.x, false, var_0.b.x, false)), -836f, arg_0.x).c.xzx), global0.d.a);
    var_1 = Struct_3(select(select(select(func_2(147f, global0.d, 382f, arg_1.b.x).c.zxy, vec3<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x), !arg_1.c.wxw), arg_2, arg_2), select(!select(global0.d.c.yyw, arg_2, vec3<bool>(arg_1.c.x, true, true)), !select(vec3<bool>(false, true, var_0.b.x), vec3<bool>(true, true, true), var_1.a), false), vec3<bool>(all(select(global0.d.c, vec4<bool>(true, false, global0.d.c.x, var_1.a.x), true)), arg_1.c.x, true)), countOneBits(~select(u_input.b.x, ~4294967295u, all(vec3<bool>(false, arg_1.c.x, true)))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(global0.b.a, vec2<bool>(!func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, global0.b.a.x, global0.a, global0.d.b.x)), Struct_1(24456u, global0.b.a, global0.d.c), !global0.d.c.wxw), global0.d.c.x));
    let var_1 = func_2(_wgslsmith_f_op_f32(777f * func_2(235f, func_2(-309f, Struct_1(0u, var_0.a, vec4<bool>(global0.b.b.x, true, false, var_0.b.x)), var_0.a.x, _wgslsmith_div_f32(global0.c, var_0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -595f), _wgslsmith_f_op_f32(-var_0.a.x)).b.x), Struct_1(_wgslsmith_div_u32(4294967295u | u_input.b.x, (global0.e & 80822u) | u_input.b.x), _wgslsmith_f_op_vec4_f32(global0.d.b * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(611f, var_0.a.x, -154f, -813f), global0.b.a)))), select(vec4<bool>(var_0.b.x, 1u > u_input.b.x, true, global0.d.c.x), global0.d.c, !select(global0.d.c, vec4<bool>(global0.d.c.x, false, global0.d.c.x, false), vec4<bool>(global0.b.b.x, false, false, var_0.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.a, var_0.a.x, global0.b.b.x)), 1000f) + var_0.a.x) + -172f), var_0.a.x);
    var var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(~u_input.c ^ ~u_input.c), u_input.e, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(max(vec4<i32>(-1i, -48367i, u_input.c, u_input.e), vec4<i32>(-1i, u_input.a.x, u_input.d, 0i)), reverseBits(vec4<i32>(15238i, 4163i, -17640i, 0i))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, -9983i, u_input.d, u_input.e), vec4<i32>(-1i, 1i, u_input.c, u_input.d)), countOneBits(vec4<i32>(u_input.e, 12538i, -2147483647i, u_input.e)), ~vec4<i32>(-1i, u_input.a.x, 2147483647i, -23576i)))), countOneBits(vec3<i32>(~(-810i), u_input.a.x, u_input.c)));
    var var_3 = Struct_2(var_1.b.x <= -333f);
    var_0 = global0.b;
    global1 = array<Struct_1, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_0.a, global0.d.b, vec4<bool>(true, true, var_3.a, false))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.b.x, var_1.b.x, var_1.b.x, var_1.b.x) + vec4<f32>(-357f, 669f, var_0.a.x, var_1.b.x))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.d.b.yzz) - _wgslsmith_f_op_vec3_f32(floor(var_0.a.xwx))) + _wgslsmith_f_op_vec3_f32(var_0.a.yww + _wgslsmith_f_op_vec3_f32(step(var_1.b.xwx, global0.d.b.wyy)))), var_0.a.zww)));
}

