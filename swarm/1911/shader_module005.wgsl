struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: u32,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> vec4<f32> {
    let var_0 = select(vec2<bool>((~(-1i) <= abs(u_input.b)) && all(vec3<bool>(arg_0.a, global0.b, global0.a.a)), any(select(select(vec3<bool>(false, true, true), vec3<bool>(arg_0.a, global0.b, global0.b), arg_0.a), !vec3<bool>(global0.b, global0.b, arg_0.a), !arg_0.a))), !select(vec2<bool>(false, !arg_0.a), !(!vec2<bool>(arg_0.a, arg_0.a)), vec2<bool>(false, any(vec2<bool>(true, global0.b)))), !select(!select(vec2<bool>(false, arg_0.a), vec2<bool>(false, global0.b), false), !select(vec2<bool>(false, arg_0.a), vec2<bool>(true, global0.b), true), true));
    let var_1 = vec3<i32>(i32(-1i) * -2147483647i, select(80686i, u_input.a, !all(select(vec4<bool>(false, false, arg_0.a, global0.a.a), vec4<bool>(false, arg_0.a, true, global0.a.a), vec4<bool>(false, true, var_0.x, var_0.x)))), -2147483647i);
    global0 = Struct_2(Struct_1(select(true, any(select(vec4<bool>(true, false, true, false), vec4<bool>(global0.b, false, var_0.x, arg_0.a), vec4<bool>(false, global0.b, true, false))), false), _wgslsmith_f_op_vec3_f32(exp2(global0.c.zzx))), ~var_1.x <= abs((-12777i & u_input.b) << (arg_1.x % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global0.c)))));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -247f))));
    var var_3 = _wgslsmith_dot_vec2_u32(min(~u_input.c.wy >> (_wgslsmith_sub_vec2_u32(u_input.c.yz, vec2<u32>(9797u, arg_1.x)) % vec2<u32>(32u)), ~vec2<u32>(u_input.c.x, 1u)), countOneBits(vec2<u32>(1u, _wgslsmith_div_u32(u_input.c.x, u_input.d.x)))) != _wgslsmith_clamp_u32(~arg_1.x, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(22227u, u_input.c.x, 18638u), u_input.d.zyz) << (~u_input.d.ywx % vec3<u32>(32u)), firstLeadingBit(u_input.d.zxw)), _wgslsmith_mod_u32(abs(u_input.c.x), ~63441u) >> (~6051u % 32u));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global0.c)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global0.c))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: bool) -> Struct_1 {
    global0 = Struct_2(global0.a, u_input.c.x <= 1u, _wgslsmith_f_op_vec4_f32(select(global0.c, _wgslsmith_f_op_vec4_f32(func_3(global0.a, select(~vec2<u32>(u_input.d.x, u_input.d.x), vec2<u32>(11475u, u_input.c.x) >> (u_input.d.xy % vec2<u32>(32u)), vec2<bool>(true, true)))), select(vec4<bool>(false, any(vec4<bool>(true, false, false, true)), global0.a.a, !global0.a.a), vec4<bool>(true, !arg_2, all(vec2<bool>(false, arg_2)), arg_2), global0.b))));
    var var_0 = select(!vec2<bool>(!(u_input.b == u_input.a), arg_2), select(vec2<bool>(true, arg_2), !(!select(vec2<bool>(arg_2, false), vec2<bool>(false, true), false)), select(select(select(vec2<bool>(arg_2, arg_2), vec2<bool>(global0.a.a, arg_2), vec2<bool>(false, global0.b)), !vec2<bool>(arg_2, true), !vec2<bool>(arg_2, false)), select(vec2<bool>(true, arg_2), select(vec2<bool>(global0.a.a, global0.a.a), vec2<bool>(true, true), false), vec2<bool>(true, arg_2)), !vec2<bool>(global0.b, arg_2))), any(select(!select(vec2<bool>(arg_2, arg_2), vec2<bool>(true, false), global0.b), vec2<bool>(true, true), !(global0.a.a | true))));
    global0 = Struct_2(global0.a, false != global0.a.a, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1796f, _wgslsmith_f_op_f32(-global0.a.b.x), global0.c.x, _wgslsmith_f_op_f32(-global0.a.b.x)), vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.x, arg_1.x, false)), arg_1.x, -992f, _wgslsmith_f_op_f32(-arg_1.x)), vec4<bool>(true, any(vec2<bool>(global0.a.a, false)), true, true))))));
    let var_1 = ~firstLeadingBit(_wgslsmith_clamp_vec4_u32(reverseBits(firstTrailingBit(vec4<u32>(4294967295u, 1u, 22515u, 80661u))), u_input.c, _wgslsmith_mod_vec4_u32(~u_input.c, u_input.c)));
    var var_2 = -15021i;
    return Struct_1(!all(vec2<bool>(true, all(vec3<bool>(false, true, true)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.zwz + vec3<f32>(arg_0.x, arg_0.x, arg_0.x)) * arg_1.wyw), _wgslsmith_f_op_vec3_f32(-global0.a.b)));
}

fn func_1() -> u32 {
    global0 = Struct_2(func_2(vec2<f32>(-166f, global0.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(global0.a.b.x, global0.c.x, global0.a.b.x, 1075f), vec4<f32>(-299f, 1046f, global0.a.b.x, global0.c.x)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(global0.c))))), !global0.a.a), !(global0.b || !global0.b), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global0.c)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1293f, global0.a.b.x, -294f, global0.a.b.x)))))));
    var var_0 = _wgslsmith_f_op_f32(-global0.a.b.x);
    let var_1 = Struct_2(Struct_1(any(vec3<bool>(all(vec2<bool>(global0.b, true)), all(vec4<bool>(true, global0.a.a, true, false)), false)), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.c.x, 366f), 769f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-221f, -838f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.b.x, 183f)))), true, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.c.x, 1146f)))), global0.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -751f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1038f))))));
    var var_2 = Struct_1(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_1.a.b, var_1.c.ywx))));
    var_2 = Struct_1(false, _wgslsmith_f_op_vec4_f32(func_3(var_1.a, ~u_input.c.yx)).zwx);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = ~func_1() | abs(18818u);
    global0 = Struct_2(Struct_1(global0.b, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-485f + global0.c.x), _wgslsmith_f_op_f32(-1000f - 1000f), global0.c.x)))), global0.a.a, vec4<f32>(-794f, _wgslsmith_div_f32(430f, global0.a.b.x), -3021f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(240f + -1000f)) - _wgslsmith_f_op_vec4_f32(func_3(func_2(global0.c.zw, vec4<f32>(global0.c.x, -1908f, global0.a.b.x, -455f), global0.a.a), _wgslsmith_mod_vec2_u32(vec2<u32>(27301u, 4294967295u), var_0.yy))).x)));
    var_1 = u_input.d.x;
    var var_2 = ((-u_input.b & 1i) << (reverseBits(_wgslsmith_dot_vec3_u32(~u_input.d.zyx, _wgslsmith_clamp_vec3_u32(vec3<u32>(5329u, u_input.d.x, 0u), u_input.d.yyx, vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x)))) % 32u)) >= -select(firstTrailingBit(-u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.a) & vec4<i32>(u_input.a, 1i, u_input.b, 36837i), vec4<i32>(u_input.a, -27406i, u_input.b, u_input.b)), all(!vec2<bool>(false, global0.b)));
    var var_3 = func_2(global0.a.b.zy, vec4<f32>(_wgslsmith_f_op_f32(min(-997f, global0.c.x)), -465f, global0.c.x, 571f), all(vec4<bool>(any(vec2<bool>(global0.b, global0.b)), all(select(vec4<bool>(false, true, true, global0.b), vec4<bool>(global0.a.a, global0.b, false, false), false)), false, any(select(vec4<bool>(global0.a.a, global0.a.a, true, global0.a.a), vec4<bool>(global0.a.a, global0.a.a, global0.a.a, global0.b), global0.a.a)))));
    let var_4 = _wgslsmith_div_vec2_u32(var_0.zy, abs(countOneBits(vec2<u32>(0u, 79160u)) & ~(vec2<u32>(u_input.c.x, var_0.x) >> (var_0.xx % vec2<u32>(32u)))));
    var var_5 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.a.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-442f, global0.c.x)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.b.x), var_3.b.x))))), 1198f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_3.b.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b.x - var_3.b.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x * global0.a.b.x) + _wgslsmith_f_op_f32(floor(var_3.b.x))))));
    var var_6 = _wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.d.zyw), _wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, u_input.d.x, var_0.x), countOneBits(vec3<u32>(var_4.x, var_4.x, var_0.x)) & vec3<u32>(u_input.c.x, var_0.x, 1u))) ^ ~_wgslsmith_mod_u32(firstTrailingBit(var_4.x), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_i32(~(-2147483647i), 30634i) & u_input.a, 1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(global0.c + vec4<f32>(var_3.b.x, var_5.x, var_5.x, global0.c.x)), vec4<f32>(_wgslsmith_f_op_f32(-443f * 470f), -553f, _wgslsmith_f_op_f32(max(global0.c.x, var_3.b.x)), _wgslsmith_f_op_f32(global0.a.b.x + global0.c.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1069f, 457f)), _wgslsmith_f_op_vec4_f32(-global0.c), any(vec3<bool>(global0.b, global0.b, global0.a.a))).b.x, 749f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.c.x - var_3.b.x))), _wgslsmith_f_op_f32(max(642f, _wgslsmith_div_f32(-915f, global0.a.b.x))))));
}

