struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: u32,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 4>;

var<private> global1: i32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: Struct_4) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(-arg_1.x);
    let var_1 = 26616u;
    global1 = u_input.b.x;
    let var_2 = Struct_4(vec4<bool>(true, true, false, arg_0.a.x));
    var_0 = -2433f;
    return select(!select(select(select(vec4<bool>(arg_2.a.x, arg_0.a.x, true, false), var_2.a, true), vec4<bool>(true, true, true, true), select(arg_2.a, vec4<bool>(true, false, arg_0.a.x, true), arg_2.a)), vec4<bool>(1u >= var_1, 18127i < u_input.a, arg_1.x != 254f, any(var_2.a)), (0u > var_1) & var_2.a.x), var_2.a, !var_2.a);
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: bool, arg_3: Struct_2) -> vec4<bool> {
    global1 = abs(u_input.b.x);
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-614f, -184f) - vec2<f32>(-474f, 509f))), _wgslsmith_f_op_vec2_f32(-arg_3.a), arg_2))), _wgslsmith_f_op_f32(arg_3.a.x - _wgslsmith_div_f32(arg_3.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -327f))))), _wgslsmith_clamp_u32(46490u, _wgslsmith_sub_u32(_wgslsmith_div_u32(countOneBits(21706u), 4294967295u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 0u, 4294967295u), vec4<u32>(1u, 71566u, 4294967295u, 4294967295u))), 1u), u_input.b.zx);
    let var_1 = firstLeadingBit(abs(vec2<u32>(_wgslsmith_div_u32(var_0.c, var_0.c), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c, 1u, var_0.c), vec3<u32>(32371u, var_0.c, 42266u)))) | (vec2<u32>(var_0.c, _wgslsmith_div_u32(var_0.c, 21758u)) >> (abs(vec2<u32>(var_0.c, 13880u) << (vec2<u32>(var_0.c, 0u) % vec2<u32>(32u))) % vec2<u32>(32u))));
    var var_2 = !any(!select(!vec3<bool>(arg_2, arg_1.a.x, true), !arg_1.a.xwx, arg_1.a.x));
    let var_3 = Struct_5(arg_3);
    return select(vec4<bool>(~(-arg_0) >= (i32(-1i) * -arg_0), !((arg_3.a.x == var_0.b) & true), select(true, false, select(arg_1.a.x, arg_2, arg_1.a.x) | (arg_2 != true)), arg_1.a.x), !select(arg_1.a, arg_1.a, func_3(arg_1, global0[_wgslsmith_index_u32(44899u, 4u)], arg_1)), true);
}

fn func_2() -> Struct_4 {
    global0 = array<vec3<f32>, 4>();
    var var_0 = Struct_5(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-739f, 292f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-223f, 171f)))))));
    global0 = array<vec3<f32>, 4>();
    global0 = array<vec3<f32>, 4>();
    var_0 = Struct_5(var_0.a);
    return Struct_4(func_4(2147483647i, Struct_4(func_3(Struct_4(vec4<bool>(true, false, true, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a.x, var_0.a.a.x, 1000f)), Struct_4(vec4<bool>(true, false, false, true)))), (-4469i & abs(u_input.b.x)) < -_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_0.a.a))))));
}

fn func_5(arg_0: Struct_4, arg_1: vec2<i32>) -> Struct_3 {
    let var_0 = Struct_5(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1205f, 465f), vec2<f32>(493f, 922f))), _wgslsmith_div_vec2_f32(vec2<f32>(742f, -899f), vec2<f32>(1000f, -2324f)), true)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-951f, -374f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1122f, -451f) - vec2<f32>(-438f, 615f)), vec2<bool>(arg_0.a.x, false))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.a.a.x)), 322f)));
    var var_2 = Struct_3(var_0.a, -301f, ~72979u, _wgslsmith_mult_vec2_i32(select(~select(u_input.b.xw, arg_1, arg_0.a.x), vec2<i32>(-u_input.c.x, _wgslsmith_mod_i32(u_input.a, 2147483647i)), arg_0.a.ww), _wgslsmith_div_vec2_i32(vec2<i32>(1i, arg_1.x), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(0i, u_input.a))) << ((select(vec2<u32>(49517u, 4294967295u), vec2<u32>(13246u, 12905u), vec2<bool>(true, arg_0.a.x)) & _wgslsmith_add_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 53756u))) % vec2<u32>(32u))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -972f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + var_2.b) - _wgslsmith_f_op_f32(-276f - -137f)))))), var_2.b);
    var_2 = Struct_3(var_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_0.a.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-844f, _wgslsmith_f_op_f32(min(-1056f, var_1.x))) - -607f)), ~firstLeadingBit(reverseBits(~var_2.c)), vec2<i32>(firstTrailingBit(~1i), u_input.a));
    return Struct_3(Struct_2(var_2.a.a), _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(var_2.c, 22679u), ~25028u, 1u), ~vec3<u32>(var_2.c, 46735u, 49594u) ^ select(vec3<u32>(var_2.c, var_2.c, 27798u), vec3<u32>(1u, 46550u, var_2.c), arg_0.a.x)) >> (21109u % 32u), ~countOneBits(vec2<i32>(56479i, firstLeadingBit(u_input.b.x))));
}

fn func_6(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec3<i32>) -> Struct_2 {
    var var_0 = func_2();
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.a.a * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-456f, arg_0.b), _wgslsmith_f_op_vec2_f32(-arg_0.a.a)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(293f, arg_0.b)))) + arg_0.a.a)));
    return arg_0.a;
}

fn func_1() -> f32 {
    global0 = array<vec3<f32>, 4>();
    global0 = array<vec3<f32>, 4>();
    var var_0 = Struct_5(func_6(func_5(func_2(), vec2<i32>(u_input.a, u_input.b.x) ^ ~vec2<i32>(4760i, 1i)), u_input.b.xw, u_input.b.yzw >> (~vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))));
    let var_1 = Struct_1(~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, 43336u), vec2<u32>(1u, 48113u), true), reverseBits(vec2<u32>(7601u, 1u))), ~_wgslsmith_mult_u32(49192u, 68740u)), _wgslsmith_add_i32(u_input.b.x, -1i), (select(u_input.a, ~u_input.c.x, any(vec3<bool>(true, false, true))) & -2147483647i) ^ u_input.c.x);
    var_0 = Struct_5(Struct_2(var_0.a.a));
    return var_0.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.a;
    let var_0 = Struct_3(Struct_2(vec2<f32>(-708f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(250f + 1268f)))), -1012f, 1u, _wgslsmith_mult_vec2_i32(u_input.c, u_input.b.wx));
    let var_1 = -1083f;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(53873u, var_0.c), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(741f + -1332f), _wgslsmith_f_op_f32(ceil(-208f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - var_0.a.a.x) * var_0.b), _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(409f, 1000f, -528f, var_0.b), vec4<f32>(var_0.a.a.x, -1282f, var_1, -1284f))), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.b, 1000f, 397f, var_1), vec4<f32>(-665f, -283f, 953f, var_0.a.a.x))))))), _wgslsmith_div_vec2_i32(var_0.d, abs(select(u_input.c, reverseBits(vec2<i32>(u_input.a, var_0.d.x)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))))));
}

