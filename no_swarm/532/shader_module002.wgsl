struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<i32>,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    let var_0 = u_input.a;
    var var_1 = arg_0.e;
    var_1 = arg_1.a.e;
    var_1 = _wgslsmith_sub_u32(arg_1.b.x, ~countOneBits(4294967295u));
    let var_2 = vec4<f32>(arg_1.d.x, _wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -425f) + 1161f), _wgslsmith_f_op_f32(-arg_1.d.x));
    return true;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: bool, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = arg_3;
    return vec3<bool>(true, false, all(vec2<bool>(true, func_1(Struct_1(var_0.e.b, u_input.a.x, arg_2, arg_3.e.d, arg_0.x), arg_3))));
}

fn func_2(arg_0: Struct_3) -> f32 {
    let var_0 = ~u_input.b.zw;
    let var_1 = -44398i;
    let var_2 = Struct_2(Struct_1(13668i, 12095i, true, vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(-2147483647i, var_1), ~0i), 1i, firstLeadingBit(0i)), 1u), select(_wgslsmith_sub_vec3_u32(~firstTrailingBit(vec3<u32>(var_0.x, var_0.x, 44079u)), min(arg_0.c, ~vec3<u32>(var_0.x, 23464u, arg_0.c.x))), ~max(select(vec3<u32>(arg_0.c.x, var_0.x, var_0.x), arg_0.c, vec3<bool>(true, arg_0.e, true)), max(arg_0.c, vec3<u32>(u_input.b.x, 0u, var_0.x))), func_3(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(100652u, 8085u), vec2<u32>(79758u, arg_0.c.x)), ~var_0), vec3<bool>(true, func_1(Struct_1(-1i, 0i, true, vec3<i32>(var_1, 2147483647i, 48956i), u_input.b.x), Struct_2(Struct_1(var_1, 2147483647i, arg_0.e, vec3<i32>(-47210i, -33174i, var_1), 2376u), u_input.b.wzy, vec2<u32>(13936u, u_input.c), vec3<f32>(-765f, arg_0.d, -892f), Struct_1(0i, var_1, arg_0.a.x, vec3<i32>(0i, u_input.a.x, 2147483647i), var_0.x))), true), !select(false, arg_0.a.x, arg_0.a.x), Struct_2(Struct_1(var_1, var_1, arg_0.a.x, vec3<i32>(var_1, u_input.a.x, -19885i), u_input.b.x), vec3<u32>(u_input.c, 12595u, arg_0.c.x), ~vec2<u32>(6452u, 17868u), vec3<f32>(arg_0.b.x, arg_0.b.x, 1347f), Struct_1(u_input.a.x, var_1, arg_0.a.x, vec3<i32>(-1i, 1283i, u_input.a.x), u_input.c)))), u_input.b.zz, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-511f, arg_0.b.x, 872f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, 1337f, arg_0.d))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, 1268f, arg_0.b.x)), vec3<f32>(108f, -1114f, -989f))))), Struct_1(var_1, 0i, false, select(vec3<i32>(1i, i32(-1i) * -1i, _wgslsmith_mod_i32(var_1, -12510i)), vec3<i32>(-30504i, 2147483647i, u_input.a.x) & select(vec3<i32>(-8175i, -77283i, var_1), vec3<i32>(u_input.a.x, -7927i, 13582i), vec3<bool>(arg_0.a.x, true, false)), vec3<bool>(all(vec4<bool>(false, true, arg_0.a.x, false)), 31469i > var_1, any(arg_0.a))), _wgslsmith_sub_u32(u_input.b.x, 21145u)));
    var var_3 = var_0;
    let var_4 = _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(441u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.b, u_input.b) ^ (u_input.b | u_input.b), _wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(u_input.c, var_2.c.x, var_2.c.x, 1u))), 1u, 9521u));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-1i, u_input.a.x, true, vec3<i32>(~(-reverseBits(77119i)), -max(~u_input.a.x, _wgslsmith_sub_i32(-2147483647i, u_input.a.x)), firstLeadingBit(9891i)), _wgslsmith_mod_u32(~u_input.b.x, u_input.c));
    let var_1 = Struct_3(vec2<bool>(true, var_0.c), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1311f)), 1f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(558f, -452f))), vec2<bool>(var_0.c, func_1(Struct_1(u_input.a.x, 62597i, true, vec3<i32>(var_0.d.x, var_0.d.x, var_0.b), u_input.c), Struct_2(var_0, u_input.b.wyz, u_input.b.yy, vec3<f32>(429f, 694f, 440f), var_0))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(520f, -474f) - vec2<f32>(1451f, 788f)) + vec2<f32>(-1691f, -1000f)))), false)), u_input.b.zzz, 1017f, var_0.c);
    var var_2 = vec4<bool>(!(_wgslsmith_f_op_f32(var_1.b.x - var_1.b.x) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_3(var_1.a, vec2<f32>(var_1.b.x, var_1.b.x), vec3<u32>(4294967295u, u_input.b.x, u_input.c), -191f, var_1.a.x))), _wgslsmith_f_op_f32(trunc(var_1.d)))), func_3(vec2<u32>(_wgslsmith_add_u32(1u, select(var_1.c.x, 7773u, var_0.c)), 0u), select(select(!vec3<bool>(false, false, var_1.a.x), vec3<bool>(true, var_0.c, var_1.a.x), -160f > var_1.b.x), !select(vec3<bool>(true, var_0.c, false), vec3<bool>(var_0.c, true, var_1.a.x), var_1.a.x), !func_3(vec2<u32>(61728u, var_1.c.x), vec3<bool>(var_0.c, var_0.c, var_1.a.x), true, Struct_2(var_0, vec3<u32>(129982u, 20087u, 159u), u_input.b.wy, vec3<f32>(679f, 610f, 1355f), var_0))), var_1.e, Struct_2(var_0, firstLeadingBit(vec3<u32>(34012u, 55009u, u_input.c)), var_1.c.zx ^ vec2<u32>(1u, 4294967295u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d, 1386f, -247f) - vec3<f32>(888f, -1263f, var_1.b.x))), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 69985i, -19867i, u_input.a.x), vec4<i32>(0i, 1i, u_input.a.x, 2147483647i)), 2147483647i, true, firstLeadingBit(var_0.d), u_input.b.x))).x, true, _wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(var_1.c.xy, var_1.c.yy), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c.x, var_1.c.x, 53710u, var_0.e), vec4<u32>(4294967295u, var_0.e, 1u, 32689u)), var_1.c.x)) >= (91644u | ~u_input.b.x));
    let var_3 = Struct_1(_wgslsmith_clamp_i32(-abs(-14484i), -2147483647i, firstLeadingBit(~(2147483647i ^ u_input.a.x))), 0i & u_input.a.x, var_2.x, vec3<i32>(1i, var_0.d.x, 2147483647i), u_input.c);
    let var_4 = Struct_1(u_input.a.x, u_input.a.x ^ u_input.a.x, all(!var_1.a), min(vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(var_0.d, vec3<i32>(var_3.d.x, var_0.a, -1i)), var_3.d), u_input.c);
    var_2 = vec4<bool>(true, var_3.c, var_1.a.x, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.d)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -1028f, var_1.d), vec3<f32>(var_1.d, var_1.b.x, var_1.d), var_4.c)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.d, var_1.b.x, -579f), vec3<f32>(var_1.b.x, 414f, var_1.d)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d, var_1.d, -520f) * vec3<f32>(-335f, var_1.d, var_1.d)))))) - vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(max(var_1.d, 1512f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.d * -677f), var_1.b.x))), var_4.d);
}

