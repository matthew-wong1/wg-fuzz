struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: array<vec2<i32>, 18> = array<vec2<i32>, 18>(vec2<i32>(14298i, -5943i), vec2<i32>(5710i, 1i), vec2<i32>(-19026i, 11881i), vec2<i32>(7443i, -32918i), vec2<i32>(29680i, 2147483647i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-35515i, 1i), vec2<i32>(-63622i, 2147483647i), vec2<i32>(1i, -5439i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-17543i, 60586i), vec2<i32>(0i, 8207i), vec2<i32>(106i, -1i), vec2<i32>(0i, 0i), vec2<i32>(-54166i, -1i), vec2<i32>(-13456i, 5381i), vec2<i32>(94424i, -1i), vec2<i32>(2147483647i, 2147483647i));

var<private> global2: vec4<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    global0 = array<Struct_1, 4>();
    global2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(abs(36462u), global2.x, ~17553u, 4294967295u) << (select(vec4<u32>(47451u, global2.x, 10623u, global2.x), abs(vec4<u32>(4294967295u, 4294967295u, global2.x, global2.x)), vec4<bool>(true, true, true, true)) % vec4<u32>(32u)), abs(~(vec4<u32>(global2.x, 4294967295u, 4294967295u, 4294967295u) ^ vec4<u32>(26500u, 69976u, global2.x, 10331u))), vec4<u32>(_wgslsmith_mod_u32(global2.x ^ 12203u, abs(0u)), 0u, 42475u, global2.x & 9443u)) ^ _wgslsmith_mult_vec4_u32(~(~(~vec4<u32>(0u, global2.x, 1u, 0u))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, 69890u), vec2<u32>(global2.x, 4294967295u)) | ~20591u, reverseBits(4077u), ~reverseBits(4294967295u), reverseBits(global2.x)));
    global0 = array<Struct_1, 4>();
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -393f) + -1364f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -658f) - 509f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(187f, 119f))))));
    let var_1 = Struct_1(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, global2.x >= global2.x), true), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(~vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, -2147483647i)), vec4<i32>(-1i) * -vec4<i32>(-44623i, u_input.a.x, 10458i, -2147483647i)), -abs(-1i)), 1000f);
    return var_1.c;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_1(arg_1.a, arg_0.b, _wgslsmith_f_op_f32(func_3()));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-626f, arg_1.c, -401f, 319f), vec4<f32>(arg_1.c, -1626f, 1165f, -986f))))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(387f, arg_1.c, 451f, var_0.c))))));
    let var_2 = 24708u;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(max(2129f, var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + -264f), -1732f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.c, var_0.c, 229f))) - var_1.www) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.c, var_1.x, var_1.x))) + _wgslsmith_f_op_vec3_f32(var_1.yxx + vec3<f32>(var_1.x, var_1.x, arg_1.c))))));
    var var_4 = arg_1.a.x;
    return 0u;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: u32, arg_3: vec4<u32>) -> vec4<u32> {
    let var_0 = reverseBits(vec2<i32>(_wgslsmith_mult_i32(1i, -13532i) ^ -(arg_1.x ^ u_input.a.x), 55825i));
    global2 = vec4<u32>(func_2(global0[_wgslsmith_index_u32(global2.x, 4u)], Struct_1(!vec2<bool>(arg_0.x, arg_0.x), u_input.a.x, _wgslsmith_f_op_f32(ceil(-303f)))) << (~86958u % 32u), arg_3.x, ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(func_2(global0[_wgslsmith_index_u32(global2.x, 4u)], global0[_wgslsmith_index_u32(arg_3.x, 4u)]), ~arg_3.x), abs(max(arg_2, global2.x))), reverseBits(global2.x));
    var var_1 = 591f;
    let var_2 = -firstTrailingBit(var_0.x) == var_0.x;
    global1 = array<vec2<i32>, 18>();
    return select(arg_3, arg_3, true);
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> f32 {
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    global2 = ~func_4(!select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(false, true, false), true), reverseBits(u_input.a), func_2(Struct_1(vec2<bool>(true, true), -u_input.a.x, _wgslsmith_f_op_f32(1948f * -306f)), Struct_1(vec2<bool>(false, false), -u_input.a.x, _wgslsmith_f_op_f32(floor(-566f)))), (_wgslsmith_sub_vec4_u32(vec4<u32>(0u, global2.x, 72876u, arg_0), vec4<u32>(33959u, global2.x, global2.x, global2.x)) | vec4<u32>(arg_0, global2.x, arg_0, 1u)) ^ ~(vec4<u32>(global2.x, arg_0, 80838u, arg_0) | vec4<u32>(global2.x, 4294967295u, global2.x, 11972u)));
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1323f, _wgslsmith_f_op_f32(sign(691f)))) * 1109f) - -1000f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1442f))))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -575f))))));
    return 1012f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 4>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_div_u32(max(0u, global2.x), global2.x), global1[_wgslsmith_index_u32(max(min(1u, global2.x), 25233u), 18u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-2322f, _wgslsmith_f_op_f32(f32(-1f) * -1456f)))))));
    global2 = ~max(~(~vec4<u32>(4294967295u, global2.x, global2.x, global2.x)), vec4<u32>(global2.x, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 26186u), vec2<u32>(global2.x, global2.x), vec2<u32>(global2.x, global2.x)), ~global2.xw), ~abs(global2.x), ~_wgslsmith_mod_u32(1u, global2.x)));
    global1 = array<vec2<i32>, 18>();
    let var_1 = all(select(select(vec2<bool>(all(vec3<bool>(false, true, false)), any(vec4<bool>(false, false, true, true))), vec2<bool>(select(true, true, true), true), true), vec2<bool>(true, true), any(vec3<bool>(true, true, true))));
    var var_2 = Struct_1(select(!select(!vec2<bool>(var_1, false), vec2<bool>(true, true), false), vec2<bool>(false && (var_1 | false), true), false), -u_input.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -258f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -265f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(544f + 1155f)))), all(!(!vec4<bool>(var_1, var_1, false, true))))));
    var var_3 = ~vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(max(0i, 19539i), min(u_input.a.x, -2147483647i)), u_input.a.x, -21897i), u_input.a.x, _wgslsmith_sub_i32(_wgslsmith_add_i32(74647i, u_input.a.x ^ u_input.a.x), select(_wgslsmith_div_i32(var_2.b, -61608i), var_2.b & var_2.b, true)), 0i);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(countOneBits(abs(min(u_input.a.xz, global1[_wgslsmith_index_u32(4294967295u, 18u)])))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-728f, -1677f, var_2.c, var_2.c) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-567f, var_2.c, 181f, var_2.c) - vec4<f32>(var_2.c, 1202f, var_2.c, 1000f))))))), 42866i, 11254u);
}

