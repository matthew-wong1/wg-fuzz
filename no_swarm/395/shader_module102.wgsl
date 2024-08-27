struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 17>;

var<private> global1: array<u32, 18>;

var<private> global2: f32 = 511f;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1672f))), -947f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -413f)))))));
    var var_1 = ~41304i;
    global2 = 1650f;
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -986f), _wgslsmith_f_op_f32(-1070f + var_0.x)));
    let var_3 = _wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 4945u, 87600u) | vec4<u32>(8845u, 1u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)]), vec4<u32>(u_input.b, 4294967295u, 55077u, global1[_wgslsmith_index_u32(88705u, 18u)])) | vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, 15970u, 23453u), ~vec4<u32>(u_input.b, 0u, 4294967295u, global1[_wgslsmith_index_u32(13461u, 18u)])), firstTrailingBit(global1[_wgslsmith_index_u32(u_input.b, 18u)]), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(global1[_wgslsmith_index_u32(u_input.b, 18u)], u_input.b)), vec2<u32>(u_input.b, 4294967295u))), max(vec4<u32>(firstTrailingBit(4294967295u), global1[_wgslsmith_index_u32(0u, 18u)] >> (42558u % 32u), 1u, abs(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(9330u, 18u)], 25399u, u_input.b, 0u), vec4<u32>(u_input.b, 12520u, u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)])), 18u)])), firstLeadingBit(vec4<u32>(~10444u, u_input.b, ~u_input.b, ~u_input.b))), min(vec4<u32>(4294967295u >> (u_input.b % 32u), u_input.b, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1[_wgslsmith_index_u32(0u, 18u)], u_input.b) | vec3<u32>(63481u, 34647u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(83841u, 18u)], 18u)]), ~vec3<u32>(47621u, 4294967295u, u_input.b)), 18u)], _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(0u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 28111u)), vec4<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41462u, 18u)], 18u)], 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 18u)]))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b, global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 18u)], u_input.b), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, 30163u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 18u)], 18u)]), vec4<u32>(u_input.b, 0u, u_input.b, u_input.b), vec4<u32>(9703u, 0u, global1[_wgslsmith_index_u32(97515u, 18u)], global1[_wgslsmith_index_u32(1u, 18u)]))), _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.b, 4294967295u, 0u) >> (vec4<u32>(1u, u_input.b, u_input.b, global1[_wgslsmith_index_u32(2864u, 18u)]) % vec4<u32>(32u)), vec4<u32>(77980u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 18u)], 18u)], u_input.b, 26874u)))));
    return _wgslsmith_f_op_f32(-1f);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_1 {
    global1 = array<u32, 18>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-110f, -821f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1031f, 965f)))));
    global0 = array<vec3<f32>, 17>();
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-787f * _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1707f), -771f)));
    global1 = array<u32, 18>();
    return arg_0;
}

fn func_4(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = func_2(Struct_1(vec2<u32>(22334u, ~_wgslsmith_clamp_u32(2144u, arg_0.a.x, u_input.b)), arg_0.d.x, arg_0.c, vec2<i32>(1i, -(i32(-1i) * -16223i)), (-2147483647i & _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.d.x, 18083i, -8584i), vec3<i32>(u_input.a, u_input.c, 2147483647i))) & _wgslsmith_div_i32(~(-43716i), 2147483647i)), _wgslsmith_mod_vec4_i32(abs(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.d.x, arg_0.d.x, 2297i, 17539i), vec4<i32>(arg_0.e, -1i, 40914i, -23797i), vec4<i32>(-1i, -2147483647i, u_input.c, -36215i)))), vec4<i32>(-u_input.c, u_input.c ^ arg_0.e, 0i, arg_0.b) >> (~(~vec4<u32>(arg_0.c.x, u_input.b, 86067u, u_input.b)) % vec4<u32>(32u))));
    let var_1 = firstTrailingBit(vec3<u32>(0u, 11668u, global1[_wgslsmith_index_u32(~min(~1u, u_input.b), 18u)]));
    let var_2 = func_2(arg_0, abs(vec4<i32>(-2147483647i, min(var_0.e, 0i << (global1[_wgslsmith_index_u32(4294967295u, 18u)] % 32u)), -2195i, firstTrailingBit(var_0.b))));
    global0 = array<vec3<f32>, 17>();
    global1 = array<u32, 18>();
    return !select(vec2<bool>(true, true), !(!select(vec2<bool>(false, false), vec2<bool>(true, true), false)), all(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), false)));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> u32 {
    var var_0 = select(select(func_4(func_2(Struct_1(vec2<u32>(u_input.b, 6680u), 40162i, vec3<u32>(u_input.b, 15239u, global1[_wgslsmith_index_u32(30757u, 18u)]), vec2<i32>(41162i, arg_1.x), 2336i), vec4<i32>(-11188i, 0i, arg_1.x, arg_1.x))), select(vec2<bool>(true, false), func_4(Struct_1(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 18u)], 18u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(121180u, 18u)], 18u)], 18u)], 18u)]), 100077i, vec3<u32>(u_input.b, global1[_wgslsmith_index_u32(u_input.b, 18u)], 16664u), u_input.d.yz, arg_1.x)), true), !any(vec3<bool>(true, true, true)) | true), !func_4(Struct_1(firstTrailingBit(vec2<u32>(u_input.b, 36376u)), ~(-46059i), select(vec3<u32>(u_input.b, u_input.b, 64829u), vec3<u32>(0u, global1[_wgslsmith_index_u32(u_input.b, 18u)], u_input.b), vec3<bool>(false, true, true)), arg_1.zz, -21429i)), !(!(!func_4(Struct_1(vec2<u32>(64272u, u_input.b), u_input.e, vec3<u32>(u_input.b, 19770u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24198u, 18u)], 18u)]), u_input.d.zz, u_input.a)).x)));
    return _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~countOneBits(0u), 18u)], 18u)], 22664u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~vec2<u32>(abs(71624u), ~u_input.b) << (countOneBits(~vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u)), ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -2147483647i) ^ vec2<i32>(u_input.d.x, -2147483647i), vec2<i32>(u_input.e, 2147483647i))), vec3<u32>(~(~global1[_wgslsmith_index_u32(0u, 18u)]), u_input.b, func_1(1f, -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.e, 0i, u_input.e, 17229i), vec4<i32>(22788i, u_input.d.x, u_input.c, 1i), vec4<i32>(-1i, u_input.a, 0i, u_input.a)))), ~vec2<i32>(min(-49704i, 0i), func_2(Struct_1(vec2<u32>(46299u, 4294967295u), -1i, vec3<u32>(global1[_wgslsmith_index_u32(1u, 18u)], 30125u, 4294967295u), vec2<i32>(u_input.d.x, -20004i), 54590i), vec4<i32>(0i, -30820i, u_input.d.x, -32759i)).e) >> (~(~(vec2<u32>(u_input.b, global1[_wgslsmith_index_u32(32337u, 18u)]) << (vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 18u)]) % vec2<u32>(32u)))) % vec2<u32>(32u)), u_input.e);
    var var_1 = vec2<i32>(u_input.d.x, u_input.c);
    var var_2 = ~(~vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.a.x, 4294967295u), 18u)], 0u));
    let var_3 = u_input.d;
    var var_4 = func_2(func_2(func_2(Struct_1(select(vec2<u32>(global1[_wgslsmith_index_u32(16077u, 18u)], 4294967295u), var_0.a, false), var_1.x, var_0.c, countOneBits(vec2<i32>(-1i, var_0.b)), u_input.c), abs(-vec4<i32>(-37020i, var_0.b, 0i, var_3.x))), max(-vec4<i32>(var_0.d.x, -24868i, u_input.c, u_input.e), _wgslsmith_mod_vec4_i32(vec4<i32>(-18865i, u_input.e, var_0.d.x, 31043i), vec4<i32>(var_0.d.x, var_0.d.x, var_3.x, 0i))) & ~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -2147483647i, var_0.d.x, var_0.e), vec4<i32>(37933i, var_1.x, 22679i, var_3.x))), _wgslsmith_mult_vec4_i32(abs(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, var_0.b, var_3.x, 3972i), vec4<i32>(54817i, 1i, var_0.e, -20168i)), countOneBits(vec4<i32>(-28370i, var_0.d.x, u_input.e, -87288i)), min(vec4<i32>(var_3.x, 1i, var_1.x, -22531i), vec4<i32>(3993i, var_1.x, -37348i, 14286i)))), select(-select(vec4<i32>(2147483647i, var_1.x, 13169i, 55134i), vec4<i32>(-44048i, 1i, var_3.x, var_0.e), vec4<bool>(true, false, true, true)), vec4<i32>(var_1.x | -60957i, u_input.a | var_3.x, var_1.x, min(4270i, var_1.x)), !any(vec3<bool>(true, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

