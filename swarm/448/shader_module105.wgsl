struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<f32>) -> vec3<bool> {
    let var_0 = ~vec4<u32>(1u, 46309u, 28745u, ~9203u | abs(u_input.a.x));
    var var_1 = vec2<u32>(abs(0u), _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(var_0.xx, _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 15841u), u_input.a.xx)), min(_wgslsmith_add_vec2_u32(~u_input.a.yy, ~var_0.xw), select(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, 65818u), vec2<u32>(var_0.x, 26819u)), var_0.zx, arg_0.zx))));
    var_1 = reverseBits(var_0.xx);
    let var_2 = _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.x - arg_1.x))))) - -1041f));
    let var_3 = Struct_1(~2147483647i, vec2<f32>(400f, var_2), !select(!(!vec4<bool>(true, true, arg_0.x, arg_0.x)), select(vec4<bool>(true, arg_0.x, false, true), select(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, false), vec4<bool>(false, true, true, true)), arg_0.x != arg_0.x), !(!vec4<bool>(true, false, arg_0.x, arg_0.x))), _wgslsmith_mod_vec4_i32(-vec4<i32>(_wgslsmith_sub_i32(-9105i, 0i), 1i, abs(-5632i), 26655i << (0u % 32u)), vec4<i32>(0i, -_wgslsmith_dot_vec4_i32(vec4<i32>(-4899i, 2147483647i, 1i, 0i), vec4<i32>(30139i, -9328i, 0i, -2147483647i)), reverseBits(firstLeadingBit(0i)), 13759i)));
    return select(vec3<bool>(false, false, !all(var_3.c)), arg_0, vec3<bool>(arg_0.x, any(var_3.c), var_3.c.x));
}

fn func_2() -> vec2<bool> {
    let var_0 = select(vec3<bool>(true, true, true), select(func_3(select(vec3<bool>(true, false, false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1379f, 259f, 2159f))), !vec3<bool>(all(vec4<bool>(true, true, false, true)), true, all(vec2<bool>(true, false))), func_3(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), false), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-729f, -242f, -1217f))))), !(u_input.a.x == 1u));
    let var_1 = Struct_1(_wgslsmith_mod_i32(-31174i, -26987i) << (~(~u_input.a.x << (~u_input.a.x % 32u)) % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(529f, 1513f), vec2<f32>(570f, 318f))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1090f, -615f))))))), select(!vec4<bool>(true, !var_0.x, !var_0.x, select(var_0.x, var_0.x, false)), vec4<bool>(any(vec3<bool>(false, false, true)) == (var_0.x || true), true, var_0.x, !(false || var_0.x)), all(var_0.xy)), max(_wgslsmith_clamp_vec4_i32(vec4<i32>(-26889i, ~0i, -16642i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 55250i, -1i), vec3<i32>(-28237i, -31416i, 27782i))), vec4<i32>(0i, 1i, -3518i >> (u_input.a.x % 32u), ~1i), _wgslsmith_clamp_vec4_i32(-vec4<i32>(-71754i, -2147483647i, 1i, -2147483647i), vec4<i32>(-2147483647i, -2147483647i, 12810i, 0i), vec4<i32>(1i, 1i, 1i, 1i))), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-45976i, -2147483647i, 1i), vec3<i32>(-1i, 2147483647i, -1i)), 2147483647i), -34805i, countOneBits(i32(-1i) * -21437i), _wgslsmith_mod_i32(~13666i, _wgslsmith_dot_vec3_i32(vec3<i32>(45323i, 1i, -1i), vec3<i32>(-1i, -2147483647i, 1i))))));
    let var_2 = Struct_1(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(var_1.d.wxw | var_1.d.yzz), ~var_1.d.zxy), var_1.d.x), var_1.b, var_1.c, _wgslsmith_add_vec4_i32(var_1.d, abs(~var_1.d)));
    let var_3 = Struct_2(Struct_1(-2147483647i, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-365f, var_1.b.x) + var_1.b), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-998f, -482f))))), vec2<f32>(_wgslsmith_f_op_f32(1000f - -2132f), _wgslsmith_f_op_f32(select(460f, -292f, var_0.x))), vec2<bool>(var_1.c.x, func_3(vec3<bool>(false, true, var_2.c.x), vec3<f32>(945f, var_1.b.x, var_1.b.x)).x))), var_2.c, ~select(vec4<i32>(var_2.d.x, -35826i, 12186i, 1i), max(var_2.d, vec4<i32>(var_1.a, 0i, var_2.d.x, var_2.d.x)), var_1.c)), 1u, abs(vec4<u32>(~(~8137u), ~(1u | u_input.a.x), 4294967295u, 36065u)), var_1);
    var var_4 = !vec3<bool>(var_3.a.c.x, false, u_input.a.x > u_input.a.x);
    return select(vec2<bool>(true, any(vec2<bool>(true, true))), vec2<bool>(!(-var_2.d.x < abs(var_3.a.d.x)), true), func_3(var_2.c.xxw, vec3<f32>(_wgslsmith_f_op_f32(max(-299f, _wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.d.b.x))), _wgslsmith_f_op_f32(-var_3.a.b.x))).xz);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(reverseBits(firstLeadingBit(u_input.a) << (vec3<u32>(u_input.a.x, 4294967295u, 7195u) % vec3<u32>(32u))), vec3<u32>(arg_0.c.x, u_input.a.x, 1u)), _wgslsmith_mod_vec3_u32(abs(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 0u, arg_0.c.x), vec3<u32>(arg_0.b, arg_0.b, 68242u))), arg_0.c.yxz));
    var var_1 = _wgslsmith_div_vec3_i32(arg_0.d.d.yyw, firstTrailingBit(~vec3<i32>(2147483647i, arg_0.a.d.x, -1i)) << (~(~(~vec3<u32>(0u, 6522u, 1u))) % vec3<u32>(32u)));
    var_1 = -arg_0.d.d.zyz;
    var_0 = ~reverseBits(_wgslsmith_add_u32(abs(u_input.a.x), 98562u) << (arg_0.b % 32u));
    var_1 = vec3<i32>(2147483647i, -2147483647i, _wgslsmith_dot_vec2_i32(arg_0.a.d.wx, vec2<i32>(reverseBits(2026i), var_1.x)));
    return !(!func_2());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(select(vec2<bool>(true, true), vec2<bool>(select(true, false, true), any(vec2<bool>(true, true))), !select(vec2<bool>(true, true), vec2<bool>(true, true), false)), !select(vec2<bool>(false, false), func_1(Struct_2(Struct_1(0i, vec2<f32>(639f, -590f), vec4<bool>(true, true, true, false), vec4<i32>(-11405i, 0i, 18149i, 15663i)), u_input.a.x, vec4<u32>(27065u, u_input.a.x, u_input.a.x, 1u), Struct_1(-2147483647i, vec2<f32>(-586f, -1183f), vec4<bool>(true, true, true, true), vec4<i32>(-21130i, 0i, 26254i, -1i))), Struct_1(19359i, vec2<f32>(425f, 1126f), vec4<bool>(true, true, true, false), vec4<i32>(-1i, -36715i, -2147483647i, 24122i))), vec2<bool>(false, false)), any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true))) || true), vec2<bool>(true, true || (~0u > (u_input.a.x ^ 4294967295u))), !(!vec2<bool>(func_2().x, false)));
    var var_1 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_clamp_vec4_i32(-(~vec4<i32>(1i, 43473i, 2289i, -33225i)), vec4<i32>(i32(-1i) * -22639i, 2147483647i, ~(-2147483647i), -12845i), ~(-vec4<i32>(1i, 1i, 2147483647i, -9107i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-309f, 724f))), vec4<bool>(var_0.x, !(all(vec3<bool>(true, false, false)) && true), var_0.x, true != (true | all(vec3<bool>(true, var_0.x, var_0.x)))), _wgslsmith_mult_vec4_i32(-(~(vec4<i32>(0i, 0i, 2147483647i, 2147483647i) >> (vec4<u32>(u_input.a.x, 48773u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)))), ~(~(-vec4<i32>(-34445i, -1i, -18516i, -23345i)))));
    var_1 = Struct_1(1i, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -532f), _wgslsmith_f_op_f32(floor(var_1.b.x))), var_1.c, select(abs(vec4<i32>(firstLeadingBit(var_1.d.x), -77511i, 3358i, countOneBits(var_1.a))), var_1.d, func_2().x));
    let var_2 = vec3<u32>(~103766u, min(_wgslsmith_dot_vec2_u32(u_input.a.yy, u_input.a.yy), _wgslsmith_clamp_u32(u_input.a.x, 1u, 64252u)) ^ 4294967295u, max(~u_input.a.x, 0u)) | abs(vec3<u32>(~countOneBits(u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(4294967295u, 26245u)), ~select(u_input.a.x, 4294967295u, false)));
    var var_3 = Struct_2(Struct_1(~_wgslsmith_div_i32(~var_1.a, 4719i >> (u_input.a.x % 32u)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.x, -294f) + var_1.b)))), !(!(!vec4<bool>(var_0.x, var_1.c.x, var_0.x, var_0.x))), ~var_1.d), var_2.x << (~0u % 32u), ~vec4<u32>(_wgslsmith_mult_u32(~var_2.x, _wgslsmith_clamp_u32(u_input.a.x, 24446u, var_2.x)), _wgslsmith_sub_u32(abs(var_2.x), _wgslsmith_mod_u32(var_2.x, var_2.x)), ~var_2.x, abs(~u_input.a.x)), Struct_1(var_1.d.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.b * var_1.b)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.b) + _wgslsmith_f_op_vec2_f32(-var_1.b))), !(!select(var_1.c, vec4<bool>(var_0.x, var_0.x, false, true), false)), var_1.d << (~_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.x, 47862u, 29305u, var_2.x), vec4<u32>(3319u, var_2.x, u_input.a.x, 6886u)) % vec4<u32>(32u))));
    var_3 = Struct_2(var_3.a, var_3.b, firstLeadingBit(firstLeadingBit(firstTrailingBit(vec4<u32>(var_3.b, 0u, 16615u, 39471u)))), var_3.a);
    let var_4 = reverseBits(1i);
    let var_5 = Struct_2(Struct_1(var_4, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, _wgslsmith_f_op_f32(abs(var_1.b.x)))), var_3.d.c, vec4<i32>(-(~var_3.d.d.x), var_1.d.x, 60423i, firstTrailingBit(select(1i, var_3.d.d.x, false)))), ~_wgslsmith_mult_u32(select(var_2.x, u_input.a.x ^ var_2.x, false), 84365u ^ var_3.b), vec4<u32>(~abs(1u), ~1u, firstLeadingBit(63900u), 0u), Struct_1(~(~_wgslsmith_mod_i32(-4305i, var_4)), vec2<f32>(-714f, 1230f), var_3.d.c, ~select(var_1.d | var_3.d.d, select(vec4<i32>(-1i, var_3.a.d.x, 45654i, -1203i), vec4<i32>(var_3.a.d.x, var_1.d.x, var_1.d.x, var_1.a), false), true)));
    var var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.a.b.x, 1048f)) - var_1.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec4<u32>(var_2.x, var_3.c.x, 0u, 4294967295u)) | vec4<u32>(var_3.c.x & var_5.c.x, _wgslsmith_sub_u32(0u, var_3.c.x), u_input.a.x, var_3.b)), var_1.d.xw);
}

