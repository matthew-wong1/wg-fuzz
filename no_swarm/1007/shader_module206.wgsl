struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(4294967295u, 26653u), vec2<u32>(33279u, 109816u), vec2<u32>(53461u, 14472u), vec2<u32>(33938u, 102043u), vec2<u32>(4294967295u, 36230u), vec2<u32>(8543u, 4294967295u), vec2<u32>(0u, 98186u), vec2<u32>(4294967295u, 3841u), vec2<u32>(4294967295u, 57765u), vec2<u32>(93618u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 28029u), vec2<u32>(49148u, 27472u), vec2<u32>(93576u, 11560u), vec2<u32>(1u, 2776u), vec2<u32>(34973u, 10632u), vec2<u32>(1u, 77807u));

var<private> global1: u32 = 50086u;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_4) -> vec3<u32> {
    var var_0 = Struct_4(arg_0.a, max(0i, reverseBits(-u_input.a.x)) >= 65911i, arg_0.d, arg_0.d);
    let var_1 = arg_0.c;
    var var_2 = var_0.a.a.a.x;
    var var_3 = vec2<u32>(_wgslsmith_sub_u32(~_wgslsmith_div_u32(countOneBits(var_1.a.a.c), var_1.a.a.b), var_1.a.b.b), 5755u);
    global1 = _wgslsmith_dot_vec3_u32(u_input.e, select(~select(vec3<u32>(arg_0.c.c, 0u, var_1.a.a.c), u_input.e, vec3<bool>(var_0.b, true, true)), vec3<u32>(var_3.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.e, u_input.e), 2662u), 14898u), !vec3<bool>(var_0.b, any(vec2<bool>(var_0.b, false)), all(vec4<bool>(false, var_0.b, arg_0.b, false)))));
    return u_input.e;
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.a.x & -(~(-2147483647i << (0u % 32u)));
    global0 = array<vec2<u32>, 17>();
    global1 = 4294967295u;
    var var_1 = select(_wgslsmith_mod_vec3_u32(func_3(Struct_4(Struct_2(Struct_1(vec2<f32>(816f, -310f), u_input.d, 6360u), Struct_1(vec2<f32>(603f, 1022f), u_input.c, u_input.c)), true, Struct_3(Struct_2(Struct_1(vec2<f32>(1102f, 1340f), 15545u, u_input.c), Struct_1(vec2<f32>(-260f, -2664f), u_input.e.x, u_input.c)), Struct_2(Struct_1(vec2<f32>(648f, -337f), u_input.e.x, u_input.c), Struct_1(vec2<f32>(-1061f, 1873f), u_input.e.x, u_input.c)), u_input.e.x), Struct_3(Struct_2(Struct_1(vec2<f32>(-705f, -1239f), u_input.d, 0u), Struct_1(vec2<f32>(750f, 604f), 0u, 0u)), Struct_2(Struct_1(vec2<f32>(-592f, 1101f), u_input.d, 1u), Struct_1(vec2<f32>(433f, -1260f), u_input.c, 1u)), u_input.e.x))), ~u_input.e), ~countOneBits(~firstTrailingBit(vec3<u32>(u_input.c, 61677u, 1u))), any(vec3<bool>(any(vec2<bool>(true, true)), select(true, true, all(vec4<bool>(true, false, true, false))), !any(vec3<bool>(false, true, true)))));
    return Struct_1(vec2<f32>(-1524f, _wgslsmith_f_op_f32(ceil(-514f))), 0u, _wgslsmith_mod_u32(22194u, 1u));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: vec2<i32>) -> Struct_2 {
    let var_0 = vec2<u32>(4294967295u, 3071u);
    var var_1 = func_2();
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(abs(var_1.a.x)), func_2().a.x), 0u, _wgslsmith_add_u32(1u, 26969u));
    let var_3 = vec3<u32>(var_1.c, var_0.x, var_1.c);
    var_2 = func_2();
    return Struct_2(Struct_1(var_2.a, ~func_3(Struct_4(Struct_2(Struct_1(var_2.a, var_3.x, 0u), Struct_1(vec2<f32>(var_2.a.x, 1766f), 24347u, var_2.c)), arg_1.x, Struct_3(Struct_2(Struct_1(vec2<f32>(654f, var_2.a.x), var_1.c, 0u), Struct_1(var_1.a, var_1.c, var_1.b)), Struct_2(Struct_1(vec2<f32>(529f, -1057f), var_0.x, var_2.c), Struct_1(vec2<f32>(-657f, var_1.a.x), var_3.x, 4294967295u)), 4294967295u), Struct_3(Struct_2(Struct_1(vec2<f32>(299f, var_2.a.x), var_1.b, 46285u), Struct_1(var_2.a, 4294967295u, 15238u)), Struct_2(Struct_1(vec2<f32>(1000f, var_1.a.x), var_3.x, 66339u), Struct_1(var_2.a, 1u, 7701u)), 1u))).x, func_2().b), Struct_1(var_2.a, 1u, _wgslsmith_add_u32(~(~0u), var_0.x)));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: f32, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = 1429f;
    global1 = 0u;
    var var_1 = Struct_5(~(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.d), u_input.e.yz))), vec2<u32>(max(~(~4294967295u), ~_wgslsmith_mult_u32(arg_0.b.c, 1u)), _wgslsmith_clamp_u32(arg_0.b.c, u_input.c << (firstTrailingBit(u_input.e.x) % 32u), ~0u)), _wgslsmith_mod_u32(~arg_0.b.b, max(abs(1u), (arg_0.b.b >> (4294967295u % 32u)) | _wgslsmith_clamp_u32(16900u, u_input.e.x, arg_0.b.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.a.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_0, var_0, true)))))), -31002i);
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.b.a), _wgslsmith_sub_u32(1u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(~4294967295u, var_1.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0.a.c, 4294967295u, 63172u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.c, 50604u, 3240u), vec4<u32>(var_1.c, u_input.c, u_input.d, 19325u), vec4<u32>(1u, var_1.c, arg_0.a.c, 0u))))), u_input.e.x);
    let var_3 = _wgslsmith_f_op_f32(229f * 1f);
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 0u;
    let var_0 = Struct_4(Struct_2(func_4(func_1(vec3<bool>(true, true, true), vec4<bool>(true, true, true, true), min(u_input.a, u_input.a)), 57272i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-934f, 1397f)), vec2<bool>(any(vec4<bool>(true, false, false, false)), any(vec4<bool>(true, false, true, true)))), func_1(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false)), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true))), ~_wgslsmith_add_vec2_i32(u_input.a, vec2<i32>(6594i, -2770i))).a), !all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), Struct_3(Struct_2(func_1(vec3<bool>(false, false, false), vec4<bool>(true, false, true, true), u_input.b.xy ^ vec2<i32>(-2147483647i, u_input.a.x)).a, Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(-1364f, 1616f), vec2<f32>(600f, -1000f)), ~u_input.e.x, u_input.c)), func_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false)), select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), false), true), abs(u_input.a)), u_input.c), Struct_3(func_1(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), true), true), vec2<i32>(~1i, u_input.a.x)), func_1(vec3<bool>(true, true, true), select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), false), any(vec2<bool>(true, false))), -u_input.b.xx), u_input.c));
    var var_1 = u_input.d;
    let var_2 = _wgslsmith_f_op_f32(round(func_4(Struct_2(Struct_1(func_4(Struct_2(var_0.c.b.b, var_0.d.b.b), u_input.a.x, var_0.a.a.a.x, vec2<bool>(var_0.b, false)).a, var_0.a.b.c, ~u_input.e.x), func_4(var_0.a, -u_input.a.x, _wgslsmith_div_f32(160f, var_0.c.b.b.a.x), !vec2<bool>(var_0.b, false))), _wgslsmith_dot_vec2_i32(vec2<i32>(abs(u_input.b.x), ~u_input.b.x), u_input.a), var_0.d.a.a.a.x, vec2<bool>(-438f == var_0.c.a.a.a.x, select(var_0.b, true, any(vec2<bool>(var_0.b, false))))).a.x));
    global1 = 1u;
    var var_3 = true;
    let var_4 = Struct_5(reverseBits(_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(var_0.a.a.b, 30780u)) ^ global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d, var_0.d.a.b.b), 17u)], ~min(vec2<u32>(u_input.c, u_input.c), vec2<u32>(1903u, var_0.a.b.b)))), ~vec2<u32>(27361u, min(~u_input.e.x, 29940u)), ~_wgslsmith_add_u32(~(~7341u), _wgslsmith_add_u32(u_input.c, abs(var_0.c.a.b.c))), _wgslsmith_f_op_f32(f32(-1f) * -182f), u_input.a.x);
    var_1 = 47069u;
    let x = u_input.a;
    s_output = StorageBuffer(-531f);
}

