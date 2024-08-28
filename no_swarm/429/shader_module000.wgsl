struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1351f);

var<private> global1: vec2<u32> = vec2<u32>(1u, 22428u);

var<private> global2: array<Struct_1, 4>;

var<private> global3: array<bool, 9> = array<bool, 9>(false, true, true, true, true, true, true, true, false);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32) -> vec3<i32> {
    let var_0 = reverseBits(~(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, u_input.b), vec2<i32>(1i, -16185i)), ~(-2440i), ~u_input.b, min(u_input.b, arg_0)) | (vec4<i32>(arg_0, 1i, u_input.b, arg_0) | max(vec4<i32>(-1i, u_input.b, u_input.b, u_input.b), vec4<i32>(arg_0, 39371i, u_input.b, -2147483647i)))));
    var var_1 = true;
    global0 = Struct_1(-1000f);
    var var_2 = 81452u;
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1418f, _wgslsmith_f_op_f32(abs(global0.a)), _wgslsmith_f_op_f32(-global0.a))) + vec3<f32>(_wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(global0.a * global0.a)), -1000f, -512f))));
    return var_0.yyx;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_2((global3[_wgslsmith_index_u32(36919u, 9u)] | all(select(vec4<bool>(true, global3[_wgslsmith_index_u32(arg_0.x, 9u)], false, true), vec4<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 9u)], global3[_wgslsmith_index_u32(4294967295u, 9u)], global3[_wgslsmith_index_u32(u_input.c, 9u)]), vec4<bool>(global3[_wgslsmith_index_u32(global1.x, 9u)], true, global3[_wgslsmith_index_u32(u_input.c, 9u)], false)))) | !(global3[_wgslsmith_index_u32(1u, 9u)] == global3[_wgslsmith_index_u32(13826u, 9u)]), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))));
    let var_1 = ~(-_wgslsmith_add_vec3_i32(func_3(1i), vec3<i32>(_wgslsmith_mod_i32(-8426i, 3069i), _wgslsmith_div_i32(-20774i, 1i), u_input.b)));
    let var_2 = abs(vec2<i32>(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-47889i, var_1.x, -1i, 2147483647i), vec4<i32>(var_1.x, 2147483647i, var_1.x, 0i))), _wgslsmith_div_i32(~23003i, var_1.x & -1i)) << (arg_0 % vec2<u32>(32u)));
    var var_3 = u_input.c;
    var var_4 = ~_wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(4294967295u, global1.x << (44659u % 32u))), _wgslsmith_div_vec2_u32(arg_0, arg_0));
    return arg_2;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> vec3<i32> {
    let var_0 = firstTrailingBit(_wgslsmith_div_vec3_i32(-_wgslsmith_sub_vec3_i32(-vec3<i32>(arg_2, 2147483647i, u_input.b), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_2, u_input.b, 30867i), vec3<i32>(22443i, arg_2, 0i))), firstLeadingBit(countOneBits(vec3<i32>(1i, arg_2, 29491i)))));
    return ~_wgslsmith_add_vec3_i32(vec3<i32>(-12277i, abs(u_input.b), arg_0), vec3<i32>((-20298i << (u_input.c % 32u)) ^ 15500i, countOneBits(abs(var_0.x)), firstLeadingBit(func_3(50428i).x)));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: i32) -> Struct_1 {
    let var_0 = func_4(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(-arg_1.wyx, arg_1.zyy & vec3<i32>(-59843i, -58210i, 2147483647i)) | arg_1.zwy, arg_1.yzy), Struct_2(global3[_wgslsmith_index_u32(abs(32073u) << ((_wgslsmith_dot_vec2_u32(vec2<u32>(65633u, u_input.c), vec2<u32>(0u, 26408u)) | _wgslsmith_add_u32(1u, global1.x)) % 32u), 9u)], global2[_wgslsmith_index_u32(0u, 4u)]), arg_2, Struct_2(_wgslsmith_mod_i32(0i, _wgslsmith_sub_i32(2147483647i, arg_0)) >= 1i, func_2(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(69246u, 1u), vec2<u32>(global1.x, u_input.a)), ~vec2<u32>(23135u, 4294967295u)), vec2<f32>(_wgslsmith_f_op_f32(1292f - global0.a), -681f), global2[_wgslsmith_index_u32(1u, 4u)])));
    var var_1 = select(select(vec3<bool>(false, true, !all(vec2<bool>(global3[_wgslsmith_index_u32(0u, 9u)], global3[_wgslsmith_index_u32(4294967295u, 9u)]))), vec3<bool>(!(!global3[_wgslsmith_index_u32(global1.x, 9u)]), !any(vec3<bool>(global3[_wgslsmith_index_u32(global1.x, 9u)], global3[_wgslsmith_index_u32(7464u, 9u)], true)), global3[_wgslsmith_index_u32(select(global1.x, 1u, false), 9u)] || false), global3[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, global1.x), vec4<u32>(u_input.c, global1.x, global1.x, 21122u))), 9u)]), vec3<bool>(true, true, true), vec3<bool>(!((false || global3[_wgslsmith_index_u32(u_input.a, 9u)]) && true), global3[_wgslsmith_index_u32(abs(52959u), 9u)], any(select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.c, 9u)], global3[_wgslsmith_index_u32(u_input.a, 9u)]), vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 9u)], false), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 9u)], global3[_wgslsmith_index_u32(global1.x, 9u)]))) && all(select(vec3<bool>(global3[_wgslsmith_index_u32(global1.x, 9u)], false, global3[_wgslsmith_index_u32(u_input.a, 9u)]), vec3<bool>(true, false, true), vec3<bool>(global3[_wgslsmith_index_u32(0u, 9u)], true, global3[_wgslsmith_index_u32(0u, 9u)])))));
    var var_2 = _wgslsmith_f_op_f32(abs(163f));
    var var_3 = vec3<f32>(-395f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(1f + global0.a)) + global0.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-831f + _wgslsmith_f_op_f32(floor(713f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) * _wgslsmith_f_op_f32(-global0.a))))));
    var var_4 = Struct_2(!(_wgslsmith_mult_i32(firstTrailingBit(-56279i), arg_2) < -1i), func_2(vec2<u32>(_wgslsmith_div_u32(global1.x, min(43114u, global1.x)), 26974u), _wgslsmith_f_op_vec2_f32(exp2(var_3.xy)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) + _wgslsmith_f_op_f32(-global0.a)))));
    return func_2(reverseBits(vec2<u32>(global1.x, ~0u)), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.b.a * -945f) + _wgslsmith_f_op_f32(f32(-1f) * -1643f)), var_3.x, true)), _wgslsmith_f_op_f32(sign(-1654f))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(4294967295u, global1.x, 56460u, u_input.c) ^ vec4<u32>(1u, global1.x, 0u, 4294967295u)), vec4<u32>(19208u, ~(3900u >> (u_input.c % 32u)), _wgslsmith_clamp_u32(global1.x, countOneBits(u_input.c), ~u_input.c), u_input.c)), 4u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * global0.a))));
    let var_0 = vec3<f32>(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -429f);
    global2 = array<Struct_1, 4>();
    global1 = vec2<u32>(14612u, 41993u);
    global3 = array<bool, 9>();
    global0 = func_1(select((-1i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(48187i, u_input.b, 12020i, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))) & u_input.b, -49005i, global3[_wgslsmith_index_u32(~4294967295u << (~global1.x % 32u), 9u)]), ~select(_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.b, -30325i, u_input.b, -27046i), vec4<i32>(-14330i, -12172i, u_input.b, -1i), _wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.b, 10247i, u_input.b), vec4<i32>(u_input.b, u_input.b, -413i, 2147483647i))), _wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.b, u_input.b, -325i, 0i), vec4<i32>(u_input.b, u_input.b, -16234i, 0i), true), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, 12156i), vec4<i32>(-3892i, 2147483647i, 30104i, u_input.b))), vec4<bool>(global3[_wgslsmith_index_u32(40941u, 9u)] && false, true, !global3[_wgslsmith_index_u32(4294967295u, 9u)], !global3[_wgslsmith_index_u32(0u, 9u)])), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(-(~1i) & countOneBits(u_input.b), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-843f, 1032f, -821f))), u_input.b << ((firstTrailingBit(~4294967295u) & ~_wgslsmith_div_u32(global1.x, 15032u)) % 32u));
}

