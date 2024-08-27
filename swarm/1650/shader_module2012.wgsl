struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

var<private> global1: vec4<f32> = vec4<f32>(-2874f, -1510f, -1000f, 454f);

var<private> global2: bool;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_1(~(~(~2774u)), 1u, vec4<bool>(!(global0.x & (global0.x & global0.x)), all(vec2<bool>(true, global0.x)) || global0.x, !(!(!global0.x)), global0.x & false), !(!(!vec4<bool>(true, global0.x, true, global0.x))));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.x))) + 315f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, global1.x, 1143f), vec3<f32>(-1505f, global1.x, global1.x), var_0.d.yzx)), global1.xxw) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(global1.yww, vec3<f32>(global1.x, 1000f, global1.x))), global1.wyy)))));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1921f + _wgslsmith_f_op_f32(f32(-1f) * -784f)) + 491f)))));
    return _wgslsmith_mult_vec4_u32(~(vec4<u32>(var_0.a, reverseBits(11262u), ~var_0.b, abs(var_0.b)) << ((_wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, 85477u, var_0.a), vec4<u32>(var_0.b, var_0.b, 4294967295u, var_0.b)) >> ((vec4<u32>(5496u, var_0.a, var_0.b, var_0.b) | vec4<u32>(var_0.b, var_0.b, var_0.a, 59576u)) % vec4<u32>(32u))) % vec4<u32>(32u))), select(abs(~(~vec4<u32>(var_0.a, 42278u, 4294967295u, var_0.a))), vec4<u32>(var_0.a, firstLeadingBit(var_0.a), max(var_0.b, ~47009u), _wgslsmith_mult_u32(var_0.b, 0u) | 61970u), vec4<bool>(global0.x, false, any(vec2<bool>(false, false)), global0.x)));
}

fn func_2(arg_0: vec3<bool>) -> vec4<u32> {
    global2 = false;
    var var_0 = _wgslsmith_add_vec4_u32(max(firstTrailingBit(countOneBits(vec4<u32>(1u, 1u, 1u, 1u))), func_3()), vec4<u32>(~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(54475u, 17052u, 0u), vec3<u32>(0u, 4294967295u, 0u)), 1u), 44365u, countOneBits(22990u), ~1u >> ((countOneBits(4294967295u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 33925u, 35075u), vec4<u32>(5894u, 58111u, 0u, 1u)) % 32u)) % 32u)));
    let var_1 = Struct_3(~var_0.xz);
    let var_2 = vec3<i32>(-58787i, _wgslsmith_clamp_i32(u_input.b.x, min(-2147483647i, 1i), _wgslsmith_dot_vec3_i32(-select(vec3<i32>(u_input.b.x, -2147483647i, 1i), vec3<i32>(u_input.b.x, u_input.b.x, -39222i), global0.x), u_input.a)), max(3906i, 0i));
    var var_3 = Struct_1(_wgslsmith_mult_u32(var_1.a.x, abs(~var_1.a.x)) << (var_0.x % 32u), ~var_1.a.x, select(select(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, arg_0.x, true), arg_0.x), !vec4<bool>(true, true, false, global0.x), _wgslsmith_div_f32(-215f, global1.x) == _wgslsmith_f_op_f32(-global1.x)), vec4<bool>(true, global0.x, all(arg_0), arg_0.x), arg_0.x), select(vec4<bool>(~41183u >= _wgslsmith_mult_u32(var_1.a.x, 69105u), !arg_0.x, false, global0.x), vec4<bool>(arg_0.x, global0.x, global0.x, global0.x), false));
    return ~_wgslsmith_add_vec4_u32((vec4<u32>(0u, var_1.a.x, var_1.a.x, var_0.x) << (vec4<u32>(8529u, var_0.x, 4294967295u, 1u) % vec4<u32>(32u))) ^ _wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, var_0.x, 31254u, 4294967295u), vec4<u32>(var_0.x, 58539u, 6695u, 1u)), vec4<u32>(select(var_0.x, var_1.a.x, false), 94659u >> (var_3.b % 32u), ~6344u, ~var_1.a.x)) << (~vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_3.a, var_0.x), vec2<u32>(15674u, var_1.a.x)), _wgslsmith_add_vec2_u32(var_0.yy, var_1.a)), ~(~36566u), var_0.x, ~abs(var_1.a.x)) % vec4<u32>(32u));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_1(~max(~arg_0.x, arg_0.x) ^ (_wgslsmith_dot_vec4_u32(func_2(arg_2), vec4<u32>(54313u, 1u, arg_0.x, arg_0.x) ^ vec4<u32>(arg_0.x, arg_0.x, 63672u, 54490u)) << (1u % 32u)), 23824u << (_wgslsmith_dot_vec3_u32(~(~vec3<u32>(arg_0.x, arg_0.x, arg_0.x)), vec3<u32>(arg_0.x, 42604u, arg_0.x & arg_0.x)) % 32u), vec4<bool>(!global0.x, any(vec3<bool>(arg_2.x, false, global1.x >= global1.x)), all(vec3<bool>(true, true, true)), true), !(!(!select(vec4<bool>(arg_2.x, arg_2.x, true, true), vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)))));
    global2 = false;
    var var_1 = ~(arg_0.x >> (arg_0.x % 32u));
    global2 = arg_2.x;
    let var_2 = true;
    return Struct_1(_wgslsmith_mult_u32(func_3().x, var_0.b), 19198u, select(!(!var_0.c), !select(vec4<bool>(false, global0.x, false, var_0.c.x), select(var_0.c, vec4<bool>(false, true, var_2, false), var_0.d), var_0.d.x || true), false), var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<u32>(1u, 1u, 1u), 4104i, vec3<bool>(select(1u, ~45451u, true) <= countOneBits(4294967295u), !all(select(vec4<bool>(true, false, global0.x, global0.x), vec4<bool>(false, global0.x, false, global0.x), global0.x)), !any(vec3<bool>(global0.x, false, global0.x))));
    var var_1 = select(!var_0.d.yx, !select(vec2<bool>(true, true), vec2<bool>(false, false), all(select(vec3<bool>(true, true, global0.x), vec3<bool>(true, var_0.d.x, global0.x), var_0.d.zwx))), global0.xy);
    let var_2 = global1.zx;
    var var_3 = global1.x;
    let var_4 = ~func_3();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, var_2.x, 1148f, 1632f), vec4<f32>(var_2.x, -1239f, 669f, 161f))))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-760f, var_2.x, 1000f, -2314f))))))), -542f, reverseBits(u_input.a.x));
}

