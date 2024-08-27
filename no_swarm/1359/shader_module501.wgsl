struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<i32>(3936i, -22191i, 2147483647i, 1i), vec4<u32>(26840u, 56631u, 31705u, 4294967295u), vec3<u32>(3213u, 69090u, 0u), -991f, 4294967295u));

var<private> global1: array<vec3<f32>, 17> = array<vec3<f32>, 17>(vec3<f32>(-3276f, 2748f, 555f), vec3<f32>(104f, 308f, 1995f), vec3<f32>(602f, -190f, 339f), vec3<f32>(-1000f, 998f, -632f), vec3<f32>(-1524f, -928f, -1171f), vec3<f32>(383f, 1040f, 643f), vec3<f32>(-2062f, 604f, 713f), vec3<f32>(247f, -125f, -1471f), vec3<f32>(1003f, 1303f, -1495f), vec3<f32>(-1789f, 164f, -931f), vec3<f32>(-1000f, 1960f, 569f), vec3<f32>(-840f, 931f, -682f), vec3<f32>(-342f, 1113f, 250f), vec3<f32>(1140f, -833f, 109f), vec3<f32>(957f, 1542f, 1596f), vec3<f32>(1408f, 213f, -1181f), vec3<f32>(-386f, 128f, -830f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: vec3<u32>) -> bool {
    global0 = Struct_2(Struct_1((vec4<i32>(global0.a.a.x, -1i, -24474i, global0.a.a.x) | global0.a.a) & global0.a.a, ~(~vec4<u32>(global0.a.b.x, u_input.b, 0u, u_input.b)), arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, global0.a.d, true))) - arg_0.x), global0.a.b.x));
    global0 = Struct_2(global0.a);
    let var_0 = countOneBits(~select(~(~vec2<u32>(0u, 3225u)), ~(~vec2<u32>(u_input.b, 90945u)), vec2<bool>(true, true)));
    return true;
}

fn func_2() -> vec2<bool> {
    let var_0 = global0.a;
    global1 = array<vec3<f32>, 17>();
    global0 = Struct_2(global0.a);
    let var_1 = global0.a;
    var var_2 = all(select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, func_3(vec2<f32>(var_0.d, var_1.d), 1u, vec3<u32>(var_0.c.x, 0u, global0.a.b.x))), any(vec2<bool>(true, true))), select(true, true, any(vec2<bool>(true, true)))));
    return vec2<bool>(true, true || any(vec3<bool>(any(vec2<bool>(false, false)), true, select(false, false, true))));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: u32) -> Struct_2 {
    global0 = arg_1;
    var var_0 = !arg_0;
    let var_1 = _wgslsmith_sub_i32(~(~(-arg_1.a.a.x) << (0u % 32u)), select(countOneBits(_wgslsmith_sub_i32(_wgslsmith_div_i32(0i, global0.a.a.x), i32(-1i) * -2147483647i)), ~0i, !(!any(vec4<bool>(false, false, arg_0, false)))));
    let var_2 = arg_1.a;
    var_0 = !arg_0;
    return arg_1;
}

fn func_1(arg_0: u32, arg_1: vec4<f32>) -> vec3<bool> {
    let var_0 = func_4(all(func_2()), Struct_2(Struct_1(-vec4<i32>(global0.a.a.x, -66343i, 33165i, global0.a.a.x), ~vec4<u32>(4294967295u, 24101u, 4294967295u, 26090u), firstLeadingBit(global0.a.b.xzw), -844f, 12109u)), firstTrailingBit(global0.a.e));
    var var_1 = Struct_2(var_0.a);
    var var_2 = -301f;
    global1 = array<vec3<f32>, 17>();
    let var_3 = func_4(true, func_4(func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_1.xw)) - vec2<f32>(global0.a.d, -570f)), var_1.a.c.x, ~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 4713u, 77008u), var_1.a.b.zww)), func_4(!func_2().x, Struct_2(Struct_1(vec4<i32>(0i, -1i, -68621i, 0i), vec4<u32>(4294967295u, 41015u, 61707u, 4260u), global0.a.b.wxz, var_1.a.d, arg_0)), _wgslsmith_mod_u32(abs(0u), 10102u ^ var_1.a.e)), var_0.a.b.x), _wgslsmith_div_u32(_wgslsmith_clamp_u32(~(~global0.a.e), 37150u, 1u | global0.a.c.x), countOneBits(_wgslsmith_add_u32(u_input.a.x, 4294967295u) & _wgslsmith_add_u32(18698u, global0.a.b.x))));
    return select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, !all(vec4<bool>(false, false, false, true)), !(!(var_1.a.a.x == global0.a.a.x))), select(vec3<bool>(true, any(vec2<bool>(true, true)), all(vec3<bool>(false, true, false))), vec3<bool>(true, true, true), vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), !(arg_1.x < -707f), all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global0.a);
    let var_0 = all(func_1(~(~16004u), vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.a.d)), global0.a.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.d), -1000f), 400f)));
    var var_1 = vec4<u32>(u_input.a.x, 7628u, _wgslsmith_dot_vec2_u32(~u_input.a, func_4(var_0, func_4(false, Struct_2(global0.a), 68282u), abs(global0.a.b.x)).a.c.zx), 4116u) << (vec4<u32>(_wgslsmith_sub_u32(~48655u, 29535u), _wgslsmith_mod_u32(~57527u, global0.a.b.x) << (max(global0.a.c.x, 1u) % 32u), global0.a.b.x, 0u) % vec4<u32>(32u));
    let var_2 = global0.a.d;
    let var_3 = func_4(!var_0, Struct_2(global0.a), firstLeadingBit(countOneBits(firstTrailingBit(_wgslsmith_dot_vec3_u32(global0.a.c, global0.a.c)))));
    global1 = array<vec3<f32>, 17>();
    var var_4 = _wgslsmith_f_op_f32(trunc(-918f));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_vec3_i32(vec3<i32>(-global0.a.a.x, _wgslsmith_mult_i32(-36874i, -39697i), 1i), -reverseBits(global0.a.a.xww)), 2542f, vec3<i32>(_wgslsmith_div_i32(-21311i | _wgslsmith_mult_i32(global0.a.a.x, var_3.a.a.x), -(var_3.a.a.x << (global0.a.c.x % 32u))), max(~var_3.a.a.x, global0.a.a.x), global0.a.a.x), var_3.a.d);
}

