struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 51015i;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: u32) -> vec2<u32> {
    var var_0 = Struct_2(Struct_1(countOneBits(countOneBits(1u)), u_input.c.xz), !vec4<bool>(select(all(vec4<bool>(true, false, false, false)), false, u_input.a != 24298u), true, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, -41395i, 1i, -1i), vec4<i32>(u_input.e.x, u_input.e.x, 24081i, u_input.e.x)) > u_input.e.x, true), Struct_1(_wgslsmith_dot_vec3_u32(select(_wgslsmith_add_vec3_u32(vec3<u32>(0u, arg_0, 9811u), u_input.c), vec3<u32>(arg_0, 42147u, u_input.b), true), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 0u, 2719u, 57618u), vec4<u32>(u_input.b, u_input.d, arg_0, arg_0)), ~u_input.b, max(arg_0, arg_0))), _wgslsmith_mult_vec2_u32(~vec2<u32>(41442u, 1u), u_input.c.yx)));
    global0 = 1i;
    let var_1 = -2453i;
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1288f, 147f)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1783f, 748f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(441f, -486f))))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1247f, 229f), vec2<f32>(-783f, -1055f), true)), _wgslsmith_sub_i32(var_1, u_input.e.x) > firstTrailingBit(1i)))), vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(~u_input.e.zy, vec2<i32>(17532i, var_1)), ~u_input.e.xz), select(_wgslsmith_sub_i32(_wgslsmith_mod_i32(var_1, u_input.e.x), _wgslsmith_sub_i32(u_input.e.x, var_1)), u_input.e.x, var_0.b.x && any(vec3<bool>(var_0.b.x, false, false)))), Struct_2(var_0.c, !select(vec4<bool>(true, var_0.b.x, true, var_0.b.x), vec4<bool>(false, var_0.b.x, false, var_0.b.x), vec4<bool>(false, var_0.b.x, var_0.b.x, var_0.b.x)), var_0.c));
    var var_3 = select(vec4<i32>(~u_input.e.x, var_2.b.x, 46084i, var_2.b.x), vec4<i32>(_wgslsmith_sub_i32(min(-u_input.e.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, u_input.e.x), vec2<i32>(-1i, var_2.b.x))), u_input.e.x), -select(_wgslsmith_sub_i32(-27504i, -2147483647i), var_1, var_0.b.x), -8462i, 1i), vec4<bool>(false, any(select(var_0.b.yxy, vec3<bool>(true, true, true), true)), select(_wgslsmith_mod_i32(var_2.b.x, -2361i) < (47657i << (arg_0 % 32u)), true, false), var_2.c.b.x));
    return _wgslsmith_add_vec2_u32(~(~abs(vec2<u32>(0u, 17408u) | u_input.c.xz)), ~(~_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, 4294967295u), vec2<u32>(41294u, 4294967295u)), u_input.c.xy)));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: Struct_1) -> vec3<i32> {
    global0 = abs(1i);
    global0 = -(~abs(1i));
    global0 = reverseBits(-81759i);
    var var_0 = Struct_2(Struct_1(~0u, select(vec2<u32>(arg_0.c.a.b.x, arg_0.c.c.b.x), vec2<u32>(arg_2.b.x, u_input.d), arg_0.c.b.x) ^ func_3(arg_0.c.a.a)), arg_0.c.b, Struct_1(~select(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, 22254u), vec2<u32>(u_input.a, arg_2.a)), ~arg_0.c.a.b.x, arg_0.c.b.x), vec2<u32>(~arg_0.c.c.a, arg_0.c.c.b.x)));
    var var_1 = abs(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(arg_1.x, 1u, u_input.c.x) & select(vec3<u32>(25709u, arg_2.b.x, arg_2.b.x), vec3<u32>(var_0.a.b.x, 38570u, var_0.c.b.x), true)), ~(~vec3<u32>(arg_2.b.x, 3729u, arg_0.c.a.b.x))));
    return vec3<i32>(_wgslsmith_clamp_i32(firstLeadingBit(-2147483647i), reverseBits(arg_0.b.x), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.x, 29508i, arg_0.b.x), reverseBits(u_input.e.xyw)), 1i)), _wgslsmith_dot_vec4_i32(u_input.e, u_input.e), firstLeadingBit(u_input.e.x));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec3<f32>, arg_3: vec4<i32>) -> Struct_1 {
    global0 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(func_2(Struct_3(vec2<f32>(arg_2.x, arg_2.x), -vec2<i32>(-22943i, 13146i), Struct_2(Struct_1(4294967295u, vec2<u32>(4294967295u, 4294967295u)), vec4<bool>(true, false, false, false), Struct_1(67710u, vec2<u32>(135122u, 4294967295u)))), _wgslsmith_mod_vec4_u32(vec4<u32>(76529u, arg_1, arg_1, 4294967295u), ~vec4<u32>(u_input.c.x, 36834u, arg_1, 19155u)), Struct_1(4294967295u, u_input.c.zy | u_input.c.xy)), _wgslsmith_mult_vec3_i32(countOneBits(arg_3.xyy), vec3<i32>(arg_0, 1i, -21401i) << (vec3<u32>(u_input.b, arg_1, arg_1) % vec3<u32>(32u)))), firstLeadingBit(~u_input.e.zwz));
    global0 = _wgslsmith_dot_vec2_i32(vec2<i32>(1i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(-1i, ~arg_0), _wgslsmith_mult_i32(max(u_input.e.x, u_input.e.x), 0i))), _wgslsmith_mod_vec2_i32(vec2<i32>(-11400i, i32(-1i) * -19635i), _wgslsmith_mod_vec2_i32(reverseBits(arg_3.xy) & ~vec2<i32>(-1i, -2147483647i), ~(~u_input.e.yz))));
    global0 = -1i;
    global0 = func_2(Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(969f, arg_2.x)))), u_input.e.xz, Struct_2(Struct_1(4884u, reverseBits(vec2<u32>(0u, 4294967295u))), vec4<bool>(34688u > u_input.b, select(true, false, false), true, true), Struct_1(u_input.a, firstLeadingBit(u_input.c.xy)))), vec4<u32>(56569u, ~_wgslsmith_div_u32(u_input.c.x, arg_1), _wgslsmith_dot_vec2_u32(~vec2<u32>(44330u, 1u) << (u_input.c.zx % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(~u_input.c.xx, u_input.c.xy)), arg_1), Struct_1(arg_1, ~func_3(countOneBits(arg_1)))).x;
    return Struct_1(~arg_1, ~vec2<u32>(~(~67167u), ~countOneBits(u_input.d)));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    global0 = 14595i;
    global0 = arg_0;
    global0 = 0i;
    global0 = 39498i;
    let var_0 = u_input.e.zx;
    return func_1(arg_0, ~0u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1 + arg_1), -1453f, _wgslsmith_f_op_f32(floor(-316f))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1002f), arg_1, arg_1))), countOneBits(u_input.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mod_vec2_u32(u_input.c.xx, u_input.c.xz) << (~(~_wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(0u, u_input.a)), vec2<u32>(u_input.c.x, u_input.c.x))) % vec2<u32>(32u));
    let var_1 = 0i;
    let var_2 = func_4(2945i, -388f, func_1(-2147483647i, 24228u, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f))))), ~select(vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, -1i), max(vec4<i32>(u_input.e.x, var_1, u_input.e.x, 2147483647i), u_input.e), all(vec3<bool>(true, false, false)))));
    let var_3 = u_input.c;
    var var_4 = Struct_2(func_4(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1, 0i, var_1, -38375i), firstTrailingBit(u_input.e)), _wgslsmith_f_op_f32(f32(-1f) * -985f), var_2), !select(vec4<bool>(2147483647i > u_input.e.x, all(vec4<bool>(true, true, false, true)), false, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), true), true), true), func_4(_wgslsmith_dot_vec4_i32(min(u_input.e, vec4<i32>(26906i, -1i, 50579i, 0i)), _wgslsmith_div_vec4_i32(~u_input.e, vec4<i32>(u_input.e.x, u_input.e.x, -1i, u_input.e.x))), 293f, func_4(var_1, _wgslsmith_f_op_f32(sign(-877f)), Struct_1(u_input.d >> (0u % 32u), max(vec2<u32>(u_input.d, var_3.x), vec2<u32>(var_3.x, var_3.x))))));
    var var_5 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(623f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-771f, -513f)) + -1315f))), vec2<i32>(firstLeadingBit(10914i) | -var_1, _wgslsmith_div_i32(-13280i, countOneBits(~u_input.e.x))), Struct_2(Struct_1(_wgslsmith_mod_u32(26007u, ~var_0.x), ~vec2<u32>(92077u, 62099u)), !var_4.b, Struct_1(0u, vec2<u32>(~4294967295u, 0u | var_3.x))));
    var var_6 = Struct_3(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_5.a.x))), -1010f))), -vec2<i32>(abs(~55204i), u_input.e.x), Struct_2(func_4(-41979i, 1347f, Struct_1(0u >> (u_input.b % 32u), max(vec2<u32>(45502u, 37819u), u_input.c.zz))), !(!var_5.c.b), Struct_1(var_0.x, var_4.a.b)));
    var_6 = Struct_3(vec2<f32>(-2501f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_6.a.x, _wgslsmith_f_op_f32(f32(-1f) * -575f)))), _wgslsmith_mult_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 32279i) >> (var_6.c.c.b % vec2<u32>(32u)), u_input.e.zz), vec2<i32>(var_5.b.x, max(-var_5.b.x, -41211i ^ var_5.b.x))), Struct_2(Struct_1(min(~var_5.c.a.b.x, 66223u), ~vec2<u32>(var_5.c.c.a, var_5.c.c.a)), select(!var_5.c.b, var_5.c.b, var_6.c.b.x), func_4(var_5.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.a.x)), func_1(var_1, 31069u, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_6.a.x, 1009f, var_5.a.x))), u_input.e))));
    var var_7 = ~abs(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(var_4.a.a, 4294967295u)) >> (vec2<u32>(var_3.x, 3920u) % vec2<u32>(32u)), ~var_0));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.yw, firstTrailingBit(~u_input.e ^ reverseBits(u_input.e)));
}

