struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = 39319u;
    let var_1 = vec4<i32>(u_input.a, -u_input.b.x, arg_0, firstLeadingBit(reverseBits(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, arg_0), u_input.b), -61309i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, u_input.a, 50612i, arg_0), vec4<i32>(1i, arg_0, 28840i, -1i))))));
    let var_2 = _wgslsmith_mult_vec4_u32(abs(~(_wgslsmith_clamp_vec4_u32(vec4<u32>(41898u, 1u, var_0, var_0), vec4<u32>(var_0, var_0, var_0, 68058u), vec4<u32>(var_0, var_0, 4294967295u, var_0)) >> (~vec4<u32>(var_0, var_0, var_0, var_0) % vec4<u32>(32u)))), ~vec4<u32>(4294967295u, abs(~var_0), ~var_0 ^ var_0, 10578u));
    var var_3 = !(abs(~(~94509u)) != var_0);
    let var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(538f, 1000f, 916f, -608f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(371f, -1468f, -254f, 554f)))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(320f, -1000f, 1033f, -953f)))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(540f + -669f), _wgslsmith_f_op_f32(max(206f, 161f)), -138f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-779f, 603f, 568f, -1860f) * vec4<f32>(-117f, 2694f, -1456f, -1851f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(2311f, -1641f, -1864f, 248f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1470f, 684f, 1172f, -183f) + vec4<f32>(-1130f, -411f, 291f, 401f))))), true));
    return abs(var_2.x | ~_wgslsmith_dot_vec2_u32(~var_2.xz, var_2.zz));
}

fn func_2() -> i32 {
    let var_0 = min(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u) & select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 32715u, 19031u), true)), select(firstTrailingBit(~(~vec4<u32>(5388u, 5870u, 1u, 0u))), vec4<u32>(_wgslsmith_clamp_u32(~4294967295u, ~13993u, ~0u), _wgslsmith_div_u32(7424u, 1u), _wgslsmith_clamp_u32(max(96552u, 1u), 1u, 1u), 1u), vec4<bool>(all(vec2<bool>(true, true)), true, true, false)));
    let var_1 = _wgslsmith_div_i32(u_input.b.x ^ 3839i, select(u_input.b.x, -44922i, true)) ^ (u_input.a << (func_3(18428i) % 32u));
    var var_2 = (var_0.x | ~var_0.x) > ~var_0.x;
    var var_3 = Struct_2(vec3<u32>(abs(select(var_0.x, var_0.x, any(vec2<bool>(false, false)))), 65084u, 0u), Struct_1(vec2<u32>(_wgslsmith_add_u32(~var_0.x, ~4294967295u), _wgslsmith_div_u32(var_0.x, var_0.x) << (~23595u % 32u)), ~(abs(var_1) << (~var_0.x % 32u)), !(!select(vec2<bool>(false, true), vec2<bool>(false, true), true))));
    let var_4 = !vec2<bool>((var_1 << (var_3.a.x % 32u)) != 0i, !any(vec2<bool>(false, false)));
    return var_1;
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: f32) -> Struct_1 {
    let var_0 = !(!(!vec4<bool>(true, false, 1u <= arg_1.x, true)));
    var var_1 = _wgslsmith_mod_i32(func_2() ^ firstTrailingBit(-2147483647i), ~reverseBits(_wgslsmith_mult_i32(1i, -arg_0)));
    var var_2 = var_0.yxz;
    var_1 = -31338i;
    var_2 = vec3<bool>(all(!vec2<bool>(true, all(vec4<bool>(false, var_0.x, true, false)))), false, any(!vec4<bool>(false, select(var_2.x, var_2.x, var_0.x), true, var_2.x)));
    return Struct_1(vec2<u32>(~func_3(-11994i), arg_1.x), arg_0, !var_0.yx);
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_2) -> bool {
    let var_0 = !(!((_wgslsmith_sub_i32(arg_3.b.b, 21855i) >= arg_2.b) | !arg_0));
    var var_1 = ~firstLeadingBit(0u);
    var_1 = 54139u;
    var_1 = arg_1.x;
    let var_2 = arg_3.b;
    return (0u & firstTrailingBit(_wgslsmith_sub_u32(arg_1.x, 1u))) == ~firstLeadingBit(0u);
}

fn func_5(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-298f, 621f)), 1326f, 1512f))))));
    var var_1 = Struct_1(arg_2.a, u_input.a, func_1(-(~(arg_2.b << (arg_2.a.x % 32u))), firstLeadingBit(arg_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1442f)))))).c);
    var_1 = func_1(~arg_2.b ^ arg_0, select(_wgslsmith_mult_vec2_u32(~vec2<u32>(var_1.a.x, var_1.a.x), var_1.a), arg_2.a, vec2<bool>(true && func_4(false, vec4<u32>(arg_2.a.x, 14790u, 19741u, var_1.a.x), arg_2, Struct_2(vec3<u32>(var_1.a.x, 34869u, 25504u), Struct_1(vec2<u32>(var_1.a.x, arg_2.a.x), var_1.b, arg_2.c))), false)), _wgslsmith_f_op_f32(-var_0.x));
    var var_2 = arg_2;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-342f)))) * _wgslsmith_f_op_f32(f32(-1f) * -154f));
    return Struct_2(vec3<u32>(max(arg_2.a.x, var_2.a.x), ~(~arg_2.a.x), ~(~firstLeadingBit(arg_2.a.x))), func_1(select(-u_input.a, i32(-1i) * -arg_0, var_2.c.x), _wgslsmith_add_vec2_u32(vec2<u32>(0u, ~1760u), arg_2.a), var_3));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = ~(~vec2<u32>(firstLeadingBit(1u), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 1u)), ~19207u)));
    var_1 = ~(~(~_wgslsmith_add_vec2_u32(~vec2<u32>(var_1.x, var_1.x), ~vec2<u32>(var_1.x, var_1.x))));
    let var_2 = func_5(2147483647i, vec4<bool>(func_4(var_0, reverseBits(vec4<u32>(45427u, 489u, var_1.x, var_1.x)), func_1(reverseBits(u_input.b.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.x, 4407u), vec2<u32>(6629u, var_1.x), vec2<u32>(var_1.x, 0u)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), Struct_2(vec3<u32>(var_1.x, 50016u, var_1.x) >> (vec3<u32>(1u, 34821u, var_1.x) % vec3<u32>(32u)), Struct_1(vec2<u32>(3676u, var_1.x), 2147483647i, vec2<bool>(true, true)))), true & all(!vec3<bool>(var_0, var_0, false)), select(var_0, false, true | all(vec2<bool>(var_0, var_0))), !(!var_0) & var_0), func_1(countOneBits(1i), abs(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, var_1.x), vec2<u32>(var_1.x, var_1.x)) & ~vec2<u32>(14364u, var_1.x)), -2416f));
    let var_3 = var_2.b.c.x && func_1(-max(_wgslsmith_mult_i32(u_input.b.x, -28224i), 0i >> (var_2.a.x % 32u)), abs(_wgslsmith_add_vec2_u32(func_5(u_input.a, vec4<bool>(true, true, true, var_2.b.c.x), var_2.b).a.xx, _wgslsmith_clamp_vec2_u32(var_2.a.yx, vec2<u32>(var_2.a.x, 1u), var_2.b.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2452f) + -1000f)).c.x;
    let var_4 = vec3<bool>(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, 185f))) > _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-657f, 2023f), _wgslsmith_f_op_f32(max(-891f, -1653f))))), true, (true | (any(var_2.b.c) & all(vec2<bool>(true, var_0)))) || (var_1.x > _wgslsmith_mult_u32(~17610u, select(34405u, 0u, var_2.b.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.x, vec4<i32>(_wgslsmith_sub_i32(var_2.b.b, var_2.b.b), firstTrailingBit(min(u_input.a, reverseBits(-1742i))), min(u_input.b.x, 21497i), u_input.b.x));
}

