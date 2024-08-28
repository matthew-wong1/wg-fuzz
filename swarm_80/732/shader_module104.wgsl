struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<f32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(vec3<u32>(58482u, 0u, 4294967295u), false, vec2<bool>(false, false), vec4<bool>(false, true, true, true)), 15690u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: bool) -> vec3<u32> {
    let var_0 = arg_0.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(595f + var_0) * var_0)), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), var_0) + vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -120f), 315f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(260f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), -2152f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(663f - -583f)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(677f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_1.x, 180f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, arg_0.x))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, true)), _wgslsmith_f_op_f32(-var_1.x), 959f)))));
    global0 = Struct_4(Struct_1(_wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(global0.b, 1u, 1u) ^ global0.a.a) >> (global0.a.a % vec3<u32>(32u)), global0.a.c.x, vec2<bool>(!(508f > var_0), !(!global0.a.b)), !global0.a.d), _wgslsmith_add_u32(~(~u_input.b.x), 36018u));
    let var_3 = global0.a.d.x;
    return ~_wgslsmith_mult_vec3_u32(u_input.b ^ u_input.b, ~_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.b.x, 18343u, u_input.b.x), ~u_input.b));
}

fn func_2(arg_0: vec3<u32>) -> vec2<bool> {
    var var_0 = global0.a.d.zzz;
    var var_1 = global0.a;
    var var_2 = ~firstLeadingBit(~(~vec4<u32>(u_input.b.x, 0u, u_input.b.x, var_1.a.x)));
    var_1 = Struct_1(select(~_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.x, var_1.a.x, global0.b), _wgslsmith_clamp_vec3_u32(var_1.a, vec3<u32>(1167u, 35491u, 691u), vec3<u32>(arg_0.x, global0.b, 61347u))), func_3(vec4<f32>(-178f, _wgslsmith_f_op_f32(ceil(496f)), _wgslsmith_f_op_f32(-557f + -410f), 270f), global0.a.b), !(!select(global0.a.d.zxw, vec3<bool>(var_1.c.x, true, global0.a.d.x), vec3<bool>(false, false, true)))), (4294967295u != func_3(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(803f, -381f, 174f, 2014f))), var_1.d.x).x) || ((var_1.d.x && (global0.a.b || true)) && !any(global0.a.d)), var_0.yy, select(!global0.a.d, vec4<bool>(all(vec2<bool>(false, true)), all(select(vec3<bool>(var_0.x, true, var_1.c.x), global0.a.d.zxy, var_1.c.x)), global0.a.d.x, any(!global0.a.d)), select(select(select(vec4<bool>(var_0.x, false, false, true), vec4<bool>(var_1.d.x, global0.a.b, var_0.x, var_0.x), global0.a.d), global0.a.d, global0.a.d), vec4<bool>(true, false, false, var_0.x != true), ~0u != ~arg_0.x)));
    var var_3 = _wgslsmith_dot_vec3_u32(~vec3<u32>(9169u, _wgslsmith_sub_u32(~u_input.b.x, abs(arg_0.x)), _wgslsmith_mult_u32(arg_0.x, global0.a.a.x)), vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.x, 4294967295u, 4294967295u), firstTrailingBit(vec3<u32>(var_2.x, 37273u, 0u) | u_input.b)), u_input.b.x, countOneBits(arg_0.x)));
    return var_1.d.yw;
}

fn func_1() -> Struct_4 {
    global0 = Struct_4(Struct_1(abs(_wgslsmith_add_vec3_u32(vec3<u32>(19244u, 4294967295u, 39885u), vec3<u32>(global0.b, u_input.b.x, u_input.b.x))), false, func_2(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(0u, u_input.b.x, 2436u)), vec3<u32>(1u, 1u, 1u))), global0.a.d), abs(_wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec2_u32(global0.a.a.xz, vec2<u32>(u_input.b.x, 0u))) & min(~u_input.b.x, 0u)));
    var var_0 = Struct_4(Struct_1(~(~vec3<u32>(global0.a.a.x, global0.a.a.x, 1u)) << (vec3<u32>(_wgslsmith_sub_u32(u_input.b.x, 4294967295u), 20163u ^ u_input.b.x, 54047u) % vec3<u32>(32u)), !(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(0i, u_input.a.x, -3946i, u_input.d)) < ~51179i), vec2<bool>(global0.a.d.x, true), vec4<bool>(true, true, true, true)), global0.b);
    let var_1 = Struct_4(var_0.a, u_input.b.x);
    var var_2 = true;
    var var_3 = _wgslsmith_add_i32(-2147483647i, -2147483647i | u_input.c.x);
    return Struct_4(var_1.a, ~u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = global0.a.d.x;
    var var_1 = i32(-1i) * -u_input.c.x;
    var var_2 = !func_1().a.d.x;
    let var_3 = func_1().a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.wyx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(239f - 1361f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -148f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(min(125f, 568f)), _wgslsmith_f_op_f32(min(-1682f, 192f)), -207f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1473f, -580f, -1196f) + vec3<f32>(-643f, -915f, -356f))), var_3.d.x)))), abs(func_1().a.a.zz), _wgslsmith_sub_u32(var_3.a.x, ~(~var_3.a.x)));
}

