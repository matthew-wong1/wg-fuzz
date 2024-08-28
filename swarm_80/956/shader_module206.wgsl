struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: bool,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false));

var<private> global1: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true));

var<private> global2: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(2147483647i, vec3<f32>(670f, -156f, -849f)), Struct_2(487i, vec3<f32>(1390f, -1270f, 642f)), Struct_2(2147483647i, vec3<f32>(389f, 306f, -969f)), Struct_2(25245i, vec3<f32>(2853f, -509f, 255f)), Struct_2(0i, vec3<f32>(-1836f, 1262f, -1450f)), Struct_2(-28488i, vec3<f32>(505f, -1000f, 1386f)), Struct_2(2147483647i, vec3<f32>(-759f, -220f, 349f)), Struct_2(-3665i, vec3<f32>(-1332f, -278f, -146f)), Struct_2(-34032i, vec3<f32>(-1181f, -509f, 920f)), Struct_2(7472i, vec3<f32>(479f, -1664f, 943f)), Struct_2(i32(-2147483648), vec3<f32>(143f, 154f, 1105f)), Struct_2(10187i, vec3<f32>(-1611f, 618f, -1208f)), Struct_2(-29099i, vec3<f32>(555f, -680f, -674f)), Struct_2(i32(-2147483648), vec3<f32>(662f, -332f, 105f)), Struct_2(1i, vec3<f32>(1727f, 1098f, 1197f)), Struct_2(37585i, vec3<f32>(454f, -1147f, -1020f)), Struct_2(1i, vec3<f32>(471f, -1000f, -237f)), Struct_2(56666i, vec3<f32>(-1000f, 283f, -495f)), Struct_2(-46037i, vec3<f32>(-1106f, 1252f, -2071f)), Struct_2(i32(-2147483648), vec3<f32>(-741f, 1427f, -434f)), Struct_2(0i, vec3<f32>(-354f, 699f, -798f)), Struct_2(-1i, vec3<f32>(1637f, -939f, -988f)), Struct_2(-11611i, vec3<f32>(-1358f, 1307f, 595f)), Struct_2(2147483647i, vec3<f32>(-583f, -1379f, 398f)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> i32 {
    let var_0 = select(select(global0[_wgslsmith_index_u32(1u, 9u)], !(!(!arg_0.a.b)), select(!(!global0[_wgslsmith_index_u32(42788u, 9u)]), vec4<bool>(all(vec2<bool>(true, arg_0.a.c)), !arg_0.a.c, false, any(vec3<bool>(true, false, arg_0.a.c))), !all(vec3<bool>(arg_0.c.c, arg_0.c.c, false)))), vec4<bool>(arg_0.a.b.x != any(arg_0.c.b.wx), !all(global1[_wgslsmith_index_u32(select(arg_0.c.d.x, u_input.b.x, true), 5u)]), any(arg_0.c.b.zyx), any(vec2<bool>(false, true))), true);
    return ~arg_0.a.a;
}

fn func_2(arg_0: f32, arg_1: vec3<bool>) -> f32 {
    let var_0 = Struct_2(reverseBits(func_3(Struct_3(Struct_1(-20506i, global0[_wgslsmith_index_u32(u_input.b.x, 9u)], arg_1.x, vec2<u32>(u_input.b.x, 18481u), arg_0), _wgslsmith_div_vec3_f32(vec3<f32>(-189f, arg_0, arg_0), vec3<f32>(arg_0, 1067f, 803f)), Struct_1(u_input.a.x, global0[_wgslsmith_index_u32(u_input.b.x, 9u)], arg_1.x, u_input.b.zx, -871f)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_0, 856f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-204f + -465f), _wgslsmith_f_op_f32(1369f + -414f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-531f, -846f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(1236f, arg_0), -1144f, arg_0), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -538f, arg_0)))), arg_1))));
    global1 = array<vec3<bool>, 5>();
    let var_1 = var_0.b.xx;
    var var_2 = 1144u;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b.x)))));
}

fn func_1() -> u32 {
    global2 = array<Struct_2, 24>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-148f, _wgslsmith_f_op_f32(min(964f, _wgslsmith_f_op_f32(394f + 504f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -798f))), _wgslsmith_f_op_f32(step(650f, _wgslsmith_div_f32(-295f, 214f)))) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1836f - -131f), -1409f), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(520f * 475f), vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(666f)))), _wgslsmith_f_op_f32(abs(-1000f)))));
    let var_1 = reverseBits(~(-1976i));
    let var_2 = global0[_wgslsmith_index_u32(u_input.b.x, 9u)];
    var var_3 = u_input.a;
    return abs(~u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 9>();
    let var_0 = vec3<u32>(func_1(), _wgslsmith_sub_u32(~(~u_input.b.x), u_input.b.x), _wgslsmith_dot_vec4_u32(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 69268u), vec4<u32>(27267u, u_input.b.x, u_input.b.x, 0u))), countOneBits(~vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 20767u)) ^ vec4<u32>(firstLeadingBit(4294967295u), 43131u, 1u, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x))));
    global2 = array<Struct_2, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1581f, 298f, -1069f), vec3<f32>(-1134f, -515f, -973f), global1[_wgslsmith_index_u32(4294967295u, 5u)]))))))));
}

