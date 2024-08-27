struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2) -> i32 {
    var var_0 = _wgslsmith_dot_vec4_u32(arg_1.d.c, abs(arg_1.d.c));
    let var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.b.x, arg_1.b.x, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x * -512f))), arg_0, !(!(!arg_1.a))))));
    let var_3 = Struct_4(var_1, Struct_1(315f > _wgslsmith_f_op_f32(trunc(-1100f)), var_1.c, vec4<u32>(93504u, var_1.d.c.x, _wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_1.d.c.x, 0u), 4294967295u), ~(~arg_1.d.c.x))), 14668u);
    var_0 = ~reverseBits(~11297u);
    return u_input.b.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: Struct_3) -> vec4<bool> {
    var var_0 = Struct_4(Struct_2(false, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1354f), _wgslsmith_f_op_f32(abs(-379f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(221f))))), arg_2.b.b, arg_2.b), Struct_1(_wgslsmith_clamp_i32(func_3(vec4<f32>(-1091f, -877f, -808f, 164f), Struct_2(false, vec2<f32>(-1151f, -988f), arg_2.b.b, arg_2.b)), 0i, -arg_1.x) == _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b.x, arg_2.a.x), -vec3<i32>(-39177i, u_input.b.x, arg_2.a.x)), vec3<bool>(false & arg_2.b.b.x, true || (arg_2.b.b.x & arg_2.b.b.x), true), vec4<u32>(arg_2.b.c.x, ~u_input.a, ~(~0u), _wgslsmith_div_u32(979u, ~arg_2.b.c.x))), ~_wgslsmith_mod_u32(max(4294967295u, arg_2.b.c.x), min(20731u, arg_2.b.c.x)) | ~firstTrailingBit(arg_2.b.c.x));
    let var_1 = Struct_1(any(!select(select(vec2<bool>(var_0.b.a, false), vec2<bool>(arg_2.b.a, arg_2.b.b.x), true), select(vec2<bool>(arg_2.b.a, true), var_0.a.c.yy, vec2<bool>(var_0.a.c.x, true)), arg_2.b.b.xz)), !(!select(!vec3<bool>(var_0.a.d.b.x, false, arg_2.b.b.x), vec3<bool>(true, true, var_0.b.a), false)), var_0.b.c);
    let var_2 = vec2<f32>(var_0.a.b.x, var_0.a.b.x);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-382f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.x * var_2.x))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-366f + _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(var_0.a.b.x * 536f)))));
    var var_4 = -2147483647i;
    return vec4<bool>(arg_2.b.a, var_0.a.d.b.x, true, any(arg_2.b.b.yy));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3) -> Struct_4 {
    var var_0 = min(~16637u, arg_1.b.c.x ^ u_input.a);
    var_0 = 1u;
    return Struct_4(Struct_2(true, _wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(285f, 168f), vec2<f32>(1863f, 627f)))), !(!(!vec3<bool>(arg_1.b.b.x, false, arg_0.x))), Struct_1(arg_1.b.b.x, select(!arg_0.xzx, vec3<bool>(arg_0.x, arg_0.x, arg_1.b.a), func_2(vec2<i32>(u_input.b.x, arg_1.a.x), u_input.b, Struct_3(arg_1.a, Struct_1(false, vec3<bool>(arg_0.x, true, false), vec4<u32>(1u, 62905u, u_input.a, 17291u)))).x), _wgslsmith_div_vec4_u32(~arg_1.b.c, reverseBits(arg_1.b.c)))), Struct_1(!arg_1.b.b.x, !arg_0.yyy, arg_1.b.c), 1u);
}

fn func_5(arg_0: Struct_4) -> bool {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1570f * 583f)));
    let var_1 = ~(~(~arg_0.c));
    let var_2 = u_input.b.x;
    var var_3 = firstTrailingBit(_wgslsmith_sub_vec4_i32(min(abs(vec4<i32>(u_input.b.x, var_2, u_input.b.x, u_input.b.x) << (arg_0.a.d.c % vec4<u32>(32u))), -firstLeadingBit(vec4<i32>(-25110i, 1i, var_2, 37214i))), vec4<i32>(-33693i ^ var_2, 94739i, -1i, u_input.b.x)));
    var var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1013f * _wgslsmith_f_op_f32(arg_0.a.b.x + var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(242f)) - arg_0.a.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-587f * _wgslsmith_f_op_f32(min(var_0, -106f)))))));
    return arg_0.b.b.x;
}

fn func_1(arg_0: f32, arg_1: u32) -> vec3<i32> {
    var var_0 = true;
    let var_1 = arg_1;
    let var_2 = 0i;
    let var_3 = ~abs(arg_1);
    var var_4 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) > 2300f, func_5(func_4(select(vec4<bool>(false, false, false, true), func_2(vec2<i32>(1i, -2147483647i), u_input.b, Struct_3(vec2<i32>(-29911i, u_input.b.x), Struct_1(true, vec3<bool>(true, true, true), vec4<u32>(1u, 1u, 4294967295u, 1u)))), vec4<bool>(true, false, false, true)), Struct_3(-vec2<i32>(var_2, var_2), Struct_1(false, vec3<bool>(true, false, true), vec4<u32>(1u, 4294967295u, var_1, 1u))))), false, all(vec2<bool>(true, !(arg_0 <= -984f))));
    return _wgslsmith_mult_vec3_i32(~abs(u_input.b), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -abs(max(u_input.b, func_1(-1289f, u_input.a) | _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, 0i, 1i), u_input.b)));
    let var_1 = Struct_1(true, select(vec3<bool>(u_input.b.x > _wgslsmith_clamp_i32(-13078i, u_input.b.x, 55651i), func_4(vec4<bool>(true, false, true, false), Struct_3(u_input.b.zz, Struct_1(false, vec3<bool>(true, true, true), vec4<u32>(10913u, u_input.a, u_input.a, 81690u)))).b.a, true), vec3<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), ~u_input.b.x != _wgslsmith_div_i32(u_input.b.x, var_0.x), false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, select(false, true, false)))), select(~(~(vec4<u32>(0u, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(u_input.a, 24413u, u_input.a, u_input.a) % vec4<u32>(32u)))), ~vec4<u32>(u_input.a, ~15432u, u_input.a, _wgslsmith_mult_u32(0u, 34763u)), (func_5(Struct_4(Struct_2(false, vec2<f32>(1838f, 271f), vec3<bool>(true, false, true), Struct_1(false, vec3<bool>(false, false, true), vec4<u32>(0u, u_input.a, 21019u, u_input.a))), Struct_1(true, vec3<bool>(true, true, false), vec4<u32>(u_input.a, u_input.a, 1u, 24812u)), u_input.a)) & false) && (func_5(Struct_4(Struct_2(true, vec2<f32>(268f, -288f), vec3<bool>(true, true, false), Struct_1(false, vec3<bool>(false, true, true), vec4<u32>(u_input.a, u_input.a, 1u, 7256u))), Struct_1(false, vec3<bool>(true, true, false), vec4<u32>(u_input.a, u_input.a, 7777u, u_input.a)), 0u)) || false)));
    let var_2 = abs(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_add_u32(10690u, var_1.c.x), var_1.c.x << (7329u % 32u), ~u_input.a), ~vec4<u32>(u_input.a, 33874u, u_input.a, 1u) | ~vec4<u32>(var_1.c.x, u_input.a, var_1.c.x, u_input.a)));
    var var_3 = Struct_4(func_4(!(!(!vec4<bool>(var_1.b.x, true, var_1.a, var_1.a))), Struct_3(u_input.b.xz & (vec2<i32>(79958i, u_input.b.x) >> (var_1.c.xz % vec2<u32>(32u))), func_4(vec4<bool>(true, true, true, true), Struct_3(var_0.yz, Struct_1(var_1.a, vec3<bool>(var_1.b.x, false, false), var_1.c))).a.d)).a, Struct_1(true, vec3<bool>(var_1.a, ~1u <= ~var_2.x, _wgslsmith_f_op_f32(sign(1214f)) != _wgslsmith_div_f32(-242f, 1000f)), select(_wgslsmith_div_vec4_u32(var_1.c, var_1.c) ^ vec4<u32>(0u, var_1.c.x, u_input.a, 35298u), vec4<u32>(~u_input.a, 19177u, u_input.a, ~var_1.c.x), !(!var_1.a))), _wgslsmith_mult_u32(4294967295u, countOneBits(var_1.c.x)) ^ max(abs(~48834u), reverseBits(_wgslsmith_mod_u32(var_2.x, var_2.x))));
    var var_4 = Struct_3(firstTrailingBit(abs(vec2<i32>(u_input.b.x, var_0.x))), var_1);
    var_3 = func_4(vec4<bool>(func_4(func_2(vec2<i32>(u_input.b.x, 1i) << (var_1.c.xy % vec2<u32>(32u)), _wgslsmith_clamp_vec3_i32(u_input.b, vec3<i32>(10880i, var_4.a.x, -1i), var_0), Struct_3(u_input.b.yz, var_4.b)), Struct_3(-var_0.xz, Struct_1(true, vec3<bool>(var_4.b.b.x, false, false), vec4<u32>(var_4.b.c.x, u_input.a, 1u, var_3.b.c.x)))).b.a, all(var_4.b.b.zy), true, var_4.b.a), Struct_3(u_input.b.xy, Struct_1(var_4.b.a, select(func_4(vec4<bool>(var_4.b.b.x, var_1.a, true, false), Struct_3(var_0.zy, Struct_1(var_3.b.a, var_1.b, var_1.c))).a.c, select(vec3<bool>(false, var_3.a.d.a, var_1.b.x), var_4.b.b, var_3.b.a), var_4.b.b), vec4<u32>(_wgslsmith_dot_vec2_u32(var_4.b.c.xw, var_3.b.c.xz), _wgslsmith_sub_u32(39737u, var_3.c), var_4.b.c.x, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.xz, var_0.x, ~vec4<u32>(var_2.x, ~_wgslsmith_clamp_u32(58180u, 4294967295u, 1837u), max(min(39190u, var_1.c.x), 1u), var_2.x));
}

