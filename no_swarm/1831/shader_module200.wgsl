struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 3>;

var<private> global1: f32 = 448f;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> u32 {
    var var_0 = 61948i | ~(_wgslsmith_sub_i32(0i, abs(28643i)) << (~_wgslsmith_dot_vec2_u32(arg_1.a.xy, arg_1.a.xy) % 32u));
    var_0 = firstTrailingBit(abs(-max(arg_1.b.a, 11082i))) << (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.c.x, ~4294967295u, 4294967295u, 4294967295u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 23197u), ~vec4<u32>(1u, u_input.c.x, arg_1.a.x, 42388u), ~vec4<u32>(48500u, arg_1.a.x, u_input.c.x, 10826u))) % 32u);
    let var_1 = u_input.c.x;
    return ~(~var_1);
}

fn func_2(arg_0: f32) -> vec3<u32> {
    global0 = array<vec3<i32>, 3>();
    global0 = array<vec3<i32>, 3>();
    global1 = _wgslsmith_f_op_f32(-601f - _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(arg_0 * arg_0)));
    var var_0 = func_3(_wgslsmith_f_op_f32(floor(-512f)), Struct_3(~vec3<u32>(u_input.c.x, u_input.c.x, ~4294967295u), Struct_2(_wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.a, -5626i), -1i), vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0)))));
    global1 = arg_0;
    return vec3<u32>(1u, 4294967295u, ~max(u_input.c.x, ~1u) & ~(~4294967295u));
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: bool, arg_3: vec3<u32>) -> f32 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-554f, -275f))))));
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1070f + -885f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-649f, _wgslsmith_f_op_f32(548f * 1964f), arg_3.x < 0u)))));
    var var_1 = vec2<bool>(true, any(select(vec3<bool>(all(vec2<bool>(true, arg_2)), false | arg_2, !arg_2), select(vec3<bool>(arg_2, true, false), select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(true, false, arg_2), arg_2), true), true)));
    var var_2 = Struct_2(u_input.a >> (4294967295u % 32u), var_0);
    let var_3 = ~((-abs(-2147483647i) & ~_wgslsmith_add_i32(arg_0, -15091i)) & (2147483647i << (u_input.c.x % 32u)));
    return -351f;
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = -1362f;
    let var_1 = vec3<bool>(true, (_wgslsmith_div_u32(min(arg_0, u_input.c.x), abs(u_input.c.x)) < u_input.c.x) | false, all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true)) && any(vec4<bool>(true, select(true, false, false), true, true)));
    var var_2 = _wgslsmith_f_op_f32(func_4(i32(-1i) * -firstLeadingBit(_wgslsmith_div_i32(-26703i, u_input.a)), countOneBits(global0[_wgslsmith_index_u32(1u, 3u)]), false, func_2(_wgslsmith_f_op_f32(-1003f - _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(495f * 454f))))));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1085f - _wgslsmith_f_op_f32(floor(-662f))) + -2273f);
    global0 = array<vec3<i32>, 3>();
    return _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(select(9889u, 16418u, true), u_input.c.x) >> ((u_input.c.zx & _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c.yz)) % vec2<u32>(32u))), u_input.c.yy ^ vec2<u32>(u_input.c.x, _wgslsmith_mod_u32(~2390u, ~arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(u_input.c, Struct_2(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.a, u_input.b, u_input.b) | vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i), ~vec4<i32>(u_input.a, 0i, u_input.b, u_input.a)), ~u_input.b), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(167f, 1488f)))))));
    let var_1 = select(firstLeadingBit(~_wgslsmith_mult_vec2_u32(u_input.c.zz, vec2<u32>(u_input.c.x, var_0.a.x))), max(~u_input.c.xx ^ ~u_input.c.zz, select(~var_0.a.zx, vec2<u32>(var_0.a.x, var_0.a.x), vec2<bool>(true, true))), vec2<bool>(true, true)) >> (vec2<u32>(1u, var_0.a.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, 0u, 4294967295u) | vec4<u32>(var_0.a.x, u_input.c.x, var_0.a.x, 0u), vec4<u32>(1u, 23535u, u_input.c.x, u_input.c.x) & vec4<u32>(u_input.c.x, 4294967295u, 0u, 28653u)) % 32u)) % vec2<u32>(32u));
    let var_2 = _wgslsmith_mult_u32(select(var_0.a.x, 0u, true), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, firstTrailingBit(47345u), 1u), var_0.a), reverseBits(vec3<u32>(1u, _wgslsmith_div_u32(0u, 49953u), _wgslsmith_mod_u32(7691u, u_input.c.x)))));
    global1 = var_0.b.b.x;
    var_0 = Struct_3(vec3<u32>(abs(~4294967295u) ^ var_0.a.x, 58412u, ~var_0.a.x), Struct_2(~(~_wgslsmith_sub_i32(u_input.b, 8810i)), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b.b.x))), var_0.b.b.x)));
    let var_3 = ~((vec3<u32>(u_input.c.x, ~39606u, func_1(var_2)) << (firstLeadingBit(u_input.c) % vec3<u32>(32u))) << ((var_0.a >> (vec3<u32>(~48318u, ~var_2, ~u_input.c.x) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_4 = var_0.b;
    let var_5 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(var_3);
}

