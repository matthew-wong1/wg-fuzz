struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
    c: Struct_3,
    d: Struct_3,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

var<private> global1: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(1i, vec4<f32>(-1205f, 1143f, 229f, 202f)), Struct_1(2147483647i, vec4<f32>(-2479f, 1488f, 204f, 354f)), Struct_1(966i, vec4<f32>(-1328f, -667f, -460f, -129f)), Struct_1(-37784i, vec4<f32>(168f, -337f, 638f, 290f)), Struct_1(285i, vec4<f32>(-454f, -442f, 874f, -1001f)), Struct_1(1i, vec4<f32>(-1000f, -1273f, -1000f, 1326f)), Struct_1(i32(-2147483648), vec4<f32>(-419f, 677f, 1000f, 2121f)));

var<private> global2: vec4<u32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec4<i32> {
    let var_0 = 1u;
    var var_1 = 61660i & ~u_input.d.x;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-394f - _wgslsmith_f_op_f32(ceil(1215f))))) * 1472f) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-724f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(411f - -936f)))));
    let var_3 = vec2<u32>(var_0, ~83385u);
    let var_4 = vec2<i32>(-1i, 12838i);
    return -abs(countOneBits(abs(vec4<i32>(-55274i, 1i, var_4.x, 1i))) << (firstTrailingBit(vec4<u32>(22106u, var_0, var_3.x, var_0)) % vec4<u32>(32u)));
}

fn func_2(arg_0: bool, arg_1: bool) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a, 27u)];
    let var_1 = _wgslsmith_mod_vec4_i32(select(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.d.x, u_input.b, 1i, 20579i), -vec4<i32>(u_input.d.x, -23914i, -2147483647i, 36252i)), func_3(), true), vec4<i32>(u_input.b, ~(-2147483647i), select(60374i ^ u_input.b, abs(-2147483647i), select(arg_0, arg_0, arg_1)) | 1i, u_input.b));
    let var_2 = global1[_wgslsmith_index_u32(~(~28380u), 7u)];
    var var_3 = vec2<u32>(global2.x, ~global2.x);
    let var_4 = Struct_2(vec4<u32>(var_0.a.x, var_3.x, ~var_0.a.x, ~_wgslsmith_sub_u32(34000u, u_input.c) ^ max(_wgslsmith_add_u32(global2.x, 28496u), _wgslsmith_sub_u32(var_0.a.x, 31852u))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.b.x)));
}

fn func_1(arg_0: f32, arg_1: u32) -> Struct_3 {
    global0 = array<Struct_2, 27>();
    var var_0 = _wgslsmith_f_op_f32(max(1582f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - 363f) - arg_0)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -504f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1529f + -971f), _wgslsmith_f_op_f32(func_2(true, true))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -665f)), -692f))));
    var var_2 = global1[_wgslsmith_index_u32(~global2.x, 7u)];
    var var_3 = Struct_1(_wgslsmith_add_i32(_wgslsmith_sub_i32(var_2.a, ~_wgslsmith_div_i32(var_2.a, 1i)), select(countOneBits(u_input.d.x), 1i, any(vec2<bool>(true, true)))), var_2.b);
    return Struct_3(-(vec4<i32>(var_2.a | var_2.a, var_3.a, _wgslsmith_mod_i32(var_3.a, -2147483647i), u_input.b) & ~(vec4<i32>(1i, var_2.a, u_input.b, u_input.d.x) & vec4<i32>(u_input.d.x, u_input.b, -25009i, var_2.a))), var_3.b.x);
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_4, arg_3: i32) -> Struct_4 {
    let var_0 = arg_2;
    global0 = array<Struct_2, 27>();
    let var_1 = 43379u;
    let var_2 = Struct_1(-2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-896f, -1000f, _wgslsmith_f_op_f32(826f * -749f), _wgslsmith_div_f32(arg_1, 408f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1, arg_1, -468f, arg_1), vec4<f32>(var_0.d.b, 320f, 1555f, arg_1))))));
    var var_3 = Struct_1(~var_2.a, vec4<f32>(var_2.b.x, _wgslsmith_f_op_f32(arg_2.d.b * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_0.c.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1, 2041f, arg_2.a)) + _wgslsmith_f_op_f32(-arg_1)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -716f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1574f, arg_2.d.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1568f + arg_2.d.b)))));
    return var_0;
}

fn func_5(arg_0: bool, arg_1: Struct_4) -> u32 {
    var var_0 = ~4294967295u >> (~(4294967295u << (global2.x % 32u)) % 32u);
    var var_1 = arg_0;
    var var_2 = func_4(arg_1.c.a.x, _wgslsmith_f_op_f32(-func_4(1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.b - arg_1.d.b)), Struct_4(!arg_0, _wgslsmith_mod_vec4_u32(arg_1.b, vec4<u32>(arg_1.b.x, u_input.c, global2.x, 57538u)), Struct_3(vec4<i32>(arg_1.c.a.x, u_input.d.x, u_input.b, -31072i), -1234f), arg_1.d, arg_0), _wgslsmith_mod_i32(-2147483647i, arg_1.d.a.x ^ arg_1.d.a.x)).d.b), func_4(~13876i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.c.b, 884f) + 1000f) + func_1(_wgslsmith_f_op_f32(-arg_1.d.b), arg_1.b.x).b), Struct_4(true, arg_1.b, arg_1.d, Struct_3(min(arg_1.d.a, arg_1.c.a), 643f), false), u_input.b), abs(-22485i));
    var var_3 = true || var_2.e;
    global1 = array<Struct_1, 7>();
    return ~(~(~arg_1.b.x) << (reverseBits(34278u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(u_input.d, vec3<i32>(~u_input.d.x, 0i, ~27387i)) | (vec3<i32>(u_input.d.x, 10015i, ~u_input.d.x) ^ reverseBits(u_input.d)), vec3<i32>(-2302i, abs(_wgslsmith_div_i32(u_input.d.x, u_input.d.x)), _wgslsmith_mod_i32(u_input.b ^ 0i, 1i & u_input.b)) | ~vec3<i32>(u_input.b, i32(-1i) * -80849i, min(u_input.d.x, u_input.d.x)));
    global1 = array<Struct_1, 7>();
    global2 = _wgslsmith_sub_vec4_u32(vec4<u32>(0u, _wgslsmith_sub_u32(_wgslsmith_div_u32(1u, ~global2.x), _wgslsmith_mod_u32(~42188u, 1u)), ~_wgslsmith_div_u32(global2.x, 165021u) >> (85829u % 32u), 1197u >> (_wgslsmith_mult_u32(21664u, u_input.a) % 32u)), ~_wgslsmith_div_vec4_u32(min(abs(vec4<u32>(u_input.c, u_input.a, u_input.a, global2.x)), max(vec4<u32>(15274u, 35130u, u_input.c, global2.x), vec4<u32>(1u, 48246u, u_input.a, 28136u))), _wgslsmith_div_vec4_u32(select(vec4<u32>(4294967295u, 3733u, 4294967295u, 0u), vec4<u32>(4294967295u, u_input.c, u_input.a, u_input.a), vec4<bool>(true, true, true, true)), vec4<u32>(global2.x, 64124u, u_input.a, 39514u) & vec4<u32>(u_input.c, u_input.c, u_input.a, 0u))));
    global2 = vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, _wgslsmith_mod_u32(global2.x, ~41433u)), global2.xy), ~(~_wgslsmith_add_u32(global2.x ^ global2.x, global2.x)), func_5(false, func_4(-(~(-64994i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1175f + 1783f) - _wgslsmith_f_op_f32(min(-228f, 1451f))), Struct_4(true, vec4<u32>(u_input.a, 4294967295u, u_input.a, 19139u) ^ vec4<u32>(global2.x, 0u, global2.x, global2.x), func_1(778f, 1u), Struct_3(vec4<i32>(-1i, 1i, 2147483647i, var_0.x), 583f), all(vec3<bool>(false, true, false))), u_input.b)), 56347u);
    global1 = array<Struct_1, 7>();
    var var_1 = global2.yxw;
    var var_2 = ~(~firstLeadingBit(4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(global2.wx, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1539f, -1000f))), _wgslsmith_f_op_f32(-269f + -1489f)))), var_0.xz, ~min(var_1.zy >> (_wgslsmith_add_vec2_u32(global2.yz, vec2<u32>(0u, global2.x)) % vec2<u32>(32u)), vec2<u32>(var_1.x & global2.x, 1u)));
}

