struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(75870i, 2147483647i, 2147483647i, -31570i, 38380i, 2147483647i, 19125i, 2147483647i, -20887i, 1i, -1i, i32(-2147483648), 15472i, -1i, -1i, -9668i, -30612i, -54572i, 0i, 24886i, 71478i, 0i, i32(-2147483648), -1i);

var<private> global1: Struct_1 = Struct_1(true, vec4<u32>(4294967295u, 4294967295u, 22842u, 4294967295u), vec2<bool>(false, false));

var<private> global2: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-503f, _wgslsmith_f_op_f32(f32(-1f) * -918f), global2.a | arg_1.c.x))))));
    var var_2 = 18040u;
    global2 = Struct_1((38581u <= global2.b.x) | (!var_0.a | (global1.c.x || true)), arg_1.b, !arg_1.c);
    var var_3 = vec4<bool>(!(!(!all(vec2<bool>(true, true)))), arg_1.a, true, any(select(!(!vec4<bool>(true, false, var_0.c.x, true)), vec4<bool>(!global2.a, select(true, global2.a, true), true, arg_1.b.x > 0u), !select(vec4<bool>(true, false, false, var_0.c.x), vec4<bool>(true, true, global2.c.x, global2.c.x), true))));
    return _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(firstTrailingBit(~arg_1.b), vec4<u32>(8934u, 1u, min(_wgslsmith_mult_u32(arg_1.b.x, 0u), global2.b.x), 1u)), vec4<u32>(_wgslsmith_div_u32(min(_wgslsmith_mult_u32(global2.b.x, arg_1.b.x), global2.b.x), _wgslsmith_mod_u32(_wgslsmith_mod_u32(77149u, 68973u), ~var_0.b.x)), abs(29808u), var_0.b.x, global2.b.x | ~7226u));
}

fn func_2(arg_0: bool) -> u32 {
    global2 = Struct_1(!(!global2.c.x), ~global1.b, global2.c);
    let var_0 = Struct_1(!arg_0, vec4<u32>(~1u, ~countOneBits(global1.b.x), global1.b.x, select(_wgslsmith_dot_vec3_u32(abs(global2.b.xxx), ~global2.b.zzx), _wgslsmith_div_u32(0u, global1.b.x & 24144u), false)), vec2<bool>(true || arg_0, global1.c.x));
    var var_1 = Struct_2(vec3<i32>(1i, ~41210i, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1.b.x, 4294967295u, global2.b.x), 24u)])), Struct_1(all(vec4<bool>(true, true, false, true)), ~(~func_3(global1.b.zy, var_0)), var_0.c), var_0.b.yxw << (abs(vec3<u32>(global2.b.x, 4983u, 4294967295u) >> (vec3<u32>(8936u, global2.b.x, 7988u) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_2 = !(-u_input.a < _wgslsmith_add_i32(-1i, 0i));
    var_1 = Struct_2(var_1.a, Struct_1(any(select(select(vec3<bool>(false, false, var_0.a), vec3<bool>(arg_0, arg_0, false), false), !vec3<bool>(global2.a, true, true), select(vec3<bool>(true, false, false), vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, global2.c.x, var_1.b.c.x)))), var_0.b, !var_1.b.c), vec3<u32>(_wgslsmith_div_u32(global1.b.x, 7237u), ~u_input.b.x, _wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 41088u, global1.b.x), global2.b.yyz), 1u), abs(firstLeadingBit(1u)), ~_wgslsmith_mod_u32(57988u, 8094u))));
    return ~(0u << (var_1.c.x % 32u));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> Struct_1 {
    global1 = Struct_1(true, _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(global1.b, ~global2.b) << (vec4<u32>(func_2(global1.a), firstLeadingBit(0u), u_input.b.x, abs(global2.b.x)) % vec4<u32>(32u)), abs(~vec4<u32>(global1.b.x, 71743u, global1.b.x, global2.b.x) << (~global2.b % vec4<u32>(32u)))), select(!global2.c, select(global2.c, vec2<bool>(true, all(vec4<bool>(global2.a, false, true, true))), !global1.c), global1.c));
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-707f - _wgslsmith_f_op_f32(step(arg_0, arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1210f))), arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(432f)), _wgslsmith_f_op_f32(-1110f + arg_0))) - vec4<f32>(-582f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(308f + arg_0)), 1f)));
    var var_1 = arg_1.wx;
    var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(~(~arg_1.x) ^ _wgslsmith_mult_i32(arg_1.x, global0[_wgslsmith_index_u32(~4294967295u, 24u)]), (firstLeadingBit(6467i) >> (select(0u, 59231u, global2.c.x) % 32u)) & ~global0[_wgslsmith_index_u32(~u_input.b.x, 24u)]), arg_1.xw);
    global1 = Struct_1(global1.c.x, global1.b, !select(vec2<bool>(global2.c.x, !global2.c.x), global1.c, global1.c.x));
    return Struct_1(true, ~(~select(vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 52276u, global1.b.x, u_input.b.x), select(vec4<bool>(false, false, true, true), vec4<bool>(global2.c.x, false, false, true), vec4<bool>(global2.c.x, global1.c.x, global2.a, global1.a)))), select(!vec2<bool>(true, all(vec4<bool>(false, false, false, true))), select(vec2<bool>(!global2.a, global2.a), global1.c, true), vec2<bool>(global2.c.x, global2.c.x)));
}

fn func_4(arg_0: Struct_1) -> vec3<u32> {
    return select(arg_0.b.wwz >> (arg_0.b.yww % vec3<u32>(32u)), vec3<u32>((global2.b.x ^ 4294967295u) ^ global1.b.x, min(select(_wgslsmith_add_u32(28323u, 72140u), func_2(global2.a), all(arg_0.c)), arg_0.b.x), firstLeadingBit(u_input.b.x ^ arg_0.b.x) ^ 34334u), vec3<bool>(!(global0[_wgslsmith_index_u32(~1u, 24u)] < (0i >> (global1.b.x % 32u))), !all(global1.c), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var_0 = ~func_4(func_1(255f, -countOneBits(vec4<i32>(-15305i, -2147483647i, global0[_wgslsmith_index_u32(4294967295u, 24u)], 24014i))));
    var var_1 = Struct_2(firstTrailingBit(vec3<i32>(global0[_wgslsmith_index_u32(83335u, 24u)], (global0[_wgslsmith_index_u32(u_input.b.x, 24u)] >> (var_0.x % 32u)) ^ abs(u_input.a), u_input.a)), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1273f, 1659f))) + _wgslsmith_div_f32(-1273f, -533f)), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, -47053i), vec4<i32>(-31479i, 2147483647i, global0[_wgslsmith_index_u32(34459u, 24u)], u_input.a)) ^ (vec4<i32>(2147483647i, u_input.a, global0[_wgslsmith_index_u32(1u, 24u)], -2147483647i) << (global1.b % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(global0[_wgslsmith_index_u32(global2.b.x, 24u)], global0[_wgslsmith_index_u32(global2.b.x, 24u)], u_input.a, u_input.a)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, -9103i, -2147483647i, u_input.a), vec4<i32>(-1i, u_input.a, -5468i, 20165i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(28342i, -27955i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(global2.b.x, 24u)], u_input.a), vec4<i32>(u_input.a, 8429i, 1i, u_input.a))))), firstLeadingBit(global2.b.yzw));
    global0 = array<i32, 24>();
    global1 = func_1(2848f, -abs(vec4<i32>(4125i, u_input.a, global0[_wgslsmith_index_u32(global1.b.x << (var_1.b.b.x % 32u), 24u)], -19189i)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(879f, 466f, 114f), vec3<f32>(1255f, 1000f, 856f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(653f, -424f, 1138f), vec3<f32>(-660f, -1122f, -1339f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-248f, 1414f, 1105f) + vec3<f32>(-657f, -710f, -186f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-277f)), _wgslsmith_div_f32(430f, -307f), _wgslsmith_f_op_f32(-375f * -861f)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_2.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(29287u, func_3(~vec2<u32>(var_0.x, 4294967295u), var_1.b).x, var_1.b.b.x), global2.b.x, vec3<u32>(~global1.b.x & firstLeadingBit(56513u), global2.b.x, var_1.c.x));
}

