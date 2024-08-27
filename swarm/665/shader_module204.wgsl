struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4490u;

var<private> global1: array<f32, 23> = array<f32, 23>(-563f, -163f, -1000f, -1682f, -703f, 850f, 154f, 309f, 314f, -259f, -1065f, -1160f, 1012f, 1000f, 110f, 1896f, 1512f, 884f, 973f, -233f, -1000f, 1273f, 1411f);

var<private> global2: array<u32, 24>;

var<private> global3: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(Struct_1(vec2<f32>(-679f, -851f), -199f), vec4<u32>(0u, 0u, 25907u, 1u)), Struct_2(Struct_1(vec2<f32>(235f, -1174f), 405f), vec4<u32>(62758u, 4294967295u, 4294967295u, 1u)), Struct_2(Struct_1(vec2<f32>(-219f, -1122f), 119f), vec4<u32>(16914u, 8837u, 88228u, 4294967295u)), Struct_2(Struct_1(vec2<f32>(2897f, 1358f), -1000f), vec4<u32>(62771u, 335u, 91564u, 4294967295u)), Struct_2(Struct_1(vec2<f32>(-1451f, -1107f), 933f), vec4<u32>(0u, 2284u, 1u, 0u)), Struct_2(Struct_1(vec2<f32>(-655f, 134f), 191f), vec4<u32>(4294967295u, 0u, 31593u, 33073u)), Struct_2(Struct_1(vec2<f32>(-1000f, 166f), -1000f), vec4<u32>(3778u, 93342u, 1u, 94645u)), Struct_2(Struct_1(vec2<f32>(1569f, -559f), -266f), vec4<u32>(27221u, 1u, 39349u, 12130u)), Struct_2(Struct_1(vec2<f32>(1417f, 1000f), -1421f), vec4<u32>(20563u, 0u, 34207u, 3938u)), Struct_2(Struct_1(vec2<f32>(273f, -202f), -839f), vec4<u32>(5229u, 0u, 47966u, 27928u)), Struct_2(Struct_1(vec2<f32>(390f, 219f), -1036f), vec4<u32>(38469u, 1392u, 0u, 4294967295u)), Struct_2(Struct_1(vec2<f32>(-1000f, 1000f), -1741f), vec4<u32>(65022u, 0u, 0u, 0u)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    return global1[_wgslsmith_index_u32(68419u, 23u)];
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, ~(~76917u)), 23u)]);
    global1 = array<f32, 23>();
    global1 = array<f32, 23>();
    let var_1 = false;
    var_0 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(63148u, 24u)], 23u)]);
    return _wgslsmith_dot_vec4_u32(vec4<u32>(0u, ~(~(~0u)), 0u, 34551u), vec4<u32>(0u, u_input.a.x, ~1u, _wgslsmith_dot_vec2_u32(firstLeadingBit(max(vec2<u32>(1u, u_input.b.x), vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(u_input.a.x, 24u)]))), reverseBits(abs(vec2<u32>(6748u, 1u))))));
}

fn func_1() -> vec3<bool> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(24111u, 24u)] << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 24u)], 24u)] % 32u), 23u)] - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(20065u, 23u)]))))), _wgslsmith_f_op_f32(func_2(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), false)))));
    let var_1 = -1i;
    global1 = array<f32, 23>();
    let var_2 = vec4<u32>(~func_3(), u_input.a.x, u_input.a.x, 47468u);
    var var_3 = Struct_2(Struct_1(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], 976f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(6136u, 23u)])) + _wgslsmith_f_op_f32(f32(-1f) * -182f)) * global1[_wgslsmith_index_u32(~(~u_input.a.x), 23u)])), abs((vec4<u32>(19969u, 29804u, 1959u, 1u) ^ var_2) >> (vec4<u32>(_wgslsmith_add_u32(4294967295u, u_input.a.x), global2[_wgslsmith_index_u32(~87094u, 24u)], 22266u, func_3()) % vec4<u32>(32u))));
    return vec3<bool>(!((1225f > var_3.a.a.x) & true) | (!all(vec2<bool>(false, true)) && true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.a.a.x), _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(1u, 23u)]))))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(6579u, 23u)])), true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 24>();
    let var_0 = !any(func_1());
    let var_1 = u_input.c;
    var var_2 = !(!(!var_0));
    var var_3 = 86909u;
    global3 = array<Struct_2, 12>();
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -745f) - global1[_wgslsmith_index_u32(abs(u_input.d.x), 23u)]), _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(1u, 23u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10131u, 24u)], 23u)] * global1[_wgslsmith_index_u32(u_input.b.x, 23u)]))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~99285u, 1u), 23u)], -1034f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], 359f, global1[_wgslsmith_index_u32(48867u, 23u)], global1[_wgslsmith_index_u32(u_input.a.x, 23u)])) - _wgslsmith_f_op_vec4_f32(vec4<f32>(733f, global1[_wgslsmith_index_u32(1u, 23u)], -596f, 1368f) * vec4<f32>(global1[_wgslsmith_index_u32(25987u, 23u)], global1[_wgslsmith_index_u32(0u, 23u)], -107f, 1089f))) + vec4<f32>(-485f, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(50162u, 23u)], -1549f), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~u_input.a.x, 24u)], 24u)], 23u)], _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(40305u, 23u)])))) * vec4<f32>(-1000f, -905f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 23u)]))), -770f)));
    let var_5 = select(false, select(true, !all(!vec2<bool>(var_0, var_0)), func_1().x || true), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(var_4, _wgslsmith_mod_i32(-(1i | u_input.c.x) ^ (i32(-1i) * -56095i), var_1.x), countOneBits(_wgslsmith_add_u32(firstTrailingBit(~0u), ~_wgslsmith_mod_u32(u_input.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(40147u, 24u)], 24u)], 24u)]))), _wgslsmith_div_f32(-1158f, var_4.x));
}

