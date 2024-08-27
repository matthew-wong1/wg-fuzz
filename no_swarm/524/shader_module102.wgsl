struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14> = array<i32, 14>(i32(-2147483648), 2147483647i, 55368i, 2147483647i, 2147483647i, -15854i, i32(-2147483648), 21664i, -25527i, 2147483647i, 0i, i32(-2147483648), -329i, 0i);

var<private> global1: array<u32, 14>;

var<private> global2: array<vec3<i32>, 32> = array<vec3<i32>, 32>(vec3<i32>(-52924i, 45121i, 1i), vec3<i32>(-47081i, i32(-2147483648), 1i), vec3<i32>(-40563i, 1i, i32(-2147483648)), vec3<i32>(0i, 2147483647i, 5733i), vec3<i32>(1i, i32(-2147483648), -1i), vec3<i32>(-15529i, -58040i, 36614i), vec3<i32>(2147483647i, -1i, i32(-2147483648)), vec3<i32>(2147483647i, 27934i, 2147483647i), vec3<i32>(-24696i, 0i, 0i), vec3<i32>(-55917i, 0i, -61065i), vec3<i32>(0i, -14561i, 16330i), vec3<i32>(0i, -41746i, 2147483647i), vec3<i32>(53495i, -1i, -1i), vec3<i32>(1i, -8404i, 0i), vec3<i32>(-1i, -66764i, -14781i), vec3<i32>(i32(-2147483648), 15282i, 0i), vec3<i32>(15302i, -1i, 1i), vec3<i32>(-17642i, -44042i, 1i), vec3<i32>(1i, i32(-2147483648), 2147483647i), vec3<i32>(-40855i, -1i, -8536i), vec3<i32>(1i, -67762i, 0i), vec3<i32>(3463i, 23523i, -55266i), vec3<i32>(31737i, i32(-2147483648), 1i), vec3<i32>(3984i, 23537i, 1i), vec3<i32>(-1406i, 13656i, -7371i), vec3<i32>(18748i, -1i, -21220i), vec3<i32>(12155i, 2147483647i, 21836i), vec3<i32>(0i, 1i, 1i), vec3<i32>(1i, 32310i, -9125i), vec3<i32>(-1i, 2147483647i, -22473i), vec3<i32>(0i, 18892i, i32(-2147483648)), vec3<i32>(-15298i, 16902i, -52965i));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f))))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-126f)), _wgslsmith_div_f32(-931f, -523f), -848f, _wgslsmith_f_op_f32(1000f + -264f))))));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: f32) -> bool {
    var var_0 = (~vec4<u32>(min(global1[_wgslsmith_index_u32(u_input.b, 14u)], global1[_wgslsmith_index_u32(0u, 14u)]), ~arg_0.x, ~global1[_wgslsmith_index_u32(0u, 14u)], 44346u) << (max(_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b, global1[_wgslsmith_index_u32(0u, 14u)], arg_0.x, 1u)), vec4<u32>(60306u, 4294967295u, arg_0.x, 0u) ^ vec4<u32>(1u, global1[_wgslsmith_index_u32(1u, 14u)], 11647u, 11435u)), firstTrailingBit(vec4<u32>(13167u, 45056u, 83034u, arg_0.x)) << ((vec4<u32>(global1[_wgslsmith_index_u32(74127u, 14u)], arg_0.x, 40965u, 1u) << (vec4<u32>(0u, u_input.a, arg_0.x, 21688u) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u))) | vec4<u32>(select(1565u, abs(4294967295u >> (u_input.a % 32u)), false), abs(countOneBits(_wgslsmith_clamp_u32(24763u, 36821u, 0u))), arg_0.x, 1u);
    global2 = array<vec3<i32>, 32>();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1158f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -122f), 380f, true)), true)))), -602f);
    global0 = array<i32, 14>();
    var var_2 = Struct_1(vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), false, true, any(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false)))), ~(~(~vec4<u32>(global1[_wgslsmith_index_u32(arg_0.x, 14u)], 65066u, u_input.b, 0u))) ^ ~firstTrailingBit(firstTrailingBit(vec4<u32>(4294967295u, var_0.x, var_0.x, global1[_wgslsmith_index_u32(u_input.a, 14u)]))), reverseBits(~(~vec4<u32>(36844u, 0u, 1u, u_input.b)) >> (select(min(vec4<u32>(0u, 1u, arg_0.x, 0u), vec4<u32>(4294967295u, 29255u, 0u, 25141u)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, 36193u), vec4<u32>(1u, u_input.a, arg_0.x, global1[_wgslsmith_index_u32(u_input.b, 14u)])), vec4<bool>(true, false, false, false)) % vec4<u32>(32u))), !(!vec4<bool>(true, true, select(true, true, true), true)), abs(var_0.www));
    return var_2.a.x;
}

fn func_2(arg_0: f32) -> vec3<i32> {
    var var_0 = Struct_1(vec4<bool>(select(true | all(vec3<bool>(false, true, true)), true, any(vec4<bool>(true, true, true, true))), all(vec3<bool>(func_3(vec3<u32>(u_input.b, 43178u, global1[_wgslsmith_index_u32(29242u, 14u)]), 483f, arg_0), true, all(vec4<bool>(false, false, true, false)))), any(vec3<bool>(false, true, true)), true), ~_wgslsmith_mod_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 14u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(42482u, 14u)], 14u)], global1[_wgslsmith_index_u32(1u, 14u)], 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 21219u, 1u, global1[_wgslsmith_index_u32(u_input.b, 14u)]), vec4<u32>(5828u, 39902u, global1[_wgslsmith_index_u32(19590u, 14u)], 0u))) | (vec4<u32>(~1u, ~18242u, global1[_wgslsmith_index_u32(~u_input.c, 14u)], ~global1[_wgslsmith_index_u32(1u, 14u)]) >> (vec4<u32>(~15322u, ~u_input.b, 4294967295u, u_input.b) % vec4<u32>(32u))), ~(~(~(~vec4<u32>(global1[_wgslsmith_index_u32(25526u, 14u)], global1[_wgslsmith_index_u32(1u, 14u)], 4294967295u, 0u)))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(func_3(vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 14u)], 77988u, u_input.b), -716f, 1120f), false, true, true), true), select(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, arg_0 < -1592f, true, true)), !(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), true))), vec3<u32>(global1[_wgslsmith_index_u32(select(29100u, 42449u, true) << (61777u % 32u), 14u)], ~12987u >> ((global1[_wgslsmith_index_u32(0u, 14u)] & global1[_wgslsmith_index_u32(u_input.a, 14u)]) % 32u), reverseBits(global1[_wgslsmith_index_u32(1u, 14u)])) | ~(~(vec3<u32>(global1[_wgslsmith_index_u32(62556u, 14u)], 17908u, u_input.c) << (vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 14u)], 14u)], u_input.c) % vec3<u32>(32u)))));
    let var_1 = vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1420f)))) + 166f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1141f, _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(arg_0 + arg_0), any(var_0.d.wx))))))), _wgslsmith_f_op_f32(168f - -686f));
    var var_2 = !var_0.d.x;
    let var_3 = var_0.a.x;
    return _wgslsmith_mult_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~1u, 14u)], 14u)], u_input.d.x, ~global0[_wgslsmith_index_u32(var_0.c.x, 14u)]), vec3<i32>(u_input.d.x, countOneBits(-global0[_wgslsmith_index_u32(u_input.c, 14u)]), (-1i & global0[_wgslsmith_index_u32(~5954u, 14u)]) | -16398i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<i32>, 32>();
    var var_0 = abs(u_input.d);
    var var_1 = u_input.d.x;
    var_1 = 32661i;
    global2 = array<vec3<i32>, 32>();
    var_1 = ~global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(min(global1[_wgslsmith_index_u32(60691u, 14u)], 17156u), 14u)], _wgslsmith_div_u32(u_input.b, 24125u), 86854u, global1[_wgslsmith_index_u32(~14137u, 14u)]), _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(34170u, 4294967295u, global1[_wgslsmith_index_u32(u_input.a, 14u)], 628u)), vec4<u32>(u_input.c, u_input.a, 1u, 2886u) >> (vec4<u32>(0u, 1u, u_input.b, u_input.a) % vec4<u32>(32u)))), 14u)], 14u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, func_2(_wgslsmith_f_op_f32(-var_2.x)), -1i, _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.d, vec2<i32>(2147483647i, u_input.d.x)) << (vec2<u32>(global1[_wgslsmith_index_u32(31024u, 14u)], 27535u) % vec2<u32>(32u)), u_input.d), u_input.d));
}

