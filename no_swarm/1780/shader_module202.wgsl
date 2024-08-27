struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<f32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)));
    var var_1 = vec4<bool>(true, all(vec3<bool>(!all(vec4<bool>(true, true, false, true)), true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) < var_0.x, !all(vec4<bool>(true, true, all(vec3<bool>(true, true, false)), u_input.b <= u_input.b)));
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -918f), _wgslsmith_f_op_f32(-var_0.x)))));
    var_1 = !(!(!select(vec4<bool>(true, var_1.x, true, var_1.x), vec4<bool>(var_1.x, var_1.x, false, true), vec4<bool>(false, var_1.x, true, var_1.x))));
    let var_3 = ~min(vec3<i32>(u_input.b, i32(-1i) * -31060i, 0i), ~_wgslsmith_add_vec3_i32(abs(vec3<i32>(u_input.b, u_input.b, u_input.b)), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -20161i, -2147483647i), vec3<i32>(u_input.b, -1i, u_input.b))));
    return u_input.b;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: vec4<u32>) -> u32 {
    global0 = arg_1.a.a.x;
    let var_0 = Struct_2(arg_1.a);
    return ~5048u;
}

fn func_2(arg_0: vec2<f32>) -> Struct_3 {
    let var_0 = Struct_3(Struct_1(vec4<u32>(1u, 42413u, 47934u, 47356u), -2147483647i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_0.x, arg_0.x), arg_0.x, _wgslsmith_f_op_f32(arg_0.x + arg_0.x)))), Struct_2(Struct_1(~vec4<u32>(u_input.a, u_input.c.x, 1u, u_input.a), u_input.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 566f, arg_0.x)))), _wgslsmith_div_vec2_f32(vec2<f32>(1f, -526f), arg_0), 454f);
    global0 = _wgslsmith_add_u32(func_4(_wgslsmith_sub_vec4_i32(vec4<i32>(-55787i, func_3(), _wgslsmith_mult_i32(var_0.b.a.b, 1i), abs(36102i)), _wgslsmith_div_vec4_i32(~vec4<i32>(var_0.a.b, var_0.b.a.b, -34361i, u_input.b), vec4<i32>(u_input.b, 35154i, -7747i, -16723i) | vec4<i32>(-13097i, var_0.a.b, -2147483647i, u_input.b))), var_0.b, select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), any(vec4<bool>(false, false, false, false))), vec3<bool>(var_0.a.a.x > 4294967295u, true, any(vec2<bool>(false, true))), true && (u_input.b >= u_input.b)), ~_wgslsmith_clamp_vec4_u32(firstTrailingBit(var_0.b.a.a), abs(vec4<u32>(u_input.c.x, u_input.a, var_0.a.a.x, var_0.b.a.a.x)), ~var_0.a.a)), ~(~4149u & func_4(vec4<i32>(-52056i, var_0.b.a.b, 1i, 1i), Struct_2(var_0.a), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), vec4<u32>(u_input.a, var_0.b.a.a.x, 0u, 3601u))));
    global0 = _wgslsmith_mod_u32(abs(~select(_wgslsmith_mod_u32(0u, 31439u), 76u, var_0.b.a.b >= -34415i)), ~var_0.a.a.x & 30796u);
    global0 = 32908u;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, -275f, -1252f, 102f), vec4<f32>(-273f, arg_0.x, arg_0.x, 1796f), false))))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, var_0.a.c.x, arg_0.x, -1046f), vec4<f32>(1181f, -1043f, var_0.b.a.c.x, -335f), true)))), vec4<f32>(arg_0.x, 698f, _wgslsmith_f_op_f32(-1452f - arg_0.x), _wgslsmith_f_op_f32(min(621f, -802f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.d, -968f, -167f, 1000f), vec4<f32>(-928f, arg_0.x, -1160f, var_0.b.a.c.x)))))));
    return Struct_3(var_0.b.a, var_0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c - _wgslsmith_f_op_vec2_f32(var_1.yw + _wgslsmith_f_op_vec2_f32(var_1.wy + vec2<f32>(-1182f, var_1.x))))), _wgslsmith_f_op_f32(-var_0.a.c.x));
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: bool) -> bool {
    global0 = u_input.a;
    let var_0 = min(~9308i, u_input.b);
    let var_1 = ~(-abs(-_wgslsmith_mod_vec3_i32(vec3<i32>(83976i, -17387i, 1i), vec3<i32>(68867i, -56963i, 17165i))));
    global0 = 0u;
    var var_2 = u_input.a;
    return true;
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_3, arg_3: Struct_3) -> f32 {
    let var_0 = arg_1;
    let var_1 = !vec4<bool>(any(select(!vec2<bool>(arg_1, var_0), select(vec2<bool>(true, var_0), vec2<bool>(arg_1, false), var_0), !vec2<bool>(true, var_0))), !(!arg_1) || !var_0, select(1i, _wgslsmith_add_i32(u_input.b, -25457i), false) >= _wgslsmith_add_i32(min(38598i, -1i), -1i | u_input.b), func_5(arg_1, func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 641f) - arg_3.b.a.c.zx)), vec3<bool>(arg_2.a.b <= arg_3.b.a.b, var_0, all(vec4<bool>(var_0, arg_1, var_0, arg_1))), true));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -354f);
    let var_3 = ~(~u_input.c.yy);
    let var_4 = arg_3.b.a.b;
    return -1185f;
}

fn func_6(arg_0: Struct_3, arg_1: Struct_1) -> vec4<u32> {
    global0 = arg_0.b.a.a.x;
    let var_0 = _wgslsmith_f_op_f32(-arg_0.c.x);
    var var_1 = vec3<bool>(false, true, true && func_5(any(vec3<bool>(true, true, true)), arg_0, select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), true));
    global0 = 72056u;
    let var_2 = func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_0.c.x, -987f), arg_0.c.x)));
    return abs(var_2.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~func_6(Struct_3(Struct_1(vec4<u32>(u_input.a, 1u, 1u, 1u), u_input.b, vec3<f32>(1000f, 1328f, -1173f)), Struct_2(Struct_1(vec4<u32>(1u, u_input.a, 6469u, u_input.c.x), -2147483647i, vec3<f32>(-1253f, 874f, -1411f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-604f, 282f)), _wgslsmith_f_op_f32(func_1(vec4<f32>(-615f, -449f, -800f, -452f), true, Struct_3(Struct_1(vec4<u32>(11984u, 0u, 1u, u_input.c.x), -41781i, vec3<f32>(-219f, 1726f, 1044f)), Struct_2(Struct_1(vec4<u32>(u_input.a, u_input.c.x, 1u, 1u), 66441i, vec3<f32>(1296f, -2432f, -1061f))), vec2<f32>(1659f, -1764f), -229f), Struct_3(Struct_1(vec4<u32>(u_input.c.x, 5859u, 1u, 36843u), u_input.b, vec3<f32>(-649f, 1126f, -527f)), Struct_2(Struct_1(vec4<u32>(4294967295u, 52934u, u_input.a, 1u), u_input.b, vec3<f32>(566f, 1021f, -1069f))), vec2<f32>(1351f, 674f), -489f)))), func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(373f, 1378f) - vec2<f32>(-1232f, -197f))).b.a), -12862i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1003f, _wgslsmith_f_op_f32(step(1003f, -744f)), _wgslsmith_f_op_f32(f32(-1f) * -1098f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(select(905f, -489f, true)), 417f))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -479f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -686f) + _wgslsmith_f_op_f32(var_0.c.x + var_0.c.x)) + -641f)));
    var_1 = _wgslsmith_f_op_vec2_f32(select(var_0.c.yy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1518f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(486f, var_0.c.x, false))))), any(!vec2<bool>(func_5(true, Struct_3(var_0, Struct_2(var_0), vec2<f32>(273f, var_0.c.x), var_1.x), vec3<bool>(false, true, false), false), true))));
    var var_2 = _wgslsmith_mult_vec4_u32(var_0.a, var_0.a);
    let var_3 = Struct_1(vec4<u32>(42882u, 73259u, ~_wgslsmith_mult_u32(var_0.a.x, ~var_2.x), 4294967295u), var_0.b & 0i, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.c.x, var_0.c.x, var_1.x), vec3<f32>(var_1.x, 1834f, -989f))) * _wgslsmith_f_op_vec3_f32(var_0.c - vec3<f32>(var_0.c.x, 1882f, var_1.x))), var_0.c), var_0.c));
    let var_4 = vec2<u32>(~u_input.a, ~countOneBits(5364u) | var_2.x);
    let var_5 = func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_0.c.x) + var_3.c.xz))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(229f, var_1.x) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-578f, var_3.c.x) - vec2<f32>(var_1.x, var_3.c.x))))))).b;
    global0 = ~(48694u << (firstLeadingBit(var_3.a.x) % 32u));
    let var_6 = vec2<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(851f, 1349f, var_0.c.x, var_0.c.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(743f, var_5.a.c.x, 114f, var_3.c.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-584f, var_3.c.x, var_3.c.x, -470f)), true)))), all(vec4<bool>(any(vec4<bool>(true, true, false, false)), true, any(vec3<bool>(true, true, false)), any(vec3<bool>(true, false, true)))), func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_0.c.yz, var_3.c.xx)), vec2<f32>(var_1.x, -343f))), func_2(vec2<f32>(_wgslsmith_f_op_f32(-var_3.c.x), var_3.c.x)))), var_5.a.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(var_3.c.x - _wgslsmith_f_op_f32(2054f + -1868f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.a.c.x, var_3.c.x, var_0.c.x, -1765f) + vec4<f32>(1531f, -1261f, 1067f, 204f)), any(vec2<bool>(false, false)), Struct_3(Struct_1(var_5.a.a, var_5.a.b, vec3<f32>(350f, var_5.a.c.x, var_6.x)), var_5, vec2<f32>(-1235f, -1000f), 2200f), Struct_3(var_3, Struct_2(var_5.a), var_0.c.xz, 908f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -391f) + _wgslsmith_f_op_f32(-var_3.c.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1641f)))), var_3.c, 4294967295u);
}

