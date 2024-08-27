struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec2<u32>,
    d: bool,
    e: u32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: u32,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1168f;

var<private> global1: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec2<bool> {
    global0 = 773f;
    let var_0 = -firstTrailingBit(-u_input.b) | firstLeadingBit(u_input.b);
    var var_1 = firstTrailingBit(-_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, u_input.a, var_0.x) >> (vec3<u32>(11745u, 1u, u_input.d) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(29278i, 30853i, u_input.a), vec3<i32>(-1i, u_input.a, 4090i), vec3<i32>(2147483647i, u_input.a, u_input.a))) | _wgslsmith_mod_vec3_i32(select(-vec3<i32>(var_0.x, var_0.x, 1i), -vec3<i32>(var_0.x, var_0.x, 2147483647i), vec3<bool>(global1.x, true, false)), select(vec3<i32>(u_input.a, 26692i, 2147483647i), ~vec3<i32>(var_0.x, 8043i, u_input.b.x), true)));
    var_1 = vec3<i32>(-16041i, -2147483647i, u_input.b.x) << (~_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.d, 57987u) >> (vec3<u32>(62944u, u_input.d, u_input.d) % vec3<u32>(32u)), vec3<u32>(21505u, 15288u, u_input.d) >> (vec3<u32>(u_input.c, u_input.d, 24962u) % vec3<u32>(32u))), firstLeadingBit(vec3<u32>(15929u, 52993u, u_input.c))) % vec3<u32>(32u));
    return select(select(vec2<bool>(all(select(vec4<bool>(false, global1.x, global1.x, true), vec4<bool>(true, true, global1.x, true), vec4<bool>(false, true, global1.x, global1.x))), any(!vec4<bool>(false, true, global1.x, false))), global1.xy, global1.zx), global1.zx, any(!select(vec3<bool>(true, false, false), !vec3<bool>(global1.x, false, global1.x), global1.x || global1.x)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<u32>) -> vec4<bool> {
    global1 = !vec3<bool>(global1.x, !global1.x, any(!func_3()));
    global0 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(637f, -1844f) - _wgslsmith_f_op_f32(893f * -1183f)) + _wgslsmith_f_op_f32(-404f - _wgslsmith_f_op_f32(f32(-1f) * -1493f)))));
    global0 = _wgslsmith_div_f32(1f, 1f);
    var var_0 = Struct_2(~(-1i), Struct_1(-531f, vec4<bool>(any(select(vec3<bool>(global1.x, true, false), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, global1.x, false))), global1.x, global1.x & true, select(true, true, all(global1.zz)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1240f)) - -669f), vec4<bool>(true | any(vec3<bool>(global1.x, false, false)), true, false, true)), _wgslsmith_div_vec3_u32(arg_0, vec3<u32>(~abs(4774u), _wgslsmith_mult_u32(~17428u, ~4294967295u), _wgslsmith_mult_u32(24232u, 1u))));
    var var_1 = ~(-u_input.a);
    return !var_0.c.b;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: bool) -> Struct_5 {
    let var_0 = Struct_2(countOneBits(~arg_0), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1076f + _wgslsmith_f_op_f32(floor(1082f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-649f)) * -1042f)), select(select(!vec4<bool>(arg_1, arg_2, arg_1, arg_1), func_2(vec3<u32>(u_input.c, u_input.c, u_input.d), vec2<u32>(u_input.d, u_input.c)), select(vec4<bool>(global1.x, global1.x, arg_1, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, arg_2, true))), vec4<bool>(false, global1.x, arg_2, !global1.x), false)), Struct_1(515f, select(select(func_2(vec3<u32>(u_input.c, 1u, 74400u), vec2<u32>(u_input.d, 119u)), vec4<bool>(true, true, arg_2, true), false), select(vec4<bool>(true, false, global1.x, arg_1), !vec4<bool>(arg_2, global1.x, true, arg_1), func_2(vec3<u32>(u_input.c, 1u, 1u), vec2<u32>(u_input.d, u_input.d))), select(vec4<bool>(false, arg_2, arg_1, global1.x), select(vec4<bool>(true, arg_2, arg_2, global1.x), vec4<bool>(true, global1.x, false, global1.x), global1.x), vec4<bool>(true, true, global1.x, arg_1)))), ~(~max(~vec3<u32>(u_input.c, 0u, u_input.d), vec3<u32>(u_input.d, 1u, u_input.c) | vec3<u32>(u_input.c, 1u, u_input.d))));
    global0 = _wgslsmith_f_op_f32(var_0.b.a * _wgslsmith_f_op_f32(-var_0.b.a));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_0.c.a)))))));
    var var_2 = 16521u;
    var var_3 = Struct_4(Struct_3(-44583i, u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.x, 2160f)) - var_1.x) - _wgslsmith_div_f32(var_0.b.a, _wgslsmith_f_op_f32(step(2198f, -1042f))))), 1u & var_0.d.x, vec2<u32>(min(59948u, min(_wgslsmith_sub_u32(112929u, 24354u), _wgslsmith_sub_u32(u_input.d, u_input.d))), ~1u), all(!func_3()), 49744u);
    return Struct_5(vec4<u32>(~max(reverseBits(u_input.d), 39437u), 1u, ~var_0.d.x, max(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_3.b, 1u), var_0.d.zx), var_0.d.yx))), !global1.zy, reverseBits(11343u & countOneBits(max(var_3.b, var_3.c.x))), Struct_4(var_3.a, _wgslsmith_dot_vec4_u32((vec4<u32>(u_input.d, u_input.c, 4294967295u, 23514u) >> (vec4<u32>(23797u, u_input.d, u_input.c, var_3.c.x) % vec4<u32>(32u))) | abs(vec4<u32>(0u, u_input.c, 4506u, 16428u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 124440u, 0u, 11948u), vec4<u32>(u_input.d, 3744u, 0u, 78660u)), firstLeadingBit(vec4<u32>(var_3.b, var_3.e, u_input.c, 5540u)), min(vec4<u32>(var_3.a.b, var_0.d.x, u_input.d, 0u), vec4<u32>(105001u, var_3.b, u_input.c, 0u)))), abs(vec2<u32>(0u, 88516u)) >> (~var_0.d.xz % vec2<u32>(32u)), any(select(select(vec3<bool>(false, false, true), var_0.c.b.wyx, var_0.b.b.wzx), vec3<bool>(false, false, false), var_0.b.b.ywx)), u_input.d));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: bool) -> vec3<bool> {
    var var_0 = u_input.b;
    let var_1 = Struct_2(select(-abs(-2147483647i), arg_0.d.a.a, false), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.a.c)), !(!(!vec4<bool>(false, true, true, arg_1.x)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.d.a.c))) - _wgslsmith_f_op_f32(ceil(arg_0.d.a.c))), !(!(!vec4<bool>(arg_1.x, arg_1.x, true, false)))), vec3<u32>(_wgslsmith_add_u32(u_input.d, u_input.d), arg_0.a.x, min(1u, u_input.c)));
    var var_2 = select(false, false, all(var_1.c.b.wyz));
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-331f, _wgslsmith_f_op_f32(arg_0.d.a.c - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.b.a), _wgslsmith_f_op_f32(trunc(-450f)))))))));
    var var_4 = Struct_2(-2147483647i, var_1.b, var_1.c, vec3<u32>(countOneBits(~reverseBits(var_1.d.x)), u_input.c, _wgslsmith_clamp_u32(arg_0.c, ~(~4294967295u), min(~u_input.d, 4294967295u))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_f32(-470f, _wgslsmith_f_op_f32(f32(-1f) * -1429f));
    var var_0 = 1u >> ((_wgslsmith_div_u32(4294967295u, u_input.c) ^ u_input.c) % 32u);
    global1 = !select(select(vec3<bool>(true, true, false), !select(vec3<bool>(true, global1.x, false), vec3<bool>(global1.x, true, true), global1.x), select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, true, global1.x), select(vec3<bool>(false, false, false), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, global1.x, global1.x)))), func_4(func_1(firstTrailingBit(u_input.a), global1.x, true), vec3<bool>(false, !global1.x, global1.x && true), !any(vec2<bool>(true, global1.x))), true);
    global0 = 242f;
    let var_1 = 34578u;
    var var_2 = Struct_3(countOneBits(~_wgslsmith_clamp_i32(28163i, _wgslsmith_div_i32(-30228i, u_input.a), 0i ^ u_input.a)), 1u, 386f);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~var_1, ~66200u));
}

