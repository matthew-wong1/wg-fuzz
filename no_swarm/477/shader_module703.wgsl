struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: i32,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: array<Struct_2, 22>;

var<private> global2: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(Struct_1(vec3<f32>(-664f, -1982f, 1015f), vec4<u32>(1u, 91991u, 11319u, 47170u)), 1052f), Struct_2(Struct_1(vec3<f32>(1000f, 1179f, 532f), vec4<u32>(1833u, 2593u, 1u, 4294967295u)), 371f), Struct_2(Struct_1(vec3<f32>(-272f, 205f, -668f), vec4<u32>(14598u, 4294967295u, 90913u, 46505u)), -854f), Struct_2(Struct_1(vec3<f32>(-763f, 252f, 416f), vec4<u32>(73618u, 73893u, 4294967295u, 1u)), 1368f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> vec3<u32> {
    global0 = array<Struct_1, 7>();
    var var_0 = 19771u;
    let var_1 = _wgslsmith_div_vec3_f32(arg_1.a.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.a.a) - _wgslsmith_f_op_vec3_f32(abs(arg_1.a.a))));
    var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(45634u, arg_1.a.b.x, 0u) << (arg_1.a.b.yzy % vec3<u32>(32u)), ~(~max(~vec3<u32>(0u, 55844u, arg_1.a.b.x), ~arg_1.a.b.www)));
    global0 = array<Struct_1, 7>();
    return _wgslsmith_mod_vec3_u32(abs(arg_1.a.b.wyz), ~(~vec3<u32>(~1u, ~6251u, _wgslsmith_mod_u32(1u, arg_1.a.b.x))));
}

fn func_2(arg_0: vec3<u32>, arg_1: f32) -> Struct_3 {
    var var_0 = all(vec2<bool>(true, all(vec3<bool>(true, true, true))));
    var var_1 = vec4<f32>(1092f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + arg_1), 1692f, arg_1);
    let var_2 = ~select(~(~arg_0), func_3(any(vec4<bool>(false, false, false, false)), global2[_wgslsmith_index_u32(4294967295u, 4u)]) << (vec3<u32>(1856u | arg_0.x, arg_0.x << (47941u % 32u), 4294967295u) % vec3<u32>(32u)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(true, true, false)), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false))));
    global2 = array<Struct_2, 4>();
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1532f, -1726f), -109f, _wgslsmith_f_op_f32(ceil(arg_1)))), _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(arg_0.x, 151236u, 19360u, var_2.x)) >> ((vec4<u32>(arg_0.x, 20918u, arg_0.x, 0u) | vec4<u32>(arg_0.x, var_2.x, var_2.x, 4294967295u)) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(abs(vec4<u32>(var_2.x, 45824u, 5527u, var_2.x)), select(vec4<u32>(arg_0.x, 2436u, arg_0.x, 1u), vec4<u32>(arg_0.x, arg_0.x, var_2.x, var_2.x), true)))), 623f);
    return Struct_3(~(~5968u), global1[_wgslsmith_index_u32(var_3.a.b.x, 22u)], -1i, select(~34136u, 1u, _wgslsmith_div_u32(36804u, ~var_3.a.b.x) <= 1u), global1[_wgslsmith_index_u32(58340u, 22u)]);
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_3 {
    global2 = array<Struct_2, 4>();
    var var_0 = vec3<bool>(true, !(!(arg_0 < arg_0) | true), true);
    global2 = array<Struct_2, 4>();
    global2 = array<Struct_2, 4>();
    var_0 = !(!vec3<bool>(var_0.x, all(vec3<bool>(true, true, true)), true));
    return func_2(~(~(~(~vec3<u32>(arg_0, arg_0, 1u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = !(!any(vec3<bool>(true, true, true)));
    var var_1 = func_2(~(~select(~arg_2.b.yyw, vec3<u32>(23207u, arg_1.a.b.x, 1u), vec3<bool>(false, false, true))), _wgslsmith_div_f32(-1000f, -1083f));
    let var_2 = func_2(arg_0.b.a.b.yzw, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-569f + -122f)))))).e.a;
    global2 = array<Struct_2, 4>();
    return arg_3.a.x;
}

fn func_5(arg_0: f32) -> Struct_3 {
    var var_0 = func_1(_wgslsmith_dot_vec2_u32(~vec2<u32>(~66410u, 4294967295u), ~(~min(vec2<u32>(33340u, 1u), vec2<u32>(17413u, 0u)))), arg_0);
    let var_1 = select(~var_0.b.a.b.x, ~13824u, !(arg_0 >= func_2(vec3<u32>(var_0.e.a.b.x, var_0.d, var_0.a), _wgslsmith_f_op_f32(var_0.e.a.a.x + 311f)).e.a.a.x));
    let var_2 = func_2(vec3<u32>(~var_1, var_1, 70696u), _wgslsmith_f_op_f32(1233f - _wgslsmith_f_op_f32(min(2130f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.a.a.x * -583f)))))).e;
    let var_3 = -209f;
    var var_4 = global2[_wgslsmith_index_u32(var_2.a.b.x, 4u)];
    return func_1(func_2(~select(~vec3<u32>(var_1, var_4.a.b.x, 31598u), var_4.a.b.xxx >> (vec3<u32>(67996u, var_2.a.b.x, 0u) % vec3<u32>(32u)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.e.a.a.x), _wgslsmith_f_op_f32(ceil(-1179f))))).b.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -179f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(func_1(1u, _wgslsmith_f_op_f32(710f - -704f)), Struct_2(global0[_wgslsmith_index_u32(func_1(0u, -316f).b.a.b.x, 7u)], -1078f), Struct_1(func_1(1u, 1273f).b.a.a, vec4<u32>(17291u, 23566u, 0u, 1u)), global0[_wgslsmith_index_u32(func_2(~vec3<u32>(1u, 1u, 33372u), _wgslsmith_div_f32(381f, 2259f)).d, 7u)])), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-895f + func_1(4294967295u, -2098f).e.b))))));
    var var_1 = func_1(func_5(var_0.e.a.a.x).e.a.b.x, -1632f).e;
    global1 = array<Struct_2, 22>();
    let var_2 = var_0.e;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_0.c, var_0.c, firstLeadingBit(_wgslsmith_mult_i32(0i, func_2(vec3<u32>(118232u, 11736u, 37663u), 690f).c))));
}

