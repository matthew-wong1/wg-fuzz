struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: u32,
    d: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec3<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(0u, vec3<f32>(-722f, -1087f, 927f), vec3<bool>(false, true, true), vec3<i32>(-45064i, -70425i, -30858i), vec3<f32>(460f, 3043f, 1281f));

var<private> global1: vec2<u32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: u32) -> Struct_3 {
    let var_0 = vec3<f32>(-765f, arg_0.x, global0.e.x);
    var var_1 = global0.c;
    let var_2 = Struct_5(global0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(263f, -2021f, -784f) + vec3<f32>(var_0.x, -587f, 395f)) * _wgslsmith_f_op_vec3_f32(arg_0 * vec3<f32>(931f, 1874f, 385f))))), vec3<bool>(!global0.c.x, var_1.x, false), global0.d, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global0.b)))), vec3<f32>(1378f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.b.x)) - _wgslsmith_f_op_f32(var_0.x - global0.b.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-var_0.x))))));
    var_1 = global0.c;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.e.x))), _wgslsmith_f_op_f32(-var_2.e.x))));
    return Struct_3(all(!select(vec3<bool>(var_2.c.x, global0.c.x, var_2.c.x), global0.c, vec3<bool>(true, true, true))));
}

fn func_3(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.b.x)))), _wgslsmith_f_op_f32(f32(-1f) * -323f))));
    let var_1 = Struct_1(-1150f, any(vec2<bool>(true, true)) != (_wgslsmith_f_op_f32(abs(var_0.x)) > _wgslsmith_f_op_f32(step(var_0.x, 1723f))));
    global0 = arg_0;
    return (4294967295u >> (1u % 32u)) | ~(~_wgslsmith_add_u32(global1.x, ~25420u));
}

fn func_2(arg_0: Struct_4) -> Struct_3 {
    global1 = _wgslsmith_mod_vec2_u32(u_input.b, firstTrailingBit(vec2<u32>(0u & _wgslsmith_dot_vec2_u32(vec2<u32>(30434u, global0.a), u_input.b), func_3(Struct_5(1u, vec3<f32>(global0.b.x, -1996f, 644f), global0.c, vec3<i32>(0i, arg_0.a, global0.d.x), vec3<f32>(-712f, global0.b.x, global0.b.x)), arg_0.b.zyy, ~vec3<u32>(u_input.b.x, 14271u, global0.a)))));
    global0 = Struct_5(_wgslsmith_dot_vec4_u32(vec4<u32>(42020u, ~countOneBits(u_input.b.x), 95733u, global1.x), ~vec4<u32>(reverseBits(101054u), u_input.b.x, global0.a, 25044u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, 205f, global0.e.x) * global0.e) + vec3<f32>(global0.e.x, 101f, -251f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(812f, global0.b.x, 529f) * vec3<f32>(global0.b.x, global0.e.x, global0.b.x))), select(!global0.c, arg_0.b.wxw, global0.c)))), select(arg_0.b.yxy, !(!global0.c), vec3<bool>(true, global0.c.x, arg_0.b.x)), ~global0.d, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(global0.e.x * 2186f), _wgslsmith_f_op_f32(504f + 486f)))))));
    let var_0 = ~(~firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(85698u, global1.x), min(vec2<u32>(global1.x, global0.a), u_input.b))));
    global0 = Struct_5(var_0.x, vec3<f32>(_wgslsmith_f_op_f32(-global0.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-114f, _wgslsmith_f_op_f32(global0.b.x - global0.e.x), true)) + 2362f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global0.e.x))))), select(select(!vec3<bool>(true, global0.c.x, arg_0.b.x), arg_0.b.wzx, vec3<bool>(false, all(vec3<bool>(global0.c.x, global0.c.x, global0.c.x)), global0.c.x && true)), vec3<bool>(true, global0.c.x, global0.c.x), global0.c), vec3<i32>(~(-1i) | _wgslsmith_add_i32(~arg_0.a, 0i), -(-arg_0.a ^ -global0.d.x), ~(-abs(global0.d.x))), vec3<f32>(global0.b.x, global0.b.x, _wgslsmith_f_op_f32(-global0.e.x)));
    global1 = ~u_input.b;
    return Struct_3(global0.c.x | true);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: f32) -> bool {
    let var_0 = 1u;
    let var_1 = Struct_5(countOneBits(global1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global0.b * _wgslsmith_div_vec3_f32(global0.e, global0.b)), global0.e, false))), vec3<bool>(func_1(_wgslsmith_f_op_vec3_f32(-global0.b), vec4<i32>(0i, 12718i, 0i, 24544i) << (vec4<u32>(global0.a, 3596u, 67715u, arg_1.a.x) % vec4<u32>(32u)), _wgslsmith_mult_u32(var_0, arg_1.a.x)).a && true, !arg_0.a, global0.c.x), ~select(global0.d, u_input.a, true) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(~global0.a, global1.x, arg_1.a.x), select(firstLeadingBit(vec3<u32>(0u, 0u, 4294967295u)), vec3<u32>(7527u, arg_1.a.x, 4294967295u), false)) % vec3<u32>(32u)), global0.e);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(439f + arg_2)), var_1.e.x)))), !(arg_0.a | !(!arg_0.a)));
    var var_3 = arg_1;
    var var_4 = var_1;
    return any(var_1.c.yy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(~global0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.b.x - -503f))), -1000f, -156f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(step(-1759f, 146f)), -320f), _wgslsmith_f_op_vec3_f32(global0.b + _wgslsmith_f_op_vec3_f32(ceil(global0.b))), false))), global0.c, vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(-u_input.a.x, ~global0.d.x), 0i | global0.d.x), reverseBits(~global0.d.x | ~u_input.a.x), u_input.c.x | 2147483647i), _wgslsmith_f_op_vec3_f32(-global0.b));
    var var_1 = -(~(global0.d.x ^ max(-1i, 22163i)));
    var var_2 = max(1i, abs(countOneBits(0i)));
    var var_3 = Struct_1(-206f, global0.c.x);
    var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-411f - _wgslsmith_div_f32(_wgslsmith_div_f32(483f, 512f), var_0.e.x))), func_4(func_2(Struct_4(var_0.d.x, !vec4<bool>(var_3.b, var_3.b, false, global0.c.x), ~var_0.a, func_1(vec3<f32>(926f, var_3.a, 341f), vec4<i32>(u_input.a.x, -1i, 1i, -14336i), 48278u))), Struct_2(~(vec2<u32>(global1.x, u_input.b.x) ^ u_input.b)), 2160f));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-global0.b.x)) * global0.e.x)), var_0.c.x);
    var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.a))), countOneBits(1u) > ~global0.a);
    var var_5 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_3.a, 465f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-278f, -390f, var_4.a, -612f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, 904f, -1915f, var_0.e.x), vec4<f32>(var_3.a, var_0.e.x, var_0.e.x, 1540f)))))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a, var_4.a, -660f, 921f)))), vec4<f32>(var_0.b.x, -1428f, 307f, -1048f)))));
}

