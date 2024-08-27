struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: bool, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = Struct_1(0u);
    var var_1 = abs(firstTrailingBit(vec4<i32>(countOneBits(arg_1.x), _wgslsmith_clamp_i32(arg_1.x >> (64469u % 32u), ~(-41188i), 33838i), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(72863i, -1i, 1i, -2147483647i), vec4<i32>(20818i, 14065i, -51530i, u_input.c.x)), countOneBits(-44762i), -8639i), 1i)));
    var var_2 = !arg_3.b.zy;
    var var_3 = abs(select(select(var_1.zwz, ~(vec3<i32>(-2147483647i, arg_1.x, 32320i) << (vec3<u32>(24095u, 43022u, var_0.a) % vec3<u32>(32u))), arg_3.b), _wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(-7246i, 1i, var_1.x)) | (var_1.wxx ^ vec3<i32>(-7970i, var_1.x, arg_1.x)), select(vec3<i32>(2147483647i, 0i, 21921i), -arg_1, true), arg_1), var_2.x | false));
    return select(vec3<bool>(any(select(vec4<bool>(false, false, arg_2, arg_3.b.x), !vec4<bool>(arg_2, false, arg_2, arg_3.b.x), vec4<bool>(true, true, true, true))), arg_2 & arg_2, all(select(select(vec4<bool>(true, true, arg_3.b.x, false), vec4<bool>(var_2.x, true, true, arg_2), vec4<bool>(var_2.x, var_2.x, true, false)), !vec4<bool>(var_2.x, var_2.x, arg_3.b.x, arg_3.b.x), any(vec2<bool>(arg_3.b.x, false))))), vec3<bool>(var_1.x >= ~_wgslsmith_add_i32(var_1.x, 52914i), false, true), !any(select(vec2<bool>(false, var_2.x), arg_3.b.zy, var_2.x)) || false);
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: i32, arg_3: f32) -> vec3<bool> {
    var var_0 = Struct_2(Struct_1(906u), !(!func_3(_wgslsmith_f_op_f32(682f * arg_3), ~vec3<i32>(arg_2, 2147483647i, arg_2), all(vec3<bool>(false, false, true)), Struct_2(Struct_1(arg_1), vec3<bool>(true, true, true)))));
    return vec3<bool>(!all(!vec3<bool>(var_0.b.x, false, false)), true, any(!select(select(vec4<bool>(false, true, true, var_0.b.x), vec4<bool>(var_0.b.x, true, false, false), true), vec4<bool>(var_0.b.x, var_0.b.x, false, false), !vec4<bool>(var_0.b.x, false, var_0.b.x, false))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2) -> u32 {
    var var_0 = Struct_1(~arg_1.a.a ^ ~(~_wgslsmith_sub_u32(0u, arg_1.a.a)));
    return 4294967295u;
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    let var_0 = firstLeadingBit(_wgslsmith_div_vec3_u32(~(vec3<u32>(arg_1, arg_1, arg_1) << (vec3<u32>(19286u, arg_1, arg_3.a.a) % vec3<u32>(32u))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(24234u, 0u, 0u), vec3<u32>(arg_1, 22371u, arg_3.a.a)))) << (vec3<u32>(~1u, _wgslsmith_mult_u32(~arg_1, arg_2.a), 4573u) % vec3<u32>(32u));
    let var_1 = Struct_2(arg_2, vec3<bool>(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(abs(arg_0))) <= -810f, all(select(vec4<bool>(false, false, arg_3.b.x, true), select(vec4<bool>(true, true, true, arg_3.b.x), vec4<bool>(arg_3.b.x, false, true, arg_3.b.x), arg_3.b.x), 0u < arg_2.a)), arg_0 == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * -919f) * arg_0)));
    var var_2 = Struct_2(Struct_1(arg_3.a.a), vec3<bool>(all(select(!vec4<bool>(true, var_1.b.x, false, var_1.b.x), !vec4<bool>(arg_3.b.x, false, true, false), !vec4<bool>(var_1.b.x, true, true, true))), var_1.b.x, false));
    var_2 = Struct_2(Struct_1(~(_wgslsmith_mod_u32(var_0.x, 4575u) | arg_1)), func_3(arg_0, _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(2147483647i, -1i), countOneBits(2147483647i), ~6987i), abs(countOneBits(vec3<i32>(u_input.a, u_input.b, 36540i)))), true, arg_3));
    var var_3 = func_2(var_0 >> (~var_0 % vec3<u32>(32u)), countOneBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(38212u, var_1.a.a) ^ vec2<u32>(4294967295u, 0u), ~vec2<u32>(1u, 4294967295u))), i32(-1i) * -1i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0)))))))).x;
    return Struct_1(var_0.x);
}

fn func_1(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec4<f32>) -> vec3<bool> {
    let var_0 = func_5(367f, _wgslsmith_dot_vec2_u32(vec2<u32>(20411u, 53958u), vec2<u32>(min(~1u, arg_2.a), _wgslsmith_mult_u32(select(45130u, 4294967295u, arg_0), ~arg_2.a))), Struct_1(func_4(select(func_2(vec3<u32>(arg_2.a, 4294967295u, arg_2.a), 36083u, 37245i, arg_3.x), vec3<bool>(true, true, true), select(vec3<bool>(arg_1.x, arg_0, arg_0), vec3<bool>(arg_0, arg_1.x, arg_1.x), vec3<bool>(arg_0, arg_1.x, false))), Struct_2(Struct_1(arg_2.a), func_2(vec3<u32>(4294967295u, arg_2.a, 0u), 0u, 41130i, arg_3.x)))), Struct_2(Struct_1(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, arg_2.a, 44023u), 22155u)), func_2(abs(vec3<u32>(arg_2.a, 0u, 27352u)) >> (vec3<u32>(119453u, arg_2.a, arg_2.a) % vec3<u32>(32u)), arg_2.a, u_input.b, 450f)));
    var var_1 = Struct_2(Struct_1(_wgslsmith_add_u32(arg_2.a, ~36577u)), vec3<bool>(false, arg_0, true));
    var_1 = Struct_2(func_5(arg_3.x, arg_2.a, func_5(arg_3.x, var_0.a, Struct_1(_wgslsmith_mult_u32(var_1.a.a, 4294967295u)), Struct_2(func_5(arg_3.x, var_1.a.a, Struct_1(arg_2.a), Struct_2(arg_2, var_1.b)), var_1.b)), Struct_2(arg_2, !select(vec3<bool>(arg_0, arg_0, arg_1.x), vec3<bool>(arg_0, true, var_1.b.x), arg_1.x))), var_1.b);
    var_1 = Struct_2(Struct_1(func_5(1f, ~var_1.a.a, Struct_1(select(118068u, 0u, true)), Struct_2(var_0, var_1.b)).a), func_2(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_add_u32(var_1.a.a, 24886u), _wgslsmith_add_u32(var_1.a.a, var_0.a), arg_2.a), vec3<u32>(~var_0.a, 26165u, arg_2.a & 22774u)), firstTrailingBit(arg_2.a), -37061i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_3.x, arg_3.x), _wgslsmith_f_op_f32(floor(arg_3.x)))) - _wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(-arg_3.x)))));
    var_1 = Struct_2(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_3.x)))), countOneBits(1u), arg_2, Struct_2(func_5(_wgslsmith_f_op_f32(f32(-1f) * -220f), func_4(vec3<bool>(var_1.b.x, arg_0, true), Struct_2(arg_2, var_1.b)), func_5(-1350f, 22753u, Struct_1(arg_2.a), Struct_2(Struct_1(arg_2.a), var_1.b)), Struct_2(Struct_1(4294967295u), vec3<bool>(arg_0, true, arg_0))), var_1.b)), func_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1280f), arg_3.x)), _wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.d, u_input.d, -50707i), -min(vec3<i32>(u_input.a, -2147483647i, -1i), vec3<i32>(u_input.b, u_input.b, u_input.b))), any(func_2(vec3<u32>(21699u, 158u, var_0.a), min(var_1.a.a, 4294967295u), _wgslsmith_add_i32(u_input.b, u_input.c.x), arg_3.x)), Struct_2(var_0, func_3(-1000f, _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, -26856i, u_input.b), vec3<i32>(u_input.b, u_input.b, 39899i)), true, Struct_2(Struct_1(57204u), var_1.b)))));
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2147483647i;
    var_0 = u_input.d;
    var var_1 = Struct_2(Struct_1(51837u), select(func_1(true, vec2<bool>(true, true), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(4294967295u, 53603u, 33067u))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1172f, -1010f, 312f, 2382f))))), vec3<bool>(true, !(u_input.b <= u_input.b), any(vec3<bool>(true, true, true))), !func_2(select(vec3<u32>(5045u, 1u, 1u), vec3<u32>(15434u, 84631u, 99668u), false), 1u, u_input.c.x, -242f).x));
    var var_2 = ~var_1.a.a ^ _wgslsmith_dot_vec2_u32(~firstLeadingBit(select(vec2<u32>(var_1.a.a, var_1.a.a), vec2<u32>(1709u, var_1.a.a), var_1.b.x)), firstTrailingBit(~vec2<u32>(var_1.a.a, 0u)) ^ (vec2<u32>(35323u, 52951u) | (vec2<u32>(var_1.a.a, var_1.a.a) ^ vec2<u32>(var_1.a.a, var_1.a.a))));
    var var_3 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~23500u, max(var_1.a.a, ~14473u)), ~(~var_1.a.a));
}

