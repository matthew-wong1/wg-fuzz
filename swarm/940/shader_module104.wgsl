struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: i32,
    d: vec3<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> bool {
    var var_0 = Struct_2(Struct_1(arg_1.b, !(!select(vec4<bool>(true, arg_0, false, true), arg_1.a, true)), _wgslsmith_clamp_i32(u_input.b, 2147483647i, 2147483647i), ~countOneBits(vec3<i32>(arg_1.c, -1i, arg_1.c)), vec4<f32>(arg_1.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.e.x, arg_1.e.x)) * 1496f), 817f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e.x)))), vec3<i32>(-1i) * -arg_1.d);
    var_0 = Struct_2(arg_1, _wgslsmith_sub_vec3_i32(~(~max(vec3<i32>(-3207i, var_0.a.c, u_input.b), vec3<i32>(u_input.b, var_0.b.x, var_0.a.c))), vec3<i32>(_wgslsmith_div_i32(var_0.b.x, countOneBits(u_input.b)), u_input.b, firstLeadingBit(u_input.b))));
    var_0 = Struct_2(var_0.a, select(abs(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, arg_1.c, 8554i), firstLeadingBit(vec3<i32>(arg_1.c, var_0.a.c, 23893i)))), select((var_0.a.d << (vec3<u32>(1u, 10962u, 4294967295u) % vec3<u32>(32u))) ^ (vec3<i32>(-6649i, 0i, u_input.b) & var_0.a.d), _wgslsmith_mult_vec3_i32(-var_0.b, arg_1.d), arg_0), !(!(!var_0.a.a.wxx))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.e.x)))))) == arg_1.e.x;
    let var_2 = arg_1;
    return arg_0;
}

fn func_2(arg_0: vec4<bool>) -> vec4<bool> {
    let var_0 = 217f;
    let var_1 = Struct_2(Struct_1(vec4<bool>(false, func_3(arg_0.x, Struct_1(vec4<bool>(arg_0.x, false, arg_0.x, false), vec4<bool>(arg_0.x, false, arg_0.x, true), 8776i, vec3<i32>(-2147483647i, -1i, u_input.b), vec4<f32>(var_0, -1545f, 1000f, var_0))), !arg_0.x, arg_0.x), select(select(arg_0, select(vec4<bool>(true, arg_0.x, arg_0.x, true), arg_0, arg_0.x), arg_0.x || arg_0.x), arg_0, false), firstTrailingBit(63908i), vec3<i32>(~(-2147483647i) | _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 4955i), vec2<i32>(10639i, u_input.b)), u_input.b, firstLeadingBit(u_input.b)), vec4<f32>(_wgslsmith_f_op_f32(sign(-2466f)), -1143f, _wgslsmith_f_op_f32(var_0 - 450f), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_div_f32(-710f, 1553f))))), vec3<i32>(max(-u_input.b, -632i) | ~abs(u_input.b), 1i, ~1i));
    let var_2 = var_1.a;
    return !(!vec4<bool>(true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0.x, true, true, arg_0.x), true)), 1u < u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -445f) == _wgslsmith_f_op_f32(715f + var_0)));
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: vec2<u32>) -> bool {
    var var_0 = Struct_1(func_2(select(!vec4<bool>(arg_0.x, false, false, arg_0.x), select(!vec4<bool>(arg_0.x, false, true, false), arg_0, vec4<bool>(false, arg_0.x, false, true)), ~u_input.a.x < u_input.a.x)), !(!(!(!vec4<bool>(arg_0.x, arg_0.x, false, false)))), 16399i, select(vec3<i32>(arg_1, ~(-2147483647i), u_input.b), -(vec3<i32>(arg_1, arg_1, 46253i) & vec3<i32>(45465i, 49275i, arg_1)), false) << (~min(vec3<u32>(0u, arg_2.x, 0u), ~vec3<u32>(4294967295u, arg_2.x, 11254u)) % vec3<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1323f, -1570f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-120f - -1997f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-135f * 379f), -642f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-429f + 444f))))));
    var_0 = Struct_1(arg_0, arg_0, _wgslsmith_dot_vec3_i32(~(_wgslsmith_add_vec3_i32(var_0.d, vec3<i32>(u_input.b, 9071i, 1i)) << (~vec3<u32>(1u, 4294967295u, 4294967295u) % vec3<u32>(32u))), -countOneBits(vec3<i32>(29278i, -15765i, 1i) << (vec3<u32>(0u, 13105u, u_input.a.x) % vec3<u32>(32u)))), firstTrailingBit(var_0.d) | (_wgslsmith_add_vec3_i32(var_0.d, var_0.d) >> (select(~vec3<u32>(arg_2.x, 0u, arg_2.x), vec3<u32>(arg_2.x, u_input.a.x, u_input.a.x) >> (vec3<u32>(50820u, arg_2.x, arg_2.x) % vec3<u32>(32u)), arg_0.x | var_0.b.x) % vec3<u32>(32u))), vec4<f32>(-1897f, var_0.e.x, var_0.e.x, -601f));
    let var_1 = Struct_1(vec4<bool>(select(var_0.a.x, all(vec4<bool>(true, var_0.b.x, true, false)), !var_0.b.x) != var_0.b.x, (!arg_0.x & (var_0.e.x == 125f)) & func_3(false, Struct_1(vec4<bool>(true, false, false, true), vec4<bool>(var_0.b.x, var_0.a.x, true, arg_0.x), 0i, var_0.d, vec4<f32>(-217f, var_0.e.x, var_0.e.x, var_0.e.x))), true, all(vec4<bool>(any(vec3<bool>(true, var_0.b.x, var_0.a.x)), arg_0.x, func_3(false, Struct_1(var_0.b, vec4<bool>(arg_0.x, arg_0.x, true, var_0.a.x), arg_1, vec3<i32>(-1i, -42487i, 1i), vec4<f32>(-1256f, var_0.e.x, var_0.e.x, var_0.e.x))), true))), func_2(func_2(vec4<bool>(arg_0.x, var_0.c > -30062i, true, 15415i != u_input.b))), (select(-13163i, -2606i, !var_0.b.x) >> (arg_2.x % 32u)) & (-2147483647i | arg_1), vec3<i32>(reverseBits(_wgslsmith_sub_i32(29489i, u_input.b)), -24841i, u_input.b), _wgslsmith_f_op_vec4_f32(var_0.e - _wgslsmith_f_op_vec4_f32(-var_0.e)));
    var_0 = var_1;
    let var_2 = min(_wgslsmith_mod_vec3_i32(var_1.d, var_0.d), vec3<i32>(~(-31366i) ^ var_0.d.x, abs(-1i), u_input.b));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<bool>(false, false, true, all(vec3<bool>(true, true, false))), vec4<bool>(false, select(!all(vec3<bool>(false, true, false)), func_1(vec4<bool>(true, true, true, true), _wgslsmith_div_i32(-57307i, u_input.b), u_input.a), true), true, true), ~reverseBits(-(u_input.b | 0i)), firstLeadingBit(vec3<i32>(_wgslsmith_mult_i32(u_input.b, 1i), ~(-1i), abs(u_input.b)) & countOneBits(-vec3<i32>(-17519i, u_input.b, 0i))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1760f - -1905f) * -1082f)), _wgslsmith_f_op_f32(728f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1215f)) - -210f)), 188f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-771f * 969f))))));
    let var_1 = vec3<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(firstLeadingBit(-950i), abs(56601i))), _wgslsmith_add_vec2_i32(vec2<i32>(1i, u_input.b), abs(var_0.d.yy | vec2<i32>(u_input.b, u_input.b)))), 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(var_0.c, u_input.b, -2147483647i, 24566i), vec4<i32>(max(-69056i, var_0.c), 0i, var_0.c, var_0.c)) << (~countOneBits(800u) % 32u));
    var var_2 = var_0.e.x;
    let var_3 = vec2<i32>(0i, i32(-1i) * -1i);
    let var_4 = ~(~max(~(~vec2<u32>(9764u, u_input.a.x)), ~u_input.a | ~vec2<u32>(0u, u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.e.x, _wgslsmith_sub_i32(-36003i << (min(var_4.x, 4294967295u ^ u_input.a.x) % 32u), ~0i ^ select(u_input.b, 1i, any(vec2<bool>(var_0.b.x, var_0.a.x)))), _wgslsmith_f_op_f32(sign(399f)), u_input.a, 0i | -_wgslsmith_add_i32(u_input.b, ~var_1.x));
}

