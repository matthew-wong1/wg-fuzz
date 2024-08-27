struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: u32,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: Struct_1,
    d: bool,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: vec4<bool>,
    d: i32,
    e: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> vec4<i32> {
    let var_0 = false;
    var var_1 = true;
    var var_2 = Struct_1(-reverseBits(select(vec4<i32>(u_input.d, -19060i, -1i, u_input.d) | vec4<i32>(-2147483647i, 33892i, 70196i, 0i), vec4<i32>(2147483647i, 0i, -1236i, u_input.c.x), any(vec3<bool>(var_0, var_0, var_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(743f, -268f, -579f, 1000f), vec4<f32>(887f, 980f, -1904f, 904f))) + vec4<f32>(551f, -537f, 613f, -1598f)))), ~0u, any(select(vec2<bool>(var_0, var_0), vec2<bool>(!var_0, select(false, var_0, var_0)), select(vec2<bool>(var_0, false), !vec2<bool>(false, var_0), !var_0))), u_input.e.wz);
    var_2 = Struct_1(_wgslsmith_mult_vec4_i32(~(var_2.a ^ vec4<i32>(1i, var_2.a.x, -42796i, 25869i)), select(min(vec4<i32>(0i, -2147483647i, u_input.c.x, var_2.a.x) | var_2.a, vec4<i32>(107570i, var_2.a.x, 36131i, -2147483647i) | vec4<i32>(u_input.a, 1i, 2147483647i, 7877i)), ~abs(vec4<i32>(u_input.d, 1i, 0i, u_input.d)), var_0 & var_2.d)), _wgslsmith_f_op_vec4_f32(select(var_2.b, var_2.b, any(vec3<bool>(true, false, u_input.c.x != -44400i)))), ~(~4294967295u), false, vec2<u32>(~_wgslsmith_add_u32(u_input.e.x, u_input.b), u_input.e.x));
    let var_3 = Struct_2(!(_wgslsmith_f_op_f32(1102f * 1142f) > var_2.b.x), vec2<bool>(all(!vec3<bool>(var_0, var_0, false)), var_0), Struct_1(var_2.a, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-var_2.b))), 0u << (~(~var_2.e.x) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)) >= 1200f, firstTrailingBit(var_2.e)), var_2.d, vec3<i32>(var_2.a.x, -1i, u_input.d));
    return -((_wgslsmith_sub_vec4_i32(vec4<i32>(var_3.e.x, 44667i, -17840i, u_input.c.x), vec4<i32>(36437i, u_input.c.x, u_input.c.x, 0i)) & var_2.a) >> (vec4<u32>(min(u_input.b, firstTrailingBit(var_2.c)), firstLeadingBit(firstTrailingBit(var_3.c.c)), var_2.e.x, _wgslsmith_div_u32(~var_2.e.x, _wgslsmith_add_u32(var_3.c.c, 4494u))) % vec4<u32>(32u)));
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> Struct_5 {
    var var_0 = ~(arg_0.c.a ^ _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(arg_0.e.x, 0i, 3789i, 48570i)), func_3()));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(arg_0.c.b.wwx)) * arg_0.c.b.xzz) - _wgslsmith_f_op_vec3_f32(-arg_0.c.b.wzz))));
    var_0 = -(~(-firstLeadingBit(vec4<i32>(-4772i, arg_0.c.a.x, u_input.d, 0i) | arg_0.c.a)));
    var_0 = arg_0.c.a;
    var_0 = vec4<i32>(-1i, u_input.c.x, _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_div_i32(var_0.x, arg_0.c.a.x), u_input.c.x), ~_wgslsmith_dot_vec2_i32(arg_0.c.a.yx, abs(arg_0.e.zx))), ~0i);
    return Struct_5(Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-206f, 359f)), vec2<f32>(arg_0.c.b.x, var_1.x))), _wgslsmith_clamp_vec4_u32(u_input.e, vec4<u32>(4907u, 0u, arg_0.c.c, 12216u), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.c.e.x, 17474u, 77643u, 293u), u_input.e)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1268f)))), max(arg_0.c.e, ~vec2<u32>(arg_0.c.c, u_input.b)), vec4<bool>(arg_0.d, !(-2147483647i > u_input.d), (arg_0.c.a.x != arg_0.e.x) || all(vec3<bool>(true, true, true)), false), u_input.a, arg_0.c.e.x), Struct_3(var_1.xz, vec4<u32>(~u_input.e.x, u_input.b | select(arg_0.c.e.x, 4294967295u, true), u_input.e.x, min(~4294967295u, 4294967295u | arg_0.c.c)), _wgslsmith_f_op_f32(-var_1.x)), Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(min(u_input.d, -2147483647i), ~1i, var_0.x & -30325i, 1i), ~(-vec4<i32>(u_input.c.x, -2147483647i, var_0.x, 25582i)), vec4<i32>(~var_0.x, -31382i, 20466i, firstLeadingBit(-15885i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(arg_0.c.b)) - vec4<f32>(390f, arg_0.c.b.x, arg_0.c.b.x, -1483f))), 0u ^ _wgslsmith_div_u32(54707u >> (arg_1 % 32u), max(1u, 1u)), all(select(vec4<bool>(arg_0.b.x, arg_0.c.d, arg_0.b.x, arg_0.a), !vec4<bool>(arg_0.a, true, false, true), !vec4<bool>(arg_0.d, true, arg_0.c.d, false))), max(u_input.e.yw, arg_0.c.e)), Struct_1(arg_0.c.a, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(arg_0.c.b + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.c.b.x, arg_0.c.b.x, 497f, 1497f)))))), 116884u, arg_0.d, select(~arg_0.c.e, _wgslsmith_mult_vec2_u32(arg_0.c.e, vec2<u32>(arg_1, 38146u)), vec2<bool>(false, any(vec4<bool>(arg_0.d, false, true, true))))), -arg_0.c.a);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: Struct_5) -> Struct_1 {
    let var_0 = Struct_1(arg_3.e, vec4<f32>(arg_3.c.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-259f - _wgslsmith_f_op_f32(f32(-1f) * -136f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.c))))), _wgslsmith_f_op_f32(arg_2.c - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.a.x - -1780f), arg_3.d.b.x))), -287f), ~arg_0.x, !any(arg_3.a.c.wz), arg_0.yx);
    let var_1 = arg_3.b.b.ywx;
    var var_2 = ~_wgslsmith_clamp_i32(countOneBits(func_3().x), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, var_0.a.x, u_input.d), _wgslsmith_add_vec4_i32(var_0.a, arg_3.c.a)), var_0.a.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_0.b), vec4<f32>(-296f, arg_3.d.b.x, -152f, _wgslsmith_f_op_f32(f32(-1f) * -272f)), -31812i > arg_3.e.x)))));
    var_2 = -countOneBits(var_0.a.x);
    return func_2(Struct_2(!var_0.d | false, vec2<bool>(true, arg_3.c.d), var_0, !(-698f == _wgslsmith_f_op_f32(ceil(var_3.x))), -vec3<i32>(-arg_3.e.x, 15753i, u_input.c.x & -1i)), var_1.x).c;
}

fn func_5(arg_0: Struct_2) -> Struct_5 {
    let var_0 = (arg_0.e.x & arg_0.e.x) << (4294967295u % 32u);
    var var_1 = select(func_2(arg_0, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(u_input.e, _wgslsmith_sub_vec4_u32(u_input.e, vec4<u32>(1u, arg_0.c.e.x, 49538u, arg_0.c.e.x))), max(1u, 12217u), func_2(arg_0, arg_0.c.c).a.e)).a.c.yzw, select(select(vec3<bool>(arg_0.c.d, arg_0.a, true & arg_0.a), vec3<bool>(arg_0.a, any(vec2<bool>(true, arg_0.b.x)), arg_0.a), !(9420i > var_0)), !select(select(vec3<bool>(true, false, false), vec3<bool>(true, arg_0.c.d, arg_0.d), vec3<bool>(false, true, false)), select(vec3<bool>(true, false, arg_0.d), vec3<bool>(arg_0.d, arg_0.b.x, false), vec3<bool>(arg_0.b.x, true, true)), 1u > arg_0.c.c), vec3<bool>(_wgslsmith_f_op_f32(arg_0.c.b.x + -711f) < _wgslsmith_f_op_f32(arg_0.c.b.x - 1000f), true, any(vec3<bool>(arg_0.a, true, arg_0.b.x)))), all(vec3<bool>(true, all(vec4<bool>(arg_0.c.d, true, arg_0.c.d, false)), arg_0.d)));
    var_1 = func_2(arg_0, arg_0.c.e.x).a.c.yzw;
    var var_2 = func_2(arg_0, _wgslsmith_mult_u32(reverseBits(~u_input.e.x), 0u)).b;
    var var_3 = vec4<i32>(countOneBits(u_input.d >> (firstTrailingBit(12953u) % 32u)), _wgslsmith_div_i32(_wgslsmith_add_i32(func_3().x, abs(-2147483647i)), u_input.a), ~u_input.c.x, 2147483647i);
    return func_2(arg_0, ~u_input.e.x & _wgslsmith_mod_u32(4294967295u, var_2.b.x));
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: f32) -> vec4<i32> {
    var var_0 = _wgslsmith_sub_i32(~(~(-arg_1.a.d)), -(i32(-1i) * -arg_1.e.x) >> (_wgslsmith_clamp_u32(reverseBits(arg_1.c.e.x | u_input.e.x), _wgslsmith_sub_u32(4294967295u, ~4294967295u), ~arg_1.b.b.x) % 32u));
    var_0 = 2147483647i;
    var_0 = -3172i;
    let var_1 = !select(select(select(select(arg_1.a.c, arg_1.a.c, arg_1.d.d), arg_1.a.c, vec4<bool>(false, true, true, arg_1.c.d)), !arg_1.a.c, !vec4<bool>(arg_1.d.d, arg_1.c.d, arg_1.d.d, arg_1.d.d)), !select(arg_1.a.c, vec4<bool>(false, true, arg_1.a.c.x, false), all(vec2<bool>(arg_1.d.d, true))), arg_1.a.c);
    let var_2 = arg_1.a;
    return _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(0i, 1i, u_input.d, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_1.e.xxy, vec3<i32>(arg_1.c.a.x, arg_1.c.a.x, u_input.c.x), vec3<i32>(-2147483647i, -2147483647i, u_input.a)), arg_1.d.a.yxz))), abs(vec4<i32>(-2147483647i, ~(-1i), 0i, -(2147483647i ^ arg_1.d.a.x))));
}

fn func_1(arg_0: i32) -> vec2<f32> {
    var var_0 = -1193f;
    var var_1 = func_6(u_input.e.xyy, func_5(Struct_2(false, select(vec2<bool>(false, false), vec2<bool>(true, true), false), func_4(u_input.e.yzz, vec3<bool>(true, true, true), Struct_3(vec2<f32>(1012f, 1570f), u_input.e, -1670f), func_2(Struct_2(false, vec2<bool>(false, false), Struct_1(vec4<i32>(2147483647i, arg_0, -2147483647i, u_input.a), vec4<f32>(1001f, 1056f, -897f, 181f), u_input.e.x, false, vec2<u32>(0u, 1794u)), true, vec3<i32>(53037i, 15381i, u_input.a)), u_input.b)), true, vec3<i32>(firstTrailingBit(u_input.c.x), 2147483647i, 1i))), 269f);
    var_1 = ~(-func_2(Struct_2(false, vec2<bool>(false, false), Struct_1(vec4<i32>(49261i, -2147483647i, u_input.c.x, 0i), vec4<f32>(669f, -933f, 1000f, -469f), u_input.b, true, vec2<u32>(u_input.b, u_input.e.x)), arg_0 == 6302i, vec3<i32>(-26259i, 2147483647i, 19758i)), 4294967295u).e);
    var var_2 = Struct_5(func_2(Struct_2(all(vec3<bool>(false, false, false)), !func_2(Struct_2(false, vec2<bool>(false, true), Struct_1(vec4<i32>(u_input.a, arg_0, var_1.x, u_input.c.x), vec4<f32>(-1010f, 577f, 404f, -187f), u_input.e.x, false, vec2<u32>(4294967295u, 1u)), true, var_1.xxw), u_input.b).a.c.xw, Struct_1(firstTrailingBit(vec4<i32>(arg_0, u_input.a, u_input.a, -2147483647i)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(702f, -572f, 1118f, -701f), vec4<f32>(-1039f, -1006f, -1207f, 1488f))), _wgslsmith_sub_u32(u_input.b, 0u), false, max(vec2<u32>(63292u, u_input.b), vec2<u32>(u_input.b, 3941u))), false, -var_1.zzz << (u_input.e.wzy % vec3<u32>(32u))), 0u).a, Struct_3(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(269f, -435f, true)), -331f)), _wgslsmith_f_op_f32(f32(-1f) * -612f)), vec4<u32>(~_wgslsmith_clamp_u32(u_input.b, u_input.e.x, u_input.e.x), func_5(Struct_2(false, vec2<bool>(false, false), Struct_1(vec4<i32>(var_1.x, arg_0, -1i, u_input.d), vec4<f32>(658f, 1142f, -2039f, 754f), u_input.e.x, false, vec2<u32>(36736u, u_input.e.x)), true, vec3<i32>(u_input.d, arg_0, arg_0))).a.b.x, firstLeadingBit(4294967295u) >> (max(0u, 0u) % 32u), u_input.e.x), _wgslsmith_f_op_f32(f32(-1f) * -708f)), Struct_1(vec4<i32>(_wgslsmith_sub_i32(arg_0, -2147483647i) << (u_input.e.x % 32u), _wgslsmith_mult_i32(-2147483647i | var_1.x, arg_0), -min(var_1.x, arg_0), u_input.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2348f, 120f, -472f, -228f), vec4<f32>(-591f, 661f, 296f, -722f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-131f, -1536f, 1507f, 1426f)))), 0u, all(vec4<bool>(true, func_5(Struct_2(false, vec2<bool>(false, false), Struct_1(vec4<i32>(-24384i, 0i, u_input.d, 10399i), vec4<f32>(398f, -574f, 735f, -439f), u_input.b, true, u_input.e.yx), true, vec3<i32>(31336i, 30355i, u_input.d))).a.c.x, false, false)), firstTrailingBit(max(u_input.e.yy, u_input.e.wy))), Struct_1(-select(-vec4<i32>(var_1.x, -24022i, u_input.c.x, 0i), vec4<i32>(2147483647i, -1i, 33794i, arg_0), true), _wgslsmith_div_vec4_f32(vec4<f32>(1f, _wgslsmith_div_f32(1463f, 250f), -1000f, 1306f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-721f, 1957f, -605f, -840f) - vec4<f32>(-295f, -751f, 125f, 1181f))))), _wgslsmith_dot_vec3_u32(countOneBits(~u_input.e.yzw), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.e.x), u_input.e.wwy, u_input.e.ywz) | vec3<u32>(1u, 1u, 52342u)), -33949i != arg_0, ~vec2<u32>(6378u, _wgslsmith_mod_u32(1u, u_input.b))), _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(~var_1.x, arg_0, max(var_1.x, 14527i), -arg_0)), func_6(func_2(Struct_2(false, vec2<bool>(false, true), Struct_1(vec4<i32>(12604i, arg_0, 1i, 54142i), vec4<f32>(561f, 471f, -302f, 1355f), 0u, true, vec2<u32>(u_input.e.x, u_input.b)), true, vec3<i32>(u_input.a, arg_0, u_input.a)), u_input.e.x).b.b.xww, func_2(Struct_2(true, vec2<bool>(true, true), Struct_1(vec4<i32>(-69663i, 43021i, -8412i, -29913i), vec4<f32>(-1907f, -655f, -910f, 810f), 80765u, false, u_input.e.wy), true, var_1.ywy), u_input.b), _wgslsmith_f_op_f32(floor(882f))) ^ _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-41880i, 1i, 8853i, 0i), vec4<i32>(arg_0, var_1.x, var_1.x, 1i)), vec4<i32>(var_1.x, -22962i, arg_0, 1146i) << (vec4<u32>(18295u, 1u, 0u, 4294967295u) % vec4<u32>(32u)))));
    let var_3 = !vec4<bool>(all(vec2<bool>(-1060f <= var_2.d.b.x, false && var_2.a.c.x)), 189f > _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a.a.a.x * var_2.b.a.x), _wgslsmith_f_op_f32(var_2.d.b.x * 442f)), !(!(var_2.a.c.x & true)), !var_2.c.d && false);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(622f, _wgslsmith_f_op_f32(-var_2.b.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(func_1(u_input.c.x))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(566f + _wgslsmith_f_op_f32(182f + 621f))), 405f));
    let var_1 = abs(_wgslsmith_mult_vec4_u32(vec4<u32>(56316u, ~_wgslsmith_div_u32(50573u, 36080u), _wgslsmith_sub_u32(~u_input.e.x, func_4(u_input.e.xxx, vec3<bool>(false, false, false), Struct_3(vec2<f32>(-1293f, var_0.x), u_input.e, -903f), Struct_5(Struct_4(Struct_3(var_0, u_input.e, var_0.x), vec2<u32>(108311u, u_input.e.x), vec4<bool>(true, true, false, true), 34114i, u_input.e.x), Struct_3(vec2<f32>(864f, var_0.x), u_input.e, var_0.x), Struct_1(vec4<i32>(u_input.c.x, 4717i, u_input.c.x, u_input.a), vec4<f32>(var_0.x, 342f, var_0.x, var_0.x), 58712u, false, vec2<u32>(163000u, 4294967295u)), Struct_1(vec4<i32>(0i, u_input.c.x, 2147483647i, -1i), vec4<f32>(var_0.x, -685f, var_0.x, 941f), 4294967295u, false, vec2<u32>(u_input.b, 4294967295u)), vec4<i32>(0i, -46195i, -10861i, 2147483647i))).e.x), ~(~29195u)), _wgslsmith_mod_vec4_u32(u_input.e, ~max(vec4<u32>(u_input.b, u_input.e.x, u_input.b, 105928u), u_input.e))));
    var var_2 = u_input.a;
    let var_3 = _wgslsmith_add_u32(7927u, 21059u);
    var var_4 = 1i;
    let var_5 = Struct_3(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-446f, var_0.x))), vec4<u32>(51715u, 1u, firstTrailingBit(4294967295u), 1u >> (select(var_1.x, abs(18534u), any(vec3<bool>(true, true, false))) % 32u)), _wgslsmith_f_op_f32(var_0.x - 1135f));
    let var_6 = -firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(52061i, u_input.a, 2147483647i, u_input.a), vec4<i32>(2336i, 6050i, u_input.a, 0i)) >> (vec4<u32>(_wgslsmith_div_u32(4294967295u, var_5.b.x), ~1u, 4294967295u, var_1.x) % vec4<u32>(32u)));
    var var_7 = func_2(Struct_2(all(select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true))), vec2<bool>(u_input.c.x > max(u_input.c.x, var_6.x), false), func_2(Struct_2(true, func_5(Struct_2(false, vec2<bool>(true, false), Struct_1(vec4<i32>(u_input.c.x, 33904i, 15664i, 48076i), vec4<f32>(var_0.x, var_0.x, 359f, var_5.c), var_1.x, true, vec2<u32>(1u, var_3)), true, var_6.wxz)).a.c.wy, func_4(vec3<u32>(var_1.x, 30112u, 0u), vec3<bool>(false, true, false), Struct_3(var_5.a, vec4<u32>(var_5.b.x, 1u, var_5.b.x, 0u), -720f), Struct_5(Struct_4(var_5, u_input.e.xw, vec4<bool>(true, true, false, false), var_6.x, u_input.e.x), var_5, Struct_1(vec4<i32>(2975i, -52404i, 0i, 12812i), vec4<f32>(-555f, var_0.x, 1198f, var_5.a.x), var_1.x, false, vec2<u32>(1u, 4294967295u)), Struct_1(vec4<i32>(u_input.c.x, u_input.c.x, var_6.x, var_6.x), vec4<f32>(-138f, 936f, var_0.x, var_5.c), var_3, true, var_5.b.zw), vec4<i32>(var_6.x, var_6.x, var_6.x, -1i))), true, ~var_6.zzz), 1u).c, true, func_6(u_input.e.yww << (_wgslsmith_div_vec3_u32(vec3<u32>(1u, var_5.b.x, 0u), var_1.wyx) % vec3<u32>(32u)), func_2(Struct_2(false, vec2<bool>(true, true), Struct_1(vec4<i32>(u_input.d, -21390i, u_input.d, 12903i), vec4<f32>(1885f, 341f, var_0.x, -1158f), var_5.b.x, true, u_input.e.zz), false, vec3<i32>(u_input.a, 50972i, u_input.c.x)), 28560u), -614f).yxz), ~(~countOneBits(4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(Struct_2(!(!var_7.c.d), select(vec2<bool>(true, var_7.c.d), vec2<bool>(var_7.d.d, var_7.a.c.x), vec2<bool>(var_7.d.d, var_7.d.d)), var_7.c, var_7.c.d, ~vec3<i32>(25745i, 31717i, var_7.a.d)), 83642u).d.a.xy, var_5.b, ~var_1.wxx, min(var_5.b, countOneBits(~vec4<u32>(24172u, var_7.d.c, var_7.c.e.x, var_5.b.x) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 56101u, 1u, 4294967295u), vec4<u32>(1u, u_input.e.x, var_3, 43470u)))), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(37230i, u_input.c.x, -2147483647i, var_6.x), vec4<i32>(-1i, var_7.d.a.x, u_input.d, -1i)), vec4<i32>(var_6.x, 0i, -var_6.x, 2147483647i | var_6.x)), u_input.a));
}

