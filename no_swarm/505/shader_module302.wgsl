struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = select(select(select(!select(vec2<bool>(arg_0.a.x, true), arg_0.a.xx, arg_0.a.zz), select(arg_0.a.xz, select(arg_0.a.xx, vec2<bool>(true, arg_0.a.x), vec2<bool>(arg_0.a.x, arg_0.c.b)), arg_0.a.yx), arg_0.a.xz), arg_0.a.xz, arg_0.c.b), vec2<bool>(false, !arg_0.a.x), select(arg_0.a.yy, vec2<bool>(true, select(true & arg_0.a.x, false, 1u <= arg_0.b)), vec2<bool>(true, !all(vec4<bool>(arg_0.a.x, arg_0.c.b, arg_0.a.x, arg_0.c.b)))));
    let var_1 = ~vec4<u32>(_wgslsmith_mod_u32(abs(arg_0.b), 1u) << (7517u % 32u), select(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 0u), vec3<u32>(arg_0.b, arg_0.b, u_input.b))), ~(~u_input.b), false), reverseBits(u_input.a.x) << (u_input.b % 32u), 4294967295u);
    var var_2 = -(~_wgslsmith_div_vec4_i32(-vec4<i32>(-61414i, 2147483647i, -2147483647i, -2147483647i), max(vec4<i32>(45469i, -21888i, 2147483647i, -52827i), vec4<i32>(-23647i, 2147483647i, 2147483647i, -28906i))) ^ select(vec4<i32>(1i, 1i, 1i, 1i), ~(vec4<i32>(2147483647i, 1i, -2147483647i, 28538i) >> (vec4<u32>(1u, 30920u, u_input.b, 50650u) % vec4<u32>(32u))), var_0.x));
    var var_3 = var_2.xxz;
    var_2 = select(-(select(vec4<i32>(var_2.x, var_2.x, 1i, 25260i), vec4<i32>(24262i, var_2.x, -1i, -2147483647i), !vec4<bool>(var_0.x, false, false, true)) >> (abs(~vec4<u32>(arg_0.b, 49090u, u_input.b, 4044u)) % vec4<u32>(32u))), -firstTrailingBit(firstLeadingBit(vec4<i32>(var_3.x, var_2.x, var_2.x, var_2.x)) << (~vec4<u32>(var_1.x, var_1.x, var_1.x, arg_0.b) % vec4<u32>(32u))), !(!vec4<bool>(true || var_0.x, true, true, true)));
    return var_3.x;
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = vec3<u32>(u_input.b, _wgslsmith_add_u32(47112u & (1u ^ u_input.b), u_input.a.x), u_input.b) | vec3<u32>(_wgslsmith_sub_u32(~(~arg_0.b), 4294967295u), ~abs(1u), 1u);
    var var_1 = !arg_0.c.b;
    let var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(-(~(-2147483647i)), -8738i, -36909i, ~(-1i)), _wgslsmith_add_vec4_i32(vec4<i32>(firstLeadingBit(0i), _wgslsmith_mult_i32(8786i, 37191i), -1i, -22328i) & vec4<i32>(2147483647i >> (u_input.b % 32u), 1i, func_3(Struct_2(vec3<bool>(true, arg_0.c.b, true), 0u, arg_0.c)), 1i), -vec4<i32>(1i, 1i, 1i, 1i)));
    var_1 = arg_0.a.x;
    var_1 = arg_0.c.b;
    return Struct_1(_wgslsmith_f_op_f32(arg_0.c.a - _wgslsmith_f_op_f32(arg_0.c.a + _wgslsmith_f_op_f32(arg_0.c.a * _wgslsmith_f_op_f32(ceil(-1868f))))), false);
}

fn func_1(arg_0: vec4<u32>) -> vec3<bool> {
    var var_0 = func_2(Struct_2(select(vec3<bool>(true, true, true), vec3<bool>(true, true, 1u >= arg_0.x), true), reverseBits(_wgslsmith_add_u32(u_input.b, u_input.b) | 1u), Struct_1(2035f, true || any(vec3<bool>(true, true, true)))));
    let var_1 = vec3<u32>(select(u_input.b & firstLeadingBit(arg_0.x), countOneBits(_wgslsmith_add_u32(84609u >> (u_input.a.x % 32u), _wgslsmith_dot_vec3_u32(arg_0.yxx, arg_0.zxz))), false), ~_wgslsmith_add_u32(arg_0.x & _wgslsmith_clamp_u32(1u, 39220u, u_input.b), 42755u), reverseBits(_wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(arg_0.zzw, vec3<u32>(arg_0.x, u_input.a.x, 19872u), arg_0.wxx), reverseBits(arg_0.zzx))));
    let var_2 = !(!vec3<bool>(all(!vec4<bool>(false, var_0.b, false, var_0.b)), true, true));
    var var_3 = Struct_2(!select(var_2, var_2, all(select(var_2.zy, vec2<bool>(false, var_2.x), var_2.x))), 1u, Struct_1(var_0.a, true));
    var_0 = func_2(Struct_2(vec3<bool>(!any(vec2<bool>(false, var_3.c.b)), select(!var_0.b, all(var_3.a), all(vec4<bool>(false, false, var_2.x, var_0.b))), var_2.x), 1701u, Struct_1(var_0.a, arg_0.x == ~var_1.x)));
    return var_3.a;
}

fn func_4(arg_0: u32, arg_1: bool) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1255f, _wgslsmith_f_op_f32(466f - -1000f))) + -2188f)), !(true | all(vec2<bool>(arg_1, true))));
    var var_1 = Struct_2(select(select(select(!vec3<bool>(arg_1, true, true), !vec3<bool>(true, false, arg_1), true), vec3<bool>(var_0.b, true, arg_1), vec3<bool>(!arg_1, !arg_1, all(vec3<bool>(true, true, arg_1)))), vec3<bool>(false, var_0.b, !any(vec4<bool>(true, var_0.b, var_0.b, false))), func_1(select(vec4<u32>(0u, 4294967295u, 35026u, arg_0), vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, u_input.a.x) >> (vec4<u32>(u_input.a.x, u_input.b, arg_0, u_input.a.x) % vec4<u32>(32u)), vec4<bool>(false, true, false, true)))), ((1u & reverseBits(u_input.b)) >> ((min(4294967295u, arg_0) >> (_wgslsmith_mod_u32(4294967295u, 4294967295u) % 32u)) % 32u)) ^ u_input.a.x, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), arg_1));
    let var_2 = true;
    let var_3 = Struct_2(!var_1.a, var_1.b, var_1.c);
    var_0 = Struct_1(var_1.c.a, arg_1);
    return var_3.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_4(~4294967295u, !all(func_1(vec4<u32>(u_input.a.x, u_input.a.x, 43592u, u_input.b))))), any(vec3<bool>(true, true, true)) & true);
    var var_1 = 0u;
    let var_2 = _wgslsmith_clamp_i32((i32(-1i) * -1i) >> (select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 39901u, 4294967295u, u_input.b), vec4<u32>(0u, u_input.b, u_input.b, u_input.a.x)), _wgslsmith_add_u32(u_input.b, u_input.a.x), var_0.b) % 32u), ~1i, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(27919i, 34576i), 1i, ~(-60023i), func_3(Struct_2(vec3<bool>(var_0.b, true, var_0.b), 0u, Struct_1(var_0.a, var_0.b)))), -vec4<i32>(-1674i, 1i, -1i, -2147483647i))) | ~32023i;
    var_1 = _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~firstTrailingBit(select(vec4<u32>(1u, 15765u, 0u, 65843u), vec4<u32>(u_input.b, 93194u, u_input.b, 29578u), var_0.b)), vec4<u32>(4294967295u, firstTrailingBit(_wgslsmith_add_u32(u_input.b, 21115u)), u_input.b, u_input.a.x)), u_input.b);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_0.a)))), _wgslsmith_f_op_f32(sign(545f)))));
    let var_4 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_3)));
    var_1 = max(~0u, ~select(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b, u_input.b), u_input.b), ~(~u_input.a.x), func_1(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u), vec4<u32>(4294967295u, 1u, 1u, u_input.b))).x));
    var var_5 = Struct_1(_wgslsmith_f_op_f32(-var_4.x), all(!func_1(firstTrailingBit(vec4<u32>(0u, 12433u, 81846u, 4294967295u)))));
    var_5 = func_2(Struct_2(func_1(~(vec4<u32>(84300u, 47843u, u_input.b, u_input.a.x) >> (vec4<u32>(55718u, 1u, u_input.a.x, 7297u) % vec4<u32>(32u)))), ~(~abs(54810u)), func_2(Struct_2(!vec3<bool>(false, var_0.b, true), u_input.b, func_2(Struct_2(vec3<bool>(true, false, false), 28341u, Struct_1(392f, var_5.b)))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_f32(-1073f + -717f), reverseBits(firstLeadingBit(vec3<u32>(1u, select(u_input.b, u_input.a.x, true), ~0u))), 374f);
}

