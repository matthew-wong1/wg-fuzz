struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> u32 {
    return ~(_wgslsmith_dot_vec2_u32(u_input.a.zz, vec2<u32>(~59622u, 33822u)) ^ u_input.a.x);
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    var var_0 = Struct_1(32368u, vec3<u32>(u_input.a.x, _wgslsmith_div_u32(func_3(Struct_1(u_input.a.x, u_input.a, -470f), Struct_1(u_input.a.x, u_input.a, global0[_wgslsmith_index_u32(u_input.a.x, 24u)]), 3532i, 1i >> (u_input.a.x % 32u)), 1u), u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -900f)))))));
    var_0 = Struct_1(func_3(Struct_1(var_0.b.x, select(vec3<u32>(var_0.b.x, 1u, 99469u), ~u_input.a, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(942f * -753f))), Struct_1(~80828u, var_0.b, var_0.c), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, 57636i) << (vec2<u32>(u_input.a.x, var_0.a) % vec2<u32>(32u))), ~(-vec2<i32>(-1i, -1i))), 0i), vec3<u32>(var_0.b.x, u_input.a.x, firstLeadingBit(min(var_0.b.x << (41018u % 32u), ~u_input.a.x))), _wgslsmith_f_op_f32(294f + 112f));
    let var_1 = _wgslsmith_clamp_vec3_u32(~(~(u_input.a | vec3<u32>(u_input.a.x, 53137u, u_input.a.x)) & ~min(var_0.b, vec3<u32>(4294967295u, var_0.b.x, 28143u))), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(11363u, 57785u, var_0.a)), vec3<u32>(var_0.a, 0u, 1u)), vec3<u32>(u_input.a.x, ~var_0.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_0.b.x, var_0.a), vec3<u32>(4294967295u, u_input.a.x, 37389u)))), ~(firstTrailingBit(vec3<u32>(96838u, var_0.a, var_0.b.x)) >> (~vec3<u32>(u_input.a.x, var_0.b.x, 0u) % vec3<u32>(32u)))), firstLeadingBit(u_input.a));
    let var_2 = !vec4<bool>(false | select(arg_0.x, all(arg_0.xz), any(arg_0)), 0u >= ~(var_1.x ^ 30179u), true, 109100u == firstTrailingBit(~38167u));
    var_0 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, 1u), _wgslsmith_div_u32(1u, var_0.b.x)) ^ ~var_0.b, _wgslsmith_div_vec3_u32(countOneBits(var_1), firstLeadingBit(var_0.b))), var_1, _wgslsmith_f_op_f32(var_0.c - 672f));
    return 41179u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    return !vec2<bool>(!(select(true, true, true) & true), !(_wgslsmith_add_u32(32392u, arg_1.a) > select(23870u, arg_0.a, false)));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = func_4(Struct_1(~(func_2(vec3<bool>(true, true, true)) << (71796u % 32u)), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a, u_input.a << (vec3<u32>(u_input.a.x, arg_0.x, 4294967295u) % vec3<u32>(32u))), ~_wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 1u, u_input.a.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.x, 24u)]), _wgslsmith_f_op_f32(640f - -1094f))))), Struct_1(_wgslsmith_sub_u32(abs(_wgslsmith_sub_u32(48265u, 8070u)), 1u), ~select(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.x, 4294967295u, arg_0.x), vec3<u32>(4294967295u, arg_0.x, u_input.a.x)), vec3<u32>(arg_0.x, 10450u, 4294967295u) << (vec3<u32>(4294967295u, 0u, arg_0.x) % vec3<u32>(32u)), var_0 > arg_1), -388f));
    var var_2 = !(!vec3<bool>(all(!vec4<bool>(true, var_1.x, var_1.x, var_1.x)), arg_0.x > u_input.a.x, true));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(15508u, 24u)], global0[_wgslsmith_index_u32(arg_0.x, 24u)], 1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-954f, -432f, -362f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(1u, 24u)], -1755f, global0[_wgslsmith_index_u32(0u, 24u)]))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1036f, global0[_wgslsmith_index_u32(u_input.a.x, 24u)], global0[_wgslsmith_index_u32(38085u, 24u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(arg_0.x, 24u)], -1928f) * vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)], -811f)))))));
    var var_4 = Struct_1(~(~_wgslsmith_sub_u32(arg_0.x, 4294967295u) >> (~1u % 32u)), ~vec3<u32>(arg_0.x, u_input.a.x & 0u, 7002u), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u ^ min(28720u, func_2(vec3<bool>(var_1.x, false, true))), 24u)] + global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_add_u32(func_3(Struct_1(0u, arg_0.wwy, global0[_wgslsmith_index_u32(u_input.a.x, 24u)]), Struct_1(arg_0.x, arg_0.wzw, var_3.x), var_0, var_0), firstTrailingBit(49845u))), 24u)]));
    return Struct_1(arg_0.x, firstLeadingBit(firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, arg_0.x, u_input.a.x), vec3<u32>(u_input.a.x, 1u, 8569u)))) >> (arg_0.wzz % vec3<u32>(32u)), var_3.x);
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = vec4<u32>(~(_wgslsmith_dot_vec3_u32(~u_input.a, u_input.a | arg_2.b) ^ arg_1.b.x), ~u_input.a.x, 1u, ~arg_2.a);
    let var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(202f, -680f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c, arg_2.c))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1000f + -244f), -376f))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1504f, arg_2.c)) + arg_3), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 24u)])), 1499f)));
    var var_3 = arg_2;
    let var_4 = func_1(vec4<u32>(arg_1.b.x, ~1u, var_1.b.x, 46919u) | vec4<u32>(0u, min(min(1u, 1u), 13958u), _wgslsmith_mult_u32(0u, firstLeadingBit(arg_1.a)), 4294967295u), max(-2147483647i, _wgslsmith_mult_i32(arg_0.x & arg_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, arg_0.x), vec3<i32>(arg_0.x, arg_0.x, 0i)))));
    return arg_1;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_1(7983u, ~(firstTrailingBit(arg_2.b) << (_wgslsmith_mult_vec3_u32(~vec3<u32>(23800u, arg_2.b.x, arg_1.b.x), vec3<u32>(79451u, arg_0.b.x, u_input.a.x)) % vec3<u32>(32u))), global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 24u)]);
    let var_1 = ~4294967295u;
    global0 = array<f32, 24>();
    var_0 = func_1(min(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(arg_0.a, 29899u, 23353u, var_1)), ~(~vec4<u32>(4294967295u, 18531u, var_1, 65973u))), ~reverseBits(~vec4<u32>(arg_2.a, arg_1.a, var_1, 66436u))), ~(-37836i));
    var_0 = Struct_1(func_1(select(~(~vec4<u32>(var_1, 87855u, 34236u, 101407u)), select(vec4<u32>(arg_2.a, 50246u, var_1, var_1), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.a, arg_0.a, var_1, 67983u), vec4<u32>(arg_1.b.x, arg_0.b.x, arg_2.a, 25305u)), true), all(func_4(arg_0, Struct_1(0u, arg_0.b, arg_2.c)))), ~27889i).a, var_0.b, arg_2.c);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_1(u_input.a.x, u_input.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(11284u, 24u)] - _wgslsmith_div_f32(-1470f, global0[_wgslsmith_index_u32(u_input.a.x, 24u)]))))), func_5(max(~vec4<i32>(-2147483647i, 2147483647i, 103635i, -1i), vec4<i32>(0i, -1i, -1486i, 15887i)) | min(firstTrailingBit(vec4<i32>(3710i, 0i, 0i, 8997i)), ~vec4<i32>(-21516i, 2147483647i, 0i, 1i)), Struct_1(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), u_input.a, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 24u)] * global0[_wgslsmith_index_u32(u_input.a.x, 24u)])), func_1(~abs(vec4<u32>(u_input.a.x, u_input.a.x, 5656u, 1u)), 1i), global0[_wgslsmith_index_u32(u_input.a.x, 24u)]), Struct_1(u_input.a.x, u_input.a, -1000f), -1000f);
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.c, var_0.c))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-731f, var_0.c))))))));
    global0 = array<f32, 24>();
    let var_2 = func_6(func_5(_wgslsmith_add_vec4_i32(vec4<i32>(~(-2147483647i), i32(-1i) * -22510i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(0i, -32200i)), -2147483647i), vec4<i32>(1i, 1i, 1i, 1i)), Struct_1(1u, ~(~vec3<u32>(4294967295u, 0u, var_0.b.x)), var_0.c), var_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_f32(-678f - global0[_wgslsmith_index_u32(4294967295u, 24u)])))), var_0, var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(139f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))))));
    let var_3 = vec4<i32>(max(i32(-1i) * -1i, 2147483647i) >> (_wgslsmith_mult_u32(~1990u, func_2(vec3<bool>(true, true, true))) % 32u), _wgslsmith_mult_i32(0i, 6677i), 1i & _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i)), 24180i);
    global0 = array<f32, 24>();
    let var_4 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-26412i, var_3.x), var_3.ww, -1402f);
}

