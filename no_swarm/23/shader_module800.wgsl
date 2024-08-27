struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
    c: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_1,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: i32) -> f32 {
    let var_0 = select(vec2<u32>(4398u, ~1u), vec2<u32>(~_wgslsmith_mult_u32(27333u, 35975u) ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 49282u, 40901u, 0u), vec4<u32>(1u, 1u, 1u, 1u)), ~(_wgslsmith_add_u32(0u, 30968u) >> (_wgslsmith_mult_u32(25567u, 0u) % 32u))), true);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-145f, -2035f, 735f, 501f), vec4<f32>(108f, -2381f, 1617f, 428f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(514f, -1542f, -1931f, -448f)), true)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(262f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2767f)), _wgslsmith_f_op_f32(779f * 363f))), !select(vec4<bool>(true, false, true, arg_0 && arg_0), vec4<bool>(select(false, false, false), arg_0, all(vec3<bool>(false, true, arg_0)), any(vec3<bool>(arg_0, arg_0, false))), select(arg_0, select(arg_0, arg_0, false), select(true, arg_0, arg_0)))));
    var var_2 = var_0;
    let var_3 = Struct_2(Struct_1(arg_0, ~var_0), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(var_0.x ^ var_2.x, _wgslsmith_sub_u32(19626u, var_0.x)), 4294967295u, var_0.x), vec3<u32>(var_2.x, 3005u, _wgslsmith_div_u32(~var_2.x, 0u))), var_1, !arg_0);
    var var_4 = _wgslsmith_dot_vec2_i32(-(~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(2147483647i, 10214i) >> (var_3.b.zz % vec2<u32>(32u)))), vec2<i32>(-arg_1, _wgslsmith_div_i32(_wgslsmith_sub_i32(select(-70315i, 52384i, arg_0), -2147483647i ^ arg_1), arg_1)));
    return -452f;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(func_3(!(!all(vec4<bool>(true, true, true, true))), ~_wgslsmith_mult_i32(u_input.a, -u_input.a & -19959i)));
    var_0 = -383f;
    var var_1 = u_input.a;
    var_1 = select(min(u_input.a, max(max(31093i, 0i), ~43302i)), u_input.a, !all(vec2<bool>(true, true)));
    let var_2 = ~vec4<u32>(1u, 1u, 6389u, 1u);
    return Struct_1(false, _wgslsmith_sub_vec2_u32(~(~select(vec2<u32>(44352u, 1u), var_2.yw, false)), firstTrailingBit(~vec2<u32>(0u, 4294967295u) & ~var_2.ww)));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_3) -> Struct_2 {
    var var_0 = Struct_4(vec4<u32>(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.c.b.x, 33661u, arg_1.d.b.x, arg_2.d.b.x), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1.b.a.b.x, arg_3.c.b.x, arg_1.c.b.x, 10163u), vec4<u32>(0u, 4294967295u, 28242u, 26793u))), ~arg_3.b.b.x, arg_2.b.a.b.x), arg_3.b, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(~arg_2.c.b.x, ~35898u, _wgslsmith_mult_u32(arg_1.c.b.x, arg_2.d.b.x), 0u >> (arg_1.b.a.b.x % 32u))), _wgslsmith_mult_vec4_u32(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.b.b.x, 4294967295u, 1u, arg_2.c.b.x), vec4<u32>(arg_3.d.b.x, 28798u, 6521u, 1u))), vec4<u32>(arg_1.d.a.b.x, 4294967295u, 4294967295u, 0u))));
    let var_1 = Struct_4(select(~(~vec4<u32>(0u, arg_3.d.b.x, var_0.b.a.b.x, arg_1.d.b.x) | ~vec4<u32>(1u, arg_3.c.b.x, 1084u, arg_3.d.a.b.x)), vec4<u32>(arg_3.d.a.b.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.b.a.b.x, arg_3.c.b.x), ~arg_2.d.a.b), 1u, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(arg_2.b.b.x, arg_2.b.b.x, var_0.a.x, arg_3.c.b.x)), ~var_0.a)), all(!vec4<bool>(true, var_0.b.d, arg_1.b.d, arg_3.b.a.a))), Struct_2(arg_3.b.a, vec3<u32>(_wgslsmith_dot_vec2_u32(arg_3.c.b, vec2<u32>(1u, 14168u) | var_0.a.zy), ~8961u, ~(~76783u)), var_0.b.c, true), _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(abs(arg_2.d.b.zz), _wgslsmith_add_vec2_u32(vec2<u32>(90690u, 10478u), arg_2.c.b)), _wgslsmith_mult_vec2_u32(~vec2<u32>(28757u, arg_2.d.a.b.x), abs(select(var_0.a.xw, arg_2.d.a.b, vec2<bool>(arg_2.c.a, true))))));
    var var_2 = vec3<bool>(true, (-(-2147483647i ^ u_input.a) < _wgslsmith_sub_i32(select(u_input.a, 23666i, false), i32(-1i) * -32335i)) & select(true, false, ~u_input.a >= -u_input.a), var_0.b.a.a && !select(true || arg_1.d.a.a, !var_1.b.d, arg_3.c.b.x < 68360u));
    let var_3 = _wgslsmith_mod_vec2_u32(~arg_2.c.b, firstTrailingBit(~(~_wgslsmith_add_vec2_u32(arg_3.d.b.zx, arg_1.c.b))));
    var_2 = vec3<bool>(true, false, arg_2.d.d);
    return arg_1.b;
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: vec3<bool>, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = arg_0.yx;
    return func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-126f, _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(floor(-246f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1138f * arg_0.x) - _wgslsmith_f_op_f32(arg_0.x - arg_0.x)))), Struct_3(var_0.x, Struct_2(func_2(), vec3<u32>(abs(78463u), 1u, 5757u), _wgslsmith_f_op_vec4_f32(abs(arg_0)), (arg_2.x || false) != true), Struct_1(!all(vec2<bool>(arg_3.x, true)), ~vec2<u32>(0u, 1u)), Struct_2(func_2(), ~(~vec3<u32>(4930u, 4294967295u, 76299u)), vec4<f32>(-182f, var_0.x, _wgslsmith_f_op_f32(-arg_0.x), var_0.x), ~4294967295u < firstTrailingBit(0u)), _wgslsmith_f_op_f32(select(-246f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1398f * arg_0.x)), true))), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -534f), Struct_2(Struct_1(false, firstTrailingBit(vec2<u32>(0u, 55204u))), vec3<u32>(countOneBits(59808u), ~28103u, firstLeadingBit(32976u)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(arg_0 * vec4<f32>(var_0.x, arg_0.x, arg_0.x, var_0.x)))), true), Struct_1(any(vec4<bool>(true, arg_2.x, true, arg_2.x)), ~vec2<u32>(1u, 1652u)), Struct_2(func_2(), countOneBits(reverseBits(vec3<u32>(13059u, 54370u, 9451u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-904f, -371f, var_0.x, arg_0.x))), all(!vec3<bool>(false, arg_3.x, arg_3.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(125f))), arg_0.x))), Struct_3(-354f, Struct_2(Struct_1(!arg_2.x, _wgslsmith_add_vec2_u32(vec2<u32>(53138u, 48930u), vec2<u32>(24246u, 0u))), ~vec3<u32>(1u, 1u, 1u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(arg_0)), vec4<f32>(var_0.x, -219f, arg_0.x, arg_0.x)), false), func_2(), Struct_2(func_2(), vec3<u32>(1u, 1u, 1u), vec4<f32>(_wgslsmith_f_op_f32(arg_0.x * 1000f), _wgslsmith_f_op_f32(-var_0.x), -966f, -749f), !all(vec4<bool>(arg_2.x, arg_3.x, true, false))), 848f));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_2) -> Struct_2 {
    let var_0 = vec4<i32>(3855i >> (~firstTrailingBit(~7099u) % 32u), arg_0.x, ~arg_0.x, arg_0.x);
    let var_1 = _wgslsmith_f_op_f32(select(arg_3.c.x, 634f, !any(!(!vec2<bool>(arg_3.d, true)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(arg_1.d.c.xwx - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1103f, arg_3.c.x, arg_1.d.c.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_1.a, arg_2.b.c.x) + vec3<f32>(arg_3.c.x, var_1, arg_1.d.c.x))))));
    var var_3 = _wgslsmith_f_op_f32(round(var_1));
    var_3 = 1f;
    return func_4(vec3<f32>(arg_2.b.c.x, 746f, arg_1.d.c.x), arg_1, arg_1, Struct_3(883f, func_1(arg_3.c, ~28289i, select(select(vec3<bool>(true, false, arg_1.c.a), vec3<bool>(true, false, false), false), vec3<bool>(true, arg_3.d, true), !vec3<bool>(arg_1.d.d, arg_1.b.a.a, true)), vec2<bool>(all(vec4<bool>(arg_1.b.a.a, false, arg_1.b.a.a, true)), true | arg_2.b.a.a)), func_4(var_2, arg_1, Struct_3(-680f, arg_1.b, arg_3.a, Struct_2(arg_3.a, arg_3.b, vec4<f32>(arg_1.b.c.x, -732f, var_1, arg_3.c.x), arg_2.b.a.a), -1000f), Struct_3(_wgslsmith_f_op_f32(-arg_1.b.c.x), arg_3, arg_2.b.a, Struct_2(Struct_1(arg_3.d, arg_3.b.xy), vec3<u32>(arg_1.d.a.b.x, arg_2.a.x, arg_1.c.b.x), arg_1.b.c, false), 1073f)).a, func_4(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-283f, 2009f, -1513f) * vec3<f32>(154f, 1295f, arg_1.b.c.x)), _wgslsmith_f_op_vec3_f32(step(arg_1.b.c.yxz, arg_1.d.c.wxy)))), Struct_3(_wgslsmith_div_f32(var_1, 1766f), func_1(arg_2.b.c, u_input.a, vec3<bool>(false, true, false), vec2<bool>(arg_2.b.a.a, arg_1.b.d)), func_2(), Struct_2(Struct_1(false, vec2<u32>(15321u, 23209u)), arg_1.b.b, vec4<f32>(var_2.x, 266f, var_1, arg_3.c.x), arg_3.a.a), -390f), arg_1, Struct_3(_wgslsmith_f_op_f32(abs(-586f)), func_1(vec4<f32>(var_2.x, -935f, 247f, -1159f), var_0.x, vec3<bool>(arg_2.b.d, true, arg_3.a.a), vec2<bool>(arg_1.b.a.a, arg_2.b.d)), func_1(vec4<f32>(1000f, var_2.x, var_1, arg_2.b.c.x), -2147483647i, vec3<bool>(arg_2.b.a.a, arg_3.d, arg_1.d.d), vec2<bool>(false, arg_3.a.a)).a, Struct_2(Struct_1(false, arg_1.d.a.b), vec3<u32>(arg_2.c, arg_1.c.b.x, arg_1.c.b.x), vec4<f32>(295f, -1122f, -728f, arg_2.b.c.x), true), _wgslsmith_f_op_f32(-arg_3.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, var_2.x, true)) * func_4(arg_3.c.ywy, Struct_3(-297f, arg_1.d, arg_1.b.a, Struct_2(Struct_1(true, vec2<u32>(1u, arg_3.a.b.x)), arg_3.b, arg_3.c, arg_1.b.d), 143f), arg_1, Struct_3(2009f, Struct_2(Struct_1(false, arg_3.b.yx), arg_3.b, arg_2.b.c, false), arg_2.b.a, arg_2.b, arg_2.b.c.x)).c.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.e + -1259f)))));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: vec4<f32>) -> vec4<bool> {
    var var_0 = select(!select(select(vec3<bool>(arg_1.d, true, arg_0.b.d), vec3<bool>(arg_0.b.d, true, arg_1.d), true), select(!vec3<bool>(arg_0.b.a.a, false, arg_0.b.a.a), !vec3<bool>(arg_1.d, false, false), select(vec3<bool>(arg_1.a.a, arg_0.b.d, false), vec3<bool>(true, true, true), vec3<bool>(arg_0.b.d, false, true))), all(vec2<bool>(arg_1.d, true))), select(vec3<bool>(arg_1.a.a, select(all(vec2<bool>(false, arg_1.d)), !arg_1.a.a, true), false), vec3<bool>(select(arg_0.b.a.a, any(vec4<bool>(true, arg_1.d, false, arg_0.b.d)), arg_1.a.a || arg_0.b.d), any(vec4<bool>(false, arg_0.b.d, true, true)), false), vec3<bool>(true, true, _wgslsmith_sub_i32(u_input.a, 1i) < _wgslsmith_add_i32(u_input.a, u_input.a))), !(!(!select(vec3<bool>(arg_1.a.a, false, true), vec3<bool>(true, arg_1.d, arg_0.b.a.a), vec3<bool>(arg_0.b.d, false, true)))));
    let var_1 = func_1(func_5(-(firstTrailingBit(vec3<i32>(u_input.a, 0i, u_input.a)) & _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<i32>(71106i, 48062i, 1i))), Struct_3(462f, Struct_2(func_1(arg_1.c, 42949i, vec3<bool>(true, false, arg_1.a.a), vec2<bool>(false, true)).a, abs(arg_2.ywx), _wgslsmith_f_op_vec4_f32(arg_0.b.c + arg_1.c), true), arg_0.b.a, Struct_2(Struct_1(arg_0.b.d, vec2<u32>(13728u, arg_2.x)), vec3<u32>(1u, 4294967295u, arg_0.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, 275f, arg_3.x, arg_3.x)), true | arg_1.a.a), arg_1.c.x), arg_0, func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.x, arg_0.b.c.x, arg_3.x, -405f)), select(0i, u_input.a, arg_1.d), vec3<bool>(false, -21755i > u_input.a, !var_0.x), var_0.yz)).c, select(20367i, ~(-2147483647i), any(vec3<bool>(!arg_1.a.a, func_4(arg_0.b.c.yzx, Struct_3(arg_1.c.x, arg_1, arg_0.b.a, arg_1, arg_3.x), Struct_3(-2713f, Struct_2(Struct_1(arg_0.b.d, vec2<u32>(arg_0.c, arg_0.a.x)), arg_1.b, arg_0.b.c, arg_1.a.a), Struct_1(arg_0.b.d, arg_2.wx), arg_0.b, arg_0.b.c.x), Struct_3(-165f, arg_1, Struct_1(false, arg_2.xz), arg_0.b, arg_3.x)).d, true))), select(vec3<bool>(arg_0.b.d, true, all(!vec3<bool>(arg_1.a.a, true, true))), !vec3<bool>(func_1(vec4<f32>(arg_1.c.x, 1000f, 118f, -1000f), -13240i, vec3<bool>(arg_0.b.a.a, arg_1.a.a, true), var_0.zy).d, true, func_1(arg_1.c, u_input.a, vec3<bool>(true, var_0.x, var_0.x), vec2<bool>(var_0.x, true)).d), !vec3<bool>(false && var_0.x, select(false, arg_0.b.d, arg_0.b.d), true)), vec2<bool>(false, false)).a;
    var_0 = select(select(!(!vec3<bool>(arg_1.d, false, var_1.a)), select(select(select(vec3<bool>(true, false, true), vec3<bool>(var_0.x, var_0.x, false), true), select(vec3<bool>(false, var_1.a, false), vec3<bool>(var_0.x, arg_0.b.d, false), false), all(vec3<bool>(true, var_1.a, false))), select(select(vec3<bool>(var_1.a, true, true), vec3<bool>(arg_1.d, false, true), vec3<bool>(var_0.x, false, true)), vec3<bool>(false, var_0.x, arg_1.d), select(vec3<bool>(arg_1.a.a, true, false), vec3<bool>(false, var_1.a, var_1.a), vec3<bool>(arg_1.a.a, arg_1.d, true))), vec3<bool>(true, !arg_0.b.d, true)), true), select(!select(!vec3<bool>(var_1.a, false, false), vec3<bool>(var_0.x, false, false), false), vec3<bool>(true, true, false), select(select(vec3<bool>(var_1.a, var_1.a, false), !vec3<bool>(false, var_0.x, var_1.a), arg_0.b.d), !vec3<bool>(arg_1.a.a, arg_0.b.d, var_0.x), !select(vec3<bool>(false, arg_1.d, var_1.a), vec3<bool>(false, true, var_1.a), true))), vec3<bool>(true, arg_0.b.d, arg_0.b.d));
    var var_2 = func_1(_wgslsmith_f_op_vec4_f32(select(arg_0.b.c, vec4<f32>(_wgslsmith_f_op_f32(-564f + arg_1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.b.c.x))), _wgslsmith_f_op_f32(select(arg_3.x, 705f, arg_0.b.a.a)), 1614f), !any(vec4<bool>(var_1.a, true, arg_0.b.a.a, false)))), 2147483647i, vec3<bool>(arg_0.b.a.a, !arg_1.a.a, arg_0.b.a.a), !select(var_0.xx, vec2<bool>(!arg_0.b.d, !var_1.a), vec2<bool>(true, arg_0.b.d)));
    let var_3 = !(~((var_2.b.x ^ 0u) << (~arg_2.x % 32u)) >= ~(~(~var_2.a.b.x)));
    return vec4<bool>(var_1.a, true, var_0.x, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -725f;
    var var_1 = func_6(Struct_4(abs(_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 50427u, 0u, 77111u)), ~vec4<u32>(30505u, 11531u, 16824u, 4294967295u))), func_5(vec3<i32>(-16462i, -u_input.a, u_input.a), Struct_3(-776f, func_1(vec4<f32>(-386f, -141f, var_0, 572f), u_input.a, vec3<bool>(false, false, true), vec2<bool>(false, true)), func_1(vec4<f32>(1016f, 2309f, var_0, 247f), -1i, vec3<bool>(true, true, true), vec2<bool>(true, true)).a, Struct_2(Struct_1(false, vec2<u32>(45476u, 1u)), vec3<u32>(1u, 18851u, 0u), vec4<f32>(-171f, var_0, -416f, 1097f), false), _wgslsmith_f_op_f32(ceil(var_0))), Struct_4(~vec4<u32>(49834u, 0u, 0u, 1u), func_1(vec4<f32>(797f, 2257f, -273f, var_0), 0i, vec3<bool>(false, false, true), vec2<bool>(true, true)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 6628u), vec2<u32>(4294967295u, 80542u))), Struct_2(func_4(vec3<f32>(var_0, 289f, -953f), Struct_3(var_0, Struct_2(Struct_1(false, vec2<u32>(0u, 4294967295u)), vec3<u32>(4294967295u, 1u, 43524u), vec4<f32>(1600f, var_0, -1608f, var_0), true), Struct_1(false, vec2<u32>(1u, 1u)), Struct_2(Struct_1(true, vec2<u32>(50355u, 66140u)), vec3<u32>(11564u, 14724u, 4294967295u), vec4<f32>(-1986f, -798f, var_0, 857f), true), 1090f), Struct_3(var_0, Struct_2(Struct_1(false, vec2<u32>(0u, 1u)), vec3<u32>(54329u, 16693u, 4294967295u), vec4<f32>(var_0, -809f, 410f, var_0), false), Struct_1(false, vec2<u32>(54048u, 0u)), Struct_2(Struct_1(false, vec2<u32>(49448u, 14106u)), vec3<u32>(30276u, 8601u, 0u), vec4<f32>(1088f, 401f, -377f, var_0), false), -365f), Struct_3(var_0, Struct_2(Struct_1(true, vec2<u32>(1u, 6741u)), vec3<u32>(29518u, 0u, 23333u), vec4<f32>(-1570f, var_0, 162f, 402f), false), Struct_1(true, vec2<u32>(90155u, 36483u)), Struct_2(Struct_1(false, vec2<u32>(25377u, 18746u)), vec3<u32>(44974u, 33236u, 28872u), vec4<f32>(154f, var_0, -485f, var_0), false), var_0)).a, ~vec3<u32>(1u, 84401u, 4294967295u), _wgslsmith_div_vec4_f32(vec4<f32>(2824f, -1262f, -1033f, var_0), vec4<f32>(var_0, var_0, var_0, var_0)), true)), 34629u), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1253f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -434f), _wgslsmith_f_op_f32(floor(var_0))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0, -155f, var_0, 860f))))), u_input.a, !vec3<bool>(true, false, any(vec2<bool>(false, true))), vec2<bool>(true, false)), ~(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(58739u, 0u, 55730u), vec3<u32>(85933u, 79495u, 0u)), ~4294967295u, 54582u, func_4(vec3<f32>(-649f, var_0, var_0), Struct_3(1102f, Struct_2(Struct_1(true, vec2<u32>(67953u, 1u)), vec3<u32>(14122u, 26897u, 9872u), vec4<f32>(var_0, var_0, -559f, var_0), true), Struct_1(true, vec2<u32>(4294967295u, 23784u)), Struct_2(Struct_1(true, vec2<u32>(38115u, 54117u)), vec3<u32>(34296u, 0u, 40822u), vec4<f32>(-514f, var_0, -984f, -256f), false), var_0), Struct_3(1000f, Struct_2(Struct_1(true, vec2<u32>(0u, 1u)), vec3<u32>(1u, 8278u, 11277u), vec4<f32>(-1000f, 1337f, 703f, -527f), true), Struct_1(false, vec2<u32>(4294967295u, 13537u)), Struct_2(Struct_1(true, vec2<u32>(1u, 0u)), vec3<u32>(0u, 0u, 4294967295u), vec4<f32>(1324f, -124f, var_0, 2170f), true), var_0), Struct_3(-2322f, Struct_2(Struct_1(false, vec2<u32>(92318u, 1u)), vec3<u32>(0u, 51478u, 1u), vec4<f32>(-1070f, -1340f, -1000f, var_0), false), Struct_1(true, vec2<u32>(1u, 11483u)), Struct_2(Struct_1(false, vec2<u32>(33874u, 4188u)), vec3<u32>(164059u, 98890u, 43275u), vec4<f32>(-1046f, var_0, var_0, 757f), false), -1105f)).a.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -131f, var_0, 992f) * vec4<f32>(var_0, var_0, var_0, var_0)), func_1(vec4<f32>(var_0, var_0, var_0, 900f), u_input.a, vec3<bool>(true, false, false), vec2<bool>(false, false)).c) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, 415f, var_0) * vec4<f32>(1000f, 1000f, -787f, 1493f))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, 741f, var_0) - vec4<f32>(-123f, -470f, -629f, -384f)))))));
    var_1 = !(!select(!vec4<bool>(var_1.x, false, var_1.x, true), !func_6(Struct_4(vec4<u32>(4294967295u, 1u, 4294967295u, 39613u), Struct_2(Struct_1(false, vec2<u32>(0u, 103841u)), vec3<u32>(4294967295u, 4294967295u, 140889u), vec4<f32>(var_0, var_0, var_0, var_0), var_1.x), 56181u), Struct_2(Struct_1(var_1.x, vec2<u32>(71532u, 0u)), vec3<u32>(0u, 7428u, 39839u), vec4<f32>(1192f, 114f, 199f, var_0), var_1.x), vec4<u32>(22709u, 44078u, 0u, 7243u), vec4<f32>(var_0, var_0, -518f, var_0)), true));
    var var_2 = Struct_1(var_1.x, vec2<u32>(abs(_wgslsmith_mult_u32(0u, 0u)) ^ (func_4(vec3<f32>(-557f, 1148f, -546f), Struct_3(var_0, Struct_2(Struct_1(false, vec2<u32>(41506u, 4294967295u)), vec3<u32>(66410u, 4294967295u, 4294967295u), vec4<f32>(var_0, var_0, -283f, var_0), true), Struct_1(false, vec2<u32>(373u, 4294967295u)), Struct_2(Struct_1(false, vec2<u32>(15866u, 4294967295u)), vec3<u32>(14603u, 0u, 1u), vec4<f32>(-1581f, var_0, 1360f, 2283f), false), 184f), Struct_3(var_0, Struct_2(Struct_1(var_1.x, vec2<u32>(43137u, 61836u)), vec3<u32>(1u, 26233u, 1u), vec4<f32>(-1000f, -976f, var_0, -852f), var_1.x), Struct_1(var_1.x, vec2<u32>(0u, 0u)), Struct_2(Struct_1(var_1.x, vec2<u32>(0u, 100232u)), vec3<u32>(50510u, 4294967295u, 1u), vec4<f32>(var_0, 443f, 523f, var_0), false), 1693f), Struct_3(966f, Struct_2(Struct_1(true, vec2<u32>(41349u, 1u)), vec3<u32>(4294967295u, 33087u, 7806u), vec4<f32>(1489f, var_0, var_0, 1055f), true), Struct_1(var_1.x, vec2<u32>(4133u, 4294967295u)), Struct_2(Struct_1(var_1.x, vec2<u32>(4562u, 19242u)), vec3<u32>(1u, 73312u, 33154u), vec4<f32>(658f, -609f, var_0, 309f), true), 521f)).b.x | ~4294967295u), 4294967295u));
    let var_3 = Struct_5(Struct_2(func_4(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(var_0, 870f, 1086f), vec3<f32>(1331f, var_0, 961f)))), Struct_3(1440f, func_4(vec3<f32>(var_0, var_0, var_0), Struct_3(var_0, Struct_2(Struct_1(var_1.x, var_2.b), vec3<u32>(1u, var_2.b.x, var_2.b.x), vec4<f32>(290f, -1520f, var_0, var_0), false), Struct_1(false, var_2.b), Struct_2(Struct_1(true, vec2<u32>(28530u, 13457u)), vec3<u32>(4294967295u, 0u, var_2.b.x), vec4<f32>(-1000f, var_0, var_0, var_0), false), 357f), Struct_3(var_0, Struct_2(Struct_1(false, vec2<u32>(49832u, var_2.b.x)), vec3<u32>(var_2.b.x, 60528u, var_2.b.x), vec4<f32>(var_0, -490f, -773f, var_0), var_1.x), Struct_1(var_2.a, vec2<u32>(1u, var_2.b.x)), Struct_2(Struct_1(var_1.x, vec2<u32>(38517u, var_2.b.x)), vec3<u32>(0u, var_2.b.x, 95921u), vec4<f32>(var_0, var_0, -1055f, var_0), var_2.a), 430f), Struct_3(var_0, Struct_2(Struct_1(true, var_2.b), vec3<u32>(var_2.b.x, 0u, var_2.b.x), vec4<f32>(var_0, var_0, var_0, var_0), true), Struct_1(var_2.a, var_2.b), Struct_2(Struct_1(var_1.x, var_2.b), vec3<u32>(var_2.b.x, var_2.b.x, var_2.b.x), vec4<f32>(var_0, var_0, var_0, var_0), var_1.x), var_0)), func_2(), Struct_2(Struct_1(var_1.x, var_2.b), vec3<u32>(47664u, 1u, var_2.b.x), vec4<f32>(var_0, 2205f, 1410f, var_0), var_1.x), _wgslsmith_div_f32(var_0, -1228f)), Struct_3(var_0, Struct_2(Struct_1(false, var_2.b), vec3<u32>(0u, 1u, 96782u), vec4<f32>(var_0, var_0, 740f, 251f), false), Struct_1(var_1.x, vec2<u32>(20302u, 14559u)), Struct_2(Struct_1(true, var_2.b), vec3<u32>(1u, var_2.b.x, var_2.b.x), vec4<f32>(431f, var_0, var_0, 471f), var_1.x), _wgslsmith_div_f32(137f, -133f)), Struct_3(var_0, func_4(vec3<f32>(var_0, var_0, -1216f), Struct_3(1000f, Struct_2(Struct_1(var_2.a, vec2<u32>(4294967295u, var_2.b.x)), vec3<u32>(1u, 4294967295u, var_2.b.x), vec4<f32>(var_0, var_0, -1262f, -725f), false), Struct_1(var_2.a, vec2<u32>(81722u, 9068u)), Struct_2(Struct_1(false, var_2.b), vec3<u32>(1u, 59922u, var_2.b.x), vec4<f32>(var_0, -486f, -788f, 114f), var_2.a), 374f), Struct_3(1578f, Struct_2(Struct_1(var_1.x, vec2<u32>(var_2.b.x, var_2.b.x)), vec3<u32>(4294967295u, var_2.b.x, var_2.b.x), vec4<f32>(-405f, var_0, var_0, var_0), false), Struct_1(false, vec2<u32>(var_2.b.x, 1u)), Struct_2(Struct_1(false, vec2<u32>(36294u, 47681u)), vec3<u32>(var_2.b.x, 31520u, var_2.b.x), vec4<f32>(var_0, -567f, var_0, var_0), var_2.a), var_0), Struct_3(699f, Struct_2(Struct_1(false, vec2<u32>(var_2.b.x, var_2.b.x)), vec3<u32>(1u, 0u, var_2.b.x), vec4<f32>(-1000f, var_0, -1489f, var_0), var_1.x), Struct_1(true, vec2<u32>(var_2.b.x, 8507u)), Struct_2(Struct_1(false, vec2<u32>(var_2.b.x, 1u)), vec3<u32>(var_2.b.x, 1u, var_2.b.x), vec4<f32>(var_0, -262f, -1534f, -917f), var_1.x), var_0)), func_4(vec3<f32>(var_0, -603f, var_0), Struct_3(var_0, Struct_2(Struct_1(true, vec2<u32>(var_2.b.x, 4163u)), vec3<u32>(var_2.b.x, 0u, var_2.b.x), vec4<f32>(var_0, var_0, var_0, -822f), var_1.x), Struct_1(true, vec2<u32>(10178u, var_2.b.x)), Struct_2(Struct_1(var_2.a, var_2.b), vec3<u32>(var_2.b.x, 38053u, 9451u), vec4<f32>(var_0, 302f, -1000f, var_0), false), 1000f), Struct_3(-1000f, Struct_2(Struct_1(true, var_2.b), vec3<u32>(4294967295u, 28665u, var_2.b.x), vec4<f32>(338f, var_0, var_0, 620f), var_2.a), Struct_1(var_2.a, var_2.b), Struct_2(Struct_1(var_1.x, var_2.b), vec3<u32>(var_2.b.x, var_2.b.x, 70118u), vec4<f32>(var_0, var_0, var_0, var_0), true), -1569f), Struct_3(var_0, Struct_2(Struct_1(true, var_2.b), vec3<u32>(0u, var_2.b.x, 10773u), vec4<f32>(var_0, 1168f, 749f, -1103f), var_2.a), Struct_1(true, var_2.b), Struct_2(Struct_1(var_2.a, var_2.b), vec3<u32>(23512u, var_2.b.x, var_2.b.x), vec4<f32>(var_0, -870f, -1000f, 1068f), var_2.a), var_0)).a, Struct_2(Struct_1(false, vec2<u32>(var_2.b.x, 0u)), vec3<u32>(var_2.b.x, var_2.b.x, 49648u), vec4<f32>(-123f, -403f, var_0, 1651f), false), var_0)).a, min(_wgslsmith_div_vec3_u32(vec3<u32>(41338u, var_2.b.x, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(10061u, 11326u, var_2.b.x), vec3<u32>(var_2.b.x, 0u, 0u))), vec3<u32>(~52445u, ~var_2.b.x, _wgslsmith_mod_u32(var_2.b.x, 27481u))), vec4<f32>(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-390f, var_0, 539f, -1060f) + vec4<f32>(var_0, -446f, var_0, 355f)), 524i ^ u_input.a, vec3<bool>(var_1.x, var_1.x, var_2.a), vec2<bool>(var_2.a, var_2.a)).c.x, _wgslsmith_div_f32(_wgslsmith_div_f32(-119f, -1000f), _wgslsmith_f_op_f32(select(var_0, 777f, false))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, var_0)), 369f), func_4(vec3<f32>(var_0, var_0, _wgslsmith_f_op_f32(var_0 - var_0)), Struct_3(var_0, func_4(vec3<f32>(-884f, -940f, 1201f), Struct_3(var_0, Struct_2(Struct_1(var_2.a, var_2.b), vec3<u32>(var_2.b.x, 1u, var_2.b.x), vec4<f32>(var_0, 990f, 257f, var_0), true), Struct_1(var_1.x, var_2.b), Struct_2(Struct_1(var_1.x, vec2<u32>(7286u, var_2.b.x)), vec3<u32>(24149u, 7581u, 4294967295u), vec4<f32>(var_0, var_0, var_0, 344f), var_2.a), var_0), Struct_3(var_0, Struct_2(Struct_1(true, vec2<u32>(var_2.b.x, var_2.b.x)), vec3<u32>(4294967295u, var_2.b.x, 10278u), vec4<f32>(341f, var_0, var_0, -1355f), true), Struct_1(false, var_2.b), Struct_2(Struct_1(true, var_2.b), vec3<u32>(var_2.b.x, var_2.b.x, var_2.b.x), vec4<f32>(-549f, var_0, -473f, -642f), true), var_0), Struct_3(var_0, Struct_2(Struct_1(var_2.a, var_2.b), vec3<u32>(var_2.b.x, 0u, 4141u), vec4<f32>(-2837f, -368f, -377f, 1000f), true), Struct_1(var_1.x, vec2<u32>(27879u, var_2.b.x)), Struct_2(Struct_1(false, var_2.b), vec3<u32>(var_2.b.x, 33561u, 21004u), vec4<f32>(-2434f, var_0, var_0, 837f), false), var_0)), func_1(vec4<f32>(1000f, 301f, var_0, var_0), u_input.a, var_1.yzw, var_1.xw).a, func_5(vec3<i32>(u_input.a, u_input.a, u_input.a), Struct_3(1796f, Struct_2(Struct_1(true, vec2<u32>(0u, var_2.b.x)), vec3<u32>(var_2.b.x, var_2.b.x, 1u), vec4<f32>(191f, -276f, 1255f, 798f), var_2.a), Struct_1(false, vec2<u32>(var_2.b.x, var_2.b.x)), Struct_2(Struct_1(var_1.x, var_2.b), vec3<u32>(var_2.b.x, 0u, 31188u), vec4<f32>(var_0, var_0, var_0, -1488f), var_1.x), var_0), Struct_4(vec4<u32>(95551u, var_2.b.x, 22782u, 37357u), Struct_2(Struct_1(false, vec2<u32>(0u, var_2.b.x)), vec3<u32>(var_2.b.x, var_2.b.x, 4294967295u), vec4<f32>(-1703f, var_0, -107f, 674f), false), 1u), Struct_2(Struct_1(var_2.a, vec2<u32>(0u, 35784u)), vec3<u32>(114839u, 7430u, 39884u), vec4<f32>(var_0, -1000f, var_0, var_0), var_2.a)), 1990f), Struct_3(1753f, Struct_2(Struct_1(var_1.x, vec2<u32>(6357u, 0u)), vec3<u32>(var_2.b.x, var_2.b.x, 66173u), vec4<f32>(1406f, var_0, -1010f, var_0), var_2.a), Struct_1(false, var_2.b), Struct_2(Struct_1(true, vec2<u32>(var_2.b.x, 0u)), vec3<u32>(1u, 57325u, var_2.b.x), vec4<f32>(var_0, var_0, -1248f, var_0), true), _wgslsmith_f_op_f32(-var_0)), Struct_3(_wgslsmith_f_op_f32(-var_0), func_1(vec4<f32>(var_0, -1000f, var_0, 2551f), u_input.a, var_1.yzy, vec2<bool>(var_2.a, false)), func_4(vec3<f32>(var_0, var_0, var_0), Struct_3(-177f, Struct_2(Struct_1(true, var_2.b), vec3<u32>(4294967295u, var_2.b.x, 4294967295u), vec4<f32>(-134f, 1093f, var_0, -284f), true), Struct_1(var_1.x, var_2.b), Struct_2(Struct_1(true, var_2.b), vec3<u32>(var_2.b.x, 4961u, var_2.b.x), vec4<f32>(var_0, 1229f, var_0, var_0), false), 268f), Struct_3(-1157f, Struct_2(Struct_1(var_1.x, vec2<u32>(var_2.b.x, var_2.b.x)), vec3<u32>(var_2.b.x, 3860u, var_2.b.x), vec4<f32>(-666f, -1219f, 1496f, var_0), var_1.x), Struct_1(var_1.x, var_2.b), Struct_2(Struct_1(true, vec2<u32>(0u, 1u)), vec3<u32>(var_2.b.x, 17781u, 0u), vec4<f32>(var_0, var_0, -164f, -286f), false), var_0), Struct_3(420f, Struct_2(Struct_1(true, var_2.b), vec3<u32>(4294967295u, 415u, var_2.b.x), vec4<f32>(633f, -794f, var_0, var_0), var_1.x), Struct_1(var_1.x, vec2<u32>(0u, 4294967295u)), Struct_2(Struct_1(true, var_2.b), vec3<u32>(0u, var_2.b.x, 1u), vec4<f32>(1175f, var_0, -302f, var_0), true), var_0)).a, Struct_2(Struct_1(var_1.x, var_2.b), vec3<u32>(var_2.b.x, var_2.b.x, var_2.b.x), vec4<f32>(554f, -342f, -1336f, 1265f), false), -248f)).a.a), Struct_3(_wgslsmith_f_op_f32(-var_0), Struct_2(Struct_1(!var_2.a, ~var_2.b), vec3<u32>(24694u, var_2.b.x, 8340u), vec4<f32>(_wgslsmith_f_op_f32(select(922f, var_0, var_2.a)), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(var_0))), any(var_1.yyw)), Struct_1(true, _wgslsmith_mod_vec2_u32(vec2<u32>(var_2.b.x, 0u), vec2<u32>(var_2.b.x, var_2.b.x))), Struct_2(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -1299f, var_0)), Struct_3(1171f, Struct_2(Struct_1(false, var_2.b), vec3<u32>(17802u, var_2.b.x, var_2.b.x), vec4<f32>(var_0, var_0, 565f, var_0), true), Struct_1(var_2.a, vec2<u32>(7697u, var_2.b.x)), Struct_2(Struct_1(var_1.x, vec2<u32>(30979u, var_2.b.x)), vec3<u32>(32013u, var_2.b.x, 6281u), vec4<f32>(837f, 815f, var_0, var_0), var_2.a), -212f), Struct_3(var_0, Struct_2(Struct_1(var_1.x, vec2<u32>(var_2.b.x, var_2.b.x)), vec3<u32>(47595u, var_2.b.x, 7112u), vec4<f32>(-141f, var_0, var_0, -681f), var_2.a), Struct_1(true, vec2<u32>(79255u, var_2.b.x)), Struct_2(Struct_1(false, vec2<u32>(21509u, 0u)), vec3<u32>(8731u, 11236u, 4294967295u), vec4<f32>(-109f, var_0, -1454f, -350f), var_1.x), var_0), Struct_3(var_0, Struct_2(Struct_1(true, vec2<u32>(var_2.b.x, 0u)), vec3<u32>(1u, 4294967295u, var_2.b.x), vec4<f32>(1848f, -1538f, 1285f, -1428f), var_2.a), Struct_1(var_1.x, vec2<u32>(var_2.b.x, var_2.b.x)), Struct_2(Struct_1(var_1.x, vec2<u32>(4294967295u, var_2.b.x)), vec3<u32>(0u, var_2.b.x, var_2.b.x), vec4<f32>(var_0, 157f, var_0, -810f), true), var_0)).a, select(~vec3<u32>(var_2.b.x, var_2.b.x, var_2.b.x), vec3<u32>(var_2.b.x, var_2.b.x, var_2.b.x), var_1.xwx), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_0, -687f) + vec4<f32>(3393f, var_0, 1000f, -804f)), !var_2.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0 - _wgslsmith_div_f32(-785f, -2027f)), -103f))), func_2(), Struct_3(var_0, Struct_2(func_4(vec3<f32>(695f, 622f, -1000f), Struct_3(1161f, Struct_2(Struct_1(var_2.a, vec2<u32>(4294967295u, var_2.b.x)), vec3<u32>(var_2.b.x, var_2.b.x, var_2.b.x), vec4<f32>(var_0, -356f, var_0, var_0), var_1.x), Struct_1(var_2.a, var_2.b), Struct_2(Struct_1(false, vec2<u32>(var_2.b.x, var_2.b.x)), vec3<u32>(var_2.b.x, 85194u, 41225u), vec4<f32>(var_0, var_0, var_0, -1111f), false), var_0), Struct_3(var_0, Struct_2(Struct_1(var_2.a, vec2<u32>(var_2.b.x, 4294967295u)), vec3<u32>(50651u, 0u, var_2.b.x), vec4<f32>(var_0, var_0, 742f, 766f), var_1.x), Struct_1(var_1.x, var_2.b), Struct_2(Struct_1(true, var_2.b), vec3<u32>(52604u, var_2.b.x, 13035u), vec4<f32>(var_0, 218f, var_0, var_0), false), 745f), Struct_3(-896f, Struct_2(Struct_1(var_1.x, vec2<u32>(var_2.b.x, var_2.b.x)), vec3<u32>(var_2.b.x, var_2.b.x, 4294967295u), vec4<f32>(-1170f, -345f, var_0, var_0), var_2.a), Struct_1(true, vec2<u32>(var_2.b.x, var_2.b.x)), Struct_2(Struct_1(var_2.a, var_2.b), vec3<u32>(var_2.b.x, 62969u, 4294967295u), vec4<f32>(-219f, var_0, var_0, var_0), true), var_0)).a, firstLeadingBit(vec3<u32>(var_2.b.x, var_2.b.x, 70319u)), vec4<f32>(311f, -1313f, _wgslsmith_f_op_f32(var_0 - 1048f), _wgslsmith_f_op_f32(min(-1413f, var_0))), all(select(vec2<bool>(true, var_1.x), vec2<bool>(var_2.a, var_2.a), var_1.x))), Struct_1(!(var_0 < 512f), func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-667f, var_0, var_0)), Struct_3(583f, Struct_2(Struct_1(var_2.a, vec2<u32>(var_2.b.x, 0u)), vec3<u32>(var_2.b.x, 4294967295u, var_2.b.x), vec4<f32>(-1000f, -478f, var_0, var_0), false), Struct_1(false, var_2.b), Struct_2(Struct_1(var_1.x, var_2.b), vec3<u32>(var_2.b.x, 4294967295u, var_2.b.x), vec4<f32>(var_0, var_0, var_0, var_0), var_1.x), var_0), Struct_3(var_0, Struct_2(Struct_1(var_2.a, vec2<u32>(var_2.b.x, 65660u)), vec3<u32>(var_2.b.x, var_2.b.x, var_2.b.x), vec4<f32>(var_0, -454f, var_0, 960f), var_1.x), Struct_1(true, vec2<u32>(var_2.b.x, 2761u)), Struct_2(Struct_1(true, vec2<u32>(var_2.b.x, var_2.b.x)), vec3<u32>(var_2.b.x, 0u, 30799u), vec4<f32>(-919f, -149f, var_0, var_0), var_2.a), -2241f), Struct_3(736f, Struct_2(Struct_1(var_2.a, vec2<u32>(var_2.b.x, 8740u)), vec3<u32>(var_2.b.x, 22473u, var_2.b.x), vec4<f32>(var_0, -1894f, var_0, var_0), false), Struct_1(var_2.a, vec2<u32>(4294967295u, 0u)), Struct_2(Struct_1(var_1.x, vec2<u32>(4294967295u, var_2.b.x)), vec3<u32>(14242u, var_2.b.x, 2604u), vec4<f32>(var_0, 395f, var_0, 1000f), true), 1000f)).b.zz), Struct_2(func_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1392f, 674f, var_0, 941f), vec4<f32>(845f, 1000f, 583f, -1003f), vec4<bool>(var_2.a, true, false, true))), u_input.a | 2147483647i, !vec3<bool>(var_2.a, false, var_1.x), var_1.yx).a, countOneBits(firstLeadingBit(vec3<u32>(0u, 4294967295u, var_2.b.x))), vec4<f32>(508f, 297f, var_0, -637f), false), var_0), Struct_1(!(_wgslsmith_add_i32(u_input.a, 2147483647i) != (u_input.a & -2147483647i)), _wgslsmith_add_vec2_u32(~(~var_2.b), var_2.b)));
    var var_4 = _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(f32(-1f) * -240f));
    let var_5 = func_5(vec3<i32>(u_input.a, 1i, u_input.a) & firstLeadingBit(abs(~vec3<i32>(u_input.a, u_input.a, u_input.a))), var_3.b, Struct_4(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 20352u, 0u, var_2.b.x), vec4<u32>(var_3.a.a.b.x, var_3.e.b.x, var_2.b.x, var_2.b.x), vec4<u32>(var_2.b.x, var_3.b.c.b.x, 1u, var_2.b.x) ^ vec4<u32>(1u, 0u, 12118u, var_3.e.b.x)), Struct_2(Struct_1(var_3.c.a, var_2.b), select(~var_3.d.b.b, ~vec3<u32>(var_2.b.x, 57618u, 1u), false), var_3.d.d.c, 53367u < var_2.b.x), var_3.e.b.x), func_4(var_3.a.c.xwx, var_3.b, Struct_3(var_3.b.d.c.x, Struct_2(Struct_1(var_3.a.a.a, vec2<u32>(48945u, 64841u)), ~vec3<u32>(var_2.b.x, var_2.b.x, 0u), vec4<f32>(var_3.d.b.c.x, var_3.a.c.x, 1353f, -1327f), var_3.b.b.a.a), func_4(_wgslsmith_div_vec3_f32(var_3.d.d.c.xxy, var_3.d.d.c.zzw), Struct_3(428f, Struct_2(Struct_1(var_2.a, vec2<u32>(var_2.b.x, var_2.b.x)), var_3.a.b, vec4<f32>(455f, 875f, 1187f, -438f), false), Struct_1(var_2.a, var_3.d.b.b.yx), var_3.b.d, var_0), var_3.b, Struct_3(-836f, Struct_2(var_3.a.a, var_3.a.b, var_3.d.d.c, false), var_3.d.c, Struct_2(Struct_1(false, vec2<u32>(var_2.b.x, 0u)), var_3.b.b.b, vec4<f32>(var_0, var_3.b.a, -454f, var_3.b.e), var_2.a), -1165f)).a, func_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.d.a, 831f, -110f, var_3.b.e))), _wgslsmith_mod_i32(4417i, 1i), var_1.xxw, var_1.wy), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1365f - -2453f)))), Struct_3(_wgslsmith_f_op_f32(-2007f - 1000f), func_5(vec3<i32>(u_input.a, u_input.a, -1i) ^ vec3<i32>(-47846i, -30155i, -12940i), var_3.d, Struct_4(vec4<u32>(var_2.b.x, 0u, 45104u, 1u), Struct_2(Struct_1(true, vec2<u32>(var_2.b.x, var_3.d.c.b.x)), vec3<u32>(1u, 21344u, 47867u), var_3.a.c, true), var_3.d.b.b.x), Struct_2(var_3.a.a, vec3<u32>(4294967295u, 61601u, var_2.b.x), var_3.b.d.c, var_1.x)), func_2(), func_1(var_3.b.b.c, ~u_input.a, var_1.yyy, var_1.yx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.c.x) + var_3.b.d.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_3.d.a), 1733f, _wgslsmith_f_op_f32(-var_3.b.d.c.x), func_5(vec3<i32>(u_input.a, -2147483647i, 65498i), var_3.b, Struct_4(vec4<u32>(0u, var_5.b.x, 1u, var_3.e.b.x), Struct_2(var_3.e, var_5.b, vec4<f32>(var_3.a.c.x, 352f, var_3.b.a, -1092f), true), 1u), Struct_2(var_5.a, vec3<u32>(var_2.b.x, var_5.a.b.x, var_5.b.x), var_5.c, true)).c.x)), firstTrailingBit(-10281i), vec3<bool>(all(var_1.zzy), !var_5.d, true), !vec2<bool>(var_3.e.b.x <= 9669u, var_2.a)).c.xww);
}

