struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<bool>,
    d: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec2<i32>) -> vec3<bool> {
    return vec3<bool>(true, all(vec2<bool>(true, true)), true);
}

fn func_3() -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(198f + -996f), _wgslsmith_f_op_f32(f32(-1f) * -566f), _wgslsmith_f_op_f32(sign(1057f)), _wgslsmith_f_op_f32(-173f * 1364f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1918f, 699f, 1000f, 615f), vec4<f32>(-1150f, 554f, 782f, 928f), true))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -102f), -870f, _wgslsmith_f_op_f32(f32(-1f) * -294f), _wgslsmith_f_op_f32(756f - -1074f))), true)), _wgslsmith_div_vec2_i32(vec2<i32>(abs(i32(-1i) * -1i), 0i), (vec2<i32>(9742i, 0i) << ((u_input.a & vec2<u32>(199u, 0u)) % vec2<u32>(32u))) & ~(~vec2<i32>(0i, -19326i))), 0i, select(select(!select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true), select(false, all(vec2<bool>(false, false)), true)), vec2<bool>(true, _wgslsmith_f_op_f32(floor(-1098f)) != _wgslsmith_f_op_f32(ceil(-411f))), false));
    var var_1 = !var_0.d.x;
    var var_2 = ~countOneBits(firstTrailingBit(vec2<i32>(i32(-1i) * -7970i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_0.b.x, var_0.b.x, var_0.c), vec4<i32>(var_0.b.x, var_0.b.x, var_0.b.x, 10608i)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.a.xwz, vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, 384f, 768f) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a.x, var_0.a.x, 380f)))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a.x, 267f, 1000f)))))), all(vec3<bool>(true, true, true || var_0.d.x)))));
    var_2 = -vec2<i32>(-min(var_0.c ^ -30361i, var_0.c), i32(-1i) * -var_0.b.x);
    return -(abs(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, -8465i), vec3<i32>(0i, var_0.b.x, 41637i)), _wgslsmith_dot_vec2_i32(var_0.b, vec2<i32>(0i, -2147483647i)))) | _wgslsmith_div_i32(var_2.x, _wgslsmith_mult_i32(i32(-1i) * -37404i, min(var_0.b.x, var_0.b.x))));
}

fn func_4(arg_0: i32) -> u32 {
    let var_0 = firstLeadingBit(select(vec2<u32>(select(~1u, countOneBits(u_input.c.x), all(vec2<bool>(false, true))), ~1u), _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.b.x, u_input.a.x), ~u_input.a & u_input.a), !select(func_1(vec2<i32>(arg_0, arg_0)).xy, vec2<bool>(true, false), vec2<bool>(true, true))));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(403f, 1615f, 1000f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(471f, -301f, -606f)) * _wgslsmith_div_vec3_f32(vec3<f32>(1990f, -1846f, -393f), vec3<f32>(-1374f, -435f, -294f))) + vec3<f32>(1f, 1f, 1f))));
    let var_2 = Struct_2(Struct_1(vec4<f32>(-797f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(134f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-262f, var_1.x))), var_1.x), _wgslsmith_sub_vec2_i32(-vec2<i32>(-2147483647i, arg_0), vec2<i32>(~arg_0, arg_0)), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(-1i, 2147483647i), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0, -7400i), vec2<i32>(2195i, 42852i), vec2<i32>(arg_0, arg_0))), vec2<i32>(39787i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, arg_0), vec4<i32>(-1i, -30560i, -18210i, -26064i)))), vec2<bool>(true, true)), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(min(u_input.c.wyz, vec3<u32>(var_0.x, 9590u, u_input.c.x)), u_input.c.xzy), max(var_0.x, 9916u)), (_wgslsmith_clamp_u32(1u, u_input.c.x, 1719u) ^ _wgslsmith_mod_u32(var_0.x, var_0.x)) ^ 19885u, _wgslsmith_mult_u32(0u, u_input.b.x)), vec3<bool>(select(all(vec2<bool>(true, true)), false, !any(vec3<bool>(false, false, true))), true, !(all(vec2<bool>(false, false)) || all(vec4<bool>(true, false, false, false)))), u_input.a.x);
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.a.a.xzz - var_2.a.a.zwy) - vec3<f32>(var_2.a.a.x, var_2.a.a.x, _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(round(-1167f)), var_2.a.d.x))));
    let var_3 = vec3<u32>(var_0.x, _wgslsmith_div_u32(~reverseBits(var_2.b.x), abs(select(u_input.b.x, u_input.a.x, var_2.a.d.x))) << (4294967295u % 32u), var_0.x);
    return var_0.x | var_2.d;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_3) -> Struct_3 {
    var var_0 = func_4(func_3());
    let var_1 = _wgslsmith_dot_vec3_i32(arg_0, ~(~(arg_0 ^ arg_0) | -_wgslsmith_mod_vec3_i32(vec3<i32>(arg_3.b.c, arg_3.b.b.x, arg_2.b.c), arg_0)));
    var var_2 = arg_1.c;
    var_0 = 0u;
    let var_3 = vec3<bool>(!(_wgslsmith_f_op_f32(exp2(arg_2.a)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.b.a.x, arg_1.b.a.x)))), true, any(vec3<bool>(arg_1.c, arg_1.b.c <= arg_3.b.c, _wgslsmith_clamp_u32(u_input.b.x, u_input.a.x, 53180u) >= u_input.c.x)));
    return Struct_3(arg_3.a, arg_1.b, all(vec4<bool>(false, false, true, any(select(vec4<bool>(var_3.x, true, true, true), vec4<bool>(arg_2.c, false, true, true), vec4<bool>(true, arg_3.c, true, true))))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: u32, arg_3: vec3<f32>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(arg_0.b.a.zy * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.a.a.wz)));
    let var_1 = func_2(vec3<i32>(-1i, ~0i, arg_0.b.c), Struct_3(_wgslsmith_f_op_f32(trunc(-1453f)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.b.a + vec4<f32>(1047f, var_0.x, var_0.x, 424f)) + _wgslsmith_f_op_vec4_f32(-arg_1.a.a)), ~vec2<i32>(arg_1.a.b.x, -19993i), func_2(_wgslsmith_mod_vec3_i32(vec3<i32>(60283i, arg_1.a.c, arg_1.a.c), vec3<i32>(-2147483647i, arg_0.b.c, 1i)), Struct_3(2771f, arg_1.a, false), func_2(vec3<i32>(1i, arg_0.b.b.x, -1i), Struct_3(-1000f, Struct_1(vec4<f32>(arg_3.x, -1449f, 304f, var_0.x), vec2<i32>(arg_0.b.b.x, -2147483647i), arg_1.a.b.x, vec2<bool>(arg_0.b.d.x, true)), false), Struct_3(-1214f, arg_1.a, arg_0.c), Struct_3(arg_3.x, arg_0.b, arg_0.c)), arg_0).b.c, func_1(_wgslsmith_sub_vec2_i32(arg_0.b.b, vec2<i32>(-12605i, -87999i))).yz), arg_1.a.d.x), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 374f) * _wgslsmith_f_op_f32(trunc(813f)))), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(arg_0.b.a)), arg_0.b.a), -arg_1.a.b, _wgslsmith_div_i32(37834i, 1i), !func_1(vec2<i32>(40331i, arg_1.a.b.x)).xy), true || !(!arg_1.c.x)), arg_0);
    let var_2 = Struct_3(_wgslsmith_f_op_f32(arg_0.a - arg_3.x), arg_0.b, arg_1.c.x);
    let var_3 = arg_1;
    let var_4 = Struct_2(arg_0.b, ~u_input.b.xxz, !arg_1.c, 1u);
    return vec4<f32>(var_1.a, 1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(ceil(arg_3.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2303f, var_3.a.a.x)))));
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<i32>) -> i32 {
    let var_0 = func_1(arg_1.a.b).x | !all(func_1(vec2<i32>(arg_2.c, -4221i) | arg_2.b));
    let var_1 = ~_wgslsmith_div_vec4_i32(vec4<i32>(i32(-1i) * -5565i, arg_3.x, ~(i32(-1i) * -50249i), arg_3.x), max(arg_3, arg_3) >> (min(~u_input.c, u_input.b) % vec4<u32>(32u)));
    return -(_wgslsmith_mult_i32(arg_2.b.x, _wgslsmith_add_i32(var_1.x, _wgslsmith_add_i32(var_1.x, -3762i))) | 1i);
}

fn func_7(arg_0: i32, arg_1: vec2<u32>, arg_2: i32, arg_3: Struct_3) -> Struct_3 {
    let var_0 = arg_0;
    let var_1 = func_2(vec3<i32>(~reverseBits(-2147483647i) | arg_2, arg_3.b.c, 9279i), Struct_3(-1503f, arg_3.b, arg_3.b.d.x), func_2((_wgslsmith_mod_vec3_i32(vec3<i32>(var_0, 0i, -7888i), vec3<i32>(arg_3.b.c, -1i, arg_2)) << (~u_input.b.yyz % vec3<u32>(32u))) & vec3<i32>(select(1i, arg_3.b.c, true), 10044i, ~(-28601i)), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-725f, 814f)) * 703f), func_2(~vec3<i32>(arg_0, -5691i, 0i), arg_3, arg_3, arg_3).b, arg_3.b.d.x), Struct_3(1000f, arg_3.b, arg_3.b.d.x), Struct_3(_wgslsmith_f_op_f32(-arg_3.a), func_2(vec3<i32>(arg_3.b.b.x, -26785i, -43323i), Struct_3(2038f, Struct_1(vec4<f32>(-864f, arg_3.a, arg_3.a, 2649f), arg_3.b.b, 1i, vec2<bool>(false, arg_3.b.d.x)), arg_3.b.d.x), arg_3, func_2(vec3<i32>(var_0, arg_2, arg_0), Struct_3(404f, Struct_1(arg_3.b.a, arg_3.b.b, 2147483647i, arg_3.b.d), true), arg_3, arg_3)).b, arg_3.c)), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1640f, _wgslsmith_f_op_f32(select(arg_3.a, arg_3.b.a.x, arg_3.b.d.x))))), Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-arg_3.b.a), arg_3.b.a)), ~_wgslsmith_mod_vec2_i32(arg_3.b.b, vec2<i32>(arg_0, arg_0)), -max(var_0, arg_0), vec2<bool>(var_0 > -92181i, arg_3.b.d.x)), arg_3.c)).b;
    let var_2 = arg_3;
    let var_3 = Struct_1(var_1.a, ~_wgslsmith_clamp_vec2_i32(~countOneBits(vec2<i32>(var_1.b.x, -1i)), arg_3.b.b, vec2<i32>(-16887i, -25891i)), -11690i, !arg_3.b.d);
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.x, 1000f, var_3.a.x, arg_3.b.a.x) * var_3.a) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(224f, var_3.a.x, 978f, arg_3.b.a.x)))), vec2<i32>(~var_0, ~_wgslsmith_div_i32(-8257i, _wgslsmith_mod_i32(arg_3.b.b.x, -1i))), var_1.b.x, var_1.d);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    let var_1 = func_7(-63071i, u_input.b.xz, func_6(reverseBits(u_input.c.x), Struct_2(Struct_1(vec4<f32>(1508f, -567f, -1695f, 282f), vec2<i32>(-2147483647i, -1i), min(-21659i, 0i), vec2<bool>(true, true)), _wgslsmith_add_vec3_u32(~u_input.b.zyx, ~vec3<u32>(1u, 4294967295u, u_input.b.x)), select(func_1(vec2<i32>(-47751i, -6061i)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), ~(~u_input.b.x)), Struct_1(_wgslsmith_f_op_vec4_f32(func_5(func_2(vec3<i32>(0i, 42083i, -6148i), Struct_3(1000f, Struct_1(vec4<f32>(1000f, 1000f, -1712f, -1726f), vec2<i32>(5375i, -3221i), -18709i, vec2<bool>(true, true)), false), Struct_3(-1074f, Struct_1(vec4<f32>(1000f, 674f, 524f, -370f), vec2<i32>(74578i, -420i), -73i, vec2<bool>(false, true)), true), Struct_3(-115f, Struct_1(vec4<f32>(552f, 566f, 1873f, -160f), vec2<i32>(22742i, 0i), -2147483647i, vec2<bool>(false, true)), true)), Struct_2(Struct_1(vec4<f32>(-208f, 1000f, 477f, 1036f), vec2<i32>(-37518i, 0i), 5749i, vec2<bool>(false, false)), u_input.b.xyx, vec3<bool>(true, true, false), 1891u), _wgslsmith_sub_u32(u_input.c.x, 4294967295u), _wgslsmith_div_vec3_f32(vec3<f32>(1947f, 411f, -1923f), vec3<f32>(869f, -1619f, -344f)))), -vec2<i32>(-1i, -35675i) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u)), -13984i, vec2<bool>(true, true)), vec4<i32>(func_2(vec3<i32>(-3215i, 11668i, 1i), Struct_3(-344f, Struct_1(vec4<f32>(-628f, 1000f, 1337f, 1000f), vec2<i32>(-2147483647i, -1i), 22610i, vec2<bool>(true, false)), false), Struct_3(-100f, Struct_1(vec4<f32>(-586f, -1000f, -1639f, 539f), vec2<i32>(34796i, -2147483647i), 57504i, vec2<bool>(true, false)), false), Struct_3(1010f, Struct_1(vec4<f32>(561f, -934f, -1000f, 1948f), vec2<i32>(-1i, 1i), 1i, vec2<bool>(false, false)), true)).b.c | _wgslsmith_mult_i32(21525i, -75696i), min(func_3(), _wgslsmith_clamp_i32(-2147483647i, -1i, 5791i)), -10735i, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-10727i, 2147483647i, -25718i), vec3<i32>(2147483647i, -15732i, 1i))))), Struct_3(596f, func_2(vec3<i32>(1i, 1i, 1i), Struct_3(-1005f, func_2(vec3<i32>(2147483647i, 1i, -2147483647i), Struct_3(-1085f, Struct_1(vec4<f32>(-2347f, 1316f, 1363f, -1240f), vec2<i32>(-1i, 12306i), -8179i, vec2<bool>(true, false)), false), Struct_3(-1269f, Struct_1(vec4<f32>(-996f, 244f, 1017f, 688f), vec2<i32>(25064i, 0i), -18099i, vec2<bool>(false, true)), false), Struct_3(-738f, Struct_1(vec4<f32>(277f, -120f, -471f, -282f), vec2<i32>(-1i, -40693i), 21065i, vec2<bool>(false, true)), false)).b, true), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -762f), func_2(vec3<i32>(14494i, -25616i, 2147483647i), Struct_3(888f, Struct_1(vec4<f32>(-1564f, 138f, -427f, 209f), vec2<i32>(-20674i, -22143i), -8191i, vec2<bool>(false, false)), false), Struct_3(1000f, Struct_1(vec4<f32>(-1173f, -468f, 167f, -385f), vec2<i32>(-24363i, -2147483647i), 2147483647i, vec2<bool>(false, true)), true), Struct_3(-1620f, Struct_1(vec4<f32>(-1065f, 815f, -207f, -1000f), vec2<i32>(-31441i, -1i), 0i, vec2<bool>(true, false)), false)).b, false), Struct_3(_wgslsmith_f_op_f32(floor(2653f)), func_2(vec3<i32>(-7066i, -2147483647i, 32329i), Struct_3(1943f, Struct_1(vec4<f32>(-809f, -776f, -877f, -1724f), vec2<i32>(-2147483647i, 1i), -2147483647i, vec2<bool>(false, true)), false), Struct_3(-486f, Struct_1(vec4<f32>(803f, 1000f, 2039f, 477f), vec2<i32>(1i, 0i), 54661i, vec2<bool>(true, false)), true), Struct_3(514f, Struct_1(vec4<f32>(-661f, 1000f, -1734f, 280f), vec2<i32>(15087i, -55117i), 41195i, vec2<bool>(false, true)), true)).b, false)).b, false));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))) * func_7(var_1.b.c, ~_wgslsmith_mult_vec2_u32(u_input.b.yx, vec2<u32>(1u, 25055u)), var_1.b.c, var_1).a), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(629f * _wgslsmith_f_op_f32(var_1.b.a.x * var_1.a)), _wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_1.a, var_1.b.a.x)), _wgslsmith_f_op_f32(var_1.b.a.x * var_1.a)))), var_1.b.b, ~66203i, vec2<bool>(all(vec2<bool>(true, true)), all(!vec4<bool>(var_1.b.d.x, true, false, false)))), true);
    var var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(var_1.b.a.x * _wgslsmith_f_op_f32(_wgslsmith_div_f32(1341f, -698f) * -1180f)), _wgslsmith_f_op_f32(-2157f * _wgslsmith_f_op_f32(-var_1.a)), var_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.a.x)), -1184f)), var_2.b.b >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(~u_input.c.x, u_input.b.x), ~u_input.b.zw, ~u_input.a << (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u))) % vec2<u32>(32u)), ((var_1.b.b.x >> (~15186u % 32u)) ^ 1i) ^ _wgslsmith_clamp_i32(~var_2.b.b.x << (1u % 32u), _wgslsmith_mod_i32(var_1.b.b.x, i32(-1i) * -5588i), 2147483647i), var_2.b.d);
    var var_4 = func_2(-(_wgslsmith_mult_vec3_i32(select(vec3<i32>(1i, 43713i, var_2.b.c), vec3<i32>(var_1.b.b.x, var_3.b.x, var_2.b.c), var_2.b.d.x), ~vec3<i32>(46461i, var_1.b.b.x, -29592i)) >> ((_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, u_input.b.x), u_input.b.zzy, vec3<u32>(u_input.a.x, u_input.b.x, u_input.a.x)) << (~u_input.b.wwx % vec3<u32>(32u))) % vec3<u32>(32u))), Struct_3(-280f, var_2.b, var_3.d.x), Struct_3(-441f, var_2.b, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 46917i, var_1.b.c) ^ vec3<i32>(var_1.b.c, var_3.b.x, 1i), vec3<i32>(var_2.b.b.x, 1i, 6046i) ^ vec3<i32>(-66276i, -1i, -26262i)) != var_3.b.x), var_1);
    let var_5 = ~vec4<i32>(func_7(_wgslsmith_mult_i32(~var_4.b.b.x, ~(-12847i)), u_input.c.yx << (u_input.a % vec2<u32>(32u)), var_3.c, func_7(1i, vec2<u32>(u_input.c.x, u_input.c.x), var_2.b.c, var_1)).b.c, -2147483647i, -_wgslsmith_sub_i32(var_1.b.b.x >> (u_input.b.x % 32u), min(-38261i, var_1.b.b.x)), -var_3.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.x, firstLeadingBit(u_input.c.yw), vec2<u32>(1u, ~u_input.b.x));
}

