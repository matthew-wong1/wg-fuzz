struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-321f, 332f)), 1028f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(545f + 1000f) + _wgslsmith_f_op_f32(select(-697f, -630f, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1535f)))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1077f - _wgslsmith_f_op_f32(-1276f * _wgslsmith_f_op_f32(f32(-1f) * -1299f))))), _wgslsmith_f_op_f32(f32(-1f) * -1329f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-463f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2492f), _wgslsmith_f_op_f32(f32(-1f) * -1717f)) * 1f));
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1064f, -801f, var_0.x, -337f) * vec4<f32>(-259f, 556f, -895f, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1404f, -1115f, -2282f, 599f) + vec4<f32>(var_0.x, 1201f, var_0.x, var_0.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1117f, var_0.x, var_0.x, 352f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-800f, var_0.x, 1000f, 2026f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1860f, -769f, 961f, 972f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1544f, var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(-2307f, var_0.x))), !select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true), false), true)));
    var var_1 = 17945u;
    var var_2 = vec2<bool>(any(vec2<bool>(true, 4294967295u <= u_input.c.x)), true);
    return ~u_input.c.x;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(-28595i, ~_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.a, u_input.b.x, u_input.b.x, u_input.a) ^ vec4<i32>(-8984i, u_input.b.x, u_input.b.x, 78096i)), _wgslsmith_f_op_f32(step(-544f, 976f)), 67147u << (~u_input.c.x % 32u));
    let var_1 = var_0;
    let var_2 = _wgslsmith_sub_u32(~u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(~firstLeadingBit(0u), firstLeadingBit(func_3())), ~(~(~vec2<u32>(var_0.d, var_1.d)))));
    let var_3 = Struct_1(_wgslsmith_div_i32(abs(var_0.a), -countOneBits(var_1.a)), max(29401i, u_input.a), 552f, 33858u);
    var var_4 = Struct_1(var_1.a, -37632i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.c, _wgslsmith_f_op_f32(max(-1386f, _wgslsmith_f_op_f32(f32(-1f) * -167f))))), ~15080u);
    return Struct_1(~_wgslsmith_div_i32(_wgslsmith_clamp_i32(var_4.a, var_1.a, var_3.a), _wgslsmith_mod_i32(14878i << (0u % 32u), var_1.b)), var_1.b, var_1.c, 24227u);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<i32>, arg_3: f32) -> Struct_1 {
    var var_0 = 1i;
    var_0 = _wgslsmith_mult_i32(reverseBits(-_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, u_input.b.x, arg_2.x), u_input.b.zzy)), ~(-u_input.b.x >> (~1u % 32u))) ^ (arg_0.a & ~(~u_input.a));
    var_0 = 61044i;
    var_0 = u_input.a;
    var var_1 = _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec2_u32(~(~u_input.c.zy), select(u_input.c.yy, ~u_input.c.yy, vec2<bool>(true, true))));
    return func_2();
}

fn func_1() -> f32 {
    var var_0 = vec4<f32>(-653f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2245f)))), 610f, _wgslsmith_div_f32(1237f, 1f));
    let var_1 = Struct_1(u_input.b.x, u_input.b.x, _wgslsmith_f_op_f32(685f - -556f), u_input.c.x);
    var var_2 = func_4(func_2(), vec3<f32>(_wgslsmith_f_op_f32(abs(var_1.c)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(301f, _wgslsmith_f_op_f32(228f - var_1.c))), _wgslsmith_f_op_f32(f32(-1f) * -1095f), true)), var_1.c), vec2<i32>(~1i, countOneBits(~_wgslsmith_clamp_i32(var_1.a, u_input.a, 0i))), -247f);
    let var_3 = any(select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec4<bool>(false, false, false, false)), true), vec3<bool>(true, true, true))) | !(!(!(u_input.a == 8130i)));
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.c), -1311f, _wgslsmith_f_op_f32(select(var_2.c, 1821f, false)), _wgslsmith_f_op_f32(var_1.c - var_0.x))) + vec4<f32>(-520f, var_1.c, var_0.x, _wgslsmith_f_op_f32(var_1.c + var_1.c)))));
    return func_4(func_4(var_1, var_0.yxz, vec2<i32>(func_2().b, var_1.a), -883f), vec3<f32>(-825f, var_0.x, _wgslsmith_f_op_f32(min(-327f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2180f) * _wgslsmith_f_op_f32(f32(-1f) * -797f))))), -vec2<i32>(1582i, 0i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.c * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_f32(var_1.c * var_0.x)))))).c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(228f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-532f * -1865f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-456f - 1147f) - -466f))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(func_1()));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1364f, _wgslsmith_f_op_f32(-650f + _wgslsmith_f_op_f32(f32(-1f) * -2240f)))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-152f, _wgslsmith_f_op_f32(f32(-1f) * -454f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1143f))))) - 1000f);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(248f, -1000f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -199f))), 1f)) + func_2().c);
    var var_1 = vec2<bool>(false | !any(vec2<bool>(true, true)), true);
    var var_2 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(4294967295u, 1u), u_input.c, ~(~vec4<u32>(u_input.c.x, 4294967295u, countOneBits(4294967295u), var_2.d)));
}

