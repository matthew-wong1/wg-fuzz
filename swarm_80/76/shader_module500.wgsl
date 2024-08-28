struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: vec4<bool>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec4<i32>(-8113i, 0i, i32(-2147483648), i32(-2147483648)), vec3<f32>(-538f, 584f, 777f), false, false, 0u), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -50405i, 2147483647i), vec3<f32>(-1930f, -1050f, 677f), true, true, 38512u), Struct_1(vec4<i32>(10400i, 2147483647i, -29685i, i32(-2147483648)), vec3<f32>(-430f, 2806f, 489f), false, true, 20815u), Struct_1(vec4<i32>(3858i, -25154i, 1i, 0i), vec3<f32>(1000f, -1105f, 688f), false, false, 31703u), Struct_1(vec4<i32>(1i, 52678i, -1i, 7987i), vec3<f32>(-421f, -886f, 544f), false, false, 41018u), Struct_1(vec4<i32>(-1i, i32(-2147483648), 0i, 29914i), vec3<f32>(219f, -2379f, -1237f), true, false, 24981u), Struct_1(vec4<i32>(0i, 1i, 1i, 1i), vec3<f32>(360f, -973f, -354f), true, false, 1254u), Struct_1(vec4<i32>(1i, 25432i, -4107i, -12227i), vec3<f32>(-477f, 502f, 1787f), true, true, 94587u), Struct_1(vec4<i32>(1426i, -28490i, 0i, -16011i), vec3<f32>(-270f, -1439f, 107f), true, false, 39169u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_1) -> f32 {
    global2 = array<Struct_1, 9>();
    global0 = firstTrailingBit(select(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(u_input.a.x, global1.e, arg_2.e)) ^ vec3<u32>(global1.e, 47605u, global0.x), _wgslsmith_add_vec3_u32(~vec3<u32>(1u, 4294967295u, u_input.a.x), vec3<u32>(global1.e, 59682u, 40015u))), vec3<u32>(u_input.a.x | arg_2.e, 4294967295u, global0.x) ^ vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(7160u, 41266u, 4294967295u, global0.x), vec4<u32>(4294967295u, 34470u, 0u, arg_2.e)), ~27177u, ~global1.e), -(-89261i | arg_2.a.x) < (_wgslsmith_clamp_i32(0i, 2147483647i, arg_0.x) | arg_2.a.x)));
    let var_0 = arg_2.b.x;
    global0 = abs(~(~(~vec3<u32>(1u, 13647u, u_input.a.x)) | select(_wgslsmith_mult_vec3_u32(vec3<u32>(5386u, global0.x, 4294967295u), vec3<u32>(0u, 8574u, arg_2.e)), vec3<u32>(u_input.a.x, 4294967295u, 1u), true)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1 - arg_2.b.x), _wgslsmith_f_op_f32(var_0 - var_0), global1.b.x, arg_1)))), arg_2.a.x, select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, arg_2.d, arg_2.d, global1.d), select(vec4<bool>(false, global1.d, global1.d, true), vec4<bool>(false, false, global1.d, false), true)), select(select(vec4<bool>(global1.d, arg_2.d, true, false), vec4<bool>(global1.c, arg_2.d, false, true), vec4<bool>(true, global1.d, arg_2.d, true)), vec4<bool>(global1.c, arg_2.c, global1.c, arg_2.d), false), vec4<bool>(true, u_input.a.x < 45067u, true, global1.d || arg_2.c)), !(!select(vec4<bool>(true, false, false, arg_2.d), vec4<bool>(true, arg_2.c, true, false), vec4<bool>(global1.d, global1.d, arg_2.d, global1.c))), true), global1.c);
    return _wgslsmith_f_op_f32(-var_1.a.x);
}

fn func_2(arg_0: f32) -> bool {
    global1 = Struct_1(vec4<i32>(_wgslsmith_mod_i32(~(~27309i), global1.a.x | _wgslsmith_div_i32(1469i, -4836i)), i32(-1i) * -(2147483647i & global1.a.x), _wgslsmith_clamp_i32(2147483647i, _wgslsmith_mod_i32(-11338i, _wgslsmith_mult_i32(4091i, 1i)), -(global1.a.x & global1.a.x)), _wgslsmith_dot_vec3_i32(firstTrailingBit(global1.a.yxx), countOneBits(global1.a.zzy)) ^ _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(global1.a.yz, vec2<i32>(-7834i, global1.a.x)), -global1.a.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, global1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(737f + global1.b.x) - -1001f)), _wgslsmith_f_op_f32(func_3(vec4<i32>(~global1.a.x, _wgslsmith_clamp_i32(global1.a.x, 607i, global1.a.x), -2147483647i | global1.a.x, 33358i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) + _wgslsmith_f_op_f32(arg_0 * arg_0)), global2[_wgslsmith_index_u32(countOneBits(4294967295u) >> (_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, global0.x)) % 32u), 9u)]))), !(true || (all(vec3<bool>(true, true, true)) && false)), global1.d | all(select(select(vec3<bool>(true, global1.c, false), vec3<bool>(true, true, global1.d), vec3<bool>(global1.c, false, false)), select(vec3<bool>(false, global1.d, true), vec3<bool>(global1.c, global1.c, global1.d), false), !vec3<bool>(global1.c, global1.c, true))), ~global0.x);
    return global1.c;
}

fn func_1(arg_0: Struct_3) -> i32 {
    let var_0 = vec3<bool>(true, !(!func_2(-1457f)), true);
    let var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.b.x))) + _wgslsmith_f_op_f32(func_3(~vec4<i32>(-30128i, global1.a.x, arg_0.a.a.x, -1i), global1.b.x, Struct_1(vec4<i32>(global1.a.x, -11675i, 1i, 20698i), vec3<f32>(global1.b.x, -1000f, -1000f), global1.d, var_0.x, u_input.a.x)))), -1843f), arg_0.a.b.yx));
    global1 = Struct_1(arg_0.a.a, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(global1.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(982f - -530f) - _wgslsmith_f_op_f32(-global1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2015f) + _wgslsmith_div_f32(-1455f, global1.b.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-368f, -783f, 462f) * vec3<f32>(arg_0.a.b.x, _wgslsmith_f_op_f32(-617f + -528f), _wgslsmith_f_op_f32(-var_1.x))))), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.a.x, -28497i, -1099i, global1.a.x), vec4<i32>(2147483647i, 1i, 2147483647i, -2147483647i))) == _wgslsmith_sub_i32(_wgslsmith_div_i32(global1.a.x, abs(-30494i)), global1.a.x), ~_wgslsmith_add_u32(firstTrailingBit(546u), _wgslsmith_dot_vec2_u32(global0.xy, vec2<u32>(global1.e, 72083u))) > (arg_0.a.e << (global0.x % 32u)), select(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, ~1u, u_input.a.x, abs(global1.e)), firstLeadingBit(vec4<u32>(92473u, 0u, arg_0.a.e, 29441u))), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, u_input.a.x, 99176u), vec4<u32>(global1.e, u_input.a.x, 0u, 117845u)), vec4<u32>(global1.e, 4294967295u, global1.e, global0.x) | vec4<u32>(14921u, 13776u, 4294967295u, 4294967295u)), u_input.a.x), !(_wgslsmith_f_op_f32(abs(-909f)) <= _wgslsmith_f_op_f32(-global1.b.x))));
    var var_2 = !select(vec2<bool>(false, true), var_0.yy, !((arg_0.a.e ^ u_input.a.x) != (1u ^ u_input.a.x)));
    global0 = select(max(~vec3<u32>(global0.x ^ 55126u, 1u, 1u), min(~vec3<u32>(global1.e, global1.e, arg_0.a.e), ~vec3<u32>(global1.e, 4294967295u, 35691u)) << (min(vec3<u32>(72113u, global1.e, arg_0.a.e), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 40907u, 54297u), vec3<u32>(u_input.a.x, arg_0.a.e, global1.e))) % vec3<u32>(32u))), vec3<u32>(6050u, 1u, ~4294967295u), false);
    return select(-firstLeadingBit(_wgslsmith_clamp_i32(-14945i, global1.a.x, 4014i)), ~_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(global1.a, vec4<i32>(arg_0.a.a.x, 0i, 51638i, arg_0.a.a.x)), ~vec4<i32>(arg_0.a.a.x, -42625i, global1.a.x, -1i)), global1.d == true) << (~_wgslsmith_add_u32(~(~257u), _wgslsmith_sub_u32(1u, ~global1.e)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 9>();
    var var_0 = vec4<i32>(-35087i, -2147483647i, global1.a.x, -global1.a.x);
    let var_1 = _wgslsmith_sub_u32(~0u, ~13863u);
    var var_2 = Struct_1(vec4<i32>(global1.a.x, select(abs(-81638i) << (u_input.a.x % 32u), 2147483647i, all(select(vec4<bool>(false, global1.c, false, global1.c), vec4<bool>(false, false, true, global1.c), vec4<bool>(global1.c, true, false, true)))), _wgslsmith_clamp_i32(global1.a.x, _wgslsmith_mod_i32(abs(-67733i), func_1(Struct_3(Struct_1(global1.a, global1.b, global1.c, true, 0u)))), reverseBits(_wgslsmith_sub_i32(global1.a.x, var_0.x))), 1i), global1.b, global1.d, any(vec3<bool>(select(global1.d, true, all(vec3<bool>(true, global1.c, global1.d))), !(!global1.c), true)), ~(~(~1u)));
    global1 = Struct_1(~vec4<i32>(2547i, global1.a.x, reverseBits(var_2.a.x), 1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(var_2.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, var_2.b.x, -722f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-158f, global1.b.x, global1.b.x))))), all(vec2<bool>(true, all(vec3<bool>(global1.c, false, var_2.d)))), true, _wgslsmith_div_u32(global1.e, u_input.a.x));
    var var_3 = ~_wgslsmith_sub_i32(global1.a.x, ~(-13575i & global1.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a & vec4<i32>(2147483647i, global1.a.x, 0i, 44785i), var_2.b.x, global1.b.x, -global1.a.x);
}

