struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_2;

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: f32, arg_1: vec4<u32>) -> Struct_2 {
    var var_0 = 4294967295u;
    let var_1 = ~(-vec2<i32>(u_input.d.x << (4294967295u % 32u), _wgslsmith_mod_i32(min(-42417i, u_input.a.x), _wgslsmith_div_i32(u_input.a.x, u_input.d.x))));
    var_0 = ~reverseBits(~1u);
    let var_2 = global1.d;
    let var_3 = Struct_2(arg_1.x, global1.d, Struct_1(_wgslsmith_f_op_vec2_f32(abs(var_2.a))), Struct_1(var_2.a));
    return Struct_2(~abs(max(~var_3.a, u_input.b)), global1.d, Struct_1(_wgslsmith_f_op_vec2_f32(select(global2.a, vec2<f32>(-297f, _wgslsmith_f_op_f32(-181f * arg_0)), true != all(vec3<bool>(true, true, true))))), var_3.c);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: Struct_2) -> Struct_1 {
    return global1.b;
}

fn func_1() -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-867f, global1.b.a.x) + _wgslsmith_f_op_vec2_f32(-global1.d.a)) - global2.a), _wgslsmith_f_op_vec2_f32(-global1.d.a))));
    var var_1 = all(vec4<bool>(countOneBits(1i) < u_input.a.x, true, _wgslsmith_mod_i32(u_input.c.x | 21087i, 51740i) < u_input.c.x, !all(vec2<bool>(true, false))));
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.a.x) - _wgslsmith_f_op_f32(trunc(-173f))), var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -622f) + _wgslsmith_f_op_f32(max(global1.c.a.x, global1.b.a.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - -587f), _wgslsmith_f_op_f32(f32(-1f) * -1676f))))));
    global1 = Struct_2(~(u_input.b | _wgslsmith_mod_u32(u_input.b, 8152u)) ^ _wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(global1.a, 4294967295u, global1.a)), vec3<u32>(~0u, 60261u, global1.a | global1.a)), Struct_1(global2.a), func_3(vec3<bool>(true, any(vec3<bool>(false, true, true)), false), vec3<u32>(11371u, 0u, _wgslsmith_mod_u32(7662u, ~64016u)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.x))), vec4<u32>(reverseBits(u_input.b), ~u_input.b, ~3212u, global1.a))), var_0);
    let var_3 = var_2.x;
    return 1i;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: i32) -> Struct_1 {
    let var_0 = vec3<bool>(all(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true)), false, !any(vec2<bool>(false, false)));
    global2 = func_2(_wgslsmith_f_op_f32(floor(arg_2.d.a.x)), vec4<u32>(u_input.b, ~(_wgslsmith_sub_u32(arg_2.a, u_input.b) << (_wgslsmith_dot_vec4_u32(vec4<u32>(16501u, 1u, 14300u, u_input.b), vec4<u32>(29970u, 1u, global1.a, 1u)) % 32u)), ~42334u, select(arg_2.a, 33737u, true))).b;
    let var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(var_1.a)))));
    let var_3 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~reverseBits(reverseBits(vec3<u32>(u_input.b, 69513u, arg_2.a))), vec3<u32>(4324u, arg_2.a, min(arg_2.a, firstTrailingBit(6394u)))), select(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, ~4110u, u_input.b >> (u_input.b % 32u)), vec3<u32>(select(u_input.b, arg_2.a, true), ~arg_2.a, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, arg_2.a, u_input.b), ~vec3<u32>(u_input.b, 65040u, arg_2.a))), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(arg_2.a, arg_2.a, 45957u), ~vec3<u32>(0u, 1u, arg_2.a)), reverseBits(vec3<u32>(42500u, 0u, 62860u))), select(!select(vec3<bool>(true, true, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0), var_0, any(!vec4<bool>(var_0.x, false, true, true)))));
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1321f, 267f)), ~((~vec4<u32>(40176u, 36318u, arg_2.a, 0u) >> (_wgslsmith_add_vec4_u32(vec4<u32>(0u, var_3, 42469u, arg_2.a), vec4<u32>(u_input.b, u_input.b, var_3, 4294967295u)) % vec4<u32>(32u))) ^ max(firstLeadingBit(vec4<u32>(5417u, u_input.b, 79310u, 0u)), countOneBits(vec4<u32>(global1.a, global1.a, var_3, global1.a))))).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(4294967295u, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(global2.a.x, global1.c.a.x, true)), _wgslsmith_f_op_f32(1663f - global1.b.a.x)) - global1.d.a)), func_4(func_1(), func_3(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), all(vec4<bool>(false, false, false, true))), select(select(vec3<u32>(u_input.b, u_input.b, global1.a), vec3<u32>(u_input.b, global1.a, 0u), false), ~vec3<u32>(46218u, global1.a, u_input.b), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), Struct_2(abs(u_input.b), func_2(430f, vec4<u32>(39085u, 1u, u_input.b, u_input.b)).b, Struct_1(vec2<f32>(683f, global1.c.a.x)), func_2(global1.d.a.x, vec4<u32>(47484u, 1u, 1u, 4294967295u)).d)), func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.c.a.x))), reverseBits(~vec4<u32>(u_input.b, 35728u, 14794u, 5406u))), _wgslsmith_dot_vec3_i32(~(-u_input.c.zwz), ~countOneBits(u_input.c.yzz))), global1.b);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -834f))), -164f));
    global1 = func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1499f * -411f)), _wgslsmith_f_op_f32(-func_4(u_input.a.x, var_0.d, Struct_2(108094u, Struct_1(vec2<f32>(-149f, 726f)), Struct_1(vec2<f32>(global2.a.x, var_0.c.a.x)), var_0.d), 67335i).a.x)))), ~abs((vec4<u32>(66329u, var_0.a, u_input.b, global1.a) << (vec4<u32>(34910u, 4571u, var_0.a, global1.a) % vec4<u32>(32u))) ^ countOneBits(vec4<u32>(var_0.a, 38674u, 1u, 1u))));
    let var_2 = func_2(-1270f, vec4<u32>(abs(~4294967295u), _wgslsmith_sub_u32(1u, ~var_0.a), var_0.a, ~0u) << (min(~_wgslsmith_clamp_vec4_u32(vec4<u32>(117898u, 57244u, 44524u, u_input.b), vec4<u32>(var_0.a, u_input.b, global1.a, 1u), vec4<u32>(u_input.b, global1.a, global1.a, var_0.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(4394u, 203u, u_input.b, 69226u), vec4<u32>(68097u, 4294967295u, 96131u, 13587u)) & ~vec4<u32>(u_input.b, var_0.a, 10325u, var_0.a)) % vec4<u32>(32u)));
    let var_3 = func_2(_wgslsmith_f_op_f32(abs(405f)), _wgslsmith_mult_vec4_u32(reverseBits(~select(vec4<u32>(378u, 4294967295u, 4294967295u, 0u), vec4<u32>(global1.a, var_2.a, 33110u, var_0.a), false)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.a >> (0u % 32u), max(1u, 4294967295u), global1.a, global1.a), vec4<u32>(var_2.a ^ 5145u, 1u, ~0u, global1.a))));
    let var_4 = ~var_2.a;
    global1 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1263f) * _wgslsmith_f_op_f32(463f - global1.b.a.x)), ~vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(49892u, 43696u), vec2<u32>(var_4, u_input.b), vec2<u32>(1u, 0u)), abs(vec2<u32>(global1.a, 1u))), ~(~var_0.a), 22905u, select(var_2.a, reverseBits(74336u), all(vec3<bool>(false, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(~reverseBits(46914u), var_0.a, 1u), ~0u);
}

