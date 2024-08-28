struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: u32,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 12>;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(i32(-2147483648)), Struct_1(-8263i), Struct_1(2147483647i), Struct_1(i32(-2147483648)), Struct_1(45416i), Struct_1(1i), Struct_1(-1i), Struct_1(26787i), Struct_1(1i), Struct_1(18146i), Struct_1(15020i), Struct_1(45367i), Struct_1(1i), Struct_1(354i), Struct_1(2147483647i), Struct_1(-44505i), Struct_1(-27945i), Struct_1(i32(-2147483648)), Struct_1(-33460i), Struct_1(47002i), Struct_1(-3408i), Struct_1(46154i), Struct_1(2147483647i), Struct_1(9883i), Struct_1(i32(-2147483648)), Struct_1(0i), Struct_1(0i));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: f32, arg_3: vec3<i32>) -> f32 {
    let var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~0u, abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(71227u, 5411u, 4992u), vec3<u32>(1u, 86154u, 38977u))), 60030u), ~(select(vec3<u32>(1u, 2089u, 1u), ~vec3<u32>(7700u, 34360u, 0u), all(vec3<bool>(true, true, false))) | vec3<u32>(4294967295u, min(6611u, 245u), ~0u)), _wgslsmith_mod_vec3_u32(select(~vec3<u32>(1u, 1u, 1u), vec3<u32>(~1u, 1u, ~1u), true), max(select(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(60343u, 13725u, 4363u), false), vec3<u32>(1u, 4294967295u, countOneBits(8163u)))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(806f - arg_2)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + 1857f)))), !(!all(vec2<bool>(true, true)))));
}

fn func_2() -> Struct_4 {
    global1 = array<Struct_1, 27>();
    global0 = array<vec2<f32>, 12>();
    global0 = array<vec2<f32>, 12>();
    let var_0 = Struct_3(abs(u_input.a.x) ^ u_input.a.x);
    global0 = array<vec2<f32>, 12>();
    return Struct_4(Struct_2(global1[_wgslsmith_index_u32(~0u, 27u)]), vec2<i32>(firstTrailingBit(var_0.a & u_input.a.x), _wgslsmith_mult_i32(var_0.a | var_0.a, _wgslsmith_clamp_i32(u_input.a.x, 48698i, var_0.a))) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), ~min(18862u, reverseBits(1u)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-1000f, Struct_3(var_0.a), 871f, vec3<i32>(u_input.a.x, var_0.a, var_0.a)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1540f - -1550f) * _wgslsmith_f_op_f32(-784f * 355f))), -829f, _wgslsmith_f_op_f32(func_3(-526f, var_0, 914f, _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, 23510i) | vec3<i32>(u_input.a.x, u_input.a.x, var_0.a), vec3<i32>(-28815i, var_0.a, 0i) >> (vec3<u32>(27215u, 1u, 18205u) % vec3<u32>(32u)))))), _wgslsmith_sub_vec3_i32(countOneBits(select(~vec3<i32>(12886i, 27165i, var_0.a), ~vec3<i32>(-1i, var_0.a, 0i), vec3<bool>(true, true, true))), vec3<i32>(1i, -var_0.a, -_wgslsmith_sub_i32(u_input.a.x, 52660i))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_3(1i);
    let var_1 = func_2();
    global1 = array<Struct_1, 27>();
    var var_2 = all(vec3<bool>(any(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, true)), !all(vec2<bool>(false, true)) & true));
    var_2 = true;
    return Struct_1(u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_mult_u32(1u, 1u) >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(~6659u, countOneBits(1u), _wgslsmith_clamp_u32(4850u, 4294967295u, 46248u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(6717u, 37025u, 96096u), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 92686u), vec3<u32>(1u, 42739u, 4294967295u), vec3<u32>(48256u, 4294967295u, 0u)), vec3<u32>(1u, 1u, 1u))) % 32u);
    var var_2 = 1u;
    var_2 = reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, var_1, ~81581u, var_1) >> (select(vec4<u32>(var_1, 4294967295u, var_1, 42710u) >> (vec4<u32>(var_1, 31591u, var_1, 0u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 104484u, var_1, var_1), vec4<u32>(23170u, 78385u, var_1, var_1)), true) % vec4<u32>(32u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_1, 4294967295u, 20907u, 4294967295u), vec4<u32>(17287u, var_1, 538u, 1u))));
    var_2 = 1u;
    var var_3 = Struct_4(func_2().a, firstTrailingBit(func_2().e.yx), _wgslsmith_mult_u32(var_1, abs(~countOneBits(48887u))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -669f)))), _wgslsmith_f_op_f32(-424f + -2599f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1199f * -803f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-175f + -539f), _wgslsmith_f_op_f32(-2775f - 574f), false)))), _wgslsmith_mult_vec3_i32(~(-vec3<i32>(1i, var_0.a, var_0.a)) & vec3<i32>(u_input.a.x, _wgslsmith_div_i32(u_input.a.x, 1i), _wgslsmith_clamp_i32(23940i, -66235i, 9015i)), -(~(vec3<i32>(-2147483647i, u_input.a.x, var_0.a) << (vec3<u32>(var_1, var_1, 14783u) % vec3<u32>(32u))))));
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_3.d.x, var_3.d.x), ~_wgslsmith_sub_u32(var_3.c, 42330u), ~(_wgslsmith_dot_vec3_i32(~vec3<i32>(-57772i, u_input.a.x, -2147483647i), ~vec3<i32>(-37124i, u_input.a.x, 24821i)) << (_wgslsmith_sub_u32(1u, _wgslsmith_sub_u32(var_1, 6138u)) % 32u)), _wgslsmith_mult_u32(select(~var_1, reverseBits(var_3.c), true), ~var_3.c) << (0u % 32u), 4294967295u);
}

