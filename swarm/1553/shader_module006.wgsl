struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: u32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<bool, 6>;

var<private> global1: bool = false;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: vec3<u32>) -> f32 {
    var var_0 = firstTrailingBit(~(~_wgslsmith_clamp_vec3_u32(arg_2 ^ vec3<u32>(7379u, 4294967295u, arg_2.x), arg_2, select(vec3<u32>(arg_0.x, 1u, arg_2.x), vec3<u32>(55516u, arg_2.x, 4294967295u), vec3<bool>(true, false, false)))));
    global0 = array<bool, 6>();
    var var_1 = false;
    var var_2 = 1u;
    let var_3 = vec2<u32>(firstLeadingBit(~(1u << (arg_2.x % 32u))), abs(_wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(var_0.x, var_0.x), 44252u), countOneBits(_wgslsmith_mult_u32(arg_2.x, 100775u)))));
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = arg_1;
    var_0 = Struct_1(arg_1.a, vec2<bool>(abs(arg_1.e.x) == var_0.e.x, arg_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(839f + 1000f)), 0u, select(~arg_1.e, ~var_0.e, global0[_wgslsmith_index_u32(0u, 6u)]));
    var var_1 = vec4<u32>(~var_0.d, var_0.d | abs(firstTrailingBit(_wgslsmith_mult_u32(arg_1.d, 4294967295u))), 39100u, ~var_0.d);
    let var_2 = select(vec4<bool>(!(arg_0.e.x == u_input.a), all(!select(vec3<bool>(true, global0[_wgslsmith_index_u32(24739u, 6u)], var_0.a), vec3<bool>(var_0.a, false, false), var_0.b.x)), 0i != arg_1.e.x, (arg_1.d == ~var_1.x) | true), vec4<bool>(arg_0.a, _wgslsmith_add_u32(var_1.x, arg_1.d) >= _wgslsmith_mod_u32(1u, _wgslsmith_div_u32(arg_1.d, 0u)), (1u | var_1.x) < 1u, arg_0.b.x), select(vec4<bool>(_wgslsmith_f_op_f32(round(arg_0.c)) > _wgslsmith_f_op_f32(sign(arg_1.c)), !select(arg_0.b.x, true, global0[_wgslsmith_index_u32(3752u, 6u)]), var_0.b.x, true), !select(!vec4<bool>(var_0.a, arg_1.a, false, false), select(vec4<bool>(arg_0.b.x, arg_1.b.x, false, true), vec4<bool>(true, true, global0[_wgslsmith_index_u32(arg_0.d, 6u)], false), arg_0.a), all(vec2<bool>(true, arg_0.b.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) >= arg_0.c));
    let var_3 = ~_wgslsmith_add_vec4_u32(~firstLeadingBit(~vec4<u32>(var_0.d, var_1.x, 49481u, 1u)), vec4<u32>(arg_1.d, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d, arg_1.d), var_1.zz), _wgslsmith_dot_vec3_u32(var_1.zyy, _wgslsmith_mod_vec3_u32(var_1.yxx, vec3<u32>(var_1.x, 1u, 51355u))), firstLeadingBit(arg_0.d >> (4294967295u % 32u))));
    return abs(~(~(_wgslsmith_mult_vec2_u32(vec2<u32>(26967u, 38747u), var_1.ww) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(51308u, var_0.d), var_1.yx))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<i32>) -> u32 {
    var var_0 = func_4(Struct_1(true, vec2<bool>(true, _wgslsmith_f_op_f32(224f * 1028f) == _wgslsmith_f_op_f32(func_3(vec4<u32>(4294967295u, 1u, 34503u, 49808u), 517f, vec3<u32>(11792u, 5833u, 26943u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - 222f)), ~1u, countOneBits(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, arg_1.x, arg_1.x), vec3<i32>(2147483647i, -10580i, -1i)), arg_0 >> (vec3<u32>(11282u, 1u, 31933u) % vec3<u32>(32u))))), Struct_1(all(select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(56811u, 6u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(14324u, 6u)], true), vec2<bool>(global0[_wgslsmith_index_u32(7324u, 6u)], global0[_wgslsmith_index_u32(90132u, 6u)]), vec2<bool>(global0[_wgslsmith_index_u32(13053u, 6u)], global0[_wgslsmith_index_u32(27377u, 6u)])), select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 6u)], false), vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(1u, 6u)])))), select(select(vec2<bool>(global0[_wgslsmith_index_u32(47914u, 6u)], global0[_wgslsmith_index_u32(26402u, 6u)]), select(vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(249u, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)]), global0[_wgslsmith_index_u32(57924u, 6u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(2746u, 6u)])), vec2<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(1u, 6u)], true, global0[_wgslsmith_index_u32(0u, 6u)])), false), vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -170f) + -807f)), ~abs(~735u), _wgslsmith_sub_vec3_i32((arg_0 >> (vec3<u32>(31862u, 4294967295u, 0u) % vec3<u32>(32u))) & _wgslsmith_sub_vec3_i32(vec3<i32>(1i, arg_1.x, 33039i), vec3<i32>(arg_1.x, arg_0.x, 27101i)), vec3<i32>(-22722i, -57383i, arg_1.x) >> (firstTrailingBit(vec3<u32>(21607u, 1u, 21118u)) % vec3<u32>(32u)))));
    var var_1 = Struct_1(false, !(!(!(!vec2<bool>(false, global0[_wgslsmith_index_u32(54201u, 6u)])))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-894f)))), ~1u, vec3<i32>(1i, arg_0.x, ~(-1i)));
    global1 = true || select(global0[_wgslsmith_index_u32(~var_0.x, 6u)], global0[_wgslsmith_index_u32(func_4(Struct_1(var_1.b.x, select(var_1.b, vec2<bool>(false, true), false), -574f, ~76995u, _wgslsmith_add_vec3_i32(var_1.e, vec3<i32>(-2147483647i, 2147483647i, var_1.e.x))), Struct_1(!var_1.a, var_1.b, 1000f, reverseBits(21748u), arg_0 >> (vec3<u32>(4294967295u, 0u, var_1.d) % vec3<u32>(32u)))).x, 6u)], true);
    var var_2 = Struct_1((~(~44821u) | ~min(var_0.x, 0u)) == _wgslsmith_mod_u32(~(~46097u), abs(14709u)), select(!(!select(var_1.b, vec2<bool>(global0[_wgslsmith_index_u32(var_1.d, 6u)], var_1.b.x), var_1.b)), !var_1.b, select(vec2<bool>(14297u > var_0.x, select(true, global0[_wgslsmith_index_u32(4294967295u, 6u)], var_1.b.x)), !var_1.b, !select(var_1.b, vec2<bool>(global0[_wgslsmith_index_u32(3340u, 6u)], var_1.b.x), false))), var_1.c, _wgslsmith_add_u32(abs(_wgslsmith_div_u32(_wgslsmith_add_u32(var_0.x, 1u), ~4294967295u)), 29806u), arg_0);
    let var_3 = _wgslsmith_f_op_f32(-var_1.c);
    return var_1.d;
}

fn func_1(arg_0: bool) -> vec4<f32> {
    let var_0 = ~(~select(vec2<u32>(func_2(vec3<i32>(-59877i, u_input.a, -1i), vec2<i32>(u_input.a, -1i)), func_2(vec3<i32>(-8363i, 42155i, u_input.a), vec2<i32>(0i, u_input.a))), ~(~vec2<u32>(0u, 4294967295u)), select(vec2<bool>(arg_0, false), vec2<bool>(true, arg_0), true)));
    global0 = array<bool, 6>();
    global0 = array<bool, 6>();
    let var_1 = Struct_1(any(vec2<bool>(var_0.x <= _wgslsmith_mult_u32(var_0.x, var_0.x), select(arg_0, true & global0[_wgslsmith_index_u32(28477u, 6u)], any(vec2<bool>(false, false))))), select(!vec2<bool>(!arg_0, false && arg_0), !(!select(vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 6u)], global0[_wgslsmith_index_u32(var_0.x, 6u)]), vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0))), !vec2<bool>(global0[_wgslsmith_index_u32(12227u, 6u)], false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(183f + 108f)), _wgslsmith_f_op_f32(783f * -1349f), true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(535f, 1135f)) + _wgslsmith_f_op_f32(f32(-1f) * -1322f))))), (reverseBits(var_0.x) ^ _wgslsmith_mult_u32(var_0.x, func_4(Struct_1(false, vec2<bool>(arg_0, true), -258f, 14858u, vec3<i32>(4794i, 0i, u_input.a)), Struct_1(true, vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 6u)], arg_0), -1196f, 6948u, vec3<i32>(0i, u_input.a, u_input.a))).x)) >> (var_0.x % 32u), abs(vec3<i32>(-2147483647i, ~(-14602i), _wgslsmith_mult_i32(abs(-2147483647i), -1i))));
    var var_2 = true;
    return vec4<f32>(_wgslsmith_div_f32(var_1.c, 417f), 346f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c, var_1.c) - var_1.c) + -1148f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1554f + var_1.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0[_wgslsmith_index_u32(~(~select(0u, 97231u, true)), 6u)];
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(any(!(!vec3<bool>(global0[_wgslsmith_index_u32(47739u, 6u)], false, true))))));
    global1 = all(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(26028u, 6u)], true));
    var var_1 = _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(1u, 1u));
    let var_2 = ~(~(~11873u));
    let var_3 = _wgslsmith_mult_u32(var_2, func_2(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 2147483647i, u_input.a), -vec3<i32>(13264i, u_input.a, 1i)), firstTrailingBit(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -45791i), vec2<i32>(u_input.a, 2327i))))));
    global1 = global0[_wgslsmith_index_u32(0u, 6u)] || global0[_wgslsmith_index_u32(abs(var_2), 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0), vec4<f32>(var_0.x, var_0.x, -1252f, -103f))));
}

