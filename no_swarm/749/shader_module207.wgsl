struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: f32) -> vec4<bool> {
    var var_0 = arg_0;
    let var_1 = abs(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(0u, 1u, u_input.c.x, 32157u)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(42196u, u_input.b, 12395u, arg_0.e.x) ^ vec4<u32>(arg_0.e.x, u_input.c.x, 4294967295u, 32928u), ~vec4<u32>(u_input.c.x, 0u, var_0.c, 140447u)), vec4<u32>(arg_0.c, 71227u, arg_0.c, _wgslsmith_mult_u32(~4294967295u, arg_0.e.x))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(arg_1.x - arg_1.x))) + _wgslsmith_f_op_f32(exp2(arg_2))));
    var var_3 = var_1;
    let var_4 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-683f, _wgslsmith_f_op_f32(abs(-1433f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -921f) + _wgslsmith_f_op_f32(907f - _wgslsmith_f_op_f32(step(arg_2, var_2)))), _wgslsmith_f_op_f32(-var_2)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(2210f - arg_2), _wgslsmith_f_op_f32(ceil(var_2)), arg_1.x, _wgslsmith_f_op_f32(-961f + var_2)))), vec4<f32>(arg_1.x, 2240f, _wgslsmith_f_op_f32(min(-343f, var_2)), _wgslsmith_f_op_f32(sign(2275f)))), !((1i >> (~var_0.a % 32u)) == 1i)));
    return vec4<bool>(true, true, true, true);
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: i32, arg_3: vec2<f32>) -> u32 {
    var var_0 = vec3<bool>(!any(func_3(Struct_1(u_input.c.x, 1i, arg_1, 0i, vec3<u32>(8896u, 87662u, 4294967295u)), vec3<f32>(arg_3.x, -540f, 1000f), -448f)) == true, all(!vec2<bool>(any(vec3<bool>(true, false, true)), true)), false);
    var_0 = !select(vec3<bool>(true, false, all(vec4<bool>(false, true, false, false))), vec3<bool>(func_3(Struct_1(56577u, u_input.a.x, u_input.c.x, 3417i, vec3<u32>(0u, arg_1, u_input.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, arg_3.x, -1949f)), -2623f).x, false, var_0.x), false);
    var_0 = !vec3<bool>(true, !(true || var_0.x), all(select(var_0.xx, !vec2<bool>(var_0.x, var_0.x), any(var_0.zy))));
    var_0 = select(!select(select(!vec3<bool>(var_0.x, true, var_0.x), func_3(Struct_1(u_input.b, -8728i, arg_1, arg_2, vec3<u32>(arg_1, arg_1, arg_1)), vec3<f32>(arg_3.x, -1634f, -3095f), 1000f).ywx, func_3(Struct_1(arg_1, -2147483647i, 407u, -3995i, vec3<u32>(51948u, 1u, arg_1)), vec3<f32>(-1587f, arg_3.x, arg_3.x), 1443f).x), vec3<bool>(any(var_0.zz), var_0.x & true, -314f <= arg_3.x), !select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true), var_0.x)), vec3<bool>(var_0.x, select(~(-35941i), -47373i, -1i < arg_2) == -(~arg_0.x), any(select(var_0.yx, vec2<bool>(true, true), vec2<bool>(var_0.x, false)))), select(select(select(!vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, true, var_0.x), vec3<bool>(true, var_0.x, true)), select(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, false, true)), func_3(Struct_1(arg_1, u_input.a.x, u_input.c.x, arg_2, vec3<u32>(25183u, 28722u, 22804u)), vec3<f32>(arg_3.x, arg_3.x, arg_3.x), arg_3.x).xwz, select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, var_0.x, var_0.x))), select(!vec3<bool>(false, var_0.x, var_0.x), !vec3<bool>(false, false, var_0.x), true)), select(select(!vec3<bool>(true, false, var_0.x), vec3<bool>(true, var_0.x, true), any(vec4<bool>(true, true, false, var_0.x))), vec3<bool>(true, true, false), true), all(vec2<bool>(func_3(Struct_1(1u, -11456i, 18887u, -1i, vec3<u32>(u_input.b, u_input.b, 30684u)), vec3<f32>(arg_3.x, arg_3.x, arg_3.x), arg_3.x).x, var_0.x))));
    var_0 = vec3<bool>(false, var_0.x, true);
    return ~(~(u_input.c.x ^ u_input.c.x));
}

fn func_1() -> vec4<i32> {
    let var_0 = 2147483647i;
    let var_1 = Struct_1(~_wgslsmith_sub_u32((u_input.c.x ^ u_input.b) | ~27367u, ~_wgslsmith_div_u32(0u, u_input.c.x)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 39878i, 1i), vec3<i32>(u_input.a.x, 2147483647i, 1i)), ~u_input.a), var_0 | 50971i), max(reverseBits(countOneBits(u_input.a.x)), var_0), -(~1i)), _wgslsmith_div_u32(17918u, ~(~u_input.c.x)), abs(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 20057i, var_0, var_0) ^ vec4<i32>(-37789i, var_0, -7833i, var_0), vec4<i32>(var_0, u_input.a.x, u_input.a.x, 2147483647i))), vec3<u32>(~select(_wgslsmith_add_u32(1u, 73180u), func_2(vec3<i32>(u_input.a.x, -1219i, u_input.a.x), u_input.c.x, u_input.a.x, vec2<f32>(-986f, -834f)), true), u_input.c.x, ~min(~u_input.b, 4294967295u)));
    var var_2 = ~(~var_1.e) >> (var_1.e % vec3<u32>(32u));
    var var_3 = select(vec2<bool>(u_input.c.x != ~min(0u, 0u), !all(vec2<bool>(true, true))), select(vec2<bool>(true, true), vec2<bool>(true && func_3(Struct_1(var_2.x, -2147483647i, 18322u, var_0, vec3<u32>(var_2.x, u_input.c.x, 0u)), vec3<f32>(-1072f, -385f, 996f), 1000f).x, !any(vec3<bool>(true, true, true))), vec2<bool>(true, true)), 4294967295u <= _wgslsmith_dot_vec2_u32(vec2<u32>(~87447u, _wgslsmith_dot_vec2_u32(var_2.yx, vec2<u32>(u_input.b, u_input.c.x))), ~(~vec2<u32>(u_input.b, u_input.c.x))));
    var_3 = select(!(!func_3(Struct_1(var_2.x, var_0, u_input.b, var_0, var_1.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-925f, -1000f, 188f)), 1311f).yx), select(!func_3(Struct_1(var_2.x, -41253i, var_2.x, -1i, vec3<u32>(u_input.b, var_2.x, var_2.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(2301f, -1372f, 1097f) + vec3<f32>(1811f, 816f, 897f)), _wgslsmith_f_op_f32(min(139f, -513f))).ww, !(!select(vec2<bool>(true, var_3.x), vec2<bool>(false, false), false)), !(u_input.c.x > 4294967295u)), all(func_3(var_1, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-230f, -1945f, 1886f))), -1000f).yyz));
    return vec4<i32>(-22125i, u_input.a.x, _wgslsmith_sub_i32(~var_1.d, u_input.a.x), 1i);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: i32) -> vec2<u32> {
    var var_0 = u_input.c.x;
    let var_1 = arg_0;
    var var_2 = true;
    var_0 = func_2(_wgslsmith_mult_vec3_i32(vec3<i32>(~(arg_2.b | 1i), 1i, -31850i), ~_wgslsmith_mult_vec3_i32(vec3<i32>(15943i, 2147483647i, 2126i) << (vec3<u32>(u_input.c.x, u_input.b, arg_2.c) % vec3<u32>(32u)), u_input.a)), ~1u, -arg_1.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-656f, _wgslsmith_f_op_f32(round(-1466f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(498f, -1085f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    var_0 = u_input.b;
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    var_0 = _wgslsmith_sub_vec2_u32(u_input.c, _wgslsmith_mult_vec2_u32(func_4(vec2<bool>(true, all(vec2<bool>(true, true))), _wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a.x, 1i, -38909i, 8958i), func_1()), Struct_1(0u >> (u_input.b % 32u), -2147483647i << (u_input.c.x % 32u), ~var_0.x, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), firstTrailingBit(vec3<u32>(69421u, u_input.b, var_0.x))), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, -10973i, -2147483647i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), u_input.a)), vec2<u32>(~u_input.c.x ^ u_input.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, 54648u, 4294967295u, var_0.x), vec4<u32>(0u, 11221u, var_0.x, u_input.b)))));
    let var_1 = vec2<bool>(false, false);
    let var_2 = vec3<u32>(func_2(~(~vec3<i32>(u_input.a.x, u_input.a.x, 0i)), func_4(!var_1, vec4<i32>(u_input.a.x, 1i, -1i, 0i) ^ vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), Struct_1(1u, u_input.a.x, 29395u, u_input.a.x, vec3<u32>(1u, u_input.b, u_input.c.x)), firstLeadingBit(u_input.a.x)).x, -3248i, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(423f, 1057f)))), ~select(firstTrailingBit(42808u), u_input.c.x >> (u_input.c.x % 32u), var_1.x), 1u) | ~vec3<u32>(_wgslsmith_mult_u32(u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 60182u, 2542u, var_0.x), vec4<u32>(u_input.b, 89417u, 4294967295u, u_input.c.x))), reverseBits(~0u), _wgslsmith_div_u32(var_0.x, ~var_0.x));
    var var_3 = all(vec4<bool>(var_1.x, var_1.x, !(!var_1.x), var_1.x));
    var var_4 = select(vec3<bool>(all(!select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true))), !(!(var_0.x > u_input.c.x)), !select(var_1.x, !var_1.x, true)), select(vec3<bool>(false, any(var_1) | var_1.x, false), vec3<bool>(!(!var_1.x), all(func_3(Struct_1(9697u, u_input.a.x, var_0.x, u_input.a.x, vec3<u32>(0u, 0u, var_2.x)), vec3<f32>(-310f, -1299f, -321f), 717f).yzx), true), select(vec3<bool>(!var_1.x, all(vec3<bool>(true, var_1.x, true)), var_1.x), select(!vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, true, false), vec3<bool>(var_1.x, var_1.x, var_1.x)), vec3<bool>(false, var_1.x, var_1.x))), var_1.x && var_1.x);
    let var_5 = Struct_1(firstLeadingBit(u_input.c.x), _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a.x, u_input.a.x >> (var_2.x % 32u), ~13403i, 38444i), select(firstTrailingBit(vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<i32>(-1i, u_input.a.x, u_input.a.x, -1i), true), vec4<bool>(all(vec2<bool>(var_1.x, true)), false, !var_1.x, false)), ~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(0i, 2147483647i, -1i, 2147483647i)) & _wgslsmith_sub_vec4_i32(func_1(), firstTrailingBit(vec4<i32>(2147483647i, -22475i, u_input.a.x, u_input.a.x)))), firstTrailingBit(~(~(~4294967295u))), u_input.a.x, firstLeadingBit(countOneBits(~(~vec3<u32>(var_2.x, var_0.x, 87294u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(min(u_input.c.x, var_2.x), 1u, var_5.c), ~(vec2<i32>(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 2147483647i), -var_5.b) | u_input.a.zx), reverseBits(_wgslsmith_add_u32(countOneBits(min(var_2.x, var_0.x)), firstLeadingBit(var_5.a))), -940f);
}

