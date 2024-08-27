struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec3<f32>, arg_3: Struct_3) -> bool {
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    let var_0 = Struct_3(Struct_2(select(arg_3.a.a, !arg_3.a.a, !(!arg_3.a.a)), (vec4<i32>(-1i) * -vec4<i32>(1i, -1i, u_input.a.x, -2147483647i)) & vec4<i32>(1i, _wgslsmith_clamp_i32(2147483647i, 5522i, u_input.a.x), -arg_3.a.b.x, _wgslsmith_mod_i32(u_input.a.x, arg_3.a.b.x)), 407f));
    var var_1 = abs(-(arg_3.a.b.x & 2147483647i) & -20168i) ^ -u_input.a.x;
    return true;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), _wgslsmith_div_vec4_i32(-(~vec4<i32>(-22358i, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x), firstTrailingBit(countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -96325i))), reverseBits(-vec4<i32>(43215i, u_input.a.x, -2147483647i, u_input.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1699f + 1846f)), _wgslsmith_div_f32(-2279f, _wgslsmith_f_op_f32(f32(-1f) * -231f))))));
    let var_1 = var_0.a;
    let var_2 = select(~(~vec4<u32>(72849u, 28433u, 1u, 0u) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), ~vec4<u32>(1u, 0u, ~0u, 1u), select(any(select(var_1.yz, var_1.yx, var_1.zy)), func_3(0i < var_0.b.x, var_0.c, vec3<f32>(-1367f, var_0.c, 197f), Struct_3(var_0)), any(var_1))) << (vec4<u32>(1u, _wgslsmith_add_u32(1u, ~_wgslsmith_sub_u32(4294967295u, 0u)), abs(2808u), ~4294967295u) % vec4<u32>(32u));
    var var_3 = _wgslsmith_mod_vec2_i32(countOneBits(-countOneBits(var_0.b.xw)), -vec2<i32>(var_0.b.x, ~u_input.a.x));
    let var_4 = firstLeadingBit(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(0u, var_2.x, ~38342u, _wgslsmith_dot_vec3_u32(vec3<u32>(25089u, var_2.x, var_2.x), var_2.wzx))), ~max(~var_2, firstLeadingBit(vec4<u32>(var_2.x, 0u, 0u, 1u)))));
    return var_0;
}

fn func_1() -> Struct_3 {
    var var_0 = -21280i;
    let var_1 = func_2();
    return Struct_3(func_2());
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 19>();
    let var_0 = func_1();
    global0 = array<Struct_1, 19>();
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(min(311f, 1270f)), _wgslsmith_f_op_f32(floor(-772f)), _wgslsmith_f_op_f32(-var_0.a.c), _wgslsmith_f_op_f32(max(891f, var_0.a.c))), vec4<f32>(var_0.a.c, 1336f, 503f, -1000f))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(sign(func_2().c)), var_0.a.c, 983f, var_0.a.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(385f, var_0.a.c, var_0.a.c, var_0.a.c) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.c, var_0.a.c, var_0.a.c, var_0.a.c)))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, 1300f, var_1.x, 1462f))) - _wgslsmith_f_op_vec4_f32(-var_1))) + _wgslsmith_f_op_vec4_f32(-var_1)) + _wgslsmith_div_vec4_f32(var_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(656f, var_0.a.c, 2608f, 947f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a.c, 557f, 1494f, 2010f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_1))))));
    let var_3 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 86466u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 1u)), ~vec2<u32>(44567u, 0u)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(37086u, 1u, 24144u, 34259u), select(vec4<u32>(12240u, 9071u, 69033u, 1u), vec4<u32>(0u, 7968u, 4294967295u, 4672u), var_0.a.a.x)), ~62787u, _wgslsmith_dot_vec2_u32(vec2<u32>(60837u, 735u), vec2<u32>(55672u, 0u)))), _wgslsmith_f_op_vec3_f32(-var_1.ywx), abs(~min(vec3<i32>(-2398i, 2147483647i, u_input.a.x), var_0.a.b.zwy)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 41251u), vec2<u32>(67197u, 75056u)), ~4294967295u, 1u), ~max(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(11556u, 123253u, 0u))) % vec3<u32>(32u)), _wgslsmith_dot_vec3_u32(~reverseBits(~vec3<u32>(12932u, 0u, 1u)), select(min(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 58649u, 93362u), vec3<u32>(4294967295u, 4294967295u, 1u)), vec3<u32>(1u, 1u, 1u)), ~vec3<u32>(1u, 1u, 1u), func_1().a.a)));
}

