struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(2104f, 72892u, -1000f, false, 0u);

var<private> global1: array<Struct_1, 20>;

var<private> global2: array<bool, 20>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = reverseBits(firstLeadingBit(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 47067i) >> (vec3<u32>(u_input.a, arg_3.b, 61551u) % vec3<u32>(32u)), ~vec3<i32>(u_input.b.x, 20482i, u_input.b.x)), -_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, 1i, 79450i), vec3<i32>(u_input.b.x, u_input.b.x, -1i)), ~max(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(0i, 0i, 2147483647i)))));
    let var_1 = ~(~(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(44158u, 1u, arg_2.e), vec3<u32>(4294967295u, global0.b, 24548u)), countOneBits(65116u))));
    var var_2 = arg_1;
    var var_3 = arg_2;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a + 225f) * 1f), var_3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_3.a, -617f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1))) - _wgslsmith_f_op_f32(f32(-1f) * -479f))), false, 65471u);
    return ~(_wgslsmith_div_u32(u_input.a, 25261u) >> (4294967295u % 32u));
}

fn func_2() -> vec2<f32> {
    var var_0 = Struct_1(-694f, _wgslsmith_dot_vec4_u32(abs(~(~vec4<u32>(0u, 4294967295u, 17071u, 0u))), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, 100u, 1u, 1u), firstTrailingBit(vec4<u32>(u_input.a, u_input.a, 4294967295u, 53210u)), vec4<u32>(u_input.a, global0.b, 4294967295u, global0.b) ^ vec4<u32>(global0.e, 11149u, 1213u, global0.e))), 397f, true && global0.d, ~func_3(!(!vec4<bool>(global0.d, global2[_wgslsmith_index_u32(1u, 20u)], false, false)), global0.a, global1[_wgslsmith_index_u32(~(~u_input.a), 20u)], global1[_wgslsmith_index_u32(countOneBits(~3939u), 20u)]));
    var var_1 = ~_wgslsmith_mult_u32(~func_3(vec4<bool>(var_0.d, var_0.d, global0.d, global2[_wgslsmith_index_u32(64322u, 20u)]), 1984f, global1[_wgslsmith_index_u32(func_3(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 20u)], var_0.d, true, var_0.d), var_0.a, Struct_1(909f, global0.e, global0.c, global0.d, 1u), global1[_wgslsmith_index_u32(var_0.b, 20u)]), 20u)], global1[_wgslsmith_index_u32(~global0.e, 20u)]), global0.e >> (countOneBits(4294967295u) % 32u));
    let var_2 = !((var_0.e << (4294967295u % 32u)) == ~_wgslsmith_sub_u32(countOneBits(global0.b), global0.e));
    global2 = array<bool, 20>();
    global0 = Struct_1(var_0.a, _wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(global0.b, u_input.a, 7750u), ~vec3<u32>(var_0.e, var_0.b, u_input.a))), global0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1092f)) * -233f), _wgslsmith_f_op_f32(f32(-1f) * -1555f) < global0.c, (_wgslsmith_sub_u32(abs(u_input.a), abs(11869u)) >> (~u_input.a % 32u)) >> (~0u % 32u));
    return vec2<f32>(_wgslsmith_div_f32(450f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(672f, -217f), global0.c, true))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1232f, -589f, true))))));
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = global0.c;
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_2()), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.c, -140f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.c, global0.c), vec2<f32>(1111f, global0.c))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, -323f) * vec2<f32>(global0.c, global0.a)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1079f, global0.c) - vec2<f32>(1014f, -1379f)))), false)), vec2<f32>(-837f, global0.c));
    let var_2 = vec2<bool>(!(!select(true, true, any(vec2<bool>(global0.d, global2[_wgslsmith_index_u32(global0.b, 20u)])))), !any(vec4<bool>(all(vec2<bool>(global2[_wgslsmith_index_u32(39747u, 20u)], global2[_wgslsmith_index_u32(global0.e, 20u)])), true, false, global0.d)));
    let var_3 = var_2;
    var var_4 = Struct_1(var_1.x, global0.b, 184f, false, u_input.a);
    return _wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(abs(min(vec3<i32>(0i, arg_0, u_input.b.x), vec3<i32>(arg_0, 14438i, u_input.b.x))), ~_wgslsmith_div_vec3_i32(vec3<i32>(arg_0, arg_0, -2147483647i), vec3<i32>(1i, 26356i, 1i)), -firstTrailingBit(vec3<i32>(-38973i, -2147483647i, 1i))), firstLeadingBit(~_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, 0i, arg_0), vec3<i32>(arg_0, arg_0, arg_0))) >> (reverseBits(abs(~vec3<u32>(0u, u_input.a, 103246u))) % vec3<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = abs(~_wgslsmith_mult_vec2_i32(vec2<i32>(-14520i, -30437i) | min(vec2<i32>(arg_2, arg_2), vec2<i32>(0i, arg_2)), firstLeadingBit(vec2<i32>(arg_1, 0i))));
    var var_1 = ~select(reverseBits(~(vec3<u32>(0u, arg_3.b, arg_0.b) | vec3<u32>(arg_3.e, 34377u, arg_3.b))), firstLeadingBit(~(vec3<u32>(arg_0.e, 0u, arg_3.b) << (vec3<u32>(u_input.a, u_input.a, global0.e) % vec3<u32>(32u)))), vec3<bool>(!arg_3.d, true, arg_3.d));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1705f, arg_3.a)) * -986f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.a)) + arg_0.a)))));
    var_0 = _wgslsmith_mod_vec2_i32(min(u_input.b, _wgslsmith_mod_vec2_i32(~u_input.b, ~u_input.b)), vec2<i32>(-1i) * -u_input.b) << (vec2<u32>(8365u, ~51518u) % vec2<u32>(32u));
    var var_3 = Struct_1(1416f, ~(~61800u >> (~select(4294967295u, 8878u, global2[_wgslsmith_index_u32(var_1.x, 20u)]) % 32u)), -1254f, any(vec2<bool>((arg_0.d || false) | (arg_0.d & true), any(select(vec4<bool>(true, arg_3.d, true, global2[_wgslsmith_index_u32(var_1.x, 20u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 20u)], arg_0.d, false), false)))), 1u);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(394f, _wgslsmith_f_op_f32(-1040f - _wgslsmith_f_op_vec2_f32(func_2()).x)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(step(-1312f, -1330f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, var_3.c, false))))), _wgslsmith_dot_vec4_u32(select(_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_3.b, arg_3.e, 1u, 154439u), vec4<u32>(arg_0.e, var_3.b, 1u, var_3.b) | vec4<u32>(arg_0.b, 1u, var_1.x, var_3.e)), ~firstLeadingBit(vec4<u32>(1u, 4294967295u, 78081u, 30197u)), select(!vec4<bool>(true, arg_3.d, var_3.d, global0.d), vec4<bool>(false, arg_3.d, var_3.d, true), global2[_wgslsmith_index_u32(~0u, 20u)])), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(180130u, 52130u, 34471u) ^ vec3<u32>(var_3.e, 1u, var_1.x), vec3<u32>(arg_3.b, global0.e, 18745u) << (vec3<u32>(u_input.a, var_3.e, 27540u) % vec3<u32>(32u))), _wgslsmith_div_u32(~4294967295u, _wgslsmith_mult_u32(1u, 27138u)), global0.e, 31748u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.c * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2))))), all(!select(select(vec4<bool>(false, true, arg_0.d, arg_0.d), vec4<bool>(arg_0.d, true, false, true), vec4<bool>(false, false, var_3.d, global0.d)), vec4<bool>(global2[_wgslsmith_index_u32(arg_0.b, 20u)], arg_3.d, true, var_3.d), !vec4<bool>(global0.d, arg_3.d, false, true))), reverseBits(~(~global0.e)) ^ (arg_0.e >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.x, var_3.b, 1u), select(vec3<u32>(9060u, 4294967295u, 5790u), vec3<u32>(global0.e, arg_3.e, 1u), vec3<bool>(false, global0.d, var_3.d))) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(Struct_1(_wgslsmith_f_op_f32(ceil(-1358f)), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.a, global0.e), vec4<u32>(38707u, u_input.a, 94771u, global0.e))), _wgslsmith_f_op_f32(f32(-1f) * -412f), select(global2[_wgslsmith_index_u32(global0.e, 20u)], global0.d || global2[_wgslsmith_index_u32(0u, 20u)], global2[_wgslsmith_index_u32(u_input.a, 20u)]) & true, u_input.a), _wgslsmith_sub_i32(~func_1(-2147483647i), 2249i), -29859i, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-555f, global0.c)))), ~_wgslsmith_mult_u32(~global0.e, countOneBits(u_input.a)), _wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-847f, 537f)) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-318f * global0.a), 117f)), 4294967295u));
    global2 = array<bool, 20>();
    let var_0 = Struct_1(global0.c, u_input.a, _wgslsmith_f_op_f32(1505f + 2033f), global0.c >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), global0.c)), u_input.a);
    var var_1 = !(-firstLeadingBit(u_input.b.x) > u_input.b.x);
    var var_2 = firstLeadingBit(u_input.b);
    var var_3 = ~_wgslsmith_sub_vec3_i32(~(~vec3<i32>(u_input.b.x, 12713i, 0i)), ~_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(11994i, var_2.x, -45854i), vec3<i32>(28106i, u_input.b.x, 1i)), min(vec3<i32>(0i, 1i, var_2.x), vec3<i32>(var_2.x, var_2.x, 2746i))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))));
    var_1 = false;
    var_2 = var_3.xy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, -769f, var_0.a, var_4))))));
}

