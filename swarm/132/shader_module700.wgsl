struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec2<bool>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: bool,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: u32,
    d: Struct_3,
    e: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: vec3<bool>,
    c: Struct_4,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<bool>) -> bool {
    let var_0 = arg_0.e.e.zx;
    var var_1 = 2147483647i;
    var_1 = ~_wgslsmith_clamp_i32(select(firstLeadingBit(-1i), 39650i, !arg_1.x) ^ u_input.e, ~36398i, -2147483647i);
    let var_2 = (i32(-1i) * -u_input.e) >= abs(var_0.x);
    var var_3 = vec3<bool>(true, arg_0.e.c.c.x, false);
    return arg_0.e.c.d;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: f32, arg_3: vec4<bool>) -> vec4<u32> {
    let var_0 = ~u_input.b <= ~_wgslsmith_mod_u32(u_input.d, 49651u);
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, arg_2, arg_2, 1474f)))), vec4<f32>(_wgslsmith_div_f32(arg_2, arg_0.a.x), -1000f, _wgslsmith_f_op_f32(round(arg_2)), -1148f))), 0i, arg_3.yy, !func_3(Struct_4(Struct_1(vec4<f32>(-927f, arg_2, arg_2, -1190f), -8321i, vec2<bool>(false, var_0), true, arg_0.a.www), Struct_3(Struct_2(Struct_1(arg_0.a, 64827i, arg_3.xz, false, arg_0.a.zzz), vec4<i32>(1i, u_input.a, 21154i, -1i), arg_0.a, Struct_1(vec4<f32>(1052f, arg_0.e.x, arg_2, 968f), -2147483647i, vec2<bool>(arg_3.x, arg_3.x), true, arg_0.e)), false, arg_0, arg_3.x, vec3<i32>(u_input.e, u_input.e, 1i)), u_input.d, Struct_3(Struct_2(Struct_1(vec4<f32>(793f, arg_0.a.x, arg_2, arg_0.a.x), u_input.a, vec2<bool>(arg_0.d, false), arg_3.x, vec3<f32>(813f, -247f, 121f)), vec4<i32>(-2147483647i, 2147483647i, arg_0.b, -1i), arg_0.a, arg_0), false, arg_0, false, vec3<i32>(arg_0.b, -2147483647i, arg_1.x)), Struct_3(Struct_2(Struct_1(vec4<f32>(-1382f, arg_0.e.x, arg_2, 1259f), 78103i, arg_0.c, false, vec3<f32>(-1066f, arg_2, arg_0.e.x)), vec4<i32>(u_input.a, 1i, u_input.e, -2147483647i), vec4<f32>(arg_2, 606f, -347f, -477f), arg_0), true, Struct_1(vec4<f32>(arg_0.e.x, 966f, -302f, 130f), 0i, vec2<bool>(false, false), arg_3.x, vec3<f32>(arg_2, 554f, 449f)), arg_0.d, vec3<i32>(u_input.e, 13851i, u_input.a))), select(vec2<bool>(arg_3.x, arg_3.x), vec2<bool>(true, true), arg_0.c.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a.xyy), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.e, vec3<f32>(arg_2, 1091f, 852f)) - _wgslsmith_div_vec3_f32(arg_0.e, vec3<f32>(arg_0.e.x, -1000f, arg_0.a.x))))), Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-arg_0.a), arg_0.b, select(vec2<bool>(true, arg_3.x), arg_3.xy, true), false, _wgslsmith_f_op_vec3_f32(trunc(arg_0.a.wxz))), vec4<i32>(-46765i, arg_1.x, u_input.e & -21830i, reverseBits(-1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2, arg_2, -892f, arg_0.a.x)))), arg_0), false, arg_0, !any(select(vec4<bool>(arg_3.x, true, arg_3.x, true), arg_3, arg_3)), -firstLeadingBit(vec3<i32>(1i, arg_0.b, 12271i) | vec3<i32>(6611i, 42953i, u_input.a))), 4294967295u, Struct_3(Struct_2(Struct_1(arg_0.a, 2147483647i, arg_0.c, func_3(Struct_4(Struct_1(arg_0.a, -39756i, arg_0.c, false, vec3<f32>(arg_0.e.x, arg_2, arg_0.a.x)), Struct_3(Struct_2(Struct_1(vec4<f32>(arg_2, arg_2, 1335f, arg_2), -12897i, vec2<bool>(arg_0.c.x, arg_0.d), arg_0.d, arg_0.a.wzx), vec4<i32>(-2147483647i, arg_0.b, arg_1.x, arg_0.b), vec4<f32>(1438f, -1000f, -1267f, arg_2), Struct_1(arg_0.a, arg_0.b, vec2<bool>(arg_0.d, false), arg_0.c.x, vec3<f32>(arg_0.e.x, arg_0.e.x, arg_2))), var_0, Struct_1(arg_0.a, u_input.a, vec2<bool>(arg_3.x, true), arg_0.c.x, arg_0.e), var_0, vec3<i32>(arg_0.b, 5465i, arg_1.x)), 14450u, Struct_3(Struct_2(arg_0, vec4<i32>(arg_0.b, 1445i, 1i, arg_0.b), arg_0.a, Struct_1(arg_0.a, arg_1.x, arg_3.yx, true, vec3<f32>(-504f, 1396f, arg_2))), false, arg_0, true, vec3<i32>(arg_0.b, -21351i, -17619i)), Struct_3(Struct_2(Struct_1(arg_0.a, arg_0.b, vec2<bool>(arg_0.d, arg_0.d), false, arg_0.e), vec4<i32>(-32895i, u_input.a, arg_1.x, arg_1.x), arg_0.a, arg_0), var_0, Struct_1(vec4<f32>(-667f, 1281f, arg_0.e.x, arg_0.a.x), u_input.a, vec2<bool>(var_0, false), arg_0.c.x, vec3<f32>(636f, -672f, -766f)), arg_3.x, vec3<i32>(arg_0.b, -20452i, -1i))), vec2<bool>(arg_0.c.x, arg_0.d)), _wgslsmith_f_op_vec3_f32(-arg_0.e)), select(select(vec4<i32>(0i, u_input.e, -1i, arg_0.b), vec4<i32>(-2147483647i, arg_0.b, 27278i, arg_1.x), true), vec4<i32>(-2147483647i, -19108i, u_input.a, arg_1.x) | vec4<i32>(-1i, arg_0.b, u_input.e, arg_0.b), true), _wgslsmith_f_op_vec4_f32(-arg_0.a), arg_0), var_0, Struct_1(arg_0.a, -2147483647i, select(!vec2<bool>(true, arg_0.c.x), !arg_3.yx, select(vec2<bool>(var_0, arg_3.x), vec2<bool>(false, arg_0.c.x), arg_0.c)), arg_3.x, arg_0.a.xzy), true, vec3<i32>(_wgslsmith_dot_vec2_i32(arg_1, vec2<i32>(-2347i, 28520i)), arg_1.x, -8034i >> (_wgslsmith_sub_u32(17933u, u_input.c.x) % 32u))), Struct_3(Struct_2(arg_0, _wgslsmith_add_vec4_i32(select(vec4<i32>(-1i, -6511i, arg_1.x, arg_0.b), vec4<i32>(u_input.e, 3938i, -2147483647i, 54252i), arg_3), vec4<i32>(-2147483647i, 0i, 1i, u_input.a) ^ vec4<i32>(-28664i, u_input.e, u_input.a, arg_1.x)), _wgslsmith_f_op_vec4_f32(step(arg_0.a, vec4<f32>(arg_0.e.x, 689f, arg_2, 746f))), Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2, -1045f, 836f, 284f))), arg_1.x, arg_0.c, !var_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, arg_2, arg_2) - vec3<f32>(-436f, 552f, arg_0.e.x)))), any(arg_3.xxx), Struct_1(arg_0.a, _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a, arg_0.b), arg_0.b ^ arg_0.b), select(vec2<bool>(true, true), arg_3.wx, arg_0.c), true, _wgslsmith_f_op_vec3_f32(vec3<f32>(1388f, arg_0.e.x, -1357f) - vec3<f32>(-152f, arg_0.a.x, -2543f))), any(arg_3.yx), -(~select(vec3<i32>(23787i, -2147483647i, 26278i), vec3<i32>(12297i, u_input.a, -9534i), vec3<bool>(false, arg_0.c.x, var_0)))));
    var var_2 = Struct_4(Struct_1(var_1.d.a.c, ~(-1i >> (_wgslsmith_dot_vec2_u32(u_input.c.xz, u_input.c.yz) % 32u)), var_1.e.c.c, arg_0.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.e.c.a.x, var_1.a.a.x, 613f)), vec3<f32>(-220f, -1000f, arg_2))))), var_1.e, _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.b, 51897u ^ var_1.c) & (~1u ^ ~u_input.d), max(14000u, u_input.c.x)), Struct_3(var_1.e.a, select(true, true || all(arg_3), arg_0.d), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(var_1.d.a.d.a.x * -1811f), arg_0.a.x, _wgslsmith_f_op_f32(-232f - -895f), _wgslsmith_f_op_f32(step(332f, 1541f))), ~arg_1.x, select(arg_0.c, arg_0.c, !arg_0.c), ~var_1.c > 1u, arg_0.e), !(arg_2 > 2339f), vec3<i32>(abs(1i), -(arg_1.x ^ u_input.a), arg_1.x)), var_1.e);
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.e.a.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.b.c.e.x)) - 1f), _wgslsmith_f_op_f32(ceil(arg_0.e.x))));
    var var_4 = -countOneBits(-(vec4<i32>(-49556i, var_2.d.e.x, arg_1.x, -1i) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(35521u, 0u, 1u, 13284u), vec4<u32>(0u, 1u, var_2.c, u_input.c.x)) % vec4<u32>(32u))));
    return vec4<u32>(~(~u_input.d), _wgslsmith_clamp_u32(u_input.c.x, var_2.c, _wgslsmith_div_u32(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.c, 0u, 4294967295u, 1114u), reverseBits(vec4<u32>(1u, var_2.c, 1u, 4294967295u))))), ~select(u_input.d, max(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), u_input.c.zz)), false), 16670u);
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    var var_0 = ~_wgslsmith_mult_vec4_u32(reverseBits(func_2(Struct_1(vec4<f32>(125f, -1074f, -941f, -397f), -1i, vec2<bool>(true, false), true, vec3<f32>(-942f, 656f, 212f)), select(vec2<i32>(-2147483647i, u_input.e), vec2<i32>(31262i, 2147483647i), vec2<bool>(true, false)), 449f, vec4<bool>(true, true, true, true))), _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(14846u, u_input.c.x, u_input.d, 64048u)) >> (vec4<u32>(arg_0.x, arg_0.x, 675u, arg_0.x) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(1336u, 59878u, 1u, 1u))));
    var_0 = max(vec4<u32>(u_input.c.x, ~min(1u, var_0.x), 13438u, u_input.d), vec4<u32>(1u, ~0u, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 0u, u_input.c.x, 2543u) << (vec4<u32>(46433u, arg_0.x, arg_0.x, arg_0.x) % vec4<u32>(32u)), min(vec4<u32>(0u, 7886u, u_input.d, 74812u), vec4<u32>(0u, 0u, 41430u, u_input.b))), var_0.x), arg_0.x));
    var_0 = ~_wgslsmith_div_vec4_u32(abs(vec4<u32>(28493u, u_input.c.x, var_0.x, 49430u) << (vec4<u32>(arg_0.x, 1u, 100506u, 52890u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(19976u, arg_0.x, 1u, 35062u)), select(vec4<u32>(u_input.b, arg_0.x, 0u, var_0.x), vec4<u32>(19529u, var_0.x, 1u, 4294967295u), true), ~vec4<u32>(7657u, u_input.b, 39765u, var_0.x))) << (vec4<u32>(reverseBits(_wgslsmith_sub_u32(_wgslsmith_mult_u32(76055u, 37360u), 1582u)), func_2(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(116f, 2267f, 720f, 196f))), i32(-1i) * -2147483647i, vec2<bool>(true, true), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1191f, -1227f, -907f))), select(vec2<i32>(u_input.e, u_input.a), vec2<i32>(16161i, 0i), false) | _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 51460i), vec2<i32>(0i, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1486f))), vec4<bool>(true, true, all(vec3<bool>(true, false, false)), false)).x, _wgslsmith_clamp_u32(1u, var_0.x, var_0.x), arg_0.x >> (1u % 32u)) % vec4<u32>(32u));
    let var_1 = vec3<bool>(false, false || (true && all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true)))), true);
    var var_2 = u_input.e;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1402f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(676f, -1000f)))) + 1f)));
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: vec2<f32>) -> Struct_4 {
    var var_0 = ~(-1i);
    var_0 = -(~u_input.e);
    var var_1 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x + 159f), arg_2.x), _wgslsmith_f_op_f32(-arg_0), -1250f, _wgslsmith_f_op_f32(1475f - _wgslsmith_f_op_f32(arg_2.x - 1807f))), _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.e, u_input.a), _wgslsmith_clamp_i32(u_input.e, 37564i, u_input.a)), u_input.e << (1u % 32u)), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-229f, -330f, arg_0))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_2.x, 1034f) + vec3<f32>(-2532f, arg_0, arg_0))))), vec4<i32>(-1i) * -countOneBits(vec4<i32>(u_input.a, 26225i, -29339i, -2147483647i)), vec4<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(arg_1.wz)), arg_2.x)) + arg_0), _wgslsmith_f_op_f32(-885f * arg_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) + arg_0)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -624f, arg_0, arg_0))))), u_input.e, vec2<bool>(true != all(vec3<bool>(true, false, false)), false), !any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true))), vec3<f32>(-3223f, _wgslsmith_f_op_f32(-1000f - arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1162f * arg_0)))));
    var_0 = 0i;
    var var_2 = _wgslsmith_clamp_vec3_u32(u_input.c, vec3<u32>(u_input.d, ~u_input.d, u_input.c.x), ~abs(~max(arg_1.zxy, arg_1.yyy)));
    return Struct_4(Struct_1(var_1.c, var_1.a.b ^ var_1.d.b, !var_1.a.c, var_1.a.c.x & false, var_1.c.yyy), Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_2.x, 360f, 1033f)), var_1.a.b, var_1.a.c, all(vec4<bool>(true, true, false, var_1.a.d)), _wgslsmith_f_op_vec3_f32(exp2(var_1.a.a.wxy))), var_1.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.c), vec4<f32>(arg_0, arg_2.x, arg_0, arg_0)), var_1.d), !var_1.a.d, var_1.d, !(var_1.a.b != var_1.b.x) && true, vec3<i32>(-1i, ~(1i << (0u % 32u)), -1i)), 0u ^ u_input.d, Struct_3(Struct_2(var_1.d, -vec4<i32>(var_1.d.b, var_1.a.b, 0i, var_1.b.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, -851f, var_1.c.x, arg_2.x) + var_1.a.a))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1344f, var_1.c.x, arg_0, -577f)), u_input.e, select(vec2<bool>(var_1.d.d, true), vec2<bool>(var_1.d.c.x, var_1.a.c.x), true), all(var_1.a.c), var_1.d.a.xyz)), true, var_1.a, var_1.d.d, _wgslsmith_add_vec3_i32(var_1.b.zxy, var_1.b.zzz)), Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-var_1.d.a), 1i, vec2<bool>(var_1.d.d, var_1.a.d), var_1.a.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.a.x, 488f, arg_0))), select(var_1.b, var_1.b, true) & vec4<i32>(var_1.a.b, var_1.d.b, var_1.b.x, var_1.a.b), vec4<f32>(-1380f, _wgslsmith_f_op_f32(step(arg_2.x, var_1.d.a.x)), _wgslsmith_f_op_f32(trunc(-660f)), _wgslsmith_f_op_f32(sign(103f))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_0, -380f, 773f)), ~(-2147483647i), var_1.d.c, true, var_1.d.a.zyy)), !var_1.d.d, var_1.a, var_1.a.c.x, max(_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.e, u_input.e, -2147483647i), ~var_1.b.wyx), vec3<i32>(var_1.a.b, u_input.a, -2147483647i) << (_wgslsmith_add_vec3_u32(vec3<u32>(var_2.x, 1u, 39283u), vec3<u32>(arg_1.x, 31821u, u_input.d)) % vec3<u32>(32u)))));
}

fn func_5(arg_0: Struct_4, arg_1: vec2<i32>) -> Struct_4 {
    var var_0 = _wgslsmith_clamp_i32(2147483647i, ~(-21304i), ~_wgslsmith_add_i32((14336i | arg_0.b.e.x) << (arg_0.c % 32u), -2147483647i));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(firstTrailingBit(vec2<u32>(4294967295u, u_input.d)))))), firstTrailingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, u_input.b, u_input.c.x, 25396u), vec4<u32>(1u, u_input.c.x, u_input.c.x, u_input.d)), select(vec4<u32>(u_input.c.x, 2247u, 4429u, 25332u), vec4<u32>(4294967295u, 27985u, 0u, u_input.d), false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(434f, -1466f)) - vec2<f32>(282f, 266f))), vec2<i32>(-_wgslsmith_mod_i32(u_input.a, 1i), _wgslsmith_clamp_i32(firstTrailingBit(u_input.e), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.e, -2147483647i, u_input.a, -19939i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.e, u_input.e, -1i), vec4<i32>(35505i, u_input.a, -1i, -14616i))), -_wgslsmith_dot_vec2_i32(vec2<i32>(43627i, u_input.e), vec2<i32>(u_input.a, u_input.a)))));
    let var_1 = var_0.d;
    var var_2 = Struct_4(var_0.a, func_4(_wgslsmith_f_op_f32(max(var_0.d.a.c.x, -1613f)), vec4<u32>(~(~var_0.c), func_2(var_1.a.d, ~var_1.a.b.xx, _wgslsmith_f_op_f32(-var_1.a.d.a.x), select(vec4<bool>(var_0.e.d, true, false, var_1.b), vec4<bool>(var_1.a.d.c.x, var_0.b.a.a.c.x, var_1.d, false), vec4<bool>(var_1.d, var_0.a.d, var_1.c.d, var_1.b))).x, 1u, 35270u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.c.a.x * 998f), _wgslsmith_f_op_f32(max(1124f, 1000f))))).e, _wgslsmith_mult_u32(min(abs(1u), abs(0u)) << (func_5(func_5(Struct_4(var_1.a.a, Struct_3(var_1.a, var_1.b, Struct_1(var_0.b.a.a.a, var_0.d.e.x, var_0.b.a.d.c, false, var_1.a.a.a.wzx), false, vec3<i32>(var_1.c.b, u_input.e, var_1.a.b.x)), 4294967295u, var_0.d, var_0.b), var_1.e.zz), ~vec2<i32>(var_0.d.a.b.x, -2147483647i)).c % 32u), var_0.c), Struct_3(func_5(func_5(Struct_4(Struct_1(vec4<f32>(var_1.c.e.x, var_1.a.a.e.x, var_1.c.e.x, -183f), var_1.c.b, var_1.c.c, var_0.e.d, vec3<f32>(var_1.a.c.x, 1000f, -587f)), Struct_3(var_0.e.a, false, Struct_1(var_0.a.a, 52572i, vec2<bool>(var_0.b.a.d.c.x, true), var_1.a.d.d, vec3<f32>(var_1.a.d.a.x, var_1.c.e.x, var_1.a.a.e.x)), false, var_1.e), 0u, Struct_3(Struct_2(var_0.a, var_0.b.a.b, vec4<f32>(-1987f, var_1.a.a.a.x, 770f, 1044f), var_0.a), var_1.a.a.d, var_0.a, true, vec3<i32>(1i, 31315i, 1i)), var_0.d), firstTrailingBit(var_0.d.a.b.xw)), min(vec2<i32>(var_1.a.a.b, u_input.a), var_0.d.a.b.xz)).e.a, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.e.x - var_0.d.a.c.x)), ~vec4<u32>(var_0.c, var_0.c, u_input.b, 47919u) ^ vec4<u32>(4294967295u, u_input.c.x, 1u, 4294967295u), _wgslsmith_f_op_vec2_f32(var_1.a.d.e.xx * var_1.c.a.zw)).b.c.c.x, var_0.a, false && (true && var_0.d.b), min(var_1.a.b.wxy | vec3<i32>(-42888i, var_0.e.a.a.b, u_input.e), vec3<i32>(10919i, var_1.e.x, var_0.e.e.x)) << (~u_input.c % vec3<u32>(32u))), func_5(func_4(-344f, vec4<u32>(87384u, 31197u, func_4(1317f, vec4<u32>(87734u, var_0.c, 27334u, 34038u), vec2<f32>(-797f, 170f)).c, 36208u), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1602f, var_0.b.c.a.x), vec2<f32>(var_1.c.a.x, 108f)))))), vec2<i32>(u_input.a, func_5(Struct_4(Struct_1(vec4<f32>(var_0.d.a.c.x, var_1.a.d.e.x, 501f, 636f), 0i, var_1.a.a.c, true, vec3<f32>(493f, -1782f, 1886f)), Struct_3(var_0.d.a, var_0.e.b, Struct_1(vec4<f32>(-401f, var_0.a.e.x, var_0.d.a.a.a.x, -482f), 1i, var_1.a.d.c, true, var_0.e.a.a.a.xwy), true, var_0.e.e), var_0.c, Struct_3(Struct_2(var_1.c, vec4<i32>(67096i, 1i, 0i, 17457i), var_1.a.c, var_0.d.a.a), var_1.c.c.x, Struct_1(vec4<f32>(var_1.a.c.x, 1634f, 954f, 264f), var_1.e.x, vec2<bool>(var_0.b.d, var_0.a.c.x), var_0.d.c.d, vec3<f32>(1134f, 199f, var_1.a.c.x)), var_1.c.c.x, var_0.b.e), var_0.b), reverseBits(var_1.e.xy)).e.c.b)).d);
    var var_3 = var_2.b;
    var_0 = func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.c.a.x + 430f)), -813f))), reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, var_2.c, var_0.c, 55109u), vec4<u32>(0u, 19655u, 4294967295u, var_0.c))) << (~vec4<u32>(~var_0.c, 1u, _wgslsmith_sub_u32(4294967295u, var_0.c), 1u) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(var_2.d.a.a.e.yz * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.a.x, -1000f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.c.e.x, -519f) - _wgslsmith_f_op_f32(step(var_1.a.c.x, -813f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-410f)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(var_3.a.a.e.x - -1172f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(791f, -471f))) * var_2.a.e.zx)), var_3.c.a, abs(~func_4(1358f, firstTrailingBit(vec4<u32>(var_2.c, 30387u, 30227u, 4294967295u)), var_1.c.e.yx).d.a.b.xzx));
}

