struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: vec2<f32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 25>;

var<private> global1: Struct_4;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32) -> f32 {
    var var_0 = _wgslsmith_clamp_i32(u_input.c, global1.c, global1.c);
    global0 = array<vec2<bool>, 25>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -887f) - _wgslsmith_f_op_f32(-global1.b.b.c));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = i32(-1i) * -1i;
    let var_1 = ~vec4<u32>(~global1.a.a, min(_wgslsmith_mod_u32(global1.b.b.a, reverseBits(global1.b.a.b.a)), u_input.d.x), _wgslsmith_mod_u32(42988u, countOneBits(arg_0.b.a)), 4294967295u);
    var var_2 = false;
    let var_3 = !vec3<bool>(arg_1.b, global1.b.c, true);
    let var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.c))), _wgslsmith_f_op_f32(global1.b.a.c * global1.b.a.c), -638f) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1090f)), arg_0.c, _wgslsmith_f_op_f32(sign(-1239f)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1952f, arg_0.c, arg_0.c))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-161f, 130f, 1354f) + var_4), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.b.a.c, var_4.x, global1.a.c))))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_2(_wgslsmith_add_u32(1u << (arg_0.a % 32u), ~global1.b.a.a), Struct_1(1u, all(vec2<bool>(false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<u32>(1u, arg_0.a, global1.b.e.a, 108805u), 57620u)))), Struct_1(69605u, !select(true, arg_1.c, false)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.c, arg_1.a.c, arg_1.b.c)))));
    let var_1 = global1.b;
    var var_2 = -1i;
    var var_3 = ~var_1.e.a;
    var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(~_wgslsmith_mod_i32(27366i, 7051i)), u_input.a.x, u_input.c, ~0i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -global1.b.d, var_1.d, _wgslsmith_div_vec4_i32(var_1.d & vec4<i32>(global1.c, arg_1.d.x, 0i, var_1.d.x), countOneBits(vec4<i32>(u_input.c, arg_1.d.x, 1i, u_input.a.x)))) & -global1.b.d);
    return Struct_2(select(~u_input.b.x, global1.b.a.a << (18209u % 32u), select(true, true, true)), Struct_1(_wgslsmith_dot_vec2_u32(~(u_input.d.yz ^ u_input.d.yz), u_input.d.yy), global1.a.b.b), -110f);
}

fn func_1() -> f32 {
    global1 = Struct_4(func_2(Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, global1.a.b.a), ~vec3<u32>(59833u, 0u, u_input.d.x)), !global1.a.b.b), global1.b), global1.b, select(select(0i, i32(-1i) * -2147483647i, _wgslsmith_f_op_f32(-725f * global1.a.c) > _wgslsmith_div_f32(global1.a.c, global1.a.c)), 16846i ^ global1.c, any(select(vec4<bool>(true, true, global1.a.b.b, global1.b.c), vec4<bool>(false, global1.b.c, true, true), vec4<bool>(true, true, global1.b.b.b.b, global1.a.b.b)))));
    let var_0 = func_2(global1.a.b, global1.b).b.a;
    global0 = array<vec2<bool>, 25>();
    let var_1 = false;
    let var_2 = u_input.b.x;
    return global1.b.b.c;
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: vec2<bool>, arg_3: vec3<f32>) -> Struct_3 {
    global0 = array<vec2<bool>, 25>();
    let var_0 = u_input.d.xz;
    var var_1 = vec2<u32>(_wgslsmith_clamp_u32(108579u, global1.a.b.a, ~select(u_input.b.x, 17706u, false)), min(_wgslsmith_clamp_u32(1u, 13828u, global1.a.a) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, global1.b.e.a, 0u), vec3<u32>(u_input.b.x, arg_0, 0u)), max(u_input.b.x, 4294967295u))) ^ vec2<u32>(arg_0, ~((4294967295u >> (0u % 32u)) << (abs(u_input.d.x) % 32u)));
    global0 = array<vec2<bool>, 25>();
    var_1 = min(vec2<u32>(firstLeadingBit(1u), ~(~(~16699u))), vec2<u32>(abs(~1u ^ firstTrailingBit(var_0.x)), 24956u));
    return global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(Struct_2(~(25698u >> (u_input.b.x % 32u)) & ~(~global1.b.b.b.a), global1.b.b.b, global1.a.c), func_5(~_wgslsmith_add_u32(1u, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1683f + _wgslsmith_f_op_f32(func_1()))), vec2<bool>(true, true), vec3<f32>(global1.a.c, _wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_vec3_f32(func_4(Struct_2(43501u, Struct_1(47900u, false), global1.a.c), Struct_1(global1.b.a.a, global1.b.e.b))).x)), 0i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-728f - _wgslsmith_f_op_f32(step(-555f, -599f))), _wgslsmith_f_op_f32(-660f - global1.a.c))), vec3<u32>(0u, _wgslsmith_sub_u32(u_input.d.x, 1u) ^ u_input.d.x, 0u), u_input.b.x);
}

