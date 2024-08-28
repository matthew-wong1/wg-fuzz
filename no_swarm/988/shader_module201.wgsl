struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec2<i32>) -> i32 {
    let var_0 = !(!vec3<bool>(all(vec3<bool>(true, true, true)), true, true));
    var var_1 = 1231f;
    var_1 = _wgslsmith_f_op_f32(step(-464f, 518f));
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -122f))));
    var var_2 = false;
    return ~0i;
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_sub_i32(~((-1i ^ u_input.b.x) ^ (u_input.b.x >> (4294967295u % 32u))), 0i) & _wgslsmith_mod_i32(max(-13419i, -u_input.b.x), _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.b.x, firstTrailingBit(1i)), u_input.b.x));
    var var_1 = vec4<i32>(-4510i, _wgslsmith_mult_i32(_wgslsmith_add_i32(func_3(vec2<i32>(40150i, u_input.b.x)), abs(_wgslsmith_sub_i32(1i, 2147483647i))), 59175i), -10254i, func_3(u_input.b.yz));
    let var_2 = ~vec3<u32>(4294967295u, firstTrailingBit(~1u), u_input.a.x & u_input.a.x);
    var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(-abs(var_1.x), var_1.x, firstLeadingBit(0i), max(11536i, -53081i) << (abs(u_input.a.x) % 32u)), vec4<i32>(_wgslsmith_clamp_i32(-1i, u_input.b.x, -2147483647i), var_1.x, ~2147483647i, u_input.b.x | -15873i) & reverseBits(abs(vec4<i32>(52742i, var_1.x, u_input.b.x, var_1.x)))) ^ vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(var_1.xyx & var_1.wzz, ~u_input.b), vec3<i32>(-var_1.x, ~2767i, -u_input.b.x)), abs(~21670i), firstLeadingBit(1i), 0i);
    var var_3 = Struct_1(_wgslsmith_add_i32(0i, 25913i), _wgslsmith_add_vec4_i32(vec4<i32>(select(max(32187i, 18446i), firstTrailingBit(var_1.x), true), u_input.b.x | _wgslsmith_add_i32(var_1.x, -29156i), var_1.x, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, var_1.x, var_1.x, 2147483647i), vec4<i32>(-1i, -1i, 0i, u_input.b.x)), select(vec4<i32>(50526i, var_1.x, -24330i, var_1.x), vec4<i32>(u_input.b.x, u_input.b.x, 0i, var_1.x), false))), vec4<i32>(-var_1.x, ~(var_1.x ^ -2147483647i), 35933i, u_input.b.x)), ~(select(_wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(32366u, u_input.a.x)), vec2<u32>(1u, u_input.a.x) << (u_input.a % vec2<u32>(32u)), select(vec2<bool>(false, false), vec2<bool>(true, true), true)) ^ _wgslsmith_div_vec2_u32(vec2<u32>(0u, 65042u), vec2<u32>(var_2.x, u_input.a.x))), select(var_2, _wgslsmith_mod_vec3_u32(var_2, max(vec3<u32>(4294967295u, 0u, 91u), var_2)), !vec3<bool>(true, any(vec4<bool>(false, true, true, false)), any(vec2<bool>(false, true)))), min(vec2<u32>(4294967295u, 4294967295u), ~var_2.xx >> ((firstTrailingBit(vec2<u32>(var_2.x, var_2.x)) << (~u_input.a % vec2<u32>(32u))) % vec2<u32>(32u))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(417f)))))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: i32) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = arg_1;
    var var_2 = (reverseBits(vec2<i32>(-13884i, firstTrailingBit(22087i))) | vec2<i32>(func_3(u_input.b.yz), func_3(_wgslsmith_add_vec2_i32(vec2<i32>(arg_1.a, arg_1.a), vec2<i32>(var_1.a, -50071i))))) << (~firstLeadingBit(select(var_1.e, vec2<u32>(var_1.c.x, var_1.e.x), vec2<bool>(true, true))) % vec2<u32>(32u));
    let var_3 = arg_1.d.zz;
    let var_4 = _wgslsmith_div_u32(var_3.x | u_input.a.x, 1u);
    return Struct_1(-(~(-1i)), -var_0.b, vec2<u32>(1u, 0u), var_1.d, vec2<u32>(firstTrailingBit(~(~var_3.x)), _wgslsmith_sub_u32(u_input.a.x, ~var_1.c.x)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: vec2<bool>) -> Struct_1 {
    return func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(ceil(892f))))), Struct_1(-_wgslsmith_div_i32(firstTrailingBit(arg_0.x), -2147483647i), vec4<i32>(arg_0.x, arg_0.x, _wgslsmith_sub_i32(-10011i, countOneBits(u_input.b.x)), _wgslsmith_div_i32(_wgslsmith_add_i32(arg_0.x, arg_0.x), u_input.b.x)), vec2<u32>(u_input.a.x, ~_wgslsmith_sub_u32(u_input.a.x, 14953u)), ~_wgslsmith_add_vec3_u32(~vec3<u32>(29143u, u_input.a.x, 4294967295u), vec3<u32>(30520u, u_input.a.x, 3053u) << (vec3<u32>(u_input.a.x, u_input.a.x, 63344u) % vec3<u32>(32u))), select(~vec2<u32>(36298u, 18782u), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, 38308u), vec2<u32>(4294967295u, u_input.a.x)), any(!vec3<bool>(arg_2.x, false, false)))), vec4<bool>(any(!vec4<bool>(arg_2.x, arg_2.x, true, arg_1.x)), all(!select(vec3<bool>(arg_1.x, arg_2.x, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true))), select(!(!arg_2.x), 18216i > arg_0.x, all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, arg_1.x, false, true), false))), true), ~(-u_input.b.x));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = 2932i;
    var var_1 = -vec4<i32>(arg_3.b.x, var_0, var_0, abs(1i));
    var var_2 = _wgslsmith_dot_vec2_u32(arg_2.e, ~u_input.a);
    var_1 = vec4<i32>(~(-_wgslsmith_sub_i32(select(u_input.b.x, arg_2.a, false), arg_1.x ^ var_1.x)), u_input.b.x, 14790i, var_1.x);
    var var_3 = ((arg_3.b.xx ^ -vec2<i32>(10045i, u_input.b.x)) << (select(vec2<u32>(1u, _wgslsmith_div_u32(u_input.a.x, u_input.a.x)), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(25128u, 82309u), vec2<u32>(arg_3.e.x, u_input.a.x)), ~arg_2.c), select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), all(vec3<bool>(false, true, true)))) % vec2<u32>(32u))) >> (_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a.x, 20143u), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, arg_2.c.x), arg_3.d.zx >> (arg_2.c % vec2<u32>(32u)))), abs(select(vec2<u32>(u_input.a.x, u_input.a.x) << (vec2<u32>(u_input.a.x, 35196u) % vec2<u32>(32u)), ~arg_2.e, true))) % vec2<u32>(32u));
    return all(vec3<bool>(all(vec2<bool>(any(vec3<bool>(false, true, false)), true)), true, all(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, true, true), select(true, false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-152f, -527f, -1104f, 568f)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(362f, 726f)), 622f, var_0.x, _wgslsmith_f_op_f32(-var_0.x)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(766f + 985f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.x)), 394f)), -1118f));
    let var_3 = vec4<bool>(false, !(!(_wgslsmith_mult_i32(-83685i, u_input.b.x) > u_input.b.x)), !(func_5(_wgslsmith_f_op_vec2_f32(-var_1.xx), vec3<i32>(u_input.b.x, 1i, -2147483647i), func_1(vec4<i32>(-2147483647i, 13592i, u_input.b.x, u_input.b.x), vec2<bool>(true, true), vec2<bool>(false, true)), Struct_1(-40471i, vec4<i32>(-25403i, -1i, u_input.b.x, -9280i), u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a)) || any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)))), true);
    var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-141f, -1285f, _wgslsmith_f_op_f32(ceil(-690f)), var_1.x))));
    var var_4 = Struct_1(_wgslsmith_add_i32(func_1(vec4<i32>(2147483647i, 0i, u_input.b.x, i32(-1i) * -10445i), select(vec2<bool>(true, true), var_3.yy, true), var_3.zz).a, 0i), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 16899i, 0i, -38026i), -_wgslsmith_sub_vec4_i32(vec4<i32>(-27957i, u_input.b.x, 2147483647i, u_input.b.x), vec4<i32>(-2147483647i, u_input.b.x, -5545i, u_input.b.x))), -vec4<i32>(_wgslsmith_div_i32(2147483647i, 2147483647i), -42061i, u_input.b.x, abs(43609i))), vec2<u32>(1u, abs(16379u)), reverseBits(countOneBits(~vec3<u32>(23741u, u_input.a.x, 1u) >> (_wgslsmith_div_vec3_u32(vec3<u32>(3768u, 0u, 1u), vec3<u32>(35290u, u_input.a.x, u_input.a.x)) % vec3<u32>(32u)))), vec2<u32>(~(~0u), ~u_input.a.x));
    var var_5 = true;
    var var_6 = select(select(select(select(var_3.zzx, !var_3.zzx, true), vec3<bool>(var_3.x, var_3.x, !var_3.x), any(!vec3<bool>(true, var_3.x, var_3.x))), select(var_3.ywx, select(!var_3.zyy, vec3<bool>(false, var_3.x, var_3.x), !vec3<bool>(false, var_3.x, var_3.x)), all(select(var_3.xzy, var_3.xyx, true))), !all(var_3.zy)), vec3<bool>(true, true, true), !var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -447f)), max(vec2<i32>(-var_4.b.x, var_4.b.x) >> (select(~vec2<u32>(var_4.e.x, var_4.e.x), u_input.a, var_6.x) % vec2<u32>(32u)), abs(u_input.b.yx)));
}

