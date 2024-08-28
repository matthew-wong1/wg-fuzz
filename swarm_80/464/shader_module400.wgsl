struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: u32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec3<bool>, 30> = array<vec3<bool>, 30>(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec4<u32> {
    let var_0 = Struct_5(any(vec3<bool>(arg_0.d.x, arg_0.d.x, all(!vec4<bool>(arg_0.d.x, false, arg_0.d.x, arg_0.d.x)))), Struct_2(arg_0, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-382f - 1000f)), vec2<f32>(772f, _wgslsmith_f_op_f32(-arg_0.b.x)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.x, arg_0.c.x), vec2<u32>(arg_0.c.x, arg_0.c.x)), abs(u_input.c)), !arg_0.d), true, _wgslsmith_div_u32(_wgslsmith_sub_u32(~arg_0.c.x, ~arg_0.c.x), _wgslsmith_mult_u32(abs(u_input.d), ~1u)), ~vec3<i32>(countOneBits(1i), min(u_input.e.x, u_input.b.x), -2147483647i)), u_input.e.x, 40815u);
    var var_1 = Struct_5(arg_0.d.x, Struct_2(var_0.b.a, arg_0, false, u_input.c, var_0.b.e | countOneBits(var_0.b.e)), abs(var_0.c), _wgslsmith_mod_u32(~1u, 1u));
    var var_2 = Struct_5(false, Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(572f))), vec2<f32>(global0.x, _wgslsmith_f_op_f32(floor(899f))), var_1.b.a.c, select(vec2<bool>(var_1.b.c, false), vec2<bool>(false, true), !var_0.a)), var_0.b.a, u_input.d > ~var_0.d, abs(~(var_0.b.a.c.x << (1u % 32u))), -countOneBits(-u_input.e)), var_1.c, 4294967295u);
    var_1 = Struct_5(all(vec2<bool>(!(u_input.b.x >= 2147483647i), !(false & var_0.b.a.d.x))), Struct_2(Struct_1(_wgslsmith_f_op_f32(select(var_1.b.b.a, _wgslsmith_f_op_f32(1000f - arg_1), var_0.b.a.b.x >= 182f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-546f, 737f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(409f, arg_1))), select(vec2<u32>(var_1.d, 0u) | var_0.b.a.c, vec2<u32>(40689u, 0u), vec2<bool>(var_1.a, arg_0.d.x)), select(vec2<bool>(true, arg_0.d.x), select(vec2<bool>(true, true), var_0.b.a.d, var_2.b.a.d), true)), Struct_1(_wgslsmith_f_op_f32(-781f - _wgslsmith_f_op_f32(step(arg_1, -1940f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-557f, -1900f), arg_0.b)) - _wgslsmith_f_op_vec2_f32(exp2(var_1.b.a.b))), var_2.b.a.c, select(!var_0.b.a.d, var_1.b.a.d, var_1.a)), arg_0.d.x, var_0.d, var_2.b.e), var_1.b.e.x, var_1.d);
    var var_3 = 29516u;
    return _wgslsmith_mult_vec4_u32(vec4<u32>(0u, abs(~(1u ^ var_0.b.d)), arg_0.c.x, 20489u), vec4<u32>(var_2.d, _wgslsmith_sub_u32(0u, ~max(arg_0.c.x, 4294967295u)), ~63290u, _wgslsmith_mod_u32(_wgslsmith_div_u32(1u, var_0.d | 46527u), var_0.d)));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = ~vec3<u32>(83733u, u_input.c, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.d, 14568u, 33622u, 1u), vec4<u32>(49777u, arg_2.c.x, 61556u, u_input.c) ^ vec4<u32>(61904u, u_input.c, arg_2.c.x, arg_2.c.x)), func_3(arg_2, arg_0) << ((vec4<u32>(1u, 32215u, arg_2.c.x, u_input.c) ^ vec4<u32>(4294967295u, 0u, u_input.d, 13777u)) % vec4<u32>(32u))));
    let var_1 = vec4<bool>(select(arg_2.d.x, any(arg_2.d), select(all(vec3<bool>(arg_2.d.x, arg_1, false)), arg_1, true)), !any(select(select(vec4<bool>(false, arg_2.d.x, arg_2.d.x, false), vec4<bool>(false, arg_1, true, false), true), vec4<bool>(arg_1, arg_2.d.x, arg_2.d.x, true), true)), !any(arg_2.d), true);
    global0 = _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.a - -573f))))), _wgslsmith_f_op_f32(round(-722f))), vec3<f32>(_wgslsmith_f_op_f32(arg_2.b.x * _wgslsmith_f_op_f32(round(708f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.b.x, 588f) + _wgslsmith_div_f32(985f, 497f))), -567f));
    let var_2 = arg_2;
    global1 = array<vec3<bool>, 30>();
    return vec4<i32>(u_input.e.x, select(u_input.e.x, i32(-1i) * -1i, var_2.d.x), 3787i, ~(-2147483647i << (_wgslsmith_dot_vec4_u32(select(vec4<u32>(var_0.x, var_2.c.x, var_2.c.x, var_2.c.x), vec4<u32>(var_0.x, 24461u, 5418u, 30840u), false), firstLeadingBit(vec4<u32>(u_input.c, var_2.c.x, 1u, var_0.x))) % 32u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_1 {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-1067f + _wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(arg_0.b.x + -1248f))), arg_0.b.x, _wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(-arg_3.a)));
    var var_0 = all(vec2<bool>(true, arg_3.d.x)) | all(select(vec4<bool>(select(arg_3.d.x, true, false), true, arg_3.d.x, 4294967295u <= u_input.a), !(!vec4<bool>(false, arg_3.d.x, false, false)), !(arg_3.c.x == 49519u)));
    var_0 = true;
    let var_1 = ~(~_wgslsmith_sub_u32(u_input.a, arg_3.c.x));
    var var_2 = 1u;
    return arg_0;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: bool, arg_3: vec4<bool>) -> Struct_2 {
    var var_0 = func_4(Struct_1(arg_1.b, _wgslsmith_f_op_vec2_f32(-global0.yx), ~(~vec2<u32>(26452u, u_input.d)) >> (arg_1.a.zw % vec2<u32>(32u)), !arg_3.zz), select(_wgslsmith_div_vec4_i32(abs(func_2(arg_0.x, false, Struct_1(arg_1.b, arg_0.xy, arg_1.a.ww, vec2<bool>(arg_3.x, arg_3.x)))), vec4<i32>(arg_1.c, 53752i, 21627i ^ arg_1.c, _wgslsmith_mult_i32(-2147483647i, 0i))), vec4<i32>(abs(-10969i) ^ arg_1.c, arg_1.c, u_input.e.x, u_input.e.x), !(!vec4<bool>(arg_2, arg_2, true, true))), reverseBits(vec4<u32>(1u, abs(~1u), reverseBits(u_input.d >> (u_input.d % 32u)), u_input.d)), Struct_1(_wgslsmith_f_op_f32(round(-819f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(arg_1.b, -106f), -765f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.zz) + _wgslsmith_f_op_vec2_f32(-global0.yx)))), func_3(Struct_1(global0.x, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.b, arg_0.x), arg_0.yx, vec2<bool>(true, arg_2))), arg_1.a.zw, !arg_3.zz), -1602f).xw, !select(vec2<bool>(arg_2, true), vec2<bool>(true, true), 0u == arg_1.a.x)));
    let var_1 = ~_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.c, _wgslsmith_add_i32(u_input.e.x, -15907i), _wgslsmith_mult_i32(u_input.b.x, -24290i)), _wgslsmith_sub_vec3_i32(u_input.e, _wgslsmith_clamp_vec3_i32(u_input.e, u_input.e, u_input.b.yzy))), func_2(_wgslsmith_f_op_f32(f32(-1f) * -480f), func_4(Struct_1(arg_0.x, vec2<f32>(862f, -408f), vec2<u32>(u_input.d, 4294967295u), vec2<bool>(true, false)), _wgslsmith_div_vec4_i32(vec4<i32>(-16072i, -29695i, u_input.e.x, 0i), u_input.b), ~arg_1.a, func_4(Struct_1(-1755f, global0.zz, arg_1.a.wx, arg_3.wx), u_input.b, vec4<u32>(40004u, 10603u, 0u, u_input.d), Struct_1(arg_1.b, vec2<f32>(var_0.b.x, global0.x), arg_1.a.yz, vec2<bool>(false, false)))).d.x, Struct_1(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(831f, 571f), global0.zz)), arg_1.a.zy, select(var_0.d, vec2<bool>(false, var_0.d.x), var_0.d))).xwx);
    var var_2 = !select(select(arg_3.zx, select(var_0.d, vec2<bool>(false, arg_3.x), arg_1.c > -2147483647i), !(!vec2<bool>(arg_2, var_0.d.x))), select(func_4(func_4(Struct_1(318f, vec2<f32>(arg_1.b, 512f), vec2<u32>(u_input.c, 1u), arg_3.xy), u_input.b, arg_1.a, Struct_1(arg_1.b, vec2<f32>(1221f, arg_1.b), vec2<u32>(4294967295u, 9888u), var_0.d)), _wgslsmith_add_vec4_i32(vec4<i32>(arg_1.c, 2147483647i, arg_1.c, 36937i), vec4<i32>(var_1, 51660i, 51169i, -13187i)), ~arg_1.a, func_4(Struct_1(arg_0.x, vec2<f32>(1084f, arg_0.x), vec2<u32>(u_input.d, var_0.c.x), arg_3.xw), u_input.b, arg_1.a, Struct_1(-816f, var_0.b, vec2<u32>(4294967295u, 29849u), vec2<bool>(var_0.d.x, true)))).d, !vec2<bool>(var_0.d.x, false), !var_0.d), (arg_1.c <= (u_input.e.x ^ 22491i)) == select(false, all(vec4<bool>(arg_3.x, false, false, arg_2)), select(arg_3.x, false, true)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.b, global0.yy)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_0.b - vec2<f32>(595f, arg_1.b))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-126f, -1121f)))) * var_0.b), var_0.d)));
    global0 = arg_0;
    return Struct_2(func_4(Struct_1(_wgslsmith_f_op_f32(step(1554f, _wgslsmith_f_op_f32(-arg_1.b))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_1.b)), vec2<f32>(-394f, arg_1.b))), ~abs(vec2<u32>(u_input.c, u_input.d)), arg_3.xz), -(u_input.b & abs(vec4<i32>(-8193i, 1i, -1i, var_1))), ~(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, var_0.c.x), vec4<u32>(50718u, 108937u, 0u, 229u)) >> ((arg_1.a ^ vec4<u32>(arg_1.a.x, 34026u, 0u, arg_1.a.x)) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(-func_4(Struct_1(1000f, var_0.b, arg_1.a.yy, arg_3.yw), u_input.b, vec4<u32>(4294967295u, var_0.c.x, 4294967295u, u_input.c), Struct_1(-651f, vec2<f32>(var_3.x, 2025f), arg_1.a.xz, arg_3.zz)).b.x), _wgslsmith_f_op_vec2_f32(-global0.zx), arg_1.a.yz, vec2<bool>(arg_2, !var_0.d.x))), Struct_1(200f, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, arg_1.b) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, arg_0.x)) + _wgslsmith_f_op_vec2_f32(-var_0.b))), firstTrailingBit(arg_1.a.wy), select(vec2<bool>(arg_3.x, global0.x <= 734f), select(var_0.d, select(arg_3.yy, arg_3.wx, vec2<bool>(arg_3.x, true)), vec2<bool>(true, var_2.x)), vec2<bool>(true, all(vec3<bool>(arg_2, false, var_2.x))))), !(~(-arg_1.c) > _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(26644i, 0i, 1i, u_input.e.x)), max(u_input.b, u_input.b))), ~(~firstLeadingBit(var_0.c.x | 1u)), -((reverseBits(vec3<i32>(1i, arg_1.c, u_input.b.x)) << (vec3<u32>(u_input.a, arg_1.a.x, 1u) % vec3<u32>(32u))) >> (~abs(vec3<u32>(35122u, var_0.c.x, var_0.c.x)) % vec3<u32>(32u))));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> f32 {
    var var_0 = global0.zx;
    var var_1 = arg_0.b;
    var var_2 = arg_3.e.xy;
    let var_3 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1250f, var_0.x, 292f))))), Struct_4(vec4<u32>(~(0u ^ arg_1.d), arg_0.d, _wgslsmith_dot_vec2_u32(arg_1.a.c >> (arg_0.b.b.c % vec2<u32>(32u)), firstLeadingBit(vec2<u32>(u_input.a, 1u))), max(arg_1.d, ~0u)), 575f, u_input.b.x), var_1.c, select(select(!select(vec4<bool>(arg_1.a.d.x, false, false, var_1.c), vec4<bool>(true, false, arg_0.a, false), false), vec4<bool>(var_1.b.c.x != 4294967295u, var_1.c, all(vec4<bool>(false, false, var_1.b.d.x, true)), all(arg_1.a.d)), any(func_1(vec3<f32>(946f, -131f, -807f), Struct_4(vec4<u32>(arg_1.b.c.x, 47834u, 21347u, 36903u), arg_1.b.b.x, -30656i), var_1.c, vec4<bool>(arg_3.b.d.x, false, arg_1.c, true)).a.d)), select(select(!vec4<bool>(arg_3.b.d.x, false, arg_2, arg_1.c), select(vec4<bool>(arg_1.c, arg_1.a.d.x, arg_0.b.b.d.x, false), vec4<bool>(arg_1.a.d.x, arg_2, arg_1.b.d.x, true), true), var_1.b.d.x), vec4<bool>(true, false, arg_3.b.d.x, true), any(vec2<bool>(arg_0.b.c, arg_3.c)) || any(vec4<bool>(true, arg_2, false, var_1.a.d.x))), select(!vec4<bool>(false, var_1.c, arg_1.b.d.x, false), !(!vec4<bool>(var_1.c, var_1.c, true, false)), func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 150f, arg_3.a.a) * vec3<f32>(-306f, 833f, var_1.a.a)), Struct_4(vec4<u32>(arg_3.d, arg_3.a.c.x, 4294967295u, arg_1.a.c.x), arg_3.b.b.x, 2147483647i), arg_1.b.d.x & arg_2, !vec4<bool>(arg_3.c, false, true, arg_0.b.b.d.x)).c)));
    global1 = array<vec3<bool>, 30>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.b.b.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1877f) + 831f), global0.x, _wgslsmith_f_op_f32(func_5(Struct_5(false, Struct_2(Struct_1(global0.x, vec2<f32>(global0.x, global0.x), vec2<u32>(u_input.a, u_input.c), vec2<bool>(false, true)), Struct_1(-1381f, global0.xz, vec2<u32>(u_input.a, 1u), vec2<bool>(false, true)), true, 4294967295u, vec3<i32>(-92223i, u_input.b.x, 2147483647i)), -25918i, u_input.d), Struct_2(Struct_1(652f, global0.xx, vec2<u32>(u_input.c, 4294967295u), vec2<bool>(false, true)), Struct_1(308f, vec2<f32>(global0.x, global0.x), vec2<u32>(20628u, 0u), vec2<bool>(false, true)), true, u_input.d, vec3<i32>(u_input.b.x, -1i, 1i)), all(global1[_wgslsmith_index_u32(u_input.a, 30u)]), func_1(vec3<f32>(-226f, -1000f, -937f), Struct_4(vec4<u32>(u_input.a, 4294967295u, 4294967295u, 1u), global0.x, u_input.e.x), true, vec4<bool>(false, false, true, true))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, -1361f, 983f))), vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(global0.x, -515f)))), 1540f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(463f * global0.x), _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-767f, global0.x, global0.x)), vec3<f32>(-1043f, _wgslsmith_f_op_f32(abs(global0.x)), 282f))))), false));
    global1 = array<vec3<bool>, 30>();
    var var_1 = vec3<f32>(-1127f, global0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-888f * 839f))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2076f, -438f, var_1.x)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(639f, _wgslsmith_div_f32(var_1.x, -957f), _wgslsmith_div_f32(var_1.x, var_1.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, 743f, global0.x), vec3<f32>(-1000f, var_1.x, var_1.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 321f, global0.x) * vec3<f32>(var_1.x, global0.x, 194f))))));
    let var_2 = vec2<bool>(any(vec4<bool>(true, all(vec4<bool>(false, true, false, false)), true, false)) | false, ((~u_input.d & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.c, u_input.c), vec3<u32>(u_input.a, u_input.d, u_input.a))) >= u_input.a) != false);
    let x = u_input.a;
    s_output = StorageBuffer(86901u, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(trunc(var_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

