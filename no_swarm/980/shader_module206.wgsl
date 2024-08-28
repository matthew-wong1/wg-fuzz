struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28> = array<f32, 28>(267f, 753f, 929f, -358f, 571f, 317f, -1530f, -1539f, -822f, -1690f, -627f, 581f, 532f, 1904f, 1294f, -989f, -712f, 1223f, 421f, 1392f, 1000f, -558f, 1000f, -1720f, -312f, 596f, -432f, -1071f);

var<private> global1: Struct_1 = Struct_1(-10187i, 1u);

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(2147483647i, 81799u), Struct_1(-35888i, 21170u), Struct_1(1i, 27674u), Struct_1(0i, 138603u), Struct_1(-28882i, 42139u), Struct_1(2147483647i, 7648u), Struct_1(36723i, 1u), Struct_1(0i, 1u), Struct_1(-31568i, 4294967295u));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    let var_0 = !(!vec2<bool>(true, !all(vec3<bool>(true, false, false))));
    var var_1 = Struct_1(-26609i, u_input.a);
    var var_2 = ~select(~((vec3<u32>(87694u, 4294967295u, 75980u) | vec3<u32>(var_1.b, global1.b, var_1.b)) >> (vec3<u32>(4294967295u, 4294967295u, 4294967295u) % vec3<u32>(32u))), vec3<u32>(~4294967295u, u_input.b.x, ~(~44972u)), !select(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, false, false), vec3<bool>(false, var_0.x, false)), vec3<bool>(true, var_0.x, var_0.x), !vec3<bool>(true, var_0.x, var_0.x)));
    global1 = Struct_1(1i, u_input.a);
    let var_3 = Struct_1(32094i, select(40597u, max(~(~47041u), ~0u), var_0.x));
    return -689f;
}

fn func_2() -> u32 {
    var var_0 = global1.a;
    let var_1 = _wgslsmith_f_op_f32(func_3());
    global2 = array<Struct_1, 9>();
    let var_2 = ~(~(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.b, 4294967295u, global1.b), vec3<u32>(u_input.a, 48501u, global1.b)), _wgslsmith_add_vec3_u32(vec3<u32>(47188u, 0u, global1.b), vec3<u32>(global1.b, u_input.a, 36341u))) & abs(~vec3<u32>(0u, u_input.b.x, 54387u))));
    global1 = global2[_wgslsmith_index_u32(~57798u, 9u)];
    return _wgslsmith_add_u32(_wgslsmith_clamp_u32(var_2.x, ~max(25478u >> (var_2.x % 32u), firstTrailingBit(global1.b)), 80868u), min(u_input.a, 1u));
}

fn func_4(arg_0: vec2<u32>, arg_1: u32) -> vec3<bool> {
    global2 = array<Struct_1, 9>();
    var var_0 = abs(max(~(vec3<i32>(global1.a, 19488i, -5498i) ^ firstLeadingBit(vec3<i32>(-54032i, -27679i, -20886i))), _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, global1.a, 48436i), vec3<i32>(global1.a, 10359i, global1.a) & vec3<i32>(global1.a, global1.a, -24475i)), -vec3<i32>(-45542i, global1.a, global1.a))));
    var var_1 = global2[_wgslsmith_index_u32(0u, 9u)];
    var var_2 = _wgslsmith_mult_i32(var_1.a, global1.a);
    var var_3 = Struct_1(var_1.a, 24176u);
    return select(!select(vec3<bool>(true, true, 1u < u_input.b.x), vec3<bool>(false, false, false), all(vec4<bool>(true, true, true, true))), select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), true), !(var_3.a > -4250i)), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), vec3<bool>(true, select(true, true, true), 840f >= global0[_wgslsmith_index_u32(arg_0.x, 28u)]), !(var_1.a < 27i)), vec3<bool>(true, true, true)), true);
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> u32 {
    var var_0 = func_4(_wgslsmith_mod_vec2_u32(~countOneBits(u_input.b), u_input.b), func_2());
    let var_1 = vec4<u32>(firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.b, firstTrailingBit(vec2<u32>(1u, 13119u)))) | _wgslsmith_add_u32(1u, reverseBits(0u)), arg_2.b, 34243u, ~2386u);
    let var_2 = arg_2;
    var_0 = vec3<bool>(false, global1.b > ~1u, !var_0.x);
    var var_3 = _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(var_2.a, arg_2.a, 1i, var_2.a)) << (vec4<u32>(var_1.x, global1.b, 72248u, 4214u) % vec4<u32>(32u)), vec4<i32>(-39074i | arg_2.a, var_2.a, global1.a, _wgslsmith_mult_i32(1i, 1i)), vec4<i32>(select(arg_2.a, arg_1, var_0.x), var_2.a, arg_1 << (global1.b % 32u), arg_2.a)) ^ -(~_wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.a, 2147483647i, 1i, 12857i), vec4<i32>(arg_1, 0i, 1i, global1.a))), _wgslsmith_add_vec4_i32(-(~vec4<i32>(arg_1, var_2.a, arg_2.a, global1.a)) & ~(~vec4<i32>(arg_2.a, -2147483647i, arg_1, -110731i)), -_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(var_2.a, -2147483647i, 582i, 13382i)), firstLeadingBit(vec4<i32>(-1i, global1.a, arg_1, 4322i)))));
    return max(arg_2.b, arg_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(~global1.a | -36659i);
    var var_1 = reverseBits(~func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(86171u, 28u)] + 1051f)), _wgslsmith_clamp_i32(2147483647i, i32(-1i) * -13953i, reverseBits(-1i)), global2[_wgslsmith_index_u32(0u, 9u)]));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0[_wgslsmith_index_u32(global1.b, 28u)], -541f, global0[_wgslsmith_index_u32(24279u, 28u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 28u)])))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(284f, global0[_wgslsmith_index_u32(u_input.b.x, 28u)], global0[_wgslsmith_index_u32(global1.b, 28u)], -1096f)))))));
    var_1 = ~u_input.a;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(~1u, 28u)], _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(17010u), _wgslsmith_sub_u32(global1.b, u_input.b.x)), 28u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - var_2.x)))))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(global1.b, 28u)])), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, -1214f) * -286f))))));
    let var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_u32(12330u, u_input.b.x << (countOneBits(global1.b) % 32u)), 45369i);
}

