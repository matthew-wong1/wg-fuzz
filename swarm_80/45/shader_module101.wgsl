struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: vec2<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 5> = array<vec4<bool>, 5>(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true));

var<private> global1: f32;

var<private> global2: array<u32, 26> = array<u32, 26>(0u, 1u, 0u, 42512u, 3670u, 11389u, 0u, 1u, 39515u, 4294967295u, 0u, 0u, 38329u, 11390u, 23542u, 4294967295u, 0u, 10756u, 62902u, 0u, 0u, 1u, 74971u, 4294967295u, 0u, 28234u);

var<private> global3: u32 = 50398u;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    var var_0 = -4820i;
    var var_1 = Struct_2(~(~abs(vec4<u32>(u_input.a, 23704u, 1u, 0u) | vec4<u32>(56461u, global2[_wgslsmith_index_u32(68375u, 26u)], 56296u, global2[_wgslsmith_index_u32(0u, 26u)]))), _wgslsmith_clamp_u32(0u, 0u, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(41833u, 26u)], u_input.a, 0u), vec3<u32>(u_input.a, u_input.a, 47584u)), max(firstLeadingBit(vec3<u32>(u_input.a, 68065u, 0u)), max(vec3<u32>(global2[_wgslsmith_index_u32(67622u, 26u)], 6480u, 1u), vec3<u32>(28548u, global2[_wgslsmith_index_u32(u_input.a, 26u)], 13443u)))), 26u)]), Struct_1(true), 1u);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1053f, -1067f, var_1.c.a)))) + _wgslsmith_f_op_f32(step(-1371f, _wgslsmith_div_f32(741f, -1358f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-817f)) + _wgslsmith_div_f32(2405f, 1000f)) * -1982f)), 193f, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-629f + 546f), _wgslsmith_f_op_f32(f32(-1f) * -255f))), -592f, true)) * 1149f));
    let var_3 = vec4<u32>(~_wgslsmith_dot_vec2_u32(max(var_1.a.yy, ~vec2<u32>(var_1.a.x, var_1.a.x)), ~max(var_1.a.yy, var_1.a.ww)), 52635u, ~(0u ^ ~firstTrailingBit(1u)), ~(~(~(~69604u))));
    let var_4 = Struct_1(all(select(vec2<bool>(true, 58409u > var_3.x), select(select(vec2<bool>(var_1.c.a, var_1.c.a), vec2<bool>(var_1.c.a, false), vec2<bool>(false, false)), select(vec2<bool>(var_1.c.a, var_1.c.a), vec2<bool>(true, var_1.c.a), false), select(vec2<bool>(false, var_1.c.a), vec2<bool>(false, true), vec2<bool>(false, var_1.c.a))), vec2<bool>(false, var_1.c.a))));
    return !var_1.c.a;
}

fn func_2() -> Struct_1 {
    var var_0 = all(vec3<bool>(firstLeadingBit(_wgslsmith_div_u32(u_input.a, u_input.a)) <= ~_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 26u)], 26u)], global2[_wgslsmith_index_u32(0u, 26u)]), func_3(), true));
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(424f, _wgslsmith_f_op_f32(f32(-1f) * -1525f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(169f + -1623f))))));
    var_0 = !(any(vec4<bool>(true, -31439i <= u_input.b.x, true, true)) || true);
    var var_1 = Struct_2(~_wgslsmith_mult_vec4_u32(~(vec4<u32>(42224u, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 26u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], 26u)], u_input.a, 9834u) % vec4<u32>(32u))), firstTrailingBit(vec4<u32>(4294967295u, 5459u, u_input.a, 40511u))), 138601u, Struct_1(select(false, all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), true)), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(firstLeadingBit(99829u), 4294967295u, ~0u, ~u_input.a)), ~_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(u_input.a, 1u, u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 26u)], 26u)])), vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 26u)], u_input.a, u_input.a, u_input.a) ^ vec4<u32>(42933u, 0u, 57471u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 26u)], 26u)]))));
    let var_2 = u_input.c.wy;
    return var_1.c;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    global0 = array<vec4<bool>, 5>();
    global3 = 1u;
    var var_0 = ~global2[_wgslsmith_index_u32(u_input.a, 26u)];
    let var_1 = _wgslsmith_div_u32(1898u & _wgslsmith_dot_vec3_u32(arg_1.a.zwx, firstLeadingBit(arg_1.a.wxz) << (vec3<u32>(4294967295u, arg_1.d, arg_1.a.x) % vec3<u32>(32u))), 20399u);
    var_0 = 8714u;
    return true;
}

fn func_5(arg_0: bool, arg_1: vec4<u32>) -> Struct_1 {
    global2 = array<u32, 26>();
    var var_0 = func_2();
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1066f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -561f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1243f + 763f))))), 2662f));
    var var_1 = arg_1.x;
    global0 = array<vec4<bool>, 5>();
    return Struct_1(any(global0[_wgslsmith_index_u32(31443u, 5u)]));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>) -> f32 {
    global1 = arg_1.x;
    let var_0 = u_input.c.x;
    var var_1 = func_5(func_4(func_2(), Struct_2(vec4<u32>(min(39881u, 0u), 1u, u_input.a, global2[_wgslsmith_index_u32(abs(1u), 26u)]), 1u, arg_0, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(global2[_wgslsmith_index_u32(1u, 26u)], 7858u, u_input.a)), _wgslsmith_div_vec3_u32(vec3<u32>(54640u, 22862u, u_input.a), vec3<u32>(u_input.a, 45785u, u_input.a)))), func_2()), vec4<u32>(_wgslsmith_add_u32(~(~2324u), _wgslsmith_div_u32(reverseBits(u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(u_input.a, 57339u, 1u)))), _wgslsmith_sub_u32(~u_input.a, u_input.a) | 21909u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 26u)], 26u)], 26u)], global2[_wgslsmith_index_u32(~max(58169u, u_input.a), 26u)]));
    global0 = array<vec4<bool>, 5>();
    var var_2 = _wgslsmith_f_op_f32(-arg_1.x);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - -1097f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(522f))), true)) + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-592f)), _wgslsmith_f_op_f32(arg_1.x * 1174f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(113f * -980f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(arg_1.x, arg_1.x)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-941f, 662f, var_1.a)), _wgslsmith_f_op_f32(-435f + -829f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(false), vec2<f32>(494f, 459f)))) * _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(f32(-1f) * -389f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1207f)))) * 185f), 195f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(false), vec2<f32>(-864f, 2529f))))));
    global2 = array<u32, 26>();
    let var_1 = Struct_2(vec4<u32>(4294967295u, 1u, 0u, reverseBits(61479u)), 104726u, func_2(), ~(~abs(global2[_wgslsmith_index_u32(4294967295u, 26u)] | 3479u)));
    var var_2 = vec2<bool>(func_2().a, false);
    var var_3 = Struct_2(var_1.a, 4294967295u, var_1.c, 32231u);
    var var_4 = 0i;
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_div_f32(406f, 1109f), var_0.x, _wgslsmith_f_op_f32(-1439f - var_0.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1286f + 472f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x + 569f), _wgslsmith_f_op_f32(f32(-1f) * -299f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(~1u, 1u), var_3.a, var_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - var_0.zz) - _wgslsmith_f_op_vec2_f32(var_0.zy * vec2<f32>(var_0.x, 1511f))) - var_0.yw)), var_3.a >> (_wgslsmith_mod_vec4_u32(var_1.a, max(var_3.a, var_1.a >> (var_1.a % vec4<u32>(32u)))) % vec4<u32>(32u)));
}

