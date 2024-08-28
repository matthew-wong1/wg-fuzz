struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_2 = Struct_2(Struct_1(-12194i, 12418i, vec3<u32>(0u, 68460u, 37183u), vec2<i32>(-23935i, 2147483647i), 37944u), vec2<i32>(13173i, 2147483647i));

var<private> global2: bool = false;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    var var_0 = u_input.b;
    var var_1 = _wgslsmith_mod_vec3_i32(arg_1 | u_input.c, ~(~firstLeadingBit(arg_1)));
    global0 = u_input.b.yz;
    var_1 = vec3<i32>(-arg_1.x, i32(-1i) * -793i, _wgslsmith_dot_vec3_i32(vec3<i32>(~arg_0.a.d.x, -53383i, arg_2.b.x), vec3<i32>(_wgslsmith_mod_i32(global1.b.x, -2147483647i), -arg_0.b.x, global1.a.d.x)));
    let var_2 = !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), true));
    return arg_2;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_1(u_input.a.x, abs(-1i) << (global1.a.e % 32u), global1.a.c, abs(_wgslsmith_sub_vec2_i32(vec2<i32>(32852i, 0i) | (vec2<i32>(global1.b.x, u_input.a.x) | vec2<i32>(u_input.a.x, global1.b.x)), reverseBits(~vec2<i32>(global1.a.d.x, -44489i)))), 53950u);
    global0 = _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(global1.a.e, 33016u)), _wgslsmith_mod_vec2_u32(arg_1.yx, vec2<u32>(1u, u_input.b.x))), vec2<u32>(_wgslsmith_add_u32(global1.a.c.x, arg_0.x), 66869u) & _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.x, global1.a.e), vec2<u32>(arg_0.x, u_input.b.x), ~vec2<u32>(var_0.e, 4294967295u))), arg_0.xw);
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1627f, -1000f, -1173f, 406f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-556f, 257f, 907f, 291f))), true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-612f + -2350f), _wgslsmith_f_op_f32(select(625f, 441f, false)), _wgslsmith_f_op_f32(f32(-1f) * -474f), -1000f) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(945f, 1000f, -373f, -489f)), vec4<f32>(-159f, 453f, -257f, 327f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-362f, 473f, arg_2.x)), -212f, 123f, _wgslsmith_f_op_f32(round(-1268f)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-510f, var_1.x)) - 1292f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -195f) + _wgslsmith_f_op_f32(-var_1.x)), var_1.x), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(-var_1.x)) * var_1.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.x, 1344f), _wgslsmith_f_op_f32(1052f + var_1.x))))), var_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), vec4<bool>(!select(true, arg_2.x, -603f != var_1.x), any(select(vec2<bool>(false, arg_2.x), select(vec2<bool>(arg_2.x, arg_2.x), arg_2, arg_2), all(vec3<bool>(arg_2.x, arg_2.x, arg_2.x)))), false, true)));
    var var_2 = Struct_2(func_1(func_1(func_1(func_1(Struct_2(var_0, vec2<i32>(var_0.b, global1.b.x)), u_input.c, Struct_2(Struct_1(u_input.c.x, -2147483647i, var_0.c, vec2<i32>(3202i, 7524i), arg_1.x), u_input.a.zx), var_0), _wgslsmith_add_vec3_i32(u_input.a.zyz, u_input.c), func_1(Struct_2(Struct_1(-822i, var_0.b, arg_0.zzx, vec2<i32>(var_0.b, -1i), var_0.e), global1.a.d), u_input.c, Struct_2(Struct_1(u_input.a.x, -2147483647i, u_input.b.xxx, vec2<i32>(-2147483647i, -35687i), var_0.e), vec2<i32>(-2147483647i, global1.b.x)), global1.a), func_1(Struct_2(var_0, u_input.c.zy), u_input.c, Struct_2(Struct_1(-40293i, 23988i, vec3<u32>(var_0.c.x, 4294967295u, 0u), global1.a.d, var_0.c.x), vec2<i32>(global1.a.b, -2147483647i)), global1.a).a), ~(u_input.a.wwx >> (arg_0.xzx % vec3<u32>(32u))), func_1(func_1(Struct_2(Struct_1(u_input.a.x, global1.a.d.x, u_input.b.ywz, vec2<i32>(-2363i, 2147483647i), 1u), var_0.d), u_input.c, Struct_2(global1.a, var_0.d), var_0), -vec3<i32>(1i, var_0.a, global1.b.x), func_1(Struct_2(global1.a, global1.a.d), u_input.a.zyz, Struct_2(global1.a, vec2<i32>(-21096i, global1.a.d.x)), Struct_1(11948i, u_input.c.x, vec3<u32>(4294967295u, 16152u, arg_1.x), u_input.c.zz, 0u)), global1.a), Struct_1(var_0.a >> (arg_1.x % 32u), 1i, ~vec3<u32>(30924u, global1.a.e, var_0.e), -vec2<i32>(var_0.d.x, global1.a.a), 1u)), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, -global1.b.x, _wgslsmith_sub_i32(-19012i, 16461i)), ~vec3<i32>(var_0.d.x, 12542i, -1i) << (_wgslsmith_mult_vec3_u32(arg_0.wxz, vec3<u32>(1300u, var_0.c.x, var_0.e)) % vec3<u32>(32u))), func_1(Struct_2(func_1(Struct_2(Struct_1(-25883i, 2147483647i, arg_0.wxy, var_0.d, 0u), global1.b), u_input.a.yxx, Struct_2(Struct_1(global1.b.x, -38284i, global1.a.c, vec2<i32>(-1i, -2147483647i), 26107u), var_0.d), var_0).a, vec2<i32>(-71202i, global1.a.d.x)), vec3<i32>(-8909i ^ var_0.b, abs(global1.b.x), ~u_input.a.x), Struct_2(var_0, vec2<i32>(global1.a.a, -14959i)), func_1(Struct_2(global1.a, u_input.c.zy), u_input.c, Struct_2(Struct_1(global1.a.d.x, 1i, u_input.b.yxx, vec2<i32>(24126i, u_input.c.x), 42382u), vec2<i32>(global1.a.d.x, 51210i)), func_1(Struct_2(var_0, vec2<i32>(27471i, u_input.c.x)), u_input.a.xxz, Struct_2(var_0, var_0.d), var_0).a).a), func_1(Struct_2(global1.a, global1.a.d), ~u_input.c, Struct_2(func_1(Struct_2(Struct_1(-3515i, -2147483647i, vec3<u32>(u_input.b.x, arg_0.x, 47033u), vec2<i32>(global1.a.a, u_input.a.x), u_input.b.x), vec2<i32>(var_0.a, var_0.a)), u_input.c, Struct_2(var_0, var_0.d), var_0).a, -vec2<i32>(-5022i, 25024i)), func_1(Struct_2(var_0, vec2<i32>(-1i, -11986i)), vec3<i32>(var_0.d.x, u_input.c.x, 2147483647i), func_1(Struct_2(Struct_1(10151i, 14650i, arg_1.zzx, vec2<i32>(u_input.c.x, 2147483647i), u_input.b.x), vec2<i32>(u_input.c.x, -1i)), u_input.a.xwy, Struct_2(var_0, vec2<i32>(-45270i, global1.b.x)), var_0), Struct_1(0i, u_input.c.x, u_input.b.xwx, u_input.a.wz, arg_1.x)).a).a).a, _wgslsmith_mult_vec2_i32(reverseBits(var_0.d), -var_0.d));
    return var_0;
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: u32) -> f32 {
    global0 = u_input.b.xw << (u_input.b.zy % vec2<u32>(32u));
    let var_0 = u_input.a.x;
    let var_1 = vec2<i32>(2147483647i << (arg_2.a.e % 32u), max(func_1(arg_2, _wgslsmith_clamp_vec3_i32(~vec3<i32>(-29055i, arg_2.a.a, 17968i), vec3<i32>(arg_2.b.x, 28745i, arg_2.b.x), _wgslsmith_mult_vec3_i32(vec3<i32>(global1.a.d.x, -34996i, -1i), u_input.a.zyw)), Struct_2(func_3(u_input.b, u_input.b, vec2<bool>(false, false)), global1.a.d), Struct_1(var_0, i32(-1i) * -1i, vec3<u32>(arg_3, 4294967295u, global0.x), reverseBits(u_input.a.wy), 47084u)).a.a, var_0));
    global2 = any(!select(vec2<bool>(true, select(true, true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(false, false, true))), vec2<bool>(true, true)));
    var var_2 = _wgslsmith_dot_vec2_u32(global1.a.c.yz, global1.a.c.xx);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(arg_1.x, -474f))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !(!(_wgslsmith_f_op_f32(func_2(firstTrailingBit(u_input.b.x), vec2<f32>(-1000f, -1000f), func_1(Struct_2(Struct_1(global1.a.b, u_input.c.x, vec3<u32>(global1.a.c.x, u_input.b.x, 86805u), vec2<i32>(u_input.a.x, u_input.c.x), 1u), vec2<i32>(0i, global1.a.d.x)), u_input.c, Struct_2(Struct_1(u_input.c.x, 2147483647i, vec3<u32>(global1.a.c.x, u_input.b.x, 4294967295u), global1.a.d, global0.x), vec2<i32>(u_input.c.x, 2147483647i)), global1.a), 0u >> (1u % 32u))) > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2570f + -1468f), _wgslsmith_f_op_f32(-1631f - -103f)))));
    global1 = func_1(Struct_2(Struct_1(-(u_input.a.x ^ global1.a.a), 0i, abs(vec3<u32>(u_input.b.x, u_input.b.x, 6258u)), reverseBits(global1.b >> (vec2<u32>(u_input.b.x, 4294967295u) % vec2<u32>(32u))), ~39922u), vec2<i32>(_wgslsmith_sub_i32(~31835i, -7549i), global1.a.b)), u_input.c, func_1(func_1(func_1(Struct_2(global1.a, vec2<i32>(global1.b.x, global1.b.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(global1.a.b, 1i, global1.a.d.x), u_input.c, vec3<i32>(2147483647i, global1.a.b, 2147483647i)), func_1(Struct_2(Struct_1(-1i, global1.b.x, u_input.b.zyz, u_input.c.xx, 7252u), vec2<i32>(2147483647i, u_input.a.x)), vec3<i32>(u_input.a.x, global1.b.x, -16297i), Struct_2(Struct_1(u_input.c.x, -39206i, u_input.b.xyx, vec2<i32>(u_input.a.x, u_input.a.x), 10035u), vec2<i32>(-2147483647i, 1i)), Struct_1(u_input.c.x, u_input.a.x, vec3<u32>(1u, 1u, 0u), vec2<i32>(u_input.c.x, u_input.a.x), 36964u)), func_3(vec4<u32>(34981u, 30483u, global1.a.c.x, u_input.b.x), vec4<u32>(4294967295u, 89472u, 1u, 4294967295u), vec2<bool>(false, true))), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, -27759i, -94736i), u_input.a.yxy), -u_input.c, ~vec3<i32>(u_input.a.x, global1.b.x, -20396i)), Struct_2(Struct_1(global1.b.x, 28753i, u_input.b.zzw, global1.b, global1.a.e), -u_input.c.yx), global1.a), -_wgslsmith_add_vec3_i32(u_input.a.yzy, -u_input.a.yyw), Struct_2(global1.a, vec2<i32>(2147483647i | u_input.a.x, i32(-1i) * -8879i)), func_3(u_input.b, vec4<u32>(4294967295u, global0.x, ~u_input.b.x, _wgslsmith_div_u32(global1.a.c.x, 1u)), vec2<bool>(true, true))), global1.a);
    let var_0 = _wgslsmith_mod_i32(countOneBits(-global1.a.b), _wgslsmith_sub_i32(func_1(Struct_2(global1.a, u_input.c.zy), ~u_input.c, Struct_2(global1.a, func_3(u_input.b, vec4<u32>(global1.a.c.x, global1.a.c.x, 0u, u_input.b.x), vec2<bool>(true, false)).d), Struct_1(_wgslsmith_mult_i32(0i, 0i), min(0i, 1i), global1.a.c, vec2<i32>(global1.b.x, u_input.c.x), 5534u)).a.d.x, func_3(~(u_input.b & vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x)), vec4<u32>(~16483u, u_input.b.x, ~u_input.b.x, ~global0.x), vec2<bool>(any(vec4<bool>(false, false, false, true)), false)).b));
    global0 = firstTrailingBit(firstTrailingBit(vec2<u32>(24465u, ~_wgslsmith_mod_u32(1u, u_input.b.x))));
    global2 = true;
    global0 = max(_wgslsmith_mod_vec2_u32(vec2<u32>(9971u, func_1(Struct_2(global1.a, global1.a.d), u_input.c, Struct_2(Struct_1(global1.b.x, 2147483647i, global1.a.c, vec2<i32>(global1.a.b, -2147483647i), 22821u), global1.a.d), global1.a).a.c.x), ~select(global1.a.c.yy, vec2<u32>(64252u, global1.a.c.x), vec2<bool>(true, true))), vec2<u32>(_wgslsmith_sub_u32(26939u, ~global0.x), 40830u));
    global0 = vec2<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(max(~28309u, ~u_input.b.x), min(56328u, 1u)), ~global1.a.c.zy));
    let var_1 = global1.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(~global0.x), func_1(Struct_2(Struct_1(0i, -7765i, vec3<u32>(u_input.b.x, u_input.b.x, 18602u), vec2<i32>(-63449i, var_1.a), 1u), u_input.c.yy | global1.b), ~vec3<i32>(var_0, 2147483647i, global1.a.b), func_1(Struct_2(Struct_1(var_0, var_1.b, vec3<u32>(89266u, var_1.c.x, 57985u), var_1.d, global0.x), u_input.c.xx), u_input.a.yxz, func_1(Struct_2(Struct_1(0i, -72417i, global1.a.c, var_1.d, 31904u), vec2<i32>(var_1.d.x, global1.b.x)), vec3<i32>(-8569i, -34271i, -25047i), Struct_2(global1.a, vec2<i32>(-55101i, 36416i)), global1.a), global1.a), Struct_1(_wgslsmith_add_i32(var_1.b, var_0), _wgslsmith_dot_vec3_i32(u_input.c, u_input.a.zzx), vec3<u32>(var_1.c.x, u_input.b.x, 4294967295u) & vec3<u32>(global1.a.c.x, 0u, global0.x), var_1.d, ~u_input.b.x)).a.e, _wgslsmith_mult_u32(4294967295u, global1.a.e)), ~1u, ~min(40442i, ~_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(1i, var_1.d.x, var_0, -1i))));
}

