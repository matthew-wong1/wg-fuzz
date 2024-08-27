struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: u32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: u32;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> i32 {
    let var_0 = 571f;
    global0 = 0u;
    global0 = 0u;
    global0 = 1u;
    var var_1 = vec4<u32>(~reverseBits(~49038u) >> (1u % 32u), ~(~max(4294967295u, 1u)), reverseBits(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(75029u, 0u), ~vec2<u32>(1u, 1u)), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)))), 4294967295u);
    return u_input.a;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: i32) -> vec3<u32> {
    var var_0 = _wgslsmith_sub_i32(-1i, max(1i | func_3(), -51024i));
    global0 = 0u & ~arg_1.b.c;
    global0 = ~abs(arg_1.a);
    var var_1 = arg_1.b.a.yyz;
    var var_2 = countOneBits(arg_1.b.d.b);
    return _wgslsmith_add_vec3_u32(vec3<u32>(arg_1.a, arg_1.b.e, ~(_wgslsmith_sub_u32(38149u, arg_1.a) >> (1u % 32u))), arg_1.b.b.wyw);
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    let var_0 = ~select(reverseBits(~(~vec3<u32>(26270u, 40480u, 1u))), select(~func_2(arg_0, Struct_3(2957u, Struct_2(vec4<bool>(false, false, false, false), vec4<u32>(31254u, 41676u, 16036u, 9744u), 47308u, Struct_1(false, vec4<i32>(u_input.a, u_input.a, u_input.a, 54827i), vec3<f32>(1519f, 1516f, 811f), vec2<bool>(true, true), vec4<bool>(true, true, true, true)), 4294967295u)), vec3<i32>(u_input.a, u_input.a, arg_0.x), arg_0.x), vec3<u32>(1u, 1u, 1u), vec3<bool>(true, all(vec2<bool>(false, false)), true)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false)), vec3<bool>(true, true, true)));
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-837f, -1079f, 1000f, 755f), vec4<f32>(1248f, 2114f, 869f, -821f), vec4<bool>(true, true, false, false))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(244f, -375f, -512f, 1258f))))))), Struct_3(_wgslsmith_dot_vec2_u32(vec2<u32>(102193u, var_0.x), vec2<u32>(_wgslsmith_sub_u32(var_0.x, 0u), ~var_0.x)), Struct_2(vec4<bool>(true, true, true, true), vec4<u32>(reverseBits(4294967295u), var_0.x, 14005u ^ var_0.x, countOneBits(23145u)), 14364u, Struct_1(true, -vec4<i32>(13586i, arg_0.x, arg_0.x, 2147483647i), _wgslsmith_div_vec3_f32(vec3<f32>(1639f, -501f, 1000f), vec3<f32>(1000f, 519f, -540f)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false))), ~(~var_0.x))), -arg_0, select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(var_0.x != 44936u, all(vec4<bool>(true, true, false, true))), select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)))), vec2<bool>(false, all(vec2<bool>(true, true))), false));
    let var_2 = false;
    var var_3 = Struct_5(var_1, reverseBits(var_1.c) << (~(~(~var_1.b.b.b.zz)) % vec2<u32>(32u)), ~(~var_1.b.b.b));
    var var_4 = true;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    global1 = ~((_wgslsmith_mult_u32(83832u, func_1(vec2<i32>(-1i, var_0))) & (1u << (select(0u, 33985u, false) % 32u))) ^ abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), select(vec3<u32>(65842u, 24486u, 19974u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<bool>(true, true, false)))));
    global0 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(func_2(vec2<i32>(u_input.a, var_0), Struct_3(4294967295u, Struct_2(vec4<bool>(false, true, false, false), vec4<u32>(33720u, 4294967295u, 12040u, 15370u), 4294967295u, Struct_1(false, vec4<i32>(u_input.a, 35406i, u_input.a, var_0), vec3<f32>(-1395f, 774f, -2101f), vec2<bool>(false, true), vec4<bool>(true, true, false, true)), 4294967295u)), vec3<i32>(var_0, u_input.a, -20378i), 1i), ~vec3<u32>(46042u, 1u, 0u)), vec3<u32>(13153u, ~13404u, 1u)) << (1u % 32u), ~_wgslsmith_clamp_u32(abs(4294967295u), max(0u, func_2(vec2<i32>(u_input.a, -2147483647i), Struct_3(62726u, Struct_2(vec4<bool>(false, false, true, true), vec4<u32>(4356u, 1u, 49304u, 58199u), 17549u, Struct_1(true, vec4<i32>(u_input.a, 1i, var_0, -2147483647i), vec3<f32>(207f, 351f, -166f), vec2<bool>(false, true), vec4<bool>(true, true, true, false)), 4294967295u)), vec3<i32>(u_input.a, 14482i, u_input.a), var_0).x), 1u));
    var var_1 = Struct_5(Struct_4(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1160f, 1000f, -947f) - vec4<f32>(101f, 1461f, -1175f, 629f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(925f, 136f, -151f, 778f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-340f, 297f, 192f, -289f), vec4<f32>(-1000f, -1638f, 923f, -1000f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1013f, -1482f, -456f, -768f), vec4<f32>(767f, 1000f, 1146f, 713f), true))))), Struct_3(0u, Struct_2(vec4<bool>(true, true, false, true), ~vec4<u32>(1u, 58742u, 1u, 17516u), 1u, Struct_1(false, vec4<i32>(2147483647i, var_0, var_0, 55745i), vec3<f32>(1121f, -1148f, -1210f), vec2<bool>(true, false), vec4<bool>(true, false, false, false)), 37738u)), vec2<i32>(-818i, u_input.a), vec2<bool>(true, true)), min(vec2<i32>(abs(var_0), var_0), min(~vec2<i32>(var_0, var_0), vec2<i32>(u_input.a, 0i)) ^ vec2<i32>(u_input.a, firstLeadingBit(var_0))), abs(reverseBits(vec4<u32>(1u, 1u, 1u, 1u))));
    global0 = var_1.a.b.a;
    global1 = var_1.a.b.b.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(min(var_1.a.b.b.d.b.zyy, _wgslsmith_mod_vec3_i32(vec3<i32>(0i, var_0, 0i), -vec3<i32>(1i, 48592i, u_input.a))), var_1.a.b.b.d.b.xwz), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, var_1.a.b.b.d.c.x, var_1.a.a.x, 367f))) - vec4<f32>(var_1.a.a.x, _wgslsmith_f_op_f32(-var_1.a.b.b.d.c.x), var_1.a.a.x, var_1.a.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.a.a.x, 1003f, 1049f, var_1.a.b.b.d.c.x)))))), _wgslsmith_sub_u32(var_1.a.b.b.c, firstLeadingBit(1u)));
}

