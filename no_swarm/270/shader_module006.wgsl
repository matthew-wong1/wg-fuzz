struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct Struct_5 {
    a: bool,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2) -> Struct_5 {
    var var_0 = Struct_3(4294967295u, arg_1, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(arg_1.a.a, _wgslsmith_f_op_f32(trunc(225f)), any(vec4<bool>(true, false, true, true)))))) <= _wgslsmith_f_op_f32(arg_1.a.a + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1.a.a, arg_1.a.a)))));
    var var_1 = arg_0;
    var var_2 = arg_0;
    var_1 = _wgslsmith_clamp_vec4_i32(arg_0, vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_clamp_i32(var_2.x, -10972i, var_1.x), 1i, reverseBits(var_2.x), 0i), arg_0);
    let var_3 = ~(_wgslsmith_mod_u32(arg_1.a.c, 4294967295u) & var_0.a);
    return Struct_5(reverseBits(1i) == (-(2147483647i >> (var_3 % 32u)) & ~var_0.b.a.d.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-864f, var_0.b.a.a, -630f, arg_1.a.a) - vec4<f32>(-343f, var_0.b.a.a, -131f, 1951f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.a, 335f, 1278f, 1932f))))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: Struct_5) -> Struct_5 {
    var var_0 = max(arg_1, abs(reverseBits(vec3<i32>(arg_1.x, arg_1.x, arg_1.x)))) | -(~_wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.x, 1i, arg_1.x), abs(vec3<i32>(-68994i, -1i, arg_1.x))));
    var_0 = arg_1;
    var_0 = -vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(var_0.x, arg_1.x), arg_1.x), 20801i, -1i) >> (vec3<u32>(27848u, ~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), u_input.a.x) % vec3<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.x));
    var var_2 = _wgslsmith_add_u32(50372u, ~(~6623u));
    return Struct_5(arg_2.x, arg_3.b);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(select(-312f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(arg_2.a))))), _wgslsmith_f_op_f32(arg_2.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))))), true));
    var var_1 = ~vec3<u32>(arg_2.c, u_input.a.x, arg_2.b.x);
    var_1 = ~(~_wgslsmith_mod_vec3_u32(~vec3<u32>(26972u, 60905u, arg_2.b.x), select(vec3<u32>(arg_2.b.x, var_1.x, arg_1.b), vec3<u32>(arg_1.a.a, arg_1.b, 0u), arg_0.x))) << (firstLeadingBit(vec3<u32>(var_1.x, 0u, 4294967295u)) % vec3<u32>(32u));
    let var_2 = arg_2;
    var var_3 = func_3(!vec4<bool>(_wgslsmith_f_op_f32(trunc(arg_1.a.b.a.a)) != _wgslsmith_f_op_f32(-1287f + var_0), all(vec2<bool>(arg_1.a.c, false)), true, all(arg_0) && true), ~_wgslsmith_mult_vec3_i32(vec3<i32>(abs(var_2.d.x), 1i, i32(-1i) * -34279i), vec3<i32>(2147483647i, 2147483647i, -10317i) & (vec3<i32>(var_2.d.x, -8355i, -2147483647i) | vec3<i32>(var_2.d.x, var_2.d.x, var_2.d.x))), !select(select(select(vec4<bool>(arg_0.x, false, arg_1.a.c, arg_1.a.c), vec4<bool>(arg_1.a.c, arg_1.a.c, false, false), vec4<bool>(arg_0.x, arg_1.a.c, true, arg_0.x)), !vec4<bool>(arg_1.a.c, arg_1.a.c, arg_0.x, false), !vec4<bool>(true, true, arg_1.a.c, arg_1.a.c)), !vec4<bool>(arg_1.a.c, true, true, arg_0.x), !arg_1.a.c), func_2(vec4<i32>(arg_2.d.x >> (arg_1.b % 32u), arg_1.a.b.a.d.x & 2147483647i, arg_1.a.b.a.d.x, i32(-1i) * -3477i) >> (~vec4<u32>(var_1.x, u_input.a.x, 56821u, 4294967295u) % vec4<u32>(32u)), Struct_2(arg_1.a.b.a)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var_0 = _wgslsmith_mod_u32(4294967295u, ~u_input.a.x & u_input.a.x);
    var_0 = 1u;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -286f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, true), Struct_4(Struct_3(4294967295u, Struct_2(Struct_1(-279f, vec2<u32>(u_input.a.x, u_input.a.x), 11082u, vec2<i32>(2147483647i, 2147483647i))), false), ~4294967295u), Struct_1(_wgslsmith_f_op_f32(-2100f - 456f), ~vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_div_u32(u_input.a.x, 0u), -vec2<i32>(-57353i, 0i)))), -535f)));
    var var_2 = var_1.x;
    let var_3 = func_3(vec4<bool>(any(vec3<bool>(true, true, true)) || true, !any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), !((4294967295u << (u_input.a.x % 32u)) == 0u), true), -(~vec3<i32>(-26880i, -42831i, ~1i)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(false, true, false, true), true), Struct_5(true, func_3(vec4<bool>(all(vec2<bool>(true, true)), func_3(vec4<bool>(false, false, false, true), vec3<i32>(0i, 14616i, -22287i), vec4<bool>(true, false, false, true), Struct_5(true, vec4<f32>(869f, var_1.x, var_1.x, var_1.x))).a, 1u > u_input.a.x, true), firstTrailingBit(vec3<i32>(1i, 1i, 1i)), vec4<bool>(true, true, true, true), Struct_5(select(false, true, false), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, -1280f, var_1.x) + vec4<f32>(498f, -899f, -463f, 606f)))).b));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_vec3_i32(min(vec3<i32>(0i, 12452i, -37395i), firstTrailingBit(vec3<i32>(-1i, 35962i, 24865i))), vec3<i32>(1i, abs(-1i), _wgslsmith_mod_i32(12494i, -51599i)), vec3<i32>(1i, 1i, 1i)), firstTrailingBit(~(u_input.a.x & u_input.a.x) | 4264u), vec4<i32>(-79342i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(48023i, -66462i, 2147483647i, 54042i), vec4<i32>(-29931i, 0i, 48390i, -2147483647i)) >> (~u_input.a.x % 32u), _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(32223i, 1980i), 1i), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-46108i, 0i), vec2<i32>(68610i, 7751i)))), 6604i), ~59836u);
}

