struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct Struct_4 {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: Struct_1,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec2<f32>(-959f, 2322f), 1340f, -702f), Struct_1(vec2<f32>(821f, 560f), 1029f, 322f), Struct_1(vec2<f32>(-679f, -469f), -1422f, -1257f), Struct_1(vec2<f32>(193f, 285f), 331f, 1025f), Struct_1(vec2<f32>(115f, -414f), 582f, -2616f), Struct_1(vec2<f32>(351f, -1186f), -2092f, 374f), Struct_1(vec2<f32>(-404f, -147f), -669f, -194f), Struct_1(vec2<f32>(768f, -1473f), 843f, 102f), Struct_1(vec2<f32>(-1000f, 636f), 510f, -1108f), Struct_1(vec2<f32>(-1755f, 1000f), -622f, -1563f), Struct_1(vec2<f32>(448f, -421f), 183f, 306f), Struct_1(vec2<f32>(1315f, 656f), -643f, 1224f), Struct_1(vec2<f32>(-186f, -1607f), 472f, 1255f), Struct_1(vec2<f32>(136f, 116f), 934f, 191f), Struct_1(vec2<f32>(1806f, 1192f), -681f, 1277f), Struct_1(vec2<f32>(-1000f, -1604f), -1357f, -1055f), Struct_1(vec2<f32>(1018f, 1892f), 1000f, -575f), Struct_1(vec2<f32>(466f, -364f), 438f, -1533f), Struct_1(vec2<f32>(381f, -1764f), 460f, -631f), Struct_1(vec2<f32>(-118f, 638f), 1461f, 495f), Struct_1(vec2<f32>(627f, -1303f), -463f, 955f));

var<private> global1: array<Struct_3, 19>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<f32>) -> u32 {
    global0 = array<Struct_1, 21>();
    var var_0 = Struct_1(arg_1.zz, arg_1.x, 2503f);
    let var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(reverseBits(~1u), _wgslsmith_add_u32(~1u, arg_0.x)), abs(vec2<u32>(~(~u_input.a.x), ~4281u)));
    var var_2 = arg_0.x;
    let var_3 = max(firstTrailingBit(~vec3<u32>(countOneBits(22098u), u_input.b, 22909u)), vec3<u32>(var_1.x, countOneBits(4294967295u), _wgslsmith_clamp_u32(var_1.x, ~_wgslsmith_mod_u32(2546u, arg_0.x), 39397u)));
    return 1u;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>) -> i32 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_0.a.a), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-554f, arg_0.a.a.x), arg_0.a.a)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_0.a.a)) * _wgslsmith_f_op_vec2_f32(exp2(arg_0.a.a)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-292f + arg_0.a.a.x), 177f))));
    var var_1 = true;
    let var_2 = !vec4<bool>(false, !arg_0.d, all(vec3<bool>(true, false, arg_0.d)) && false, true);
    var var_3 = Struct_3(_wgslsmith_mult_i32(_wgslsmith_mult_i32(70157i, arg_0.b), arg_0.b), _wgslsmith_f_op_f32(-345f * _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1232f)))), arg_0.e, vec3<u32>(~_wgslsmith_add_u32(arg_0.c, abs(79188u)), 1u | (~u_input.b >> (_wgslsmith_sub_u32(arg_0.e, u_input.a.x) % 32u)), 4294967295u), -arg_0.b);
    global1 = array<Struct_3, 19>();
    return -5826i;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(884f, -224f)) * _wgslsmith_f_op_f32(167f + 425f))) + _wgslsmith_f_op_f32(exp2(1f))), -1179f, firstLeadingBit(vec4<u32>(0u, func_1(~vec2<u32>(u_input.a.x, 56406u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-191f, -1000f, -1241f, -135f))), _wgslsmith_div_u32(27340u, 1u), 0u)), func_2(Struct_2(global0[_wgslsmith_index_u32(firstTrailingBit(35413u), 21u)], 1i, 26258u, false, ~u_input.a.x), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.a.x, 59623u) & firstTrailingBit(vec3<u32>(u_input.b, u_input.a.x, u_input.b)), ~(vec3<u32>(4294967295u, u_input.b, u_input.b) << (vec3<u32>(u_input.b, 0u, 4294967295u) % vec3<u32>(32u))))));
}

