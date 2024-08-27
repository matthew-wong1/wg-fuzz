struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> i32 {
    let var_0 = Struct_1(u_input.b.x, 7301u, ~(-reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.a.x, 0i, u_input.b.x), u_input.b))));
    let var_1 = _wgslsmith_f_op_f32(-740f - _wgslsmith_f_op_f32(-arg_0.b.x));
    let var_2 = Struct_2(u_input.a.yz, select(select(select(select(vec4<bool>(false, arg_1, arg_1, false), vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(false, arg_1, arg_1, arg_1)), !vec4<bool>(arg_1, arg_1, false, true), select(vec4<bool>(false, arg_1, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, arg_1, true))), select(vec4<bool>(true, arg_1, false, arg_1), vec4<bool>(arg_1, false, true, false), true), select(select(vec4<bool>(false, false, arg_1, arg_1), vec4<bool>(false, arg_1, false, arg_1), vec4<bool>(true, arg_1, false, arg_1)), select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(true, false, arg_1, arg_1), false), vec4<bool>(true, arg_1, false, arg_1))), vec4<bool>(all(!vec4<bool>(arg_1, true, true, arg_1)), arg_1, arg_1, all(vec2<bool>(false, arg_1))), vec4<bool>(true, 0i != _wgslsmith_clamp_i32(u_input.b.x, -39717i, arg_0.c.a), !(!arg_1), arg_1)), arg_0.c, Struct_1(-24138i, 0u, ~u_input.b));
    let var_3 = var_2;
    var var_4 = arg_0.c;
    return var_0.a;
}

fn func_2(arg_0: bool) -> vec3<f32> {
    let var_0 = Struct_1(-26667i, ~u_input.a.x, vec3<i32>(~(-(-1i | u_input.b.x)), firstLeadingBit(0i & func_3(Struct_3(u_input.b, vec4<f32>(1000f, 912f, 219f, 3587f), Struct_1(u_input.b.x, 0u, u_input.b), u_input.a.x), arg_0)), 0i));
    var var_1 = Struct_1(_wgslsmith_dot_vec3_i32(min(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.c.x, 0i, 1i), var_0.c), _wgslsmith_mult_vec3_i32(vec3<i32>(-24506i, -1i, 0i), vec3<i32>(33531i, -1i, -1i))), u_input.b) | countOneBits(~32202i), ~4294967295u, vec3<i32>(u_input.b.x, -u_input.b.x << (~19192u % 32u), -1551i));
    var_1 = var_0;
    var var_2 = Struct_3(vec3<i32>(u_input.b.x, -(~select(-31151i, u_input.b.x, arg_0)), _wgslsmith_dot_vec2_i32(min(vec2<i32>(var_0.a, u_input.b.x), u_input.b.zx), -firstTrailingBit(vec2<i32>(var_0.c.x, -1i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-336f, -1000f, 779f, 1352f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-580f, 769f, -359f, -1171f), vec4<f32>(2083f, -1193f, -547f, -558f))), true)))), var_0, select(~var_0.b, var_0.b, !(!all(vec4<bool>(arg_0, false, arg_0, arg_0)))));
    var_1 = var_2.c;
    return vec3<f32>(1f, 1114f, -901f);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: vec3<i32>) -> Struct_3 {
    let var_0 = select(vec2<bool>(select(select(true, any(vec3<bool>(false, true, false)), arg_1.x > 644f), true, all(vec4<bool>(true, true, true, true))), true == !any(vec2<bool>(false, true))), vec2<bool>(true, true), true);
    let var_1 = !(!var_0.x);
    var var_2 = Struct_2(~(~u_input.a.zz), !select(select(vec4<bool>(var_0.x, true, var_1, var_0.x), vec4<bool>(var_0.x, var_1, var_0.x, true), !vec4<bool>(var_0.x, var_0.x, false, var_0.x)), vec4<bool>(true, any(vec4<bool>(var_1, var_0.x, true, false)), !var_0.x, var_1 && true), select(!vec4<bool>(true, var_1, var_1, var_0.x), vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_1, false))), Struct_1(u_input.b.x, _wgslsmith_mult_u32(~u_input.a.x, ~u_input.a.x) & 4294967295u, ~(~(arg_2 & arg_2))), Struct_1(_wgslsmith_dot_vec4_i32(~firstLeadingBit(vec4<i32>(arg_2.x, 1i, arg_2.x, 35509i)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.x, -4582i, -40215i, 4967i) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1810u) % vec4<u32>(32u)), ~vec4<i32>(1i, arg_2.x, arg_2.x, 2147483647i))), 4294967295u, select(-arg_2 << (~vec3<u32>(u_input.a.x, 4693u, 1u) % vec3<u32>(32u)), -(~vec3<i32>(-1i, 0i, 17007i)), !(!vec3<bool>(true, true, var_1)))));
    var var_3 = !any(select(vec2<bool>(arg_1.x <= 890f, false), vec2<bool>(all(var_2.b.xyz), var_1 || false), var_0));
    var_2 = Struct_2(vec2<u32>(7823u, abs(4294967295u ^ abs(var_2.c.b))), var_2.b, var_2.c, Struct_1(arg_2.x, ~4294967295u, vec3<i32>(-2147483647i, arg_2.x, -min(20887i, u_input.b.x))));
    return Struct_3(u_input.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0.x, 1945f))), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(563f + 2646f) - _wgslsmith_f_op_f32(arg_0.x + 700f)))), Struct_1(u_input.b.x << (~12027u % 32u), countOneBits(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(var_2.d.b, 55936u, u_input.a.x), ~u_input.a.x, ~var_2.c.b)), select(~vec3<i32>(-2147483647i, 24498i, -35552i), u_input.b | u_input.b, var_2.b.xwy) | abs(vec3<i32>(arg_2.x, var_2.c.a, u_input.b.x))), u_input.a.x);
}

fn func_1() -> Struct_3 {
    var var_0 = ~u_input.a;
    let var_1 = _wgslsmith_mod_u32(~2752u, var_0.x);
    return func_4(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-690f, 102f)))), -2036f)), _wgslsmith_f_op_f32(222f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-771f)), -401f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-153f + _wgslsmith_f_op_f32(-1557f + -849f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-212f, 467f, -1525f), vec3<f32>(-688f, -898f, -114f)))), _wgslsmith_f_op_vec3_f32(func_2(true))))), ~select(-vec3<i32>(11341i, u_input.b.x, -3113i) | u_input.b, vec3<i32>(u_input.b.x, _wgslsmith_sub_i32(u_input.b.x, 1i), _wgslsmith_mult_i32(u_input.b.x, u_input.b.x)), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false)));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec4<u32>, arg_3: u32) -> Struct_2 {
    var var_0 = Struct_2(vec2<u32>(0u, ~1u), select(vec4<bool>(!arg_1.x, any(select(vec3<bool>(true, false, true), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, arg_1.x))), !arg_1.x, true), select(vec4<bool>(arg_1.x || arg_1.x, any(vec3<bool>(arg_1.x, true, arg_1.x)), !arg_1.x, arg_0.d <= 1u), select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(true, false, arg_1.x, arg_1.x), select(vec4<bool>(false, arg_1.x, false, arg_1.x), vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x))), all(select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), arg_1))), !(!select(vec4<bool>(true, false, arg_1.x, false), vec4<bool>(false, false, false, arg_1.x), vec4<bool>(true, false, true, true)))), func_1().c, Struct_1(~arg_0.c.c.x, u_input.a.x >> (4294967295u % 32u), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, 1i, 54603i) & u_input.b, _wgslsmith_sub_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, u_input.b.x, arg_0.a.x)), arg_0.a)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(abs(-343f))) + arg_0.b.x));
    var_0 = Struct_2(vec2<u32>(~0u, 44625u), !var_0.b, arg_0.c, arg_0.c);
    var var_2 = func_4(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec3_f32(func_2(true)).x)), _wgslsmith_f_op_f32(func_1().b.x + arg_0.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x * arg_0.b.x) * _wgslsmith_f_op_f32(max(-3181f, var_1))), -486f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -1369f, _wgslsmith_f_op_f32(-var_1)) - _wgslsmith_f_op_vec3_f32(select(arg_0.b.xyx, vec3<f32>(_wgslsmith_f_op_f32(sign(-135f)), -443f, -1194f), var_0.b.x | true))), vec3<i32>(-_wgslsmith_dot_vec3_i32(-vec3<i32>(var_0.d.c.x, u_input.b.x, 22357i), vec3<i32>(var_0.c.c.x, var_0.d.c.x, 1i) | vec3<i32>(2147483647i, 1168i, u_input.b.x)), 0i, -35333i));
    let var_3 = arg_0;
    return Struct_2(var_0.a, !(!var_0.b), Struct_1(-var_0.c.a, arg_2.x, abs(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(var_0.d.c, var_2.c.c), func_4(var_3.b.yyw, arg_0.b.zxw, var_2.c.c).c.c))), func_1().c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(), vec3<bool>(false, true, true), vec4<u32>(1u, u_input.a.x, 43097u, ~1u), u_input.a.x);
    var var_1 = vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.yz, u_input.b.zx), max(countOneBits(vec2<i32>(-22358i, var_0.c.a)) | min(vec2<i32>(30610i, 9473i), vec2<i32>(u_input.b.x, var_0.c.a)), u_input.b.yz)), _wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(20418i), -10523i), u_input.b.yx), firstTrailingBit(-1i), func_3(Struct_3(_wgslsmith_div_vec3_i32(var_0.d.c, ~u_input.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(833f, -1303f, -1000f, 834f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-189f, -1046f, 461f, 250f) + vec4<f32>(-1000f, -2274f, 225f, -368f))), Struct_1(47525i | var_0.d.c.x, var_0.a.x, u_input.b), ~u_input.a.x >> (min(var_0.c.b, var_0.a.x) % 32u)), var_0.b.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f)));
    var_1 = ~countOneBits(-(min(vec4<i32>(u_input.b.x, var_1.x, 27177i, 1i), vec4<i32>(var_1.x, 0i, 2147483647i, u_input.b.x)) << (~u_input.a % vec4<u32>(32u))));
    let var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(abs(var_3.c.b), ~0u)), firstLeadingBit(var_3.a) ^ min(~vec2<u32>(9516u, var_3.c.b), vec2<u32>(0u, var_3.c.b))), ~(~abs(~vec2<u32>(var_0.d.b, var_0.a.x))), var_0.a.x, _wgslsmith_dot_vec2_u32(~min(u_input.a.ww << (u_input.a.yz % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(65449u, 0u), vec2<u32>(var_3.a.x, var_3.d.b))), vec2<u32>(u_input.a.x, var_3.c.b)), 142f);
}

