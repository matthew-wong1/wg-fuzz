struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec3<f32>,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 19> = array<vec2<i32>, 19>(vec2<i32>(18627i, -49379i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-1i, -1i), vec2<i32>(-46243i, 1i), vec2<i32>(25419i, 24211i), vec2<i32>(1i, 0i), vec2<i32>(2743i, -50676i), vec2<i32>(-9301i, i32(-2147483648)), vec2<i32>(-50697i, 50678i), vec2<i32>(0i, 2147483647i), vec2<i32>(i32(-2147483648), 29835i), vec2<i32>(-26177i, i32(-2147483648)), vec2<i32>(0i, -63942i), vec2<i32>(-12464i, 59261i), vec2<i32>(0i, -14443i), vec2<i32>(0i, 2147483647i), vec2<i32>(0i, -51219i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-1i, 18856i));

var<private> global1: array<vec3<i32>, 9> = array<vec3<i32>, 9>(vec3<i32>(i32(-2147483648), i32(-2147483648), 1i), vec3<i32>(-12266i, -1907i, 26231i), vec3<i32>(39801i, 2147483647i, 2147483647i), vec3<i32>(1i, -67678i, 23740i), vec3<i32>(0i, -28600i, 0i), vec3<i32>(26583i, -28070i, -8105i), vec3<i32>(-14939i, i32(-2147483648), -16566i), vec3<i32>(-23327i, 2147483647i, 1i), vec3<i32>(7346i, 0i, -27196i));

var<private> global2: array<u32, 4>;

var<private> global3: array<Struct_2, 11>;

var<private> global4: array<Struct_1, 28>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: Struct_2) -> vec4<i32> {
    global3 = array<Struct_2, 11>();
    let var_0 = arg_0;
    let var_1 = arg_0;
    let var_2 = vec2<f32>(var_0.a.x, var_1.a.x);
    global1 = array<vec3<i32>, 9>();
    return u_input.c;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: vec4<i32>) -> Struct_1 {
    global0 = array<vec2<i32>, 19>();
    var var_0 = -512f;
    global0 = array<vec2<i32>, 19>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-608f, -917f, 114f, -631f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(930f, -272f, 1117f, 510f))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-764f)), _wgslsmith_f_op_f32(-629f - 821f), _wgslsmith_f_op_f32(f32(-1f) * -415f), _wgslsmith_f_op_f32(1831f - 570f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-324f, 893f, -279f, 620f)))))));
    var var_2 = func_2(global3[_wgslsmith_index_u32(18044u, 11u)]);
    return Struct_1(var_1.a, (var_2.x <= -_wgslsmith_mod_i32(1i, -1i)) || arg_1.x, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(691f, var_1.a.x)) * _wgslsmith_div_f32(var_1.a.x, 1000f)), var_1.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.a.x * var_1.a.x)))))), abs(19863u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1186f, -414f, var_1.a.x)))));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool) -> vec4<u32> {
    global2 = array<u32, 4>();
    let var_0 = false;
    let var_1 = !(!(!(!vec3<bool>(var_0, var_0, true))));
    var var_2 = -380f;
    let var_3 = true;
    return vec4<u32>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(46091u, _wgslsmith_div_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 4u)], 4u)], 0u), max(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(41990u, 4u)], 4u)], global2[_wgslsmith_index_u32(22973u, 4u)]))), 4u)], _wgslsmith_mult_u32(~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(37456u, 4u)], 4u)], 4u)]), ~global2[_wgslsmith_index_u32(4294967295u, 4u)]), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(min(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(4294967295u, 4u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 4u)], 4u)], 4u)], 4u)], global2[_wgslsmith_index_u32(1u, 4u)]), 4u)], 4u)], 4u)], ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 4u)], 4u)]), ~(~global2[_wgslsmith_index_u32(5128u, 4u)])), 4u)], 4u)], ~global2[_wgslsmith_index_u32(max(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1822u, 4u)], 4u)] >> (0u % 32u), 14181u), 4u)]) ^ ~vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(53702u, 4u)], 4u)], 4u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 4u)], 4u)], 4294967295u, 0u), ~vec4<u32>(4294967295u, 16152u, 1985u, 30295u)), ~global2[_wgslsmith_index_u32(~29080u, 4u)], ~1u, firstTrailingBit(_wgslsmith_mod_u32(30323u, 60521u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    let var_1 = func_1(~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(firstTrailingBit(80822u), 4u)], 4u)], 4u)], ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 4u)], 4u)], 4u)], 4u)], 4u)], global2[_wgslsmith_index_u32(0u, 4u)], 1u), vec2<bool>(false, any(vec3<bool>(true, true, true))), ~vec4<i32>(firstLeadingBit(-var_0), -(~(-53726i)), ~(-var_0), min(~var_0, abs(u_input.c.x))));
    let var_2 = _wgslsmith_dot_vec4_u32(func_3(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.c.x), var_1.c.x, !var_1.b)), _wgslsmith_div_f32(1028f, _wgslsmith_div_f32(-1000f, 298f))), false | (true || var_1.b)), vec4<u32>(global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~1u, func_3(var_1.c.yz, var_1.b).x), 4u)], 4294967295u >> (select(var_1.d, ~1u, all(vec2<bool>(false, true))) % 32u), var_1.d, global2[_wgslsmith_index_u32(abs(~global2[_wgslsmith_index_u32(var_1.d, 4u)]), 4u)]));
    var var_3 = global3[_wgslsmith_index_u32(~(~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(var_1.d, 4u)], 69890u, global2[_wgslsmith_index_u32(79857u, 4u)], 4294967295u), vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 4u)], var_2, 0u, 1u))))), 11u)];
    global0 = array<vec2<i32>, 19>();
    var var_4 = vec4<f32>(-270f, func_1(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(1u, 4u)], var_2, var_1.d), _wgslsmith_sub_vec4_u32(vec4<u32>(var_2, var_2, var_1.d, var_2), vec4<u32>(4294967295u, var_1.d, 0u, 0u)), vec4<u32>(var_1.d, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 103598u, global2[_wgslsmith_index_u32(6990u, 4u)]) << (vec4<u32>(35217u, var_2, var_2, 0u) % vec4<u32>(32u))), !vec2<bool>(var_1.b, any(vec3<bool>(false, var_1.b, false))), _wgslsmith_mod_vec4_i32(u_input.c, ~vec4<i32>(var_0, var_0, var_0, var_0))).e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-643f))), var_3.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(firstTrailingBit(~vec2<u32>(var_1.d, global2[_wgslsmith_index_u32(var_1.d, 4u)])) & ~firstLeadingBit(vec2<u32>(var_2, 108530u))), min(countOneBits(u_input.c), u_input.c), ~vec3<i32>(1i, -1i, -9485i));
}

