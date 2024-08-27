struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: vec2<i32>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<bool>,
    d: i32,
    e: u32,
}

struct Struct_4 {
    a: f32,
    b: bool,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_5, arg_1: Struct_3, arg_2: vec3<bool>) -> vec2<bool> {
    return arg_1.c;
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_2) -> i32 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(step(arg_2.d, arg_2.d)), all(vec3<bool>(!(703f >= arg_2.d), _wgslsmith_add_i32(u_input.a.x, arg_0.x) <= arg_0.x, arg_2.b.x)));
    var_0 = Struct_4(-1000f, false);
    let var_1 = Struct_3(Struct_1(arg_2.b.www, any(vec4<bool>(arg_2.b.x, false, false, true)) | true, all(vec3<bool>(false | var_0.b, true, true))), ~(~(vec4<u32>(arg_1, 86852u, 15891u, 0u) & vec4<u32>(arg_1, arg_1, 4753u, u_input.b.x))) ^ vec4<u32>(1u << (arg_2.e.x % 32u), 51916u, ~arg_2.e.x, ~(arg_2.e.x & 32156u)), func_3(Struct_5(vec3<bool>(!arg_2.b.x, false, var_0.b), vec4<i32>(-1i) * -vec4<i32>(-44421i, arg_0.x, -2147483647i, arg_0.x), Struct_3(Struct_1(arg_2.b.zyx, arg_2.b.x, arg_2.b.x), ~vec4<u32>(4294967295u, 4294967295u, 1u, 48263u), vec2<bool>(true, var_0.b), arg_0.x, 4991u)), Struct_3(Struct_1(select(arg_2.b.xzz, arg_2.b.xyz, arg_2.b.xzw), arg_2.b.x, arg_2.b.x), vec4<u32>(71713u, select(arg_1, 3372u, arg_2.b.x), arg_2.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, arg_2.e.x, arg_2.a, arg_1), vec4<u32>(arg_1, 63859u, 59557u, arg_1))), !select(vec2<bool>(true, arg_2.b.x), arg_2.b.yz, false), 0i, arg_2.a), arg_2.b.yxw), arg_2.c.x, arg_2.e.x);
    let var_2 = arg_2;
    let var_3 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d + -368f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a)) * _wgslsmith_f_op_f32(-var_0.a))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-639f, var_0.a)) * _wgslsmith_div_f32(arg_2.d, 708f)), _wgslsmith_f_op_f32(min(arg_2.d, arg_2.d)))), false);
    return -4932i;
}

fn func_1(arg_0: vec3<f32>) -> Struct_5 {
    let var_0 = abs(func_2(firstTrailingBit(u_input.a), ~(~1u << (u_input.b.x % 32u)), Struct_2(u_input.b.x, !select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)), vec2<i32>(0i, -2000i), arg_0.x, firstLeadingBit(~u_input.b))));
    let var_1 = vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-790f - _wgslsmith_f_op_f32(ceil(arg_0.x))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-306f * arg_0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.x, -1000f)) + arg_0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-188f))) - -1000f)), _wgslsmith_div_f32(-485f, arg_0.x));
    var var_2 = u_input.b.x;
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(floor(var_1.x))))));
    var var_4 = u_input.a.yy;
    return Struct_5(vec3<bool>(false & all(vec3<bool>(true, true, true)), false, any(vec4<bool>(true, true, true, true))), firstLeadingBit(vec4<i32>(8690i, ~(-2147483647i | var_0), -1i, -2147483647i)), Struct_3(Struct_1(vec3<bool>(false, true, all(vec3<bool>(false, false, false))), true, false), vec4<u32>(~u_input.b.x, _wgslsmith_dot_vec2_u32(max(vec2<u32>(8036u, u_input.b.x), vec2<u32>(62997u, u_input.b.x)), u_input.b), ~(~u_input.b.x), 1u), func_3(Struct_5(vec3<bool>(true, true, true), vec4<i32>(30205i, 1i, 1i, var_4.x), Struct_3(Struct_1(vec3<bool>(true, true, true), false, true), vec4<u32>(u_input.b.x, 47219u, u_input.b.x, 0u), vec2<bool>(false, true), var_0, u_input.b.x)), Struct_3(Struct_1(vec3<bool>(false, true, true), true, true), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec2<bool>(true, true), var_4.x, 4294967295u), vec3<bool>(all(vec4<bool>(false, true, false, true)), true, true)), 2147483647i, max(100255u & min(1u, u_input.b.x), select(abs(u_input.b.x), u_input.b.x, true))));
}

fn func_4(arg_0: Struct_5) -> Struct_3 {
    let var_0 = true || (!func_1(vec3<f32>(986f, -2135f, -1033f)).a.x || true);
    let var_1 = arg_0.b.zy;
    var var_2 = ~74582u;
    var var_3 = ~(_wgslsmith_div_u32(u_input.b.x, firstLeadingBit(1u)) << (u_input.b.x % 32u)) & _wgslsmith_clamp_u32(~(_wgslsmith_dot_vec4_u32(arg_0.c.b, arg_0.c.b) | 4294967295u), ~(~(~u_input.b.x)), 4294967295u);
    var_2 = abs(abs(abs(min(4294967295u, 4294967295u))) >> (reverseBits(arg_0.c.b.x) % 32u));
    return func_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(726f, 532f, -709f) * vec3<f32>(808f, -945f, 430f))))))).c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1830f)) * _wgslsmith_f_op_f32(f32(-1f) * -857f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -497f))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(step(-467f, _wgslsmith_f_op_f32(f32(-1f) * -931f))), -1000f))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(-828f * _wgslsmith_f_op_f32(-184f + 260f)))) - -931f);
    var_1 = _wgslsmith_f_op_f32(abs(var_0.x));
    var_1 = -369f;
    let var_2 = func_4(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(964f, -681f, var_0.x) - vec3<f32>(-201f, 700f, var_0.x))))));
    var var_3 = func_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-997f, var_0.x, var_0.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1482f, -155f) - vec3<f32>(var_0.x, var_0.x, var_0.x))))))).c.b.wy;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.b), firstTrailingBit(u_input.b)), ~min(firstTrailingBit(var_3.x), 1u)), reverseBits(reverseBits(var_2.e)), 1u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-694f, var_0.x, 1131f, var_0.x) * vec4<f32>(var_0.x, var_0.x, 1136f, var_0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-680f, var_0.x, 327f, 209f)))), vec4<f32>(var_0.x, 244f, var_0.x, var_0.x), !var_2.a.c)));
}

