struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: array<Struct_5, 27>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1() -> vec4<i32> {
    return vec4<i32>(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(0i, u_input.b.x, u_input.a.x)) | vec3<i32>(-2147483647i, u_input.b.x, 17542i), -(~vec3<i32>(-1566i, u_input.a.x, 1i))), 5823i, 4061i, max(1i, u_input.a.x));
}

fn func_3(arg_0: vec4<u32>) -> vec3<f32> {
    global0 = select(!select(vec2<bool>(true, true), select(vec2<bool>(global0.x, true), select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false), global0.x), false), true), !select(select(select(vec2<bool>(false, true), vec2<bool>(global0.x, false), vec2<bool>(true, true)), select(vec2<bool>(true, global0.x), vec2<bool>(true, false), vec2<bool>(true, global0.x)), select(vec2<bool>(global0.x, true), vec2<bool>(false, true), false)), vec2<bool>(true, true), all(!vec3<bool>(true, global0.x, global0.x))), global0.x);
    global0 = select(vec2<bool>(false, global0.x), vec2<bool>(!global0.x, global0.x), vec2<bool>(global0.x, global0.x));
    global1 = array<Struct_5, 27>();
    global1 = array<Struct_5, 27>();
    global1 = array<Struct_5, 27>();
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-442f, 342f, 127f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1230f, -397f, -1000f)), !vec3<bool>(global0.x, true, global0.x))), _wgslsmith_div_vec3_f32(vec3<f32>(-291f, -561f, 710f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-949f, -940f, 1316f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -133f), _wgslsmith_f_op_f32(-516f + _wgslsmith_f_op_f32(1038f * 2044f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, -1000f)) - -1355f))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<i32>) -> Struct_4 {
    var var_0 = arg_1;
    var_0 = arg_1;
    let var_1 = Struct_2(abs(~vec4<u32>(1u, u_input.c, 0u, 1u)) & ~(~(~vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c))), -1226f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 71300u), vec4<u32>(84035u, 30233u, u_input.c, u_input.c)))))), Struct_1(i32(-1i) * -1i, select(select(!vec2<bool>(global0.x, false), vec2<bool>(global0.x, false), true), !vec2<bool>(false, global0.x), select(!vec2<bool>(global0.x, false), select(vec2<bool>(global0.x, true), vec2<bool>(false, global0.x), vec2<bool>(true, true)), vec2<bool>(global0.x, false))), -408f));
    let var_2 = var_1;
    var var_3 = any(vec4<bool>(var_2.d.b.x, true || all(select(vec4<bool>(global0.x, global0.x, true, var_1.d.b.x), vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(global0.x, true, var_2.d.b.x, global0.x))), var_2.d.b.x, true));
    return Struct_4((u_input.c ^ 1u) >> (var_1.a.x % 32u), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.c.zz), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.d.c, var_1.d.c), _wgslsmith_f_op_vec2_f32(-var_2.c.zy)))))));
}

fn func_4(arg_0: Struct_4) -> Struct_1 {
    var var_0 = Struct_2(abs(~vec4<u32>(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 54215u, u_input.c), vec3<u32>(40907u, arg_0.a, arg_0.a)), arg_0.a, 49803u)), arg_0.b.x, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1508f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) + -451f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-491f, 390f, global0.x)), 1298f)))), Struct_1(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.b.x), vec2<i32>(u_input.a.x, u_input.b.x))) >> (_wgslsmith_mod_u32(u_input.c | 29023u, 179u) % 32u), !vec2<bool>(4294967295u <= arg_0.a, any(vec2<bool>(global0.x, false))), arg_0.b.x));
    let var_1 = Struct_3(_wgslsmith_mult_i32(firstLeadingBit(u_input.b.x), ~u_input.a.x), countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(abs(arg_0.a), u_input.c, ~28919u, abs(arg_0.a)), countOneBits(abs(vec4<u32>(20973u, 50946u, 1u, 1u))))));
    let var_2 = 2817i;
    let var_3 = -835f;
    var var_4 = var_1.b.x;
    return Struct_1(_wgslsmith_add_i32(_wgslsmith_clamp_i32(1i, -var_2, _wgslsmith_add_i32(-22017i, var_1.a)), ~(-46506i ^ var_0.d.a)), select(!vec2<bool>(true, select(global0.x, var_0.d.b.x, global0.x)), !var_0.d.b, select(select(vec2<bool>(var_0.d.b.x, true), select(vec2<bool>(true, global0.x), var_0.d.b, global0.x), !vec2<bool>(true, var_0.d.b.x)), var_0.d.b, select(var_0.d.b, !var_0.d.b, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.c - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -764f), _wgslsmith_f_op_f32(-var_0.d.c))) - -1532f));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = !(!select(select(func_4(Struct_4(4294967295u, vec2<f32>(1498f, 1197f))).b, vec2<bool>(global0.x, global0.x), func_4(Struct_4(28492u, vec2<f32>(arg_2.c, arg_1.c))).b), vec2<bool>(global0.x & false, global0.x || arg_0), vec2<bool>(true, any(vec3<bool>(arg_2.b.x, arg_2.b.x, false)))));
    global0 = arg_2.b;
    let var_0 = i32(-1i) * -2147483647i;
    var var_1 = Struct_3(arg_2.a, _wgslsmith_mult_vec4_u32(~firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.c, 9283u), vec4<u32>(13719u, u_input.c, u_input.c, 27243u))), ~(~(vec4<u32>(0u, 1u, u_input.c, 1u) >> (vec4<u32>(u_input.c, u_input.c, u_input.c, 28583u) % vec4<u32>(32u))))));
    var var_2 = 50824i;
    return arg_2;
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> StorageBuffer {
    global1 = array<Struct_5, 27>();
    global0 = vec2<bool>(arg_2.b.x, arg_1.a <= -_wgslsmith_div_i32(_wgslsmith_clamp_i32(2147483647i, u_input.a.x, arg_2.a), 15635i));
    return StorageBuffer(u_input.c, vec4<f32>(2241f, arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(355f * _wgslsmith_f_op_f32(floor(arg_0.x))) - 1887f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-883f - arg_3)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), vec2<i32>(abs(_wgslsmith_clamp_i32(firstLeadingBit(u_input.b.x), u_input.b.x, -23251i)), u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let x = u_input.a;
    s_output = func_6(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(-1337f, _wgslsmith_f_op_f32(-1390f - -1009f)), 894f, 859f, 472f))), func_5(global0.x, func_4(func_2(vec4<f32>(-437f, 198f, -1664f, -463f), func_1())), func_4(Struct_4(reverseBits(4294967295u), vec2<f32>(1229f, 1233f)))), Struct_1(max(abs(1i) << (~u_input.c % 32u), -26788i), select(vec2<bool>(global0.x, global0.x), !select(vec2<bool>(false, true), vec2<bool>(global0.x, global0.x), true), false), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1479f)))), 598f))), _wgslsmith_f_op_f32(ceil(1062f)));
}

