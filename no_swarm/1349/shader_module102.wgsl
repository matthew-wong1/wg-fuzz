struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec4<i32>) -> u32 {
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.x, -67221i, _wgslsmith_dot_vec2_i32(vec2<i32>(-59831i, -17753i), countOneBits(min(u_input.c, vec2<i32>(u_input.c.x, arg_3.x))))), -vec3<i32>(arg_3.x, 12643i, _wgslsmith_mod_i32(reverseBits(1i), _wgslsmith_mod_i32(u_input.c.x, -18760i))));
    var var_1 = vec3<i32>(var_0, countOneBits(2147483647i), firstLeadingBit(-1i));
    let var_2 = 1i & firstTrailingBit(-13727i);
    var var_3 = Struct_3(2815u, Struct_2(Struct_1(_wgslsmith_mult_u32(42576u, ~u_input.a.x), _wgslsmith_f_op_f32(-1000f + arg_1.b)), !arg_0.b, arg_0.c), vec4<f32>(440f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-182f))))), _wgslsmith_f_op_f32(-1316f * arg_0.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -315f)));
    let var_4 = Struct_3(0u << (var_3.b.a.a % 32u), arg_0, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1079f, arg_2.x, _wgslsmith_f_op_f32(-arg_0.a.b), -816f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_0.c.x, 256f, -411f) + _wgslsmith_f_op_vec4_f32(-var_3.c))))), _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(floor(-228f))));
    return arg_0.a.a;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: bool) -> u32 {
    let var_0 = Struct_3(arg_0 | func_3(Struct_2(Struct_1(arg_0, arg_1), vec2<bool>(arg_2, arg_2), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -665f))), Struct_1(~u_input.a.x, _wgslsmith_f_op_f32(min(-1005f, 574f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, 186f, arg_1, arg_1))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -870f, -524f, arg_1))), reverseBits(~u_input.b)), Struct_2(Struct_1(_wgslsmith_mult_u32(~7438u, ~u_input.a.x), _wgslsmith_f_op_f32(-arg_1)), vec2<bool>(!(!arg_2), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-661f, arg_1)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) * vec2<f32>(arg_1, 1298f))))), vec4<f32>(-489f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1000f)))), arg_1, _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -729f) + arg_1)));
    var var_1 = -abs(_wgslsmith_dot_vec2_i32(u_input.b.xx, u_input.c) ^ (u_input.b.x ^ 1i)) ^ (u_input.b.x << (0u % 32u));
    var_1 = u_input.c.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.a.a, _wgslsmith_mult_u32(u_input.a.x << (arg_0 % 32u), arg_0)), countOneBits(vec2<u32>(~70770u, min(19237u, 60781u)))) % 32u);
    var var_2 = _wgslsmith_clamp_u32(var_0.a, var_0.b.a.a, 77480u);
    let var_3 = any(vec2<bool>(true, select(any(var_0.b.b), _wgslsmith_div_i32(27194i, -2147483647i) < abs(u_input.c.x), arg_2)));
    return 68332u << (_wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_sub_u32(var_0.a, 0u), reverseBits(~u_input.a.x)), vec2<u32>(arg_0, u_input.a.x)) % 32u);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<i32>) -> f32 {
    let var_0 = Struct_2(Struct_1(u_input.a.x, _wgslsmith_f_op_f32(trunc(300f))), select(vec2<bool>(true, true), arg_0.yx, false), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2248f, 172f, arg_0.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2058f - -644f) * -1831f)), -1219f));
    var var_1 = firstTrailingBit(vec3<u32>(1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a.x, 89015u)), vec2<u32>(var_0.a.a, u_input.a.x) ^ vec2<u32>(1u, 22288u)), var_0.a.a), _wgslsmith_mod_u32(5839u, u_input.a.x)));
    let var_2 = _wgslsmith_add_vec2_u32(u_input.a.zw, _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(min(vec2<u32>(21762u, 3668u), var_1.xx), ~var_1.xz, vec2<u32>(43924u, 0u)), var_1.zy)) ^ vec2<u32>(4294967295u, abs(_wgslsmith_add_u32(var_0.a.a, _wgslsmith_mod_u32(0u, u_input.a.x))));
    var var_3 = Struct_3(~abs(1u), var_0, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(max(var_0.c.x, var_0.a.b)), var_0.a.b, _wgslsmith_f_op_f32(max(var_0.c.x, 278f)), _wgslsmith_f_op_f32(-var_0.c.x)))))), -455f);
    var_1 = vec3<u32>(36096u, func_2(~_wgslsmith_mod_u32(0u, var_0.a.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_0.a.b, var_0.a.b)))), !(!var_0.b.x)) & (_wgslsmith_mult_u32(countOneBits(0u), select(var_2.x, var_2.x, arg_0.x)) ^ 1u), ~1u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(248f + -580f)))) - var_3.b.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1373f, 136f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-2685f, -925f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, true), reverseBits(vec2<i32>(0i, 2147483647i)))))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(754f, _wgslsmith_f_op_f32(f32(-1f) * -628f))) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(172f, -406f)))), 1f));
    let var_1 = Struct_1(countOneBits(u_input.a.x), 1210f);
    var var_2 = vec2<f32>(387f, 204f);
    var_0 = ~28191i != abs(_wgslsmith_add_i32(u_input.c.x, reverseBits(~u_input.c.x)));
    var_0 = var_1.a > ~var_1.a;
    let var_3 = vec3<i32>(38144i, abs(abs(5029i)), reverseBits(~_wgslsmith_mod_i32(-70684i, ~0i)));
    var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-667f, _wgslsmith_f_op_f32(-var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(64190u, 1u), vec3<u32>(~(~_wgslsmith_add_u32(var_1.a, 17024u)), ~1u, ~(~1510u)));
}

