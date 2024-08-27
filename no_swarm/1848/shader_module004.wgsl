struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21> = array<i32, 21>(-6881i, -1i, 14472i, 1i, -15638i, 0i, 2147483647i, 65778i, -32119i, -23984i, -1i, 1i, 2147483647i, 30548i, 2147483647i, 34313i, 0i, i32(-2147483648), -1i, 12527i, -23882i);

var<private> global1: array<bool, 21>;

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec4<bool>(false, false, false, true), 303f, 30681i), Struct_1(vec4<bool>(false, true, false, false), 1170f, -1i), Struct_1(vec4<bool>(true, true, true, false), -375f, 2147483647i), Struct_1(vec4<bool>(true, false, true, false), -1441f, 2647i), Struct_1(vec4<bool>(true, true, false, true), 183f, 28045i), Struct_1(vec4<bool>(false, false, false, true), -205f, 39721i), Struct_1(vec4<bool>(false, true, false, false), -648f, 0i), Struct_1(vec4<bool>(true, true, false, true), 1442f, i32(-2147483648)), Struct_1(vec4<bool>(true, true, true, true), 2099f, -30114i), Struct_1(vec4<bool>(true, true, false, true), 900f, -22677i), Struct_1(vec4<bool>(false, true, true, true), 370f, 44032i), Struct_1(vec4<bool>(false, true, true, true), 724f, i32(-2147483648)), Struct_1(vec4<bool>(true, true, false, true), 1119f, 3890i), Struct_1(vec4<bool>(true, false, true, false), -231f, -1i), Struct_1(vec4<bool>(true, false, true, false), -453f, 14848i), Struct_1(vec4<bool>(false, true, true, false), -554f, -21675i), Struct_1(vec4<bool>(false, false, true, true), -401f, 1i), Struct_1(vec4<bool>(true, true, true, false), -676f, 2147483647i), Struct_1(vec4<bool>(false, false, true, true), -112f, 2147483647i), Struct_1(vec4<bool>(true, true, false, true), 644f, 2147483647i), Struct_1(vec4<bool>(false, true, false, false), -716f, 18763i), Struct_1(vec4<bool>(true, false, false, false), 442f, -46706i), Struct_1(vec4<bool>(false, true, false, true), 1194f, 1i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1) -> f32 {
    let var_0 = 944f;
    global2 = array<Struct_1, 23>();
    global0 = array<i32, 21>();
    global2 = array<Struct_1, 23>();
    var var_1 = u_input.a.x;
    return _wgslsmith_f_op_f32(ceil(768f));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: i32, arg_3: f32) -> u32 {
    let var_0 = Struct_1(select(!select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 21u)], true, true), vec4<bool>(true, global1[_wgslsmith_index_u32(83233u, 21u)], true, arg_0), global1[_wgslsmith_index_u32(u_input.b.x, 21u)]), !vec4<bool>(global1[_wgslsmith_index_u32(15295u, 21u)], false, true, false), vec4<bool>(false, false, arg_0, global1[_wgslsmith_index_u32(0u, 21u)])), select(vec4<bool>(!arg_0, !global1[_wgslsmith_index_u32(u_input.b.x, 21u)], true, true), !(!vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 21u)], true, true)), arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -970f)) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_1.b.x)), _wgslsmith_f_op_f32(floor(arg_3))))), 572f, -(~(~1i) ^ u_input.a.x));
    let var_1 = var_0.a;
    global0 = array<i32, 21>();
    global1 = array<bool, 21>();
    let var_2 = ~_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, u_input.b.x), _wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(u_input.b.x, u_input.b.x, 1u)), vec3<u32>(0u, 41407u, 4294967295u))), vec3<u32>(u_input.b.x, ~u_input.b.x, ~4294967295u) >> (~select(vec3<u32>(u_input.b.x, u_input.b.x, 28096u), vec3<u32>(91702u, u_input.b.x, u_input.b.x), vec3<bool>(false, false, false)) % vec3<u32>(32u)));
    return 4294967295u;
}

fn func_1() -> vec3<f32> {
    let var_0 = vec4<u32>(_wgslsmith_mult_u32(91971u, _wgslsmith_dot_vec4_u32(vec4<u32>(6661u, u_input.b.x, 4294967295u, u_input.b.x) >> (vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 0u, 4294967295u), vec4<u32>(4294967295u, u_input.b.x, 25939u, u_input.b.x)))) ^ u_input.b.x, ~93843u, u_input.b.x, firstLeadingBit(func_3(true, Struct_2(~37129i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1104f, -2495f, -759f))), 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<u32>(u_input.b.x, 57454u, 40927u), Struct_1(vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 21u)], false, false), -723f, u_input.a.x))) + _wgslsmith_f_op_f32(f32(-1f) * -158f)))));
    global1 = array<bool, 21>();
    global1 = array<bool, 21>();
    let var_1 = reverseBits(~(~firstTrailingBit(u_input.b.x)));
    var var_2 = -1i;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(1328f + 714f), _wgslsmith_f_op_f32(f32(-1f) * -534f), _wgslsmith_f_op_f32(-878f * 639f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1569f, -930f, 868f))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-862f, -180f, -1000f), vec3<f32>(-751f, 397f, 368f), vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 21u)], global1[_wgslsmith_index_u32(u_input.b.x, 21u)], global1[_wgslsmith_index_u32(1u, 21u)])))))))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1511f, _wgslsmith_div_f32(-1011f, _wgslsmith_f_op_f32(f32(-1f) * -307f)), _wgslsmith_f_op_f32(round(-269f))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_2 {
    return Struct_2(min(abs(10104i), -29953i) >> (~min(abs(u_input.b.x), u_input.b.x) % 32u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-369f, arg_0.x) - _wgslsmith_div_f32(-1078f, arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b, arg_0.x) - _wgslsmith_f_op_f32(f32(-1f) * -598f)), arg_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1314f)) + _wgslsmith_f_op_f32(-1273f - 665f)), true)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -591f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -511f))))), _wgslsmith_f_op_f32(f32(-1f) * -1803f)));
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(func_1()), Struct_1(!select(vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(u_input.b.x, 21u)]), !vec4<bool>(true, global1[_wgslsmith_index_u32(16544u, 21u)], false, true), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, u_input.b.x), 21u)]), -1000f, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(reverseBits(~u_input.b.x), _wgslsmith_mult_u32(1u, firstLeadingBit(u_input.b.x)), 1u), 21u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(func_2(vec3<u32>(18351u, 46118u, 0u), Struct_1(vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(u_input.b.x, 21u)]), var_0, 1i))), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(step(var_0, -1012f)))))));
    let var_2 = select(!select(select(select(vec3<bool>(global1[_wgslsmith_index_u32(30061u, 21u)], global1[_wgslsmith_index_u32(36662u, 21u)], global1[_wgslsmith_index_u32(0u, 21u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)]), false), select(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 21u)], global1[_wgslsmith_index_u32(u_input.b.x, 21u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 21u)], global1[_wgslsmith_index_u32(u_input.b.x, 21u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 21u)], false, false)), true), vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 21u)], true), !global1[_wgslsmith_index_u32(u_input.b.x, 21u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.b.x, 1u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 2626u)), 21u)], (u_input.a.x & -1i) <= ~u_input.a.x, global1[_wgslsmith_index_u32(u_input.b.x, 21u)]), vec3<bool>(global1[_wgslsmith_index_u32(0u, 21u)], !any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 21u)], global1[_wgslsmith_index_u32(u_input.b.x, 21u)], true, global1[_wgslsmith_index_u32(u_input.b.x, 21u)])), false), vec3<bool>(all(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 21u)], false)), !(var_1.b.x >= var_1.b.x), true)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, ~func_3(global1[_wgslsmith_index_u32(1u, 21u)], var_1, 25569i, -1600f) & ~_wgslsmith_sub_u32(4294967295u, 0u)), 21u)]);
    var var_3 = var_1;
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 43019u, ~55242u, 32893u), vec4<u32>(u_input.b.x << (min(u_input.b.x, u_input.b.x) % 32u), u_input.b.x, 23267u, ~(1u | u_input.b.x))));
}

