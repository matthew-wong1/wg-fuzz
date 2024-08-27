struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> vec3<u32> {
    global0 = true;
    var var_0 = arg_1.a.d.xxz;
    let var_1 = max(_wgslsmith_mult_vec3_u32(vec3<u32>(~max(arg_1.a.b.x, 8098u), _wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec2_u32(arg_1.a.b.zx, arg_1.a.b.xz), ~arg_2.b.b.x), 1u & ~arg_2.a.b.x), vec3<u32>(4294967295u, 42792u, _wgslsmith_clamp_u32(570u, ~4427u, arg_2.b.b.x))), vec3<u32>(~(arg_2.b.b.x >> (4294967295u % 32u)), _wgslsmith_mult_u32(29309u, ~u_input.a.x) >> (~(~1u) % 32u), ~select(min(u_input.a.x, arg_0), 27015u, !arg_1.a.c.x)));
    var var_2 = arg_2.b;
    var_2 = arg_1.b;
    return vec3<u32>(abs(1u << (var_1.x % 32u)), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.b.b.x, arg_2.a.b.x), vec2<u32>(min(u_input.a.x, 22106u), 23202u)), var_2.b.x);
}

fn func_2() -> Struct_2 {
    global0 = false;
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-154f, -1736f, -1499f, 789f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-354f, 1127f, -293f, 1817f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(716f, -301f, 1121f, -1502f))))));
    let var_1 = Struct_1(~34064i, func_3(u_input.a.x, Struct_2(Struct_1(-10451i, vec3<u32>(4294967295u, u_input.b, 4294967295u), vec2<bool>(true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false))), Struct_1(firstTrailingBit(0i), u_input.a.wwy | vec3<u32>(u_input.b, u_input.a.x, u_input.a.x), vec2<bool>(true, true), vec4<bool>(true, true, true, true))), Struct_2(Struct_1(-1i, _wgslsmith_mod_vec3_u32(u_input.a.xyz, vec3<u32>(u_input.a.x, u_input.b, 24903u)), vec2<bool>(true, true), vec4<bool>(true, true, true, true)), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 29743i), vec2<i32>(-1i, 35362i)), vec3<u32>(0u, u_input.b, u_input.a.x), vec2<bool>(true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), false)))), vec2<bool>(true, true), !vec4<bool>(all(vec2<bool>(false, false)), var_0.x != _wgslsmith_f_op_f32(-1244f * -1580f), true, true));
    global0 = var_1.c.x;
    var var_2 = var_1.a;
    return Struct_2(var_1, var_1);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: f32, arg_3: vec2<bool>) -> vec2<bool> {
    return vec2<bool>(12066u == arg_1.b.b.x, (arg_0.x && true) | !(~u_input.b != ~47382u));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    let var_0 = func_4(arg_0.d.zyy, func_2(), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-821f * 665f), _wgslsmith_f_op_f32(f32(-1f) * -223f))))), vec2<bool>(all(select(func_2().a.d.xzz, select(vec3<bool>(arg_0.d.x, false, arg_3.d.x), vec3<bool>(true, arg_3.d.x, false), false), 0i < arg_3.a)), false));
    let var_1 = arg_3;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-882f, 1483f)), _wgslsmith_f_op_f32(f32(-1f) * -254f), arg_1.x, _wgslsmith_f_op_f32(max(-191f, _wgslsmith_f_op_f32(floor(1071f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))))))));
    let var_3 = Struct_2(arg_2.a, func_2().b);
    let var_4 = ~(~arg_3.b.yz);
    return arg_3;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: f32) -> i32 {
    var var_0 = vec4<i32>(~(-arg_2.x) << (min(firstTrailingBit(arg_0.b.b.x), arg_0.a.b.x) % 32u), _wgslsmith_sub_i32(-arg_0.a.a, -17911i), _wgslsmith_mod_i32(-1i, -(~(-6139i))), abs(-2147483647i)) << (u_input.a % vec4<u32>(32u));
    global0 = arg_0.b.d.x;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(-arg_3));
    var var_2 = func_1(func_2().a, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1475f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(523f, -2773f), vec2<f32>(-237f, var_1))))), arg_0, arg_0.b);
    let var_3 = !arg_1.xz;
    return _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(arg_2, max(firstLeadingBit(vec3<i32>(1i, -91624i, -19476i)), -_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, var_0.x, var_0.x), arg_2))), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(min(vec2<i32>(-2147483647i, 54940i), arg_2.yz), select(var_0.wz, vec2<i32>(-31927i, arg_0.b.a), vec2<bool>(true, var_3.x))), -36488i), _wgslsmith_dot_vec4_i32(reverseBits((vec4<i32>(-1i, var_2.a, var_0.x, arg_0.b.a) ^ vec4<i32>(arg_2.x, 1i, 2147483647i, arg_0.a.a)) << (firstLeadingBit(vec4<u32>(0u, arg_0.a.b.x, 9544u, 37228u)) % vec4<u32>(32u))), ~(-vec4<i32>(-5490i, -21843i, arg_0.b.a, arg_2.x))));
}

fn func_6(arg_0: vec3<i32>, arg_1: i32) -> bool {
    global0 = false;
    var var_0 = func_2().a;
    var_0 = Struct_1(var_0.a, u_input.a.wwz, vec2<bool>(!((var_0.b.x ^ 0u) <= (var_0.b.x << (u_input.a.x % 32u))), false), var_0.d);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1086f, 1449f, -601f, 524f), vec4<f32>(-560f, -1590f, 368f, -1680f), true)) - vec4<f32>(-207f, -972f, 1313f, 1148f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1717f, -243f, -169f, -955f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-409f, -545f, 1000f, -247f) * vec4<f32>(-719f, 1000f, -745f, 1000f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-317f, -1852f, -641f, -441f), vec4<f32>(-775f, 634f, 556f, -1000f), vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, false)))))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1394f, 287f, 176f, 975f), vec4<f32>(-432f, -383f, -1046f, 567f), var_0.c.x)))))));
    global0 = !any(vec3<bool>(!func_2().b.c.x, select(var_0.d.x, var_0.d.x, true && var_0.c.x), _wgslsmith_f_op_f32(var_1.x - -717f) != var_1.x));
    return all(vec4<bool>(func_1(func_1(Struct_1(-34624i, vec3<u32>(0u, 4235u, var_0.b.x), var_0.d.yy, vec4<bool>(true, var_0.d.x, var_0.d.x, false)), var_1.zy, func_2(), func_2().a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -164f))), func_2(), Struct_1(var_0.a, countOneBits(vec3<u32>(12846u, var_0.b.x, 0u)), vec2<bool>(true, true), select(var_0.d, var_0.d, var_0.d))).c.x, false, var_0.d.x, !(var_0.d.x | true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(select(~vec3<i32>(1i, 1i, 1i), _wgslsmith_sub_vec3_i32(reverseBits(max(vec3<i32>(0i, 1i, 62133i), vec3<i32>(-77489i, -1342i, 1i))), select(-vec3<i32>(-2147483647i, -2147483647i, -2147483647i), vec3<i32>(1i, 1i, 1i), all(vec4<bool>(true, false, true, true)))), vec3<bool>(false, false, all(vec2<bool>(true, true)))), -func_5(Struct_2(Struct_1(1i, u_input.a.yyz, vec2<bool>(true, true), vec4<bool>(false, false, false, false)), func_1(Struct_1(-2147483647i, u_input.a.xwy, vec2<bool>(true, true), vec4<bool>(true, false, false, false)), vec2<f32>(903f, 933f), Struct_2(Struct_1(-16617i, u_input.a.zxy, vec2<bool>(true, false), vec4<bool>(true, true, false, false)), Struct_1(1295i, u_input.a.www, vec2<bool>(false, true), vec4<bool>(true, true, true, true))), Struct_1(-1i, vec3<u32>(1u, u_input.b, u_input.b), vec2<bool>(true, false), vec4<bool>(false, false, true, false)))), vec4<bool>(0u >= u_input.b, true, true, all(vec4<bool>(true, true, false, true))), vec3<i32>(~73108i, _wgslsmith_div_i32(44588i, -39521i), ~(-37978i)), _wgslsmith_f_op_f32(floor(-839f))));
    var var_0 = Struct_2(func_2().a, func_1(func_1(Struct_1(countOneBits(-2147483647i), u_input.a.yxx, select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(705f, -1848f))), Struct_2(func_2().b, Struct_1(-1i, u_input.a.zxz, vec2<bool>(true, true), vec4<bool>(true, false, true, true))), func_1(Struct_1(-10623i, u_input.a.xyy, vec2<bool>(true, true), vec4<bool>(true, true, false, true)), vec2<f32>(512f, -802f), func_2(), func_1(Struct_1(-15893i, u_input.a.wxx, vec2<bool>(true, true), vec4<bool>(false, true, true, false)), vec2<f32>(-842f, 346f), Struct_2(Struct_1(-2147483647i, vec3<u32>(4294967295u, u_input.a.x, 13941u), vec2<bool>(false, true), vec4<bool>(false, false, true, false)), Struct_1(-39244i, vec3<u32>(u_input.b, u_input.a.x, 1u), vec2<bool>(true, true), vec4<bool>(true, true, true, false))), Struct_1(19335i, u_input.a.wzy, vec2<bool>(false, true), vec4<bool>(true, true, true, false))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_div_f32(-1283f, -893f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(975f, -1374f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(766f, 1552f)))), func_2(), Struct_1(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-1i, 1i), 1i), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.b, 7190u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(false, false), vec2<bool>(true, true)), vec4<bool>(any(vec4<bool>(true, false, false, false)), select(true, true, true), all(vec4<bool>(true, false, false, true)), true))));
    let var_1 = var_0.b;
    let var_2 = func_2().a;
    var var_3 = firstTrailingBit(~vec2<i32>(var_1.a, func_2().b.a));
    var var_4 = _wgslsmith_sub_vec3_i32((~firstTrailingBit(vec3<i32>(1i, 17757i, var_2.a)) << (vec3<u32>(1u, func_2().b.b.x, reverseBits(u_input.a.x)) % vec3<u32>(32u))) | vec3<i32>(~(~4657i), -var_3.x, ~var_1.a & var_1.a), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.b.a, 2147483647i, 1i), vec3<i32>(var_1.a, var_2.a, 56882i))), vec3<i32>(-6433i, -var_1.a, var_1.a), vec3<i32>(func_5(Struct_2(var_0.b, Struct_1(var_3.x, vec3<u32>(12905u, var_1.b.x, var_2.b.x), var_1.d.xw, var_2.d)), vec4<bool>(true, false, var_2.d.x, false), vec3<i32>(7860i, 2147483647i, var_0.b.a), -1000f), _wgslsmith_clamp_i32(2147483647i, var_1.a, 0i), func_1(var_0.b, vec2<f32>(-332f, 1766f), Struct_2(var_0.b, var_2), var_0.b).a)), _wgslsmith_div_vec3_i32(vec3<i32>(~var_2.a, 1i, 0i), vec3<i32>(i32(-1i) * -2147483647i, var_2.a, ~var_1.a))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_mult_u32(func_3(~var_2.b.x & var_2.b.x, func_2(), Struct_2(var_2, var_0.a)).x, ~4294967295u), ~5281u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(378f, 643f))))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-344f, -288f))))), _wgslsmith_add_u32(_wgslsmith_mult_u32(var_2.b.x, var_0.a.b.x), firstLeadingBit(_wgslsmith_clamp_u32(reverseBits(0u), 4245u, u_input.a.x ^ var_2.b.x))));
}

