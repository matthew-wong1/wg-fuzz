struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> vec4<i32> {
    var var_0 = select(!vec3<bool>(all(select(vec4<bool>(arg_0.x, true, true, arg_0.x), vec4<bool>(arg_0.x, arg_2, arg_2, false), arg_2)), false, arg_0.x), !(!vec3<bool>(!arg_0.x, all(vec2<bool>(arg_0.x, arg_0.x)), arg_3 < 247f)), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 * 1000f)) > 1062f));
    let var_1 = Struct_2(arg_1, Struct_1(arg_1.a, arg_1.b, arg_1.a, vec3<u32>(~_wgslsmith_clamp_u32(2065u, u_input.b, 12010u), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.b, arg_1.b.x), arg_1.d.x, 0u), u_input.a.x)));
    let var_2 = -35384i;
    var_0 = !select(select(!(!vec3<bool>(arg_2, arg_2, arg_2)), vec3<bool>(false, arg_1.a < -1i, arg_0.x), vec3<bool>(var_0.x, !arg_0.x, false)), select(select(select(vec3<bool>(var_0.x, arg_0.x, true), vec3<bool>(true, var_0.x, false), vec3<bool>(true, var_0.x, false)), vec3<bool>(var_0.x, arg_2, arg_2), vec3<bool>(false, arg_0.x, false)), vec3<bool>(true, true, all(vec4<bool>(arg_0.x, arg_0.x, false, var_0.x))), !vec3<bool>(arg_2, false, arg_2)), vec3<bool>(_wgslsmith_mult_i32(var_2, 0i) > var_2, any(select(vec2<bool>(arg_2, false), vec2<bool>(true, false), false)), arg_2));
    var var_3 = var_1.a;
    return countOneBits(((vec4<i32>(var_2, -2147483647i, 0i, 1i) & vec4<i32>(56002i, 30620i, -79499i, var_3.a)) << (vec4<u32>(var_1.b.d.x, 4294967295u, 1u, 35774u) % vec4<u32>(32u))) | -abs(vec4<i32>(var_3.a, 1i, var_3.a, 1i))) | -(~vec4<i32>(15340i, i32(-1i) * -34070i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, arg_1.a, arg_1.c), vec4<i32>(var_3.a, -22726i, var_3.c, -1i)), var_2));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: bool) -> vec3<f32> {
    var var_0 = arg_0.b.c;
    let var_1 = arg_0.a.c;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 1794f, -1390f), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 633f, -271f) + vec3<f32>(-817f, -712f, -772f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-662f, arg_1, -1191f) - vec3<f32>(arg_1, arg_1, arg_1)) - vec3<f32>(-814f, arg_1, 681f))))));
    let var_3 = 1639f;
    var var_4 = _wgslsmith_f_op_f32(max(arg_1, arg_1));
    return var_2;
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<bool>, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = vec4<bool>(!arg_3.x, all(!select(arg_3, vec3<bool>(false, arg_2.x, true), !arg_2.xxy)), true, ~(~(~arg_0)) > arg_0);
    let var_1 = Struct_1(7976i, vec4<u32>(u_input.d, abs(~(~u_input.b)), 1u, 91969u), -(~(-11679i)), vec3<u32>(_wgslsmith_sub_u32(select(1u >> (u_input.b % 32u), u_input.d, any(arg_3)), _wgslsmith_clamp_u32(~4294967295u, u_input.a.x, u_input.b)), u_input.a.x, _wgslsmith_div_u32(4294967295u, u_input.a.x)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1219f)) + arg_1.x);
    let var_3 = Struct_3(arg_1.x);
    var var_4 = _wgslsmith_div_f32(_wgslsmith_div_f32(943f, 308f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-430f * var_3.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2))));
    return Struct_2(Struct_1(select(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-4544i, 1i), arg_0 ^ 0i), arg_0, arg_2.x), var_1.b, -1i, u_input.a), var_1);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<i32>) -> i32 {
    var var_0 = func_4(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-func_2(vec2<bool>(false, true), Struct_1(arg_1.x, vec4<u32>(12029u, 49607u, arg_0.x, u_input.a.x), 11702i, vec3<u32>(2752u, arg_0.x, 1u)), false, 1459f), ~(~vec4<i32>(2147483647i, arg_1.x, arg_1.x, arg_1.x))), firstTrailingBit(select(~vec4<i32>(arg_1.x, -40592i, -2147483647i, -7411i), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, 44393i, arg_1.x), vec4<i32>(arg_1.x, 22159i, 12170i, arg_1.x)), vec4<bool>(true, true, true, true)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(715f, -572f, 789f)), _wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(arg_1.x, vec4<u32>(arg_0.x, u_input.b, 90679u, u_input.d), arg_1.x, u_input.a), Struct_1(arg_1.x, vec4<u32>(arg_0.x, 47799u, 47946u, 0u), arg_1.x, vec3<u32>(24623u, 19352u, 940u))), -1377f, false)))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1656f, 373f, 1486f) + vec3<f32>(1000f, -955f, 1281f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-246f, -741f, 234f), vec3<f32>(634f, 744f, 163f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-757f, 904f, -478f) - _wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(-11051i, vec4<u32>(1u, u_input.b, u_input.a.x, u_input.b), arg_1.x, vec3<u32>(47807u, u_input.b, 0u)), Struct_1(arg_1.x, vec4<u32>(4294967295u, arg_0.x, 4294967295u, 1u), arg_1.x, vec3<u32>(u_input.c, 19283u, u_input.d))), 1000f, true))) + vec3<f32>(-2075f, -1015f, -1204f))), vec4<bool>(true, true, true, true), vec3<bool>(true, true, true));
    var_0 = Struct_2(Struct_1((func_2(vec2<bool>(true, false), Struct_1(var_0.a.a, var_0.b.b, arg_1.x, var_0.a.d), true, -388f).x & firstTrailingBit(arg_1.x)) >> (~1u % 32u), select(vec4<u32>(1u, ~4294967295u, ~1u, ~4294967295u), var_0.b.b, vec4<bool>(46530u != u_input.b, any(vec4<bool>(true, true, true, true)), true, false)), -_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.c, 0i), max(vec2<i32>(-1i, 1i), arg_1)), _wgslsmith_mod_vec3_u32(~_wgslsmith_add_vec3_u32(var_0.a.b.zzw, vec3<u32>(0u, 0u, var_0.a.b.x)), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(45359u, arg_0.x, var_0.b.d.x), u_input.a)))), var_0.a);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -358f))), _wgslsmith_f_op_f32(f32(-1f) * -732f))));
    let var_2 = _wgslsmith_f_op_f32(floor(-935f));
    return 43442i;
}

fn func_5(arg_0: vec2<i32>) -> i32 {
    return -30991i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(i32(-1i) * -91962i, -16630i, func_5(_wgslsmith_sub_vec2_i32(vec2<i32>(i32(-1i) * -6695i, func_1(u_input.a.zz, vec2<i32>(-33924i, 941i))), vec2<i32>(-25195i, -8652i))));
    let var_1 = ~_wgslsmith_mult_i32(var_0.x, 27241i << (~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.c, u_input.c), vec4<u32>(28955u, u_input.b, 4294967295u, u_input.a.x)) % 32u));
    var var_2 = select(!vec4<bool>(any(vec3<bool>(true, true, false)), true, true, select(true, true, true) == any(vec4<bool>(false, true, false, true))), !vec4<bool>(true, select(true, true, true), false, false), true);
    var var_3 = func_4(firstLeadingBit(var_1), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1461f + -397f)), 157f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-294f * _wgslsmith_f_op_f32(1118f - -1605f)))), select(select(!select(vec4<bool>(var_2.x, true, var_2.x, true), vec4<bool>(var_2.x, var_2.x, false, false), var_2.x), !vec4<bool>(true, var_2.x, true, true), true), select(!select(vec4<bool>(var_2.x, false, true, var_2.x), vec4<bool>(var_2.x, true, false, true), vec4<bool>(false, false, var_2.x, false)), select(!vec4<bool>(var_2.x, var_2.x, false, var_2.x), select(vec4<bool>(true, false, true, var_2.x), vec4<bool>(true, var_2.x, false, false), true), !vec4<bool>(false, var_2.x, true, true)), !var_2.x), true), select(select(!select(vec3<bool>(true, false, false), vec3<bool>(var_2.x, var_2.x, true), var_2.xyy), var_2.yyz, !select(vec3<bool>(var_2.x, var_2.x, var_2.x), var_2.wzz, var_2.yyz)), var_2.yyx, ~u_input.c > u_input.b));
    let var_4 = -14378i;
    var_2 = select(vec4<bool>(all(vec2<bool>(!var_2.x, true)), any(!vec3<bool>(true, true, var_2.x)), var_2.x, u_input.a.x < _wgslsmith_add_u32(0u, ~u_input.d)), vec4<bool>(false, var_2.x, !var_2.x & (true & !var_2.x), true), !(!(!(!vec4<bool>(true, var_2.x, true, var_2.x)))));
    var var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2302f, -1804f) * vec2<f32>(999f, -761f)), vec2<f32>(-1418f, -292f)))));
    var_2 = vec4<bool>(var_2.x, !(var_2.x != var_2.x), ~u_input.b >= ~0u, any(!var_2.xwx));
    let x = u_input.a;
    s_output = StorageBuffer(var_4, ~u_input.a, ~reverseBits(vec4<i32>(~var_0.x, -10789i, 54959i, _wgslsmith_sub_i32(1i, var_3.b.a))), _wgslsmith_clamp_vec4_u32(firstLeadingBit(_wgslsmith_mult_vec4_u32(var_3.a.b, min(vec4<u32>(41480u, var_3.b.b.x, 0u, 33059u), vec4<u32>(var_3.a.d.x, var_3.b.b.x, 0u, u_input.a.x)))), ~vec4<u32>(2417u, 1u, 17647u, var_3.b.b.x) >> (vec4<u32>(max(u_input.c, u_input.c), 0u, func_4(-6471i, vec3<f32>(626f, var_5.x, var_5.x), vec4<bool>(false, var_2.x, var_2.x, true), var_2.www).a.b.x, _wgslsmith_add_u32(0u, u_input.d)) % vec4<u32>(32u)), ~var_3.b.b & var_3.a.b), -func_1(vec2<u32>(var_3.b.d.x, u_input.a.x), _wgslsmith_mod_vec2_i32(var_0.yz, var_0.yz)) | (i32(-1i) * -1i));
}

