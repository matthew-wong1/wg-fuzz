struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27>;

var<private> global1: array<Struct_1, 28>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<i32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 27u)], arg_0.x, 954f, 1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1000f, global0[_wgslsmith_index_u32(53396u, 27u)], -885f)))))));
    let var_1 = !(!(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), true))));
    var var_2 = Struct_1(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, 1u)) << (reverseBits(vec2<u32>(4294967295u, 2194u)) % vec2<u32>(32u)), select(vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(53695u, u_input.a), vec2<u32>(79479u, 1u), true)), ~countOneBits(vec2<u32>(u_input.a, u_input.a)) ^ ~(vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(u_input.a, 4294967295u))), -2830f);
    let var_3 = !vec2<bool>(var_1.x, all(vec2<bool>(var_1.x || false, true)));
    var var_4 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(min(7891u, (var_2.a.x ^ u_input.a) ^ u_input.a) << (1u % 32u), ~0u), 28u)];
    return _wgslsmith_sub_vec2_u32(var_4.a, vec2<u32>(_wgslsmith_mult_u32(u_input.a >> (~var_2.a.x % 32u), ~(~6732u)), min(_wgslsmith_clamp_u32(var_2.a.x, var_4.a.x, u_input.a) >> (~1308u % 32u), _wgslsmith_mod_u32(~var_2.a.x, 1u))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: f32, arg_3: vec2<u32>) -> vec2<u32> {
    let var_0 = ~22193u;
    global1 = array<Struct_1, 28>();
    global0 = array<f32, 27>();
    var var_1 = u_input.c.x ^ -2147483647i;
    var var_2 = vec3<f32>(1129f, arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-601f)) * _wgslsmith_f_op_f32(259f + global0[_wgslsmith_index_u32(var_0, 27u)])) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.b, 565f)) + -2225f))));
    return countOneBits(vec2<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(1u, arg_3.x, var_0, 0u)), vec4<u32>(51983u, 4294967295u, 28310u, var_0) << (vec4<u32>(15448u, 2502u, u_input.a, arg_1.a.x) % vec4<u32>(32u))), 4294967295u) >> (select(arg_3 ^ firstTrailingBit(vec2<u32>(var_0, arg_3.x)), _wgslsmith_clamp_vec2_u32(func_3(vec4<f32>(-298f, var_2.x, var_2.x, 1755f), vec4<i32>(-2147483647i, u_input.c.x, -35496i, 38335i)), abs(arg_1.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0, u_input.a), arg_3, vec2<u32>(arg_3.x, 21550u))), true) % vec2<u32>(32u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(func_4(select(vec4<bool>(all(arg_1), !arg_1.x, arg_1.x || arg_1.x, any(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true))), select(!vec4<bool>(arg_1.x, false, arg_1.x, true), select(vec4<bool>(arg_1.x, true, arg_1.x, true), arg_1, vec4<bool>(true, arg_1.x, arg_1.x, true)), any(arg_1)), true), arg_2, 601f, func_3(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 27u)], arg_0.b, global0[_wgslsmith_index_u32(4294967295u, 27u)], arg_0.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -778f, global0[_wgslsmith_index_u32(arg_0.a.x, 27u)], arg_2.b))), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, u_input.e, -1i, 1967i), vec4<i32>(u_input.e, u_input.b, 24662i, u_input.e)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-231f))));
    global1 = array<Struct_1, 28>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(798f * -2225f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) - arg_0.b)))), -125f, -333f);
    var var_2 = ~u_input.c.x;
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(~arg_2.a.x, 27u)], _wgslsmith_f_op_f32(-arg_2.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(1000f - -880f)), -1000f))) > _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(arg_0.a.x, 27u)], _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(reverseBits(min(50320u, 47208u)), 27u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.b)) - _wgslsmith_f_op_f32(var_0.b * 146f))))));
    return arg_2;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec4<bool>) -> Struct_1 {
    global1 = array<Struct_1, 28>();
    let var_0 = global1[_wgslsmith_index_u32(((4294967295u | u_input.a) | 1u) << (firstLeadingBit(arg_0.x) % 32u), 28u)];
    global1 = array<Struct_1, 28>();
    global0 = array<f32, 27>();
    let var_1 = _wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(func_2(func_2(Struct_1(vec2<u32>(4294967295u, var_0.a.x), -474f), arg_3, Struct_1(arg_0, 951f)), !vec4<bool>(true, arg_3.x, false, arg_3.x), global1[_wgslsmith_index_u32(9777u, 28u)]).a.x, 4294967295u, ~min(19941u, 56424u))), reverseBits(vec3<u32>(~var_0.a.x, countOneBits(45404u), _wgslsmith_div_u32(arg_0.x, 4294967295u))) >> (vec3<u32>(~(~u_input.a), ~0u, _wgslsmith_div_u32(~5969u, 1u)) % vec3<u32>(32u)), (~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, var_0.a.x), vec3<u32>(63434u, 4294967295u, arg_0.x), vec3<u32>(u_input.a, arg_1.a.x, 0u)) << (vec3<u32>(reverseBits(10233u), 4294967295u, reverseBits(u_input.a)) % vec3<u32>(32u))) >> (abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(7151u, u_input.a, arg_1.a.x) << (vec3<u32>(arg_0.x, 31576u, arg_1.a.x) % vec3<u32>(32u)), abs(vec3<u32>(1u, var_0.a.x, 1u)), firstTrailingBit(vec3<u32>(6138u, 1u, arg_0.x)))) % vec3<u32>(32u)));
    return global1[_wgslsmith_index_u32(var_1.x, 28u)];
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> i32 {
    global0 = array<f32, 27>();
    let var_0 = ~23466u;
    var var_1 = ~firstTrailingBit(firstTrailingBit(vec3<u32>(arg_3.a.x, _wgslsmith_sub_u32(u_input.a, 4294967295u), 9075u)));
    var var_2 = -abs(1i);
    let var_3 = u_input.c.wz;
    return var_3.x;
}

fn func_1() -> vec3<f32> {
    var var_0 = Struct_1(abs(abs(~max(vec2<u32>(u_input.a, 9438u), vec2<u32>(u_input.a, 1u)))), -992f);
    let var_1 = i32(-1i) * -2340i;
    var var_2 = _wgslsmith_clamp_i32(-func_6(-var_1, func_5(~vec2<u32>(24303u, u_input.a), func_2(global1[_wgslsmith_index_u32(var_0.a.x, 28u)], vec4<bool>(false, true, true, true), global1[_wgslsmith_index_u32(57739u, 28u)]), vec3<i32>(u_input.e, 2147483647i, -14537i), vec4<bool>(true, false, true, true)), -(~vec2<i32>(var_1, 1i)), global1[_wgslsmith_index_u32(var_0.a.x, 28u)]), 4389i, min(-2147483647i, _wgslsmith_div_i32(u_input.e, _wgslsmith_sub_i32(var_1, 24144i))));
    return _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(886f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a, 27u)], 1000f), select(false, false, true)))), _wgslsmith_f_op_f32(276f + global0[_wgslsmith_index_u32(0u, 27u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(abs(4294967295u), 27u)] * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1968f), -1000f, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 27>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 27u)] * -1134f) * _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(~u_input.a, 27u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(4294967295u, 27u)]))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(14924u, 14013u), 27u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 27u)] - 1341f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.a, 27u)])) - global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, u_input.a, 21194u), 27u)]), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.a, 27u)] - global0[_wgslsmith_index_u32(u_input.a, 27u)])) * global0[_wgslsmith_index_u32(u_input.a, 27u)]));
    var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_1())));
    var var_1 = var_0.x;
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(1u, 27u)], var_0.x, 760f) + vec3<f32>(var_0.x, global0[_wgslsmith_index_u32(u_input.a, 27u)], -418f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1446f, global0[_wgslsmith_index_u32(4294967295u, 27u)], 519f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0[_wgslsmith_index_u32(28956u, 27u)], global0[_wgslsmith_index_u32(16108u, 27u)], -145f))))), -1000f <= _wgslsmith_f_op_f32(min(var_0.x, func_5(vec2<u32>(u_input.a, u_input.a), Struct_1(vec2<u32>(0u, 44931u), -1163f), u_input.c.yyy, vec4<bool>(false, false, true, false)).b)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.a, 27u)])) + var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_0.x), global0[_wgslsmith_index_u32(~1u, 27u)]) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(410f, var_0.x, 484f)))))), !vec3<bool>(all(vec4<bool>(false, false, true, false)), (u_input.e >= u_input.d) && all(vec2<bool>(false, false)), true)));
    var var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(u_input.d, -(u_input.b & 1i)) & min(u_input.c.x, min(1i & u_input.e, -u_input.d)), vec2<u32>(abs(~max(u_input.a, 15314u)), ~u_input.a), var_0.x, 553f);
}

