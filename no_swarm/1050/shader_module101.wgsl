struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-12456i, vec3<u32>(1u, 4294967295u, 4294967295u), 25732u, i32(-2147483648), 30156i);

var<private> global1: array<vec4<u32>, 19> = array<vec4<u32>, 19>(vec4<u32>(4294967295u, 1u, 42257u, 102659u), vec4<u32>(36451u, 73344u, 6861u, 15241u), vec4<u32>(20910u, 46555u, 4294967295u, 44890u), vec4<u32>(1u, 56104u, 4294967295u, 10616u), vec4<u32>(4294967295u, 20960u, 1u, 13980u), vec4<u32>(22688u, 1u, 4294967295u, 1u), vec4<u32>(9986u, 40640u, 35631u, 21559u), vec4<u32>(98273u, 41709u, 1u, 4294967295u), vec4<u32>(46882u, 16572u, 0u, 17331u), vec4<u32>(4294967295u, 84136u, 4294967295u, 17478u), vec4<u32>(1u, 0u, 115920u, 0u), vec4<u32>(1u, 0u, 1u, 42379u), vec4<u32>(28320u, 0u, 65190u, 1u), vec4<u32>(0u, 45292u, 31920u, 123558u), vec4<u32>(1184u, 84136u, 4294967295u, 0u), vec4<u32>(689u, 29304u, 23001u, 4294967295u), vec4<u32>(23367u, 1u, 22707u, 23025u), vec4<u32>(92453u, 1u, 0u, 26697u), vec4<u32>(3847u, 30084u, 1264u, 4294967295u));

var<private> global2: f32;

var<private> global3: Struct_1;

var<private> global4: Struct_1 = Struct_1(3202i, vec3<u32>(1u, 1u, 4522u), 0u, 1i, 29581i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: f32) -> vec2<u32> {
    global2 = _wgslsmith_f_op_f32(ceil(477f));
    global3 = Struct_1(-13080i, vec3<u32>(countOneBits(global3.c), ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(global3.c, 52186u, global4.c), 24852u), abs(_wgslsmith_clamp_u32(4294967295u, 55708u | global0.c, firstLeadingBit(global0.b.x)))), global3.c, ~(-max(global3.e & 11926i, _wgslsmith_sub_i32(-51575i, global0.d))), u_input.a.x);
    global3 = arg_1;
    global4 = arg_1;
    var var_0 = arg_1;
    return ~arg_1.b.yz << (_wgslsmith_sub_vec2_u32(select(global4.b.zx, _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.c, 0u), global0.b.yy), select(vec2<u32>(87121u, global0.b.x), vec2<u32>(arg_1.b.x, global3.b.x), true)), select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(false, true), true)), ~global3.b.yx) % vec2<u32>(32u));
}

fn func_2() -> Struct_1 {
    global4 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_div_i32(0i, _wgslsmith_mult_i32(global3.a, global4.e & 0i)), ~(global3.e ^ ~2147483647i)), (vec3<u32>(global4.c, ~global4.c, ~7417u) | _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(12926u, global4.c, 90655u), vec3<u32>(0u, global3.c, 1u), global3.b), global3.b)) & _wgslsmith_clamp_vec3_u32(vec3<u32>(min(global3.c, global3.b.x), ~46750u, 49252u >> (global4.c % 32u)), abs(~vec3<u32>(global3.c, global0.b.x, 69932u)), global0.b), 1u, -_wgslsmith_add_i32(2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 0i, 2147483647i, u_input.a.x), vec4<i32>(global4.a, -9542i, -4822i, global0.e)), vec4<i32>(u_input.a.x, 1i, 23684i, 524i) | vec4<i32>(1i, global0.d, 7712i, 1i))), global3.e);
    let var_0 = _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(_wgslsmith_clamp_i32(global0.e, 33980i, 239i), _wgslsmith_add_i32(global0.e, -10008i), min(-1i, global3.d), ~7599i) | ~vec4<i32>(22561i, global3.e, 17318i, global4.a)), vec4<i32>(_wgslsmith_sub_i32(~_wgslsmith_sub_i32(-125i, 8171i), _wgslsmith_sub_i32(-global3.a, abs(global4.d))), _wgslsmith_div_i32(1i, ~(~u_input.a.x)), firstLeadingBit(global0.d), -2147483647i));
    let var_1 = ~func_3(global4.e, Struct_1(~u_input.a.x, vec3<u32>(global4.c, 0u, 4294967295u) | vec3<u32>(global3.c, global0.b.x, 0u), 18782u, 1i, -(~var_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2068f), _wgslsmith_f_op_f32(select(1000f, -801f, true)), _wgslsmith_f_op_f32(f32(-1f) * -364f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(122f * -713f)));
    global2 = -2089f;
    var var_2 = 0u;
    return Struct_1(_wgslsmith_sub_i32(abs(var_0), 4982i), global3.b, _wgslsmith_mult_u32(~global0.c, 1u), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-26134i, -2147483647i), -firstLeadingBit(_wgslsmith_sub_i32(19235i, -69446i))), var_0 | var_0);
}

fn func_1() -> u32 {
    var var_0 = func_2();
    var var_1 = vec3<i32>(firstTrailingBit(~1i), -23319i, _wgslsmith_mult_i32(1i, -_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(33352i, var_0.d)), -vec2<i32>(global0.e, var_0.e))));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(427f, 1260f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-157f, 1857f) * vec2<f32>(222f, 517f))), vec2<bool>(true, true))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1560f, 298f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)));
    global3 = Struct_1(~2147483647i >> (1u % 32u), var_0.b, global0.c, abs(1i), 1i);
    let var_3 = ~vec4<i32>(_wgslsmith_div_i32(var_1.x, firstTrailingBit(global3.a) >> (var_0.c % 32u)), func_2().a << (_wgslsmith_dot_vec4_u32(vec4<u32>(global0.c, global3.b.x, global0.b.x, 25407u), vec4<u32>(12528u, 47344u, global3.b.x, 4294967295u)) % 32u), _wgslsmith_dot_vec2_i32(select(_wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(-19331i, global0.a)), ~var_1.xy, false), abs(-vec2<i32>(global3.e, global3.e))), global0.d);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-38267i, _wgslsmith_sub_vec3_u32(global4.b, select(vec3<u32>(global3.c, ~51466u, select(4294967295u, 0u, true)), ~global4.b, vec3<bool>(true, true, true))), _wgslsmith_dot_vec2_u32(vec2<u32>(~func_1(), ~(~11797u)), vec2<u32>(~(~1u), global3.c)), _wgslsmith_dot_vec3_i32(vec3<i32>(~(~global0.a), global0.a, 1i), vec3<i32>(_wgslsmith_clamp_i32(i32(-1i) * -31139i, global4.a & -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.d, 2147483647i, 0i), vec3<i32>(1i, -9456i, global0.a))), 13623i, -82295i)), ((i32(-1i) * -1i) << ((~1u << (global3.c % 32u)) % 32u)) & _wgslsmith_mult_i32(-30752i, -1i));
    let var_1 = firstTrailingBit(global3.a);
    let var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(max(select(vec3<i32>(var_1, var_1, u_input.a.x), vec3<i32>(global4.e, -31811i, global3.e), vec3<bool>(false, true, true)), vec3<i32>(var_0.e, var_0.d, -48538i) ^ vec3<i32>(-7120i, 1i, 2147483647i)), -vec3<i32>(-68128i, 0i, global0.e)) << (~func_2().b % vec3<u32>(32u)), vec3<i32>(_wgslsmith_dot_vec2_i32(reverseBits(u_input.a), u_input.a), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.d, 1i), u_input.a), ~u_input.a) & -abs(u_input.a.x), var_0.a));
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2095f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1033f))))) * 1000f), _wgslsmith_div_f32(-857f, 437f), true == ((true && all(vec3<bool>(true, true, false))) && all(vec2<bool>(false, true)))));
    var var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_2, -39505i, -2147483647i, -20173i), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_3, -576f, var_3)))) + vec3<f32>(_wgslsmith_f_op_f32(floor(var_3)), var_3, _wgslsmith_f_op_f32(f32(-1f) * -671f))))), vec3<u32>(~min(38056u, var_0.c) | (select(1u, var_4.c, true) | var_4.c), _wgslsmith_sub_u32(func_2().b.x, 1u), _wgslsmith_sub_u32(~(var_0.b.x ^ global3.b.x), ~0u)), vec2<i32>(global3.e, countOneBits(var_0.e)), global3.e);
}

