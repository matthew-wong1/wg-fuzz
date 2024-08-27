struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: bool,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: f32) -> f32 {
    var var_0 = 0u != _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.d.x, 1u, 4294967295u, 27759u)), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 41444u, 1u, 22435u), vec4<u32>(u_input.d.x, 1u, 0u, 4294967295u)), ~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x)), min(select(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), false), countOneBits(vec4<u32>(151576u, u_input.d.x, 4294967295u, 35640u)))));
    var var_1 = Struct_2(Struct_1(vec4<f32>(-1524f, _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(min(arg_1, -135f))), -274f, 1106f), ~(~max(u_input.d.zy, u_input.d.yy)), _wgslsmith_sub_i32(u_input.b, select(-73017i, 7869i, all(vec3<bool>(arg_0, arg_0, false)))), vec3<u32>(~(~u_input.d.x), ~u_input.d.x, ~u_input.d.x), arg_0), ~(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.d.x, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), vec4<u32>(40703u, 1u, u_input.d.x, 4294967295u)))), any(select(vec4<bool>(true, arg_0, arg_0, false), !(!vec4<bool>(arg_0, arg_0, arg_0, false)), select(arg_0, arg_0, arg_0))), !vec4<bool>(arg_0, false, any(select(vec4<bool>(arg_0, true, true, true), vec4<bool>(arg_0, arg_0, arg_0, arg_0), arg_0)), ~4294967295u > ~u_input.d.x), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1503f, arg_1, -1000f, arg_1))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2260f, arg_1, 249f, arg_1))), ~_wgslsmith_add_vec2_u32(countOneBits(u_input.d.zy), ~u_input.d.zy), ~(_wgslsmith_sub_i32(-34164i, 23715i) ^ (u_input.a ^ -30254i)), select(u_input.d, vec3<u32>(u_input.d.x, u_input.d.x, 4294967295u), arg_0), true));
    var_1 = Struct_2(var_1.e, ~var_1.b, arg_0, var_1.d, var_1.e);
    var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.a.x, -2033f, arg_1, arg_1) + vec4<f32>(1028f, arg_1, -291f, 643f))), vec2<u32>(_wgslsmith_mult_u32(~36061u, var_1.a.b.x | var_1.e.b.x), var_1.a.b.x), _wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.c, u_input.a, u_input.c) >> (_wgslsmith_dot_vec2_u32(u_input.d.yx, vec2<u32>(u_input.d.x, var_1.a.b.x)) % 32u), -_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.c, -7177i, 994i, var_1.a.c), vec4<i32>(u_input.a, 32480i, 37914i, 8359i))), var_1.e.d, all(var_1.d.yw) && !all(var_1.d.www)), var_1.b, var_1.a.e, vec4<bool>(any(!(!var_1.d.yyw)), var_1.a.e, all(select(vec4<bool>(arg_0, false, false, true), vec4<bool>(true, true, var_1.d.x, false), true)), false), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, var_1.a.a.x, var_1.a.a.x, -637f) * var_1.a.a))), vec2<u32>(~u_input.d.x, _wgslsmith_div_u32(19952u, u_input.d.x)) ^ ~(vec2<u32>(var_1.a.b.x, 48428u) | vec2<u32>(30250u, var_1.e.d.x)), var_1.e.c, vec3<u32>(reverseBits(var_1.e.b.x), 32760u, 81777u), all(select(!var_1.d.wy, vec2<bool>(arg_0, arg_0), vec2<bool>(true, true)))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 * -1420f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.e.a.x + -561f), _wgslsmith_f_op_f32(step(arg_1, var_1.a.a.x))))));
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1392f + arg_0) - _wgslsmith_f_op_f32(397f - 1000f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(776f * 477f)) * arg_0)) - -363f);
    let var_1 = Struct_3(vec2<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0)), Struct_1(vec4<f32>(-282f, _wgslsmith_div_f32(-600f, arg_0), _wgslsmith_f_op_f32(func_3(true, -298f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - -518f)), ~(~abs(vec2<u32>(u_input.d.x, 4294967295u))), abs(firstTrailingBit(74319i | u_input.a)), ~(~vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x)), true), 491f, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, 1405f, arg_0, var_0))), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(60469u, 58150u), vec2<u32>(20821u, 0u)), max(u_input.d.xy, u_input.d.xy)), abs(0i), vec3<u32>(abs(u_input.d.x), u_input.d.x, ~86725u), any(vec4<bool>(true, false, true, true)) & false), abs(~vec4<u32>(u_input.d.x, 37589u, u_input.d.x, u_input.d.x) & vec4<u32>(u_input.d.x, 36548u, u_input.d.x, 0u)), any(select(vec2<bool>(false, true), vec2<bool>(true, false), true)), vec4<bool>(true, !any(vec2<bool>(true, true)), false, true), Struct_1(vec4<f32>(arg_0, _wgslsmith_f_op_f32(min(arg_0, arg_0)), _wgslsmith_f_op_f32(-var_0), -400f), vec2<u32>(max(60506u, 4294967295u), u_input.d.x), -firstTrailingBit(u_input.c), ~countOneBits(u_input.d), false)));
    var var_2 = Struct_1(var_1.b.a, countOneBits(vec2<u32>(69662u, var_1.d.e.d.x)), countOneBits(~(~(-1i))), var_1.b.d, var_1.b.e);
    let var_3 = -466f;
    var_2 = var_1.b;
    return _wgslsmith_mult_u32(~max(4294967295u, _wgslsmith_mod_u32(var_2.d.x, ~var_1.d.b.x)), var_2.d.x << (abs(firstTrailingBit(~1u)) % 32u));
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = 462f;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-182f + -1372f), -301f))), u_input.d.zx, -7011i, vec3<u32>(func_2(2525f), countOneBits(4294967295u), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 0u, 18457u), u_input.d)), true), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, 81773u, 93122u, u_input.d.x) ^ ~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 0u), vec4<u32>(u_input.d.x, 18735u, 1u, u_input.d.x) >> (~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 39510u) % vec4<u32>(32u)), ~vec4<u32>(u_input.d.x, u_input.d.x, 0u, u_input.d.x)), false, !vec4<bool>(any(vec2<bool>(true, true)), any(vec3<bool>(true, true, true)), true, true), Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(690f, 222f, var_0, var_0) * vec4<f32>(-1456f, var_0, -924f, -1242f)))))), u_input.d.xz, _wgslsmith_dot_vec2_i32(arg_0.xz, _wgslsmith_add_vec2_i32(max(vec2<i32>(u_input.a, 2147483647i), arg_0.zx), max(arg_0.xy, vec2<i32>(-2147483647i, -26625i)))), ~(~(~u_input.d)), any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), false))));
    var var_2 = var_1.a.e;
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_1.e.a.zy))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1206f, 588f) - var_1.e.a.yy) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1428f) - var_1.e.a.zy)))), Struct_1(var_1.a.a, select(~vec2<u32>(0u, var_1.a.d.x), ~var_1.b.ww, var_1.d.xy), ~(~firstTrailingBit(arg_0.x)), (u_input.d >> (vec3<u32>(1u, 1u, u_input.d.x) % vec3<u32>(32u))) ^ vec3<u32>(~u_input.d.x, 4294967295u, 13854u), (_wgslsmith_f_op_f32(322f + -1029f) <= _wgslsmith_div_f32(-589f, var_0)) && var_1.c), var_0, Struct_2(var_1.e, ~(~vec4<u32>(u_input.d.x, u_input.d.x, var_1.e.b.x, u_input.d.x)), !(var_1.d.x || !var_1.d.x), !(!var_1.d), var_1.e));
    var var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.e.a * var_3.d.a.a)), vec2<u32>(_wgslsmith_dot_vec2_u32(var_1.b.zw, countOneBits(var_3.b.d.zx)), ~0u), firstLeadingBit(i32(-1i) * -49302i), ~(vec3<u32>(1u, var_3.d.b.x, var_3.b.b.x) >> (_wgslsmith_clamp_vec3_u32(u_input.d, vec3<u32>(u_input.d.x, 18493u, 7891u), vec3<u32>(27352u, 39184u, 18216u)) % vec3<u32>(32u))), false), var_1.b, all(var_3.d.d.zw), select(vec4<bool>(all(vec3<bool>(var_1.a.e, var_3.b.e, var_3.b.e)) || false, all(var_3.d.d.xxw), true & var_3.b.e, !(var_3.b.e & var_1.e.e)), select(!select(vec4<bool>(var_1.c, false, var_3.d.e.e, true), vec4<bool>(false, true, var_3.d.e.e, var_1.d.x), var_1.d), vec4<bool>(true, false, var_1.c, var_1.e.e), all(vec3<bool>(var_1.a.e, var_1.e.e, var_1.c))), vec4<bool>(any(var_3.d.d.yx), false, !var_1.a.e, !(var_3.b.b.x > var_3.b.b.x))), var_1.a);
    return Struct_2(var_1.e, var_3.d.b, !(!all(var_4.d.yw)), var_4.d, var_4.e);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> Struct_2 {
    let var_0 = true;
    return func_1(vec3<i32>(2147483647i, arg_3.c, ~0i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(firstLeadingBit(~(~1u)) & firstTrailingBit(1u), func_1(firstTrailingBit(-_wgslsmith_mod_vec3_i32(vec3<i32>(1i, -1i, 0i), vec3<i32>(u_input.b, u_input.b, u_input.b)))), !(~u_input.c != min(1i, max(u_input.c, u_input.a))), Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1146f, 989f, -1000f, -800f), vec4<f32>(1743f, 1000f, -529f, 759f), vec4<bool>(false, false, true, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1258f, 814f, -806f, 1168f))))), u_input.d.yy, ~u_input.c, ~(~(vec3<u32>(u_input.d.x, 0u, u_input.d.x) & vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x))), func_1(firstLeadingBit(abs(vec3<i32>(-32850i, u_input.c, u_input.a)))).c));
    let var_1 = _wgslsmith_add_vec4_i32(-countOneBits(-vec4<i32>(var_0.e.c, u_input.a, var_0.a.c, var_0.e.c)), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -_wgslsmith_mult_i32(9607i, u_input.b), abs(-u_input.c), func_1(vec3<i32>(8128i, u_input.b, var_0.a.c)).e.c >> (0u % 32u)), _wgslsmith_clamp_vec4_i32((vec4<i32>(1i, u_input.c, u_input.a, -26632i) >> (var_0.b % vec4<u32>(32u))) >> (_wgslsmith_add_vec4_u32(var_0.b, var_0.b) % vec4<u32>(32u)), vec4<i32>(17348i, _wgslsmith_clamp_i32(-1i, var_0.e.c, 1115i), -43248i, -31298i), vec4<i32>(_wgslsmith_mult_i32(-23797i, 32386i), 69111i, reverseBits(-1i), 2147483647i))));
    var var_2 = 2147483647i;
    var_2 = 1i;
    var_2 = firstTrailingBit(-u_input.a);
    let var_3 = ~reverseBits(1i);
    var var_4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(-604f, reverseBits(var_1.zw));
}

