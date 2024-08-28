struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: f32,
    d: f32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 17> = array<vec2<i32>, 17>(vec2<i32>(2147483647i, 0i), vec2<i32>(48315i, 28368i), vec2<i32>(0i, -1i), vec2<i32>(30725i, 1i), vec2<i32>(27345i, 0i), vec2<i32>(30763i, 40743i), vec2<i32>(1i, 39922i), vec2<i32>(0i, 0i), vec2<i32>(-58125i, -41772i), vec2<i32>(-24977i, 1758i), vec2<i32>(0i, -54100i), vec2<i32>(48559i, -15710i), vec2<i32>(36622i, -29525i), vec2<i32>(2147483647i, -7731i), vec2<i32>(-41960i, -17289i), vec2<i32>(-3301i, i32(-2147483648)), vec2<i32>(2147483647i, -12431i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> i32 {
    var var_0 = arg_1.b;
    let var_1 = select(vec2<bool>(true, all(!vec2<bool>(true, arg_0.e.x))), arg_2.e.zy, any(!vec4<bool>(true, !arg_1.a.e.x, false, true)));
    var var_2 = vec3<f32>(-1166f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c + -1389f), _wgslsmith_f_op_f32(arg_0.c * arg_2.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d + _wgslsmith_f_op_f32(-931f * 1370f)))), var_0.x);
    var var_3 = false;
    let var_4 = true;
    return 0i;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: Struct_1) -> vec2<bool> {
    global0 = array<vec2<i32>, 17>();
    global0 = array<vec2<i32>, 17>();
    global0 = array<vec2<i32>, 17>();
    var var_0 = arg_2.a;
    var_0 = select(vec2<bool>(all(arg_2.e), any(!select(vec3<bool>(var_0.x, true, arg_2.e.x), vec3<bool>(var_0.x, false, false), arg_2.a.x))), select(select(arg_2.a, !arg_2.e.xx, vec2<bool>(true, any(vec4<bool>(arg_2.e.x, arg_2.a.x, false, false)))), arg_2.e.yx, !(!(arg_0.x > u_input.c))), true);
    return select(vec2<bool>(true, (_wgslsmith_f_op_f32(arg_2.c - 190f) >= arg_2.c) == var_0.x), vec2<bool>(false, var_0.x), true);
}

fn func_2(arg_0: u32) -> Struct_2 {
    global0 = array<vec2<i32>, 17>();
    global0 = array<vec2<i32>, 17>();
    let var_0 = _wgslsmith_f_op_f32(round(-334f));
    global0 = array<vec2<i32>, 17>();
    let var_1 = Struct_2(Struct_1(func_4(vec2<i32>(_wgslsmith_add_i32(-24377i, -1i), func_3(Struct_1(vec2<bool>(false, true), 17167i, var_0, 1000f, vec3<bool>(false, false, true)), Struct_2(Struct_1(vec2<bool>(true, true), u_input.c, 1355f, 132f, vec3<bool>(true, true, true)), vec2<f32>(var_0, -419f), true), Struct_1(vec2<bool>(true, true), -13517i, 1709f, var_0, vec3<bool>(true, true, true)), 54129i)), vec2<u32>(u_input.a | 1u, arg_0), Struct_1(vec2<bool>(true, true), 740i, 355f, _wgslsmith_f_op_f32(1000f * 687f), vec3<bool>(true, true, true))), u_input.b, var_0, var_0, select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-597f, var_0)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-605f, var_0))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0, var_0), vec2<f32>(var_0, var_0)))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1831f), var_0)), !func_4(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.b), -vec2<i32>(u_input.b, u_input.b)), ~vec2<u32>(1327u, 41784u) >> (select(vec2<u32>(arg_0, arg_0), vec2<u32>(1u, arg_0), vec2<bool>(true, true)) % vec2<u32>(32u)), Struct_1(func_4(global0[_wgslsmith_index_u32(arg_0, 17u)], vec2<u32>(u_input.a, arg_0), Struct_1(vec2<bool>(false, true), u_input.c, var_0, 1488f, vec3<bool>(true, false, false))), _wgslsmith_div_i32(u_input.b, 615i), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_0 + var_0), vec3<bool>(false, true, false))).x);
    return Struct_2(var_1.a, vec2<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0 * var_1.a.d), _wgslsmith_f_op_f32(min(1376f, var_0)), var_1.a.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0)) * var_0))), !any(vec2<bool>(var_1.a.a.x, true)));
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) * arg_1.a.d) - arg_1.b.x));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-398f, 1f) + 1086f);
    var var_1 = func_2(u_input.a);
    var var_2 = ~_wgslsmith_dot_vec2_u32(~vec2<u32>(42271u, ~u_input.a), ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(17340u, 0u), vec2<u32>(3591u, 36128u))));
    var var_3 = ~(max(u_input.a, 71715u) & 4294967295u);
    return func_2(_wgslsmith_mult_u32(u_input.a, ~u_input.a << (u_input.a % 32u))).a;
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: bool) -> f32 {
    let var_0 = _wgslsmith_div_u32(u_input.a, u_input.a);
    var var_1 = vec3<f32>(arg_0.a.c, 2029f, -1611f);
    let var_2 = Struct_2(Struct_1(vec2<bool>(false, true), 27870i, var_1.x, _wgslsmith_f_op_f32(trunc(429f)), select(arg_0.a.e, !func_1(var_1.x, arg_0).e, func_1(var_1.x, Struct_2(Struct_1(arg_0.a.e.yz, 1i, arg_0.a.d, 104f, vec3<bool>(arg_0.a.a.x, false, arg_2)), arg_0.b, arg_0.c)).e)), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(min(arg_0.a.d, -879f))))), _wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_f_op_f32(-var_1.x))), all(vec4<bool>(false, any(vec4<bool>(arg_2, arg_0.a.e.x, true, arg_0.c)), true, arg_0.c)));
    var var_3 = Struct_2(func_2(101217u).a, _wgslsmith_f_op_vec2_f32(exp2(arg_0.b)), false);
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1564f))), -1444f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f)))) - _wgslsmith_div_vec3_f32(vec3<f32>(var_2.b.x, _wgslsmith_f_op_f32(min(-789f, 315f)), _wgslsmith_f_op_f32(sign(var_2.a.d))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-103f, -471f, -668f), vec3<f32>(-1293f, var_1.x, arg_0.b.x), arg_0.a.e.x))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.d - var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) + vec4<f32>(_wgslsmith_f_op_f32(func_5(Struct_2(func_1(-539f, Struct_2(Struct_1(vec2<bool>(true, true), -31578i, -1000f, 306f, vec3<bool>(false, false, false)), vec2<f32>(1895f, -187f), true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1830f, 141f) * vec2<f32>(695f, 589f)), true), -(u_input.b ^ -1i), !any(vec4<bool>(false, true, false, false)))), _wgslsmith_f_op_f32(max(func_2(~1u).b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1487f)), _wgslsmith_f_op_f32(abs(-674f)), true)))), _wgslsmith_f_op_f32(f32(-1f) * -733f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1494f)))), _wgslsmith_f_op_f32(-1383f - _wgslsmith_f_op_f32(floor(124f))))));
    let var_1 = !func_4(vec2<i32>(_wgslsmith_mod_i32(-32300i, u_input.c), 5281i), ~(~max(vec2<u32>(u_input.a, u_input.a), vec2<u32>(14376u, 38180u))), func_2(_wgslsmith_mult_u32(22972u, 1u)).a);
    var var_2 = select(vec2<bool>(!select(true, var_1.x, !var_1.x), var_1.x), var_1, -func_3(func_1(var_0.x, Struct_2(Struct_1(var_1, -22756i, -2562f, -447f, vec3<bool>(true, var_1.x, false)), vec2<f32>(var_0.x, -2623f), var_1.x)), func_2(13759u), func_2(21821u).a, 2147483647i) < min(~(-u_input.c), u_input.c));
    var_2 = vec2<bool>(var_0.x >= var_0.x, true);
    var var_3 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-825f)) + _wgslsmith_f_op_f32(floor(-176f))), Struct_2(Struct_1(var_1, func_2(0u).a.b, 1312f, var_0.x, vec3<bool>(select(var_2.x, var_1.x, false), var_2.x, any(var_1))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), 173f)), all(!var_1)));
    global0 = array<vec2<i32>, 17>();
    var var_4 = Struct_2(func_2(4294967295u).a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_0.yx))), var_0.zw)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_div_f32(var_0.x, var_0.x)) * vec2<f32>(_wgslsmith_f_op_f32(trunc(-575f)), _wgslsmith_f_op_f32(round(var_0.x))))), all(select(!select(vec4<bool>(var_3.a.x, true, true, false), vec4<bool>(var_3.e.x, true, true, true), vec4<bool>(true, var_2.x, false, var_3.e.x)), !vec4<bool>(var_3.e.x, var_1.x, true, var_3.a.x), !(!vec4<bool>(var_1.x, true, var_1.x, var_2.x)))));
    global0 = array<vec2<i32>, 17>();
    var_2 = !var_3.e.xz;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.b, _wgslsmith_f_op_f32(abs(var_3.c)));
}

