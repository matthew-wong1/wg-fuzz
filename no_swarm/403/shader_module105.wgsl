struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec4<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_4) -> vec3<f32> {
    let var_0 = any(select(select(vec2<bool>(!arg_3.c, !arg_1.a.x), vec2<bool>(arg_1.c.c.x == false, false | arg_1.c.c.x), vec2<bool>(true, true)), !arg_3.a.b.zw, !arg_1.a.zx));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -752f) * _wgslsmith_f_op_f32(-arg_3.b)), arg_0.x));
    var var_2 = min(abs(4294967295u), select(arg_1.c.b, firstTrailingBit(arg_3.a.c.b), !select(true, true, arg_3.c || arg_1.a.x)));
    let var_3 = select(arg_1.b, !(!select(!arg_3.a.a, arg_3.a.c.c, !vec4<bool>(var_0, arg_1.c.c.x, arg_1.b.x, var_0))), select(arg_1.c.c, arg_1.c.c, select(!select(vec4<bool>(false, arg_3.c, arg_3.a.a.x, true), arg_1.c.c, arg_3.a.c.c), select(vec4<bool>(true, false, var_0, arg_1.b.x), arg_3.a.a, false || arg_3.c), var_0)));
    var var_4 = Struct_1(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(arg_2, u_input.a, -23473i)), _wgslsmith_div_vec3_i32(vec3<i32>(arg_2, -2147483647i, arg_1.c.a), vec3<i32>(arg_3.a.c.a, 1i, 2147483647i)) | reverseBits(vec3<i32>(arg_3.a.c.a, arg_3.a.c.a, 0i))), u_input.a), ~u_input.c, !select(vec4<bool>(all(vec2<bool>(true, true)), false, var_3.x | var_3.x, true), vec4<bool>(!arg_1.b.x, var_3.x, true, true), !(!arg_1.c.c.x)));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(539f, -342f, arg_0.x) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, -168f, arg_0.x), vec3<f32>(641f, -645f, arg_0.x), var_4.c.x))))))), _wgslsmith_f_op_vec3_f32(-arg_0));
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_4(Struct_2(select(arg_2.c, !select(vec4<bool>(false, false, arg_2.c.x, false), arg_2.c, false), arg_2.c), select(vec4<bool>(false, false, select(arg_2.c.x, false, true), u_input.a < 44031i), vec4<bool>(arg_2.c.x & false, arg_2.c.x, false, arg_2.c.x), all(arg_2.c.yx)), Struct_1(-2147483647i, ~reverseBits(12686u), arg_2.c), _wgslsmith_f_op_vec3_f32(func_3(arg_0, Struct_2(arg_2.c, arg_2.c, Struct_1(-1i, arg_2.b, arg_2.c), _wgslsmith_div_f32(arg_0.x, 1246f)), abs(arg_1), Struct_4(Struct_2(arg_2.c, arg_2.c, Struct_1(arg_2.a, 65353u, arg_2.c), -159f), _wgslsmith_f_op_f32(-arg_0.x), !arg_2.c.x))).x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.x - arg_0.x))), ((min(arg_2.a, arg_1) < ~arg_2.a) && arg_2.c.x) || !select(arg_2.c.x, !arg_2.c.x, true));
    global0 = -(~arg_1);
    var var_1 = vec3<u32>(arg_2.b, ~(~var_0.a.c.b), _wgslsmith_add_u32(1u, ~arg_2.b));
    var var_2 = !select(!arg_2.c.yxz, vec3<bool>(any(var_0.a.c.c), arg_2.c.x, !var_0.c & var_0.a.b.x), select(var_0.a.c.c.wwx, !var_0.a.a.wyz, select(!vec3<bool>(true, true, arg_2.c.x), select(vec3<bool>(false, true, true), arg_2.c.wwx, true), true == arg_2.c.x)));
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b))))), 493f, arg_0.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.x, var_0.b) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(floor(-121f)))));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = -u_input.a;
    global0 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(max(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 2147483647i, var_0, var_0), vec4<i32>(-1i, u_input.b, var_0, var_0)), vec4<i32>(u_input.b, -2147483647i, -2147483647i, u_input.b)), vec4<i32>(0i, -1i, u_input.b ^ 46888i, ~var_0)), u_input.a), ~_wgslsmith_div_i32(-(30325i << (1u % 32u)), u_input.b));
    let var_1 = Struct_1(var_0, (~1u & ~(0u & u_input.d.x)) << (26329u % 32u), vec4<bool>(true, true, !select(false, select(true, false, false), all(vec2<bool>(false, true))), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(func_3(vec3<f32>(-1000f, 1260f, 374f), Struct_2(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), Struct_1(0i, u_input.d.x, vec4<bool>(false, true, true, false)), -1184f), u_input.a, Struct_4(Struct_2(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), Struct_1(22957i, 59894u, vec4<bool>(true, false, false, true)), -554f), -1000f, true))), -22605i, Struct_1(0i, 1u, vec4<bool>(true, true, false, false)))) <= _wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec3_f32(vec3<f32>(-1192f, -850f, -378f), vec3<f32>(-1054f, 534f, 403f)), -u_input.a, Struct_1(var_0, u_input.c, vec4<bool>(true, false, false, false))))));
    let var_2 = Struct_2(!var_1.c, vec4<bool>(all(vec4<bool>(true, var_1.c.x, any(var_1.c), !var_1.c.x)), all(!select(vec2<bool>(false, var_1.c.x), vec2<bool>(false, false), var_1.c.x)), any(var_1.c), u_input.c == arg_0.x), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -388f))))));
    global0 = -51300i;
    return Struct_1(select(-2147483647i, var_2.c.a, var_2.d < _wgslsmith_f_op_f32(-1f)), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_div_u32(59432u, 7455u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(91755u, u_input.c), vec2<u32>(var_1.b, var_2.c.b), u_input.d) & firstLeadingBit(vec2<u32>(4294967295u, u_input.d.x)))), select(vec4<bool>(true, any(var_2.c.c.yzw), true, false), vec4<bool>(var_2.b.x, false, var_1.a == ~1i, true), !(!var_2.c.c)));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_3) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2.a.d, 787f, -1258f, 1000f))) * vec4<f32>(arg_2.a.d, 347f, 600f, -573f)) - vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_2.a.d)), -1000f, _wgslsmith_f_op_f32(exp2(arg_1.x)), _wgslsmith_f_op_f32(round(arg_0.d)))) + arg_1) * _wgslsmith_div_vec4_f32(arg_1, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -724f, 269f, arg_1.x))))))));
    let var_1 = true;
    let var_2 = arg_2.c & arg_2.c;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.yxw)) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1317f, arg_0.d, arg_0.d))))));
    global0 = arg_0.c.a;
    return Struct_4(arg_2.d, _wgslsmith_f_op_f32(trunc(var_0.x)), arg_0.c.c.x);
}

fn func_1() -> Struct_2 {
    var var_0 = func_5(Struct_2(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), false), func_2(~(~vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.c))), _wgslsmith_div_f32(-1563f, 562f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1270f, -159f, -1289f, -802f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f))))), Struct_3(Struct_2(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), func_2(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, 1u, 1u, u_input.c), vec4<u32>(1u, u_input.c, u_input.d.x, u_input.d.x))).c, Struct_1(_wgslsmith_mult_i32(2147483647i, 0i), u_input.c, vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec3<f32>(964f, -321f, 762f), Struct_2(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), Struct_1(u_input.b, 4294967295u, vec4<bool>(true, true, true, false)), -598f), u_input.b, Struct_4(Struct_2(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), Struct_1(u_input.b, 1u, vec4<bool>(false, false, true, false)), 676f), -460f, false))).x)), vec4<i32>(u_input.a, _wgslsmith_mod_i32(func_2(vec4<u32>(u_input.c, 1u, u_input.c, 4294967295u)).a, _wgslsmith_clamp_i32(1i, u_input.b, u_input.b)), (i32(-1i) * -2147483647i) & _wgslsmith_mod_i32(-2147483647i, u_input.a), u_input.a), countOneBits(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.d.x), vec3<u32>(u_input.d.x, 56094u, 1u)), ~0u, ~0u, ~u_input.d.x)), Struct_2(vec4<bool>(false, true, true, false), !func_2(vec4<u32>(u_input.c, u_input.c, 0u, 1u)).c, func_2(vec4<u32>(1u, 70052u, 57377u, u_input.d.x)), _wgslsmith_f_op_f32(-684f * -356f))));
    global0 = -_wgslsmith_mod_i32(~42463i, _wgslsmith_mod_i32(var_0.a.c.a, func_5(var_0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.d, var_0.b, var_0.a.d, var_0.b) - vec4<f32>(1170f, -149f, -836f, -242f)), Struct_3(var_0.a, vec4<i32>(2147483647i, u_input.b, 63207i, var_0.a.c.a), vec4<u32>(u_input.d.x, var_0.a.c.b, var_0.a.c.b, u_input.d.x), Struct_2(var_0.a.c.c, vec4<bool>(var_0.a.c.c.x, true, var_0.a.a.x, true), var_0.a.c, -403f))).a.c.a));
    var_0 = func_5(Struct_2(vec4<bool>(all(var_0.a.b.ywx), _wgslsmith_dot_vec2_u32(u_input.d, u_input.d) != 41832u, var_0.c, -716f <= _wgslsmith_div_f32(var_0.a.d, var_0.b)), func_5(func_5(Struct_2(var_0.a.c.c, var_0.a.b, Struct_1(u_input.b, 9779u, vec4<bool>(false, var_0.a.b.x, var_0.a.c.c.x, false)), -292f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, 1520f, var_0.b, var_0.a.d) * vec4<f32>(-1000f, var_0.a.d, var_0.a.d, var_0.b)), Struct_3(var_0.a, vec4<i32>(-40242i, u_input.a, 21468i, 0i), vec4<u32>(21224u, u_input.d.x, var_0.a.c.b, u_input.c), var_0.a)).a, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1034f, var_0.a.d, 1000f, -555f), _wgslsmith_f_op_vec4_f32(vec4<f32>(879f, -1592f, 677f, var_0.a.d) * vec4<f32>(var_0.b, var_0.b, var_0.b, -1000f)))), Struct_3(func_5(var_0.a, vec4<f32>(var_0.b, var_0.a.d, -1528f, -143f), Struct_3(Struct_2(vec4<bool>(true, var_0.a.c.c.x, false, false), var_0.a.c.c, Struct_1(var_0.a.c.a, 4294967295u, vec4<bool>(var_0.a.a.x, false, var_0.c, var_0.c)), 1342f), vec4<i32>(61574i, 0i, u_input.a, 1i), vec4<u32>(0u, 22689u, 0u, u_input.c), var_0.a)).a, -vec4<i32>(-64533i, 2147483647i, var_0.a.c.a, var_0.a.c.a), min(vec4<u32>(var_0.a.c.b, 0u, 16683u, u_input.d.x), vec4<u32>(0u, var_0.a.c.b, 4294967295u, u_input.d.x)), Struct_2(var_0.a.b, var_0.a.c.c, var_0.a.c, var_0.a.d))).a.c.c, Struct_1(max(var_0.a.c.a, u_input.a) ^ ~0i, u_input.c & _wgslsmith_dot_vec3_u32(vec3<u32>(6048u, var_0.a.c.b, 4294967295u), vec3<u32>(4294967295u, var_0.a.c.b, 0u)), vec4<bool>(true, !var_0.a.b.x, all(vec3<bool>(var_0.a.a.x, var_0.a.a.x, var_0.c)), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * _wgslsmith_f_op_f32(min(911f, -2033f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-673f, var_0.b, -1000f, -1388f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-178f, -1208f, -896f, var_0.b))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.d, -2282f, -1257f, 432f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.a.d, var_0.b, var_0.b)), func_2(vec4<u32>(u_input.d.x, var_0.a.c.b, 80468u, u_input.c)).c.x)))), !var_0.a.a)), Struct_3(func_5(Struct_2(!vec4<bool>(false, var_0.c, false, false), var_0.a.b, func_5(Struct_2(vec4<bool>(false, var_0.c, var_0.c, false), vec4<bool>(var_0.a.a.x, var_0.c, var_0.a.b.x, false), var_0.a.c, var_0.a.d), vec4<f32>(var_0.a.d, 1578f, 285f, -923f), Struct_3(var_0.a, vec4<i32>(0i, var_0.a.c.a, 2147483647i, u_input.b), vec4<u32>(1u, 58459u, u_input.c, 8479u), Struct_2(var_0.a.c.c, vec4<bool>(var_0.a.a.x, var_0.a.a.x, true, var_0.a.a.x), var_0.a.c, var_0.b))).a.c, var_0.a.d), vec4<f32>(var_0.b, var_0.a.d, _wgslsmith_div_f32(526f, var_0.b), 1204f), Struct_3(func_5(var_0.a, vec4<f32>(-851f, var_0.a.d, 756f, -873f), Struct_3(var_0.a, vec4<i32>(-2147483647i, var_0.a.c.a, 2147483647i, -63453i), vec4<u32>(var_0.a.c.b, 1u, u_input.c, var_0.a.c.b), var_0.a)).a, vec4<i32>(var_0.a.c.a, u_input.a, u_input.b, 2147483647i), ~vec4<u32>(19254u, var_0.a.c.b, 0u, u_input.c), Struct_2(vec4<bool>(true, var_0.c, true, var_0.c), vec4<bool>(false, var_0.c, var_0.c, false), var_0.a.c, -1000f))).a, countOneBits(-vec4<i32>(-2147483647i, var_0.a.c.a, var_0.a.c.a, u_input.a)), vec4<u32>(abs(countOneBits(1u)), abs(~u_input.c), 1u, u_input.c), func_5(Struct_2(var_0.a.c.c, var_0.a.c.c, var_0.a.c, _wgslsmith_f_op_f32(round(1141f))), vec4<f32>(_wgslsmith_f_op_f32(-1651f * var_0.a.d), var_0.b, _wgslsmith_f_op_f32(var_0.b + -113f), var_0.b), Struct_3(func_5(Struct_2(vec4<bool>(var_0.a.c.c.x, var_0.c, var_0.a.b.x, true), vec4<bool>(true, false, true, var_0.c), var_0.a.c, var_0.a.d), vec4<f32>(var_0.b, 1026f, -1851f, -481f), Struct_3(Struct_2(vec4<bool>(false, true, var_0.c, var_0.c), vec4<bool>(var_0.a.c.c.x, var_0.c, var_0.a.c.c.x, var_0.c), Struct_1(45431i, 2171u, vec4<bool>(true, var_0.c, var_0.c, var_0.a.a.x)), var_0.a.d), vec4<i32>(var_0.a.c.a, u_input.a, 0i, -16060i), vec4<u32>(var_0.a.c.b, u_input.d.x, 34103u, var_0.a.c.b), var_0.a)).a, vec4<i32>(27303i, u_input.b, 2147483647i, var_0.a.c.a), vec4<u32>(var_0.a.c.b, 83710u, 0u, 105048u), func_5(var_0.a, vec4<f32>(var_0.b, 907f, var_0.b, -315f), Struct_3(var_0.a, vec4<i32>(4693i, 1i, -1i, u_input.b), vec4<u32>(26857u, 4294967295u, var_0.a.c.b, u_input.c), var_0.a)).a)).a));
    let var_1 = func_5(var_0.a, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.d, var_0.b, var_0.b, -1000f) * vec4<f32>(var_0.a.d, var_0.b, var_0.b, var_0.b)), vec4<f32>(var_0.b, -1748f, var_0.b, var_0.b)))))), Struct_3(func_5(var_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.d, var_0.b, -122f, 971f)), Struct_3(Struct_2(vec4<bool>(var_0.a.a.x, false, var_0.a.b.x, true), var_0.a.a, Struct_1(var_0.a.c.a, 2870u, var_0.a.a), 1000f), select(vec4<i32>(2147483647i, 30018i, 85744i, 2147483647i), vec4<i32>(-780i, u_input.b, var_0.a.c.a, var_0.a.c.a), var_0.c), _wgslsmith_mult_vec4_u32(vec4<u32>(20709u, 4294967295u, 0u, var_0.a.c.b), vec4<u32>(1u, var_0.a.c.b, u_input.c, u_input.d.x)), Struct_2(var_0.a.b, var_0.a.b, Struct_1(u_input.b, var_0.a.c.b, vec4<bool>(true, true, true, var_0.c)), var_0.b))).a, max(_wgslsmith_div_vec4_i32(-vec4<i32>(-27631i, 0i, var_0.a.c.a, 0i), max(vec4<i32>(u_input.a, 17612i, var_0.a.c.a, u_input.a), vec4<i32>(2147483647i, var_0.a.c.a, var_0.a.c.a, u_input.a))), vec4<i32>(var_0.a.c.a, var_0.a.c.a >> (30448u % 32u), -2147483647i, 2147483647i)), abs(max(vec4<u32>(u_input.c, 10044u, var_0.a.c.b, u_input.c), vec4<u32>(13774u, 4294967295u, u_input.c, var_0.a.c.b)) ^ firstLeadingBit(vec4<u32>(var_0.a.c.b, 72079u, u_input.c, 56723u))), func_5(Struct_2(var_0.a.a, !var_0.a.c.c, func_5(var_0.a, vec4<f32>(698f, 967f, 1710f, -1000f), Struct_3(Struct_2(var_0.a.a, var_0.a.b, Struct_1(var_0.a.c.a, 1u, vec4<bool>(true, false, var_0.c, var_0.a.c.c.x)), 963f), vec4<i32>(-1i, var_0.a.c.a, 1978i, 34608i), vec4<u32>(4294967295u, 28797u, u_input.c, var_0.a.c.b), var_0.a)).a.c, _wgslsmith_f_op_f32(-922f * 707f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.d, -341f, var_0.a.d, 641f) * vec4<f32>(809f, 564f, var_0.b, var_0.b))), Struct_3(func_5(var_0.a, vec4<f32>(var_0.b, 1824f, var_0.a.d, var_0.a.d), Struct_3(var_0.a, vec4<i32>(var_0.a.c.a, u_input.b, u_input.b, 80637i), vec4<u32>(4294967295u, u_input.c, var_0.a.c.b, u_input.d.x), Struct_2(var_0.a.c.c, vec4<bool>(var_0.c, false, var_0.a.c.c.x, var_0.a.a.x), var_0.a.c, var_0.a.d))).a, vec4<i32>(var_0.a.c.a, -2147483647i, -43923i, u_input.a) >> (vec4<u32>(28980u, 94108u, var_0.a.c.b, 0u) % vec4<u32>(32u)), vec4<u32>(var_0.a.c.b, var_0.a.c.b, var_0.a.c.b, 1u) | vec4<u32>(u_input.c, u_input.c, 11807u, var_0.a.c.b), func_5(Struct_2(var_0.a.a, vec4<bool>(false, var_0.a.c.c.x, var_0.c, false), Struct_1(var_0.a.c.a, 4294967295u, var_0.a.b), var_0.b), vec4<f32>(-1002f, var_0.b, var_0.a.d, var_0.b), Struct_3(Struct_2(var_0.a.c.c, vec4<bool>(false, var_0.a.c.c.x, false, true), var_0.a.c, -755f), vec4<i32>(8779i, u_input.b, u_input.a, var_0.a.c.a), vec4<u32>(0u, 25476u, u_input.c, 0u), Struct_2(var_0.a.c.c, vec4<bool>(true, false, var_0.a.c.c.x, false), var_0.a.c, -514f))).a)).a));
    let var_2 = vec3<u32>(57990u, ~(~_wgslsmith_mult_u32(u_input.c, 1u)) & max(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.c.b, 0u, var_0.a.c.b, var_0.a.c.b), ~vec4<u32>(1u, 1u, 1u, 4294967295u)), _wgslsmith_div_u32(0u, 4294967295u | u_input.d.x)), max(~var_0.a.c.b, abs(var_0.a.c.b) ^ var_1.a.c.b));
    return func_5(func_5(var_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.d, -853f, -198f, -1000f), vec4<f32>(-288f, var_1.a.d, -1193f, -664f), false)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, -429f, var_1.b, var_0.a.d))))), Struct_3(func_5(var_0.a, _wgslsmith_div_vec4_f32(vec4<f32>(301f, var_0.b, 814f, 1000f), vec4<f32>(-779f, 1134f, -1173f, var_1.a.d)), Struct_3(Struct_2(var_0.a.c.c, var_1.a.a, Struct_1(55459i, 0u, var_0.a.a), var_0.b), vec4<i32>(-2147483647i, var_1.a.c.a, 0i, var_0.a.c.a), vec4<u32>(var_0.a.c.b, 0u, var_1.a.c.b, var_2.x), var_1.a)).a, vec4<i32>(var_0.a.c.a << (4294967295u % 32u), -2147483647i, -var_0.a.c.a, _wgslsmith_sub_i32(var_1.a.c.a, 8285i)), vec4<u32>(19631u, ~30822u, 1u, var_1.a.c.b), var_0.a)).a, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.b)) + _wgslsmith_f_op_f32(695f - _wgslsmith_f_op_f32(func_4(vec3<f32>(1196f, 284f, -1843f), u_input.b, var_1.a.c)))), func_5(func_5(Struct_2(vec4<bool>(false, var_1.a.a.x, var_0.c, false), vec4<bool>(false, var_1.a.b.x, var_0.c, true), Struct_1(var_1.a.c.a, u_input.d.x, vec4<bool>(false, true, false, true)), -497f), vec4<f32>(var_0.a.d, var_1.a.d, 302f, -1000f), Struct_3(var_1.a, vec4<i32>(u_input.a, 2147483647i, var_0.a.c.a, u_input.a), vec4<u32>(72610u, 4294967295u, var_1.a.c.b, 53455u), Struct_2(var_0.a.b, var_1.a.a, var_0.a.c, var_0.a.d))).a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-696f, -1167f, 520f, var_0.a.d) + vec4<f32>(var_0.b, var_1.a.d, var_1.b, 1037f))), Struct_3(Struct_2(var_0.a.c.c, var_1.a.c.c, var_1.a.c, var_1.b), -vec4<i32>(10781i, var_1.a.c.a, var_1.a.c.a, var_0.a.c.a), vec4<u32>(1037u, 59837u, var_0.a.c.b, 6794u) << (vec4<u32>(var_2.x, u_input.c, 3237u, 4294967295u) % vec4<u32>(32u)), func_5(var_1.a, vec4<f32>(206f, var_0.a.d, var_1.b, 761f), Struct_3(var_0.a, vec4<i32>(u_input.a, 44951i, var_0.a.c.a, var_1.a.c.a), vec4<u32>(var_1.a.c.b, var_0.a.c.b, 33584u, 28196u), var_0.a)).a)).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))), -123f), Struct_3(Struct_2(select(!var_0.a.c.c, select(vec4<bool>(false, var_0.c, var_0.a.b.x, var_0.a.a.x), vec4<bool>(false, var_1.c, true, false), vec4<bool>(var_0.c, false, var_1.c, var_0.a.a.x)), !vec4<bool>(var_0.a.a.x, true, var_0.c, false)), vec4<bool>(true, !var_1.a.c.c.x, all(var_1.a.c.c), var_1.a.c.b < 16931u), func_5(Struct_2(var_1.a.b, vec4<bool>(var_1.a.c.c.x, var_0.a.a.x, false, true), Struct_1(-1i, var_0.a.c.b, var_0.a.b), 757f), vec4<f32>(var_1.a.d, var_1.b, var_1.a.d, var_0.a.d), Struct_3(var_1.a, vec4<i32>(-1i, var_0.a.c.a, 9961i, u_input.a), vec4<u32>(4294967295u, u_input.c, 9099u, u_input.d.x), var_0.a)).a.c, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, 1970f, 198f)), _wgslsmith_mult_i32(2147483647i, 1i), func_5(var_0.a, vec4<f32>(var_0.a.d, var_1.a.d, var_0.b, var_1.b), Struct_3(var_0.a, vec4<i32>(-2147483647i, 0i, u_input.b, var_0.a.c.a), vec4<u32>(4294967295u, var_0.a.c.b, var_1.a.c.b, var_1.a.c.b), var_1.a)).a.c))), -(~select(vec4<i32>(-2147483647i, var_1.a.c.a, 2147483647i, -2147483647i), vec4<i32>(50944i, var_1.a.c.a, u_input.a, var_0.a.c.a), vec4<bool>(false, var_0.c, var_1.c, false))), _wgslsmith_mult_vec4_u32(~(vec4<u32>(u_input.c, var_1.a.c.b, 1475u, 41936u) >> (vec4<u32>(var_1.a.c.b, u_input.c, 1622u, 19753u) % vec4<u32>(32u))), vec4<u32>(1u, ~var_1.a.c.b, var_2.x, reverseBits(var_1.a.c.b))), func_5(var_1.a, vec4<f32>(_wgslsmith_f_op_f32(func_4(vec3<f32>(2893f, 176f, var_0.a.d), var_0.a.c.a, Struct_1(-14075i, 4294967295u, var_1.a.c.c))), -241f, _wgslsmith_f_op_f32(var_0.a.d - var_0.a.d), _wgslsmith_f_op_f32(sign(var_1.b))), Struct_3(var_0.a, select(vec4<i32>(-2147483647i, -21795i, u_input.a, 0i), vec4<i32>(var_0.a.c.a, 11707i, 1i, -1i), var_1.a.a), _wgslsmith_add_vec4_u32(vec4<u32>(var_2.x, var_2.x, var_1.a.c.b, 0u), vec4<u32>(40160u, u_input.c, 15011u, var_0.a.c.b)), Struct_2(var_0.a.b, var_0.a.b, var_1.a.c, var_0.a.d))).a)).a;
}

fn func_6(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_2, arg_3: bool) -> i32 {
    let var_0 = arg_2.b.x;
    var var_1 = var_0;
    let var_2 = ~(-u_input.a);
    let var_3 = func_1();
    global0 = _wgslsmith_add_i32(~_wgslsmith_dot_vec3_i32(select(~vec3<i32>(-2147483647i, arg_2.c.a, u_input.b), vec3<i32>(var_2, u_input.a, 1i), arg_2.b.ywz), countOneBits(-vec3<i32>(-1274i, 35091i, 9498i))), ~abs(func_5(func_5(Struct_2(vec4<bool>(true, true, arg_1, false), vec4<bool>(var_3.b.x, true, arg_1, true), var_3.c, -1093f), vec4<f32>(arg_0.x, var_3.d, -144f, 1891f), Struct_3(var_3, vec4<i32>(var_2, u_input.a, 7446i, var_3.c.a), vec4<u32>(arg_2.c.b, 0u, 0u, 93520u), var_3)).a, vec4<f32>(arg_2.d, -1441f, arg_2.d, 1423f), Struct_3(Struct_2(var_3.c.c, var_3.a, Struct_1(var_3.c.a, 1344u, arg_2.a), arg_2.d), vec4<i32>(u_input.a, -24318i, 28040i, arg_2.c.a), vec4<u32>(u_input.d.x, 87527u, 11553u, 0u), arg_2)).a.c.a));
    return _wgslsmith_mod_i32(i32(-1i) * -11336i, arg_2.c.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(func_6(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1929f, 1394f) * vec2<f32>(-135f, 1253f)), false, func_1(), true) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(u_input.d, u_input.d), _wgslsmith_clamp_vec2_u32(u_input.d, vec2<u32>(17291u, u_input.c), u_input.d)), abs(u_input.d)) % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(u_input.b, firstLeadingBit(u_input.b)), -1i, ~(-u_input.a)), ~(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(-2147483647i, u_input.b, u_input.b)))));
    global0 = 8528i;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(338f - -1661f)) * _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-332f, 1000f, 130f) * vec3<f32>(400f, -1225f, -1873f)), _wgslsmith_dot_vec4_i32(vec4<i32>(-66367i, u_input.a, -45925i, 0i), vec4<i32>(u_input.a, var_0.x, 2147483647i, 8610i)), func_2(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 12202u)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-926f)), _wgslsmith_f_op_f32(827f - -1398f)))));
    let var_2 = 0u;
    let var_3 = Struct_1(12641i, _wgslsmith_sub_u32(4294967295u, _wgslsmith_clamp_u32(61660u << ((u_input.c << (40866u % 32u)) % 32u), select(var_2, var_2, true) >> (abs(var_2) % 32u), u_input.d.x)), vec4<bool>(((i32(-1i) * -17700i) >> (1u % 32u)) != _wgslsmith_sub_i32(func_6(vec2<f32>(551f, 974f), true, Struct_2(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), Struct_1(var_0.x, var_2, vec4<bool>(false, false, false, false)), -1000f), true), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 7309i, u_input.b, -2147483647i), vec4<i32>(var_0.x, var_0.x, u_input.b, -4065i))), all(vec4<bool>(true, true, true, true)), !any(vec2<bool>(true, true)), true));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<u32>(func_1().c.b, ~var_3.b, _wgslsmith_div_u32(2099u, var_2))), 92421u, abs(vec2<u32>(_wgslsmith_div_u32(var_3.b, 19437u), func_2(vec4<u32>(var_3.b, 29900u, u_input.c, var_3.b)).b)) >> (vec2<u32>(33064u, ~firstTrailingBit(36175u)) % vec2<u32>(32u)));
}

